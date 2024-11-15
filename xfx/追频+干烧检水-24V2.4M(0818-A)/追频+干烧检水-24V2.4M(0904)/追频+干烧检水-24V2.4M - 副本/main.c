/***********************************************************************
����˵����
***********************************************************************/
/**********************************************************************/
/*�޸�˵��*/

/**********************************************************************/
/**********************************************************************/
/**********************************************************************/
/*ͷ�ļ�*/
#include <cms.h>
#include "main.h"
#include "delay.h"
#include "mytype.h"
#include "WHQ_TP_ZPGS.h"
#include "WHQ_Sender.h"
/*********************************************************************
1��WHQ_SENDER_ENABLE����Ϊ1ʱΪ����ģʽ���ɹ۲���������Ҫ���ݣ�
2������ʹ��ʱ���WHQ_SENDER_ENABLE����Ϊ0��

ע��WHQ_SENDER_ENABLE �Ѷ�����WHQ_Sender.h�У�Ĭ��Ϊ0
**********************************************************************/
typedef unsigned int u16t;
typedef unsigned char u8t;

volatile unsigned char tcount;
volatile bit errf;
volatile bit errff;
volatile bit onoff;
volatile unsigned int AD_Result;
volatile unsigned char currDuty;
volatile unsigned char addTime;
volatile unsigned char subTime;
unsigned char keyCount;
u8t		whFlag = 0;
unsigned char Recebuffer[4];
u8t	rececount = 0;
u8t	revFlagTime = 0;
u8t	processFlag = 0;
u8t		led1Step = 0;
u8t		led2Step = 0;
u8t		chrgStep = 0;	//���״̬
u8t	redDuty = 0;
u8t	greenDuty = 0;
u8t	blueDuty = 0;
u8t	curLedCnt = 0;
u8t	cRedDuty = 0;
u8t	cGreenDuty = 0;
u8t	cBlueDuty = 0;
u8t		revTime = 0;
u8t	startTime = 0;
u8t	count2s = 0;
u8t	colorStep = 0;
u8t	count2 = 0;
u8t	lastRed = 0;
u8t		lastGreen = 0;
u8t		lastBlue = 0;
u8t		delayTime = 0;
u8t		mClorStep = 0;
u8t		ganshaoFlag = 0;
u8t		clastRed = 0;
u8t		clastGreen = 0;
u8t		clastBlue = 0;
u8t		cdelayTime = 0;
u8t		cClorStep = 0;
u8t		ganshaoTime = 0;
u8t		ganshaoCheckTime = 0;
u8t		tm2Flag = 0;
u8t		count125us = 0;

void AD_Testing(unsigned char ad_fd,unsigned char ad_ch,unsigned char ad_lr);
void Set_CCP_PWM();
void keyCtr();
void checkVoll();
void closePWM();
void Set_Usart_Async();
void breathAddLed(u8t* ledDuty);
void breathSubLed(u8t* ledDuty);
void rgbShow();
void colorCtr();
void uartRevCtr();
void checkLed();
void rainbow();
void rainbow2();
/**********************************************************************/
/**********************************************************************/
/***********************************************************************
�Ӻ������ܣ��ϵ��ʼ��ϵͳ�Ĵ���
��ڲ�����
�������ݣ�
��ע��
***********************************************************************/
void Init_ic (void)
{
	PORTA = 0;
	PORTB = 0;
	INTCON = 0xC0;
	PIR1 = 0;
	PIR2 = 0;
	WDTCON = 0x01;
	TRISA = 0x06;
	TRISB = 0x11;
	OPTION_REG = 0;
	OSCCON = 0x71;
	PIE1 = 0;
	PIE2 = 0;
	IOCB = 0;
	WPUA = 0x20;
	WPUB = 0;
}
/***********************************************************************
�������ܣ���ʼ�ϵ�RAM��ֵ
��ڲ�����
�������ݣ�
��ע��
***********************************************************************/
void Init_ram (void)
{
	PIE2 = 0;
	PIE1 = 0B00000010;
	PR2 = 50;				//16M�½�TMR2����Ϊ125us�ж�
	T2CON = 5;				//ʹ�ܶ�ʱ��2
	INTCON = 0XC0;			//ʹ���ж�
	onoff = 1;
}
/***********************************************************************
�������ܣ�ϵͳ�Ĵ���ˢ��
��ڲ�����
�������ݣ�
��ע��
***********************************************************************/
void Sys_set (void)
{
	asm("clrwdt");
	WDTCON = 0x01;
	TRISA = 0x06;
	TRISB = 0x11;
	OPTION_REG = 0;
	PIE1 = 0B00000010;
	PR2 = 50;
	INTCON = 0XC0;
	if(5 != T2CON)
		T2CON = 5;
}

/***********************************************************************
�Ӻ������ܣ�����׷Ƶ
��ڲ�����
�������ݣ�
��ע��
***********************************************************************/
void	Pwm_Test(void)
{
	uchar	templ;
	templ = Test_Pwm();
	
	if(0x55 == templ)
		errf = 1;
	else if(0xff == templ)
		errf = 1;
}

/***********************************************************************
�������ܣ���������
��ڲ�����
�������ݣ�
��ע��
***********************************************************************/
void	Set_Work(void)
{
	if(errf)
	{
		errf = 0;
		onoff = 0;
		ganshaoFlag = 1;
	}

}

/***********************************************************************
�������ܣ��ж���ں���
***********************************************************************/
void interrupt time0(void)
{
	if(RCIF)
	{	
		
		revTime = 0;
		Recebuffer[rececount] = RCREG;  	//�����ջ��������ݶ���
		rececount++;
			
		if(rececount >= 4)					//������һ֡���ݣ���������
		{
			rececount = 0;
		}
			
		if(OERR)							//������������
		{
			CREN = 0;						//����CRENλ�ɽ�OERRλ����
			CREN = 1;						//�ٴν�CREN��һ���������������
		}
		
	}
	
	if(TMR2IF)
	{
		TMR2IF = 0;
		tm2Flag = 1;
		if(++count125us > 4)
		{
			count125us = 0;
			tcount ++;
			if(onoff)
			{
				Set_Pwm_Onoff(20);
			}
			else
			{
				Set_Pwm_Onoff(0);
			}
		}
	}
	else
	{
		PIR1 = 0;
		PIR2 = 0;
	}
	
	
}



/***********************************************************************
main������
***********************************************************************/
void main(void)
{
	static uint sec;
	/******************************************************************/
	asm("clrwdt");
	Init_ic();
	Delay_nms(200);													//�ϵ���ʱ200ms
	Init_ram();														//�ϵ����ֵ
	Set_Usart_Async();
	whFlag = 1;
	led1Step = 3;
	led2Step = 3;
	startTime = 200;
	while(1)
	{
		if(whFlag || startTime > 0)
		{
			if(tm2Flag)
			{
				tm2Flag = 0;
				rgbShow();
			}
		}
		if(tcount >= 40)
		{
			tcount = 0;												//������ѭ��5ms
			Sys_set();
			#if (WHQ_SENDER_ENABLE == 1)//���Ժ궨���Ƿ�Ϊ1
				WHQ_SenderLoop();//�����ӳ���
			#endif
			if(whFlag)
			{
				startTime = 0;
				Set_Work();
				onoff=1;
				AD_Testing(1,13,1);
				Set_CCP_PWM();
				checkVoll();
				if(led1Step != 1)
				{
					PORTA &= 0xF7;	//�رհ׵�
				}
				if(++count2 > 1)
				{
					count2 = 0;
					colorCtr();
				}
			}		
			else if(startTime == 0)
			{
				closePWM();
				onoff=0;
				//PORTA &= 0xF7;
				PORTA = 0x00;
				PORTB = 0x00;
			}		
			Pwm_Test();		
			uartRevCtr();
			checkLed();
			if(ganshaoFlag)
			{
				PORTB &= 0xDF;
			}
			else
			{
				PORTB |= 0x20;
			}
			
		}
	}
}

void checkLed()
{
	if(startTime > 0)
	{
		if(startTime > 150)
		{
			redDuty = 64;
			greenDuty = 0;
			blueDuty = 0;
			cRedDuty = 64;
			cGreenDuty = 0;
			cBlueDuty = 0;
			
		}
		else if(startTime > 100)
		{
			redDuty = 0;
			greenDuty = 64;
			blueDuty = 0;
			cRedDuty = 0;
			cGreenDuty = 64;
			cBlueDuty = 0;
		}
		else if(startTime > 50)
		{
			redDuty = 0;
			greenDuty = 0;
			blueDuty = 64;
			cRedDuty = 0;
			cGreenDuty = 0;
			cBlueDuty = 64;
		}
		else
		{
			PORTA |= 0x08;	//�򿪰׵�
		}
		startTime--;
	}
}

void uartRevCtr()
{
	if(++revTime > 10)
	{
		revTime = 10;
		if(whFlag != Recebuffer[0])
		{
			ganshaoFlag = 0;//���ձ�����
		}
		whFlag = Recebuffer[0];
		if(Recebuffer[1] == 3 && led1Step != 3)
		{
			redDuty = 64;
			greenDuty = 64;
			blueDuty = 64;
			count2s = 0;
		}
		led1Step = Recebuffer[1];
		if(Recebuffer[2] == 3 && led2Step != 3)
		{
			cRedDuty = 64;
			cGreenDuty = 64;
			cBlueDuty = 64;
			count2s = 0;
		}
		led2Step = Recebuffer[2];
		chrgStep = Recebuffer[3];
		rececount = 0;
	}
}
/**********************************************************************/

/************************************************************
�������ƣ�AD_Testing()
�������ܣ�AD��������
��ڲ�����ad_fd - ��Ƶ 00Fosc/8; 01Fosc/16; 10Fosc/32; 11FRC
		  ad_ch - ADͨ��ѡ�񣨸�ʽ��0B00000000~0B00001111�����Ӧ������������ֵ��
		  ad_lr - ��/�Ҷ��룬����0��1��0Ϊ����룬1Ϊ�Ҷ���
		  
���ڲ�����AdResult - AD���
��    ע������ADֵ,����10��,ȥ�������С������ƽ��ֵ
************************************************************/
void AD_Testing(unsigned char ad_fd,unsigned char ad_ch,unsigned char ad_lr)
{
	static volatile unsigned char adtimes;	
	static volatile unsigned int admin,admax,adsum;
	volatile unsigned int data;
	volatile unsigned char i = 0;
	
	
	if(!ad_lr)
		ADCON1 = 0;						//�����,��12λ
	else
		ADCON1 = 0x80;					//�Ҷ���,��10λ
	
	ADCON0 = 0;
	ADCON0 |= (unsigned char)(ad_fd << 6);//���÷�Ƶ
	ADCON0 |= (unsigned char)(ad_ch << 2);//����ͨ��
	ADCON0 |= 0x01;						//ʹ��ADC		
	
	asm("nop");
	asm("nop");
	GODONE = 1;							//��ʼת��
	
	while(GODONE)
	{
		asm("nop");
		asm("nop");
		if(0 == (--i))					//ad�ȴ���ʱ����ֹ�β��������ѭ��
			return;
	}
 
	if(!ad_lr)							//�����
	{
		data = (unsigned int)(ADRESH<<4);
		data |= (unsigned int)(ADRESL>>4);
	}
	else								//�Ҷ���
	{
		data = (unsigned int)(ADRESH<<8);
		data |= (unsigned int)ADRESL;			
	}         

	if(0 == adtimes)
	{
		admax = data;
		admin = data;	
	}
	else if(data > admax)
	{
		admax = data;  				//AD�������ֵ
	}
	else if(data < admin)
	{
		admin = data;  				//AD������Сֵ
	}
	
	adsum += data;
	if(++adtimes >= 10)
	{
		adsum -= admax;
		adsum -= admin;			
					
		AD_Result = adsum >> 3;		//8��ƽ��ֵ��Ϊ���ս��
			
		adsum = 0;
		admin = 0;
		admax = 0;
		adtimes = 0;		  
	}
}

/***********************************************
�������ƣ�Set_CCP_PWM
�������ܣ�CCP PWMģʽ��ʼ��
��ڲ�������
���ڲ�������
��ע��	//PWM���� = [PWMTH<1:0>:PWMTL + 1]*Tosc*(CLKDIV��Ƶ)
		//������ = (PWMDx[9:0]+1)*TOSC*(CLKDIV��Ƶֵ)
		//ռ�ձ� = (PWMDx[9:0]+1)/(PWMT[9:0]+1)
************************************************/
void Set_CCP_PWM()
{
	PWMTL = 108;//Ƶ��
	PWMTH = 0x00;					//����T = 400*(1/8)us*2 = 100us
	PWMT4L = 0x00;
	
	
	//PWM1 ռ�ձ�����Ϊ40%
	PWMD1L = currDuty;					//(159+1)/(399+1) = 40%
	PWMD01H = 0x00;
	
	
	PWM01DT = 0;
	PWM23DT = 0;
	
	PWMCON2 = 0B00000000;			//�������
	PWMCON1 = 0B00000000;			//��ֹ����
	PWMCON0 = 0B00000010;			//PWM��ƵFosc/2��ʹ��PWM0��PWM1��PWM2��PWM3��PWM4

}

void closePWM()
{
	PWMD1L = 0;					//(159+1)/(399+1) = 40%
	PWMD01H = 0x00;
	PWMCON2 = 0B00000000;			//�������
	PWMCON1 = 0B00000000;			//��ֹ����
	PWMCON0 = 0B00000000;			//PWM��ƵFosc/2��ʹ��PWM0��PWM1��PWM2��PWM3��PWM4
}


char keyRead(char keyStatus)	
{ 
	if(keyStatus)
	{
		keyCount++;
		if(keyCount >= 100)
		{
			keyCount = 100;
		}
	}
	else
	{
		if(keyCount >= 4)
		{
			keyCount = 0;
			return	1;
		}
		keyCount = 0;
	}
	return 0;
}


void keyCtr()
{
	char kclick = keyRead(0x20 & (~PORTA));
	if(kclick == 1)
	{
		if(whFlag)
		{
			whFlag = 0;
		}
		else
		{
			whFlag = 1;
		}

	}

}

void checkVoll()
{
	if(AD_Result > MAXV)
	{
		if(++addTime > 5)
		{
			addTime = 0;
			if(currDuty > 1)
			{
				currDuty--;
			}
		}
		subTime = 0;
	}
	else if(AD_Result < MINV)
	{
		if(++subTime > 5)
		{
			if(currDuty < 74)
			{
				currDuty++;
			}
		}
		addTime = 0;
	}
}

void colorCtr()
{

	if(++count2s > 3)
	{
		count2s = 0;
		if(led2Step == 3)
		{
			rainbow2();
		}
		if(led1Step == 3)
		{
			rainbow();
		}
	}
	
	
	//���ƿ���
	if(count2s < 125)
	{
		if(led2Step == 1)
		{
			cRedDuty = 0;
			cBlueDuty = 0;
			breathAddLed(&cGreenDuty);
		}
		else if(led2Step == 2)
		{
			cRedDuty = 0;
			cGreenDuty = 0;
			breathAddLed(&cBlueDuty);
		}	
		
	}
	else
	{
		if(led2Step == 1)
		{
			cRedDuty = 0;
			cBlueDuty = 0;
			breathSubLed(&cGreenDuty);
		}
		else if(led2Step == 2)
		{
			cRedDuty = 0;
			cGreenDuty = 0;
			breathSubLed(&cBlueDuty);
		}
		
	}	

	
	//���ƿ���
	if(led1Step == 1)
	{
		redDuty = 0;
		greenDuty = 0;
		blueDuty = 0;
		PORTA |= 0x08;	//���׵�
	}
	else if(led1Step == 2)
	{
		redDuty = 46;
		greenDuty = 51;
		blueDuty = 62;
	}
}

void rainbow2()
{
	//lastRed = lastGreen = lastBlue = 0;
	if(cRedDuty > clastRed)
		cRedDuty--;
	if(cGreenDuty > clastGreen)
		cGreenDuty--;
	if(cBlueDuty > clastBlue)
		cBlueDuty--;
	if(cRedDuty < clastRed)
		cRedDuty++;
	if(cGreenDuty < clastGreen)
		cGreenDuty++;
	if(cBlueDuty < clastBlue)
		cBlueDuty++;
	if(cdelayTime > 0)
	{
		cdelayTime--;
		return;
	}
	if(cClorStep == 1)
	{
		clastRed = 64;
		clastGreen = 0;
		clastBlue = 0;
		
	}
	else if(cClorStep == 2)
	{
		clastRed = 0;
		clastGreen = 0;
		clastBlue = 64;
	}
	else if(cClorStep == 3)
	{
		clastRed = 0;
		clastGreen = 64;
		clastBlue = 0;
	}
	

		
	if(cRedDuty == clastRed && cBlueDuty == cBlueDuty && cGreenDuty == clastGreen)
	{
		if(++cClorStep > 3)
		{
			cClorStep = 0;
		}
		if(cdelayTime == 0)
			cdelayTime = 5;
	}
}


void rainbow()
{
	//lastRed = lastGreen = lastBlue = 0;
	if(redDuty > lastRed)
		redDuty--;
	if(greenDuty > lastGreen)
		greenDuty--;
	if(blueDuty > lastBlue)
		blueDuty--;
	if(redDuty < lastRed)
		redDuty++;
	if(greenDuty < lastGreen)
		greenDuty++;
	if(blueDuty < lastBlue)
		blueDuty++;
	if(delayTime > 0)
	{
		delayTime--;
		return;
	}
	if(mClorStep == 1)
	{
		lastRed = 64;
		lastGreen = 0;
		lastBlue = 0;
		
	}
	else if(mClorStep == 2)
	{
		lastRed = 0;
		lastGreen = 0;
		lastBlue = 64;
	}
	else if(mClorStep == 3)
	{
		lastRed = 0;
		lastGreen = 64;
		lastBlue = 0;
	}

		
	if(redDuty == lastRed && blueDuty == lastBlue && greenDuty == lastGreen)
	{
		if(++mClorStep > 3)
		{
			mClorStep = 0;
		}
		if(delayTime == 0)
			delayTime = 5;
	}
}


void breathAddLed(u8t* ledDuty)
{
	if((*ledDuty) < 64)
	{
		(*ledDuty)++;
	}
}

void breathSubLed(u8t* ledDuty)
{
	if((*ledDuty) > 0)
	{
		(*ledDuty)--;
	}
}

void rgbShow()
{
	if(++curLedCnt > 64)
	{
		curLedCnt = 0;
	}
	if(redDuty <= curLedCnt)
	{
		PORTA &= 0xEF;
	}
	else
	{
		PORTA |= 0x10;
	}
	PORTA = PORTA;
	if(greenDuty <= curLedCnt)
	{
		PORTA &= 0xBF;
	}
	else
	{
		PORTA |= 0x40;
	}
	PORTA = PORTA;
	if(blueDuty <= curLedCnt)
	{
		PORTA &= 0xDF;
	}
	else
	{
		PORTA |= 0x20;
	}
	PORTA = PORTA;
	if(cRedDuty <= curLedCnt)
	{
		PORTA &= 0x7F;
	}
	else
	{
		PORTA |= 0x80;
	}
	PORTA = PORTA;
	if(cGreenDuty <= curLedCnt)
	{
		PORTB &= 0xF7;
	}
	else
	{
		PORTB |= 0x08;
	}
	PORTB = PORTB;
	if(cBlueDuty <= curLedCnt)
	{
		PORTB &= 0xFB;
	}
	else
	{
		PORTB |= 0x04;
	}
	PORTB = PORTB;
}


/***********************************************
�������ƣ�Set_Usart_Async
�������ܣ�Usart״̬���ã��첽��
��ڲ�������
���ڲ�������
��ע��
1������ͨѶ�����ò����ʼĴ���ʱ��Ӧ������19200�����£�ʵ��Ӧ��ʱӦ���ǵ�оƬ����ĵ�ѹ���¶����ԡ�
2��SYNC = 0;Ŀ�겨���� = Fosc/(16*(SPBRG+1))
************************************************/
void Set_Usart_Async()
{
	SPBRG = 95;			//���ò�����Ϊ10417 bps�����0%	
	
	SYNC = 0;				//0Ϊ�첽ģʽ��1Ϊͬ��ģʽ
	SCKP = 0;
	
    SPEN = 1;				//�����ڲ���
	RCIE = 1;				//�����ж�  
	TXIE = 0;				//�����ж�
    RX9EN = 0;				//0Ϊ8λ���գ�1Ϊ9λ����
	TX9EN = 0;				//0Ϊ8λ���ͣ�1Ϊ9λ����
	CREN = 1;				//0Ϊ��ֹ���գ�1Ϊʹ�ܽ���
    TXEN = 1;				//0Ϊ��ֹ���ͣ�1Ϊʹ�ܷ���
}





