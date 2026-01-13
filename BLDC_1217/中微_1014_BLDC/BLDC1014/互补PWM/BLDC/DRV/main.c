#include "config.h"

bit SysPowerOutFlags = 0;					//1 = 开机   0 = 关机
bit SysOnceFlags = 0;
bit FRFlags = 0;
bit FRFlagslast = 0;
bit F_HFlags = 0;
bit F_V_ONoffFlags = 0;

bit lastFRFlags = 0;
bit AutoCloseFlags = 0;
xdata u8 Sys1ms = 0;
xdata u8 Sys200ms = 0;
xdata u16 sys5s = 0;
xdata u16 Sys10s = 0;
xdata u16 Auto1ms = 0;
xdata u8  Auto100ms = 0;
xdata u8  Auto1min = 0;

//void closeauto()				//自动关机
//{
//	if(Auto1ms >= 60000)
//	{
//		Auto1ms = 0;
//		Auto1min++;
//	}
//	if(Auto1min >= 10)  //自动关机
//	{
//		Auto1min = 10;
//		BUZZERGO;
//		if(Auto100ms < 200)
//			Auto100ms++;
//		if(Auto100ms == 100)
//			AutoCloseFlags = 1;
//	}
//	else
//	{
//		Auto100ms = 0;
//		AutoCloseFlags = 0;
//	}
//}
u16 iii=0;
void main()
{
	Sysinit();
//	POWEROFF;
//	flash_read();
	Auto1ms = 0;
	Sys1ms = 0;
	Sys200ms = 0;
	EA = 1;
	//printf("CMS8S6990 Test........\n\r");//使用printf()函数时不建议开启串口中断功能
	//	LED
//	LED = 1;
	while(1)
	{ 
		clwdt();
		motor_run();
//        Motor_RealPwm=80;
        
//		if(Sys200ms < 200)
//		adc(); 
//		if(AutoCloseFlags)
//		{
//			AutoCloseFlags = 0;
//			flash_write();
//			SysPowerOutFlags = 0;
//		}
//		if(SysOnceFlags)
//		{
//			if(Motor_Mode == Motor_Mode_Stop)
//			{
//				SysOnceFlags = 0;
//				flash_write();
//			}
//		}
		if(SysPowerOutFlags)
		{
//			POWERON;
		}
		else 
		{
//			POWEROFF;
		}
		if(Sys1ms)
		{
//            if(iii++>=10)
//            {
//                iii=0;
//                motor_steps();
//            }
			Sys1ms = 0; 
			adc();
			vsp();
//		bat();
//			button();
//			buzzer();
//		  uart0Tx();
//		closeauto();
		}
	}
}

void isr_time1()	interrupt 3
{
	TF1 = 0;
	TH1	=	0xF0;					//1000*4    *1/4
	TL1 = 0x60;					//1ms定时
	
	Sys1ms++;
	Sys200ms++;
	Auto1ms++;
//	if(Bat_LevelLowFlags)
//	{
//		Sys10s++;
//		if(Sys10s > 10000)
//		{
//			Sys10s = 0;
//			
//			if(SysPowerOutFlags)
//				SysPowerOutFlags = 0;
//		}
//	}
//	else
//		Sys10s = 0; 
	Motor_RestartTime1ms++;
	if(Motor_RestartFlags)
	{
		if(Motor_RestartTime < 10000)
			Motor_RestartTime++;
	}
	
	switch(Motor_Mode)
	{
		case Motor_Mode_KeepON : Motor_KeepOnCheckTime++;break;
		case Motor_Mode_Start  : Motor_StartForceTime++;break;
		case Motor_Mode_Run    : Motor_PidTime++;
														 Motor_SpeedValueTargetTime++;
														 Motor_SpeedValueNowTime++;
														 Auto1ms = 0;
														 Auto1min = 0;
														 break;
		case Motor_Mode_Brake  : if(Motor_BrakeTime < 5000) 
															Motor_BrakeTime++;
														 break;
	}
}