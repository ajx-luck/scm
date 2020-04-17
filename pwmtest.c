#include<sc.h>
#include "scankey.h"

void Init_System();





unsigned int nub = 0;


void main()
{
	Init_System();
	
	while(1)
	{
		if(nub %10 == 0)
		{
			if(key_click == key_read(PORTB))
		}
		if(K1 == K1ON)
		{
			PORTB = 0B00000000;

		}
		else
		{
			PORTB = 0B00010000;
		}


	}
}

/***********************************************
�������ƣ�Init_System
�������ܣ�ϵͳ��ʼ��
��ڲ�������
���ڲ�������
��ע��
************************************************/
void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;					//ϵͳ��ʼ��
	OSCCON = 0X70;				//������Ϊ8M,�� WDT
	WPUB = 0xFF;
	OPTION_REG = 0xD0;		//Timer0ʹ���ڲ�ʱ��Focs/4��Ԥ��Ƶ��Ϊ1:2
	TMR0 = 131;				//�����ʼֵ
	INTCON = 0xA0;			//��������δ�����ε��жϡ���ֹ�����жϣ�ʹ��Timer0
	TRISA = 0x00;
	TRISB = 0B00101111;
	TRISC = 0x00;
	PORTA = 0x00;	
	PORTB = 0B00010000;
	PORTC = 0x00;
	IOCB = 0xFF;
}

/***********************************************
�������ƣ�Timer0_Isr
�������ܣ��жϷ���
��ڲ�������
���ڲ�������
��ע��
***********************************************/
void interrupt Timer0_Isr()
{
	if(T0IF)
	{
	//---------------------------------------
		TMR0 += 131;		//���¸���ֵ���ڸ�ֵǰTimer0���м��������ڸû����ϼӳ�ֵ
	//---------------------------------------
			
		T0IF = 0;			//���жϱ�־λ	
		nub++;
	}
}

