/*
 * CFile1.c
 *
 * Created: 17/06/2013 21:14:20
 *  Author: Peter
 */ 

#include <stdint.h>
#include "ntp.h"

#define EPOC 2208988800UL

uint8_t month_days[] = {31,28,31,30,31,30,31,31,30,31,30,31};
uint8_t month_days_leap[] = {31,29,31,30,31,30,31,31,30,31,30,31};

datetime_t ntp_decode_UTC(uint32_t utc)
{
	datetime_t date;
	
	uint32_t unix = utc - EPOC;
	
	date.hours = (unix % 86400) / 3600;
	date.minutes = (unix % 3600) / 60;
	date.seconds = (unix % 60);
	
	uint16_t days_since_epoc = (unix / 86400) + 1;

	uint16_t running_day_total = 0;
	uint16_t year;
	
	for (year = 1970; year < 2038; year++)
	{
		if (running_day_total >= days_since_epoc)
		{
			break;
		}
		
		running_day_total += (year % 4 == 0) ? 366 : 365;
	}
	
	year--;
	
	date.year = year;
	
	uint16_t day_in_year = ((year % 4 == 0) ? 366 : 365) - (running_day_total - days_since_epoc);
	
	uint16_t running_month_total = 31;
	
	uint8_t current_month = 1;
	
	uint8_t *day_array = (year % 4 == 0) ? month_days_leap : month_days;
	
	for (current_month = 1; current_month < 12; current_month++)
	{
		if (running_month_total >= day_in_year)
		{
			break;
		}
		
		running_month_total += day_array[current_month];
	}	
	
	date.month = current_month;
	
	date.day = day_in_year - (running_month_total - day_array[current_month-1]);

	return date;
}

char* ntp_build_packet(void)
{
	char packet[48];

	packet[0] = 0xE3;
	packet[1] = 0;
	packet[2] = 6;
	packet[3] = 0xEC;
	packet[12] = 49;
	packet[13] = 0x4E;
	packet[14] = 49;
	packet[15] = 52;
	
	return packet;
}