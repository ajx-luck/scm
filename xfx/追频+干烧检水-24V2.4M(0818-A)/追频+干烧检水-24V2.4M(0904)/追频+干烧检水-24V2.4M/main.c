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
u8t		waitSendTime = 0;
u8t		sendcount = 0;
u8t		led1Step = 0;
u8t		led2Step = 0;
u8t		chrgStep = 0;	//���״̬
u8t		batEnableFlag = 0;//����Ƿ����״̬
u8t		keyCount2 = 0;
u8t		keyCount3 = 0;
u8t		longKeyPressFlag = 0;
u8t		longKey2PressFlag = 0;
u8t		longKey3PressFlag = 0;
u8t		chrgFlag = 0;
u8t		chrgFullFlag = 0;
u8t		chrgFullTime = 0;
u16t	chrgGreenLedTime = 0;
u8t		rececount = 0;
u8t		revTime = 0;
u8t		ganshaoCheckTime = 0;

unsigned char Sendbuffer[4];	//�������ݻ���
unsigned char Recebuffer[4];	//�������ݻ���
void AD_Testing(unsigned char ad_fd,unsigned char ad_ch,unsigned char ad_lr);
void Set_CCP_PWM();
void keyCtr();
void checkVoll();
void closePWM();
void Set_Usart_Async();
void uartSendCtr();
void uartRevCtr();
void chrgCtr();
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
	TRISA = 0xf6;
	TRISB = 0xdd;
	OPTION_REG = 0;
	OSCCON = 0x71;
	PIE1 = 0;
	PIE2 = 0;
	IOCB = 0;
	WPUA = 0xB4;
	WPUB = 0x10;
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
	PR2 = 250;				//16M�½�TMR2����Ϊ125us�ж�
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
	TRISA = 0xf6;
	TRISB = 0xdd;
	OPTION_REG = 0;
	PIE1 = 0B00000010;
	PR2 = 250;
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
		whFlag = 0;
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
	while(1)
	{
		if(tcount >= 40)
		{
			tcount = 0;												//������ѭ��5ms
			Sys_set();
			#if (WHQ_SENDER_ENABLE == 1)//���Ժ궨���Ƿ�Ϊ1
				WHQ_SenderLoop();//�����ӳ���
			#endif
			if(whFlag)
			{
				Set_Work();
		
				onoff=1;
				AD_Testing(1,13,1);
				Set_CCP_PWM();
				checkVoll();

				PORTA |= 0x08;
			}		
			else
			{
				closePWM();
				onoff=0;
				PORTA &= 0xF7;
			}		
			Pwm_Test();		
			keyCtr();
			chrgCtr();
			uartSendCtr();
			//uartRevCtr();
			if(PORTB & 0x10)
			{
				ganshaoCheckTime = 0;
			}
			else
			{
				if(++ganshaoCheckTime > 10)
				{
					ganshaoCheckTime = 0;
					whFlag = 0;
					led1Step = 0;
					led2Step = 0;
				}
			}
		}
	}
}

void uartRevCtr()
{
	if(++revTime > 10)
	{
		revTime = 10;
		whFlag = Recebuffer[0];
		led1Step = Recebuffer[1];
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
			if(longKeyPressFlag == 0)
			{
				longKeyPressFlag = 1;
				return 2;
			}
		}
	}
	else
	{
		if(keyCount >= 100)
		{
			keyCount = 0;
			longKeyPressFlag = 0;
			return	0;
		}
		else if(keyCount >= 4)
		{
			keyCount = 0;
			return	1;
		}
		keyCount = 0;
	}
	return 0;
}

char keyRead2(char keyStatus)	
{ 
	if(keyStatus)
	{
		keyCount2++;
		if(keyCount2 >= 100)
		{
			keyCount2 = 100;
		}
	}
	else
	{
		if(keyCount2 >= 4)
		{
			keyCount2 = 0;
			return	1;
		}
		keyCount2 = 0;
	}
	return 0;
}

char keyRead3(char keyStatus)	
{ 
	if(keyStatus)
	{
		keyCount3++;
		if(keyCount3 >= 100)
		{
			keyCount3 = 100;
			if(longKey3PressFlag == 0)
			{
				longKey3PressFlag = 1;
				return 2;
			}
		}
	}
	else
	{
		if(keyCount3 >= 100)
		{
			keyCount3 = 0;
			longKey3PressFlag = 0;
			return	0;
		}
		else if(keyCount3 >= 4)
		{
			keyCount3 = 0;
			return	1;
		}
		longKey3PressFlag = 0;
		keyCount3 = 0;
	}
	return 0;
}


void keyCtr()
{
	char kclick = keyRead(0x20 & (~PORTA));
	if(kclick == 2)
	{
		if(whFlag)
		{
			whFlag = 0;
			led1Step = 0;
			led2Step = 0;
		}
		else
		{
			whFlag = 1;
			led1Step = 1;
			led2Step = 1;
		}

	}
	kclick = keyRead2(0x10 & (~PORTA));
	if(whFlag && kclick == 1)
	{
		if(++led1Step > 3)
		{
			led1Step = 1;
		}
	}
	kclick = keyRead3(0x04 & (~PORTA));
	if(whFlag)
	{
		if(kclick == 1 && led2Step)
		{
			if(++led2Step > 3)
			{
				led2Step = 1;
			}
		}
		else if(kclick == 2)
		{
			if(led2Step)
			{
				led2Step = 0;
			}
			else
			{
				led2Step = 1;
			}
		}
	}
}

void chrgCtr()
{
	if(0x40 & PORTA)
	{
		chrgFlag = 1;
		if(0x80 & PORTA)
		{
			if(++chrgFullTime > 200)
			{
				chrgFullFlag = 1;
				chrgFullTime = 0;
			}
		}
		else
		{
			chrgFullTime = 0;
		}
		if(chrgFullFlag)
		{		
			if(++chrgGreenLedTime > 1000)
			{
				chrgGreenLedTime = 1000;
				chrgStep = 0;
			}
			else
			{
				chrgStep = 2;
			}
		}
		else
		{
			chrgStep = 1;
		}
	}
	else
	{
		chrgStep = 0;
		chrgFlag = 0;
		chrgFullFlag = 0;
		chrgFullTime = 0;
		chrgGreenLedTime = 0;
	}
}

void checkVoll()
{
	if(AD_Result > MAXV)
	{
		if(++addTime > MAX_CHECK_TIME)
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
		if(++subTime > MAX_CHECK_TIME)
		{
			if(currDuty < 74)
			{
				currDuty++;
			}
		}
		addTime = 0;
	}
}

void uartSendCtr()
{
	Sendbuffer[0] = whFlag;
	Sendbuffer[1] = led1Step;
	Sendbuffer[2] = led2Step;
	Sendbuffer[3] = chrgStep;
	if(waitSendTime > 0)
	{
		waitSendTime--;
	}
	else if(TRMT)					//���Ϳ��оͷ���
	{
		//TX9D = 1;
		
		TXREG = Sendbuffer[sendcount];
		
		//Sendbuffer[sendcount];
		
		sendcount++;
		if(sendcount >= 4)
		{
			sendcount = 0;
			waitSendTime = 100;
		}
	}
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





