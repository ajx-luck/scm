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


#define		A_LED4						 RB0
#define		A_LED3						 RA5
#define		A_LED2						 RA4
#define		A_LED1						 RB5


#define		A_LED4_OUT					 TRISB	&= 0xFE
#define		A_LED3_OUT					 TRISA	&= 0xDF
#define		A_LED2_OUT					 TRISA	&= 0xEF
#define		A_LED1_OUT					 TRISB	&= 0xDF


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
u8t shiweiNum = 0;	//ʮλ
u8t	geweiNum = 0;	//��λ
u8t	jrStep = 0;
u8t	preWorkStep = 0;
u8t	prejrStep = 0;
u8t	chrgPwmFlag = 0;
u8t	motorPwmFlag = 0;
u16t	jrStartTime = 0;
u8t		jrShowTime = 0;
u8t		jrPwmTime = 0;
u8t		jrDuty = 0;
u8t		jrDutyFX = 0;
u8t		jrWaitTime = 0;

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
		ledShow();
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
		if(intCount10 > 10)
		{
			intCount10 = 0;
			checkOutA();
		}
		if(!IntFlag)
    		continue;			//10msִ��һ��
    	IntFlag = 0;
		chrgCtr();
		checkBatAD();
		if(chrgFlag == 0 && lowBatFlag == 0 && firstTime == 0)
		{
			keyCtr();
		}
		workCtr();
		ledCtr();
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

void ledShow()
{
	if(++ledCntTime > 5)
	{
		ledCntTime = 0;
		if(++ledCnt > 5)
		{
			ledCnt = 0;
		}
		PORTB &= 0xDE;
		TRISB |= 0x21;
		PORTA &= 0xCF;
		TRISA |= 0x30;
		switch(ledCnt)
		{
			case 1:
			if(ledStep > 1)
			{
				A_LED1_OUT;
				A_LED2_OUT;
				A_LED2 = 1;
				A_LED1 = 0;
			}
			break;
			case 2:
			if(ledStep > 2)
			{
				A_LED3_OUT;
				A_LED2_OUT;
				A_LED3 = 1;
				A_LED2 = 0;
			}
			break;
			case 3:
			if(ledStep > 3)
			{
				A_LED3_OUT;
				A_LED4_OUT;
				A_LED4 = 1;
				A_LED3 = 0;
			}
			break;
			case 4:
			if(ledStep > 4)
			{
				A_LED3_OUT;
				A_LED2_OUT;
				A_LED2 = 1;
				A_LED3 = 0;
			}
			break;
			case 5:
			if(ledStep > 5)
			{
				A_LED3_OUT;
				A_LED4_OUT;
				A_LED3 = 1;
				A_LED4 = 0;
			}
			break;
			case 0:
			if(ledStep > 0)
			{
				A_LED1_OUT;
				A_LED2_OUT;
				A_LED1 = 1;
				A_LED2 = 0;
			}
			break;
			default:
			break;
		}
	}
	
	
}


void ledCtr()
{
	if(firstTime > 0)
	{
		firstTime--;
		ledStep = 6;
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
			ledStep = preWorkStep;
		}
		else
		{
			ledStep = 0;
		}
	}
	else if(showBatTime > 0)
	{
		showBatTime--;
		if(prePwStep >= 14)
		{
			ledStep = prePwStep/14;
		}
		else if(prePwStep > 5)
		{
			ledStep = 1;
		}
		else
		{
			if(count1s < 50)
			{
				ledStep = 1;
			}
			else
			{
				ledStep = 0;
			}
		}
	}
	else if(workStep > 0)
	{
		ledStep = workStep;
	}
	else if(chrgFlag)
	{
		if(count1s % 50 == 0)
		{
			if(++ledStep > 6)
			{
				ledStep = lockLedStep;
			}
		}
	}
	else
	{
		ledStep = 0;
	}
}



void chrgCtr()
{
	if(PORTA & 0x02)
	{
		if(chrgFlag == 0)
		{
			chrgFlag = 1;
			chrgMaxDuty = 0;
			chrgPwmStop();
		}
		RB1 = 1;
		jrStep = 0;
		workStep = 0;
		pwmStop();
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
					if(prePwStep > 14)
					{
						lockLedStep = (prePwStep/14) - 1;
					}
					else
					{
						lockLedStep = 0;
					}
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
			chrgMaxAD = 8;
		}
		else if(batADValue < 1530)
		{
			chrgMode = 1;
			chrgMaxAD = 29;
			lockCount = 0;
		}
		else if(count1s == 0)
		{
			if(++lockCount > 200)
			{
				lockCount = 0;
				chrgMode = 2;
			}
			
			chrgMaxAD = 60;
		}
		if(chrgMode == 2 && outADValue < 5)
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
			lockLedStep = 6;
			chrgPwmStop();
		}
		else
		{
				if(prePwStep < 15)
				{
					lockLedStep = 0;
				}
				else
				{
					lockLedStep = (prePwStep/14) - 1;
				}
				if(batADValue > 1550 || outADValue > chrgMaxAD)
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
				PWMD2L = chrgMaxDuty;
		}
	}
	else
	{
		RB1 = 0;
		startChrgTime = 0;
		chrgFlag = 0;
		chrgFullFlag = 0;
		protectFlag = 0;
		chrgMode = 0;
		chrgMaxAD = 0;
		chrgMaxDuty = 0;
		lockCount = 0;
		lockLedStep = 0;
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
	char kclick = keyRead(0x04 & (~PORTB));
	if(kclick == 1)
	{
		if(workStep > 0)
		{
			if(++workStep > 6)
			{
				workStep = 1;
			}
		}
		else if(showBatTime > 0)
		{
			showBatTime = 0;
		}
		else
		{
			showBatTime = 200;
			count1s = 0;
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
			startTime = 30;
			showBatTime = 0;
			overWorkTime = 0;
		}
	}
}

void workCtr()
{

	if(startTime > 0)
	{
		startTime--;
	}
	if(workStep > 0)
	{
		if(motorPwmFlag == 0)
		{
			pwmInit();
			
		}
		maxDuty = 36 + (workStep*2);
		if(overCount >= 5)
		{
			if(++count5s > 600)
			{
				count5s = 0;
				overWorkTime = 300;
				preWorkStep = workStep;
    			prejrStep = jrStep;
				workStep = 0;
				jrStep = 0;
			}
		}
		else
		{
			count5s = 0;
		}
		if(count1s == 0 && ++count900s >= 900)
		{
			workStep = 0;
			jrStep = 0;
		}
	}
	else
	{
		pwmStop();
		count900s = 0;
	}
	
}

void checkOutA()
{
	test_adc = ADC_Sample(0, 5);		//����AN0�ڵ�ADֵ���ο���ѹ2V
	if (0xA5 == test_adc)				//������ɣ���������ԭ����ADת��û����ɣ��򲻴���
	{
		if(chrgFlag && adresult > 100)
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
		//������˹��ر���
        if(workStep && (outADValue > 600))
        {
        	if(++workOverOutTime > 50)
        	{
        		workOverOutTime = 0;
        		workStep = 0;
        	}
        }
		else
		{
			workOverOutTime = 0;
		}
		u8t maxtempV = 130 + (workStep * 10);
		if(jrStep > 0)
		{
			maxtempV = maxtempV - 40;
			if(workStep < 5)
        	{
        		maxtempV = maxtempV - 30;
        	}
		}
		if(outADValue > maxtempV)
        {
        	if(++overCount > 5)
        	{
        		overCount = 5;
        	}
        }
        else
        {
        	
        	if(overCount > 0)
        	{
        		overCount--;
        	}
			u8t maxAout = 32;
			if(pwStep < 40)
			{
				maxAout = 30;
			}
        	if(workStep == 1)
    		{
    			maxAout = maxAout + 1;
    		}
			else if(workStep == 2)
    		{
    			maxAout = maxAout + 3;
    		}
			else if(workStep == 3)
    		{
    			maxAout = maxAout + 5;
    		}
    		else if(workStep == 4)
    		{
    			maxAout = maxAout + 7;
    		}
    		else if(workStep == 5)
    		{
    			maxAout = maxAout + 9;
    		}
    		else if(workStep == 6)
    		{
    			maxAout = maxAout + 12;
    		}
        	if(overCount > 0)
        	{
        		overCount--;
        	}
        	if(outADValue > maxAout)
        	{
  
					if(startTime == 0)
					{
						tempDuty = 81 + (workStep*3);
					}
					else
					{
						tempDuty = maxDuty;
					}

	        		
        	}
        	else 
        	{
        		addPowerCount = 0;
        		if(tempDuty > maxDuty)
        		{
        			tempDuty--;
        		}
        		else
        		{
        			tempDuty = maxDuty;
        		}

        	}
   
        }
		PWMD23H = 0X00;
		PWMD3L = tempDuty;
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
	test_adc = ADC_Sample(2, 5);		//����AN2�ڵ�ADֵ���ο���ѹ2V
	if (0xA5 == test_adc)				//������ɣ���������ԭ����ADת��û����ɣ��򲻴���
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
				jrStep = 0;
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
		ADCON0 = 0;						//���ת��û����ɣ����ʼ��ADCON0,1
		ADCON1 = 0;				
		__delay_us(100);				//��ʱ100us(���������ú���)
	}
	/*
	test_adc = ADC_Sample(3, 5);		//����AN2�ڵ�ADֵ���ο���ѹ2V
	if (0xA5 == test_adc)				//������ɣ���������ԭ����ADת��û����ɣ��򲻴���
	{
		if(chrgFlag && adresult > 100)
	    {
	    	//�е��
	    	if(adresult > 810 || (batADValue - adresult) > 810)
	    	{
	    		//��һ�ڵ���Ѿ�����
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
		ADCON0 = 0;						//���ת��û����ɣ����ʼ��ADCON0,1
		ADCON1 = 0;				
		__delay_us(100);				//��ʱ100us(���������ú���)
	}
	*/
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

	WPUA = 0B00000000;				//����������1Ϊʹ������
	WPDA = 0x00;					//RA1������
	WPUB = 0x04;

	TRISA = 0x07;				//����IO״̬��0Ϊ�����1Ϊ����
	TRISB = 0x04;

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
	ANSEL0 = 0X05;
	ANSEL1 = 0x00;	
}


void chrgPwmInit()
{
		chrgPwmFlag = 1;
		PWMCON1 = 0B00000000;	//PWMѡ��D�飬����2��ֹ������1ʹ�ܣ�����ʱ��ԴΪFosc/4
		
		PWMTH = 0X00;			//����ѡ��Ϊ0FF��������Ϊ��255+1��*1/8M�����ڵ�ʱ�ӷ�Ƶ��PWMCON0ѡ��
		PWMTL = 100;			//PWM ����=[PWMT+1]*Tosc*(CLKDIV ��Ƶֵ)
		
	
		
		PWMD23H = 0;			//����PWM1,PWM2��ռ�ձȣ���ֵ���ܳ������ڣ�����Ϊ100%���
		PWMD2L = 10;			//����ģʽ��PWM1��ռ�ձ���PWM0������������ֵ�޹�
		PWM23DT = 0X00;			//������Ϊ2uS������Ϊ��3+1��*1/8M*4
		
		PWMCON0 = 0X04;			//��PWM2 ��Ƶ��Ϊ1
		PWMCON2 =0X00;			//PWM4�������
}

void chrgPwmStop()
{
	if(chrgPwmFlag)
	{
		chrgPwmFlag = 0;
		PWMCON0 &= 0xFB;	//�ر�PWM2
		RB3 = 0;
	}
}

void pwmInit()
{
		motorPwmFlag = 1;
		PWMCON1 = 0B00000000;	//PWMѡ��A�飬����2��ֹ������1ʹ�ܣ�����ʱ��ԴΪFosc/4
		PWMTH = 0X00;			//����ѡ��Ϊ0FF��������Ϊ��255+1��*1/8M�����ڵ�ʱ�ӷ�Ƶ��PWMCON0ѡ��
		PWMTL = 100;			//PWM ����=[PWMT+1]*Tosc*(CLKDIV ��Ƶֵ)
		
		
		PWMD23H = 0;			//����PWM1,PWM2��ռ�ձȣ���ֵ���ܳ������ڣ�����Ϊ100%���
		PWMD3L = 43;			//����ģʽ��PWM1��ռ�ձ���PWM0������������ֵ�޹�
		PWM23DT = 0X00;			//������Ϊ2uS������Ϊ��3+1��*1/8M*4

		PWMCON0 = 0X68;			//��PWM1 ��Ƶ��Ϊ8
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

	WPUA  = 0B00000000;			//RA0 ����������
	TRISA = 0x07;				//����IO״̬��0Ϊ�����1Ϊ����
	TRISB = 0x04;

	PORTA = 0X00;
	PORTB = 0X00;
	WPUB  = 0x04;			//RB2 ����������
   			
   	ADCON0 = 0;					//�ر�����ģ��
	ADCON1 = 0;
	
	PWMCON0 = 0;
		
	OSCCON = 0X70;				//������Ϊ8M,�ر�WDT����ע��оƬ����ѡ����WDT����ѡΪDISABLE,�����޷�����ص�WDT
	
	IOCA = 0x02;			//����RA1��IO��ƽ�仯�ж�
	IOCB = 0x04;			//����RB3��IO�ڵ�ƽ�仯�ж�
	
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

