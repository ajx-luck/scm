#include <sc.h>
#include "number.h"

#ifndef _XTAL_FREQ
#define _XTAL_FREQ 8000000			//8MHz,使用内置延时函数必须定义主频，
									//如用16M需改此参数为16000000
#endif
#define     POWER_RATIO  	(4096UL*1.2*1000)

#define		IO1 	RA4
#define		IO2		RA3


volatile unsigned char MainTime;
volatile bit	B_MainLoop,B_OnOff;
const static unsigned char numArray[]={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x77,0x7C,0x39,0x5E,0x79,0x71};

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


u8t batValue = 0;
u8t workDuty = 0;
u8t preBatValue = 0;
u16t closeCount = 0;
u16t firstShowCount = 0;
u8t maxduty = 0;
u8t chrgFullFlag = 0;
u8t fullTime = 0;
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
u8t	fullCount = 0;
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
u8t lowBatTime = 0;
u8t	lowBatFlag = 0;
u8t	keyNum = 0;
u8t	count500ms = 0;
u8t	motorStep = 0;
u8t	dlStep = 0;
u8t	hotStep = 0;
u8t	motorDuty = 0;
u16t	zqTime = 0;
u8t		stopFlag = 0;
u8t		stopTime = 0;
u16t		xdTime = 0;		//一小段次数
u16t		waitTime = 0;
u16t	hotData = 0;
u8t	count100us = 0;

u8t	recData1,recData2,recData3,recData4;
u8t	g8RX=0;
u8t  g8RxData=0;
u8t  g8RxDataBit=0;
u8t  g8RxTime=0;
u8t  g8RxDataBuf=0;
u8t  g8CtrlFlg;


#define  C_ONOFF  0x01
#define  C_Timer1  0x02
#define  C_RXOK   0x04

extern u8t		showNumAShi;
extern u8t		showNumAge;

volatile unsigned int adresult;
volatile unsigned int result;
volatile unsigned char test_adc;
volatile unsigned int power_ad;

void Sleep_Mode();
unsigned char ADC_Sample(unsigned char adch, unsigned char adldo);
void pwmOff();
void pwmOn();



void delay(int);
void gotoSleep();
void pwm1Stop();
void pwm1Init();
void initSys();
void checkBatAD();
void checkKeyAD();
void pwm2Init();
void chrgCtr();
void keyCtr();
char keyRead(char keyStatus);
char keyRead2(char keyStatus);
void pwm2Stop();
void workCtr();
void refreshNub();
void ledCtr();
void fRxDecoed(void);
void fRxFun(void);
void keyAdd();
void keySub();
void checkHotAD();
void setMode(u16t zqMaxTime,u16t halfTime,u8t pwmTime);


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
	TRISA = 0xC0;
	PORTA = 0x00;
	WPUA = 0x00;
	TRISB = 0x5C;
	PORTB = 0;
	WPUB = 0x40;
	TRISC = 0x00;
	PORTC = 0x02;

	PIE1 = 2;
	PR2 = 100;				//8M下将TMR2设置为125us中断
	//T2CON = 5;				//使能定时器2
	T2CON = 5;
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
	PR2 = 100;
	INTCON = 0XC0;
	if (5 != T2CON)
		T2CON = 5;
}


/***********************************************************
中断服务函数
***********************************************************/
void interrupt Isr_Timer()
{
	if(TMR2IF)				//若只使能了一个中断源,可以略去判断
	{
		TMR2IF = 0;
		count100us = 1;
		if(++intCount10 >= 3)
		{
			intCount10 = 0;
			
			if(beepTime > 0)
			{
				PORTA ^= 0x20;
			}
			else
			{
				PORTA &= 0xDF;
			}
		}
		
		if(++MainTime >= 100)	//需根据你选择的触摸路数和触摸电容选择扫描一次按键的时间
		{						//一般103电容，8路触摸，8M主频检测时间约4ms，故扫描一次的时间可选5ms
			MainTime = 0;
			B_MainLoop = 1;
			if(++count1s >= 100)
			{
				count1s = 0;
			}
		}
		refreshLed();
		fRxDecoed();
		
		if(motorDuty > MainTime)
		{
			RA2 = 1;
		}
		else
		{
			RA2 = 0;
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

	TRISA = 0xC0;
	PORTA = 0x00;
	WPUA = 0x00;
	TRISB = 0x54;
	PORTB = 0;
	WPUB = 0x40;
	TRISC = 0x00;
	PORTC = 0;
	
   	ADCON0 = 0;					//关闭所有模块
	ADCON1 = 0;
	
	PWMCON0 = 0;
		
	OSCCON = 0X70;				//配置振荡为8M,关闭WDT，需注意芯片工程选项里WDT必须选为DISABLE,否则无法软件关掉WDT
	T2CON = 0;					//关闭定时器2
	IOCA = 0B00000000;			//允许RA0的IO电平变化中断
	IOCB = 0B01000100;			//允许RB3的IO口电平变化中断
	
	RAIE = 0;					//允许PORTA的IO电平变化中断
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




void checkKeyAD()
{

	test_adc = ADC_Sample(12, 0);
	if (0xA5 == test_adc)
	{
		 if(adresult < 150)
		 {
			keyNum = 1;
		 }
		 else
		 {
			keyNum = 2;
		 }
		

	}
	
}



void checkBatAD()
{

	test_adc = ADC_Sample(31, 0);
	if (0xA5 == test_adc)
	{
		tempData = adresult;
		

	}
	
}

void checkHotAD()
{
	test_adc = ADC_Sample(6, 0);
	if (0xA5 == test_adc)
	{
		hotData = adresult;
		

	}
}



void fRxFun(void)
{
	if(g8CtrlFlg&C_RXOK)
	{
	  
	  if(workStep > 0 && recData1 == 0x00 && recData2 == 0xFF)
	  {
		beepTime = 30;
		if(recData3 == 0x40)
		{
			workStep = 2;
		}
		if(recData3 == 0x07)
		{
			workStep = 1;
		}
		if(recData3 == 0x09)
		{
			workStep = 3;
		}
		if(recData3 == 0x0C)
		{
			keySub();
		}
		if(recData3 == 0x5E)
		{
			keyAdd();
		}
	  }
	  g8CtrlFlg&=~C_RXOK;     //  解码OK
	  NOP();
	}


}



void fRXError(void)
{
 g8RX=0;
 g8RxData=0;
 g8RxDataBit=0;
 g8RxTime=0;

}


//===================================
void fRxDecoed(void)         //  base  100us
{
  if(g8CtrlFlg&C_RXOK)
  {
  	return;
  }
  switch(g8RX)
  {
  	case 0: //  等待头码  10.8ms
  	if(RB3==0)
  	{
  		if(++g8RxTime>85) //>9ms
  		{
  		  g8RX=1;	
  		  g8RxTime=0;
		  
  		}
  	
  	}
  	else
  	{
  	 g8RxTime=0;
  	 
  	}
  	break;
  	case 1:  //  4.5ms头码的后颁布扥
  	if(RB3==0)
  	{
  		if(++g8RxTime>60)  //  >6ms error
  		{
  		 fRXError();
		 break;
  		} 
  	}
  	
   else //  
  	{
		g8RX=2;
  		g8RxTime=0;
  		g8RxData=0;
  		g8RxDataBit=0;
  		
  	}
  	break;
  	case 2:
	if(RB3)
	{
		if(++g8RxTime>60) //6ms
  		 {
  		   fRXError();
		   break;
  		 } 
	}
	else
	{
		
		if(++g8RxTime<40) //4ms
		 {
		   fRXError();
		   break;
		 } 
		g8RX=3;
  		g8RxTime=0;
  		g8RxData=0;
  		g8RxDataBit=0;
		
	}
	break;
  	case 3:  ////解数据码  的低电平
  		if(RB3 == 0)
  		{
  		  if(++g8RxTime>8) //1.2ms
  		 {
			  fRXError();
			  break;
  		 } 
  		}
  		else
  		{
  		
  	 
  			if(g8RxTime < 4)
  			{
  				fRXError();
				break;
  			}
	  		 g8RX=4;	
	  		 g8RxTime=0;
  		}
  		break;
  	case 4:  //解数据码  的高电平
  		if(RB3)
  		{
   		  if(++g8RxTime>20)
  		 {
  		  fRXError();
		  break;
  		 }  		
  		}
  		else
  		{
  			  g8RX=3;
			  if(g8RxTime<4)	//低电平低于0.7ms，错误数据
			  {
					fRXError();
					break;
			  }			
			  if(g8RxTime > 10)
			  {
				g8RxData|=0x80;
			  }
  		    ++g8RxDataBit;
  		   g8RxTime=0;
  		  
  		  if(g8RxDataBit==8)
  		  {
  		    //  解码ok

  		    //g8CtrlFlg|=C_RXOK;
  		   // swap_bits(&g8RxData,&recData1);
  		   recData1 = g8RxData;
  		    g8RxTime=0;
	  		g8RxData=0;
  		   //fRXError();
  		    break;
  		  }
  		    if(g8RxDataBit==16)
  		  {
  		    //  解码ok

  		    //g8CtrlFlg|=C_RXOK;
  		    //swap_bits(&g8RxData,&recData2);
  		     recData2 = g8RxData;
  		    g8RxTime=0;
	  		g8RxData=0;
  		   // fRXError();
  		    break;
  		  }
		  if(g8RxDataBit==24)
  		  {
  		    //  解码ok

  		    //g8CtrlFlg|=C_RXOK;
  		    //swap_bits(&g8RxData,&recData2);
  		     recData3 = g8RxData;
  		    g8RxTime=0;
	  		g8RxData=0;
  		   // fRXError();
  		    break;
  		  }
  		   if(g8RxDataBit==32)
  		  {
  		    //  解码ok
			
  		    g8CtrlFlg|=C_RXOK;
  		    //g8RxDataBuf=g8RxData;
  		     recData4 = g8RxData;
  		   // swap_bits(&g8RxData,&recData3);
  		    fRXError();
  		    break;
  		  }
  		  g8RxData>>=1;
  		  
  		   
  		}
  		break;

  
  }


}

//电极片充电
void pwmOn()
{
	if(chrgPWMFlag)
	{
		return;
	}
	chrgPWMFlag = 1; 
	PWMTH = 0x00;
	PWMTL = 90;
	PWMD01H = 0x00;
	PWMD1L = 50;
	PWMCON1 = 0x40;
	PWMCON2 = 0x00;
	PWMCON0 |= 0x82;
}

void pwmOff()
{
	PWMD1L = 0;
	PWMCON0 &= 0xFD;
	PORTB &= 0x7F;
	chrgPWMFlag = 0;
}


void chrgCtr()
{
	if(0x04 & PORTB)
	{
		//充电中
		chrgFlag = 1;
		workStep = 0;
		lowBatTime = 0;
		lowBatFlag = 0;
		if(tempData < 1181)
		{
			if(++chrgWaitTime > 200)
			{
				chrgWaitTime = 0;
				chrgFullFlag = 1;
			}
		}
		else
		{
			chrgWaitTime = 0;
		}
		
		
	}
	else 
	{

		chrgWaitTime = 0;
		chrgFullFlag = 0;
		chrgFlag = 0;
		//未充电
		if(tempData > 1755)
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


void setMode(u16t zqMaxTime,u16t halfTime,u8t pwmTime)
{

	if(zqTime < pwmTime)
	{
		pwmOn();
		IO1 = 0;
		IO2 = 0;
	}
	else if(zqTime == pwmTime)
	{
		pwmOff();
		IO1 = 1;
		IO2 = 0;
	}
	else if(zqTime == (pwmTime+1))
	{
		if(0x08 & PORTA)
		{
			stopFlag = 0;
		}
		else
		{
			stopFlag = 1;
		}
		IO1 = 0;
		IO2 = 1;
	}
	else if(zqTime < halfTime)
	{
		IO1 = 0;
		IO2 = 0;
	}
	else if(zqTime < halfTime+pwmTime)
	{
		pwmOn();
		IO1 = 0;
		IO2 = 0;
	}
	else if(zqTime == (halfTime + pwmTime))
	{
		pwmOff();
		IO1 = 0;
		IO2 = 1;
	}
	else if(zqTime == (halfTime + (pwmTime + 1)))
	{
		if(0x08 & PORTA)
		{
			stopFlag = 0;
		}
		else
		{
			stopFlag = 1;
		}
		IO1 = 1;
		IO2 = 0;
	}
	else
	{
		IO1 = 0;
		IO2 = 0;
	}

	if(++zqTime >= zqMaxTime)
	{
		zqTime = 0;
		xdTime++;
	}
}




void workCtr()
{
		if(beepTime > 0)
    	{
    		beepTime--;
    	}
    	else
    	{
    		PORTA &= 0xDF;
    	}
    	if(firstShowCount > 0)
    	{
    		firstShowCount--;
    	}
		if(hotStep > 0)
		{
			checkHotAD();
			PORTA &= 0xFC;
			if(hotStep == 1 && hotData > 700)
			{
				PORTA |= 0x03;
			}
			if(hotStep == 2 && hotData > 650)
			{
				PORTA |= 0x03;
			}
			if(hotStep == 3 && hotData > 600)
			{
				PORTA |= 0x03;
			}
			
		}
		else
		{
			PORTA &= 0xFC;
		}
    
		if(motorStep == 1)
		{
			motorDuty = 70;
		}
		else if(motorStep == 2)
		{
			motorDuty = 85;
		}
		else if(motorStep == 3)
		{
			motorDuty = 100;
		}
		else
		{
			motorDuty = 0;
		}
		if(workStep == 0)
		{
			motorStep = 0;
			dlStep = 0;
			hotStep = 0;
			motorDuty = 0;
			PORTA &= 0xE0;
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
		checkKeyAD();
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

void keyAdd()
{
	beepTime = 30;
	if(workStep == 1)
	{
		if(++dlStep > 6)
		{
			dlStep = 6;
		}
	}
	else if(workStep == 2)
	{
		if(++hotStep > 3)
		{
			hotStep = 3;
		}
	}
	else if(workStep == 3)
	{
		if(++motorStep > 3)
		{
			motorStep = 3;
		}
	}
}

void keySub()
{
	beepTime = 30;
	if(workStep == 1)
	{
		if(dlStep > 0)
		{
			dlStep--;
		}
	}
	else if(workStep == 2)
	{
		if(hotStep > 0)
		{
			hotStep--;
		}
	}
	else if(workStep == 3)
	{
		if(motorStep > 0)
		{
			motorStep--;
		}
	}
}


void keyCtr()
{
	char kclick = keyRead(0x40 & (~PORTB));
	if(kclick == 2)
	{
		beepTime = 50;
		if(workStep > 0)
		{
			workStep = 0;
		}
		else
		{
			workStep = 3;
		}
	}
	else if(kclick == 1 && workStep > 0)
	{
		beepTime = 50;
		if(++workStep > 3)
		{
			workStep = 1;
		}
	}
	kclick = keyRead2(0x10 & (~PORTB));
	if(kclick == 1 && workStep > 0)
	{

		if(keyNum == 2)
		{
			keyAdd();
		}
		else if(keyNum == 1)
		{
			keySub();
		}
	}
}


void ledCtr()
{
	if(firstShowCount > 0)
	{
		showNumAShi = 0x7F;
		showNumAge = 0x07;
		
	}
	else if(workStep > 0)
	{
		/*
		if(++showRevTime > 1600)
		{
			showRevTime = 0;
		}
		if(showRevTime < 200)
		{
			showNumAShi = numArray[recData1/16];
		}
		else if(showRevTime < 400)
		{
			showNumAShi = numArray[recData1%16];
		}
		else if(showRevTime < 600)
		{
			showNumAShi = numArray[recData2/16];
		}
		else if(showRevTime < 800)
		{
			showNumAShi = numArray[recData2%16];
		}
		else if(showRevTime < 1000)
		{
			showNumAShi = numArray[recData3/16];
		}
		else if(showRevTime < 1200)
		{
			showNumAShi = numArray[recData3%16];
		}
		else if(showRevTime < 1400)
		{
			showNumAShi = numArray[recData4/16];
		}
		else if(showRevTime < 1600)
		{
			showNumAShi = numArray[recData4%16];
		}
		*/
	
		if(workStep == 1)
		{
			showNumAShi = numArray[dlStep];
			showNumAge = 1;
		}
		else if(workStep == 2)
		{
			showNumAShi = numArray[hotStep];
			showNumAge = 2;
		}
		else if(workStep == 3)
		{
			showNumAShi = numArray[motorStep];
			showNumAge = 4;
		}
	
	}
	else if(chrgFlag)
	{
		showNumAShi = 0x00;
		if(++count500ms >= 50)
		{
			count500ms = 0;
			if(chrgFullFlag)
			{
				showNumAge = 0x07;
			}
			else
			{
				showNumAge <<= 1;
				showNumAge |= 0x01;
				if(showNumAge > 7)
				{
					showNumAge = 1;
				}
			}
		}
	
	}
	else
	{
		showNumAShi = 0x00;
		showNumAge = 0x00;
	}
}


/***********************************************************
主循环
***********************************************************/
void main()
{

	Init_System();
	beepTime = 50;
	firstShowCount = 200;
	while(1)
	{
		fRxFun();
		if(count100us)
		{
			count100us = 0;
			if(dlStep > 0)
			{
				if(xdTime < 10)
				{
					setMode(3300,1650,(dlStep-1)*10 + 5);
				}
				else if(xdTime < 40)
				{
					setMode(2000,1000,(dlStep-1)*10 + 5);
				}
				else if(xdTime < 90)
				{
					setMode(1000,500,(dlStep-1)*10 + 5);
				}
				else if(xdTime < 170)
				{
					setMode(700,350,(dlStep-1)*10 + 5);
				}
				else
				{
					if(xdTime > 320)
					{
						xdTime = 0;
					}
					setMode(380,190,(dlStep-1)*10+5);
				}
			}
			else
			{
				pwmOff();
				PORTA &= 0xE7;
			}
		}
		if(B_MainLoop)
		{
			B_MainLoop = 0;
			CLRWDT();
			ledCtr();
			if(chrgFlag == 0)
				keyCtr();
			workCtr();
			chrgCtr();
			if(PORTB & 0x10)
			{
				checkBatAD();
			}
			if(workStep == 0 && keyCount == 0 && chrgFlag == 0 && firstShowCount == 0)
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