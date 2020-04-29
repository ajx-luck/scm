#include<sc.h>



unsigned char timeoutFlag;

void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;					//ϵͳ��ʼ��
	OSCCON = 0X71;				//������Ϊ8M,�� WDT
	OPTION_REG = 0x00;		//Timer0ʹ���ڲ�ʱ��Focs/4��Ԥ��Ƶ��Ϊ1:2
	TMR0 = 0;				//�����ʼֵ
	INTCON = 0xE0;			//��������δ�����ε��жϡ���ֹ�����жϣ�ʹ��Timer0
	TMR0PRD = 100;
	

	TRISB = 0;	
	WPUB = 0xFF;
	PDCONB = 0;//�ر���������
	PORTB = 0xFF;
	IOCB = 0x00;
}

void main(void)
{
	Init_System();
	unsigned int count = 0;
	unsigned char FirstFlag = 1;
	unsigned char ledIndex = 4;
	while(1)
	{
		asm("clrwdt");
		if(timeoutFlag)
		{
			timeoutFlag = 0;
			if(count == 400)
				{
					count = 0;
				}
				
			if(FirstFlag)
			{
				switch(count)
				{
					case 100:
					PORTB = 0xFC;
					break;
					case 200:
					PORTB = 0xF9;
					break;
					case 300:
					PORTB = 0xF3;
					FirstFlag = 0;
					break;
					case 0:
					PORTB = 0xFE;
					break;
				}
			}else
			{
				switch(count)
				{
					case 100:
					PORTB = 0xEC;
					break;
					case 200:
					PORTB = 0xF9;
					break;
					case 300:
					PORTB = 0xF3;
					break;
					case 0:
					PORTB = 0xE6;
					break;
				}
			}
			
			
			count++;
			
		}
	}
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
	//	TMR0 += 50;		//���¸���ֵ���ڸ�ֵǰTimer0���м��������ڸû����ϼӳ�ֵ
	//---------------------------------------
			
		T0IF = 0;			//���жϱ�־λ	
		timeoutFlag = 1;
	}
}
