#ifndef	PWM_H_
#define	PWM_H_
#define getbit(x, y)   ((x) >> (y)&1)
#define setbit(x, y)  x|=(1<<y)
#define resetbit(x, y)  x&=~(1<<y)
#define reversebit(x, y)  x^=(1<<y)

void initPWM();
void mode1();
void mode2();
void mode3();
void mode4();
void mode5();
void modea();
void modeb();
void modec();
void moded();
void modee();


#endif