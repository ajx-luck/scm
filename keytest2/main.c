#include <sc.h>
#include "pwm.h"
#include "Touch_Kscan_Library.h"

volatile unsigned char MainTime;
volatile unsigned char pwmTime;
volatile unsigned char irStep = 0; //0Ϊδ�ڵ� 1�ڵ�  2����
unsigned char	revCount = 0;//�յ��Ĳ��μ���
unsigned char	checkCount = 0;	//������
unsigned char	pwm0Step = 1;	//	pwm0��λ
unsigned char	pwm1Step = 1;	//	pwm1��λ


volatile bit	sendFlag;	//������
volatile bit	B_MainLoop;
volatile bit	sendStartFlag;	//���俪ʼ���
volatile bit	doublePressFlag;	//ͬʱ���±��
volatile bit	ONFlag;	//���ر�ǣ�1Ϊ��
volatile bit	pwmFlag;	//PWM���ر�ǣ�1Ϊ��
//ϵͳ��ʼ��
void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;				//��ֹ�ж�
	OSCCON = 0X71;			//������Ϊ8M
	OPTION_REG = 0;
	
	//��ʱ�ȴ���Դ��ѹ�ȶ�
	//DelayXms(200);
	
	
	//PIE2 = 0;
	PIE1 = 2;
	PR2 = 250;				//8M�½�TMR2����Ϊ125us�ж�
	T2CON = 4;				//ʹ�ܶ�ʱ��2
	TRISA = 0x00;
	TRISB = 0x04;			//PB2Ϊ������տ�
	
	INTCON = 0XC0;			//ʹ���ж�
}


/**********************************************************
ˢ�����⹦�ܼĴ���
**********************************************************/
void Refurbish_Sfr()
{
/*	//��Ϊ���ֿ�
	ANSEL = 0;
	ANSELH = 0;
	
	TRISA = 0;
	TRISB = 0;
	TRISC = 0;
	TRISE = 9;
	
	LEDCON0 = 0;
	LEDCON1 = 0;
	SEGEN0 = 0;
	SEGEN1 = 0;
	SEGEN2 = 0;
	COMEN = 0;
	
	SSPCON = 0;
//	SSPCON2 = 0;
	CCP1CON = 0;
	CCP2CON = 0;
//	RCSTA = 0;
//	RCREG = 0;
//	TXSTA = 0;
	IOCB = 0;
	PSTRCON = 0;
	CM1CON0 = 0;
	CM2CON0 = 0;
	CM2CON1 = 0;
	SRCON = 0;
//	BAUDCTL = 0;
//	PWMCON0 = 0;
//	PWMCON1 = 0;
	T1CON = 0;
	EECON1 = 0;
	PIE2 = 0;
*/	
	OPTION_REG = 0;
	
	
	//ˢ���ж���ؿ��ƼĴ���
	PIE1 = 2;
	PR2 = 250;
	INTCON = 0XC0;
	if(4 != T2CON)
		T2CON = 4;
}
//����1�����߼�
void procKey1()
{
	pwmFlag = 1;
	if(++pwm0Step > 4)
		pwm0Step = 1;
	switch(pwm0Step)
	{
		case 1:
		mode2_a();
		break;
		case 2:
		mode3_a();
		break;
		case 3:
		mode4_a();
		break;
		case 4:
		mode5_a();
		break;

	}
}

//����2�����߼�
void procKey2()
{
	pwmFlag = 1;
	if(++pwm1Step > 5)
		pwm1Step = 1;
	switch(pwm0Step)
	{
		case 1:
		mode1_a();
		break;
		case 2:
		mode1_b();
		break;
		case 3:
		mode1_c();
		break;
		case 4:
		mode1_d();
		break;
		case 5:
		mode1_e();
		break;
	}
}


void startPWM()
{	
	pwm0Step--;
	pwm1Step--;
	procKey1();
	procKey2();
}



/***********************************************************
����������
***********************************************************/
void KeyServer()
{
	static unsigned int KeyOldFlag = 0;
	unsigned int i = (unsigned int)((KeyFlag[1]<<8) | KeyFlag[0]);
	if(i)
	{
		if(i != KeyOldFlag)
		{
			KeyOldFlag = i;
			switch(i)
			{
				case 1:
				procKey1();
				break;
				case 2:
				procKey2();
				break;
				case 3:
				doublePressFlag = 1;
				break;
				case 4:
				procKey1();
				break;
				case 8:
				procKey2();
				break;
				default:
				if(doublePressFlag)
				{
					//ͬʱ���²��ɿ���
					if(ONFlag)
						ONFlag = 0;
					else
						ONFlag = 1;
				}
				break;
			}
		}
	}
	else
	{
		KeyOldFlag = 0;
	}
}
//�������ڵ�
void checkIRKey()
{
	if(getbit(PORTB, 2))
	{
		revCount++;		//��⵽�ڵ���
		irStep = 2;
	}
	//revCount++;
	if(checkCount > 3 && revCount > 2)
	{
		sendFlag = 0;
		if(irStep == 0)
		{
			if(ONFlag = 1)
				ONFlag = 0;
			else
				ONFlag = 1;
			irStep = 1;		//��⵽�ڵ���
		}
	}
	else
	{
		sendFlag = 1;	//δ��⵽�ڵ�
		if(irStep)
		{
			irStep = 0;			//�ƿ���
			ONFlag = 1;
		}
	}

	if(++checkCount >= 30)
	{
		sendFlag = 1;		//���ü������
		checkCount = 0;
		revCount = 0;
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
		
		if(++MainTime >= 32)
		{
			MainTime = 0;
			B_MainLoop = 1;
		}
		//ģ��pwm���
		if(pwmTime < 12 && sendFlag)
			resetbit(PORTA, 3);
		else
			setbit(PORTA, 3);
		if(++pwmTime >= 44)
		{
			pwmTime = 0;
		}
	}
	else
	{
		PIR1 = 0;
	//	PIR2 = 0;
	}
}

/***********************************************************
��ѭ��
***********************************************************/
void main()
{
	Init_System();
	sendFlag = 1;
	//initPWM();
	//mode1_a();
	while(1)
	{
		if(B_MainLoop)
		{
			B_MainLoop = 0;
			CLRWDT();
			
			CheckTouchKey();
			
			Refurbish_Sfr();
			KeyServer();
			checkIRKey();
			if(ONFlag && pwmFlag == 0)
			{
				startPWM();
			}
			else if(ONFlag == 0 && pwmFlag == 1)
			{
				PWMCON0 = 0;
				pwmFlag = 0;
			}
		}
	}
}