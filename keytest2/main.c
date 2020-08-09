#include <sc.h>
#include "pwm.h"
#include "Touch_Kscan_Library.h"

volatile unsigned char MainTime;
volatile unsigned char pwmTime;
volatile unsigned char irStep = 0; //0Ϊδ�ڵ� 1�ڵ�  2����
unsigned char	revCount = 0;//�յ��Ĳ��μ���
unsigned char	revZeroCount = 0;//δ�յ��Ĳ��μ���
unsigned char	checkCount = 0;	//������
unsigned char	pwm0Step = 1;	//	pwm0��λ
unsigned char	pwm1Step = 1;	//	pwm1��λ
unsigned int 	timeCount = 0;

volatile bit	sendFlag;	//������
volatile bit	B_MainLoop;
volatile bit	sendStartFlag;	//���俪ʼ���
volatile bit	doublePressFlag;	//ͬʱ���±��
volatile bit	ONFlag;	//���ر�ǣ�1Ϊ��
volatile bit	pwmFlag;	//PWM���ر�ǣ�1Ϊ��
volatile bit	keyLockFlag;	//������������
volatile bit	doubleTouchFlag;	//ͬʱ�������λ
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
	WPUB = 0x00;
	WPDB = 0x00;
	WPUA = 0x00;
	//PIE2 = 0;
	PIE1 = 2;
	PR2 = 250;				//8M�½�TMR2����Ϊ125us�ж�
	T2CON = 4;				//ʹ�ܶ�ʱ��2
	TRISA = 0x00;
	TRISB = 0x07;			//PB2Ϊ������տ�
	PORTB = 0x00;
	PORTA = 0x00;
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
	if(ONFlag == 0)
		return;
	pwmFlag = 1;
	if(++pwm0Step > 5)
		pwm0Step = 1;
	switch(pwm0Step)
	{
		case 1:
		mode1();
		break;
		case 2:
		mode2();
		break;
		case 3:
		mode3();
		break;
		case 4:
		mode4();
		break;
		case 5:
		mode5();
		break;

	}
}

//����2�����߼�
void procKey2()
{
	if(ONFlag == 0)
		return;
	pwmFlag = 1;
	if(++pwm1Step > 5)
		pwm1Step = 1;
	switch(pwm1Step)
	{
		case 1:
		modea();
		break;
		case 2:
		modeb();
		break;
		case 3:
		modec();
		break;
		case 4:
		moded();
		break;
		case 5:
		modee();
		break;
	}
}


void startPWM()
{	
	--pwm0Step;
	--pwm1Step;
	initPWM();
	procKey1();
	procKey2();
}



/***********************************************************
��������
***********************************************************/
void KeyServer()
{
	static unsigned int KeyOldFlag = 0;
	unsigned int i = (unsigned int)((KeyFlag[1]<<8) | KeyFlag[0]);
	if(i)
	{
	
		if(i != KeyOldFlag)
		{
			if(keyLockFlag)
			{
				doubleTouchFlag = 1;
				return;
			}
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
				break;
			}
		}
		keyLockFlag = 1;	//��������
	}
	else
	{
		KeyOldFlag = 0;
		keyLockFlag = 0;
		if(doubleTouchFlag)
		{
			//ͬʱ���²��ɿ���
			ONFlag = !ONFlag;
		}
		doubleTouchFlag = 0;
	}
}
//�������ڵ�
void checkIRKey()
{
	if(getbit(PORTB, 2))
	{
		revCount++;		//��⵽�ڵ���
	}
	
	if(checkCount > 10 && irStep)
	{
		sendFlag = 0;
	}
	else
	{
		sendFlag = 1;	//δ��⵽�ڵ�
	}
	
	if(++checkCount >= 20)
	{
		if(revCount > 2)
		{
			if(irStep == 0)
			{
				irStep = 1;		//��⵽�ڵ���
				if(ONFlag == 1)
				{
					ONFlag = 0;			
				}
				else
				{
					ONFlag = 1;
				}
			}
			revZeroCount = 0;		//����
		}
		else
		{
			if(++revZeroCount > 1)
			{
				revZeroCount = 1;
				irStep = 0;			//�ƿ���
			}
		}

		
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
	PORTB = 0x00;
	PORTA = 0x00;
	Init_System();
	sendFlag = 1;
	//initPWM();
	while(1)
	{
		CLRWDT();
		if(B_MainLoop)
		{
			B_MainLoop = 0;
			//sRefurbish_Sfr();
			CheckTouchKey();
			KeyServer();
			checkIRKey();
			if(ONFlag)
			{
				startPWM();
			}
			else
			{
				PWMCON0 = 0;
				PORTB &= 0x7F;
				PORTA &= 0xDF;
			}
			/**
			if(ONFlag && pwmFlag == 0)
			{
				startPWM();
			}
			else if(ONFlag == 0 && pwmFlag == 1)
			{
				PWMCON0 = 0;
				pwmFlag = 0;
				PORTB &= 0x7F;
				PORTA &= 0xDF;
			}
			
			*/
		}
	}
}