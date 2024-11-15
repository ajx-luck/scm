#include <sc.h>
#include "pwm.h"

void initPWM()
{
	PWMCON1 = 0x40;	//选择C组PWM
	PWMCON0 = 0x00;//分频比 1：1
	PWMCON2 = 0;
	PWMTH = 0;
	PWMTL = 36;		//约等于32K
	PWMD0L = 0;
	PWMD1L = 0;		//pwm1占空比
	PWMD4L = 0;		//pwm1占空比
	PWMD01H = 0;
	PWMD23H = 0;
}

void whOn()
{
	PWMD4L = 16;
	wuhuaOn();
}

void whiteOn()
{
	PWMD1L = 36;
	led1On();
	led2Off();
}

void yellowOn()
{
	PWMD0L = 36;
	led2On();
	led1Off();
}

void hunheOn()
{
	PWMD0L = 27;
	PWMD1L = 18;
	led1On();
	led2On();
}

void ledOff()
{
	led1Off();
	led2Off();
}

void light1()
{
	PWMD0L = PWMD1L = 27;
}

void light2()
{
	PWMD0L = PWMD1L = 18;
}

void light3()
{
	PWMD0L = PWMD1L = 27;
}

void light4()
{
	PWMD0L = PWMD1L = 36;
}

void fan1()
{
	TRISA = 0x0D;
	PORTA = 0x10;
}

void fan2()
{
	TRISA = 0x0B;
	PORTA = 0x10;
}

void fan3()
{
	TRISA = 0x07;
	PORTA = 0x10;
}

void fanOff()
{
	TRISA = 0x0f;
	PORTA = 0x00;
}
