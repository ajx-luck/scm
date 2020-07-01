#ifndef	PWM_H_
#define	PWM_H_
#define getbit(x, y)   ((x) >> (y)&1)
#define setbit(x, y)  x|=(1<<y)
#define resetbit(x, y)  x&=~(1<<y)
#define reversebit(x, y)  x^=(1<<y)

void initPWM();
void mode1_a();
void mode1_b();
void mode1_c();
void mode1_d();
void mode1_e();
void mode2_a();
void mode3_a();
void mode4_a();
void mode5_a();



#endif