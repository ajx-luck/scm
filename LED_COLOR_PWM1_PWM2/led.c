#include <sc.h>

#define getbit(x, y)   ((x) >> (y)&1)
#define setbit(x, y)  x|=(1<<y)
#define resetbit(x, y)  x&=~(1<<y)
#define reversebit(x, y)  x^=(1<<y)

#define u16_t unsigned int
#define u8_t unsigned char

u16_t count1,count2,count3;
u8_t FirstFlag = 0;
u8_t timeoutFlag = 0;
u16_t width1,width2;
u8_t timeout1MSFlag = 0;

void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;					//ϵͳ��ʼ��
	OSCCON = 0X71;				//������Ϊ8M,�� WDT
	WPUB = 0xFF;
	OPTION_REG = 0xD0;		//Timer0ʹ���ڲ�ʱ��Focs/4��Ԥ��Ƶ��Ϊ1:2
	TMR0 = 0;				//�����ʼֵ
	TMR0PRD = 100;
	

	TRISB = 0B00111001;	
	PORTB = 0B00111001;
	IOCB = 0xFF;
	
	//����PWM����
	PWMCK0 = 1;
	PWMCK1 = 0;
	PWMPRD8 = 0;
	PWMPRD9 = 1;
	PWM_PRD = 13;
	
	count1=count2=count3=0;
	width1=width2=0;
	FirstFlag = 1;
}


void setPWM1(u16_t width)
{
	//ѡ��PWM1
	PWMS0 = 1;
	PWMS1 = 0;
	PWMS2 = 0;
	PWMPRD9 = 0;
	if(width > 255)
	{
		PWMPRD8 = width/255;
		PWM_PRD = width-255;
	}else
	{
		PWMPRD8 = 0;
		PWM_PRD = width;
	}
}

void setPWM2(u16_t width)
{
	//ѡ��PWM2
	PWMS0 = 0;
	PWMS1 = 1;
	PWMS2 = 0;
	PWMPRD9 = 0;
	if(width > 255)
	{
		PWMPRD8 = width/255;
		PWM_PRD = width-255;
	}else
	{
		PWMPRD8 = 0;
		PWM_PRD = width;
	}
}

//����count����
void resetTimeCount()
{
	if(count2 == 1350)
	{
		FirstFlag = 0;
	}
	
	if(count1 == 950)
	{
		count1 = 0;
	}
	if(FirstFlag == 0 && count2 == 950)
	{
		count2 = 0;
	}
	if(timeout1MSFlag == 100)
	{
		timeout1MSFlag = 0;
		count1++;
		count2++;
	}
}



void main()
{
	Init_System();
	INTCON = 0xE0;			//��������δ�����ε��жϡ���ֹ�����жϣ�ʹ��Timer0
	while(1)
	{
		if(timeoutFlag)
		{
			timeoutFlag = 0;
			asm("clrwdt");		
					
			resetTimeCount();
			
			if(timeout1MSFlag == 0)
			{
				//PWM1����
				if(count1 <275)
				{
					setPWM1(count1);
				}
				
				if(count1 >=275 && count1<=550)
				{
					setPWM1(550 - count1);
				}
				
				//PWM2����
				if(FirstFlag)
				{
					if(count2 >=450)
					{
						count3 = count2-450;
					}
				}else
				{
					count3 = count2;
				}
				
				if(count3 <275)
				{
					setPWM2(count3);
				}
				
				if(count3 >=275 && count3<=550)
				{
					setPWM2(550 - count3);
				}
				
			}
			
			
			
			timeout1MSFlag++;
			
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