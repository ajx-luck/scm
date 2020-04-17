#define key_state_0 0
#define key_state_1 1
#define key_state_2 2
#define key_state_3 3

#define key_no 		0
#define key_click	1
#define key_double	2
#define key_long	3

unsigned char key_read(unsigned char key_input);
static unsigned char key_driver(unsigned char key_input);
unsigned char getSimpleKeyInput(unsigned char key_input);