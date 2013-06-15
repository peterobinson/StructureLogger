/*
 * StructureLogger.c
 *
 * Created: 05/05/2013 15:38:41
 *  Author: Peter
 */ 

#define F_CPU 8000000UL

#include <stdlib.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>

#include <stdint.h>
#include <util/delay.h>
#include <string.h>

#include "lib/uart.h"
#include "sim900.h"



#define MUX_PORT PORTA
#define MUX_DDR DDRA
#define MUX_PIN PINA

//#define encoder_select(val) ((MUX_PORT & 0x0F) | val << 4)

#define ENCODER_PORT PORTC
#define ENCODER_PIN PINC0
#define ENCODER_DDR DDRC
#define encoder_pin_read() (PINC & _BV(ENCODER_PIN))

#define MUX_CHOOSE_ENCODER_MASK 0xF0
#define MUX_DATA_IN_MASK 0x0F


//#define _DEBUG 1



uint8_t send_to_number[10] = {7,8,8,5,5,0,0,8,4,9};


void read_dials(void);
void encoder_select(uint8_t pos);
void scan_encoder(uint8_t index);
void test_encoder(uint8_t test);

int main(void){
	//DDRA = 0xff;
	//ENCODER_DDR &= ~(_BV(ENCODER_PIN));
	//ENCODER_PORT |= (_BV(ENCODER_PIN));
		
	uart_init( UART_BAUD_SELECT(9600,F_CPU) ); 
	
	sei();
	
	if (sim900_poweron())
	{
		if (sim900_cmd_wait_response("AT+CCALR?", 1, 0))
		{
			if (sim900_test_last_response("1"))
			{
				sim900_send_sms_fast(send_to_number, "wobble flobble weeeee!");
			/*	
				uart_puts("AT+CMGS=\"0");
				
				for (uint8_t i=0; i < 10; ++i)
				{
					uart_putc(send_to_number[i] + 48);
				}

				uart_puts("\"\r");

				_delay_ms(1000);
				uart_puts("From le AVR");
				uart_putc(0x1A);
				uart_putc(0x0D);
			*/
			}
		}
	}
	
	while(1)
	{
		 
	}		 
	//uart_puts("String stored in SRAM\r\n");

	uart_puts("AT+CMGS=\"0");
	
	for (uint8_t i=0; i < 10; ++i) 
	{
		uart_putc(send_to_number[i] + 48);
	}

	uart_puts("\"\r");

	_delay_ms(1000);
	uart_puts("From le AVR");
	uart_putc(0x1A);
	uart_putc(0x0D);
	uart_putc(0x0A);
	
	_delay_ms(5000);
	
	uart_puts("AT+CPOWD=1\r\n");
	
    while(1)
    {

		//uart_puts("AT+CMGS=\"07885500849\"");
		_delay_ms(2000);
		//read_dials();	
    }
}

void read_dials(void)
{
	// set up port direction
	MUX_DDR = MUX_CHOOSE_ENCODER_MASK;
	
	// turn on pull-ups on data in pins
	MUX_PORT |= MUX_DATA_IN_MASK;
		
	// iterate through the encoders
	for (uint8_t idx = 0; idx < 2; ++idx )
	{
		// select encoder
		MUX_PORT = (idx << 4) | (MUX_PORT & MUX_DATA_IN_MASK);
		
		
		#ifndef _DEBUG
			// delay is to allow voltage to stabilise
			_delay_ms(1);
		#endif // _DEBUG
		
		// read selected encoder
		
		send_to_number[idx] = ~MUX_PIN & MUX_DATA_IN_MASK;
		_delay_ms(25);
	}
}

void encoder_select(uint8_t pos) 
{
	MUX_PORT = (MUX_PORT & 0x0F) | (pos << 4);
}	

void test_encoder(uint8_t test)
{
	// use pullups for the high bits (configure as inputs)
	
	// set high bits as inputs
	MUX_DDR = (MUX_DDR & 0xF0) | (~test & 0x0F);
	
	// turn on pullups for the high bits (and drive low for the low bits)
	
	MUX_PORT = (MUX_PORT & 0xF0) | test;
	
}