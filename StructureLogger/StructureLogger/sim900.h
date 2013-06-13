/*
 * sim900.h
 *
 * Created: 09/06/2013 16:21:27
 *  Author: Peter
 */ 


#ifndef SIM900_H_
#define SIM900_H_

#define F_CPU 8000000UL

typedef enum  { TEST, READ, WRITE, EXECUTE } at_cmd_type_t;
typedef enum at_syntax_t { BASIC, S_PARAM, EXTENDED } at_syntax_t;
	
typedef struct {
	char *response_val;
	uint8_t error;
} at_cmd_response_t;

typedef struct {
	at_cmd_type_t type;
	char *command;
	char *parameter;
	at_syntax_t syntax;
	char *response;
} at_cmd_t;

typedef enum {STATE_COMMAND, STATE_EQUALS, STATE_PARAM} at_cmd_parse_state_t; //STATE_QUESTION,

extern uint8_t sim900_poweron(void);

extern uint8_t sim900_cmd_wait_response(const char *command, uint8_t max_tries, uint8_t wait_tenths);

extern uint8_t sim900_get_response();

extern char* sim900_get_last_response(void);

extern at_cmd_t sim900_parse_command(const char *command);

extern uint8_t sim900_test_last_response(const char *wanted);

extern void sim900_parse_response(at_cmd_t *parsed_command);

extern uint8_t sim900_send_sms(uint8_t *number, char *message);

#endif /* SIM900_H_ */