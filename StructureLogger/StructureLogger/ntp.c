/*
 * CFile1.c
 *
 * Created: 17/06/2013 21:14:20
 *  Author: Peter
 */ 

#include <stdint.h>

#define EPOC 2208988800UL

uint8_t month_days[] = {31,28,31,30,31,30,31,31,30,31,30,31};
uint8_t month_days_leap[] = {31,29,31,30,31,30,31,31,30,31,30,31};

void ntp_load_UTC(uint32_t utc)
{
	uint32_t unix = utc - EPOC;
	
	uint8_t hour = (unix % 86400) / 3600;
	uint8_t minutes = (unix % 3600) / 60;
	uint8_t seconds = (unix % 60);
	
	// to work out date need to count leap days and add to the date based on 365 days in each year
	uint16_t days_since_epoc = unix / 8600;
	uint16_t years_since_epoc = days_since_epoc / 365;
	
	uint16_t day_in_year = days_since_epoc - (years_since_epoc * 365);
	
	// count leap years (days) between epoc and year - only special case in range is 2000, which was leap year
	uint8_t leap_days = ((years_since_epoc - 3) >> 2) + 1; // /4
	
	// shift day in year by leap days
	
	if (day_in_year <= leap_days)
	{
		uint8_t dif = leap_days - day_in_year;
		if ((years_since_epoc + 1) % 4 == 0) // last year had 366 days
		{
			day_in_year = 366 - dif;
		}
		else
		{
			day_in_year = 365 - dif;
		}
	}
	else
	{
		day_in_year -= leap_days;
	}
	
	// now to get the date
	
	uint16_t running_day_total = 31;
	
	uint8_t current_month = 1;
	
	uint8_t *day_array = ((years_since_epoc + 1) % 4 == 0) ? month_days_leap : month_days;
	
	for (current_month = 1; current_month < 12; current_month++)
	{
		if (running_day_total > day_in_year)
		{
			break;
		}
		
		running_day_total += day_array[current_month];
	}	
	
	uint8_t day_in_month = day_in_year - (running_day_total - day_array[current_month-1]);

}