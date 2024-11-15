/***********************************************************************
����˵����
***********************************************************************/
/**********************************************************************/
/*�޸�˵��*/
/*
20210707���������߳���Sleep_Set�������ִ�������쳣ʱ����ʱ�ָ�����
��������ֱָ�Ӵ����������´�����׼ֵ���µ������С�쳣����
*/
/**********************************************************************/
/**********************************************************************/
/**********************************************************************/
/*ͷ�ļ�*/
#include <cms.h>
#include "main.h"
#include "delay.h"
#include "mytype.h"
#include "Touch_Kscan_Library.h"
#include "REL_Sender.h"
/**********************************************************************/
/*ȫ�ֱ�������*/
/**********************************************************************/
static volatile unsigned char LPKEYCON @ 0x189;//���ѱ�־�Ĵ���


volatile unsigned int SleepTimec;
volatile unsigned char tcount;
/**********************************************************************/
/**********************************************************************/
/***********************************************************************
�Ӻ������ܣ��ϵ��ʼ��ϵͳ�Ĵ���
��ڲ�����
�������ݣ�
��ע��
***********************************************************************/
void Init_ic (void)
{
	asm("clrwdt");
	OPTION_REG = 0;
	PORTA = 0;
	PORTB = 0;
	PORTC = 0;
	INTCON = 0x00;
	PIR1 = 0;
	PIR2 = 0;
	WDTCON = 0x01;
	TRISA = 0B00000000;
	TRISB = 0B00000000;
	TRISC = 0x00;
	OSCCON = 0x71;
	PIE1 = 0;
	PIE2 = 0;
	IOCB = 0;
	WPUA = 0;
	WPUB = 0;
	WPUC = 0;
}

/***********************************************************************
�������ܣ���ʼ�ϵ�RAM��ֵ
��ڲ�����
�������ݣ�
��ע��
***********************************************************************/
void Init_ram (void)
{
	asm("clrwdt");
	PIE2 = 0;
	PIE1 = 0B00000010;
	PR2 = 250;				//8M�½�TMR2����Ϊ125us�ж�
	T2CON = 4;				//ʹ�ܶ�ʱ��2
	INTCON = 0XC0;			//ʹ���ж�
}

/***********************************************************************
�������ܣ�ϵͳ�Ĵ���ˢ��
��ڲ�����
�������ݣ�
��ע��
***********************************************************************/
void Sys_set (void)
{
	asm("clrwdt");
	OPTION_REG = 0;
	WDTCON = 0x01;
	TRISA = 0B00000000;
	TRISB = 0B00000000;
	TRISC = 0x00;
	PIE1 = 0B00000010;
	PR2 = 250;
	INTCON = 0XC0;
	if(4 != T2CON)
		T2CON = 4;
}

/***********************************************************************
�������ܣ�����ϵͳ�Ĵ���ˢ��
��ڲ�����
�������ݣ�
��ע��
***********************************************************************/
void Sys_set_SL (void)
{
	PIR1 = 0;
	PIR2 = 0;
	PIE1 = 0B00000000;
	PIE2 = 0B01000000;
	asm("nop");
	INTCON = 0x40;
	INTCON = 0x40;
	asm("clrwdt");
	WDTCON = 0x01;
	TRISA = 0B00000000;
	TRISB = 0B00000000;
	TRISC = 0B00000000;
	OPTION_REG |= 0X07;
	TMR0 = 0;
	OPTION_REG |= 0X08;
	asm("clrwdt");
	OPTION_REG = 0B00001010;
	asm("clrwdt");
	OSCCON = 0x71;
}

/***********************************************************************
�������ܣ�Sleep_On
***********************************************************************/
void Sleep_On(void)
{
	PORTA = 0x00;
	PORTB = 0;
	PORTC = 0;
	PIR1 = 0;
	PIR2 = 0;
	PIE1 = 0B00000000;
	PIE2 = 0B00000000;
	INTCON = 0x00;
	INTCON = 0x00;
	INTCON = 0x00;
	asm("clrwdt");
	OPTION_REG |= 0X07;
	TMR0 = 0;
	OPTION_REG |= 0X08;
	asm("clrwdt");
	OPTION_REG = 0B00001010;
	asm("clrwdt");
	OSCCON = 0x71;
	WDTCON = 0x01;
	TRISA = 0B00000000;
	TRISB = 0B00000000;
	TRISC = 0x00;
	asm("clrwdt");
	asm("sleep");
	asm("nop");
	asm("nop");
	asm("clrwdt");
}

/***********************************************************************
�������ܣ�Sleep_Set
***********************************************************************/
void Sleep_Set(void)
{
	unsigned char KeySLFst = 0;
	static unsigned int timelmt = 0;
	/******************************************************************/
	if(++SleepTimec >= 500)
	{
		SleepTimec = 0;
		_CMS_SleepTimeOnf = 1;//��������ģʽɨ��
		while(1)
		{
			if(KeySLFst == 0)
			{
				Sys_set();
				Delay(100);
				__CMS_CheckTouchKey();	//ɨ�谴��
				if(_CMS_KeyOnceOver)//��һ����Ҫ��֮ǰ�İ���ɨ����һ�֣���ֹ��Щ�Ĵ�������δˢ��
				{
					_CMS_KeyOnceOver = 0;
					KeySLFst = 1;
				}
			}
			else
			{
				Sys_set_SL();
				__CMS_CheckTouchKey_SL();	//ɨ�谴��
				if(_CMS_KeyOnceOver)
				{
					_CMS_KeyOnceOver = 0;
					timelmt = 0;
					if(!_CMS_KeyOnceHave)
					{
						//RA4 = 0;
						Sleep_On();
						if(LPKEYCON & 0x20)
						{
							_CMS_SleepTimeOnf= 0;
							Sys_set();
							break;
						}
						//RA4 = 1;
					}
					else
					{
						_CMS_KeyOnceHave = 0;
						_CMS_SleepTimeOnf= 0;
						Sys_set();
						break;
					}
				}
				else if(++timelmt >= 150)//�����ִ�������쳣ʱ������ʱ�ָ���������ʵ�������������
				{
					timelmt = 0;
					KeySLFst = 0;
				}
			}
		}
	}
}

/***********************************************************
��������
***********************************************************/
void Kscan()
{
	static unsigned int KeyFlagPT,KeyFlagPT_Old;
	static unsigned char KeyFlagYP,position_old;
	
	KeyFlagYP = _CMS_KeyFlag[0] & 0x0f;
	KeyFlagPT = (unsigned int)(_CMS_KeyFlag[0] >> 4);
	KeyFlagPT |= (unsigned int)(_CMS_KeyFlag[1] << 4);

	if(KeyFlagPT)//��ͨ��������
	{
		SleepTimec = 0;
		KeyFlagPT_Old ^= KeyFlagPT;
		if(KeyFlagPT_Old)
		{
			if(0x01 & KeyFlagPT_Old) {}
			else if(0x02 & KeyFlagPT_Old) {}
			else if(0x04 & KeyFlagPT_Old) {}
			else if(0x08 & KeyFlagPT_Old) {}
			else if(0x10 & KeyFlagPT_Old) {}
			else if(0x20 & KeyFlagPT_Old) {}
			else if(0x40 & KeyFlagPT_Old) {}
			else if(0x80 & KeyFlagPT_Old) {}
		}
		KeyFlagPT_Old = KeyFlagPT;
	}
	else
		KeyFlagPT_Old = 0;
	
	if(KeyFlagYP)//Բ��/����λ�ô���
	{
		SleepTimec = 0;
		
		if(position_old != _CMS_position)
		{
			position_old = _CMS_position;
		}
	}
	else
		position_old = 0;
}

/***********************************************************************
�������ܣ��ж���ں���
***********************************************************************/
void interrupt time0(void)
{
	if(TMR2IF)
	{
		TMR2IF = 0;
		tcount ++;
		__CMS_GetTouchKeyValue();
	}
}

/***********************************************************************
main������
***********************************************************************/
void main(void)
{
	/******************************************************************/
	Init_ic();
	Delay_nms(200);
	Init_ram();//�ϵ����ֵ
	while(1)
	{
		OSCCON = 0x71;
		if(tcount >= 32)
		{
			tcount = 0;//������ѭ��4ms
			Sys_set();
			Kscan();
			#if (REL_SENDER_ENABLE == 1)//���Ժ궨���Ƿ�Ϊ1
				REL_SenderLoop();//�����ӳ���
			#endif
			__CMS_CheckTouchKey();	//ɨ�谴��
			//Sleep_Set();
		}
	}
}
/**********************************************************************/



