#include <SC.h>

typedef unsigned char u8t;
typedef unsigned short u16t;

#define L1OUT	TRISC &= 0xFE
#define L2OUT	TRISB &= 0xFB
#define L3OUT	TRISB &= 0xFD

#define L1IN	TRISC |= 0x01
#define L2IN	TRISB |= 0x04
#define L3IN	TRISB |= 0x02

#define L1H		PORTC |= 0x01
#define L2H		PORTB |= 0x04
#define L3H		PORTB |= 0x02

#define L1L		PORTC &= 0xFE
#define L2L		PORTB &= 0xFB
#define L3L		PORTB &= 0xFD

volatile unsigned int	adresult;
u8t intCount = 0;
u8t IntFlag = 0;
u8t ledDeadTime = 0;
u8t workStep = 0;
u8t ledStep = 0;
u8t pwStep = 0;
u8t count1s = 0;
u8t shanshuoTime = 0;
u8t ledLightTime = 0;
u8t tempLedStep = 0;
u8t sleepTime = 0;
u8t currentDuty = 0;
u8t maxDuty = 0;
u8t ledTime = 0;
u8t prePwStep = 0;
u8t count500ms = 0;
u8t keyCount = 0;
u8t longPressFlag = 0;
u8t tempDuty = 0;
u8t cDuty = 0;

void ADC_Sample(unsigned char adch);
void DelayXms(unsigned char x);
void InitSys();
void LED1ON();
void LED2ON();
void LED3ON();
void LED4ON();
void LED5ON();
void LED6ON();
void LedInput();
void setpwm1Duty(u8t dutyValue);
void setpwmDuty(u8t dutyValue);
void pwmInit();

#define _DEBUG			//���Գ�����

/**********************************************************
�������ƣ�AD_Sample
�������ܣ�AD���
��ڲ�����adch - ���ͨ��
���ڲ������� 
��    ע������ͨ������������Ϊģ���
	      ����10��,ȡ�м�˴ε�ƽ��ֵΪ�����������adresult��
**********************************************************/
void ADC_Sample(unsigned char adch)
{
	static unsigned long adsum = 0;
	static unsigned int admin = 0,admax = 0;
	static unsigned char adtimes = 0;
	volatile unsigned int ad_temp;
	ADCON1 = 0;						//�����
	ADCON0 = 0X41 | (adch << 2);	//16��Ƶ
	asm("nop");
	asm("nop");
	GODONE = 1;						//��ʼת��

	unsigned char i = 0;
	while(GODONE)
	{
		if(0 == (--i))
			return;
	}
	
	ad_temp=(ADRESH<<4)+(ADRESL>>4);	//����12λADֵ
	
	if(0 == admax)
	{
		admax = ad_temp;
		admin = ad_temp;
	}
	else if(ad_temp > admax)
		admax = ad_temp;				//AD�������ֵ
	else if(ad_temp < admin)
		admin = ad_temp;				//AD������Сֵ
	
	adsum += ad_temp;
	if(++adtimes >= 10)
	{
		adsum -= admax;
		adsum -= admin;
		
		adresult = adsum >> 3;		//8��ƽ��ֵ��Ϊ���ս��
		
		adsum = 0;
		admin = 0;
		admax = 0;
		adtimes = 0;
	}
}


//ADC���β���
unsigned char ADC_Result(unsigned char adch)
{
	ADCON1 = 0;						//�����
	ADCON0 = 0X41 | (adch << 2);	//16��Ƶ
	asm("nop");
	asm("nop");
	GODONE = 1;						//��ʼת��

	unsigned char i = 0;
	while(GODONE)
	{
		if(0 == (--i))
			return 0;				//ת����ʱ
	}
	return ADRESH;
}
/***********************************************************
�������ƣ�DelayXms
�������ܣ����뼶�Ǿ�׼��ʱ
��ڲ�����x - ��ʱʱ��
���ڲ�����
��    ע��
***********************************************************/
void DelayXms(unsigned char x)
{
	unsigned char i,j;
	for(i=x;i>0;i--)
		for(j=153;j>0;j--);
}

/***********************************************************
main������
***********************************************************/
void main()
{
	
	InitSys();
	while(1)
	{
		asm("clrwdt");
		ledShow();
		 if(workStep > 0 && tempDuty >= 28)
	    {
	    	if(cDuty > tempDuty)
	    	{
	    		cDuty--;
	    		PWM2DUTY = cDuty;
	    	}
	    	else if(cDuty < tempDuty)
	    	{
	    		cDuty++;
	    		PWM2DUTY = cDuty;
	    	}
	    }
	    if(workStep > 0 && currentDuty > maxDuty)
		{
			currentDuty = currentDuty - 1;
			PWM2DUTY = currentDuty;
			cDuty = currentDuty;
		}
		 if(!IntFlag)
    		continue;			//10msִ��һ��
    	IntFlag = 0;
		
#ifdef _DEBUG		
		ANSELH = 0X20;
		TRISB5 = 1;
		ADC_Sample(13);
		
		unsigned char result;
		
		result = ADC_Result(13);
#endif
	}
}



void InitSys()
{
	asm("nop");
    asm("clrwdt");
    INTCON = 0;                    //ϵͳ��ʼ��
    OSCCON = 0X71;                //������Ϊ8M,�� WDT
    OPTION_REG = 0x00;        //Timer0ʹ���ڲ�ʱ��Focs/4��Ԥ��Ƶ��Ϊ1:2
    TMR0 = 155;                //�����ʼֵ
    INTCON = 0xE0;            //��������δ�����ε��жϡ���ֹ�����жϣ�ʹ��Timer0
}


char keyRead(char keyStatus)	
{ 
	if(keyStatus)
	{
		keyCount++;
		if(keyCount >= 100)
		{
			keyCount = 100;
			if(longPressFlag == 0)
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
		else if(keyCount >= 4)
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
	char kclick = keyRead(0x80 & (~PORTB));
	if(kclick == 1)
	{
		count500ms = 0;
		ledLightTime = 0;
		if(workStep == 0)
		{
			count1s = 0;
			ledLightTime = 3;
			prePwStep = 0;
			return;
		}
		ledTime = 0;
		if(++workStep > 6)
			workStep = 1;
		if(pwStep == 0)
			shanshuoTime = 10;
		if(workStep == 1)
		{
			maxDuty = 45;
			ledLightTime = 0;
		}
		else if(workStep == 2)
			maxDuty = 49;
		else if(workStep == 3)
			maxDuty = 53;
		else if(workStep == 4)
			maxDuty = 57;
		else if(workStep == 5)
			maxDuty = 61;
		else if(workStep == 6)
			maxDuty = 65;
		if(workStep > 0)
		{
			pwmInit();
			setpwmDuty(maxDuty);
		}
		ledStep = workStep;
	}
	else if(kclick == 2)
	{
		if(workStep > 0)
		{
			powerOff();
		}
		else
		{
			if(pwStep == 10)
			{
				sleepTime = 0;
				return;
			}
			ledLightTime = 0;
			ledStep = 1;
			workStep = 1;
			setpwmDuty(45);
			currentDuty = 45;
			maxDuty = 45;
			pwmInit();
			if(pwStep == 0)
				shanshuoTime = 10;
			
		}
		ledStep = workStep;
	}
}


void ledShow()
{
	
	if(ledDeadTime > 0 && workStep == 0)
	{
		if(ledDeadTime % 2 == 0)
		{
			ledStep = 0;
		}
		else
		{
			ledStep = tempLedStep;
		}
	}
	
	if(ledLightTime > 0 && pwStep > 0)
	{
		if(ledLightTime > 0)
		{
			if(pwStep > 6 )
				ledStep = 6;
			else
				ledStep = pwStep;
		}
	}
	if(shanshuoTime > 0 && workStep > 0 && pwStep == 0)
	{
		if(count1s < 50)
			ledStep = workStep;
		else
			ledStep = 0;
	}

	LedInput();
	switch(ledStep)
	{
		case 0:
		LedInput();
		break;
		case 8:
		case 7:
		case 6:
		LED6ON();
		case 5:
		LED5ON();
		case 4:
		LED4ON();
		case 3:
		LED3ON();
		case 2:
		LED2ON();
		case 1:
		LED1ON();
		break;
	}
}



void LedInput()
{
	TRISC |= 0x01;
	TRISB |= 0x06;
	PORTC &= 0xFE;
	PORTB &= 0xF9;
}

void LED1ON()
{
	L3OUT;
	L1OUT;
	L3H;
	L1L;
	delay(100);
	LedInput();
}

void LED2ON()
{
	L2OUT;
	L3OUT;
	L2H;
	L3L;
	delay(100);
	LedInput();
}

void LED3ON()
{
	L3OUT;
	L1OUT;
	L1H;
	L3L;
	delay(100);
	LedInput();
}

void LED4ON()
{
	L3OUT;
	L2OUT;
	L3H;
	L2L;
	delay(100);
	LedInput();
}

void LED5ON()
{
	L2OUT;
	L1OUT;
	L2H;
	L1L;
	delay(100);
	LedInput();
}


void LED6ON()
{
	L2OUT;
	L1OUT;
	L1H;
	L2L;
	delay(100);
	LedInput();
}



void setpwm1Duty(u8t dutyValue)
{
	u8t dutyH = (dutyValue >> 2) & 0x3F;
	u8t dutyL = (dutyValue << 4) & 0x30;
	DC1B0	= (dutyL & 0x01);
	DC1B1	= (dutyL & 0x02);
	CCPR1L = dutyH;
}

void pwm1Init()
{
	PR2 = 0x0F;              	//125KHz
    CCP1CON = 0x0C;          	//CCP1ģ�鹤����PWMģʽ
    CCPR1L = 0x01;           	//װ��CCPR1L�Ĵ�������PWMռ�ձȣ�Ϊ80%
    
	TMR2IF = 0;              	//����PIR1�Ĵ����е�TMR2IF�жϱ�־λ
    T2CKPS0 = 0;             	//��ʱ��TMR2����1:1Ԥ��Ƶ�ȣ�T2CKPS0=0
    T2CKPS1 = 0;             	//��ʱ��TMR2����1:1Ԥ��Ƶ�ȣ�T2CKPS1=0
    TMR2ON = 1;              	//T2CON�Ĵ����е�TMR2ONλ��1ʹ��Timer2
    TRISC2 = 0;					//����TRISC2λ��ʹ��CCP1�������������
}

void pwm1Stop()
{
	CCP1CON = 0x00;
}

void setpwmDuty(u8t dutyValue)
{
	u8t dutyH = (dutyValue >> 2) & 0x3F;
	u8t dutyL = (dutyValue << 4) & 0x30;
	DC2B0	= (dutyL & 0x01);
	DC2B1	= (dutyL & 0x02);
	CCPR2L = dutyH;
}


void pwmInit()
{
	//PR2 = 99;              	//װ��PR2�Ĵ�������PWM���ڣ�Ƶ��Ϊ20KHz
    CCP2CON = 0x0C;          	//CCP2ģ�鹤����PWMģʽ
    CCPR2L = 0x78;           	//װ��CCPR2L�Ĵ�������PWMռ�ձȣ�Ϊ80%
    
	TMR2IF = 0;              	//����PIR1�Ĵ����е�TMR2IF�жϱ�־λ
    T2CKPS0 = 0;             	//��ʱ��TMR2����1:1Ԥ��Ƶ�ȣ�T2CKPS0=0
    T2CKPS1 = 0;             	//��ʱ��TMR2����1:1Ԥ��Ƶ�ȣ�T2CKPS1=0
    TMR2ON = 1;              	//T2CON�Ĵ����е�TMR2ONλ��1ʹ��Timer2
    TRISC1 = 0;					//����TRISC1λ��ʹ��CCP1�������������
}

void pwmStop()
{
	CCP2CON = 0x00;
}


/***********************************************
�������ƣ�Timer0_Isr
�������ܣ��жϷ���
��ڲ�������
���ڲ�������
��ע��
***********************************************/
void interrupt Timer0_Isr() {
    if (T0IF) {
        //---------------------------------------
        TMR0 += 155;        //���¸���ֵ���ڸ�ֵǰTimer0���м��������ڸû����ϼӳ�ֵ
        //---------------------------------------

        T0IF = 0;            //���жϱ�־λ	
        if(++intCount >= 100)
		{
			IntFlag = 1;
			intCount = 0;
		}

    }

    if (RBIF) {
        RBIF = 0;            //���жϱ�־
    }
}
