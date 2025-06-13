/**********************************************************
AD检测范例程序
**********************************************************/
#pragma warning disable 752
#pragma warning disable 373			//屏蔽掉编译的1个警告
#include <sc.h>

#ifndef _XTAL_FREQ
#define _XTAL_FREQ 16000000			//16MHz,使用内置延时函数必须定义主频，
									//如用FCPU_DIV选择2T，则定时赋值减半
#endif
#define		u8t		unsigned char
#define		u16t	unsigned int
#define     POWER_RATIO  	(4096UL*1.2*1000)



#define		A_LED3						 RB5
#define		A_LED2						 RB1
#define		A_LED1						 RB0



#define		A_LED3_OUT					 TRISB	&= 0xDF
#define		A_LED2_OUT					 TRISB	&= 0xFD
#define		A_LED1_OUT					 TRISB	&= 0xFE


volatile unsigned int adresult;
volatile unsigned int result;
volatile unsigned char test_adc;
volatile unsigned int power_ad;
u8t	intCount;
u8t	count1s;
u8t	IntFlag;
u8t	chrgFlag;
u8t	chrgFullFlag;
u8t	intCount10;
u16t	outADValue;
u16t	batADValue;
u8t		countHalfFull;
u8t		protectFlag;
u8t		workOverOutTime;
u8t		workStep = 0;
u8t		ledCnt;
u8t		ledStep;
u8t		keyCount;
u8t		keyCount2;
u8t		keyCount3;
u8t		longPressFlag;
u8t		longPressFlag2;
u8t		maxDuty;
u8t		overCount;
u8t		addPowerCount;
u8t		tempDuty;
u8t		startTime;
u8t		firstTime;
u8t		overChrgTime;
u8t		pwStep;
u8t		prePwStep;
u16t	count50s;
u8t		reChrgCount;
u8t		showBatTime;
u8t		chrgMode = 0;
u8t		chrgMaxAD = 0;
u8t		lockCount = 0;
u16t	fullCount = 0;
u8t addTime;
u8t subTime;
u8t chrgWaitTime;
u8t	chrgMaxDuty = 0;
u8t	ledCntTime;
u16t	count5s = 0;
u16t		overWorkTime;
u8t		preLedStep;
u16t	count8s;
u16t	count900s;
u8t		lowBatFlag = 0;
u8t		sleepTime;
u8t		startChrgTime = 0;
u8t shiweiNum = 0;	//十位
u8t	geweiNum = 0;	//个位
u8t	jrStep = 0;
u8t	preWorkStep = 0;
u8t	prejrStep = 0;
u8t	chrgPwmFlag = 0;
u8t	pwmD3Flag = 0;
u8t	pwmD2Flag = 0;
u8t	powerStep = 0;
u8t	zfStep = 0;
u8t	keyNum = 0;
u8t	zdMotorFlag = 0;
u8t	count40s = 0;

unsigned char ADC_Sample(unsigned char adch, unsigned char adldo);
void DelayXms(unsigned char x);
unsigned char ADC_Result(unsigned char adch);
void Init_System();
void AD_Init();
void Sleep_Mode();
void pwmD2Init();
void pwmD2Stop();
void pwmD3Init();
void pwmD3Stop();
void chrgPwmInit();
void chrgPwmStop();
void chrgCtr();
void checkOutA();
void checkBatAD();
void keyCtr();
void workCtr();
void ledCtr();
char keyRead(char keyStatus);
void checkKeyAD();


//#define _DEBUG			//调试程序用


/***********************************************************
中断服务函数
函数名称：Isr_Timer()
函数功能：中断处理函数
入口参数：
出口参数：
备    注：125US定时2中断
			所有中断都是在这个函数里面处理
***********************************************************/
void interrupt Isr_Timer() 
{
	if(TMR2IF) 
	{			//若只使能了一个中断源,可以略去判断
		TMR2IF = 0;
		if(++intCount >= 160)
		{
			intCount = 0;
			IntFlag = 1;
			if(++count1s >= 100)
			{
				count1s = 0;
				count40s++;
			}
		}
		intCount10++;
	}

}


/***********************************************************
main主函数
***********************************************************/
void main() 
{
	Init_System();
	AD_Init();
	firstTime = 100;
	while (1) 
	{
		asm("clrwdt");
		if(intCount10 > 10)
		{
			intCount10 = 0;
			checkOutA();
		}
		if(!IntFlag)
    		continue;			//10ms执行一次
    	IntFlag = 0;
		chrgCtr();
		checkBatAD();
		if(chrgFlag == 0 && lowBatFlag == 0 && firstTime == 0)
		{
			keyCtr();
		}
		workCtr();
		if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && showBatTime == 0 && overWorkTime == 0)
		{
			shiweiNum = geweiNum = 0;
			if(++sleepTime >= 200)
			{
				sleepTime = 0;
				Sleep_Mode();
			}
		}
		else
		{
			sleepTime = 0;
		}
	}
}


void chrgCtr()
{
	if(PORTB & 0x04)
	{
		if(chrgFlag == 0)
		{
			chrgFlag = 1;
			chrgMaxDuty = 0;
			chrgPwmStop();
		}
		pwmD2Stop();
		pwmD3Stop();
		powerStep = 0;
		workStep = 0;
		lowBatFlag = 0;
		if(prePwStep < pwStep)
		{
			if(++count50s > 3000)
			{
				count50s = 0;
				prePwStep++;
			}
		}
		else
		{
			count50s = 0;
		}
		if(protectFlag)
		{
			chrgPwmStop();
			if(prePwStep < 99 && protectFlag == 1)
			{
				if(++reChrgCount > 250)
				{
					reChrgCount = 0;
					chrgFullFlag = 0;
					protectFlag = 0;
				}
			}
			else
			{
				reChrgCount = 0;
			}
			return;
		}
		if(batADValue < 1118)
		{
			chrgMode = 0;
			chrgMaxAD = 15;
		}
		else if(batADValue < 1530)
		{
			chrgMode = 1;
			chrgMaxAD = 50;
			lockCount = 0;
		}
		else if(count1s == 0)
		{
			if(++lockCount > 200)
			{
				lockCount = 0;
				chrgMode = 2;
			}
			
			chrgMaxAD = 50;
		}
		if(chrgMode == 2 && outADValue < 8)
		{
			if(++fullCount >= 200)
			{
				fullCount = 0;
				chrgFullFlag = 1;
			}
		}
		else
		{
			fullCount = 0;
		}
		if(chrgFullFlag)
		{
			PORTB &= 0xFD;
			PORTB |= 0x01;
			chrgPwmStop();
		}
		else
		{
				if(prePwStep >= 99)
				{
					PORTB &= 0xFD;
					PORTB |= 0x01;
				}
				else
				{
					PORTB &= 0xFE;
					PORTB |= 0x02;
				}
				if(batADValue > 1550 || outADValue > (chrgMaxAD + 2))
				{
					if(++subTime > chrgWaitTime)
					{
						if(chrgMaxDuty > 1)
						{
							chrgMaxDuty--;
						}
						subTime = 0;
						chrgWaitTime = 50;
					}
					addTime = 0;
				}
				else if(batADValue < 1550 && outADValue < (chrgMaxAD - 4))
				{
					if(++addTime > chrgWaitTime)
					{
						addTime = 0;
						if(chrgMaxDuty < 75)
						{
							chrgMaxDuty++;
						}
					}
					subTime = 0;
				}
	
				if(chrgPwmFlag == 0)
				{
					chrgPwmInit();
				}
				PWMD23H = 0X00;
				PWMD3L = chrgMaxDuty;
		}
	}
	else
	{
		startChrgTime = 0;
		chrgFlag = 0;
		chrgFullFlag = 0;
		protectFlag = 0;
		chrgMode = 0;
		chrgMaxAD = 0;
		chrgMaxDuty = 0;
		lockCount = 0;
		chrgWaitTime = 20;
		chrgPwmStop();
		if(prePwStep > 0 && prePwStep > pwStep)
		{
			if(++count50s > 3000)
			{
				count50s = 0;
				prePwStep--;
			}
		}
		else
		{
			count50s = 0;
		}
	}
}



char keyRead(char keyStatus)	
{ 
	if(keyStatus)
	{
		keyCount++;
		if(keyCount >= 100)
		{
			keyCount = 100;
			if(!longPressFlag)
			{
				longPressFlag = 1;
				return 2;
			}
		}
	}
	else
	{
		if(keyCount >= 100)
		{
			keyCount = 0;
			longPressFlag = 0;
			return	0;
		}
		else if(keyCount >= 6)
		{
			keyCount = 0;
			return	1;
		}
		keyCount = 0;
	}
	return 0;
}


char keyRead2(char keyStatus)	
{ 
	if(keyStatus)
	{
		keyCount2++;
		if(keyCount2 >= 100)
		{
			keyCount2 = 100;
		}
	}
	else
	{
		if(keyCount2 >= 5)
		{
			keyCount2 = 0;
			return	1;
		}
		keyCount2 = 0;
	}
	return 0;
}

char keyRead3(char keyStatus)	
{ 
	if(keyStatus)
	{
		checkKeyAD();
		keyCount3++;
		if(keyCount3 >= 100)
		{
			keyCount3 = 100;
		}
	}
	else
	{
	
		if(keyCount3 >= 5)
		{
			keyCount3 = 0;
			return	1;
		}
		keyCount3 = 0;
	}
	return 0;
}

void keyCtr()
{
	char kclick = keyRead(0x80 & (~PORTB));
	if(kclick == 2)
	{
		if(powerStep > 0)
		{
			powerStep = 0;
		}
		else
		{
			powerStep = 1;
			zfStep = 0;
			count40s = 0;
			workStep = 1;
			startTime = 50;
			showBatTime = 0;
			overWorkTime = 0;
		}
	}
	kclick = keyRead2(0x20 & (~PORTA));
	if(kclick == 1 && powerStep > 0)
	{
		startTime = 50;
		count40s = 0;
		if(++zfStep > 2)
		{
			zfStep = 0;
		}
	}
	kclick = keyRead3(0x10 & (~PORTA));
	if(kclick == 1 && powerStep > 0)
	{
		if(keyNum == 1)
		{
			if(zdMotorFlag > 0)
			{
				zdMotorFlag = 0;
			}
			else
			{
				zdMotorFlag = 1;
			}
		}
		else if(keyNum == 2)
		{
			if(++workStep > 2)
			{
				workStep = 1;
			}
		}
	}
}

void workCtr()
{
	if(firstTime > 0)
	{
		firstTime--;
		if(pwStep > prePwStep)
		{
			prePwStep = pwStep;
		}
	}
	if(startTime > 0)
	{
		startTime--;
	}
	if(powerStep > 0)
	{
		PORTB |= 0x41;
		PORTB &= 0xFD;
		if(zdMotorFlag)
		{
			PORTB |= 0x20;
		}
		else
		{
			PORTB &= 0xDF;
		}
	}
	else
	{
		zdMotorFlag = 0;
		PORTB &= 0x9F;
		if(chrgFlag == 0)
		{
			PORTB |= 0x03;
		}
	}
	if(powerStep > 0 && startTime == 0)
	{
		if(zfStep == 0)
		{
			if(count40s == 20 && count1s == 0)
			{
				startTime = 50;
			}
			if(count40s >= 40)
			{
				count40s = 0;
				startTime = 50;
			}
			if(count40s < 20)
			{
				if(pwmD2Flag == 0)
				{
					pwmD2Init();
				}
				PWMD23H = 0;
				PWMD2L = 55 + (workStep*15);
			}
			else
			{
				if(pwmD3Flag == 0)
				{
					pwmD3Init();
				}
				PWMD23H = 0;
				PWMD3L = 55 + (workStep*15);
			}
		
		}
		else if(zfStep == 2)
		{
			if(pwmD3Flag == 0)
			{
				pwmD3Init();
			}
			PWMD23H = 0;
			PWMD3L = 55 + (workStep*15);
		}
		else if(zfStep == 1)
		{
			if(pwmD2Flag == 0)
			{
				pwmD2Init();
			}
			PWMD23H = 0;
			PWMD2L = 55 + (workStep*15);
		}
	}
	else
	{
		pwmD3Stop();
		pwmD2Stop();
	}
	
}

void checkKeyAD()
{
	test_adc = ADC_Sample(4, 5);		//测试AN0口的AD值，参考电压2V
	if (0xA5 == test_adc)				//测试完成，如因其他原因导致AD转换没有完成，则不处理
	{
		if(adresult < 400)
		{
			keyNum = 1;
		}
		else
		{
			keyNum = 2;
		}
	}
	else
	{
		ADCON0 = 0;						//如果转换没有完成，需初始化ADCON0,1
		ADCON1 = 0;				
		__delay_us(100);				//延时100us(编译器内置函数)
	}

}


void checkOutA()
{
	test_adc = ADC_Sample(0, 5);		//测试AN0口的AD值，参考电压2V
	if (0xA5 == test_adc)				//测试完成，如因其他原因导致AD转换没有完成，则不处理
	{
		if(chrgFlag && adresult > 210)
		{
			if(++overChrgTime > 10)
			{
				overChrgTime = 0;
				protectFlag = 2;
			}
			
		}
		else
		{
			overChrgTime = 0;
		}
		outADValue = adresult;
		
	}
	else
	{
		ADCON0 = 0;						//如果转换没有完成，需初始化ADCON0,1
		ADCON1 = 0;				
		__delay_us(100);				//延时100us(编译器内置函数)
	}
}

void checkBatAD()
{
	test_adc = ADC_Sample(1, 5);		//测试AN2口的AD值，参考电压2V
	if (0xA5 == test_adc)				//测试完成，如因其他原因导致AD转换没有完成，则不处理
	{
		batADValue = adresult;
		if(batADValue < 1117)
        {
        	pwStep = 0;
			if(++count8s > 800)
			{
				count8s = 0;
				lowBatFlag = 1;
				prePwStep = 0;
				workStep = 0;
				powerStep = 0;
			}
        }
        else
        {
	        count8s = 0;
			if(batADValue >= 1340)
	    	{
	    		pwStep = ((batADValue - 1340) /2) + 13;
	    	}
	    	else
	    	{
	    		pwStep = (batADValue - 1117) / 16;
	    	}
	    	if(pwStep > 99)
	    	{
	    		pwStep = 99;
	    	}
    	}
		if(chrgFlag && batADValue > 1861)
        {
	        protectFlag = 1;
        }
	}
	else
	{
		ADCON0 = 0;						//如果转换没有完成，需初始化ADCON0,1
		ADCON1 = 0;				
		__delay_us(100);				//延时100us(编译器内置函数)
	}

	test_adc = ADC_Sample(2, 5);		//测试AN2口的AD值，参考电压2V
	if (0xA5 == test_adc)				//测试完成，如因其他原因导致AD转换没有完成，则不处理
	{
		if(chrgFlag && adresult > 100)
	    {
	    	//有电池
	    	if(adresult > 810 || (batADValue - adresult) > 810)
	    	{
	    		//有一节电池已经满了
	    		if(++countHalfFull > 250)
	    		{
	    			countHalfFull = 0;
					protectFlag = 2;
	    		}
	    	}
	    	else
	    	{
	    		countHalfFull = 0;
	    	}
	    }
	}
	else
	{
		ADCON0 = 0;						//如果转换没有完成，需初始化ADCON0,1
		ADCON1 = 0;				
		__delay_us(100);				//延时100us(编译器内置函数)
	}
	
}



/**********************************************************
函数名称：Init_System
函数功能：系统初始化
入口参数：无
出口参数：无
备    注：
**********************************************************/
void Init_System() 
{
	asm("nop");
	asm("clrwdt");
	OPTION_REG = 0;					//预分频给TMR0 ，Timer0使用内部时钟Focs/4，预分频比为1:2
	asm("clrwdt");
	OSCCON = 0X72;					//内部振荡器8M

	WPUA = 0x20;				//配置上拉，1为使能上拉
	WPDA = 0x00;					//RA1开下拉
	WPUB = 0x80;

	TRISA = 0x37;				//配置IO状态，0为输出，1为输入
	TRISB = 0x84;

	PORTA = 0X00;
	PORTB = 0X03;

//---------------------------------------
//125us中断初始化
	PR2 = 249;					//设定Timer初始值，定时周期是250*2/8M=62.5uS
	TMR2IF = 0;
	TMR2IE = 1;					//使能Timer2溢出中断

	T2CON = 0B00000100;			//开启Timer2,设置TMR2的分频比为1:1
	INTCON = 0XC0;				//开启总中断
}

/***********************************************************
中断服务函数
函数名称：AD_Init()
函数功能：AD初始化处理函数
入口参数：
出口参数：
备    注：第一次打开AD允许位ADON，需延时20uS以上才能进入AD采样
			如后继程序不关闭ADON，则不需要延时
***********************************************************/
void AD_Init() 
{
	/*********** ADCON0 ****************************
		Bit7~Bit6  ADCS<1:0>:  AD转换时钟选择位。
			00=  F HSI /16
			01=  F HSI /32
			10=  F HSI /64
			11=  F HSI /128
		Bit5~Bit2  CHS<3:0>:  模拟通道选择位。与ADCON1寄存器CHS4组合CHS<3:0>
			CHS<4:0>: 
			00000=  AN0
			00001=  AN1
			00010=  AN2
			00011=  AN3
			00100=  AN4
			00101=  AN5
			00110=  保留
			00111=  保留
			01000=  AN8
			… 
			01101=  AN13
			01110=  AN14
			01111=  AN15
			11111=  1.2V（固定参考电压）
			其他=  保留
		Bit1  GO/DONE: AD转换状态位。
			1=  AD转换正在进行。将该位置1启动AD转换。当AD转换完成以后，该位由硬件自动清零。
				当GO/DONE位从1变0或ADIF从0变1时，需至少等待两个TAD时间，才能再次启动AD转换。
			0=  AD转换完成/或不在进行中。
		Bit0  ADON:  ADC使能位。
			1=  使能ADC；
			0=  禁止ADC，不消耗工作电流。
	*********************************************/
	ADCON0 = 0X41;		//ADON开启，AD采样时间选为FSYS/16
	
	/*********** ADCON1 ****************************
		Bit7  ADFM:  AD转换结果格式选择位；
			1=  右对齐；
			0=  左对齐。
		Bit6  CHS4:  通道选择位
		Bit5~Bit3  未用 
		Bit2  LDO_EN:  内部参考电压使能位。
			1=  使能ADC内部LDO参考电压；
				当选择内部LDO作参考电压时，ADC最大有效精度为8位。
			0=  VDD作为ADC参考电压。
		Bit1~Bit0  LDO_SEL<1:0>:  参考电压选择位
			0X=  2.0V
			10=  2.4V
			11=  3.0V
	*********************************************/
	ADCON1 = 0;
	ANSEL0 = 0X07;
	ANSEL1 = 0x00;	
}


void chrgPwmInit()
{
		chrgPwmFlag = 1;
		PWMCON1 = 0B11000000;	//PWM选择A组，死区2禁止，死区1使能，死区时钟源为Fosc/4
		
		PWMTH = 0X00;			//周期选择为0FF，则周期为（255+1）*1/8M，周期的时钟分频在PWMCON0选择
		PWMTL = 100;			//PWM 周期=[PWMT+1]*Tosc*(CLKDIV 分频值)
		
	
		
		PWMD23H = 0;			//配置PWM1,PWM2的占空比，该值不能超过周期，否者为100%输出
		PWMD3L = 10;			//互补模式，PWM1的占空比与PWM0互补，和设置值无关
		PWM23DT = 0X00;			//死区设为2uS，计算为（3+1）*1/8M*4
		
		PWMCON0 = 0X08;			//打开PWM2 分频比为1
		PWMCON2 =0X00;			//PWM4输出反向
}

void chrgPwmStop()
{
	if(chrgPwmFlag)
	{
		chrgPwmFlag = 0;
		PWMCON0 &= 0xF7;	//关闭PWM2
		RA3 = 0;
	}
}


void pwmD2Init()
{
		pwmD2Flag = 1;
		PWMCON1 = 0B00000000;	//PWM选择D组，死区2禁止，死区1使能，死区时钟源为Fosc/4
		
		PWMTH = 0X00;			//周期选择为0FF，则周期为（255+1）*1/8M，周期的时钟分频在PWMCON0选择
		PWMTL = 100;			//PWM 周期=[PWMT+1]*Tosc*(CLKDIV 分频值)
		
	
		
		PWMD23H = 0;			//配置PWM1,PWM2的占空比，该值不能超过周期，否者为100%输出
		PWMD2L = 10;			//互补模式，PWM1的占空比与PWM0互补，和设置值无关
		PWM23DT = 0X00;			//死区设为2uS，计算为（3+1）*1/8M*4
		
		PWMCON0 = 0X64;			//打开PWM2 分频比为1
		PWMCON2 =0X00;			//PWM4输出反向
}

void pwmD2Stop()
{
	if(pwmD2Flag)
	{
		PWMCON0 &= 0xFB;	//关闭PWM2
		RB3 = 0;
	}
	pwmD2Flag = 0;
}

void pwmD3Init()
{
		pwmD3Flag = 1;
		PWMCON1 = 0B00000000;	//PWM选择A组，死区2禁止，死区1使能，死区时钟源为Fosc/4
		PWMTH = 0X00;			//周期选择为0FF，则周期为（255+1）*1/8M，周期的时钟分频在PWMCON0选择
		PWMTL = 100;			//PWM 周期=[PWMT+1]*Tosc*(CLKDIV 分频值)
		
		
		PWMD23H = 0;			//配置PWM1,PWM2的占空比，该值不能超过周期，否者为100%输出
		PWMD3L = 43;			//互补模式，PWM1的占空比与PWM0互补，和设置值无关
		PWM23DT = 0X00;			//死区设为2uS，计算为（3+1）*1/8M*4

		PWMCON0 = 0X68;			//打开PWM1 分频比为8
		PWMCON2 =0X00;			//PWM4输出反向
}

void pwmD3Stop()
{
	if(pwmD3Flag)
	{
		PWMCON0 &= 0XF7;
		RB4 = 0;
	}
	pwmD3Flag = 0;
}


/***********************************************
函数名称：Sleep_Mode
函数功能：进入休眠模式
入口参数：无
出口参数：无
备注：
************************************************/
void Sleep_Mode()
{
	INTCON = 0;		
	
	OPTION_REG = 0;



	TRISA = 0x37;				//配置IO状态，0为输出，1为输入
	TRISB = 0x84;

	PORTA = 0X00;
	PORTB = 0X03;

   			
   	ADCON0 = 0;					//关闭所有模块
	ADCON1 = 0;
	
	PWMCON0 = 0;
		
	OSCCON = 0X70;				//配置振荡为8M,关闭WDT，需注意芯片工程选项里WDT必须选为DISABLE,否则无法软件关掉WDT
	
	IOCA = 0x00;			//允许RA1的IO电平变化中断
	IOCB = 0x84;			//允许RB3的IO口电平变化中断
	
	RAIE = 1;					//允许PORTA的IO电平变化中断
	PEIE = 1;					//要用RORTA中断唤醒，则PEIE必须设为1
	RBIE = 1;					//允许PORTB电平变化中断
	GIE = 0;					//唤醒后执行SLEEP后程序;
	
	PIE1 &= 0X08;				//关闭不需要的中断
	PIR1 = 0;					//必须清不需要的中断标志位
	INTCON &= 0XC8;				//必须清不需要的中断标志位

	PORTA;						//读PORTA值并锁存,用电平变化中断必须执行这一步
	RAIF = 0;					//清PORTA中断标志位
	PORTB;						//读PORTB值并锁存	
	RBIF = 0;					//清PORTB中断标志位		
	asm("clrwdt");

	asm("sleep");				//进入休眠模式
	
	asm("nop");
	asm("clrwdt");
	asm("nop");
	asm("nop");
	asm("nop");
	asm("nop");
	asm("nop");
	if(RAIF)  RAIF = 0;			//清中断标志
	if(RBIF)  RBIF = 0;			//清中断标志
	if(TMR2IF) TMR2IF = 0;
	IOCA = 0B00000000;			//允许RA1的IO电平变化中断
	IOCB = 0B00000000;			//允许RB3的IO口电平变化中断
	Init_System();
	AD_Init();
}



/**********************************************************
函数名称：AD_Sample
函数功能：AD检测
入口参数：adch - 检测通道
出口参数：无
备    注：采样通道需自行设置为输入口
	      采样10次,取中间八次的平均值为采样结果存于adresult中

	      adch 为输入AD通道 0-15，31
             31  检测内部1.2V
	
 		  adldo =5,开启内部LDO 2V 作为ADC 参考
 		  adldo =6,开启内部LDO 2.4V 作为ADC 参考
		  adldo =7,开启内部LDO 3V 作为ADC 参考
 		  adldo =0,VDD 作为ADC 参考
 		  AD转换结果左对齐
 		  ADC参考电压从VDD切换到LDO时需要延时100us以上，才能进行AD转换
**********************************************************/
unsigned char ADC_Sample(unsigned char adch, unsigned char adldo) 
{
	volatile unsigned long adsum = 0;
	volatile unsigned int admin = 0, admax = 0;
	volatile unsigned int ad_temp = 0;

	if ((!LDO_EN) && (adldo & 0x04) ) 
	{
								//如果AD参考从VDD换到内部LDO，需要延时100US以上
		ADCON1 = adldo;			//左对齐,AD值取12位
		__delay_us(100);		//IDE内置延时函数，延时100us
	} 
	else
		ADCON1 = adldo;			//如果ADCON1.7(ADFM)=1为右对齐，,AD值取10位

	if(adch & 0x10) 
	{
		CHS4 = 1;
		adch &= 0x0f;
	}
	unsigned char i = 0;
	for (i = 0; i < 10; i++) 
	{
		ADCON0 = (unsigned char)(0X41 | (adch << 2));	//16分频，如果主频为16M，则必须选16分频或以上
		asm("nop");
		asm("nop");
		asm("nop");
		asm("nop");				//选择通道后需延时1uS以上
		GODONE = 1;				//开始转换

		unsigned char j = 0;
		while (GODONE) 
		{
			__delay_us(2);		//延时2us(编译器内置函数)

			if (0 == (--j))		//延时0.5ms仍没有AD转换结束，跳出程序
			return 0;
		}

		ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));	//计算12位AD值

		if (0 == admax) 
		{
			admax = ad_temp;
			admin = ad_temp;
		} 
		else if (ad_temp > admax)
			admax = ad_temp;				//AD采样最大值
		else if (ad_temp < admin)
			admin = ad_temp;				//AD采样最小值

		adsum += ad_temp;
	}
		adsum -= admax;
		if (adsum >= admin)
			adsum -= admin;
		else
			adsum = 0;

		adresult = adsum >> 3;		//8次平均值作为最终结果

		adsum = 0;
		admin = 0;
		admax = 0;
		return 0xA5;
		
}

