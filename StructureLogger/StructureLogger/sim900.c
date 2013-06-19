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
#include <stdio.h> 

#define SMS_BUFFER (3+5+13+1)


char result_buff[32];

uint8_t buff_pos = 0;

void sim900_init(void)
{
	DDRD |= _BV(PD6);
	
	power_pin_low();
	
	uart_init( UART_BAUD_SELECT(9600,F_CPU) );
	
	sei();
	
	
}

void power_pin_high(void)
{
	// write Pin D6 high
	PORTD |= _BV(PD6);
}

void power_pin_low(void)
{	
	// write Pin D6 low
	PORTD &= ~(_BV(PD6));
}

uint8_t sim900_poweron(void)
{
	if (sim900_cmd_wait_response("AT") != 0) // check to see if it's already turned on
	{
		return 1;
	}
	
	toggle_power();
	//_delay_ms(2000);
	
	while(sim900_cmd_wait_response("AT") == 0)
	{
		_delay_ms(250);
	}
	return 1;
}

void toggle_power(void)
{
	power_pin_high();
	
	_delay_ms(1000);
	
	power_pin_low();
}

uint8_t sim900_cmd_wait_response(const char *command)
{
	at_cmd_t parsed_command = sim900_parse_command(command);
	
	uart_flush();
		
	uart_puts(command);
		
	uart_putc('\r');
	
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
			
	return 0;
}

at_status sim900_send_sms(uint8_t *number, char *message)
{
	// basic command is:
	// send AT+CMGS="phone_num"<cr>
	// wait for ><sp>
	// send message
	// send 0x1A
	
	uint8_t msg_length = strlen(message);
	
	if (msg_length >= 160)
	{
		return STATUS_SMS_MESSAGE_TOO_LONG;
	}
	
	uart_flush();
	
	uart_puts("AT+CMGS=\"0");
	
	uint8_t i=0;
	
	for (i=0; i < 10; ++i)
	{
		uart_putc((char)number[i] + 48);
	}
	
	uart_putc('"');
	uart_putc('\r');
	
	//wait for "> " to be received

	while(uart_getc() != '>')
	{
		if (i > 254)
		{
			uart_putc(0x1B); // send escape
			uart_putc('\r');
			return STATUS_SMS_COMMAND_ERROR;
		}
		
		i++;
		_delay_ms(10);
	}
	
	for (i=0; i < msg_length; i++)
	{
		uart_putc(message[i]);
	}
	
	uart_putc(0x1A);
	uart_putc('\r');
	
	while(sim900_get_response() == 0)
	{
	}	
	
	at_cmd_t parsed_command;	
	
	parsed_command.syntax = EXTENDED;
	parsed_command.type = READ;
	parsed_command.command = "+CMGS";

	sim900_parse_response(&parsed_command);
	
		
	return STATUS_SMS_SENT;
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
					if (buff_pos > 14) // don't overflow param array
					{
						break;
					}					
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
	
	result_buff[0] = '\0';

	while(1)
	{
		if (i > 254)
		{
			return 0;
			break;
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
	
	if (found_line)
	{
		result_buff[buff_pos++] = '\0';
	}
	
	return 1;
}
/*
void sim900_data_connect(void)
{
	//AT+CSTT="goto.virginmobile.uk","user",""
}*/

/*/////////////////////////////////////////////////////////////////////////

NTP connection

http://www.edaboard.com/thread238483.html

// needed?
AT+CGATT???

Connect GPRS:

AT+CSTT="goto.virginmobile.uk","user",""

// turn on gprs
AT+CIIRC

// get IP
AT+CIFSR

// send packet - can use 0.uk.pool.ntp.org instead 
AT+CIPSTART="UDP","31.193.133.197","123"

AT+CIPSEND
// wait for >
// send packet, e.g.

 byte[] packet = new byte[49];
 packet[0] = 0xE3;
 packet[1] = 0;
 packet[2] = 6;
 packet[3] = 0xEC;
 packet[12] = 49;
 packet[13] = 0x4E;
 packet[14] = 49;
 packet[15] = 52;
 packet[48] = 0x1A;
 
 // receive response from server 48 bytes.
 bytes 40-43 contain number of seconds since 1900
 
 example working:
 
 // response packet

	 24 03 06 E9 00 00 04 5F
	 00 00 00 00 C1 CC 72 E8
	 D5 67 48 68 29 11 EF FF
	 00 00 00 00 00 00 00 00
	 D5 67 52 CA 18 90 B7 FF
	 D5 67 52 CA 18 90 F7 FF 

	 ntp - (D5 67 52 CA) => 3580318410
	 epoc - 2208988800 (seconds to 1 jan 1970 from 1 jan 1900)

	 unix:  ntp - epox => 1371329610 - correct!

	 hour: (unix % 86400) / 3600 => 75210 / 3600 = 20.89

	 minutes: (unix % 3600) / 60 => 3210 / 60 = 53.5

	 seconds: (unix % 60) = 30
	 
	 ---
	 
	 to work out date need to count leap days and add to the date based on 365 days in each year
	 
	 days since 1970: unix / 86400 => 15871.87 (num days = 15871)
	 
	 approx year since 1970 = (num days / 365) => 43.48 (43)
	 day in year = num days - (approx year * 365) => 176
	 
	 count leap years before 2013 - only special case in range is 2000, which was leap year
	 
	 (approx year / 4) + 1 = 11.75 => 11 leap years (hence days) 
	 
	 so days in year become: (day in year) - (leap-days) = 165
	 
	 // TODO: handle wrapping case where days in year < leap days, depending on if last year is a leap year.
	 
	 Now to convert days (187) to month + day
	 
	 array of days in months: [31,28,31,30,31,30,31,31,30,31,30,31]
	 array of days in leap_year : [31,29,31,30,31,30,31,31,30,31,30,31]
	 
	 month total = 31;
	 current_month = 1;
	 
	 for current_month = 1; current_month < 12; current_month++
	 {
		if month_total > days-in-year
		{
			break;
		}
		 
		month_total += array[current_month];
	 }		 
		
	 // current month will have the correct month number
	 
	 day in month = days-in-year - (month_total - array[current_month-1])
	 
	 
	 
	 
	 
	 
 
 AT+CIPCLOSE
 
 

/////////////////////////////////////////////////////////////////////////*/