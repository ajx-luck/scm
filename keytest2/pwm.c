#include <sc.h>
#include "pwm.h"

void initPWM()
{
	PWMCON1 = 0x40;	//选择C组PWM
	PWMCON0 = 0x21;//分频比 1：4
	PWMCON2 = 0;
	PWMTH = 0;
	PWMTL = 126;		//约等于32K
	PWMD0L = 1;
	PWMD1L = 1;		//pwm1占空比
	PWMD01H = 0;
}

void mode1_a()
{
	PWMD0L = 1;
	PWMD1L = 0;		//pwm1占空比
	PWMTH = 0;
	PWMCON0 |= 0x01;		//分频比 1：4 ,开启PWM0
	setbit(PORTB, 7);
	
}

void mode1_b()
{
	PWMD0L = 1;
	PWMD1L = 0;		//pwm1占空比
	PWMTH = 0;
	PWMCON0 |= 0x01;		//分频比 1：4 ,开启PWM0
	resetbit(PORTB, 7);
	
}

void mode1_c()
{
	PWMD0L = 1;
	PWMD1L = 32;		//pwm1占空比
	PWMTH = 0;
	PWMCON0 |= 0x03;		//分频比 1：4 ,开启PWM0 PWM1
	
}

void mode1_d()
{
	PWMD0L = 1;
	PWMD1L = 63;		//pwm1占空比
	PWMTH = 0;
	PWMCON0 |= 0x03;		//分频比 1：4 ,开启PWM0 PWM1
	
}

void mode1_e()
{
	PWMD0L = 1;
	PWMD1L = 95;		//pwm1占空比
	PWMTH = 0;
	PWMCON0 |= 0x03;	//分频比 1：4 ,开启PWM0 PWM1
	
}

void mode2_a()
{
	PWMD0L = 12;
	PWMD1L = 0;		//pwm1占空比
	PWMTH = 0;
	PWMCON0 |= 0x01;		//分频比 1：4 ,开启PWM0
	setbit(PORTB, 7);
	
}

void mode3_a()
{
	PWMD0L = 20;
	PWMD1L = 0;		//pwm1占空比
	PWMTH = 0;
	PWMCON0 |= 0x01;		//分频比 1：4 ,开启PWM0
	setbit(PORTB, 7);
	
}

void mode4_a()
{
	PWMD0L = 72;
	PWMD1L = 0;		//pwm1占空比
	PWMTH = 0;
	PWMCON0 |= 0x01;		//分频比 1：4 ,开启PWM0
	setbit(PORTB, 7);
	
}

void mode5_a()
{
	PWMD0L = 0;
	PWMD1L = 0;		//pwm1占空比
	PWMTH = 0;
	PWMCON0 = 0x60;		//分频比 1：4 ,开启PWM0
	setbit(PORTB, 7);
	setbit(PORTA, 5);
}
