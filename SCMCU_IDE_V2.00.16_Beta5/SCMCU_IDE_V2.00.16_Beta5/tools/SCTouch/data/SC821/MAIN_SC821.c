#include <sc.h>
#include "Touch_Kscan_Library.h"




volatile unsigned char MainTime;
volatile bit	B_MainLoop,B_OnOff;

//ϵͳ��ʼ��
void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;				//��ֹ�ж�
	OSCCON = 0X72;			//������Ϊ16M
	OPTION_REG = 0;
	
	
	//��ʱ�ȴ���Դ��ѹ�ȶ�
	//DelayXms(200);
	TRISB = 0;
	PORTB = 0;	

	PIE1 = 2;
	PR2 = 250;				//16M�½�TMR2����Ϊ125us�ж�
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
	//ˢ���ж���ؿ��ƼĴ���
	PIE1 = 2;
	PR2 = 250;
	INTCON = 0XC0;
	if (4 != T2CON)
		T2CON = 4;
}


/***********************************************************
����������
***********************************************************/
void KeyServer() 
{
	static unsigned char KeyOldFlag = 0;
	if (KeyFlag[0]) 
	{
		if (KeyFlag[0] != KeyOldFlag) 
		{
			//ȷ��״̬�ı�İ���
			KeyOldFlag ^= KeyFlag[0];
			if ((KeyOldFlag & 0x1) && (KeyFlag[0] & 0x1)) 
			{
				//KEY1������
				PORTB ^= 0x08;
				B_OnOff = !B_OnOff;
			}
			if ((KeyOldFlag & 0x2) && (KeyFlag[0] & 0x2)) 
			{
				//KEY2������
				PORTB ^= 0x08;
				B_OnOff = !B_OnOff;
			}
			if ((KeyOldFlag & 0x4) && (KeyFlag[0] & 0x4)) 
			{
				//KEY3������
				PORTB ^= 0x08;
				B_OnOff = !B_OnOff;
			}
			if ((KeyOldFlag & 0x8) && (KeyFlag[0] & 0x8)) 
			{
				//KEY4������
				PORTB ^= 0x08;
				B_OnOff = !B_OnOff;
			}

			KeyOldFlag = KeyFlag[0];
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
		if(++MainTime >= 32)	//�������ѡ��Ĵ���·���ʹ�������ѡ��ɨ��һ�ΰ�����ʱ��
		{						//�ɸ��ݲ���CAP�ڵĵ��ݳ��ʱ���ж�ɨ��һ����Ҫ��ʱ��
			MainTime = 0;
			B_MainLoop = 1;
		}
	}
	else
	{
		PIR1 = 0;
	}
	
}

void WorkSleep()
{
#if (0 != C_KEY_WAKEUP)
	static unsigned char time;
	
	if(B_OnOff)time = 0;
	
	if(++time >= 125)
	{
		time = 0;
		INTCON = 0;			//;�ض��ж�ʹ�ܣ�
		PIE1 = 0;
		PIE2 = 0;
		PIR1 = 0;
		PIR2 = 0;
		T2CON = 0;
	
		//��������ǰ,����̶����ߵ�ƽ,���ȫ������͵�ƽ,���ر�������������

		TRISB = 0;
		PORTB = 0;


/****����ҪPB���жϻ��ѣ�ʹ�����г��򲢰����޸�****
			TRISB0 =1;	//����
			WPUB0 = 1;	//����			
			RBIF = 0;	//���־
			RBIE = 1;	//����PB�ڵ�ƽ�仯�ж�
			
			PORTB;		//��һ��PB��			
************************************/	

		//��������ģʽ,�����������ѵİ�����ָ���������
		SystemEnterSleep();
		if(RBIF) 
		{
			RBIF = 0;
			PORTB;
		}
		//���߱�����,���������жϵ�SFR,ʹϵͳ������������
		Refurbish_Sfr();
	}
#endif
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
			
			CheckTouchKey();
			
			Refurbish_Sfr();
			KeyServer();

			WorkSleep();		//�粻��ʡ��ģʽ������������Ӻ���
		}
	}
}