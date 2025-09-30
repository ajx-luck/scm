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


#define		A_LED5						 RA1
#define		A_LED4						 RA2
#define		A_LED3						 RA3
#define		A_LED2						 RA4
#define		A_LED1						 RA5


#define		A_LED5_OUT					 TRISA	&= 0xFD
#define		A_LED4_OUT					 TRISA	&= 0xFB
#define		A_LED3_OUT					 TRISA	&= 0xF7
#define		A_LED2_OUT					 TRISA	&= 0xEF
#define		A_LED1_OUT					 TRISA	&= 0xDF

const static unsigned char numArray[]={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x73,0x76};

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
u8t		chrgFullTime;
u8t		workStep = 0;
u8t		ledCnt;
u8t		keyCount;
u8t		longPressFlag;
u8t		firstTime;
u8t		showBatTime;
u8t	ledCntTime;
u16t	lowShanTime;
u16t	count900s;
u8t		lowBatFlag = 0;
u8t		sleepTime;
u8t shiweiNum = 0;	//十位
u8t	geweiNum = 0;	//个位
u8t	baiweiNum = 0;
u8t	motorPwmFlag = 0;
u16t	count30s = 0;
u8t	showBatStep = 0;
u8t		curBatStep = 0;
u8t	lowBatTime = 0;

unsigned char ADC_Sample(unsigned char adch, unsigned char adldo);
void DelayXms(unsigned char x);
unsigned char ADC_Result(unsigned char adch);
void Init_System();
void AD_Init();
void Sleep_Mode();
void pwmInit();
void pwmStop();
void chrgCtr();
void checkBatAD();
void ledShow();
void keyCtr();
void workCtr();
void ledCtr();
char keyRead(char keyStatus);
void setBatStep();


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
			}
		}
		ledShow();
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
	shiweiNum = geweiNum = numArray[8];
	baiweiNum = 1;
	firstTime = 250;
	while (1) 
	{
		asm("clrwdt");
		if(intCount10 > 10)
		{
			intCount10 = 0;
		}
		if(!IntFlag)
    		continue;			//10ms执行一次
    	IntFlag = 0;
		chrgCtr();
		checkBatAD();
		setBatStep();
		if(lowBatFlag == 0 && firstTime == 0 && chrgFlag == 0)
		{
			keyCtr();
		}
		workCtr();
		if(chrgFlag == 0 && workStep == 0 && firstTime == 0 && showBatTime == 0)
		{
			baiweiNum = 0;
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

void ledShow()
{
	if(++ledCntTime > 5)
	{
		ledCntTime = 0;
		if(++ledCnt > 13)
		{
			ledCnt = 0;
		}
		PORTA &= 0xC1;
		TRISA |= 0x3E;
		switch(ledCnt)
		{
			case 1:
			if(geweiNum & 0x08)
			{
				A_LED5_OUT;
				A_LED1_OUT;
				A_LED5 = 1;
				A_LED1 = 0;
			}
			break;
			case 2:
			if(geweiNum & 0x10)
			{
				A_LED3_OUT;
				A_LED5_OUT;
				A_LED5 = 1;
				A_LED3 = 0;
			}
			break;
			case 3:
			if(geweiNum & 0x20)
			{
				A_LED3_OUT;
				A_LED2_OUT;
				A_LED2 = 1;
				A_LED3 = 0;
			}
			break;
			case 4:
			if(geweiNum & 0x01)
			{
				A_LED2_OUT;
				A_LED1_OUT;
				A_LED1 = 1;
				A_LED2 = 0;
			}
			break;
			case 5:
			if(geweiNum & 0x02)
			{
				A_LED1_OUT;
				A_LED3_OUT;
				A_LED3 = 1;
				A_LED1 = 0;
			}
			break;
			case 6:
			if(geweiNum & 0x04)
			{
				A_LED1_OUT;
				A_LED5_OUT;
				A_LED1 = 1;
				A_LED5 = 0;
			}
			break;
			case 7:
			if(geweiNum & 0x40)
			{
				A_LED1_OUT;
				A_LED3_OUT;
				A_LED1 = 1;
				A_LED3 = 0;
			}
			break;
			case 8:
			if(shiweiNum & 0x08)
			{
				A_LED4_OUT;
				A_LED5_OUT;
				A_LED4 = 1;
				A_LED5 = 0;
			}
			break;
			case 9:
			if(shiweiNum & 0x10)
			{
				A_LED5_OUT;
				A_LED4_OUT;
				A_LED5 = 1;
				A_LED4 = 0;
			}
			break;
			case 10:
			if(shiweiNum & 0x20)
			{
				A_LED4_OUT;
				A_LED3_OUT;
				A_LED3 = 1;
				A_LED4 = 0;
			}
			break;
			case 11:
			if(shiweiNum & 0x01)
			{
				A_LED1_OUT;
				A_LED2_OUT;
				A_LED2 = 1;
				A_LED1 = 0;
			}
			break;
			case 12:
			if(shiweiNum & 0x02)
			{
				A_LED3_OUT;
				A_LED2_OUT;
				A_LED3 = 1;
				A_LED2 = 0;
			}
			break;
			case 13:
			if(shiweiNum & 0x04)
			{
				A_LED3_OUT;
				A_LED5_OUT;
				A_LED3 = 1;
				A_LED5 = 0;
			}
			break;
			case 0:
			if(shiweiNum & 0x40)
			{
				A_LED4_OUT;
				A_LED3_OUT;
				A_LED4 = 1;
				A_LED3 = 0;
			}
			break;
			default:
			break;
		}
	}
	
	
}






void chrgCtr()
{
	if(PORTB & 0x01)
	{
		chrgFlag = 1;
		workStep = 0;
		lowBatFlag = 0;
		if(PORTA & 0x01)
		{
			chrgFullTime = 0;
		}
		else
		{
			if(++chrgFullTime >= 200)
			{
				chrgFullTime = 0;
				chrgFullFlag = 1;
			}
		}
	}
	else
	{
		chrgFlag = 0;
		chrgFullFlag = 0;
		chrgFullTime = 0;
		if(power_ad < 1563)
		{
			if(++lowBatTime > 200)
			{
				lowBatTime = 0;
				lowBatFlag = 1;
			}
		}
		else
		{
			lowBatTime = 0;
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



void keyCtr()
{
	if(PORTB & 0x02)
	{
		if(PORTB & 0x04)
		{
			workStep = 1;
		}
		else
		{
			workStep = 2;
		}
	}
	else
	{
		workStep = 0;
	}
	
	
}


void workCtr()
{
	/*
	if(workStep > 0 && count1s == 0 && ++count900s >= 900)
	{
		count900s = 0;
		workStep = 0;
	}
	*/
	if(lowShanTime > 0)
	{
		if(--lowShanTime == 0)
		{
			workStep = 0;
		}
	}
	if(showBatTime > 0)
	{
		showBatTime--;
	}
	if(firstTime > 0)
	{
		firstTime--;
		if(showBatStep < curBatStep)
		{	
			showBatStep = curBatStep;
		}
		shiweiNum = numArray[8];
		geweiNum = numArray[8];
	}
	else if(workStep == 0 || (lowShanTime > 0 && count1s < 50))
	{
		shiweiNum = 0;
		geweiNum = 0;
		pwmStop();
		count900s = 0;
	}
	else if(workStep == 1)
	{
		if(chrgFlag == 0)
		{
			shiweiNum = numArray[10];
			geweiNum = numArray[1];
		}
		if(motorPwmFlag == 0)
		{
			pwmInit();
		}
		PWMD23H = 0X00;
		PWMD2L = 60;
	}
	else if(workStep == 2)
	{
		if(chrgFlag == 0)
		{
			shiweiNum = numArray[10];
			geweiNum = numArray[2];
		}
		if(motorPwmFlag == 0)
		{
			pwmInit();
		}
		PWMD23H = 0X00;
		PWMD2L = 80;
		
	}
	if(chrgFlag || showBatTime > 0)
	{
		if(showBatStep >=99)
		{
			shiweiNum = numArray[9];
			geweiNum = numArray[9];
		}
		else if(showBatStep > 9)
		{
			baiweiNum = 0;
			shiweiNum = numArray[showBatStep/10];
			if(chrgFlag && count1s < 50)
			{
				geweiNum = 0;
			}
			else
			{
				geweiNum = numArray[showBatStep%10];
			}
		}
		else
		{
			baiweiNum = 0;
			shiweiNum = 0;
			if(chrgFlag && count1s < 50)
			{
				geweiNum = 0;
			}
			else
			{
				geweiNum = numArray[showBatStep];
			}
		}
	
	}
	
}

void setBatStep()
{
	if(lowBatFlag == 1 && lowShanTime == 0 && workStep > 0)
	{
		showBatStep = 0;
		curBatStep = 0;
		lowShanTime = 300;
	}
	else if(power_ad < 1675)
	{
		if(count1s == 0)
		{
			if(showBatStep > 1)
			{
				if(chrgFlag == 0)
					showBatStep--;
			}
			else
			{
				showBatStep = 1;
			}
			curBatStep = 1;
		}
		curBatStep = 1;
	}
	else
	{
		if(power_ad < 1875)
		{
			curBatStep = (power_ad - 1675)/10;
		}
		else
		{
			curBatStep = 10 + ((power_ad - 1875)/5);
		}
		if(curBatStep > 99)
		{
			curBatStep = 99;
		}

		if(chrgFlag)
		{
			if(chrgFullFlag)
			{
				if(++count30s >= 3000 && showBatStep < 99)	//20s
				{	
					count30s = 0;
					showBatStep++;
				}
			}
			else if(curBatStep > showBatStep)
			{
				if(++count30s >= 30000 && showBatStep < 99)	//20s
				{	
					count30s = 0;
					showBatStep++;
				}
				
			}
			else
			{
				count30s = 0;
			}
		}
		else
		{
			if(curBatStep < showBatStep && showBatStep > 1)
			{
				if(++count30s >= 1500 && showBatStep > 1)	//10s
				{	
					count30s = 0;
					showBatStep--;
				}
			}
			else
			{
				count30s = 0;
			}
		}
		
	}
}


void checkBatAD()
{
	test_adc = ADC_Sample(12, 5);		//测试内部基准1.2V相对电源的AD值
	if (0xA5 == test_adc)
	{
		volatile unsigned long power_temp;
		
		power_ad = adresult;		//通过内部基准电压推出芯片VDD电压
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

	WPUA = 0x00;				//配置上拉，1为使能上拉
	WPDA = 0x00;					//RA1开下拉
	WPUB = 0x04;

	TRISA = 0x01;				//配置IO状态，0为输出，1为输入
	TRISB = 0x37;

	PORTA = 0X00;
	PORTB = 0X00;

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
	ANSEL0 = 0X00;
	ANSEL1 = 0x30;	
}


void pwmInit()
{
		PWMCON1 = 0B00000000;	//PWM选择D组，死区2禁止，死区1使能，死区时钟源为Fosc/4
		PWMTH = 0X00;			//周期选择为0FF，则周期为（255+1）*1/8M，周期的时钟分频在PWMCON0选择
		PWMTL = 100;			//PWM 周期=[PWMT+1]*Tosc*(CLKDIV 分频值)
		
		
		PWMD23H = 0;			//配置PWM1,PWM2的占空比，该值不能超过周期，否者为100%输出
		PWMD2L = 60;			//互补模式，PWM1的占空比与PWM0互补，和设置值无关
		PWM23DT = 0X00;			//死区设为2uS，计算为（3+1）*1/8M*4

		PWMCON0 = 0X64;			//打开PWM3 分频比为8
		PWMCON2 =0X00;			//PWM4输出反向
		motorPwmFlag = 1;
}

void pwmStop()
{
	PWMCON0 &= 0XFB;
	RB3 = 0;
	motorPwmFlag = 0;
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

	WPUA  = 0x00;			//RA1 开上拉电阻
	TRISA = 0x01;				//配置IO状态，0为输出，1为输入
	TRISB = 0x37;

	PORTA = 0X00;
	PORTB = 0X00;
	WPUB  = 0x04;			//RB2 开上拉电阻
   			
   	ADCON0 = 0;					//关闭所有模块
	ADCON1 = 0;
	
	PWMCON0 = 0;
		
	OSCCON = 0X70;				//配置振荡为8M,关闭WDT，需注意芯片工程选项里WDT必须选为DISABLE,否则无法软件关掉WDT
	
	IOCA = 0B00000000;			//允许RA1的IO电平变化中断
	IOCB = 0x07;			//允许RB1 RB2的IO口电平变化中断
	
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

