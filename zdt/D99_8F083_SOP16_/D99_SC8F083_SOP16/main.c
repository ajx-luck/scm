#include <sc.h>
#include "Touch_Kscan_Library.h"

#ifndef _XTAL_FREQ
#define _XTAL_FREQ 8000000			//8MHz,ʹ��������ʱ�������붨����Ƶ��
									//����16M��Ĵ˲���Ϊ16000000
#endif
#define     POWER_RATIO  	(4096UL*1.2*1000)

#define		uchar		unsigned char
#define		u8t		unsigned char
#define		uint			unsigned int
#define		u16t			unsigned int
#define		ulong		unsigned long



#define		LED5						 RB4
#define		LED4						 RA1
#define		LED3						 RA3
#define		LED2						 RA4
#define		LED1						 RA0


#define		LED5_OUT					 TRISB	&= 0xEF
#define		LED4_OUT					 TRISA	&= 0xFD
#define		LED3_OUT					 TRISA	&= 0xF7
#define		LED2_OUT					 TRISA	&= 0xEF
#define		LED1_OUT					 TRISA	&= 0xFE





const static unsigned char numArray[]={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x71,0x79,0x50};
volatile unsigned char MainTime;
static unsigned int time;
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
u16t		lowBatTime = 0;	
u8t		lowFanTime = 0;//���Ƚ���Ϊ1����ʱ��
u8t		ledCnt = 0;	
u8t		showNumShi = 0x7F;
u8t		showNumGe = 0x7F;
u8t		fanKeyFlag = 0;
u8t		wuhuaKeyFlag = 0;
u8t		showBatStep = 0;
u8t		curBatStep = 0;
u16t	count30s = 0;
u16t	count15s = 0;

volatile unsigned int adresult;
volatile unsigned int result;
volatile unsigned char test_adc;
volatile unsigned int power_ad;

void chrgCtr();
unsigned char ADC_Sample(unsigned char adch, unsigned char adldo);
void ledShow();


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
	TRISA = 0x00;
	PORTA = 0;
	TRISB = 0x23;
	PORTB = 0;
	WPUB = 0x02;
	TRISC = 0;
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
��������
***********************************************************/
void KeyServer() 
{
	static unsigned char KeyOldFlag = 0;
	if (KeyFlag[0]) 
	{
		time = 0;
		if (KeyFlag[0] != KeyOldFlag) 
		{
			//ȷ��״̬�ı�İ���
			KeyOldFlag ^= KeyFlag[0];
			if ((KeyOldFlag & 0x1) && (KeyFlag[0] & 0x1) && firstLock == 0) 
			{
				//KEY1������
				if(lowBatLock == 1)
				{
					shanshuoTime = 225;
				}
				else if(++workStep > 2)
				{
					workStep = 0;
				}
				if(workStep == 2)
				{
					shanshuoTime = 225;
				}
				else
				{
					shanshuoTime = 0;
				}
			}
			if ((KeyOldFlag & 0x2) && (KeyFlag[0] & 0x2) && firstLock == 0) 
			{
				//KEY2������
				if(lowBatLock == 1)
				{
					shanshuoTime2 = 225;
				}
				else if(++wuhuaFlag > 2)
				{
					wuhuaFlag = 0;
				}
				if(wuhuaFlag == 2)
				{
					shanshuoTime2 = 225;
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
�жϷ�����
***********************************************************/
void interrupt Isr_Timer()
{
	if(TMR2IF)				//��ֻʹ����һ���ж�Դ,������ȥ�ж�
	{
		TMR2IF = 0;
		if(firstTime > 0 || workStep > 0 || wuhuaFlag > 0 || chrgFlag > 0)
		{
			ledShow();
		}
		if(++MainTime >= 64)	//�������ѡ��Ĵ���·���ʹ�������ѡ��ɨ��һ�ΰ�����ʱ��
		{						//һ��103���ݣ�8·������8M��Ƶ���ʱ��Լ4ms����ɨ��һ�ε�ʱ���ѡ5ms
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
	
	if(++time >= 1000)
	{
		time = 0;
		INTCON = 0;			//;�ض�ADCģ�鼰�ж�ʹ�ܣ�
		PIE1 = 0;
		PIE2 = 0;
		PIR1 = 0;
		PIR2 = 0;
		T2CON = 0;
		ADCON1 = 0;

		//��������ǰ�ص����й���ģ��,�Խ������ߵ���
		ADCON0 = 0;
	
		//��������ǰ,����̶����ߵ�ƽ,���ȫ������͵�ƽ,���ر�������������
		TRISA &= 0xE4;
		TRISB &= 0xEF;
		PORTA = 0x00;
		PORTB = 0x00;
		TRISC = 0;
		PORTC = 0;

		TRISB0 =1;//����
		//WPUB7 = 1;//����			
		RBIF = 0;//���־
		RBIE = 1; //����PB�ڵ�ƽ�仯�ж�
		IOCB0= 1;//����PB0��ƽ�仯�ж�
		PORTB;//��һ��PB��	
/****����ҪPA���жϻ��ѣ�ʹ�����г��򲢰����޸�****
			TRISA0 =1;	//����
			WPUA0 = 1;	//����			
			RAIF = 0;	//���־
			RAIE = 1;	//����PA�ڵ�ƽ�仯�ж�
			IOCA0 = 1;	//����PA0��ƽ�仯�ж�
			PEIE = 1;	//���������ж�
			PORTA;		//��һ��PA��			
************************************/	

		//��������ģʽ,���������ѵİ�����ָ���������
		SystemEnterSleep();
		if(RAIF) 
		{
			RAIF = 0;
			PORTA;
		}
		//���߱�����,���������жϵ�SFR,ʹϵͳ������������
		Refurbish_Sfr();
		ADCON0 = 0X41;
		ADON = 1;
		ADCON1 = 0x00;
	}
#endif
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

void ledShow()
{

	if(++ledCnt > 19)
	{
		ledCnt = 0;
	
	}
	PORTA &= 0xE4;
	PORTB &= 0xEF;
	TRISA |= 0x1B;
	TRISB |= 0x10;
	switch(ledCnt)
	{
		case 0:
		break;
		case 1:
		if(showNumShi & 0x01)
		{
			LED1_OUT;
			LED2_OUT;
			LED2 = 1;
		}
		break;
		case 2:
		if(showNumShi & 0x02)
		{
			LED1_OUT;
			LED3_OUT;
			LED3 = 1;
		}
		break;
		case 3:
		if(showNumShi & 0x04)
		{
			LED1_OUT;
			LED4_OUT;
			LED4 = 1;
		}
		break;
		case 4:
		if(showNumShi & 0x08)
		{
			LED1_OUT;
			LED5_OUT;
			LED5 = 1;
		}
		break;
		case 5:
		if(showNumShi & 0x10)
		{
			LED2_OUT;
			LED1_OUT;
			LED1 = 1;
		}
		break;
		case 6:
		if(showNumShi & 0x20)
		{
			LED2_OUT;
			LED3_OUT;
			LED3 = 1;
		}
		break;
		case 7:
		if(showNumShi & 0x40)
		{
			LED2_OUT;
			LED4_OUT;
			LED4 = 1;
		}
		break;
		case 8:
		if(showNumGe & 0x01)
		{
			LED2_OUT;
			LED5_OUT;
			LED5 = 1;
		}
		break;
		case 9:
		if(showNumGe & 0x02)
		{
			LED3_OUT;
			LED1_OUT;
			LED1 = 1;
		}
		break;
		case 10:
		if(showNumGe & 0x04)
		{
			LED3_OUT;
			LED2_OUT;
			LED2 = 1;
		}
		break;
		case 11:
		if(showNumGe & 0x08)
		{
			LED3_OUT;
			LED4_OUT;
			LED4 = 1;
		}
		break;
		case 12:
		if(showNumGe & 0x10)
		{
			LED3_OUT;
			LED5_OUT;
			LED5 = 1;
		}
		break;
		case 13:
		if(showNumGe & 0x20)
		{
			LED4_OUT;
			LED1_OUT;
			LED1 = 1;
		}
		break;
		case 14:
		if(showNumGe & 0x40)
		{
			LED4_OUT;
			LED2_OUT;
			LED2 = 1;
		}
		break;
		case 15:
		if(firstTime || showNumGe || showNumShi)
		{
			LED4_OUT;
			LED3_OUT;
			LED3 = 1;
		}
		break;
		case 16:
		if(firstTime > 0 || wuhuaFlag > 0)
		{
			LED4_OUT;
			LED5_OUT;
			LED5 = 1;
		}
		break;
		case 17:
		if(firstTime > 0 ||workStep > 0)
		{
			LED5_OUT;
			LED1_OUT;
			LED1 = 1;
		}
		break;
		case 18:
		if(firstTime > 0 ||fanKeyFlag > 0)
		{
			LED5_OUT;
			LED2_OUT;
			LED2 = 1;
		}
		break;
		case 19:
		if(firstTime > 0 ||wuhuaKeyFlag > 0)
		{
			LED5_OUT;
			LED4_OUT;
			LED4 = 1;
		}
		break;
		default:
		break;
	}

}

void showBatLed()
{
	showNumShi = numArray[showBatStep/10];
	showNumGe = numArray[showBatStep%10];
}

void setBatStep()
{
	if(lowBatLock == 1)
	{
		showBatStep = 0;
		curBatStep = 0;
	}
	else if(power_ad < 2800)
	{
		if(count10s == 0 && count1s == 0)
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
		if(power_ad < 3600)
		{
			curBatStep = (power_ad - 2800)/80;
		}
		else
		{
			curBatStep = 20 + ((power_ad - 3600)/5);
		}
		if(curBatStep > 99)
		{
			curBatStep = 99;
		}

		if(chrgFlag)
		{
			if(chrgFullFlag && showBatStep < 99)
			{
				if(++count15s >= 7500)
				{
					count15s = 0;
					showBatStep++;
				}
			}
			else
			{
				count15s = 0;
			}
			if(curBatStep > showBatStep)
			{
				if(++count30s >= 15000 && showBatStep < 99)	//60s
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
			u16t tempSubBatTime = 15000;
			if(showBatStep < 40)
			{
				tempSubBatTime = 8000;
			}
			if(curBatStep < showBatStep && showBatStep > 1)
			{
				if(++count30s >= tempSubBatTime && showBatStep > 1)	//60s
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

void chrgCtr()
{
	if(PORTB & 0x01)
	{
		chrgFlag = 1;
		firstLock = 0;
		lowBatLock = 0;
		showBatLed();
		if(PORTB & 0x02)
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

	}
	else
	{
		chrgFlag = 0;
		chrgFullTime = 0;
		chrgFullFlag = 0;
		
		if(firstTime == 0)
		{
			if(workStep == 0 && wuhuaFlag == 0)
			{
				showNumShi = 0;
				showNumGe = 0;
			}
			else
			{
				showBatLed();
			}
		}
		else
		{
			if(showBatStep < curBatStep)
			{
				showBatStep = curBatStep;
			}
			showNumShi = 0x7F;
			showNumGe = 0x7F;
		}
	}
}

void keyLedCtr()
{
	if(shanshuoTime > 0)
	{
		shanshuoTime--;
		if((shanshuoTime % 75) < 37)
		{
			fanKeyFlag = 0;
		}
		else
		{
			fanKeyFlag = 1;
		}
	}
	else if(workStep > 0)
	{
		fanKeyFlag = 1;
	}
	else
	{
		fanKeyFlag = 0;
	}
	
	if(shanshuoTime2 > 0)
	{
		shanshuoTime2--;
		if((shanshuoTime2 % 75) < 37)
		{
			wuhuaKeyFlag = 0;
		}
		else
		{
			wuhuaKeyFlag = 1;
		}
	}
	else if(wuhuaFlag > 0)
	{
		wuhuaKeyFlag = 1;
	}
	else
	{
		wuhuaKeyFlag = 0;
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
		if(workStep == 1 || power_ad < 3150)
		{	
			maxFanValue = 38;
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
		if(fanValue > 1300)		//ԭ����ֵ��1.3V
		{
			if(++fanOverTime > 25)
			{
				fanOverTime = 0;
				workStep = 0;
				shanshuoTime = 225;
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
				//����״̬
				wuhuaFlag = 0;
				shanshuoTime2 = 450;
			}
			checkTime = 0;
			lowWaterTime = 0;
		}
		*/
		
	}
	else
	{
		pwmStop();
	}
}


void workCtr()
{
	test_adc = ADC_Sample(31, 0);		//�����ڲ���׼1.2V��Ե�Դ��ADֵ
	if (0xA5 == test_adc)
	{
		volatile unsigned long power_temp;
			
		power_temp = (unsigned long)((POWER_RATIO)/adresult);		//1.2*4096/AD=VDD�������Ŵ�1000�� 
		power_ad = (unsigned int)(power_temp);		//ͨ���ڲ���׼��ѹ�Ƴ�оƬVDD��ѹ
	}
	if(workStep == 2 && power_ad < 3300)
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
	if(power_ad < 2900)
	{
		if(++lowBatTime > 1000)
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
	}
	else
	{
		keyLedCtr();
		fanCtr();
		wuhuaCtr();
	}
	
}

/***********************************************************
��ѭ��
***********************************************************/
void main()
{
	Init_System();
	firstLock = 1;
	firstTime = 250;
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
			setBatStep();
			if(firstTime == 0 && chrgFlag == 0 && workStep == 0 && wuhuaFlag == 0 && shanshuoTime == 0 && shanshuoTime2 == 0)
			{
				PORTA &= 0xE4;
				PORTB &= 0xEF;
				TRISA |= 0x1B;
				TRISB |= 0x10;
				WorkSleep();
			}
			else
			{
				time = 0;
			}
		}
	}
}