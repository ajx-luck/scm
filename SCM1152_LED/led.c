#include<sc.h>

#define setbit(x,y)  x|=(1<<y)
#define resetbit(x,y)  x&=~(1<<y)
#define reversebit(x,y)  x^=(1<<y)

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
	unsigned char index = 0;
	while(1)
	{
		asm("clrwdt");
		if(timeoutFlag)
		{
			timeoutFlag = 0;
			count++;
			if(count == 500)
			{
				count =0;
				reversebit(PORTB,index++);
				if(index == 5)
				{
					index = 0;
				}
			}
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
