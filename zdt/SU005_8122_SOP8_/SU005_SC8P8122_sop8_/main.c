#include <sc.h>
#include "Touch_Kscan_Library.h"



#define		u8t		unsigned char
#define		u16t	unsigned int
volatile unsigned char MainTime;
volatile bit	B_MainLoop,B_OnOff;
u8t	workStep = 0;
u8t	sleepTime = 0;
u8t	closeTime = 0;
u8t	ledDuty = 50;
u8t led1Duty = 50;
u8t led2Duty = 50;
u8t led3Duty = 50;
u16t	keyCount = 0;
u8t	modeStep = 0;
u16t count1s = 0;
u16t	count300s = 0;
u8t		lvdTime = 0;
u8t		doubleKeyTime = 0;

void pwm1Init();
void pwm3Init();
void pwm13Init();
void pwm1Stop();
void pwm3Stop();
void pwm13Stop();
void checkLvd();

//系统初始化
void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;				//禁止中断
	OSCCON = 0X72;			//配置振荡为8M
	OPTION_REG = 0;
	
	
	//延时等待电源电压稳定
	//DelayXms(200);
	TRISB = 0x00;
	PORTB = 0;	

	PIE1 = 2;
	PR2 = 250;				//16M下将TMR2设置为125us中断
	T2CON = 4;				//使能定时器2

	INTCON = 0XC0;			//使能中断
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
	if (4 != T2CON)
		T2CON = 4;
}


/***********************************************************
键处理函数
***********************************************************/
void KeyServer() 
{
	static unsigned char KeyOldFlag = 0;
	if (KeyFlag[0]) 
	{
		if ((KeyFlag[0] & 0x1)) 
		{
			keyCount++;
			//KEY1被按下
			if(keyCount >= 250 && keyCount % 10 == 0 && workStep > 0)
			{
				if(modeStep == 0 && ledDuty < 90)
				{
					ledDuty++;
				}
				if(modeStep == 1 && ledDuty > 10)
				{
					ledDuty--;
				}
				PWMD23H = 0;			
				PWMD3L = ledDuty;	
				PWMD01H = 0;			
				PWMD1L = ledDuty;			
			}
			B_OnOff = !B_OnOff;
		}
	} 
	else 
	{
		KeyOldFlag = 0;
		if(keyCount > 0 && keyCount < 250)
		{
			if(doubleKeyTime > 0)
			{
				if(count300s > 0)
				{
					count300s = 0;
				}
				else
				{
					count300s = 200;
				}
				doubleKeyTime = 0;
			}
			else
			{
				doubleKeyTime = 250;
			}
			
		
		}
		if(keyCount > 250)
		{
			if(workStep > 0)
			{
				if(modeStep > 0)
				{
					modeStep = 0;
				}
				else
				{
					modeStep = 1;
				}
			}
		}
		keyCount = 0;
	}
}

void pwm3Init()
{
		
		TRISB |= 0x10;
		PWMCON1 = 0B00000000;	//PWM选择D组，死区2禁止，死区1使能，死区时钟源为Fosc/4
		PWMTH = 0X00;			//周期选择为0FF，则周期为（255+1）*1/8M，周期的时钟分频在PWMCON0选择
		//PWMT4L = 100;
		PWMTL = 100;
		PWMD23H = 0;			//配置PWM1,PWM2的占空比，该值不能超过周期，否者为100%输出
		PWMD3L = ledDuty;			//互补模式，PWM1的占空比与PWM0互补，和设置值无关
		PWM23DT = 0X00;			//死区设为2uS，计算为（3+1）*1/8M*4

		PWMCON0 = 0X68;			//打开PWM3 分频比为8
		PWMCON2 =0X00;			//PWM4输出反向
		TRISB &= 0xEF;

}

void pwm3Stop()
{
	PWMCON0 &= 0XF7;
	RB4 = 0;


}

void pwm1Init()
{
		TRISB |= 0x02;
		PWMCON1 = 0B00000000;	//PWM选择D组，死区2禁止，死区1使能，死区时钟源为Fosc/4
		PWMTH = 0X00;			//周期选择为0FF，则周期为（255+1）*1/8M，周期的时钟分频在PWMCON0选择
		PWMTL = 100;			//PWM 周期=[PWMT+1]*Tosc*(CLKDIV 分频值)
		
		
		PWMD01H = 0;			//配置PWM1,PWM2的占空比，该值不能超过周期，否者为100%输出
		PWMD1L = ledDuty;			//互补模式，PWM1的占空比与PWM0互补，和设置值无关
		PWM01DT = 0X00;			//死区设为2uS，计算为（3+1）*1/8M*4

		PWMCON0 = 0X62;			//打开PWM3 分频比为8
		PWMCON2 =0X00;			//PWM4输出反向
		TRISB &= 0xFD;

}

void pwm1Stop()
{
	PWMCON0 &= 0XFD;
	RB1 = 0;

}

void pwm13Init()
{
		TRISB |= 0x05;
		PWMCON1 = 0B00000000;	//PWM选择D组，死区2禁止，死区1使能，死区时钟源为Fosc/4
		PWMTH = 0X00;			//周期选择为0FF，则周期为（255+1）*1/8M，周期的时钟分频在PWMCON0选择
		PWMTL = 100;			//PWM 周期=[PWMT+1]*Tosc*(CLKDIV 分频值)
		//PWMT4L = 100;
		
		PWMD23H = 0;			//配置PWM1,PWM2的占空比，该值不能超过周期，否者为100%输出
		PWMD3L = ledDuty;			//互补模式，PWM1的占空比与PWM0互补，和设置值无关
		PWM23DT = 0X00;			//死区设为2uS，计算为（3+1）*1/8M*4
		
		PWMD01H = 0;			//配置PWM1,PWM2的占空比，该值不能超过周期，否者为100%输出
		PWMD1L = ledDuty;			//互补模式，PWM1的占空比与PWM0互补，和设置值无关
		PWM01DT = 0X00;			//死区设为2uS，计算为（3+1）*1/8M*4

		PWMCON0 = 0X6A;			//打开PWM3 分频比为8
		PWMCON2 =0X00;			//PWM4输出反向
		TRISB &= 0xFA;

}

void pwm13Stop()
{
	PWMCON0 &= 0XF5;
	PORTB &= 0xED;

}

void checkLvd()
{
	CMPCON1 = 0x28;
	CMPCON0 = 0xA8;
	
}


/***********************************************************
中断服务函数
***********************************************************/
void interrupt Isr_Timer()
{
	if(TMR2IF)				//若只使能了一个中断源,可以略去判断
	{
		TMR2IF = 0;
		if(++MainTime >= 32)	//需根据你选择的触摸路数和触摸电容选择扫描一次按键的时间
		{						//可根据测量CAP口的电容充电时间判断扫描一次需要的时间
			MainTime = 0;
			B_MainLoop = 1;
		}
	}
	else
	{
		PIR1 = 0;
	}
	
}

void WorkSleep()
{
#if (0 != C_KEY_WAKEUP)
	static unsigned char time;
	
	//if(B_OnOff)time = 0;
	
	if(++time >= 125)
	{
		time = 0;
		INTCON = 0;			//;关断中断使能；
		PIE1 = 0;
		PIE2 = 0;
		PIR1 = 0;
		PIR2 = 0;
		T2CON = 0;
	
		//进入休眠前,必须固定口线电平,这儿全部输出低电平,并关闭所有上拉电阻

		TRISB = 0x00;
		PORTB = 0;
		CMPCON1 = 0x00;
		CMPCON0 = 0x00;

/****如需要PB口中断唤醒，使能下列程序并按需修改****
			TRISB0 =1;	//输入
			WPUB0 = 1;	//上拉			
			RBIF = 0;	//清标志
			RBIE = 1;	//允许PB口电平变化中断
			
			PORTB;		//读一次PB口			
************************************/	

		//进入休眠模式,触摸允许唤醒的按键后恢复正常工作
		SystemEnterSleep();
		if(RBIF) 
		{
			RBIF = 0;
			PORTB;
		}
		//休眠被唤醒,重新配置中断等SFR,使系统进入正常工作
		Refurbish_Sfr();
		checkLvd();
	}
#endif
}

void keyCtr()
{
	if(doubleKeyTime > 0)
	{
		if(--doubleKeyTime == 0)
		{
			if(++workStep > 3)
			{
				workStep = 0;
			}
			if(workStep == 1)
			{
				ledDuty = led1Duty;
			}
			else if(workStep == 2)
			{
				ledDuty = led2Duty;
			}
			else if(workStep == 3)
			{
				ledDuty = led3Duty;
			}
		}
	}
}

void workCtr()
{
	if(++count1s >= 500)
	{
		count1s = 0;
		if(count300s > 0)
		{
			count300s--;
		}
	}
	if(count300s > 0)
	{
		RB2 = 1;
	}
	else
	{
		RB2 = 0;
	}
	
	if(workStep == 0)
	{
		pwm13Stop();
	}
	else if(workStep == 1)
	{
		pwm1Init();
		pwm3Stop();
		led1Duty = ledDuty;
	}
	else if(workStep == 2)
	{
		pwm3Init();
		pwm1Stop();
		led2Duty = ledDuty;
	}
	else if(workStep == 3)
	{
		pwm13Init();
		led3Duty = ledDuty;
		//count300s = 600;
	}
}

/***********************************************************
主循环
***********************************************************/
void main()
{
	Init_System();
	ledDuty = 50;
	checkLvd();
	while(1)
	{
		if(B_MainLoop)
		{
			B_MainLoop = 0;
			CLRWDT();
			
			CheckTouchKey();
			
			Refurbish_Sfr();
			KeyServer();
			keyCtr();
			workCtr();
			if(workStep == 0 && keyCount == 0 && count300s == 0 && doubleKeyTime == 0)
			{
				
				pwm13Stop();
				WorkSleep();		//如不需省电模式，可屏蔽这个子函数
			}
			else
			{
				if(CMPCON0 & 0x02)
				{
					lvdTime = 0;
				}
				else
				{
					if(++lvdTime > 200)
					{
						lvdTime = 0;
						workStep = 0;
					}
				}
			}
			
		}
	}
}