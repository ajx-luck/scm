#include<sc.h>
#define getbit(x,y)   ((x) >> (y)&1)

unsigned char nub = 0;
unsigned char pb5h = 0,pb5max = 0;
unsigned char pb4h = 0,pb4max = 0;
unsigned char pb3h = 0,pb3max = 0;
unsigned char timeoutFlag = 0;

void checkPB(unsigned char* pbCount,unsigned char* pbCountmax,unsigned char bitNub);
void setPWM();
void Init_System();


void main(void)
{
	
	Init_System();
	while(1)
	{
		//�������
		if(timeoutFlag)
		{
			nub++;
			checkPB(&pb3h,&pb3max,3);
			checkPB(&pb4h,&pb4max,4);
			checkPB(&pb5h,&pb5max,5);	
			timeoutFlag = 0;
			if(nub >=201)
			{
				nub = 0;
			}
			
			if(nub % 100 ==0)
			{
				setPWM();
			}		
		}
		
		
	}	
}

void setPWM()
{
	//ѡ��PWM0
	PWMS0 = 0;
	PWMS1 = 0;
	PWMS2 = 0;
	//PWMռ�ձ�

	PWMR08 = 0;
	PWMR09 = 0;
	PWMR = pb5max * 2;
	PWMEN0 = 1;
	
	//ѡ��PWM1
	PWMS0 = 1;
	PWMS1 = 0;
	PWMS2 = 0;
	//PWMռ�ձ�

	PWMR08 = 0;
	PWMR09 = 0;
	PWMR = pb4max * 2;
	PWMEN1 = 1;
	
	//ѡ��PWM2
	PWMS0 = 0;
	PWMS1 = 1;
	PWMS2 = 0;
	//PWMռ�ձ�

	PWMR08 = 0;
	PWMR09 = 0;
	PWMR = pb3max * 2;
	PWMEN2 = 1;
	
}

void checkPB(unsigned char* pbCount,unsigned char* pbCountmax,unsigned char bitNub)
{
    if(getbit(PORTB,bitNub) == 1)
    {
        *pbCount = *pbCount + 1;
    }
    else
    {
        if(*pbCount !=0)
        {
            *pbCountmax = *pbCount;
        }
        *pbCount = 0;
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
	OSCCON = 0X71;				//������Ϊ8M,�� WDT
	WPUB = 0xFF;
	OPTION_REG = 0xD0;		//Timer0ʹ���ڲ�ʱ��Focs/4��Ԥ��Ƶ��Ϊ1:2
	TMR0 = 0;				//�����ʼֵ
	INTCON = 0xE0;			//��������δ�����ε��жϡ���ֹ�����жϣ�ʹ��Timer0
	TMR0PRD = 100;
	

	TRISB = 0B00111000;	
	PORTB = 0B00111000;
	IOCB = 0xFF;
	
	//����PWM����
	PWMCK0 = 0;
	PWMCK1 = 1;
	PWMPRD8 = 0;
	PWMPRD9 = 0;
	PWM_PRD = 199;
	
	//ѡ��PWM0
	PWMS0 = 0;
	PWMS1 = 0;
	PWMS2 = 0;
	//PWMռ�ձ�

	PWMR08 = 0;
	PWMR09 = 0;
	PWMR = 0;
	PWMEN0 = 1;//PWM0ʹ��
	//ѡ��PWM1
	PWMS0 = 1;
	PWMS1 = 0;
	PWMS2 = 0;
	PWMR08 = 0;
	PWMR09 = 0;
	PWMR = 0;
	PWMEN1 = 1;
	
	//ѡ��PWM2
	PWMS0 = 0;
	PWMS1 = 1;
	PWMS2 = 0;
	PWMR08 = 0;
	PWMR09 = 0;
	PWMR = 0;
	PWMEN2 = 1;
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
		TMR0 += 50;		//���¸���ֵ���ڸ�ֵǰTimer0���м��������ڸû����ϼӳ�ֵ
	//---------------------------------------
			
		T0IF = 0;			//���жϱ�־λ	
		timeoutFlag = 1;
	}
}
