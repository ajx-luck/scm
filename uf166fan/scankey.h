#ifndef _SCANKEY_H_
#define _SCANKEY_H_

#define key_state_0 0
#define key_state_1 1
#define key_state_2 2
#define key_state_3 3

#define key_no 		0
#define key_click	1
#define key_double	2
#define key_long	3
#define getbit(x,y)   ((x) >> (y)&1)
#define setbit(x,y)  x|=(1<<y)
#define resetbit(x,y)  x&=~(1<<y)
#define reversebit(x,y)  x^=(1<<y)

struct Keys{
	unsigned char key_timer_cnt1;
	unsigned char key_state_buffer1;
	//�ϲ�Key����
	unsigned char key_timer_cnt2;
	unsigned char key_state_buffer2;
	//��ǰ����״̬
	char key_input;
	//�����Ĵ�����ֵ
	char key_addr_result;
	//��������
	char key_index;
};

unsigned char key_read(struct Keys * keys);
static unsigned char key_driver(struct Keys * keys);
void sacnKeyInput(struct Keys* key);
void resetKey(struct Keys* key);

#endif 