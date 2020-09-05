#include <sc.h>

#define getbit(x, y)   ((x) >> (y)&1)

#define		MAXTIME		30
volatile unsigned char irLeftStep = 0; //0Ϊδ�ڵ� 1�ڵ�  2����
volatile unsigned char irRightStep = 0; //0Ϊδ�ڵ� 1�ڵ�  2����
unsigned char	revLeftCount = 0;//�յ��Ĳ��μ���
unsigned char	revRightCount = 0;//�յ��Ĳ��μ���
unsigned char	revLeftZeroCount = 0;//δ�յ��Ĳ��μ���
unsigned char	revRightZeroCount = 0;//δ�յ��Ĳ��μ���
unsigned char	checkCount = 0;	//������
unsigned int	waitTimeCount = 0;	//�ȴ�ʱ�����
unsigned char	lowDealy = 0;
unsigned char	workStep = 0;		//���� 1	�ҵ���2  ����ͬʱ 3
volatile unsigned char pwmTime;
volatile bit	B_MainLoop;
volatile unsigned char MainTime;


void Init_System();
void checkIRKey();
void procesWork();

/***********************************************************
��ѭ��
***********************************************************/
void main()
{
	PORTB = 0x00;
	Init_System();
	while(1)
	{
		CLRWDT();
		if(B_MainLoop)
		{
			B_MainLoop = 0;
			checkIRKey();
			procesWork();
		}
	}
}

void procesWork()
{
	if(lowDealy > 0)
	{
		PORTB &= (~(0x01<<(workStep-1)));
		if(--lowDealy == 0)
		{
			PORTB |= 0x07;
			workStep = 0;
		}
	}

}

//ϵͳ��ʼ��
void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;				//��ֹ�ж�
	OSCCON = 0X71;			//������Ϊ8M
	OPTION_REG = 0;
	
	//��ʱ�ȴ���Դ��ѹ�ȶ�
	//DelayXms(200);
	WPUB = 0x00;
	TMR0 = 5;				
	TRISB = 0x18;			//PB3��PB4Ϊ������տ�
	PORTB = 0x00;
	INTCON = 0XC0;			//ʹ���ж�
}

//�������ڵ�
void checkIRKey()
{
	if(getbit(PORTB, 4))
	{
		revLeftCount++;		//��⵽����ڵ���
	}
	
	if(getbit(PORTB, 3))
	{
		revRightCount++;		//��⵽�ұ��ڵ���
	}
	
	if(waitTimeCount > 0)
	{
		waitTimeCount++;
		if(waitTimeCount > 20000)
		{
			waitTimeCount = 0;//��ʱ
		}
	}
	if(++checkCount >= 20)
	{
		if(revLeftCount > 2)
		{
			if(irLeftStep == 0)
			{
				irLeftStep = 1;		//��⵽�ڵ���
				if(waitTimeCount == 0)
				{
					waitTimeCount = 1;
				}
				else
				{
					if(waitTimeCount > MAXTIME)
					{
						workStep = 2;
					}
					else
					{
						workStep = 3;
					}
				}
			}
			revLeftZeroCount = 0;		//����
		}
		else
		{
			if(++revLeftZeroCount > 1)
			{
				revLeftZeroCount = 1;
				irLeftStep = 0;			//�ƿ���
			}
		}
		
		if(revRightCount > 2)
		{
			if(irRightStep == 0)
			{
				irRightStep = 1;		//��⵽�ڵ���
				if(waitTimeCount == 0)
				{
					waitTimeCount = 1;
				}
				else
				{
					if(waitTimeCount > MAXTIME)
					{
						workStep = 1;
					}
					else
					{
						workStep = 3;
					}
				}
				
			}
			revRightZeroCount = 0;		//����
		}
		else
		{
			if(++revRightZeroCount > 1)
			{
				revRightZeroCount = 1;
				irRightStep = 0;			//�ƿ���
			}
		}

		
		//���ü������
		checkCount = 0;
		revLeftCount = 0;
		revRightCount = 0;
	}
		
}

/***********************************************************
�жϷ�����
***********************************************************/
void interrupt Isr_Timer()
{
	if(T0IF)				//��ֻʹ����һ���ж�Դ,������ȥ�ж�
	{
		T0IF = 0;
		TMR0 += 5;
		if(++MainTime >= 32)
		{
			MainTime = 0;
			B_MainLoop = 1;
		}
		//ģ��pwm���
		if(pwmTime < 12)
			PORTB &= 0xDF;
		else
			PORTB |= 0x20;
		if(++pwmTime >= 44)
		{
			pwmTime = 0;
		}
	}

}
