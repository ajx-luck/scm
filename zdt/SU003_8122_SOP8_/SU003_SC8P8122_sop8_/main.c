#include <sc.h>
#include "Touch_Kscan_Library.h"



#define		u8t		unsigned char
#define		u16t	unsigned int
volatile unsigned char MainTime;
volatile bit	B_MainLoop,B_OnOff;
u8t	workStep = 0;
u8t	sleepTime = 0;
u8t	closeTime = 0;
u8t	lvdTime = 0;

void pwm0Init();
void pwm2Init();
void pwm02Init();
void pwm0Stop();
void pwm2Stop();
void pwm02Stop();

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
	TRISB = 0x08;
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
��������
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
				if(++workStep > 3)
				{
					workStep = 0;
				}
				if(workStep == 0)
				{
					pwm02Stop();
				}
				else if(workStep == 1)
				{
					pwm2Init();
					pwm0Stop();
				}
				else if(workStep == 2)
				{
					pwm0Init();
					pwm2Stop();
				}
				else if(workStep == 3)
				{
					pwm02Init();
				}
	
			}
			
			KeyOldFlag = KeyFlag[0];
		}
	} 
	else 
	{
		KeyOldFlag = 0;
	}
}

void pwm2Init()
{
		
		TRISB |= 0x04;
		PWMCON1 = 0B00000000;	//PWMѡ��D�飬����2��ֹ������1ʹ�ܣ�����ʱ��ԴΪFosc/4
		PWMTH = 0X00;			//����ѡ��Ϊ0FF��������Ϊ��255+1��*1/8M�����ڵ�ʱ�ӷ�Ƶ��PWMCON0ѡ��
		PWMT4L = 100;
		
		//PWMD23H = 0;			//����PWM1,PWM2��ռ�ձȣ���ֵ���ܳ������ڣ�����Ϊ100%���
		PWMD4L = 80;			//����ģʽ��PWM1��ռ�ձ���PWM0������������ֵ�޹�
		//PWM23DT = 0X00;			//������Ϊ2uS������Ϊ��3+1��*1/8M*4

		PWMCON0 = 0X70;			//��PWM3 ��Ƶ��Ϊ8
		PWMCON2 =0X00;			//PWM4�������
		TRISB &= 0xFB;

}

void pwm2Stop()
{
	PWMCON0 &= 0XEF;
	RB2 = 0;

}

void pwm0Init()
{
		TRISB |= 0x01;
		PWMCON1 = 0B00000000;	//PWMѡ��D�飬����2��ֹ������1ʹ�ܣ�����ʱ��ԴΪFosc/4
		PWMTH = 0X00;			//����ѡ��Ϊ0FF��������Ϊ��255+1��*1/8M�����ڵ�ʱ�ӷ�Ƶ��PWMCON0ѡ��
		PWMTL = 100;			//PWM ����=[PWMT+1]*Tosc*(CLKDIV ��Ƶֵ)
		
		
		PWMD01H = 0;			//����PWM1,PWM2��ռ�ձȣ���ֵ���ܳ������ڣ�����Ϊ100%���
		PWMD0L = 80;			//����ģʽ��PWM1��ռ�ձ���PWM0������������ֵ�޹�
		PWM01DT = 0X00;			//������Ϊ2uS������Ϊ��3+1��*1/8M*4

		PWMCON0 = 0X61;			//��PWM3 ��Ƶ��Ϊ8
		PWMCON2 =0X00;			//PWM4�������
		TRISB &= 0xFE;

}

void pwm0Stop()
{
	PWMCON0 &= 0XFE;
	RB0 = 0;

}

void pwm02Init()
{
		TRISB |= 0x05;
		PWMCON1 = 0B00000000;	//PWMѡ��D�飬����2��ֹ������1ʹ�ܣ�����ʱ��ԴΪFosc/4
		PWMTH = 0X00;			//����ѡ��Ϊ0FF��������Ϊ��255+1��*1/8M�����ڵ�ʱ�ӷ�Ƶ��PWMCON0ѡ��
		PWMTL = 100;			//PWM ����=[PWMT+1]*Tosc*(CLKDIV ��Ƶֵ)
		PWMT4L = 100;
		
		//PWMD23H = 0;			//����PWM1,PWM2��ռ�ձȣ���ֵ���ܳ������ڣ�����Ϊ100%���
		PWMD4L = 94;			//����ģʽ��PWM1��ռ�ձ���PWM0������������ֵ�޹�
		//PWM23DT = 0X00;			//������Ϊ2uS������Ϊ��3+1��*1/8M*4
		
		PWMD01H = 0;			//����PWM1,PWM2��ռ�ձȣ���ֵ���ܳ������ڣ�����Ϊ100%���
		PWMD0L = 94;			//����ģʽ��PWM1��ռ�ձ���PWM0������������ֵ�޹�
		PWM01DT = 0X00;			//������Ϊ2uS������Ϊ��3+1��*1/8M*4

		PWMCON0 = 0X71;			//��PWM3 ��Ƶ��Ϊ8
		PWMCON2 =0X00;			//PWM4�������
		TRISB &= 0xFA;

}

void pwm02Stop()
{
	PWMCON0 &= 0XEE;
	PORTB &= 0xFA;

}

void checkLvd()
{
	CMPCON1 = 0x28;
	CMPCON0 = 0xA8;
	
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

		TRISB = 0x08;
		PORTB = 0;
		CMPCON1 = 0x00;
		CMPCON0 = 0x00;

/****����ҪPB���жϻ��ѣ�ʹ�����г��򲢰����޸�****
			TRISB0 =1;	//����
			WPUB0 = 1;	//����			
			RBIF = 0;	//���־
			RBIE = 1;	//����PB�ڵ�ƽ�仯�ж�
			
			PORTB;		//��һ��PB��			
************************************/	

		//��������ģʽ,���������ѵİ�����ָ���������
		SystemEnterSleep();
		if(RBIF) 
		{
			RBIF = 0;
			PORTB;
		}
		//���߱�����,���������жϵ�SFR,ʹϵͳ������������
		Refurbish_Sfr();
		checkLvd();
	}
#endif
}

/***********************************************************
��ѭ��
***********************************************************/
void main()
{
	Init_System();
	checkLvd();
	while(1)
	{
		if(B_MainLoop)
		{
			B_MainLoop = 0;
			CLRWDT();
			
			CheckTouchKey();
			
			Refurbish_Sfr();
			KeyServer();

			if(workStep == 0)
			{
				RB1 = 0;
				pwm02Stop();
				WorkSleep();		//�粻��ʡ��ģʽ������������Ӻ���
			}
			else
			{
				if(CMPCON0 & 0x02)
				{
					lvdTime = 0;
				}
				else
				{
					if(++lvdTime > 200)
					{
						lvdTime = 0;
						workStep = 0;
					}
				}
				RB1 = 1;
				if(PORTB & 0x08)
				{
					closeTime = 0;
				}
				else
				{
					if(++closeTime > 50)
					{
						closeTime = 0;
						workStep = 0;
					}
				}
			}
			
		}
	}
}