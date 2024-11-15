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
	SYS_GEN = 0;				//��ֹ�ж�,��ֹAD
	OPTION_REG = 0;
	
	P0CL = 0B10101010;			//��ʼ��IO�ڹ���
	P0CH = 0B10101010;
	
	P1CL = 0B10101010;
	P1CH = 0B10010010;
	
	P2C = 0B10010010;
	
	P0 = 0B00000000;			//��ʼ�����
	P1 = 0B00000000;
	P2 = 0B00000000;
		

	//TMR2��ʱ�ж�125us
	T2DATA = 250;				//����TMR2���ʱ��
	T2CON = 0x30;				//����TMR2ʱ��
	
	INT_FLAG = 0;				//����TMR2�ж������־
	INT_EN = 0x04;				//ʹ��TMR2�ж�
	
	SYS_GEN = 0x01;				//���ж�ʹ��
	T2_CLR = 1;					//TMR2��ʱ����ʼ����
			
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
	P0CL = 0B10011010;			//ˢ��IO�ڹ���
	P0CH = 0B00000001;
	
	P1CL = 0B10101010;
	P1CH = 0B10010010;
	
	P2C = 0B10010010;


	OPTION_REG = 0;
								//ˢ���ж���ؿ��ƼĴ���
	T2DATA = 250;				
	INT_EN = 0x04;				
	SYS_GEN = 0x01;				
	if(0x31 != T2CON)
		T2CON = 0x31;
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
	if(F_T2)				//��ֻʹ����һ���ж�Դ,������ȥ�ж�
	{
		F_T2 = 0;
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