/*
 * ntp.h
 *
 * Created: 17/06/2013 21:57:44
 *  Author: Peter
 */ 


#ifndef NTP_H_
#define NTP_H_

typedef struct {
	uint16_t year;
	uint8_t month;
	uint8_t day;
	uint8_t hours;
	uint8_t minutes;
	uint8_t seconds;
} datetime_t;

datetime_t ntp_decode_UTC(uint32_t utc);
char* ntp_build_packet(void);


#endif /* NTP_H_ */