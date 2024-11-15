#include <sc.h>
#include "Touch_Kscan_Library.h"



#define		uchar		unsigned char
#define		u8t		unsigned char
#define		uint			unsigned int
#define		u16t			unsigned int
#define		ulong		unsigned long

#define		SDA	RB7
#define		SCL	RC0

#define nop asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");

const static unsigned char numArray[]={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x71,0x79,0x50,0x73};

volatile unsigned char MainTime;
volatile bit	B_MainLoop, B_OnOff;
u16t		firstTime = 0;
u16t			keyCount1 = 0;
u16t			keyCount2 = 0;
u16t			keyCount3 = 0;
u8t			longKeyFalg = 0;
u8t			workStep = 0;
u8t			zeroStep = 0;
u16t		ledLightTime = 0;
u8t			shanShuoTime = 0;
u8t			lowBatLockFlag = 0;
u8t			showFlag = 0;
u8t			showShiWei = 0;
u8t			showGeWei = 0;
u8t			showLed1 = 0;
u8t			showLed2 = 0;
u8t			count64ms = 0;
u8t			count1s = 0;
u8t			chrgFlag = 0;
u8t			batValue = 0;
u16t		batResult = 0;
u8t			preBatValue = 0;
u16t		chrgResult = 0;
u8t			NoTouchTime = 0;
u8t			count50 = 0;
u8t			chrgFullFlag = 0;
u8t			chrgDuty = 0;
u8t			addTime = 0;
u8t			subTime = 0;
u8t			count15s = 0;
u8t			chrgLockFlag = 0;
u16t		chrgFullTime = 0;
u16t		count900s = 0;
u16t			sleepTime = 0;
u8t			lowBatFlag = 0;
u8t			lowBatTime = 0;
u16t		tempResult = 0;
u8t			checkTempTime = 0;
u8t			chrgBatStep = 0;
u8t			chrgBatStepTime = 0;
u8t			key1ProtectTime = 0;
u8t			key2ProtectTime = 0;
u8t			key3ProtectTime = 0;
u8t			keyCancelTime = 0;
u8t			preZero = 0;		//记录灯亮了几个


void initTM1650();
unsigned int  Read_ADC(unsigned char  ADCchannel,unsigned char  ADCLDORef);
void checkChrgAD();
void gotoSleep();
void checkTempAD();
void tm1650cmd(u8t digAddr,u8t seg_data);
u8t TM1650_read();

//系统初始化
void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;				//禁止中断
	OSCCON = 0X71;			//配置振荡为8M
	OPTION_REG = 0;
	SWDTEN = 1;
	CLRWDT();
	
	//延时等待电源电压稳定
	//DelayXms(200);
	TRISA = 0x22;
	PORTA = 0;
	TRISB = 0x18;
	PORTB = 0;
	WPUB = 0x00;
	TRISC = 0;
	PORTC = 0;
	WPUC = 0x00;

	PIE1 = 2;
	PR2 = 250;				//8M下将TMR2设置为125us中断
	T2CON = 4;				//使能定时器2

	INTCON = 0XC0;			//使能中断
	ADCON0 = 0XC1;
	ADON = 1;
}


/**********************************************************
函数名称：Refurbish_Sfr
函数功能：刷新一些特殊功能寄存器
入口参数：无
出口参数：无
备    注：每隔一定时间刷新一次SFR可增强抗干扰能力
**********************************************************/
void Refurbish_Sfr() {
	//刷新中断相关控制寄存器
	PIE1 = 2;
	PR2 = 250;
	INTCON = 0XC0;
	if (4 != T2CON)
		T2CON = 4;
}


void KeyServer() {
	if(key1ProtectTime > 0)
	{
		key1ProtectTime--;
	}
	if(key2ProtectTime > 0)
	{
		key2ProtectTime--;
	}
	if(key3ProtectTime > 0)
	{
		key3ProtectTime--;
	}
	static unsigned char KeyOldFlag = 0;
	if (KeyFlag[0]) {
			NoTouchTime = 0;
			sleepTime = 0;
			if ((KeyFlag[0] & 0x2) && key2ProtectTime == 0 && key3ProtectTime == 0) {
				//KEY1被按下	+
				key1ProtectTime = 5;
				if(++keyCount1 > 45)
				{
					keyCount1 = 45;
					if(workStep > 1 && ++count50 > 25)
					{
						workStep--;
						count50 = 0;
					}
				}
			}
			if ((KeyFlag[0] & 0x1) && key1ProtectTime == 0 && key3ProtectTime == 0) {
				//KEY2被按下		1
				key2ProtectTime = 5;
				if(++keyCount2 > 45)
				{
					keyCount2 = 45;
					if(workStep < 20 && (workStep > 0 || ledLightTime > 0) && ++count50 > 25)
					{
						workStep++;
						count50 = 0;
					}
				}
			}
			if ((KeyFlag[0] & 0x4) && key2ProtectTime == 0 && key1ProtectTime == 0) {
				//KEY3被按下		开关机
				key3ProtectTime = 5;
				if(++keyCount3 > 200)
				{
					keyCount3 = 200;
					if(longKeyFalg == 0)
					{
						longKeyFalg = 1;
						if(workStep > 0 || ledLightTime > 0)
						{
							workStep = 0;
							zeroStep = 12;
							ledLightTime = 0;
						}
						else if(lowBatFlag == 0)
						{
							workStep = 0;
							zeroStep = 0;
							ledLightTime = 300;
							if(lowBatLockFlag)
							{
								shanShuoTime = 250;
							}
						}
					}
					else if(zeroStep > 0 && ++count64ms >= 12)
					{
						zeroStep--;
						count64ms = 0;
					}
				}
				if(lowBatFlag == 0 && ledLightTime == 0 && longKeyFalg == 0 &&  keyCount3 % 16 == 0)
				{
					zeroStep++;
					preZero = zeroStep;
				}
			}
			keyCancelTime = 0;
	} 
	else  
	{
		if(++keyCancelTime > 5)
		{
			keyCancelTime = 0;
			if(keyCount1 > 5 && workStep > 1)
			{
				workStep--;
			}
			keyCount1 = 0;
			
			if(keyCount2 > 5 && workStep < 20 && (workStep > 0 || ledLightTime > 0))
			{
				workStep++;
			}
			keyCount2 = 0;
		}
		/*
		if(longKeyFalg == 0 && keyCount3 > 10 && (workStep > 0 || ledLightTime > 0))
		{
			workStep = 0;
		}
		*/
		if(preZero == 1 || preZero == 2)
		{
			preZero = 0;
			zeroStep = 3;
		}
		longKeyFalg = 0;
		keyCount3 = 0;
		if(zeroStep > 0 && ++count64ms >= 12)
		{
			zeroStep--;
			count64ms = 0;
		}
	}
}


/******************************************
  返回  Adc_Result 
  
 ADCchannel 为输入AD通道 0-18
             19  检测内部1.2V 
			 20  检测PGA输出
 ADCLDORef =1,开启内部LDO 2V 作为ADC 参考
 ADCLDORef =2,开启内部LDO 2.4V 作为ADC 参考
 ADCLDORef =0,VDD 作为ADC 参考
*****************************************/
unsigned int  Read_ADC(unsigned char  ADCchannel,unsigned char  ADCLDORef)
{
	unsigned int	Adc_Result;
	unsigned int	Adc_ResultSum = 0;
	unsigned char i=200;

		if(ADCLDORef==0)
		{
			ADCON1 = 0B00000000;
		}
		else if(ADCLDORef==1)
		{
			ADCON1 = 0B00000101;
		}
		else
		{
			ADCON1 = 0B00000110;	
		}
		
		CHS4 = 0;	
		if(ADCchannel >=16)
		{
			ADCchannel -= 16;	
			CHS4 = 1;	
		}
		
		ADCON0 &= 0b11000011;
		ADCON0 |= ADCchannel<<2; 
		asm("nop");
		GODONE = 1;
		while(GODONE==1&&i>0)
		{
			i--;
			asm("nop");
		}
		Adc_Result = ADRESH<<4;
		Adc_Result += ADRESL>>4;
	return Adc_Result;
	
}

void checkChrgAD()
{
	chrgResult = Read_ADC(16,1);
}

void checkTempAD()
{
	PORTA |= 0x01;
	tempResult = Read_ADC(1,1);
	if(tempResult < 130)
	{
		//高于65度关机
		if(++checkTempTime > 200)
		{
			checkTempTime = 0;
			workStep = 0;
			
		}
	}
	else
	{
		checkTempTime = 0;
	}
}

void checkBat()
{
	batResult = Read_ADC(10,1);
	if(batResult < 1118)
	{
		batValue = 0;
		if(workStep > 0 && ++lowBatTime > 200)
		{
			lowBatTime = 0;
			lowBatFlag = 1;
			workStep = 0;
			zeroStep = 12;
			ledLightTime = 0;
		}
	}	
	else
	{
		lowBatTime = 0;
		if(batResult >= 1376)
		{
			batValue = ((batResult - 1376) /2) + 16;
		}
		else
		{
			batValue = (batResult - 1118) / 16;
		}
		
		if(batValue > 99)
	   		batValue = 99;
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
		}
	}
	else
	{
		PIR1 = 0;
	}
	
	if(RACIF)
	{
		RACIF = 0;			//清中断标志
		PORTA;				//如不关闭PB中断，则需再读取一遍PB，否则会频繁进入中断
		//Init_System();
	}
	

	if(RCCIF)
	{
		RCCIF = 0;			//清中断标志
		PORTC;				//如不关闭PB中断，则需再读取一遍PB，否则会频繁进入中断
		//Init_System();
	}
}

void WorkSleep()
{

#if (0 != C_KEY_WAKEUP)
	static unsigned char time;
	
	if(B_OnOff)time = 0;
	
	//if(++time >= 125)
	//{

		time = 0;
		INTCON = 0;			//;关断ADC模块及中断使能；
		PIE1 = 0;
		PIE2 = 0;
		PIR1 = 0;
		PIR2 = 0;
		T2CON = 0;
		ADCON1 = 0;
		SWDTEN = 0;
		CLRWDT();
		//进入休眠前关掉所有功能模块,以降低休眠电流
		ADCON0 = 0;
	
		//进入休眠前,必须固定口线电平,这儿全部输出低电平,并关闭所有上拉电阻
		TRISA = 0x22;
		PORTA = 0;
		TRISB = 0x18;
		TRISC = 0x00;
		PORTC = 0x01;
		PORTB = 0x80;
		RACIF = 0;
		IOCA = 0x20;				//允许RA5
		RACIE = 1;
		PORTA;
/****如需要PC口中断唤醒，使能下列程序并按需修改****
			TRISC0 =1;	//输入
			WPUC0 = 1;	//上拉			
			RCCIF = 0;	//清标志
			RCCIE = 1;	//允许PC口电平变化中断
			IOCC0 = 1;	//允许PC0电平变化中断
			PEIE = 1;	//允许外设中断
			PORTC;		//读一次PC口			
**********************************/	

		//进入休眠模式,触摸允许唤醒的按键后恢复正常工作
		SystemEnterSleep();
		nop;
		if(RACIF) 
		{
			RACIF = 0;
			PORTA;
		}
		if(RCCIF) 
		{
			RCCIF = 0;
			PORTC;
		}
		//休眠被唤醒,重新配置中断等SFR,使系统进入正常工作
		Refurbish_Sfr();
		Init_System();
	//}
#endif
}



/************ START信号*******************************/
void TM1650_START()
{
	SCL=1;
	SDA=1;
	nop;
	SDA=0;
	nop;
	SCL=0;
}

/******************** STOP信号************************/
void TM1650_STOP()
{
	SDA=0;
	nop;
	SCL=1;
	nop;
	SDA=1;
	nop;
	SCL=0;
	SDA=0;
}


/****************写1个字节给TM1650********************/
void write_8bit( uchar dat)
{
 	uchar i;
	SCL=0;
	for(i=0;i<8;i++)
		{
		if(dat&0x80)
		{
			SDA=1;
			nop;
			nop;
			SCL=1;
			nop;
			nop;
			nop;
			nop;
			nop;
			SCL=0;	 
		}
		else
		{
			SDA=0;
			nop;
			nop;
			SCL=1;
			nop;
			nop;
			nop;
			nop;
			nop;
			SCL=0;
		}	
			dat<<=1;	 
		}
		SDA=1;			//ACK信号
		nop;
		nop;
		nop;
		nop;
		SCL=1;
		nop;
		nop;
		nop;
		nop;
		nop;
		SCL=0;
		nop;
		nop;	 
}


/****读8bit
注意：本程序采用双向IO口，对于需要配置端口特性的MCU需要注意
在发送指令时配置为输出模式;
接受ACK为输入模式；
读数据位输入模式；
**************************/
u8t read_8bit()
{
	uchar dat,i;
	SDA=1;
	dat=0;
	for(i=0;i<8;i++)
	{
	SCL=1;                        //时钟上沿
	nop;
	nop;
	nop;
	dat<<=1;
	if(SDA)
	 dat++;
	SCL=0;
	nop;
	nop;
	nop;
	nop;
	}
	SDA=0;			    //ACK信号
	nop;
	nop;
	nop;
	SCL=1;
	nop;
	nop;
	nop;
	nop;
	SCL=0;
	nop;
	
	return dat ;
} 

u8t TM1650_read()
{
	u8t key;
	TM1650_START();
    write_8bit(0x48);   //读按键指令	
	key=read_8bit();
	TM1650_STOP();
	return key;
}

void tm1650cmd(u8t digAddr,u8t seg_data)
{
	TM1650_START();
    write_8bit(digAddr);
    write_8bit(seg_data);
    TM1650_STOP();
}


void initTM1650()
{
    tm1650cmd(0X48,0x11);
    nop;
	 tm1650cmd(0X68,0xFF);	//低位圆圈前面4个灯	高位3个按键灯
	nop;
	tm1650cmd(0X6A,0xFF);	//十位
	nop;
	  tm1650cmd(0X6C,0xFF);	//个位
	nop;
	  tm1650cmd(0X6E,0xFF);//圆圈后面8个灯
	//DelayS(2);
    //tm1650cmd(0X48,0x00); 
}

void refreshTM1650()
{
	if(showFlag)
	{
		tm1650cmd(0X48,0x21);
		nop;
		tm1650cmd(0X68,showLed2);
		nop;
		tm1650cmd(0X6A,showShiWei);
		nop;
		tm1650cmd(0X6C,showGeWei);
		nop;
		tm1650cmd(0X6E,showLed1);
	}
	else if(sleepTime < 10)
	{
		tm1650cmd(0X68,0);
		nop;
		tm1650cmd(0X6A,0);
		nop;
		tm1650cmd(0X6C,0);
		nop;
		tm1650cmd(0X6E,0);
		nop;
		tm1650cmd(0X48,0x00);
		nop;
		showShiWei = 0x00;
		showGeWei = 0x00;
		showLed1 = 0x00;
		showLed2 = 0x00;
	}
}


void setZeroStep()
{
	if(zeroStep == 0)
	{
		showLed1 = 0x00;
		showLed2 = 0x00;
	}
	else if(zeroStep == 1)
	{
		showLed1 = 0xE1;
		showLed2 = 0x00;
	}
	else if(zeroStep == 2)
	{
		showLed1 = 0xE3;
		showLed2 = 0x00;
	}
	else if(zeroStep == 3)
	{
		showLed1 = 0xE7;
		showLed2 = 0x00;
	}
	else if(zeroStep == 4)
	{
		showLed1 = 0xFF;
		showLed2 = 0x00;
	}
	else if(zeroStep == 5)
	{
		showLed1 = 0xFF;
		showLed2 = 0x01;
	}
	else if(zeroStep == 6)
	{
		showLed1 = 0xFF;
		showLed2 = 0x03;
	}
	else if(zeroStep == 7)
	{
		showLed1 = 0xFF;
		showLed2 = 0x07;
	}
	else if(zeroStep == 8)
	{
		showLed1 = 0xFF;
		showLed2 = 0x0F;
	}
	else if(zeroStep == 9)
	{
		showLed1 = 0xFF;
		showLed2 = 0x2F;
	}
	else if(zeroStep == 10)
	{
		showLed1 = 0xFF;
		showLed2 = 0x6F;
	}
	else if(zeroStep == 11)
	{
		showLed1 = 0xFF;
		showLed2 = 0xEF;
	}
	else if(zeroStep == 12)
	{
		showLed1 = 0xFF;
		showLed2 = 0xEF;
	}
}


void setZeroStep2()
{
	if(zeroStep == 0)
	{
		showLed1 = 0x00;
		showLed2 = 0x00;
	}
	else if(zeroStep == 1)
	{
		showLed1 = 0x01;
		showLed2 = 0x00;
	}
	else if(zeroStep == 2)
	{
		showLed1 = 0x02;
		showLed2 = 0x00;
	}
	else if(zeroStep == 3)
	{
		showLed1 = 0x04;
		showLed2 = 0x00;
	}
	else if(zeroStep == 4)
	{
		showLed1 = 0x10;
		showLed2 = 0x00;
	}
	else if(zeroStep == 5)
	{
		showLed1 = 0x00;
		showLed2 = 0x01;
	}
	else if(zeroStep == 6)
	{
		showLed1 = 0x00;
		showLed2 = 0x02;
	}
	else if(zeroStep == 7)
	{
		showLed1 = 0x00;
		showLed2 = 0x04;
	}
	else if(zeroStep == 8)
	{
		showLed1 = 0x00;
		showLed2 = 0x08;
	}
	else if(zeroStep == 9)
	{
		showLed1 = 0x00;
		showLed2 = 0x20;
	}
	else if(zeroStep == 10)
	{
		showLed1 = 0x00;
		showLed2 = 0x40;
	}
	else if(zeroStep == 11)
	{
		showLed1 = 0x00;
		showLed2 = 0x80;
	}
	else if(zeroStep == 12)
	{
		showLed1 = 0x00;
		showLed2 = 0x10;
	}
}

void showCtr()
{
	if(firstTime > 0)
	{
		showFlag = 1;
		sleepTime = 0;
		initTM1650();
	}
	else if(workStep > 0)
	{
		showFlag = 1;
		sleepTime = 0;
		showLed1 = 0xFF;
		showLed2 = 0xFF;
		showShiWei = numArray[workStep / 10];
		showGeWei = numArray[workStep % 10];
	}
	else if(ledLightTime > 0)
	{
		showFlag = 1;
		sleepTime = 0;
		if(preBatValue >= 85)
		{
			showShiWei = numArray[9];
			showGeWei = numArray[9];
		}
		else if(preBatValue > 60)
		{
			showShiWei = numArray[8];
			showGeWei = numArray[0];
		}
		else if(preBatValue > 40)
		{
			showShiWei = numArray[6];
			showGeWei = numArray[0];
		}
		else if(preBatValue > 20)
		{
			showShiWei = numArray[4];
			showGeWei = numArray[0];
		}
		else if(preBatValue > 0)
		{
			showShiWei = numArray[2];
			showGeWei = numArray[0];
		}
		else
		{
			showShiWei = numArray[0];
			showGeWei = numArray[0];
		}
		showLed1 = 0xFF;
		showLed2 = 0xFF;
	}
	else if(chrgFlag)
	{	
		showFlag = 1;
		sleepTime = 0;
		if(++chrgBatStepTime > 63)
		{
			chrgBatStepTime = 0;
			if(preBatValue >= 99)
			{
				zeroStep = 0;
				showShiWei = numArray[9];
				showGeWei = numArray[9];
			}
			else 
			{
				if(++zeroStep > 12)
				{
					zeroStep = 1;
				}
				showShiWei = 0x00;
				showGeWei = 0x00;
			}
		}
		setZeroStep2();
		
	}
	else if(zeroStep > 0)
	{
		showFlag = 1;
		sleepTime = 0;
		showShiWei = showGeWei = 0;
		setZeroStep();
	}
	else
	{
		if(sleepTime > 10 && sleepTime % 20 == 0)
		{
			showFlag = 0;
			tm1650cmd(0X48,0x04);
			PORTC |= 0x01;
			PORTB |= 0x80;
		}
		if(++sleepTime > 40)
		{
			sleepTime = 0;
			WorkSleep();
		}
		
	}
}

void workCtr()
{
	if(workStep > 0)
	{
		checkTempAD();
		PWMIOS0 = 0x01;
		PWMTH = 0x00;
		PWMTL = 100;
		PWMD01H = 0x00;
		if(workStep <= 10)
		{
			PWMD0L = 50 + workStep;
		}
		else
		{
			PWMD0L = 40 + (workStep*2);
		}
		PWMCON1 = 0x00;
		PWMCON2 = 0x00;
		PWMCON0 = 0x41;
	}
	else if(chrgFlag && chrgFullFlag == 0 && chrgLockFlag == 0)
	{
		if(chrgResult < 70 && batResult <= 1555)
		{
			if(++addTime > 10 && chrgDuty < 35)
			{
				addTime = 0;
				chrgDuty++;
			}
		}
		else
		{
			addTime = 0;
		}
		if(chrgResult > 80 || batResult > 1555)
		{
			if(++subTime > 10 && chrgDuty > 10)
			{
				subTime = 0;
				chrgDuty--;
			}
		}
		else
		{
			subTime = 0;
		}
		PWMIOS1 = 0x20;
		PWMTH = 0x00;
		PWMTL = 70;
		PWMD23H = 0x00;
		PWMD3L = chrgDuty;
		PWMCON1 = 0x00;
		PWMCON2 = 0x00;
		PWMCON0 = 0x08;
	}
	else
	{
		PWMCON0 = 0x00;				//关闭PWM输出
	}
}

void chrgCtr()
{
	if(0x20 & PORTA)
	{
		checkChrgAD();
		chrgFlag = 1;
		workStep = 0;
		lowBatFlag = 0;
		ledLightTime = 0;
		if(batResult > 1555)
		{
			if(++chrgFullTime > 2500)
			{
				chrgFullTime = 0;
				chrgFullFlag = 1;
			}
		}
		else
		{
			chrgFullTime = 0;
		}
	}
	else
	{
		if(chrgFlag)
		{
			zeroStep = 0;
		}
		chrgFlag = 0;
		chrgFullFlag = 0;
		chrgFullTime = 0;
		chrgDuty = 0;
		chrgLockFlag = 0;
	}
}

void task1()
{
	if(firstTime > 0)
	{
		firstTime--;
		if(preBatValue < batValue)
		{
			preBatValue = batValue;
		}
	}
	else
	{
		refreshTM1650();
	}
	if(++count1s >= 250)
	{
		count1s = 0;
		if(workStep > 0)
		{
			if(++count900s > 675)
			{
				count900s = 0;
				workStep = 0;
				zeroStep = 0;
				ledLightTime = 0;
			}
		}
		else
		{
			count900s = 0;
		}
		if(ledLightTime > 0)
		{
			ledLightTime--;
		}
		if(chrgFlag)
		{
			if(preBatValue < 99 && preBatValue < batValue)
			{
				if(++count15s >= 15)
				{
					count15s = 0;
					preBatValue++;
				}
			}
			else
			{
				count15s = 0;
			}
		}
		else
		{
			if(preBatValue > 0 && preBatValue > batValue)
			{
				if(++count15s >= 15)
				{
					count15s = 0;
					preBatValue--;
				}
			}
			else
			{
				count15s = 0;
			}
		}
	}

}


/***********************************************************
主循环
***********************************************************/
void main()
{
	Init_System();
	initTM1650();
	firstTime = 250;
	while(1)
	{
		if(B_MainLoop)
		{
			B_MainLoop = 0;
			CLRWDT();
			
			CheckTouchKey();
			
			Refurbish_Sfr();
			if(chrgFlag == 0)
				KeyServer();
			showCtr();
			workCtr();
			checkBat();
			chrgCtr();
			task1();
			
		}
	}
}