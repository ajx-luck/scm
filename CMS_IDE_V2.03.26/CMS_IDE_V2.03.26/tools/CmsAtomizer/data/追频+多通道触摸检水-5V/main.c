/***********************************************************************
方案说明：
***********************************************************************/
/**********************************************************************/
/*修改说明*/

/**********************************************************************/
/**********************************************************************/
/**********************************************************************/
/*头文件*/
#include <cms.h>
#include "main.h"
#include "Eeprom.h"
#include "delay.h"
#include "mytype.h"
#include "WHQ_TP_ZP.h"
#include "CMWater_SP.h"
#include "WHQ_Sender.h"
/**********************************************************************/
/**************************************
1、WHQ_SENDER_ENABLE定义为1时为雾化调试模式，可观察雾化器的主要数据；
2、WHQ_SENDER_ENABLE定义为2时为触摸检水调试模式，可观察各触摸通道的主要数据；
3、正常使用时请把WHQ_SENDER_ENABLE定义为0；
**************************************/
/*全局变量声明*/
/**********************************************************************/
volatile unsigned char tcount;
volatile bit errf;
volatile bit errff;
volatile bit onoff;
/**********************************************************************/
#define CMF_DATA		0x07//所有触摸通道有水标志值
/**********************************************************************/
/***********************************************************************
子函数功能：上电初始化系统寄存器
入口参数：
返回数据：
备注：
***********************************************************************/
void Init_ic (void)
{
	PORTA = 0;
	PORTB = 0;
	INTCON = 0xC0;
	PIR1 = 0;
	PIR2 = 0;
	WDTCON = 0x01;
	TRISA = 0x22;
	TRISB = 0xff;
	OPTION_REG = 0;
	OSCCON = 0x71;
	PIE1 = 0;
	PIE2 = 0;
	IOCB = 0;
	WPUA = 0;
	WPUB = 0;
}
/***********************************************************************
函数功能：初始上电RAM赋值
入口参数：
返回数据：
备注：
***********************************************************************/
void Init_ram (void)
{
	PIE2 = 0;
	PIE1 = 0B00000010;
	PR2 = 125;				//8M下将TMR2设置为125us中断
	T2CON = 5;				//使能定时器2
	INTCON = 0XC0;			//使能中断
}
/***********************************************************************
函数功能：系统寄存器刷新
入口参数：
返回数据：
备注：
***********************************************************************/
void Sys_set (void)
{
	asm("clrwdt");
	TRISA = 0x22;
	TRISB = 0xCf;
	WDTCON = 0x01;
	OPTION_REG = 0;
	PIE1 = 0B00000010;
	PR2 = 125;
	INTCON = 0XC0;
	if(5 != T2CON)
		T2CON = 5;
}

/***********************************************************************
函数功能：触摸检水子函数
入口参数：
返回数据：
备注：有无缺水用全局标志位wnonf确定
***********************************************************************/
void Set_CM_water(void)
{
	//uchar	etempl,etemph,WAdr_temp;
	//uint wat_ram,wat_base;
	//static	bit		readfstf = 0;
	uchar	templ;
	static	uint	wdlyc;
	static	bit		wcmtonf = 0;
	static uint sec = 0;
	static uchar SDFst;
	static uchar WatSec;
	/******************************************************************/
	if(!wcmtonf)
	{
		if(++wdlyc > 200)				//上电延时0.5S等电压稳定再去检测触摸
		{
			wdlyc = 0;
			wcmtonf = 1;
		}
	}
	else
	{
		/*if(!readfstf)
		{
			readfstf = 1;
			if((0x29 != Set_jiyi_re(Checkl_Adr)) || (0x15 != Set_jiyi_re(Checkh_Adr)))	//没有存贮则上电预写一个数据
			{
				wat_ram=100;												//此处直接赋值TKEYCON1水位初始值
				wat_base=200;												//此处直接赋值TKEYCON1水位基准值


				for(unsigned char i=0; i<Real_NUM; i++)
				{
					WAdr_temp = Wat_Adrl + i*2;
					if(WAdr_temp > 22)//EE超出范围22,则退出,保护中心频率EE
					{
						return ;
					}
					if(i == CM_KEY_NUM)
					{
						etempl=(uchar)wat_base;										//取低8位
						etemph=(uchar)(wat_base/256);								//取高8位				
					}
					else
					{					
						etempl=(uchar)wat_ram;										//取低8位
						etemph=(uchar)(wat_ram/256);								//取高8位
					}									
					Set_jiyi_wr(etemph,WAdr_temp+1);
					Set_jiyi_wr(etempl,WAdr_temp);  
				}
							
				Set_jiyi_wr(0x29,Checkl_Adr);
				Set_jiyi_wr(0x15,Checkh_Adr);
			}
			return;
		}*/  //建议此功能不要用
		
		if(!SDFst)
		{
			if(++sec >= 100)
			{
				sec = 0;
				SDFst = 1;
			}
		}
		else
		{
			if(++WatSec >= 4)//4次调用一次
			{
				WatSec = 0;
			}
			else
			{
				return;
			}
		}
		
		templ = Water_test();
		if(0xff == templ)
		{
			errff = 1;					//硬件错误
		}
		
		if(CMWatFlag == CMF_DATA)		//所有通道检测都有水时才开机
		{
			onoff = 1;
			errf = 0;													
		}
		else				//触摸检测缺水
		{
			if(onoff)
			{
				errf = 1;				
			}			
		}
	}
}

/***********************************************************************
函数功能：	测试模式清EE数据
返回数据：	0：发生错误
			1：没有进入测试模式
			0xff：清EE数据OK
***********************************************************************/
void Test_mode(void)
{
	static uint	testcl,testch;
	static bit keyf;
	/******************************************************************/
	if(1)
	{
		testcl = 0;
		if(++testch >= 20)
		{
			testch = 0;
			keyf = 0;
		}
	}
	else
	{
		testch = 0;
		if(++testcl >= 800)					//2.5ms主循环则是2s
		{
			testcl = 0;
			if(!keyf)
			{
				keyf = 1;
				if(0 == Wee_cm_clr())
				{
					errff = 1;
				}
			}
		}
	}
}
/***********************************************************************
子函数功能：调用追频
入口参数：
返回数据：
备注：
***********************************************************************/
void	Pwm_Test(void)
{
	uchar	templ;
	templ = Test_Pwm(CURSETC);
	
	if(0x55 == templ)
		errff = 1;
	else if(0xff == templ)
		errff = 1;
}

/***********************************************************************
函数功能：工作处理
入口参数：
返回数据：
备注：
***********************************************************************/
void	Set_Work(void)
{
	if((errf) || (errff))
	{
		onoff = 0;
	}
}

/***********************************************************************
函数功能：中断入口函数
***********************************************************************/
void interrupt time0(void)
{
	if(TMR2IF)
	{
		TMR2IF = 0;
		tcount ++;
		if(onoff)
		{
			Set_Pwm_Onoff(48);
		}
		else
		{
			Set_Pwm_Onoff(0);
		}
	}
	else
	{
		PIR1 = 0;
		PIR2 = 0;
	}
}
/***********************************************************************
main主函数
***********************************************************************/
void main(void)
{

	/******************************************************************/
	asm("clrwdt");
	Init_ic();
	Delay_nms(200);													//上电延时200ms
	Init_ram();	
														//上电给初值
	/*if(0 == Wee_cm_clr())//测试模式清EE数据
	{
		errff = 1;
	}*/
	while(1)
	{
		if(tcount >= 40)
		{
			tcount = 0;	    			//主程序循环5ms
			Sys_set();
			Set_CM_water();
			#if (WHQ_SENDER_ENABLE == 1 || WHQ_SENDER_ENABLE == 2)//调试宏定义是否为1
				WHQ_SenderLoop();//雾化参数发码子程序
			#endif
		
			Set_Work();
			Pwm_Test();
		}
	}
}
/**********************************************************************/



