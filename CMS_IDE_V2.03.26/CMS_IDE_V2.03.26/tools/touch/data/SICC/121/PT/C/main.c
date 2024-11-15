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
	TRISA = 0x65;
	TRISD = 0;
	PORTA = 0;
	PORTD = 0;	
	
	PIE2 = 0;
	PIE1 = 0x02;
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
//	ANSEL = 0;
//	ANSELH = 0;
	
	TRISA = 0;//x65;
	TRISB = 0xFF;
	TRISC = 0xFF;
	TRISD = 0;
	
	SSPCON = 0;
	EECON1 = 0;
	
	OPTION_REG = 0;
	WDTCON = 0x01;
	
	
	//ˢ���ж���ؿ��ƼĴ���
	PIE2 = 0;
	PIE1 = 0x02;
	PR2 = 250;
	INTCON = 0XC0;
	if(4 != T2CON)
		T2CON = 4;
}


/***********************************************************
��������
***********************************************************/
void Kscan()
{
	static unsigned int KeyOldFlag = 0;
	unsigned int i = (unsigned int)((KeyFlag[1]<<8) | KeyFlag[0]);
	if(i)
	{
		KeyOldFlag ^= i;
		if(KeyOldFlag)
		{
			if((0x1&KeyOldFlag) && (0x1&i)){}
			if((0x2&KeyOldFlag) && (0x2&i)){}
			if((0x4&KeyOldFlag) && (0x4&i)){}
			if((0x8&KeyOldFlag) && (0x8&i)){}
			if((0x10&KeyOldFlag) && (0x10&i)){}
			if((0x20&KeyOldFlag) && (0x20&i)){}
			if((0x40&KeyOldFlag) && (0x40&i)){}
			if((0x80&KeyOldFlag) && (0x80&i)){}
			if((0x100&KeyOldFlag) && (0x100&i)){}
			if((0x200&KeyOldFlag) && (0x200&i)){}
			if((0x400&KeyOldFlag) && (0x400&i)){}
			if((0x800&KeyOldFlag) && (0x800&i)){}
			
		}
		
		KeyOldFlag = i;
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
		if(++MainTime >= 32)	//25
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