#include <sc.h>
#include "pwm.h"

void initPWM()
{
	PWMCON1 = 0x40;	//选择C组PWM
	PWMCON0 = 0x23;//分频比 1：4
	PWMCON2 = 0;
	PWMTH = 0;
	PWMTL = 125;		//约等于32K
	PWMD0L = 1;
	PWMD1L = 1;		//pwm1占空比
	PWMD01H = 0;
}

void mode1()
{
	PWMD0L = 1;
	PWMD01H = 0;
}

void mode2()
{
	PWMD0L = 12;
	PWMD01H = 0;
}

void mode3()
{
	PWMD0L = 20;
	PWMD01H = 0;
}

void mode4()
{
	PWMD0L = 71;
	PWMD01H = 0;
}

void mode5()
{
	PWMD0L = 125;
	PWMD01H = 0;
}

void modea()
{
	PWMD1L = 125;
	PWMD01H = 0;
}

void modeb()
{
	PWMCON0 = 0x21;
	resetbit(PORTB, 7);
}

void modec()
{
	PWMD1L = 31;
	PWMCON0 = 0x23;
	PWMD01H = 0;
}

void moded()
{
	PWMD1L = 62;
	PWMD01H = 0;
}

void modee()
{
	PWMD1L = 94;
	PWMD01H = 0;
}

