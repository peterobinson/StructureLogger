/*
 * sim900.c
 *
 * Created: 09/06/2013 16:21:11
 *  Author: Peter
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>

#include "lib/uart.h"
#include "sim900.h"

#include <stdint.h>
#include <util/delay.h>
#include <string.h>


char result_buff[32];

uint8_t buff_pos = 0;

uint8_t sim900_poweron(void)
{
	return sim900_cmd_wait_response("AT", 5, 100);
}

uint8_t sim900_cmd_wait_response(const char *command, uint8_t max_tries, uint8_t wait_tenths)
{
	at_cmd_t parsed_command = sim900_parse_command(command);
	
	for (uint8_t i=0; i < max_tries; i++)
	{
		if (i > 0)
		{
			_delay_ms(500);
		}
		
		uart_flush();
		
		uart_puts(command);
		uart_puts("\r");
		
		if (sim900_get_response())
		{
			if (strstr(result_buff, "ERROR")) // some error has occurred (invalid cmd probably)
			{	
				return 0;	
			}
			
			sim900_parse_response(&parsed_command);
			
			return 1;	
		}
		else
		{
			return 0;
		}
		
		for (uint8_t t=0; t < wait_tenths; t++)
		{
			_delay_ms(10);
		}
	}
	
	return 0;
}

char* sim900_get_last_response(void)
{
	return result_buff;
}

uint8_t sim900_test_last_response(const char *wanted)
{
	return (strcmp(wanted, result_buff) == 0);
}

void sim900_parse_response(at_cmd_t *parsed_command)
{
	if(parsed_command->syntax == EXTENDED)
	{
		if (parsed_command->type == READ)
		{
			// form of read answer: +<command>:<space><result>
			// so need to skip strlen(command) + 2 (not 3 due to array index starting at zero)
			
			uint8_t command_len = strlen(parsed_command->command) + 2;
			uint8_t result_len = buff_pos - 1;
			
			if (command_len <= result_len)
			{
				buff_pos = 0;
				
				for (uint8_t c = command_len; c < result_len; c++)
				{
					result_buff[buff_pos++] = result_buff[c];	
				}
				
				result_buff[buff_pos++] = '\0';
			}
		}
	}
}

at_cmd_t sim900_parse_command(const char *command)
{
	at_cmd_t parsed_command;
	
	uint8_t cmd_length = strlen(command);
	
	if (cmd_length < 4 || command[2] != '+')
	{
		parsed_command.syntax = BASIC;
		// more parsing required
	}
	else // just doing extended as S param type aren't being used yet
	{
		parsed_command.syntax = EXTENDED;
		
		parsed_command.type = EXECUTE; // may be changed in the state machine
		
		char action[8];
		char param[16];
		uint8_t buff_pos = 0;
		char this_char;
		at_cmd_parse_state_t state = STATE_COMMAND;
		
		for (uint8_t i = 3; i < cmd_length; i++)
		{
			this_char = command[i];
			
			switch (state)
			{
				case STATE_COMMAND:
					if (this_char == '=')
					{
						state = STATE_EQUALS;
					}
					else if (this_char == '?')
					{
						//state = at_cmd_parse_state_t.STATE_QUESTION; // should be end of string...
						parsed_command.type = READ;
					}
					else
					{
						action[buff_pos++] = this_char;
					}
					break;
				case STATE_EQUALS:
				
					if (this_char == '?')
					{
						//state = at_cmd_parse_state_t.STATE_QUESTION; // should be end of string...
						parsed_command.type = TEST;
					}
					else
					{
						state = STATE_PARAM;
						parsed_command.type = WRITE;
						action[buff_pos++] = '\0';
						buff_pos = 0;
					}
					break;
				case STATE_PARAM:
					param[buff_pos++] = this_char;
					break;
			}			
		}
		
		parsed_command.command = action;
		
		if (state == STATE_PARAM)
		{
			param[buff_pos++] = '\0';
			parsed_command.parameter = param;
		}
	}
	
	return parsed_command;
}

uint8_t sim900_get_response()
{
	buff_pos = 0;
	char rx, lastchar;
	uint8_t i = 0, found_line = 0;

	while(1)
	{
		if (i > 254)
		{
			return 0;
		}
		
		rx = uart_getc();
		
		if (rx != 0x00)
		{
			if (rx == '\n' && lastchar == '\r')
			{
				if (found_line)
				{
					result_buff[buff_pos++] = '\0';
					return 1;
				}
				
				found_line = 1;
			}				
			else if (found_line)
			{
				if (lastchar == '\r')
				{
					result_buff[buff_pos++] = '\r';
				}
				else if (rx != '\r')
				{
					result_buff[buff_pos++] = rx;
				}
				
			}				
						
			i = 0;
			lastchar = rx;
			continue;
		}
		i++;
		_delay_ms(10);
		
	}
}