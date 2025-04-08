/**********************************************************
AD��ⷶ������
**********************************************************/
#pragma warning disable 752
#pragma warning disable 373			//���ε������1������
#include <sc.h>

#ifndef _XTAL_FREQ
#define _XTAL_FREQ 16000000			//16MHz,ʹ��������ʱ�������붨����Ƶ��
									//����FCPU_DIVѡ��2T����ʱ��ֵ����
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
u8t		lockLedStep;
u8t		chrgMode = 0;
u8t		fanDuty = 0;
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
u8t shiweiNum = 0;	//ʮλ
u8t	geweiNum = 0;	//��λ
u8t	jrStep = 0;
u8t	preWorkStep = 0;
u8t	fanOverTime = 0;
u8t	chrgPwmFlag = 0;
u8t	motorPwmFlag = 0;
u16t	count30s = 0;
u16t	count15s = 0;
u8t		lowBatLock = 0;
u8t		lowBatTime = 0;	

unsigned char ADC_Sample(unsigned char adch, unsigned char adldo);
void DelayXms(unsigned char x);
unsigned char ADC_Result(unsigned char adch);
void Init_System();
void AD_Init();
void Sleep_Mode();
void pwmInit();
void pwmStop();
void chrgPwmInit();
void chrgPwmStop();
void chrgCtr();
void checkOutA();
void checkBatAD();
void ledShow();
void keyCtr();
void workCtr();
void ledCtr();
char keyRead(char keyStatus);
void setBatStep();


//#define _DEBUG			//���Գ�����


/***********************************************************
�жϷ�����
�������ƣ�Isr_Timer()
�������ܣ��жϴ�����
��ڲ�����
���ڲ�����
��    ע��125US��ʱ2�ж�
			�����ж϶���������������洦��
***********************************************************/
void interrupt Isr_Timer() 
{
	if(TMR2IF) 
	{			//��ֻʹ����һ���ж�Դ,������ȥ�ж�
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
		intCount10++;
	}

}


/***********************************************************
main������
***********************************************************/
void main() 
{
	Init_System();
	AD_Init();
	firstTime = 200;
	while (1) 
	{
		asm("clrwdt");
		if(workStep > 0 && intCount10 > 10)
		{
			intCount10 = 0;
			checkOutA();
		}
		if(!IntFlag)
    		continue;			//10msִ��һ��
    	IntFlag = 0;
		chrgCtr();
		checkBatAD();
		setBatStep();
		if(chrgFlag == 0 && lowBatFlag == 0 && firstTime == 0)
		{
			keyCtr();
		}
		workCtr();
		ledCtr();
		if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0  && overWorkTime == 0)
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



void ledCtr()
{
	if(firstTime > 0)
	{
		firstTime--;
		ledStep = 0;
		if(prePwStep < pwStep)
		{
			prePwStep = pwStep;
		}
	}
	else if(overWorkTime > 0)
	{
		overWorkTime--;
		if(overWorkTime % 60 < 30)
		{
			ledStep = 1;
		}
		else
		{
			ledStep = 0;
		}
	}
	else if(workStep > 0)
	{
		ledStep = 3;
	}
	else if(chrgFlag)
	{
		if(prePwStep >= 99)
		{
			ledStep = 2;
		}
		else
		{
			ledStep = 1;
		}
	}
	else
	{
		ledStep = 0;
	}
	if(ledStep == 0)
	{
		PORTA &= 0xE3;
	}
	else if(ledStep == 1)
	{
		RA4 = 1;
		RA3 = 0;
		RA2 = 0;
	}
	else if(ledStep == 2)
	{
		RA4 = 0;
		RA3 = 1;
		RA2 = 0;
	}
	else if(ledStep == 3)
	{
		RA4 = 0;
		RA3 = 0;
		RA2 = 1;
	}
}


void setBatStep()
{
	if(lowBatLock == 1)
	{
		prePwStep = 0;
		pwStep = 0;
	}
	else if(power_ad < 2800)
	{
		if(count1s == 0)
		{
			if(prePwStep > 1)
			{
				if(chrgFlag == 0)
					prePwStep--;
			}
			else
			{
				prePwStep = 1;
			}
			pwStep = 1;
		}
		pwStep = 1;
	}
	else
	{
		if(power_ad < 3600)
		{
			pwStep = (power_ad - 2800)/80;
		}
		else
		{
			pwStep = 20 + ((power_ad - 3600)/6);
		}
		if(pwStep > 99)
		{
			pwStep = 99;
		}

		if(chrgFlag)
		{
			if(chrgFullFlag && prePwStep < 99)
			{
				if(++count15s >= 7500)
				{
					count15s = 0;
					prePwStep++;
				}
			}
			else
			{
				count15s = 0;
			}
			if(pwStep > prePwStep)
			{
				if(++count30s >= 15000 && prePwStep < 99)	//60s
				{	
					count30s = 0;
					prePwStep++;
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
			if(prePwStep < 40)
			{
				tempSubBatTime = 8000;
			}
			if(pwStep < prePwStep && prePwStep > 1)
			{
				if(++count30s >= tempSubBatTime && prePwStep > 1)	//60s
				{	
					count30s = 0;
					prePwStep--;
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
		workStep = 0;
		pwmStop();
		lowBatFlag = 0;
		
	}
	else
	{
		chrgFlag = 0;
		chrgFullFlag = 0;
		
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
			if(!longPressFlag2)
			{
				longPressFlag2 = 1;
				return 2;
			}
		}
	}
	else
	{
		if(keyCount2 >= 100)
		{
			keyCount2 = 0;
			longPressFlag2 = 0;
			return	0;
		}
		else if(keyCount2 >= 5)
		{
			keyCount2 = 0;
			return	1;
		}
		keyCount2 = 0;
	}
	return 0;
}


void keyCtr()
{
	char kclick = keyRead(0x02 & (~PORTA));
	if(kclick == 1)
	{
		if(workStep > 0)
		{
			if(++workStep > 3)
			{
				workStep = 1;
			}
		}
	}
	else if(kclick == 2)
	{
		if(workStep > 0)
		{
			workStep = 0;
		}
		else
		{
			workStep = 1;
			overWorkTime = 0;
		}
	}
}

void workCtr()
{

	if(workStep > 0)
	{
		RB3 = 1;
		if(motorPwmFlag == 0)
		{
			pwmInit();
			
		}
		if(fanDuty < maxDuty)
		{
			fanDuty++;
		}
		else if(fanDuty > maxDuty)
		{
			fanDuty--;
		}
		maxDuty = 34 + (workStep*6);
		PWMD3L = fanDuty;
	}
	else
	{
		if(fanDuty > 0)
		{
			fanDuty--;
		}
		else
		{
			pwmStop();
			RB3 = 0;
		}
	}
	
}

void checkOutA()
{
	test_adc = ADC_Sample(0, 5);		//����AN0�ڵ�ADֵ���ο���ѹ2V
	if (0xA5 == test_adc)				//������ɣ���������ԭ����ADת��û����ɣ��򲻴���
	{
		if(adresult > 2662)
		{
			if(++fanOverTime > 50)
			{
				fanOverTime = 0;
				preWorkStep = workStep;
				workStep = 0;
				overWorkTime = 300;
			}
		}
		else
		{
			fanOverTime = 0;
		}
	}
	else
	{
		ADCON0 = 0;						//���ת��û����ɣ����ʼ��ADCON0,1
		ADCON1 = 0;				
		__delay_us(100);				//��ʱ100us(���������ú���)
	}
}

void checkBatAD()
{
	test_adc = ADC_Sample(31, 0);		//����AN2�ڵ�ADֵ���ο���ѹ2V
	if (0xA5 == test_adc)				//������ɣ���������ԭ����ADת��û����ɣ��򲻴���
	{
		volatile unsigned long power_temp;
			
		power_temp = (unsigned long)((POWER_RATIO)/adresult);		//1.2*4096/AD=VDD�������Ŵ�1000�� 
		power_ad = (unsigned int)(power_temp);		//ͨ���ڲ���׼��ѹ�Ƴ�оƬVDD��ѹ
	}
	else
	{
		ADCON0 = 0;						//���ת��û����ɣ����ʼ��ADCON0,1
		ADCON1 = 0;				
		__delay_us(100);				//��ʱ100us(���������ú���)
	}

	if(power_ad < 2800)
	{
		if(++lowBatTime > 200)
		{
			lowBatTime = 0;
			lowBatLock = 1;
			workStep = 0;
		}
	}
	else
	{
		lowBatTime = 0;
	}
	
}



/**********************************************************
�������ƣ�Init_System
�������ܣ�ϵͳ��ʼ��
��ڲ�������
���ڲ�������
��    ע��
**********************************************************/
void Init_System() 
{
	asm("nop");
	asm("clrwdt");
	OPTION_REG = 0;					//Ԥ��Ƶ��TMR0 ��Timer0ʹ���ڲ�ʱ��Focs/4��Ԥ��Ƶ��Ϊ1:2
	asm("clrwdt");
	OSCCON = 0X72;					//�ڲ�����8M

	WPUA = 0x02;				//����������1Ϊʹ������
	WPDA = 0x00;					//RA1������
	WPUB = 0x00;

	TRISA = 0x03;				//����IO״̬��0Ϊ�����1Ϊ����
	TRISB = 0x01;

	PORTA = 0X00;
	PORTB = 0X00;

//---------------------------------------
//125us�жϳ�ʼ��
	PR2 = 249;					//�趨Timer��ʼֵ����ʱ������250*2/8M=62.5uS
	TMR2IF = 0;
	TMR2IE = 1;					//ʹ��Timer2����ж�

	T2CON = 0B00000100;			//����Timer2,����TMR2�ķ�Ƶ��Ϊ1:1
	INTCON = 0XC0;				//�������ж�
}

/***********************************************************
�жϷ�����
�������ƣ�AD_Init()
�������ܣ�AD��ʼ��������
��ڲ�����
���ڲ�����
��    ע����һ�δ�AD����λADON������ʱ20uS���ϲ��ܽ���AD����
			���̳��򲻹ر�ADON������Ҫ��ʱ
***********************************************************/
void AD_Init() 
{
	/*********** ADCON0 ****************************
		Bit7~Bit6  ADCS<1:0>:  ADת��ʱ��ѡ��λ��
			00=  F HSI /16
			01=  F HSI /32
			10=  F HSI /64
			11=  F HSI /128
		Bit5~Bit2  CHS<3:0>:  ģ��ͨ��ѡ��λ����ADCON1�Ĵ���CHS4���CHS<3:0>
			CHS<4:0>: 
			00000=  AN0
			00001=  AN1
			00010=  AN2
			00011=  AN3
			00100=  AN4
			00101=  AN5
			00110=  ����
			00111=  ����
			01000=  AN8
			�� 
			01101=  AN13
			01110=  AN14
			01111=  AN15
			11111=  1.2V���̶��ο���ѹ��
			����=  ����
		Bit1  GO/DONE: ADת��״̬λ��
			1=  ADת�����ڽ��С�����λ��1����ADת������ADת������Ժ󣬸�λ��Ӳ���Զ����㡣
				��GO/DONEλ��1��0��ADIF��0��1ʱ�������ٵȴ�����TADʱ�䣬�����ٴ�����ADת����
			0=  ADת�����/���ڽ����С�
		Bit0  ADON:  ADCʹ��λ��
			1=  ʹ��ADC��
			0=  ��ֹADC�������Ĺ���������
	*********************************************/
	ADCON0 = 0X41;		//ADON������AD����ʱ��ѡΪFSYS/16
	
	/*********** ADCON1 ****************************
		Bit7  ADFM:  ADת�������ʽѡ��λ��
			1=  �Ҷ��룻
			0=  ����롣
		Bit6  CHS4:  ͨ��ѡ��λ
		Bit5~Bit3  δ�� 
		Bit2  LDO_EN:  �ڲ��ο���ѹʹ��λ��
			1=  ʹ��ADC�ڲ�LDO�ο���ѹ��
				��ѡ���ڲ�LDO���ο���ѹʱ��ADC�����Ч����Ϊ8λ��
			0=  VDD��ΪADC�ο���ѹ��
		Bit1~Bit0  LDO_SEL<1:0>:  �ο���ѹѡ��λ
			0X=  2.0V
			10=  2.4V
			11=  3.0V
	*********************************************/
	ADCON1 = 0;
	ANSEL0 = 0X01;
	ANSEL1 = 0x00;	
}


void pwmInit()
{
		motorPwmFlag = 1;
		PWMCON1 = 0B00000000;	//PWMѡ��A�飬����2��ֹ������1ʹ�ܣ�����ʱ��ԴΪFosc/4
		PWMTH = 0X00;			//����ѡ��Ϊ0FF��������Ϊ��255+1��*1/8M�����ڵ�ʱ�ӷ�Ƶ��PWMCON0ѡ��
		PWMTL = 73;			//PWM ����=[PWMT+1]*Tosc*(CLKDIV ��Ƶֵ)
		
		
		PWMD23H = 0;			//����PWM1,PWM2��ռ�ձȣ���ֵ���ܳ������ڣ�����Ϊ100%���
		PWMD3L = fanDuty;			//����ģʽ��PWM1��ռ�ձ���PWM0������������ֵ�޹�
		PWM23DT = 0X00;			//������Ϊ2uS������Ϊ��3+1��*1/8M*4

		PWMCON0 = 0X08;			//��PWM1 ��Ƶ��Ϊ8
		PWMCON2 =0X00;			//PWM4�������
}

void pwmStop()
{
	if(motorPwmFlag)
	{
		motorPwmFlag = 0;
		PWMCON0 &= 0XF7;
		RB4 = 0;
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

	WPUA  = 0x02;			//RA0 ����������
	TRISA = 0x03;				//����IO״̬��0Ϊ�����1Ϊ����
	TRISB = 0x01;

	PORTA = 0X00;
	PORTB = 0X00;
	//WPUB  = 0x00;			//RB2 ����������
   			
   	ADCON0 = 0;					//�ر�����ģ��
	ADCON1 = 0;
	
	PWMCON0 = 0;
		
	OSCCON = 0X70;				//������Ϊ8M,�ر�WDT����ע��оƬ����ѡ����WDT����ѡΪDISABLE,�����޷�����ص�WDT
	
	IOCA = 0x02;			//����RA1��IO��ƽ�仯�ж�
	IOCB = 0x01;			//����RB3��IO�ڵ�ƽ�仯�ж�
	
	RAIE = 1;					//����PORTA��IO��ƽ�仯�ж�
	PEIE = 1;					//Ҫ��RORTA�жϻ��ѣ���PEIE������Ϊ1
	RBIE = 1;					//����PORTB��ƽ�仯�ж�
	GIE = 0;					//���Ѻ�ִ��SLEEP�����;
	
	PIE1 &= 0X08;				//�رղ���Ҫ���ж�
	PIR1 = 0;					//�����岻��Ҫ���жϱ�־λ
	INTCON &= 0XC8;				//�����岻��Ҫ���жϱ�־λ

	PORTA;						//��PORTAֵ������,�õ�ƽ�仯�жϱ���ִ����һ��
	RAIF = 0;					//��PORTA�жϱ�־λ
	PORTB;						//��PORTBֵ������	
	RBIF = 0;					//��PORTB�жϱ�־λ		
	asm("clrwdt");

	asm("sleep");				//��������ģʽ
	
	asm("nop");
	asm("clrwdt");
	asm("nop");
	asm("nop");
	asm("nop");
	asm("nop");
	asm("nop");
	if(RAIF)  RAIF = 0;			//���жϱ�־
	if(RBIF)  RBIF = 0;			//���жϱ�־
	if(TMR2IF) TMR2IF = 0;
	IOCA = 0B00000000;			//����RA1��IO��ƽ�仯�ж�
	IOCB = 0B00000000;			//����RB3��IO�ڵ�ƽ�仯�ж�
	Init_System();
	AD_Init();
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

