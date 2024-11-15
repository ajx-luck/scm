#include <sc.h>

void main(void)
{
	asm("nop");
	asm("clrwdt");
	OSCCON = 0X72;				//8M,��WDT
	
	TRISB = 0;					//PORTB���������
	
	OPTION_REG = 0B00000000;	//Timer0ʹ���ڲ�ʱ�ӣ�Ԥ��ƵΪ1:2
	
	TMR0 = 0;					//�趨Timer��ʼֵ
	T0IF = 0;
	T0IE = 0;					//�ر�Timer0����ж�
	
	GIE = 0;					//�ر����ж�
	
	while(1)
	{
		if(TMR0 >=125)			//��ʱ125us
		{
			TMR0 -= 125;
			PORTB ^= 0XFF;
		}
		asm("clrwdt");
	}
}

