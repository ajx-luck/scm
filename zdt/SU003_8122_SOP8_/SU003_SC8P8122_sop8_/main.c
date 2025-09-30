#include <sc.h>
#include "Touch_Kscan_Library.h"



#define		u8t		unsigned char
#define		u16t	unsigned int
volatile unsigned char MainTime;
volatile bit	B_MainLoop,B_OnOff;
u8t	workStep = 0;
u8t	sleepTime = 0;
u8t	closeTime = 0;
u8t	lvdTime = 0;

void pwm0Init();
void pwm2Init();
void pwm02Init();
void pwm0Stop();
void pwm2Stop();
void pwm02Stop();

//系统初始化
void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;				//禁止中断
	OSCCON = 0X72;			//配置振荡为16M
	OPTION_REG = 0;
	
	
	//延时等待电源电压稳定
	//DelayXms(200);
	TRISB = 0x08;
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
		if (KeyFlag[0] != KeyOldFlag) 
		{
			//确定状态改变的按键
			KeyOldFlag ^= KeyFlag[0];
			if ((KeyOldFlag & 0x1) && (KeyFlag[0] & 0x1)) 
			{
				//KEY1被按下
				if(++workStep > 3)
				{
					workStep = 0;
				}
				if(workStep == 0)
				{
					pwm02Stop();
				}
				else if(workStep == 1)
				{
					pwm2Init();
					pwm0Stop();
				}
				else if(workStep == 2)
				{
					pwm0Init();
					pwm2Stop();
				}
				else if(workStep == 3)
				{
					pwm02Init();
				}
	
			}
			
			KeyOldFlag = KeyFlag[0];
		}
	} 
	else 
	{
		KeyOldFlag = 0;
	}
}

void pwm2Init()
{
		
		TRISB |= 0x04;
		PWMCON1 = 0B00000000;	//PWM选择D组，死区2禁止，死区1使能，死区时钟源为Fosc/4
		PWMTH = 0X00;			//周期选择为0FF，则周期为（255+1）*1/8M，周期的时钟分频在PWMCON0选择
		PWMT4L = 100;
		
		//PWMD23H = 0;			//配置PWM1,PWM2的占空比，该值不能超过周期，否者为100%输出
		PWMD4L = 80;			//互补模式，PWM1的占空比与PWM0互补，和设置值无关
		//PWM23DT = 0X00;			//死区设为2uS，计算为（3+1）*1/8M*4

		PWMCON0 = 0X70;			//打开PWM3 分频比为8
		PWMCON2 =0X00;			//PWM4输出反向
		TRISB &= 0xFB;

}

void pwm2Stop()
{
	PWMCON0 &= 0XEF;
	RB2 = 0;

}

void pwm0Init()
{
		TRISB |= 0x01;
		PWMCON1 = 0B00000000;	//PWM选择D组，死区2禁止，死区1使能，死区时钟源为Fosc/4
		PWMTH = 0X00;			//周期选择为0FF，则周期为（255+1）*1/8M，周期的时钟分频在PWMCON0选择
		PWMTL = 100;			//PWM 周期=[PWMT+1]*Tosc*(CLKDIV 分频值)
		
		
		PWMD01H = 0;			//配置PWM1,PWM2的占空比，该值不能超过周期，否者为100%输出
		PWMD0L = 80;			//互补模式，PWM1的占空比与PWM0互补，和设置值无关
		PWM01DT = 0X00;			//死区设为2uS，计算为（3+1）*1/8M*4

		PWMCON0 = 0X61;			//打开PWM3 分频比为8
		PWMCON2 =0X00;			//PWM4输出反向
		TRISB &= 0xFE;

}

void pwm0Stop()
{
	PWMCON0 &= 0XFE;
	RB0 = 0;

}

void pwm02Init()
{
		TRISB |= 0x05;
		PWMCON1 = 0B00000000;	//PWM选择D组，死区2禁止，死区1使能，死区时钟源为Fosc/4
		PWMTH = 0X00;			//周期选择为0FF，则周期为（255+1）*1/8M，周期的时钟分频在PWMCON0选择
		PWMTL = 100;			//PWM 周期=[PWMT+1]*Tosc*(CLKDIV 分频值)
		PWMT4L = 100;
		
		//PWMD23H = 0;			//配置PWM1,PWM2的占空比，该值不能超过周期，否者为100%输出
		PWMD4L = 94;			//互补模式，PWM1的占空比与PWM0互补，和设置值无关
		//PWM23DT = 0X00;			//死区设为2uS，计算为（3+1）*1/8M*4
		
		PWMD01H = 0;			//配置PWM1,PWM2的占空比，该值不能超过周期，否者为100%输出
		PWMD0L = 94;			//互补模式，PWM1的占空比与PWM0互补，和设置值无关
		PWM01DT = 0X00;			//死区设为2uS，计算为（3+1）*1/8M*4

		PWMCON0 = 0X71;			//打开PWM3 分频比为8
		PWMCON2 =0X00;			//PWM4输出反向
		TRISB &= 0xFA;

}

void pwm02Stop()
{
	PWMCON0 &= 0XEE;
	PORTB &= 0xFA;

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

		TRISB = 0x08;
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

/***********************************************************
主循环
***********************************************************/
void main()
{
	Init_System();
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

			if(workStep == 0)
			{
				RB1 = 0;
				pwm02Stop();
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
				RB1 = 1;
				if(PORTB & 0x08)
				{
					closeTime = 0;
				}
				else
				{
					if(++closeTime > 50)
					{
						closeTime = 0;
						workStep = 0;
					}
				}
			}
			
		}
	}
}