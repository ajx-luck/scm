#include <cms.h>
#include "Touch_Kscan_Library.h"
#include "REL_Sender.h"

volatile unsigned char MainTime;
volatile bit	B_MainLoop;

//ϵͳ��ʼ��
void Init_System()
{	
	asm("nop");
	asm("clrwdt");
	INTCON = 0;				//��ֹ�ж�
	OSCCON = 0X71;			//������Ϊ8M
	OPTION_REG = 0;
	
	WDTCON = 0x01;
	asm("clrwdt");
	//��ʱ�ȴ���Դ��ѹ�ȶ�
	//DelayXms(200);

	PIE2 = 0;
	PIE1 = 2;
	PR2 = 250;				//8M�½�TMR2����Ϊ125us�ж�
	T2CON = 4;				//ʹ�ܶ�ʱ��2
	
	INTCON = 0XC0;			//ʹ���ж�
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
	//��Ϊ���ֿ�
	ANSEL = 0;
	ANSELH = 0;
	
	TRISA = 0;
	TRISB = 0;
	TRISC = 0;
	TRISE = 9;
	
//	SSPCON2 = 0;
	CCP1CON = 0;
	CCP2CON = 0;
//	RCSTA = 0;
//	RCREG = 0;
//	TXSTA = 0;
	IOCB = 0;
//	PSTRCON = 0;
//	CM1CON0 = 0;
//	CM2CON0 = 0;
//	CM2CON1 = 0;
//	SRCON = 0;
//	BAUDCTL = 0;
//	PWMCON0 = 0;
//	PWMCON1 = 0;
	T1CON = 0;
	EECON1 = 0;
	
	OPTION_REG = 0;
	WDTCON = 0x01;
	
	
	//ˢ���ж���ؿ��ƼĴ���
	PIE2 = 0;
	PIE1 = 2;
	PR2 = 250;
	INTCON = 0XC0;
	if(4 != T2CON)
		T2CON = 4;
}


/***********************************************************
����������
***********************************************************/
void Kscan()
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
				case 2:
				case 4:
				case 8:
				default:break;
			}
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
		if(++MainTime >= 32)
		{
			MainTime = 0;
			B_MainLoop = 1;
		}
	}
}

/***********************************************************
��ѭ��
***********************************************************/
void main()
{
	Init_System();
	while(1)
	{
		if(B_MainLoop)
		{
			B_MainLoop = 0;
			CLRWDT();
			Refurbish_Sfr();
			
			CheckTouchKey();
			#if (REL_SENDER_ENABLE == 1)//���Ժ궨���Ƿ�Ϊ1
				REL_SenderLoop();//�����ӳ���
			#endif
					
			Kscan();
		}
	}
}