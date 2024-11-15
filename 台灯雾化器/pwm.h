#ifndef	PWM_H_
#define	PWM_H_
#define getbit(x, y)   ((x) >> (y)&1)
#define setbit(x, y)  x|=(1<<y)
#define resetbit(x, y)  x&=~(1<<y)
#define reversebit(x, y)  x^=(1<<y)

#define wuhuaOn()	PWMCON0 |= 0x10
#define wuhuaOff()	PWMCON0 |= 0xef
#define led1On()	PWMCON0 |= 0x02
#define led1Off()	PWMCON0 |= 0xfd
#define led2On()	PWMCON0 |= 0x01
#define led2Off()	PWMCON0 |= 0xfe

void initPWM();
void whOn();
void whiteOn();
void yellowOn();
void hunheOn();
void ledOff();
void light1();
void light2();
void light3();
void light4();
void fan1();
void fan2();
void fan3();
void fanOff();


#endif