#include <sc.h>
#include "number.h"

#ifndef _XTAL_FREQ
#define _XTAL_FREQ 8000000			//8MHz,使用内置延时函数必须定义主频，
									//如用16M需改此参数为16000000
#endif
#define     POWER_RATIO  	(4096UL*1.2*1000)




volatile unsigned char MainTime;
volatile bit	B_MainLoop,B_OnOff;
const static unsigned char numArray[]={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x71,0x79,0x50};
const static unsigned char startTime[]={210,190,180,160,140,120,100,86,71,60,53,47,43,39,35,31,31};
const static unsigned char stopTime[]={90,80,75,70,65,60,49,39,32,27,25,22,19,18,16,14,12};

u8t IntFlag = 0;
u8t	chrgFlag = 0;
u16t  R_AIN2_DATA;	
u8t R_AIN2_DATA_LB;
u8t intCount = 0;
u8t	intCount3 = 0;
u16t sleepTime = 0;
u8t count200ms = 0;
u8t count1s = 0;
u16t count5s = 0;
u16t count900s = 0;
u8t workStep = 0;
u8t	longPressFlag = 0;
u8t keyCount = 0;
u8t keyCount2 = 0;
u8t keyCount3 = 0;
u8t keyCount4 = 0;
u8t	keyNum = 0;
u8t ledLightTime = 0;
u8t currentDuty = 0;
u8t overCount = 0;
u8t batValue = 0;
u8t workDuty = 0;
u8t preBatValue = 0;
u16t closeCount = 0;
u8t firstShowCount = 0;
u8t maxduty = 0;
u8t chrgFullFlag = 0;
u8t subTime = 0;
u8t addMax = 0;
u8t addTime = 0;
u8t lowATime = 0;
u8t highATime = 0;
u8t chrgWaitTime = 0;
u8t checkTime = 0;
u16t	count10s = 0;
u8t		countHalfFull = 0;
u16t tempData = 0;
u8t	intCount10 = 0;
u8t chrgMode = 0;	//0为0.15A 恒流 1为0.8A恒流 2为8.3V恒压
u8t	chrgBatCount = 0;
u8t	lockCount = 0;
u8t	reChrgCount = 0;
u8t chrgMaxAD = 0;
u8t chrgMaxDuty = 0;
u16t	fullCount = 0;
u8t protectFlag = 0;
u16t	chrgAD = 0;
u8t	firstCheckTime = 0;
u8t	closeTime = 0;
u16t			sumBatValue = 0;
u8t	beepTime = 0;
u8t	modelStep = 0;
u8t	showWorkFlag = 0;
u8t	shanshuoTime = 0;
u8t	showWorkTime = 0;
u16t	workTime = 0;
u8t	motorPWMFlag = 0;
u8t	chrgPWMFlag = 0;
u8t	showBatTime = 0;
u8t	lowBatFlag = 0;
u16t	count20s = 0;
u8t	chrgCloseTime = 0;

extern u8t		showNumAShi;
extern u8t		showNumAge;
extern u8t		showNumBShi;
extern u8t		showNumBat;

volatile unsigned int adresult;
volatile unsigned int result;
volatile unsigned char test_adc;
volatile unsigned int power_ad;

void Sleep_Mode();
unsigned char ADC_Sample(unsigned char adch, unsigned char adldo);

extern u8t		showNumAShi;
extern u8t		showNumAge;



void delay(int);
void gotoSleep();
void powerOff();
void checkOutA();
void checkInAD();
void F_AIN3_Convert(char count);
void F_AIN2_Convert(char count,char channel);
void pwm1Stop();
void pwm1Init();
void initSys();
void fgCtr();
void checkBatAD();
void checkKeyAD();
void F_wait_eoc(void);
void F_AIN4_Convert(char count);
void initAD();
void pwm2Init();
void chrgCtr();
void keyCtr();
char keyRead(char keyStatus);
char keyRead2(char keyStatus);
void pwm2Stop();
void workCtr();
void refreshNub();
void ledCtr();


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
	TRISA = 0xE2;
	PORTA = 0x00;
	WPUA = 0xC0;
	TRISB = 0xE0;
	PORTB = 0;
	WPUB = 0x80;
	TRISC = 0x00;
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
中断服务函数
***********************************************************/
void interrupt Isr_Timer()
{
	if(TMR2IF)				//若只使能了一个中断源,可以略去判断
	{
		TMR2IF = 0;
		if(++intCount10 > 3)
		{
			intCount10 = 0;
			if(beepTime > 0)
			{
				PORTA ^= 0x04;
			}
			else
			{
				PORTA &= 0xFB;
			}
		}
		if(++MainTime >= 158)	//需根据你选择的触摸路数和触摸电容选择扫描一次按键的时间
		{						//一般103电容，8路触摸，8M主频检测时间约4ms，故扫描一次的时间可选5ms
			MainTime = 0;
			B_MainLoop = 1;
			if(++count1s >= 100)
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

	TRISA = 0xE2;
	PORTA = 0x00;
	WPUA = 0xC0;
	TRISB = 0xE0;
	PORTB = 0;
	WPUB = 0x80;
	TRISC = 0x00;
	PORTC = 0;
	
   	ADCON0 = 0;					//关闭所有模块
	ADCON1 = 0;
	
	PWMCON0 = 0;
		
	OSCCON = 0X70;				//配置振荡为8M,关闭WDT，需注意芯片工程选项里WDT必须选为DISABLE,否则无法软件关掉WDT
	T2CON = 0;					//关闭定时器2
	IOCA = 0B00000010;			//允许RA0的IO电平变化中断
	IOCB = 0B10000000;			//允许RB3的IO口电平变化中断
	
	RAIE = 1;					//允许PORTA的IO电平变化中断
	RBIE = 1;
	PEIE = 1;					//要用RORTA中断唤醒，则PEIE必须设为1
	//RBIE = 1;					//允许PORTB电平变化中断
	GIE = 0;					//唤醒后执行SLEEP后程序;
	

	PORTA;						//读PORTA值并锁存,用电平变化中断必须执行这一步
	RAIF = 0;					//清PORTA中断标志位
	RBIF = 0;
	PORTB;						//读PORTB值并锁存	
	//RBIF = 0;					//清PORTB中断标志位		
	asm("clrwdt");

	asm("sleep");				//进入休眠模式
	
	asm("nop");
	asm("clrwdt");
	if(RAIF)  RAIF = 0;			//清中断标志
	//if(RBIF)  RBIF = 0;			//清中断标志
	Init_System();
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





void checkOutA()
{

	test_adc = ADC_Sample(5, 5);
	if (0xA5 == test_adc)
	{
		chrgAD = adresult;
		if(chrgFlag && chrgAD > 100)
        {
        	pwm2Stop();
        	PORTB &= 0xF7;
        	protectFlag = 1;
        	PWMD4L = 0;
        	maxduty = 0;
        }
        
	}
}

void checkBatAD()
{

	test_adc = ADC_Sample(13, 5);
	if (0xA5 == test_adc)
	{
		tempData = adresult;
		if(chrgFlag && tempData > 1676)
        {
        	pwm2Stop();
        	protectFlag = 1;
        	PWMD4L = 0;
        	maxduty = 0;
        }
       if(tempData < 1118)
	    {
	    	batValue = 0;
			//低电自动关机
			if(tempData < 1080 && workStep > 0)
			{
				if(++closeCount >= 1000)
				{
					closeCount = 0;
					preBatValue = 0;
					workStep = 0;
					pwm1Stop();
					lowBatFlag = 1;
				}
			}
			else
			{
				closeCount = 0;
			}
	    }
	    else
	    {
	    	closeCount = 0;
	    	if(tempData >= 1460)
	    	{

	    		batValue = ((tempData - 1460) /2) + 46;
	    	}
			else if(tempData >= 1340)
	    	{

	    		batValue = ((tempData - 1340) /4) + 16;
	    	}
	    	else
	    	{
	    		batValue = (tempData - 1118) / 16;
	    	}
			if(batValue > 99)
	   			batValue = 99;
	
	    }

	}
	test_adc = ADC_Sample(14, 5);
	if (0xA5 == test_adc)
	{
		if(adresult > 100)
		{
			if(adresult > 800 || (tempData - adresult) > 800)
			{
				//有一节电池已经满了
	    		if(++countHalfFull > 200)
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
}
//电机
void pwm1Init()
{
	if(motorPWMFlag)
	{
		return;
	}
	PWMTH = 0x00;
	PWMTL = 100;
	PWMD01H = 0x00;
	PWMD0L = 66;
	PWMCON1 = 0xC0;
	PWMCON2 = 0x00;
	PWMCON0 |= 0x61;
	motorPWMFlag = 1;
}

void pwm1Stop()
{
	PWMD0L = 0;
	PWMCON0 &= 0xFE;
	PORTA &= 0xFE;
	motorPWMFlag = 0;
}
//充电
void pwm2Init()
{
	if(chrgPWMFlag)
	{
		return;
	}
	chrgPWMFlag = 1; 
	PWMTH = 0x00;
	PWMT4L = 70;
	PWMD4L = 5;
	PWMCON1 = 0xC0;
	PWMCON2 = 0x00;
	PWMCON0 |= 0x30;
}

void pwm2Stop()
{
	PWMD4L = 0;
	PWMCON0 &= 0xEF;
	PORTA &= 0xEF;
	chrgPWMFlag = 0;
}


void chrgCtr()
{
	if(0x02 & PORTA)
	{
		//充电中
		chrgFlag = 1;
		workStep = 0;
		lowBatFlag = 0;
		ledLightTime = 0;
		pwm1Stop();
		if(protectFlag)
		{
			pwm2Stop();
			maxduty = 0;
			if(protectFlag == 1 && tempData < 1530)
			{
				protectFlag = 0;
				chrgFullFlag = 0;
			}
			return;
		}
		if(tempData < 1118)
		{
			chrgMode = 0;
			lockCount = 0;
			chrgMaxAD = 5;
		}
		else if(tempData < 1230)
		{
			chrgMode = 0;
			lockCount = 0;
			chrgMaxAD = 33;
		}
		else if(tempData < 1530)
		{
			chrgMode = 1;
			chrgMaxAD = 38;
			lockCount = 0;
			if(++chrgBatCount > 200)
			{
				chrgBatCount = 200;
				chrgFullFlag = 0;
			}

		}
		else if(count200ms == 0)
		{
			
			if(++lockCount > 200)
			{
				lockCount = 200;
				chrgBatCount = 0;
				chrgMode = 2;
			}
			chrgMaxAD = 38;
		}
		if(chrgMode == 2 && chrgAD < 7)
		{
			if(++fullCount >= 250)
			{
				fullCount = 250;
				chrgFullFlag = 1;
			}
		}
		else
		{
			fullCount = 0;
		}

		if(chrgFullFlag)
		{
			pwm2Stop();
			chrgFullFlag = 1;
		}
		else 
		{
			

				if(tempData > 1555 || chrgAD >chrgMaxAD)
				{
					if(++subTime > chrgWaitTime)
					{
						maxduty = maxduty - 1;
						subTime = 0;
						chrgWaitTime = 40;
					}
					addTime = 0;
				}
				else if(tempData < 1555 && chrgAD <chrgMaxAD)
				{
					if(++addTime > chrgWaitTime)
					{
						if(chrgAD < (chrgMaxAD-3))
						{
							maxduty = maxduty + 1;
						}
						addTime = 0;
					}
					subTime = 0;
				}
			if(maxduty < 1)
				maxduty = 1;
			if(maxduty > 45)
				maxduty = 45;
			PWMD4L = maxduty;
			pwm2Init();
	
		
			
		
		}
		chrgCloseTime = 0;
	}
	else 
	{
		if(++chrgCloseTime > 10)
		{
			chrgCloseTime = 0;
			protectFlag = 0;
			chrgWaitTime = 20;
			chrgFullFlag = 0;
			maxduty = 0;
			pwm2Stop();
			chrgFlag = 0;
		}
		//未充电
		
		if(workStep > 0 && preBatValue > (batValue + 1))
		{
			u16t waitMaxTime = 2000;
			if(preBatValue > 74)
			{
				waitMaxTime = 3000;
			}
			if(++count20s > waitMaxTime)
			{
				count20s = 0;
				preBatValue = preBatValue - 1;
			}
		}
		else
		{
			count20s = 0;
		}
		
	}
}



void workCtr()
{
		if(++count5s >= 8000)
		{
			count5s = 0;
			if(chrgFlag && preBatValue < 99 && batValue >= preBatValue)
			{
				preBatValue = preBatValue+1;
			}
			if(chrgFlag && chrgFullFlag && preBatValue < 99)
			{
				preBatValue = preBatValue+1;
			}
		}
		if(beepTime > 0)
    	{
    		beepTime--;
    	}
    	else
    	{
    		PORTA &= 0x7F;
    	}
    	if(firstShowCount > 0 && firstShowCount < 150)
		{
			sumBatValue +=  batValue;
			firstCheckTime++;
		}
		else
		{
			if(sumBatValue > 0)
			{
				preBatValue = sumBatValue/firstCheckTime;
			}
			firstCheckTime = 0;
			sumBatValue = 0;
		}
    	if(firstShowCount > 0)
    	{
    		firstShowCount--;
    	}
    	
		if(count1s == 0)
		{
			if(workStep)
			{
				++count900s;
			}
			else
			{
				count900s = 0;
			}
		}
		if(workStep > 0)
		{
			workDuty = 64 + (workStep*2);
			
			PWMD0L = workDuty;
		}
		else
		{
			pwm1Stop();
			modelStep = 0;
		}
		if(modelStep == 1)
		{
			pwm1Init();
		}
		else if(modelStep > 1)
		{
			u16t tempStartTime = startTime[modelStep - 2];
			u16t tempStopTime = stopTime[modelStep - 2];
			if(++workTime > (tempStartTime + tempStopTime))
			{
				workTime = 0;
			}
			if(workTime < tempStartTime)
			{
				pwm1Init();
			}
			else
			{
				pwm1Stop();
			}
		}
		//900s关机
		if(count900s >= 910)
		{
			workStep = 0;
			pwm1Stop();
		}
}


char keyRead(char keyStatus)	
{ 
	if(keyStatus)
	{
		keyCount++;
		if(keyCount >= 120)
		{
			keyCount = 120;
			if(longPressFlag == 0)
			{
				longPressFlag = 1;
				return 2;
			}
		}
	}
	else
	{
		if(keyCount >= 120)
		{
			keyCount = 0;
			longPressFlag = 0;
			return	0;
		}
		else if(keyCount >= 5)
		{
			keyCount = 0;
			return	1;
		}
		keyCount = 0;
		longPressFlag = 0;
	}
	return 0;
}

char keyRead2(char keyStatus)	
{ 
	if(keyStatus)
	{
		keyCount2++;
		if(keyCount2 >= 120)
		{
			keyCount2 = 120;
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
		keyCount3++;
		if(keyCount3 >= 120)
		{
			keyCount3 = 120;
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

char keyRead4(char keyStatus)	
{ 
	if(keyStatus)
	{
		keyCount4++;
		if(keyCount4 >= 120)
		{
			keyCount4 = 120;
		}
	}
	else
	{
		if(keyCount4 >= 5)
		{
			keyCount4 = 0;
			return	1;
		}
		keyCount4 = 0;
	}
	return 0;
}

void keyCtr()
{
	TRISA = 0xE2;
	WPUA = 0xC0;
	TRISB = 0xE0;
	WPUB = 0x80;
	RA3 = 0;		//KEY1输出低电平,KEY4判断低电平
	char kclick = keyRead(0x80 & (~PORTB));
	if(kclick == 2)
	{
		if(workStep > 0)
		{
			workStep = 0;
			closeTime = 0;
			beepTime = 30;
			showWorkTime = 250;
		}
		else
		{
			workStep = 1;
			modelStep = 1;
			showWorkFlag = 1;
			showWorkTime = 250;
			beepTime = 30;
		}
	}
	else if(kclick == 1 && workStep == 0)
	{
		showBatTime = 250;
	}
	if(workStep == 0)
	{
		return;
	}
	kclick = keyRead4(0x40 & (~PORTA));	//KEY1输出低电平,KEY2判断低电平
	if(kclick == 1)
	{
		if(workStep < 18)
		{
			workStep++;
			beepTime = 30;
		}
		if(showWorkFlag == 0)
		{
			showWorkFlag = 1;
			shanshuoTime = 200;
		}
		showWorkTime = 250;
	}
	TRISA = 0x6A;
	WPUA = 0x48;
	TRISB = 0xE0;
	WPUB = 0x80;
	RA7 = 0;		//KEY3输出低电平,KEY4判断低电平
	kclick = keyRead2(0x80 & (~PORTB));
	if(kclick == 1)
	{
		if(++modelStep > 18)
		{
			modelStep = 1;
		}
		beepTime = 30;
		workTime = 0; 
		if(showWorkFlag == 1)
		{
			showWorkFlag = 0;
			shanshuoTime = 200;
		}
		showWorkTime = 250;
	}
	kclick = keyRead3(0x40 & (~PORTA));	//KEY3输出低电平,KEY2判断低电平
	if(kclick == 1)
	{
		if(workStep > 1)
		{
			workStep--;
			beepTime = 30;
		}
		if(showWorkFlag == 0)
		{
			showWorkFlag = 1;
			shanshuoTime = 200;
		}
		showWorkTime = 250;
	}
}


void ledCtr()
{
	if(showWorkTime > 0)
	{
		showWorkTime--;
	}
	if(showBatTime > 0)
	{
		showBatTime--;
	}
	if(shanshuoTime > 0)
	{
		shanshuoTime--;
	}
	if(firstShowCount > 0)
	{
		showNumAShi = 0x7F;
		showNumAge = 0x7F;
	}
	else if(shanshuoTime > 0 && (shanshuoTime % 100) < 50)
	{
		showNumAShi = 0;
		showNumAge = 0;
	}
	else if(chrgFlag || (showBatTime > 0))
	{
		showNumAShi = numArray[preBatValue/10];
		showNumAge = numArray[preBatValue%10];
	}
	else if(showWorkTime)
	{
		if(workStep == 0)
		{
			showNumAShi = numArray[0];
			showNumAge = numArray[10];
		}
		else if(showWorkFlag == 1)
		{
			showNumAShi = numArray[workStep/10];
			showNumAge = numArray[workStep%10];
		}
		else
		{
			showNumAShi = numArray[modelStep/10];
			showNumAge = numArray[modelStep%10];
		}
	}
	else if(workStep > 0)
	{
		u8t tempMinute = 15 - (count900s/60);
		showNumAShi = numArray[tempMinute/10];
		showNumAge = numArray[tempMinute%10];
	}
	else
	{
		showNumAShi = 0;
		showNumAge = 0;
	}
}


/***********************************************************
主循环
***********************************************************/
void main()
{

	Init_System();
	beepTime = 30;
	firstShowCount = 200;
	while(1)
	{
		refreshLed();
		if(B_MainLoop)
		{
			B_MainLoop = 0;
			CLRWDT();
			checkOutA();
			ledCtr();
			if(chrgFlag == 0 && lowBatFlag == 0)
				keyCtr();
			workCtr();
			chrgCtr();
			checkBatAD();
			if(workStep == 0 && keyCount == 0 && chrgFlag == 0 && firstShowCount == 0 && showWorkTime == 0 && showBatTime == 0)
			{
				
				if(++sleepTime > 250)
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
}