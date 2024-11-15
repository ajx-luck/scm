/**********************************************************
��ʱ����ʹ�÷���
**********************************************************/

#include <sc.h>

#ifndef _XTAL_FREQ
 #define _XTAL_FREQ 8000000			//8Mhz,ʹ��������ʱ�������붨����Ƶ
#endif

//΢�뼶�Ǿ�׼��ʱ����
void DelayXus(unsigned char x)
{
	while(--x);
}

//���뼶�Ǿ�׼��ʱ����
void DelayXms(unsigned char x)
{
	unsigned char i = 0;;
	
	while(--x)
	{
		asm("clrwdt"); 
		while(--i)
		{
			asm("nop");
			asm("nop");
			asm("nop");
			asm("nop");
		}
	}
}

void main(void)
{
	OSCCON = 0X72;			//ѡ����ƵΪ8M
	TRISA = 0;
	PORTA = 1;
	DelayXms(50);
	CLRWDT();
	TRISA = 0;
	PORTA = 1;
	DelayXus(50);
	TRISA = 0;
	PORTA = 0;
	while(1)
	{
		NOP();
		_delay(1000);		//��ʱ1000ָ������(���������ú���)
		CLRWDT();
		PORTA ^= 0XFF;
		__delay_us(400);	//��ʱ400us(���������ú���)
		CLRWDT();
		PORTA ^= 0XFF;
		__delay_ms(2);		//��ʱ2ms(���������ú���)
							//ע�������������ʱ����û���忴�Ź���ָ�����ʱʱ�����С��
							//�������õ�WDT���ʱ�䣬WDT�����ʱ��һ�����+-50%�������Ƽ�
							//WDT���ʱ��/2������WDT
		CLRWDT();
		PORTA ^= 0XFF;
	}
}

