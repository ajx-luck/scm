#include<sc.h>

#define setbit(x,y)  x|=(1<<y)
#define resetbit(x,y)  x&=~(1<<y)
#define reversebit(x,y)  x^=(1<<y)

unsigned char timeoutFlag;

void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;					//系统初始化
	OSCCON = 0X71;				//配置振荡为8M,开 WDT
	OPTION_REG = 0x00;		//Timer0使用内部时钟Focs/4，预分频比为1:2
	TMR0 = 0;				//赋予初始值
	INTCON = 0xE0;			//允许所有未被屏蔽的中断、禁止外设中断，使能Timer0
	TMR0PRD = 100;
	

	TRISB = 0;	
	WPUB = 0xFF;
	PDCONB = 0;//关闭下拉电阻
	PORTB = 0xFF;
	IOCB = 0x00;
}

void main(void)
{
	Init_System();
	unsigned int count = 0;
	unsigned char index = 0;
	while(1)
	{
		asm("clrwdt");
		if(timeoutFlag)
		{
			timeoutFlag = 0;
			count++;
			if(count == 500)
			{
				count =0;
				reversebit(PORTB,index++);
				if(index == 5)
				{
					index = 0;
				}
			}
		}
	}
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
	//	TMR0 += 50;		//重新赋初值，在赋值前Timer0已有计数，故在该基础上加初值
	//---------------------------------------
			
		T0IF = 0;			//清中断标志位	
		timeoutFlag = 1;
	}
}
