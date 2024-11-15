/***********************************************************************
����˵����
***********************************************************************/
/**********************************************************************/
/*�޸�˵��*/

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
	PORTA = 0;
	PORTB = 0;
	PORTC = 0;
	PORTD = 0;
	INTCON = 0x00;
	asm("clrwdt");
	OPTION_REG = 0;
	PIR1 = 0;
	PIR2 = 0;
	WDTCON = 0x01;
	TRISA = 0B00000000;
	TRISB = 0B00000000;
	TRISC = 0x00;
	TRISD = 0x00;
	
	OSCCON = 0x71;
	PIE1 = 0;
	PIE2 = 0;
	IOCB = 0;
	WPUA = 0;
	WPUB = 0;
	WPUC = 0;
	WPUD = 0;
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
	PR2 = 125;				//16M�½�TMR2����Ϊ125us�ж�
	T2CON = 5;				//ʹ�ܶ�ʱ��2
	
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
	TRISD = 0x00;
	PIE1 = 0B00000010;
	PR2 = 125;
	INTCON = 0XC0;
	if(5 != T2CON)
		T2CON = 5;
}

/***********************************************************************
//��������
***********************************************************************/
void Kscan()
{
	#if(C_KEY_TOTAL >= 17)
	static unsigned long KeyOldFlag = 0,KeyREFFlag = 0;
	unsigned long KeyOnOutput = _CMS_KeyFlag[2];
	KeyOnOutput <<= 16;
	KeyOnOutput |= (unsigned int)((_CMS_KeyFlag[1]<<8) | _CMS_KeyFlag[0]);
	#else
	static unsigned int KeyOldFlag = 0,KeyREFFlag = 0;
	unsigned int KeyOnOutput = (unsigned int)((_CMS_KeyFlag[1]<<8) | _CMS_KeyFlag[0]);
	#endif
	if(KeyOnOutput)
	{
		if(KeyOnOutput != KeyOldFlag)
		{
			KeyOldFlag = KeyOnOutput;			//�м�⵽����

			if(KeyOldFlag & 0x01)
			{
				if(0 == (KeyREFFlag & 0x01))
				{
					KeyREFFlag |= 0x01;

				}
			}
			else
			{
				KeyREFFlag &= ~0x01;
			}
			
			if(KeyOldFlag & 0x02)
			{
				if(0 == (KeyREFFlag & 0x02))
				{
					KeyREFFlag |= 0x02;

				}
			}
			else
			{
				KeyREFFlag &= ~0x02;
			}
			
			if(KeyOldFlag & 0x04)
			{
				if(0 == (KeyREFFlag & 0x04))
				{
					KeyREFFlag |= 0x04;

				}
			}
			else
			{
				KeyREFFlag &= ~0x04;
			}
		
			if(KeyOldFlag & 0x08)
			{
				if(0 == (KeyREFFlag & 0x08))
				{
					KeyREFFlag |= 0x08;

				}
			}
			else
			{
				KeyREFFlag &= ~0x08;
			}
		}
	}
	else
	{
		KeyOldFlag = 0;
		KeyREFFlag = 0;
	}
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

			#if (REL_SENDER_ENABLE == 1)//���Ժ궨���Ƿ�Ϊ1
				REL_SenderLoop();//�����ӳ���
			#endif
			__CMS_CheckTouchKey();	//ɨ�谴��
			Kscan();			//��������
		}
	}
}
/**********************************************************************/



