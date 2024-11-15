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
u8t			sleepTime = 0;

void initTM1650();
unsigned int  Read_ADC(unsigned char  ADCchannel,unsigned char  ADCLDORef);
void checkChrgAD();
void gotoSleep();

//ϵͳ��ʼ��
void Init_System() {
	asm("nop");
	asm("clrwdt");
	INTCON = 0;				//��ֹ�ж�
	OSCCON = 0X72;			//������Ϊ8M
	OPTION_REG = 0;


	//��ʱ�ȴ���Դ��ѹ�ȶ�
	//DelayXms(200);
	TRISA = 0x60;
	PORTA = 0;
	TRISB = 0x18;
	PORTB = 0;
	TRISC = 0;
	PORTC = 0;

	PIE1 = 2;
	PR2 = 250;				//8M�½�TMR2����Ϊ125us�ж�
	T2CON = 4;				//ʹ�ܶ�ʱ��2

	INTCON = 0XC0;			//ʹ���ж�
	ADON = 1;
}


/**********************************************************
�������ƣ�Refurbish_Sfr
�������ܣ�ˢ��һЩ���⹦�ܼĴ���
��ڲ�������
���ڲ�������
��    ע��ÿ��һ��ʱ��ˢ��һ��SFR����ǿ����������
**********************************************************/
void Refurbish_Sfr() {
	//ˢ���ж���ؿ��ƼĴ���
	PIE1 = 2;
	PR2 = 250;
	INTCON = 0XC0;
	if (4 != T2CON)
		T2CON = 4;
}


/***********************************************************
��������
***********************************************************/
void KeyServer() {
	static unsigned char KeyOldFlag = 0;
	if (KeyFlag[0]) {
			NoTouchTime = 0;
			if ((KeyFlag[0] & 0x2)) {
				//KEY1������	+
				if(++keyCount1 > 100)
				{
					keyCount1 = 100;
					if(workStep > 1 && ++count50 > 25)
					{
						workStep--;
						count50 = 0;
					}
				}
			}
			if ((KeyFlag[0] & 0x1)) {
				//KEY2������		1
				if(++keyCount2 > 100)
				{
					keyCount2 = 100;
					if(workStep < 30 && (workStep > 0 || ledLightTime > 0) && ++count50 > 25)
					{
						workStep++;
						count50 = 0;
					}
				}
			}
			if (KeyFlag[0] & 0x4) {
				//KEY3������		���ػ�
				if(++keyCount3 > 200)
				{
					keyCount3 = 200;
					if(longKeyFalg == 0)
					{
						longKeyFalg = 1;
						if(workStep > 0 || ledLightTime > 0)
						{
							workStep = 0;
							zeroStep = 0;
							ledLightTime = 0;
						}
						else
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
				}
				if(ledLightTime == 0 && longKeyFalg == 0 && keyCount3 % 16 == 0)
				{
					zeroStep++;
				}
			}

	} else {
		
		if(keyCount1 > 5 && workStep > 1)
		{
			workStep--;
		}
		keyCount1 = 0;
		
		if(keyCount2 > 5 && workStep < 30 && (workStep > 0 || ledLightTime > 0))
		{
			workStep++;
		}
		keyCount2 = 0;
		/*
		if(longKeyFalg == 0 && keyCount3 > 10 && (workStep > 0 || ledLightTime > 0))
		{
			workStep = 0;
		}
		*/
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
  ����  Adc_Result 
  
 ADCchannel Ϊ����ADͨ�� 0-18
             19  ����ڲ�1.2V 
			 20  ���PGA���
 ADCLDORef =1,�����ڲ�LDO 2V ��ΪADC �ο�
 ADCLDORef =2,�����ڲ�LDO 2.4V ��ΪADC �ο�
 ADCLDORef =0,VDD ��ΪADC �ο�
*****************************************/
unsigned int  Read_ADC(unsigned char  ADCchannel,unsigned char  ADCLDORef)
{
	unsigned int	Adc_Result;
	unsigned int	Adc_ResultSum = 0;
	unsigned char i=200;
	unsigned char j = 0;
	for(j=0;j<8;j++)
	{
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
		Adc_ResultSum += Adc_Result;
	}
	return Adc_ResultSum/8;
	
}

void checkChrgAD()
{
	chrgResult = Read_ADC(16,1);
}

void checkBat()
{
	batResult = Read_ADC(10,1);
	if(batResult < 1118)
	{
		batValue = 0;
	}	
	else
	{
		if(batResult >= 1340)
		{
			batValue = ((batResult - 1340) /2) + 16;
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
�жϷ�����
***********************************************************/
void interrupt Isr_Timer() {
	if (TMR2IF) {			//��ֻʹ����һ���ж�Դ,������ȥ�ж�
		TMR2IF = 0;
		if(++MainTime >= 64)	//�������ѡ��Ĵ���·���ʹ�������ѡ��ɨ��һ�ΰ�����ʱ��
		{						//һ��103���ݣ�8·������8M��Ƶ���ʱ��Լ4ms����ɨ��һ�ε�ʱ���ѡ5ms
			MainTime = 0;
			B_MainLoop = 1;
		}
	} else {
		PIR1 = 0;
	}
	
	if(RACIF)
	{
		RACIF = 0;			//���жϱ�־
		PORTA;				//�粻�ر�PB�жϣ������ٶ�ȡһ��PB�������Ƶ�������ж�
		//Init_System();
	}

}


/************ START�ź�*******************************/
void TM1650_START()
{
	SCL=1;
	SDA=1;
	nop;
	SDA=0;
	nop;
	SCL=0;
}

/******************** STOP�ź�************************/
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


/****************д1���ֽڸ�TM1650********************/
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
		SDA=1;			//ACK�ź�
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
	 tm1650cmd(0X68,0xFF);	//��λԲȦǰ��4����	��λ3��������
	nop;
	tm1650cmd(0X6A,0xFF);	//ʮλ
	nop;
	  tm1650cmd(0X6C,0xFF);	//��λ
	nop;
	  tm1650cmd(0X6E,0xFF);//ԲȦ����8����
	//DelayS(2);
    //tm1650cmd(0X48,0x00); 
}

void refreshTM1650()
{
	if(showFlag)
	{
		tm1650cmd(0X48,0x11);
		nop;
		tm1650cmd(0X68,showLed2);
		nop;
		tm1650cmd(0X6A,showShiWei);
		nop;
		tm1650cmd(0X6C,showGeWei);
		nop;
		tm1650cmd(0X6E,showLed1);
	}
	else
	{
		tm1650cmd(0X48,0x00); 
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

void showCtr()
{
	if(workStep > 0)
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
		showShiWei = numArray[preBatValue/10];
		showGeWei = numArray[preBatValue%10];
		showLed1 = 0xFF;
		showLed2 = 0xFF;
	}
	else if(chrgFlag)
	{	
		showFlag = 1;
		sleepTime = 0;
		showLed1 = 0x00;
		showLed2 = 0x00;
		showShiWei = numArray[preBatValue/10];
		showGeWei = numArray[preBatValue%10];
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
		showFlag = 0;
		if(++sleepTime > 200)
		{
			sleepTime = 0;
			gotoSleep();
		}
	}
}

void workCtr()
{
	if(workStep > 0)
	{
		PWMIOS0 = 0x01;
		PWMTH = 0x00;
		PWMTL = 100;
		PWMD01H = 0x00;
		PWMD0L = 69 + workStep;
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
		PWMCON0 = 0x00;				//�ر�PWM���
	}
}

void chrgCtr()
{
	if(0x20 & PORTA)
	{
		checkChrgAD();
		chrgFlag = 1;
		workStep = 0;
		ledLightTime = 0;
		if(batResult > 1545)
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
			if(++count900s > 900)
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

void gotoSleep()
{
	INTCON = 0;
	PIE1 = 0;		
	T2CON = 0;		//�رն�ʱ��
	OPTION_REG = 0;
	PORTA = 0B00000000;
	PORTB = 0B10000000;
	PORTC = 0x01;
	ADCON0 = 0;					//�ر�����ģ��
	PWMCON0 = 0;
	EECON1 = 0;					//��˼Ĵ���,�кô�		
   	IOCB = 0B00000000;			
	RBIE = 0;					//����PORTB��ƽ�仯�ж�
	IOCA = 0x3C;				//����RA5 RA4 RA3 RA2
	RACIE = 1;
	GIE = 0;					//GIE = 0ʱ�����Ѻ�ִ��SLEEP�����;GIE = 1ʱ�����Ѻ������жϷ���
	OSCCON = 0X70;				//������Ϊ16M,�ر�WDT
	PORTA;						//��PORTBֵ������			
	asm("clrwdt");
	asm("STOP");				//��������ģʽ
	asm("nop");
	Init_System();
}

/***********************************************************
��ѭ��
***********************************************************/
void main() {
	Init_System();
	initTM1650();
	firstTime = 500;
	while (1) {
		if (B_MainLoop) {
			B_MainLoop = 0;
			CLRWDT();

			CheckTouchKey();

			Refurbish_Sfr();
			KeyServer();
			showCtr();
			workCtr();
			checkBat();
			chrgCtr();
			task1();
		}
	}
}