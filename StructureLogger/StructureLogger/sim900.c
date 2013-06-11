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
	at_cmd_t parsed_command = parse_command(command);
	
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

at_cmd_t parse_command(const char *command)
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
	char rx;
	uint8_t i = 0;
	uint8_t found_command = 0;

	while(1)
	{
		if (i > 254)
		{
			return 0;
		}
		
		rx = uart_getc();
		
		if (rx != 0x00)
		{
			if (!found_command)
			{
				if (rx == 0x0A)
				{
					found_command = 1;
				}
			}
			else
			{
				if (rx == 0x0D) // end of this line
				{
					return 1;
				}
				
				if (rx != 0x0A)
				{
					result_buff[buff_pos] = rx;
					buff_pos++;
				}
			}
				
					
			i = 0;
			continue;
		}
		i++;
		_delay_ms(10);
		
	}
}