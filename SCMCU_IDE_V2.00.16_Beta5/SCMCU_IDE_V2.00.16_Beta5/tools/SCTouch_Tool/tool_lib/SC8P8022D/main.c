
#include "CheckTouchKey.h"		//此包含放在最前面
		
//---------------------------------------------------
#include <sc.h>

volatile unsigned int MainTime;

/***********************************************************************
函数功能：延时子函数，13个指令周期1循环
***********************************************************************/
static void Delay(unsigned int dtemp) 
{
	while(dtemp--);
}
/***********************************************************************
子函数功能：延时templ  ms，有中断则不准
***********************************************************************/
static void Delay_nms (unsigned int inittempl)
{
	unsigned int	i;
	/******************************************************************/
	for(i=0;i<inittempl;i++)
	{
		Delay(154);
		CLRWDT();
	}
}

/**********************************************************
初始化程序
**********************************************************/
void System_Init()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;				//禁止中断
	OSCCON = 0X70;			//配置振荡为8M
	OPTION_REG = 0;
	
	
	//延时等待电源电压稳定
	//DelayXms(200);
	TRISA = 0;
	PORTA = 0;
	TRISB = 0;
	PORTB = 0;

	PIE1 = 2;
	PR2 = 250;				//8M下将TMR2设置为125us中断
	T2CON = 4;				//使能定时器2，预分频1:1
	
	INTCON = 0XC0;			//使能总中断，外设中断
}

/**********************************************************
函数名称：Refurbish_Sfr
函数功能：刷新一些特殊功能寄存器
入口参数：无
出口参数：无 
备    注：每隔一定时间刷新一次SFR可增强抗干扰能力
**********************************************************/
void Refurbish_Sfr()
{
	//刷新中断相关控制寄存器
	PIE1 = 2;
	PR2 = 250;
	INTCON = 0XC0;
	if(4 != T2CON)
		T2CON = 4;	
}

/***********************************************************
中断服务函数
***********************************************************/
void interrupt Isr_Timer()
{
	if(TMR2IE==1&&TMR2IF==1)				//若只使能了一个中断源,可以略去判断
	{
		TMR2IF = 0;
		MainTime++;
	}

	else
	{
		PIR1 = 0;

	}
}
/***********************************************************
主函数
***********************************************************/
void main()
{
	Delay_nms(100);			//延时等待电源电压稳定
	System_Init();			//系统初始化
		
	while(1)
	{
		
		Refurbish_Sfr();	//唤醒后刷新专用寄存器
		CheckTouchKey();	//触摸检测	
		
	}
}