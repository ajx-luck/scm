#include <sc.h>

#define getbit(x, y)   ((x) >> (y)&1)
#define setbit(x, y)  x|=(1<<y)
#define resetbit(x, y)  x&=~(1<<y)
#define reversebit(x, y)  x^=(1<<y)

#define u16_t unsigned int
#define u8_t unsigned char

u16_t count1,count2,count3;
u8_t FirstFlag = 0;
u8_t timeoutFlag = 0;
u16_t width1,width2;
u8_t timeout1MSFlag = 0;

void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;					//系统初始化
	OSCCON = 0X71;				//配置振荡为8M,开 WDT
	WPUB = 0xFF;
	OPTION_REG = 0xD0;		//Timer0使用内部时钟Focs/4，预分频比为1:2
	TMR0 = 0;				//赋予初始值
	TMR0PRD = 100;
	

	TRISB = 0B00111001;	
	PORTB = 0B00111001;
	IOCB = 0xFF;
	
	//设置PWM周期
	PWMCK0 = 1;
	PWMCK1 = 0;
	PWMPRD8 = 0;
	PWMPRD9 = 1;
	PWM_PRD = 13;
	
	count1=count2=count3=0;
	width1=width2=0;
	FirstFlag = 1;
}


void setPWM1(u16_t width)
{
	//选择PWM1
	PWMS0 = 1;
	PWMS1 = 0;
	PWMS2 = 0;
	PWMPRD9 = 0;
	if(width > 255)
	{
		PWMPRD8 = width/255;
		PWM_PRD = width-255;
	}else
	{
		PWMPRD8 = 0;
		PWM_PRD = width;
	}
}

void setPWM2(u16_t width)
{
	//选择PWM2
	PWMS0 = 0;
	PWMS1 = 1;
	PWMS2 = 0;
	PWMPRD9 = 0;
	if(width > 255)
	{
		PWMPRD8 = width/255;
		PWM_PRD = width-255;
	}else
	{
		PWMPRD8 = 0;
		PWM_PRD = width;
	}
}

//设置count计数
void resetTimeCount()
{
	if(count2 == 1350)
	{
		FirstFlag = 0;
	}
	
	if(count1 == 950)
	{
		count1 = 0;
	}
	if(FirstFlag == 0 && count2 == 950)
	{
		count2 = 0;
	}
	if(timeout1MSFlag == 100)
	{
		timeout1MSFlag = 0;
		count1++;
		count2++;
	}
}



void main()
{
	Init_System();
	INTCON = 0xE0;			//允许所有未被屏蔽的中断、禁止外设中断，使能Timer0
	while(1)
	{
		if(timeoutFlag)
		{
			timeoutFlag = 0;
			asm("clrwdt");		
					
			resetTimeCount();
			
			if(timeout1MSFlag == 0)
			{
				//PWM1设置
				if(count1 <275)
				{
					setPWM1(count1);
				}
				
				if(count1 >=275 && count1<=550)
				{
					setPWM1(550 - count1);
				}
				
				//PWM2设置
				if(FirstFlag)
				{
					if(count2 >=450)
					{
						count3 = count2-450;
					}
				}else
				{
					count3 = count2;
				}
				
				if(count3 <275)
				{
					setPWM2(count3);
				}
				
				if(count3 >=275 && count3<=550)
				{
					setPWM2(550 - count3);
				}
				
			}
			
			
			
			timeout1MSFlag++;
			
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