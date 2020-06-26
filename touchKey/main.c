#include <sc.h>
#define getbit(x, y)   ((x) >> (y)&1)
#define setbit(x, y)  x|=(1<<y)
#define resetbit(x, y)  x&=~(1<<y)
#define reversebit(x, y)  x^=(1<<y)

char IntFlag = 0;
char tempKey0H = 0;
char tempKey0L = 0;
char key0Flag = 0;//1��ʾΪ�а���

char tempKey1H = 0;
char tempKey1L = 0;
char key1Flag = 0;//1��ʾΪ�а���
int timeCount = 0;
char pwmFlag = 0;

void initTimer0() ;
void initSys();
void checkKey0TouchKey();
void checkKey1TouchKey();
void initPWM();
void mode1_a();
void mode1_b();
void mode1_c();

void main()
{
	initSys();
	while(1)
	{
		asm("clrwdt");
		if(!IntFlag)			//10����ִ��һ��
			continue;
		IntFlag = 0;
		checkKey0TouchKey();
		checkKey1TouchKey();
		if(pwmFlag == 0)
		{
			pwmFlag = 1;
			mode1_c();
		}
	}
}

void initSys()
{
	initTimer0();
	initPWM();
}


void initPWM()
{
	PWMCON1 = 0x40;	//ѡ��C��PWM
	PWMCON0 = 0x21;//��Ƶ�� 1��4
	PWMCON2 = 0;
	PWMTH = 0;
	PWMTL = 126;		//Լ����32K
	PWMD0L = 1;
	PWMD1L = 1;		//pwm1ռ�ձ�
	PWMD01H = 0;
}

void mode1_a()
{
	PWMD0L = 1;
	PWMD1L = 0;		//pwm1ռ�ձ�
	PWMTH = 0;
	PWMCON0 |= 0x01;		//��Ƶ�� 1��4 ,����PWM0
	setbit(PORTB, 7);
	
}

void mode1_b()
{
	PWMD0L = 1;
	PWMD1L = 0;		//pwm1ռ�ձ�
	PWMTH = 0;
	PWMCON0 |= 0x01;		//��Ƶ�� 1��4 ,����PWM0
	resetbit(PORTB, 7);
	
}

void mode1_c()
{
	PWMD0L = 1;
	PWMD1L = 32;		//pwm1ռ�ձ�
	PWMTH = 0;
	PWMCON0 |= 0x03;		//��Ƶ�� 1��4 ,����PWM0 PWM1
	
}

void mode1_d()
{
	PWMD0L = 1;
	PWMD1L = 63;		//pwm1ռ�ձ�
	PWMTH = 0;
	PWMCON0 |= 0x03;		//��Ƶ�� 1��4 ,����PWM0 PWM1
	
}

void mode1_e()
{
	PWMD0L = 1;
	PWMD1L = 95;		//pwm1ռ�ձ�
	PWMTH = 0;
	PWMCON0 |= 0x03;	//��Ƶ�� 1��4 ,����PWM0 PWM1
	
}

void mode2_a()
{
	PWMD0L = 12;
	PWMD1L = 0;		//pwm1ռ�ձ�
	PWMTH = 0;
	PWMCON0 |= 0x01;		//��Ƶ�� 1��4 ,����PWM0
	setbit(PORTB, 7);
	
}

void mode3_a()
{
	PWMD0L = 20;
	PWMD1L = 0;		//pwm1ռ�ձ�
	PWMTH = 0;
	PWMCON0 |= 0x01;		//��Ƶ�� 1��4 ,����PWM0
	setbit(PORTB, 7);
	
}

void mode4_a()
{
	PWMD0L = 72;
	PWMD1L = 0;		//pwm1ռ�ձ�
	PWMTH = 0;
	PWMCON0 |= 0x01;		//��Ƶ�� 1��4 ,����PWM0
	setbit(PORTB, 7);
	
}

void mode5_a()
{
	PWMD0L = 0;
	PWMD1L = 0;		//pwm1ռ�ձ�
	PWMTH = 0;
	PWMCON0 = 0x60;		//��Ƶ�� 1��4 ,����PWM0
	setbit(PORTB, 7);
	setbit(PORTA, 5);
}

void checkKey0TouchKey()
{
	INTCON = 0x20;	//�ر��ж�
	TRISB |= 0x4F;	//PB0 PB1Ϊ�����
	KEYCON1 = 0x50;	//Key0ͨ�����
	KEYCON0 = 0x02;
	KEYCON0 |= 0x01;
	while(!(KEYCON0, 7));
	key0Flag = 0;
	if(tempKey0L)
	{
		if(tempKey0L > (KEYDATAL + 10) && tempKey0H >= KEYDATAH)
		{
			key0Flag = 1;
		}
	}
	
	
	if(tempKey0H)
	{
		if(tempKey0H > KEYDATAH)
		{
			if(tempKey0H > (KEYDATAH+1))
			{
				key0Flag = 1;
			}
			else
			{
				//�жϵ�λ
				if(tempKey0L > KEYDATAL)
				{
					key0Flag = 1;
				}
				else if((255-tempKey0L)> (KEYDATAL + 10) )
				{
					key0Flag = 1;
				}
			}
		}
	}
	tempKey0H = KEYDATAH;
	tempKey0L = KEYDATAL;
	KEYCON0 &= 0xFE;
	INTCON = 0xA0;
}

void checkKey1TouchKey()
{
	INTCON = 0x20;	//�ر��ж�
	TRISB |= 0x4F;	//PB0 PB1Ϊ�����
	KEYCON1 = 0x51;	//Key1ͨ�����
	KEYCON0 = 0x03;
	while(!(KEYCON0, 7));
	key1Flag = 0;
	if(tempKey1L)
	{
		if(tempKey1L > (KEYDATAL + 10) && tempKey1H >= KEYDATAH)
		{
			key1Flag = 1;
		}
	}
	
	
	if(tempKey1H)
	{
		if(tempKey1H > KEYDATAH)
		{
			if(tempKey1H > (KEYDATAH+1))
			{
				key1Flag = 1;
			}
			else
			{
				//�жϵ�λ
				if(tempKey1L > KEYDATAL)
				{
					key1Flag = 1;
				}
				else if((255-tempKey1L)> (KEYDATAL + 10) )
				{
					key1Flag = 1;
				}
			}
		}
	}
	tempKey1H = KEYDATAH;
	tempKey1L = KEYDATAL;
	KEYCON0 &= 0xFE;
	INTCON = 0xA0;
	
}



//��ʼ����ʱ��0
void initTimer0()         
{	
		asm("nop");
		asm("clrwdt");
		INTCON = 0;
		TRISA = 0x00;
		TRISB = 0x04;			//PB2Ϊ������տ�
		WPDB = 0x00;
		WPUB = 0xFF;
		PORTA = 0xFF;
		PORTB = 0xFF;					//ϵͳ��ʼ��
		OSCCON = 0X52;				//������Ϊ8M,�� WDT
		OPTION_REG = 0x07;		//Timer0ʹ���ڲ�ʱ��Focs/4��Ԥ��Ƶ��Ϊ1:128
		TMR0 = 99;				//�����ʼֵ 4*128*156/8M = 0.01
		//INTCON = 0xE0;			//��������δ�����ε��жϡ���ֹ�����жϣ�ʹ��Timer0
		
		//TMR0PRD = 128;			//4*4*128/8M = 0.256ms

		INTCON = 0xA0;			//TIME0 �жϴ�
}

void interrupt Timer0_Isr()
{
	if(T0IF)
	{
	//---------------------------------------
		TMR0 += 99;		//���¸���ֵ 4*128*156/8M
		if(++timeCount == 10)
		{
			timeCount = 0;
			IntFlag = 1;
		}
	//---------------------------------------
		T0IF = 0;			//���жϱ�־λ	

	}
}