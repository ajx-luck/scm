#include<sc.h>
#include "scankey.h"

void Init_System();





unsigned int nub = 0;


void main()
{
	Init_System();
	
	while(1)
	{
		if(nub %10 == 0)
		{
			if(key_click == key_read(PORTB))
		}
		if(K1 == K1ON)
		{
			PORTB = 0B00000000;

		}
		else
		{
			PORTB = 0B00010000;
		}


	}
}

/***********************************************
函数名称：Init_System
函数功能：系统初始化
入口参数：无
出口参数：无
备注：
************************************************/
void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;					//系统初始化
	OSCCON = 0X70;				//配置振荡为8M,开 WDT
	WPUB = 0xFF;
	OPTION_REG = 0xD0;		//Timer0使用内部时钟Focs/4，预分频比为1:2
	TMR0 = 131;				//赋予初始值
	INTCON = 0xA0;			//允许所有未被屏蔽的中断、禁止外设中断，使能Timer0
	TRISA = 0x00;
	TRISB = 0B00101111;
	TRISC = 0x00;
	PORTA = 0x00;	
	PORTB = 0B00010000;
	PORTC = 0x00;
	IOCB = 0xFF;
}

/***********************************************
函数名称：Timer0_Isr
函数功能：中断服务
入口参数：无
出口参数：无
备注：
***********************************************/
void interrupt Timer0_Isr()
{
	if(T0IF)
	{
	//---------------------------------------
		TMR0 += 131;		//重新赋初值，在赋值前Timer0已有计数，故在该基础上加初值
	//---------------------------------------
			
		T0IF = 0;			//清中断标志位	
		nub++;
	}
}

