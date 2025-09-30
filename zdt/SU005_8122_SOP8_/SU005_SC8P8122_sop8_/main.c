#include <sc.h>
#include "Touch_Kscan_Library.h"



#define		u8t		unsigned char
#define		u16t	unsigned int
volatile unsigned char MainTime;
volatile bit	B_MainLoop,B_OnOff;
u8t	workStep = 0;
u8t	sleepTime = 0;
u8t	closeTime = 0;
u8t	ledDuty = 50;
u8t led1Duty = 50;
u8t led2Duty = 50;
u8t led3Duty = 50;
u16t	keyCount = 0;
u8t	modeStep = 0;
u16t count1s = 0;
u16t	count300s = 0;
u8t		lvdTime = 0;
u8t		doubleKeyTime = 0;

void pwm1Init();
void pwm3Init();
void pwm13Init();
void pwm1Stop();
void pwm3Stop();
void pwm13Stop();
void checkLvd();

//ϵͳ��ʼ��
void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;				//��ֹ�ж�
	OSCCON = 0X72;			//������Ϊ8M
	OPTION_REG = 0;
	
	
	//��ʱ�ȴ���Դ��ѹ�ȶ�
	//DelayXms(200);
	TRISB = 0x00;
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
		if ((KeyFlag[0] & 0x1)) 
		{
			keyCount++;
			//KEY1������
			if(keyCount >= 250 && keyCount % 10 == 0 && workStep > 0)
			{
				if(modeStep == 0 && ledDuty < 90)
				{
					ledDuty++;
				}
				if(modeStep == 1 && ledDuty > 10)
				{
					ledDuty--;
				}
				PWMD23H = 0;			
				PWMD3L = ledDuty;	
				PWMD01H = 0;			
				PWMD1L = ledDuty;			
			}
			B_OnOff = !B_OnOff;
		}
	} 
	else 
	{
		KeyOldFlag = 0;
		if(keyCount > 0 && keyCount < 250)
		{
			if(doubleKeyTime > 0)
			{
				if(count300s > 0)
				{
					count300s = 0;
				}
				else
				{
					count300s = 200;
				}
				doubleKeyTime = 0;
			}
			else
			{
				doubleKeyTime = 250;
			}
			
		
		}
		if(keyCount > 250)
		{
			if(workStep > 0)
			{
				if(modeStep > 0)
				{
					modeStep = 0;
				}
				else
				{
					modeStep = 1;
				}
			}
		}
		keyCount = 0;
	}
}

void pwm3Init()
{
		
		TRISB |= 0x10;
		PWMCON1 = 0B00000000;	//PWMѡ��D�飬����2��ֹ������1ʹ�ܣ�����ʱ��ԴΪFosc/4
		PWMTH = 0X00;			//����ѡ��Ϊ0FF��������Ϊ��255+1��*1/8M�����ڵ�ʱ�ӷ�Ƶ��PWMCON0ѡ��
		//PWMT4L = 100;
		PWMTL = 100;
		PWMD23H = 0;			//����PWM1,PWM2��ռ�ձȣ���ֵ���ܳ������ڣ�����Ϊ100%���
		PWMD3L = ledDuty;			//����ģʽ��PWM1��ռ�ձ���PWM0������������ֵ�޹�
		PWM23DT = 0X00;			//������Ϊ2uS������Ϊ��3+1��*1/8M*4

		PWMCON0 = 0X68;			//��PWM3 ��Ƶ��Ϊ8
		PWMCON2 =0X00;			//PWM4�������
		TRISB &= 0xEF;

}

void pwm3Stop()
{
	PWMCON0 &= 0XF7;
	RB4 = 0;


}

void pwm1Init()
{
		TRISB |= 0x02;
		PWMCON1 = 0B00000000;	//PWMѡ��D�飬����2��ֹ������1ʹ�ܣ�����ʱ��ԴΪFosc/4
		PWMTH = 0X00;			//����ѡ��Ϊ0FF��������Ϊ��255+1��*1/8M�����ڵ�ʱ�ӷ�Ƶ��PWMCON0ѡ��
		PWMTL = 100;			//PWM ����=[PWMT+1]*Tosc*(CLKDIV ��Ƶֵ)
		
		
		PWMD01H = 0;			//����PWM1,PWM2��ռ�ձȣ���ֵ���ܳ������ڣ�����Ϊ100%���
		PWMD1L = ledDuty;			//����ģʽ��PWM1��ռ�ձ���PWM0������������ֵ�޹�
		PWM01DT = 0X00;			//������Ϊ2uS������Ϊ��3+1��*1/8M*4

		PWMCON0 = 0X62;			//��PWM3 ��Ƶ��Ϊ8
		PWMCON2 =0X00;			//PWM4�������
		TRISB &= 0xFD;

}

void pwm1Stop()
{
	PWMCON0 &= 0XFD;
	RB1 = 0;

}

void pwm13Init()
{
		TRISB |= 0x05;
		PWMCON1 = 0B00000000;	//PWMѡ��D�飬����2��ֹ������1ʹ�ܣ�����ʱ��ԴΪFosc/4
		PWMTH = 0X00;			//����ѡ��Ϊ0FF��������Ϊ��255+1��*1/8M�����ڵ�ʱ�ӷ�Ƶ��PWMCON0ѡ��
		PWMTL = 100;			//PWM ����=[PWMT+1]*Tosc*(CLKDIV ��Ƶֵ)
		//PWMT4L = 100;
		
		PWMD23H = 0;			//����PWM1,PWM2��ռ�ձȣ���ֵ���ܳ������ڣ�����Ϊ100%���
		PWMD3L = ledDuty;			//����ģʽ��PWM1��ռ�ձ���PWM0������������ֵ�޹�
		PWM23DT = 0X00;			//������Ϊ2uS������Ϊ��3+1��*1/8M*4
		
		PWMD01H = 0;			//����PWM1,PWM2��ռ�ձȣ���ֵ���ܳ������ڣ�����Ϊ100%���
		PWMD1L = ledDuty;			//����ģʽ��PWM1��ռ�ձ���PWM0������������ֵ�޹�
		PWM01DT = 0X00;			//������Ϊ2uS������Ϊ��3+1��*1/8M*4

		PWMCON0 = 0X6A;			//��PWM3 ��Ƶ��Ϊ8
		PWMCON2 =0X00;			//PWM4�������
		TRISB &= 0xFA;

}

void pwm13Stop()
{
	PWMCON0 &= 0XF5;
	PORTB &= 0xED;

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
	
	//if(B_OnOff)time = 0;
	
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

		TRISB = 0x00;
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

void keyCtr()
{
	if(doubleKeyTime > 0)
	{
		if(--doubleKeyTime == 0)
		{
			if(++workStep > 3)
			{
				workStep = 0;
			}
			if(workStep == 1)
			{
				ledDuty = led1Duty;
			}
			else if(workStep == 2)
			{
				ledDuty = led2Duty;
			}
			else if(workStep == 3)
			{
				ledDuty = led3Duty;
			}
		}
	}
}

void workCtr()
{
	if(++count1s >= 500)
	{
		count1s = 0;
		if(count300s > 0)
		{
			count300s--;
		}
	}
	if(count300s > 0)
	{
		RB2 = 1;
	}
	else
	{
		RB2 = 0;
	}
	
	if(workStep == 0)
	{
		pwm13Stop();
	}
	else if(workStep == 1)
	{
		pwm1Init();
		pwm3Stop();
		led1Duty = ledDuty;
	}
	else if(workStep == 2)
	{
		pwm3Init();
		pwm1Stop();
		led2Duty = ledDuty;
	}
	else if(workStep == 3)
	{
		pwm13Init();
		led3Duty = ledDuty;
		//count300s = 600;
	}
}

/***********************************************************
��ѭ��
***********************************************************/
void main()
{
	Init_System();
	ledDuty = 50;
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
			keyCtr();
			workCtr();
			if(workStep == 0 && keyCount == 0 && count300s == 0 && doubleKeyTime == 0)
			{
				
				pwm13Stop();
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
			}
			
		}
	}
}