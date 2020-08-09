#include <sc.h>
#include "pwm.h"
#include "Touch_Kscan_Library.h"

volatile unsigned char MainTime;
volatile unsigned char pwmTime;
volatile unsigned char irStep = 0; //0为未遮挡 1遮挡  2消抖
unsigned char	revCount = 0;//收到的波形计数
unsigned char	revZeroCount = 0;//未收到的波形计数
unsigned char	checkCount = 0;	//检测次数
unsigned char	pwm0Step = 1;	//	pwm0档位
unsigned char	pwm1Step = 1;	//	pwm1档位
unsigned int 	timeCount = 0;

volatile bit	sendFlag;	//发射标记
volatile bit	B_MainLoop;
volatile bit	sendStartFlag;	//发射开始标记
volatile bit	doublePressFlag;	//同时按下标记
volatile bit	ONFlag;	//开关标记，1为打开
volatile bit	pwmFlag;	//PWM开关标记，1为打开
volatile bit	keyLockFlag;	//触摸长按锁定
volatile bit	doubleTouchFlag;	//同时触摸标记位
//系统初始化
void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;				//禁止中断
	OSCCON = 0X71;			//配置振荡为8M
	OPTION_REG = 0;
	
	//延时等待电源电压稳定
	//DelayXms(200);
	WPUB = 0x00;
	WPDB = 0x00;
	WPUA = 0x00;
	//PIE2 = 0;
	PIE1 = 2;
	PR2 = 250;				//8M下将TMR2设置为125us中断
	T2CON = 4;				//使能定时器2
	TRISA = 0x00;
	TRISB = 0x07;			//PB2为红外接收口
	PORTB = 0x00;
	PORTA = 0x00;
	INTCON = 0XC0;			//使能中断
}


/**********************************************************
刷新特殊功能寄存器
**********************************************************/
void Refurbish_Sfr()
{
/*	//均为数字口
	ANSEL = 0;
	ANSELH = 0;
	
	TRISA = 0;
	TRISB = 0;
	TRISC = 0;
	TRISE = 9;
	
	LEDCON0 = 0;
	LEDCON1 = 0;
	SEGEN0 = 0;
	SEGEN1 = 0;
	SEGEN2 = 0;
	COMEN = 0;
	
	SSPCON = 0;
//	SSPCON2 = 0;
	CCP1CON = 0;
	CCP2CON = 0;
//	RCSTA = 0;
//	RCREG = 0;
//	TXSTA = 0;
	IOCB = 0;
	PSTRCON = 0;
	CM1CON0 = 0;
	CM2CON0 = 0;
	CM2CON1 = 0;
	SRCON = 0;
//	BAUDCTL = 0;
//	PWMCON0 = 0;
//	PWMCON1 = 0;
	T1CON = 0;
	EECON1 = 0;
	PIE2 = 0;
*/	
	OPTION_REG = 0;
	
	
	//刷新中断相关控制寄存器
	PIE1 = 2;
	PR2 = 250;
	INTCON = 0XC0;
	if(4 != T2CON)
		T2CON = 4;
}
//按键1处理逻辑
void procKey1()
{
	if(ONFlag == 0)
		return;
	pwmFlag = 1;
	if(++pwm0Step > 5)
		pwm0Step = 1;
	switch(pwm0Step)
	{
		case 1:
		mode1();
		break;
		case 2:
		mode2();
		break;
		case 3:
		mode3();
		break;
		case 4:
		mode4();
		break;
		case 5:
		mode5();
		break;

	}
}

//按键2处理逻辑
void procKey2()
{
	if(ONFlag == 0)
		return;
	pwmFlag = 1;
	if(++pwm1Step > 5)
		pwm1Step = 1;
	switch(pwm1Step)
	{
		case 1:
		modea();
		break;
		case 2:
		modeb();
		break;
		case 3:
		modec();
		break;
		case 4:
		moded();
		break;
		case 5:
		modee();
		break;
	}
}


void startPWM()
{	
	--pwm0Step;
	--pwm1Step;
	initPWM();
	procKey1();
	procKey2();
}



/***********************************************************
键处理函数
***********************************************************/
void KeyServer()
{
	static unsigned int KeyOldFlag = 0;
	unsigned int i = (unsigned int)((KeyFlag[1]<<8) | KeyFlag[0]);
	if(i)
	{
	
		if(i != KeyOldFlag)
		{
			if(keyLockFlag)
			{
				doubleTouchFlag = 1;
				return;
			}
			KeyOldFlag = i;
			switch(i)
			{
				case 1:
				procKey1();
				break;
				case 2:
				procKey2();
				break;
				case 3:
				doublePressFlag = 1;
				break;
				case 4:
				procKey1();
				break;
				case 8:
				procKey2();
				break;
				default:
				break;
			}
		}
		keyLockFlag = 1;	//锁定按键
	}
	else
	{
		KeyOldFlag = 0;
		keyLockFlag = 0;
		if(doubleTouchFlag)
		{
			//同时按下并松开后
			ONFlag = !ONFlag;
		}
		doubleTouchFlag = 0;
	}
}
//检测红外遮挡
void checkIRKey()
{
	if(getbit(PORTB, 2))
	{
		revCount++;		//检测到遮挡了
	}
	
	if(checkCount > 10 && irStep)
	{
		sendFlag = 0;
	}
	else
	{
		sendFlag = 1;	//未检测到遮挡
	}
	
	if(++checkCount >= 20)
	{
		if(revCount > 2)
		{
			if(irStep == 0)
			{
				irStep = 1;		//检测到遮挡了
				if(ONFlag == 1)
				{
					ONFlag = 0;			
				}
				else
				{
					ONFlag = 1;
				}
			}
			revZeroCount = 0;		//重置
		}
		else
		{
			if(++revZeroCount > 1)
			{
				revZeroCount = 1;
				irStep = 0;			//移开了
			}
		}

		
		sendFlag = 1;		//重置检测条件
		checkCount = 0;
		revCount = 0;
	}
		
}


/***********************************************************
中断服务函数
***********************************************************/
void interrupt Isr_Timer()
{
	if(TMR2IF)				//若只使能了一个中断源,可以略去判断
	{
		TMR2IF = 0;
		
		if(++MainTime >= 32)
		{
			MainTime = 0;
			B_MainLoop = 1;
		}
		//模拟pwm输出
		if(pwmTime < 12 && sendFlag)
			resetbit(PORTA, 3);
		else
			setbit(PORTA, 3);
		if(++pwmTime >= 44)
		{
			pwmTime = 0;
		}
	}
	else
	{
		PIR1 = 0;
	//	PIR2 = 0;
	}
}

/***********************************************************
主循环
***********************************************************/
void main()
{
	PORTB = 0x00;
	PORTA = 0x00;
	Init_System();
	sendFlag = 1;
	//initPWM();
	while(1)
	{
		CLRWDT();
		if(B_MainLoop)
		{
			B_MainLoop = 0;
			//sRefurbish_Sfr();
			CheckTouchKey();
			KeyServer();
			checkIRKey();
			if(ONFlag)
			{
				startPWM();
			}
			else
			{
				PWMCON0 = 0;
				PORTB &= 0x7F;
				PORTA &= 0xDF;
			}
			/**
			if(ONFlag && pwmFlag == 0)
			{
				startPWM();
			}
			else if(ONFlag == 0 && pwmFlag == 1)
			{
				PWMCON0 = 0;
				pwmFlag = 0;
				PORTB &= 0x7F;
				PORTA &= 0xDF;
			}
			
			*/
		}
	}
}