#include<sc.h>
#define setbit(x, y)  x|=(1<<y)
#define resetbit(x, y)  x&=~(1<<y)


unsigned char timeoutFlag;
unsigned int minuteFlag = 0;
unsigned char hourCount = 0;

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
	unsigned char timeout1MSFlag = 0;
	while(1)
	{
		
		if(timeoutFlag)
		{
			timeoutFlag = 0;
			asm("clrwdt");
			if(count == 500)
			{
					count = 0;
					minuteFlag++;
			}
			//一个小时,0.5s*7200
			if(minuteFlag == 7200)
			{
				minuteFlag = 0;
				hourCount++;
			}
			
			if(hourCount == 24)
			{
				hourCount = 0;
			}
			
			if(timeout1MSFlag == 10)
			{
				timeout1MSFlag =0;
				count++;
			}
			
			timeout1MSFlag++;
			
			//超过6个小时，停止闪烁
			if(hourCount > 5)
			{
				PORTB = 0xFF;
				continue;
			}
			
			switch(count)
			{
				case 0:
				resetbit(PORTB, 4);
				setbit(PORTB, 2);
				break;
				case 100:
				resetbit(PORTB, 3);
				setbit(PORTB, 1);
				break;
				case 200:
				resetbit(PORTB, 2);
				setbit(PORTB, 0);
				break;
				case 300:
				resetbit(PORTB, 1);
				setbit(PORTB, 4);
				break;
				case 400:
				resetbit(PORTB, 0);
				setbit(PORTB, 3);
				break;
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
