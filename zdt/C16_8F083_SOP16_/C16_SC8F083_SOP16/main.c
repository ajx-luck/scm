#include <sc.h>
#include "Touch_Kscan_Library.h"

#ifndef _XTAL_FREQ
#define _XTAL_FREQ 8000000			//8MHz,使用内置延时函数必须定义主频，
									//如用16M需改此参数为16000000
#endif
#define     POWER_RATIO  	(4096UL*1.2*1000)

#define		uchar		unsigned char
#define		u8t		unsigned char
#define		uint			unsigned int
#define		u16t			unsigned int
#define		ulong		unsigned long

volatile unsigned char MainTime;
volatile bit	B_MainLoop,B_OnOff;
u8t	count1s = 0;
u8t	workStep = 0;
u8t	wuhuaFlag = 0;
u16t		shanshuoTime = 0;
u16t		shanshuoTime2 = 0;
u16t		fanValue = 0;
u16t		wuhuaValue = 0;
u8t	fanDuty = 0;
u8t	count10s = 0;
u8t	fanOverTime = 0;
u8t	firstTime = 0;
u16t	checkTime = 0;
u16t	lowWaterTime = 0;
u8t		chrgFlag = 0;
u8t		chrgFullFlag = 0;
u8t		chrgFullTime = 0;
u8t		firstLock = 0;
u8t		lowBatLock = 0;
u8t		lowBatTime = 0;	
u8t		lowFanTime = 0;//风扇降低为1档的时间	

volatile unsigned int adresult;
volatile unsigned int result;
volatile unsigned char test_adc;
volatile unsigned int power_ad;
static unsigned int time;

void chrgCtr();
unsigned char ADC_Sample(unsigned char adch, unsigned char adldo);

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
	TRISA = 0x08;
	PORTA = 0;
	TRISB = 0x31;
	PORTB = 0;
	WPUB = 0x10;
	TRISC = 0;
	PORTC = 0;

	PIE1 = 2;
	PR2 = 250;				//8M下将TMR2设置为125us中断
	T2CON = 4;				//使能定时器2

	INTCON = 0XC0;			//使能中断
	ADCON0 = 0X41;
	ADON = 1;
	ADCON1 = 0x00;
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
			if ((KeyOldFlag & 0x1) && (KeyFlag[0] & 0x1) && firstLock == 0) 
			{
				//KEY1被按下
				if(lowBatLock == 1)
				{
					shanshuoTime = 450;
				}
				else if(++workStep > 2)
				{
					workStep = 0;
				}
				if(workStep == 2)
				{
					shanshuoTime = 450;
				}
				else
				{
					shanshuoTime = 0;
				}
			}
			if ((KeyOldFlag & 0x2) && (KeyFlag[0] & 0x2) && firstLock == 0) 
			{
				//KEY2被按下
				if(lowBatLock == 1)
				{
					shanshuoTime2 = 450;
				}
				else if(++wuhuaFlag > 2)
				{
					wuhuaFlag = 0;
				}
				if(wuhuaFlag == 2)
				{
					shanshuoTime2 = 450;
					count10s = 0;
				}
				else
				{
					shanshuoTime2 = 0;
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


/***********************************************************
中断服务函数
***********************************************************/
void interrupt Isr_Timer()
{
	if(TMR2IF)				//若只使能了一个中断源,可以略去判断
	{
		TMR2IF = 0;
		if(++MainTime >= 32)	//需根据你选择的触摸路数和触摸电容选择扫描一次按键的时间
		{						//一般103电容，8路触摸，8M主频检测时间约4ms，故扫描一次的时间可选5ms
			MainTime = 0;
			B_MainLoop = 1;
			if(++count1s >= 250)
			{
				count1s = 0;
			}
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
	
	if(B_OnOff)time = 0;
	
	if(++time >= 2000)
	{
		time = 0;
		INTCON = 0;			//;关断ADC模块及中断使能；
		PIE1 = 0;
		PIE2 = 0;
		PIR1 = 0;
		PIR2 = 0;
		T2CON = 0;
		ADCON1 = 0;

		//进入休眠前关掉所有功能模块,以降低休眠电流
		ADCON0 = 0;
	
		//进入休眠前,必须固定口线电平,这儿全部输出低电平,并关闭所有上拉电阻
		PORTA = 0x13;
		PORTB = 0x00;
		TRISC = 0;
		PORTC = 0;

		TRISB0 =1;//输入
		//WPUB7 = 1;//上拉			
		RBIF = 0;//清标志
		RBIE = 1; //允许PB口电平变化中断
		IOCB0= 1;//允许PB0电平变化中断
		PORTB;//读一次PB口	
/****如需要PA口中断唤醒，使能下列程序并按需修改****
			TRISA0 =1;	//输入
			WPUA0 = 1;	//上拉			
			RAIF = 0;	//清标志
			RAIE = 1;	//允许PA口电平变化中断
			IOCA0 = 1;	//允许PA0电平变化中断
			PEIE = 1;	//允许外设中断
			PORTA;		//读一次PA口			
************************************/	

		//进入休眠模式,触摸允许唤醒的按键后恢复正常工作
		SystemEnterSleep();
		if(RAIF) 
		{
			RAIF = 0;
			PORTA;
		}
		//休眠被唤醒,重新配置中断等SFR,使系统进入正常工作
		Refurbish_Sfr();
		ADCON0 = 0X41;
		ADON = 1;
		ADCON1 = 0x00;
	}
#endif
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


void chrgCtr()
{
	if(PORTB & 0x01)
	{
		chrgFlag = 1;
		firstLock = 0;
		lowBatLock = 0;
		if(PORTB & 0x10)
		{
			if(++chrgFullTime > 200)
			{
				chrgFullTime = 0;
				chrgFullFlag = 1;
			}
		}
		else
		{
			chrgFullTime = 0;
		}
		if(chrgFullFlag || count1s < 125)
		{
			RA1 = 0;
		}
		else
		{
			RA1 = 1;
		}
	}
	else
	{
		chrgFlag = 0;
		chrgFullTime = 0;
		chrgFullFlag = 0;
		if(firstTime == 0)
			RA1 = 1;
	}
}

void keyLedCtr()
{
	if(shanshuoTime > 0)
	{
		shanshuoTime--;
		if((shanshuoTime % 150) < 75)
		{
			PORTA |= 0x01;
		}
		else
		{
			PORTA &= 0xFE;
		}
	}
	else if(workStep > 0)
	{
		PORTA &= 0xFE;
	}
	else
	{
		PORTA |= 0x01;
	}
	
	if(shanshuoTime2 > 0)
	{
		shanshuoTime2--;
		if((shanshuoTime2 % 150) < 75)
		{
			PORTA |= 0x10;
		}
		else
		{
			PORTA &= 0xEF;
		}
	}
	else if(wuhuaFlag > 0)
	{
		PORTA &= 0xEF;
	}
	else
	{
		PORTA |= 0x10;
	}
	
}

void pwmInit()
{

	PWMTH = 0x00;
	PWMTL = 73;
	PWMD01H = 0x00;
	PWMD0L = 32;
	PWMCON1 = 0x40;
	PWMCON2 = 0x00;
	PWMCON0 |= 0x21;
}

void pwmStop()
{
	PWMD0L = 0;
	PWMCON0 &= 0xFE;
	PORTA &= 0xDF;
}

void fanInit()
{

	PWMTH = 0x00;
	PWMTL = 73;
	PWMD01H = 0x00;
	PWMD1L = fanDuty;
	PWMCON1 = 0x40;
	PWMCON2 = 0x00;
	PWMCON0 |= 0x22;
}

void fanStop()
{
	PWMD1L = 0;
	PWMCON0 &= 0xFD;
	PORTB &= 0x7F;
}

void fanCtr()
{
	if(workStep > 0)
	{
		PORTA |= 0x04;
		u8t maxFanValue = 52;
		if(workStep == 1)
		{	
			maxFanValue = 40;
		}
		test_adc = ADC_Sample(13, 0);
		if (0xA5 == test_adc)
		{
			volatile unsigned long fan_temp;
			if(power_ad > 0)
			{
				fan_temp = ((unsigned long)1UL*adresult * power_ad)/4096;
				fanValue = (unsigned int)(fan_temp);
			}
		}
		if(fanValue > 1300)
		{
			if(++fanOverTime > 50)
			{
				fanOverTime = 0;
				workStep = 0;
				shanshuoTime = 450;
			}
		}
		else
		{
			fanOverTime = 0;
		}
		if(fanDuty < maxFanValue)
		{
			fanDuty++;
		}
		else if(fanDuty > maxFanValue)
		{
			fanDuty--;
		}
		fanInit();
	}
	else
	{
		fanStop();
		fanDuty = 0;
		PORTA &= 0xFB;
	}
}

void wuhuaCtr()
{
	if(count1s == 0)
	{
		if(++count10s >= 10)
		{
			count10s = 0;
		}
	}
	if(wuhuaFlag == 1 || (wuhuaFlag == 2 && count10s < 5))
	{
		pwmInit();
		/*
		if(++checkTime > 200)
		{
			if(lowWaterTime > 110)
			{
				//干烧状态
				wuhuaFlag = 0;
				shanshuoTime2 = 450;
			}
			checkTime = 0;
			lowWaterTime = 0;
		}
		*/
		test_adc = ADC_Sample(3, 0);
		if (0xA5 == test_adc)
		{
			volatile unsigned long wuhua_temp;
			if(power_ad > 0)
			{
				wuhua_temp = (unsigned long)(1UL*adresult * power_ad)/4096;
				wuhuaValue = (unsigned int)(wuhua_temp);
			}
		}
		if(wuhuaValue < 7)
		{
			lowWaterTime++;
		}
	}
	else
	{
		pwmStop();
	}
}


void workCtr()
{
	test_adc = ADC_Sample(31, 0);		//测试内部基准1.2V相对电源的AD值
	if (0xA5 == test_adc)
	{
		volatile unsigned long power_temp;
			
		power_temp = (unsigned long)((POWER_RATIO)/adresult);		//1.2*4096/AD=VDD，参数放大1000倍 
		power_ad = (unsigned int)(power_temp);		//通过内部基准电压推出芯片VDD电压
	}
	if(workStep == 2 && power_ad < 2900)
	{
		if(++lowFanTime > 200)
		{
			lowFanTime = 0;
			workStep = 1;
		}
	}
	else
	{
		lowFanTime = 0;
	}	
	if(power_ad < 2700)
	{
		if(++lowBatTime > 200)
		{
			lowBatTime = 0;
			lowBatLock = 1;
			workStep = 0;
			wuhuaFlag = 0;
		}
	}
	else
	{
		lowBatTime = 0;
	}
	if(firstTime > 0)
	{
		firstTime--;
		PORTB = 0x00;
		PORTA = 0x00;
	}
	else
	{
		keyLedCtr();
		fanCtr();
		wuhuaCtr();
	}
	
}

/***********************************************************
主循环
***********************************************************/
void main()
{
	Init_System();
	firstLock = 1;
	firstTime = 200;
	while(1)
	{
		if(B_MainLoop)
		{
			B_MainLoop = 0;
			CLRWDT();
			
			CheckTouchKey();
			chrgCtr();
			Refurbish_Sfr();
			KeyServer();
			workCtr();
			if(firstTime == 0 && chrgFlag == 0 && workStep == 0 && wuhuaFlag == 0 && shanshuoTime == 0 && shanshuoTime2 == 0)
			{
				WorkSleep();
			}
			else
			{
				time = 0;
			}
		}
	}
}