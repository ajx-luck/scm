#include <sc.h>
#include "number.h"

#ifndef _XTAL_FREQ
#define _XTAL_FREQ 8000000			//8MHz,ʹ��������ʱ�������붨����Ƶ��
									//����16M��Ĵ˲���Ϊ16000000
#endif
#define     POWER_RATIO  	(4096UL*1.2*1000)




volatile unsigned char MainTime;
volatile bit	B_MainLoop,B_OnOff;
u16t  R_AIN4_DATA;	
u8t R_AIN4_DATA_LB;
u16t  R_AIN2_DATA;	
u8t R_AIN2_DATA_LB;
u8t intCount = 0;
u16t sleepTime = 0;
u8t count1s = 0;
u8t	intCount10 = 0;
u8t	workStep = 0;
u8t	count900s = 0;
u8t	keyCount = 0;
u8t	keyCount2 = 0;
u8t	keyCount3 = 0;
u8t	longPressFlag = 0;
u8t	firstTime = 0;
u16t	batValue = 0;
u8t		batStep = 0;
u8t		chrgLedStepTime = 0;
u8t		showBatStep = 0;
u8t		batLedStep = 0;
u16t	chanceBatTime = 0;
u16t	temValue = 0;
u8t		tempNum = 0;
u8t		maxTempNum = 0;
u8t		showTmepNum = 0;
u8t		chanceTempNumTime = 0;
u8t		showWorkStepTime = 0;
u8t		lowBatTime = 0;
u8t		tempCheckTime = 0;
u8t		showOffTime = 0;
u8t		showMaxTemp = 160;
u8t		lowBatFlag = 0;
u8t		checkNTCTime = 0;
u16t	count1200s = 0;
u8t		firstShowBatTime = 0;
u8t		keyNum = 0;
u8t		zfStep;
u16t	motorTime;
u8t		beepTime;
u8t		beepFlag;
u8t		chrgFlag = 0;
u16t	R_AIN6_DATA = 0;
u8t		overTime = 0;
const static unsigned char numArray[]={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x71,0x79,0x50};

extern u8t		showNumAShi;
extern u8t		showNumAge;
extern u8t		showNumBShi;
extern u8t		showNumBat;

volatile unsigned int adresult;
volatile unsigned int result;
volatile unsigned char test_adc;
volatile unsigned int power_ad;

void chrgCtr();
void Sleep_Mode();
void pwm1Stop();
void pwm1Init();
unsigned char ADC_Sample(unsigned char adch, unsigned char adldo);

//ϵͳ��ʼ��
void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;				//��ֹ�ж�
	OSCCON = 0X72;			//������Ϊ8M
	OPTION_REG = 0;
	
	
	//��ʱ�ȴ���Դ��ѹ�ȶ�
	//DelayXms(200);
	TRISA = 0xE3;
	PORTA = 0x00;
	WPUA = 0x81;
	TRISB = 0x81;
	PORTB = 0;
	WPUB = 0x01;
	TRISC = 0x00;
	PORTC = 0;

	PIE1 = 2;
	PR2 = 250;				//8M�½�TMR2����Ϊ125us�ж�
	T2CON = 4;				//ʹ�ܶ�ʱ��2

	INTCON = 0XC0;			//ʹ���ж�
	ADCON0 = 0X41;
	ADON = 1;
	ADCON1 = 0x00;
}


/**********************************************************
�������ƣ�Refurbish_Sfr
�������ܣ�ˢ��һЩ���⹦�ܼĴ���
��ڲ�������
���ڲ�������
��    ע��ÿ��һ��ʱ��ˢ��һ��SFR����ǿ����������
**********************************************************/
void Refurbish_Sfr() 
{
	//ˢ���ж���ؿ��ƼĴ���
	PIE1 = 2;
	PR2 = 250;
	INTCON = 0XC0;
	if (4 != T2CON)
		T2CON = 4;
}


/***********************************************************
�жϷ�����
***********************************************************/
void interrupt Isr_Timer()
{
	if(TMR2IF)				//��ֻʹ����һ���ж�Դ,������ȥ�ж�
	{
		TMR2IF = 0;
		if(++intCount10 > 3)
		{
			intCount10 = 0;
			if(beepFlag)
			{
				PORTC ^= 0x02;
			}
			else
			{
				PORTC &= 0xFD;
			}
		}
		if(++MainTime >= 158)	//�������ѡ��Ĵ���·���ʹ�������ѡ��ɨ��һ�ΰ�����ʱ��
		{						//һ��103���ݣ�8·������8M��Ƶ���ʱ��Լ4ms����ɨ��һ�ε�ʱ���ѡ5ms
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
�������ƣ�Sleep_Mode
�������ܣ���������ģʽ
��ڲ�������
���ڲ�������
��ע��
************************************************/
void Sleep_Mode()
{
	INTCON = 0;		
	
	OPTION_REG = 0;

	TRISA = 0xE3;
	PORTA = 0x00;
	WPUA = 0x81;
	TRISB = 0x81;
	PORTB = 0;
	WPUB = 0x01;
	TRISC = 0x00;
	PORTC = 0;
	
   	ADCON0 = 0;					//�ر�����ģ��
	ADCON1 = 0;
	
	PWMCON0 = 0;
		
	OSCCON = 0X70;				//������Ϊ8M,�ر�WDT����ע��оƬ����ѡ����WDT����ѡΪDISABLE,�����޷�����ص�WDT
	T2CON = 0;					//�رն�ʱ��2
	IOCA = 0B00000010;			//����RA0��IO��ƽ�仯�ж�
	IOCB = 0B00000001;			//����RB3��IO�ڵ�ƽ�仯�ж�
	
	RAIE = 1;					//����PORTA��IO��ƽ�仯�ж�
	RBIE = 1;
	PEIE = 1;					//Ҫ��RORTA�жϻ��ѣ���PEIE������Ϊ1
	//RBIE = 1;					//����PORTB��ƽ�仯�ж�
	GIE = 0;					//���Ѻ�ִ��SLEEP�����;
	

	PORTA;						//��PORTAֵ������,�õ�ƽ�仯�жϱ���ִ����һ��
	RAIF = 0;					//��PORTA�жϱ�־λ
	RBIF = 0;
	PORTB;						//��PORTBֵ������	
	//RBIF = 0;					//��PORTB�жϱ�־λ		
	asm("clrwdt");

	asm("sleep");				//��������ģʽ
	
	asm("nop");
	asm("clrwdt");
	if(RAIF)  RAIF = 0;			//���жϱ�־
	//if(RBIF)  RBIF = 0;			//���жϱ�־
	Init_System();
}



/**********************************************************
�������ƣ�AD_Sample
�������ܣ�AD���
��ڲ�����adch - ���ͨ��
���ڲ�������
��    ע������ͨ������������Ϊ�����
	      ����10��,ȡ�м�˴ε�ƽ��ֵΪ�����������adresult��

	      adch Ϊ����ADͨ�� 0-15��31
             31  ����ڲ�1.2V
	
 		  adldo =5,�����ڲ�LDO 2V ��ΪADC �ο�
 		  adldo =6,�����ڲ�LDO 2.4V ��ΪADC �ο�
		  adldo =7,�����ڲ�LDO 3V ��ΪADC �ο�
 		  adldo =0,VDD ��ΪADC �ο�
 		  ADת����������
 		  ADC�ο���ѹ��VDD�л���LDOʱ��Ҫ��ʱ100us���ϣ����ܽ���ADת��
**********************************************************/
unsigned char ADC_Sample(unsigned char adch, unsigned char adldo) 
{
	volatile unsigned long adsum = 0;
	volatile unsigned int admin = 0, admax = 0;
	volatile unsigned int ad_temp = 0;

	if ((!LDO_EN) && (adldo & 0x04) ) 
	{
								//���AD�ο���VDD�����ڲ�LDO����Ҫ��ʱ100US����
		ADCON1 = adldo;			//�����,ADֵȡ12λ
		__delay_us(100);		//IDE������ʱ��������ʱ100us
	} 
	else
		ADCON1 = adldo;			//���ADCON1.7(ADFM)=1Ϊ�Ҷ��룬,ADֵȡ10λ

	if(adch & 0x10) 
	{
		CHS4 = 1;
		adch &= 0x0f;
	}
	unsigned char i = 0;
	for (i = 0; i < 10; i++) 
	{
		ADCON0 = (unsigned char)(0X41 | (adch << 2));	//16��Ƶ�������ƵΪ16M�������ѡ16��Ƶ������
		asm("nop");
		asm("nop");
		asm("nop");
		asm("nop");				//ѡ��ͨ��������ʱ1uS����
		GODONE = 1;				//��ʼת��

		unsigned char j = 0;
		while (GODONE) 
		{
			__delay_us(2);		//��ʱ2us(���������ú���)
			
			if (0 == (--j))		//��ʱ0.5ms��û��ADת����������������
			return 0;
		}

		ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));	//����12λADֵ

		if (0 == admax) 
		{
			admax = ad_temp;
			admin = ad_temp;
		} 
		else if (ad_temp > admax)
			admax = ad_temp;				//AD�������ֵ
		else if (ad_temp < admin)
			admin = ad_temp;				//AD������Сֵ

		adsum += ad_temp;
	}
		adsum -= admax;
		if (adsum >= admin)
			adsum -= admin;
		else
			adsum = 0;

		adresult = adsum >> 3;		//8��ƽ��ֵ��Ϊ���ս��

		adsum = 0;
		admin = 0;
		admax = 0;
		return 0xA5;
		
}





void checkOutA()
{

	test_adc = ADC_Sample(6, 5);
	if (0xA5 == test_adc)
	{
		R_AIN6_DATA = adresult;
		if(R_AIN6_DATA > 1200)
		{
			if(++overTime > 10)
			{
				overTime = 0;
				workStep = 0;
			}
		}
		else
		{
			overTime = 0;
		}
	}
}

void checkTemAD()
{	
		test_adc = ADC_Sample(5, 5);
		if (0xA5 == test_adc)
		{
			temValue = adresult;
			if(temValue > 4090)
			{
				tempNum = 0;
			}
			else if(temValue > 2015)
			{
				//0 - 20��
				tempNum = 20 - ((temValue - 2015)/104);
			}
			else if(temValue > 964)
			{
				//20 - 40��
				tempNum = 40 - ((temValue - 964)/52);
			}
			else if(temValue > 474)
			{
				//40 - 60��
				tempNum =  60 - ((temValue - 474)/25);
			}
			else if(temValue > 244)
			{
				//60 - 80��
				tempNum = 80 - ((temValue - 244)/12);
			}
			else if(temValue > 132)
			{
				//80 - 100��
				tempNum = 100 - ((temValue - 132)/6);
			}
			else if(temValue > 102)
			{
				//100 - 140��
				tempNum = 140 - (temValue - 102);
			}
			else if(temValue >= 82)				//72
			{
				//140 - 160��
				tempNum = 160 - (temValue - 82);
			}
			else if(temValue >= 62)				//52
			{
				tempNum = 180 - (temValue - 62);
			}
			else if(temValue >= 52)				//42
			{
				tempNum = 190 - (temValue - 52);
			}
			else if(temValue >= 42)				//37
			{
				tempNum = 200 - (temValue - 42);
			}
			else
			{
				tempNum = 201;
			}
		}

}


void checkBatAD()
{

	test_adc = ADC_Sample(15, 5);
	if (0xA5 == test_adc)
	{
		batValue = adresult;
		if(chrgFlag)
		{
			if(batValue > 1540)
			{
				batStep = 5;
			}
			else if(batValue > 1530)
			{
				batStep = 4;
			}
			else if(batValue > 1480)
			{
				batStep = 3;
			}
			else if(batValue > 1420)
			{
				batStep = 2;
			}
			else if(batValue > 1266)
			{
				batStep = 1;
			}
			else
			{
				batStep = 0;
			}
		}
		else
		{
			if(batValue > 1530)
			{
				batStep = 5;
			}
			else if(batValue > 1480)
			{
				batStep = 4;
			}
			else if(batValue > 1460)
			{
				batStep = 3;
			}
			else if(batValue > 1420)
			{
				batStep = 2;
			}
			else if(batValue > 1380)
			{
				batStep = 1;
			}
			else
			{
				batStep = 0;
			}
		}
		if(batValue < 931)
		{
			if(++lowBatTime > 5)
			{
				showBatStep = 0;
				lowBatTime = 0;
				workStep = 0;
				pwm1Stop();		//�ر����
				lowBatFlag = 1;
			}
		}
		else
		{
			lowBatTime = 0;
		}

	}
	
}


void setBatLed(u8t ledStep)
{
	showNumBat &= 0xF0;
	if(ledStep == 1)
	{
		showNumBat |= 0x08;
	}
	else if(ledStep == 2)
	{
		showNumBat |= 0x0C;
	}
	else if(ledStep == 3)
	{
		showNumBat |= 0x0E;
	}
	else if(ledStep >= 4)
	{
		showNumBat |= 0x0F;
	}
}

void setTempLed(u8t tempLed)
{
	
	if(tempLed >= 100)
	{
		showNumAShi = numArray[tempLed/100];
		showNumAge = numArray[(tempLed%100)/10];
	}
	else
	{
		showNumAShi = 0;
		if(tempLed >= 10)
		{
			showNumAge = numArray[tempLed/10];
		}
		else
		{
			showNumAge = 0;
		}	
	}
	showNumBShi = numArray[tempLed%10];
}

void chrgCtr()
{
	if(0x02 & PORTA)
	{
		chrgFlag = 1;
		workStep = 0;
		lowBatFlag = 0;
		pwm1Stop();		//�ر����
		showNumBat &= 0x0F;
		firstTime = 0;
		if(showBatStep > 4)
		{
			batLedStep = 4;
		}
		else if(count1s < 50)
		{
			if(showBatStep > 0)
			{
				batLedStep = showBatStep;
			}
			else
			{
				batLedStep = 1;
			}
		}
		else
		{
			if(showBatStep > 0)
			{
				batLedStep = showBatStep - 1;
			}
			else
			{
				batLedStep = 0;
			}
		}
		showNumAShi = 0;
		showNumAge = 0;
		showNumBShi = 0;
		setBatLed(batLedStep);
		if(showBatStep < batStep)
		{
			if(++chanceBatTime > 10000)
			{
				chanceBatTime = 0;
				showBatStep++;
			}
		}
		else
		{
			chanceBatTime = 0;
		}
	}
	else
	{
		chrgFlag = 0;
		if(showBatStep > 1 && showBatStep > batStep)
		{
			if(++chanceBatTime > 30000)
			{
				chanceBatTime = 0;
				showBatStep--;
			}
		}
		else
		{
			chanceBatTime = 0;
		}
	}
}


void updateTemp()
{
	if(workStep > 0)
	{
		if(++tempCheckTime > 250)
		{
			tempCheckTime = 0;
		}
		if(tempCheckTime < 20)
		{
			checkTemAD();
		}
		if(showTmepNum < showMaxTemp)
		{
			if(++chanceTempNumTime >= 75)
			{
				chanceTempNumTime = 0;
				showTmepNum++;
			}
		}
	}
	else
	{
		if(firstTime == 0)
		{
			checkTemAD();
		}
		if(++chanceTempNumTime > 40)
		{
			chanceTempNumTime = 0;
			showTmepNum = tempNum;
		}
	}
}

void workCtr()
{
	if(count1200s >= 1200)
	{
		count1200s = 0;
		workStep = 0;
		showWorkStepTime = 0;
		pwm1Stop();		//�ر����
		PORTB &= 0xF0;		//�ر����
	}
	if(motorTime > 0)
	{
		if(motorTime >= 800 && motorTime < 1580)
		{
			if(zfStep == 1)
			{
				PORTA |= 0x08;
			}
			else if(zfStep == 2)
			{
				PORTA |= 0x10;
			}
		}
		else
		{
			PORTA &= 0xE7;
		}
		if(--motorTime == 0)
		{
			beepTime = 180;
		}
		if(motorTime < 800)
		{
			PORTA &= 0xE7;
		}

	}
	else
	{
		PORTA &= 0xE7;
	}
	if(beepTime > 0)
	{
		beepTime--;
		if(beepTime % 60 < 30)
		{
			beepFlag = 1;
		}
		else
		{
			beepFlag = 0;
		}
	}
	else
	{
		beepFlag = 0;
	}
	updateTemp();
	if(showWorkStepTime > 0)
	{
		showWorkStepTime--;
	}
	if(showOffTime > 0)
	{
		showOffTime--;
	}
	if(firstTime > 0)
	{
		firstTime--;
		if(showBatStep < batStep)
		{
			if(++firstShowBatTime > 5)
			{
				showBatStep = batStep;
			}
		}
		else
		{
			showBatStep = batStep;
		}
		if(showBatStep < 1)
		{
			showBatStep = 1;
		}
		if(showTmepNum < tempNum)
			showTmepNum = tempNum;
	}
	else if(workStep == 1)
	{
		showMaxTemp = 160;
		if(showWorkStepTime > 0)
		{
			setTempLed(160);
			maxTempNum = showTmepNum;
		}
		else
		{
			if(maxTempNum < 160)
			{
				setTempLed(maxTempNum);
			}
			else
			{
				setTempLed(160);
			}
			if(maxTempNum < showTmepNum)
			{
				maxTempNum++;
			}
		}
		pwm1Init();		//�����
		//if(tempNum >= 160)
		//{
		//	pwm1Stop();		//�ر����
		//}
		//else  if(tempNum < 150)
		//{
		//	pwm1Init();		//�����
		//}
		showNumBat = 0x30;
		setBatLed(showBatStep);
	}
	else if(workStep == 2)
	{
		showMaxTemp = 180;
		if(showWorkStepTime > 0)
		{
			setTempLed(180);
			maxTempNum = showTmepNum;
		}
		else
		{
			if(maxTempNum < 180)
			{
				setTempLed(maxTempNum);
			}
			else
			{
				setTempLed(180);
			}
			if(maxTempNum < showTmepNum)
			{
				maxTempNum++;
			}
		}
		pwm1Init();		//�����
		//if(tempNum >= 180)
		//{
		//	pwm1Stop();		//�ر����
		//}
		//else  if(tempNum < 170)
		//{
		//	pwm1Init();		//�����
		//}
		showNumBat = 0x30;
		setBatLed(showBatStep);
	}
	else if(workStep == 3)
	{
		showMaxTemp = 200;
		if(showWorkStepTime > 0)
		{
			setTempLed(200);
			maxTempNum = showTmepNum;
		}
		else
		{
			if(maxTempNum < 200)
			{
				setTempLed(maxTempNum);
			}
			else
			{
				setTempLed(200);
			}
			if(maxTempNum < showTmepNum)
			{
				maxTempNum++;
			}
		}
		pwm1Init();		//�����
		//if(tempNum >= 200)
		//{
		//	pwm1Stop();		//�ر����
		//}
		//else if(tempNum < 190)
		//{
		//	pwm1Init();		//�����
		//}
		showNumBat = 0x30;
		setBatLed(showBatStep);
	}
	else if(showOffTime > 0)
	{
		showNumAShi = numArray[0];
		showNumAge = numArray[10];
		showNumBShi = numArray[10];
		if(lowBatFlag == 1 && count1s < 50)
		{
			setBatLed(1);
		}
		else
		{
			setBatLed(showBatStep);
		}
	}
	else if(firstTime == 0 && chrgFlag == 0)
	{
		pwm1Stop();		//�ر����
		showNumAShi = 0;
		showNumAge = 0;
		showNumBShi = 0;
		showNumBat = 0;
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

void keyCtr()
{
	char kclick = keyRead(0x01 & (~PORTB));
	if(kclick == 2)
	{
		if(workStep > 0)
		{
			count1200s = 0;
			workStep = 0;
			showWorkStepTime = 0;
			pwm1Stop();		//�ر����
			PORTA &= 0xE3;		//�ر����
			PORTC &= 0xFE;
			motorTime = 0;
			beepTime = 30;
		}
		else if(lowBatFlag == 0)
		{
			workStep = 1;
			showWorkStepTime = 200;
			showOffTime = 0;
			count1200s = 0;
			beepTime = 30;
		}
		else
		{
			showBatStep = 0;
			showOffTime = 200;
		}
	}
	else if(kclick == 1)
	{
		if(workStep > 0)
		{
			if(++workStep > 3)
			{
				workStep = 1;
			}
			showWorkStepTime = 200;
			tempCheckTime = 0;
		}
		else
		{
			showOffTime = 200;
		}
	}
	kclick = keyRead2(0x80 & (~PORTA));
	if(kclick == 1 && workStep > 0)
	{
		zfStep = 1;
		PORTA &= 0xE7;
		if(motorTime < 800)
		{
			motorTime = 1610;
		}
		else
		{
			motorTime = 0;
			
		}
	}
	kclick = keyRead3(0x01 & (~PORTA));
	if(kclick == 1  && workStep > 0)
	{
		zfStep = 2;
		PORTA &= 0xE7;
		if(motorTime < 800)
		{
			motorTime = 1610;
		}
		else
		{
			motorTime = 0;
			
		}
	}
}

void pwm1Init()
{
	RA2 = 1;
}
void pwm1Stop()
{
	RA2 = 0;
}



/***********************************************************
��ѭ��
***********************************************************/
void main()
{

	Init_System();

	firstTime = 200;
	while(1)
	{
		refreshLed();
		if(B_MainLoop)
		{
			B_MainLoop = 0;
			CLRWDT();
			keyCtr();
			workCtr();
			chrgCtr();
			checkBatAD();
			if(workStep == 0 && keyCount == 0 && chrgFlag == 0 && firstTime == 0 && showOffTime == 0)
			{
				
				if(++sleepTime > 200)
				{
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