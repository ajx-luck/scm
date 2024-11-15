
#include <sc.h>
//采用32.768k晶振，休眠时用晶振计数中断唤醒


//系统初始化
void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;			//禁止中断
	OSCCON = 0X72;		//配置振荡为8M,开WDT
	OPTION_REG = 0;
	
    WPUA  = 0B00000000;  //PA口上拉无效
    WPUB  = 0B00000000;  //PB口上拉无效
    WPDB  = 0B00000000;  //PB口上拉无效
  
 
	TRISA = 0;
	TRISB = 0;
	 
	PORTA = 0B00000000;
	PORTB = 0B00000000;	 //关闭所有输出
	

	PIE1 = 2;			//使能Timer2中断,关闭其他中断

	PR2 = 0X80;
	T2CON = 0x8F;		//使能32.768KHz为Timer2计数时钟,Timer2后分频比为1:2，预分频1：16
						//128*4*16*2/(32.768*1000)=0.5S
	
	INTCON = 0XC0;		//使能中断	
}


//进入低功耗模式
void SystemSleep()
{
	
	PIE1 = 2;				//使能Timer2中断,关闭其他中断
	INTCON = 0XC0;
	if(0X8F != T2CON)
		T2CON = 0X8F;
	
	
	TRISA = 0;				//输出固定电平,减少功耗
	TRISB = 0;
	PORTA ^= 0XFF;	
							//关闭所有功能模块,减少功耗
	PWMCON0 = 0;

	OPA0CON = 0;
	OPA1CON = 0;
	ADCON0 = 0;				//关闭所有不需要的外设

	OPTION_REG = 0;
	
	OSCCON = 0X70;		//配置振荡为8M,关闭WDT
	asm("clrwdt");
	
	SLEEP();				//进入休眠模式
	
	asm("nop");
	asm("clrwdt");
	OSCCON = 0X70;		//配置振荡为8M,关闭WDT
}


/***********************************************************
主循环
***********************************************************/
void main()
{
	Init_System();
	while(1)
	{
		asm("clrwdt");
		SystemSleep();		//进入低功耗模式
		
	}
}


//中断服务函数
void interrupt Isr_Timer()
{
	if(TMR2IF)				//若只使能了一个中断源,可以略去判断
	{
		//Timer2中断，每1s进一次
		TMR2IF = 0;

	}
	else
	{
		PIR1 = 0;
		INTCON &= 0XC0;
	}
}




