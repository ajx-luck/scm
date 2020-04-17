#include<sc.h>
#define getbit(x,y)   ((x) >> (y)&1)

unsigned char nub = 0;
unsigned char pb5h = 0,pb5max = 0;
unsigned char pb4h = 0,pb4max = 0;
unsigned char pb3h = 0,pb3max = 0;
unsigned char timeoutFlag = 0;

void checkPB(unsigned char* pbCount,unsigned char* pbCountmax,unsigned char bitNub);
void setPWM();
void Init_System();


void main(void)
{
	
	Init_System();
	while(1)
	{
		//检测输入
		if(timeoutFlag)
		{
			nub++;
			checkPB(&pb3h,&pb3max,3);
			checkPB(&pb4h,&pb4max,4);
			checkPB(&pb5h,&pb5max,5);	
			timeoutFlag = 0;
			if(nub >=201)
			{
				nub = 0;
			}
			
			if(nub % 100 ==0)
			{
				setPWM();
			}		
		}
		
		
	}	
}

void setPWM()
{
	//选择PWM0
	PWMS0 = 0;
	PWMS1 = 0;
	PWMS2 = 0;
	//PWM占空比

	PWMR08 = 0;
	PWMR09 = 0;
	PWMR = pb5max * 2;
	PWMEN0 = 1;
	
	//选择PWM1
	PWMS0 = 1;
	PWMS1 = 0;
	PWMS2 = 0;
	//PWM占空比

	PWMR08 = 0;
	PWMR09 = 0;
	PWMR = pb4max * 2;
	PWMEN1 = 1;
	
	//选择PWM2
	PWMS0 = 0;
	PWMS1 = 1;
	PWMS2 = 0;
	//PWM占空比

	PWMR08 = 0;
	PWMR09 = 0;
	PWMR = pb3max * 2;
	PWMEN2 = 1;
	
}

void checkPB(unsigned char* pbCount,unsigned char* pbCountmax,unsigned char bitNub)
{
    if(getbit(PORTB,bitNub) == 1)
    {
        *pbCount = *pbCount + 1;
    }
    else
    {
        if(*pbCount !=0)
        {
            *pbCountmax = *pbCount;
        }
        *pbCount = 0;
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
	OSCCON = 0X71;				//配置振荡为8M,开 WDT
	WPUB = 0xFF;
	OPTION_REG = 0xD0;		//Timer0使用内部时钟Focs/4，预分频比为1:2
	TMR0 = 0;				//赋予初始值
	INTCON = 0xE0;			//允许所有未被屏蔽的中断、禁止外设中断，使能Timer0
	TMR0PRD = 100;
	

	TRISB = 0B00111000;	
	PORTB = 0B00111000;
	IOCB = 0xFF;
	
	//设置PWM周期
	PWMCK0 = 0;
	PWMCK1 = 1;
	PWMPRD8 = 0;
	PWMPRD9 = 0;
	PWM_PRD = 199;
	
	//选择PWM0
	PWMS0 = 0;
	PWMS1 = 0;
	PWMS2 = 0;
	//PWM占空比

	PWMR08 = 0;
	PWMR09 = 0;
	PWMR = 0;
	PWMEN0 = 1;//PWM0使能
	//选择PWM1
	PWMS0 = 1;
	PWMS1 = 0;
	PWMS2 = 0;
	PWMR08 = 0;
	PWMR09 = 0;
	PWMR = 0;
	PWMEN1 = 1;
	
	//选择PWM2
	PWMS0 = 0;
	PWMS1 = 1;
	PWMS2 = 0;
	PWMR08 = 0;
	PWMR09 = 0;
	PWMR = 0;
	PWMEN2 = 1;
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
		TMR0 += 50;		//重新赋初值，在赋值前Timer0已有计数，故在该基础上加初值
	//---------------------------------------
			
		T0IF = 0;			//清中断标志位	
		timeoutFlag = 1;
	}
}
