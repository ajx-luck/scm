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
	
	PORTA = 0;
	PORTB = 0;
	PORTC = 0;
	INTCON = 0x00;
	PIR1 = 0;
	PIR2 = 0;
	TRISA = 0x00;
	TRISB = 0x00;
	TRISC = 0x00;
	
	OPTION_REG = 0;
	OSCCON = 0x72;
	PIE1 = 0;
	PIE2 = 0;
	//IOCA = 0;
	//IOCB = 0;
	WPUA = 0;
	WPUB = 0;
	WPUC = 0;
	
	PIE2 = 0;
	PIE1 = 0B00000010;
	PR2 = 125;				//16M�½�TMR2����Ϊ125us�ж�
	T2CON = 5;				//ʹ�ܶ�ʱ��2
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
	asm("clrwdt");
	TRISA = 0x00;
	TRISB = 0x00;
	TRISC = 0x00;
	OPTION_REG = 0;
	OSCCON = 0x72;
	PIE1 = 0B00000010;
	PR2 = 125;
	INTCON = 0XC0;
	if(5 != T2CON)
		T2CON = 5;
}


/***********************************************************
��������
***********************************************************/
void Kscan()
{
	static unsigned int KeyOldFlag = 0;
	unsigned int i = (unsigned int)((_CMS_KeyFlag[1]<<8) | _CMS_KeyFlag[0]);
	if(i)
	{
		if(i != KeyOldFlag)
		{
			KeyOldFlag = i;
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
		if(++MainTime >= 20)
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
			Refurbish_Sfr();
			Kscan();
			__CMS_CheckTouchKey();
			#if (REL_SENDER_ENABLE == 1)//���Ժ궨���Ƿ�Ϊ1
				REL_SenderLoop();//�����ӳ���
			#endif
		}
	}
}