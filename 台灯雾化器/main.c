//#include <sc.h>
#include "pwm.h"
#include "adc.h"
#include "Touch_Kscan_Library.h"

typedef unsigned char uint8;
typedef unsigned int uint16;

volatile unsigned char MainTime;
volatile unsigned char pwmTime;
volatile unsigned char irStep = 0; //0Ϊδ�ڵ� 1�ڵ�  2����
unsigned char	revCount = 0;//�յ��Ĳ��μ���
unsigned char	revZeroCount = 0;//δ�յ��Ĳ��μ���
unsigned char	checkCount = 0;	//������
unsigned char	pwm0Step = 1;	//	pwm0��λ
unsigned char	pwm1Step = 1;	//	pwm1��λ
unsigned int 	timeCount = 0;
unsigned int 	keyNub = 0;
unsigned char 	keyCount0 = 0;
unsigned char 	keyCount1 = 0;
unsigned char 	keyCount2 = 0;
unsigned char 	keyCount3 = 0;
unsigned char   fanStep = 0;
unsigned char   ledStep = 0;
unsigned char   lightStep = 0;

volatile bit	penwuFlag;	//������
volatile bit	B_MainLoop;

unsigned int ADC_AVG(unsigned char adch,unsigned char adtime);
void Sleep_Mode();

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
	WPUB = 0x00;
	WPDB = 0x00;
	WPUA = 0x00;
	//PIE2 = 0;
	PIE1 = 2;
	PR2 = 250;				//8M�½�TMR2����Ϊ125us�ж�
	T2CON = 4;				//ʹ�ܶ�ʱ��2
	TRISA = 0x00;
	TRISB = 0x00;			//PB2Ϊ������տ�
	PORTB = 0x00;
	PORTA = 0x00;
	INTCON = 0XC0;			//ʹ���ж�
}


/**********************************************************
ˢ�����⹦�ܼĴ���
**********************************************************/
void Refurbish_Sfr()
{

	//ˢ���ж���ؿ��ƼĴ���
	PIE1 = 2;
	PR2 = 250;
	INTCON = 0XC0;
	if(4 != T2CON)
		T2CON = 4;
}


void startPWM()
{	
	initPWM();
}



/***********************************************************
��������
***********************************************************/
void KeyServer()
{
	static unsigned int KeyOldFlag = 0;
	unsigned int i = (unsigned int)((KeyFlag[1]<<8) | KeyFlag[0]);
	if(i)
	{
		keyNub = i;
		if(keyNub & 0x01){
			if(++keyCount0 > 200)
				keyCount0 = 200;
		}
		if(keyNub & 0x02){
			if(++keyCount1 > 200)
				keyCount1 = 200;
		}
		if(keyNub & 0x04){
			if(++keyCount2 > 200)
				keyCount2 = 200;
		}
		if(keyNub & 0x08){
			if(++keyCount3 > 200)
				keyCount3 = 200;
		}
	}
	else
	{
		if(keyCount0 > 5)
		{
			//������
			penwuFlag =! penwuFlag;
			if(penwuFlag)
			{
				whOn();
			}
			else
			{
				wuhuaOff();
			}
		}
		if(keyCount1 > 5)
		{
			//���ȿ���
			if(++fanStep > 3)
				fanStep = 0;
			if(fanStep == 0)
				fanOff();
			else if(fanStep == 1)
				fan1();
			else if(fanStep == 2)
				fan2();
			else if(fanStep == 3)
				fan3();
		}
		if(keyCount2 > 5)
		{
			//̨�ƿ���
			if(++ledStep > 3)
				ledStep = 0;
			if(ledStep == 0)
			{
				ledOff();
				lightStep = 0;
			}
			else if(ledStep == 1)
				whiteOn();
			else if(ledStep == 2)
				yellowOn();
			else if(ledStep == 3)
				hunheOn();
		}
		if(keyCount2 > 5)
		{
			//���ȿ���
			if(++lightStep > 4)
				lightStep = 1;
			if(lightStep == 1)
				light1();
			else if(lightStep == 2)
				light2();
			else if(lightStep == 3)
				light3();
			else if(lightStep == 4)
				light4();
		}
		keyCount0 = 0;
		keyCount1 = 0;
		keyCount2 = 0;
		keyCount3 = 0;
		keyNub = 0;
	}
}



/***********************************************************
�жϷ�����
***********************************************************/
void interrupt Isr_Timer()
{
	if(TMR2IF)				//��ֻʹ����һ���ж�Դ,������ȥ�ж�
	{
		TMR2IF = 0;
		
		if(++MainTime >= 16)
		{
			MainTime = 0;
			B_MainLoop = 1;
		}
		//ģ��pwm���
	}
	else
	{
		PIR1 = 0;
	//	PIR2 = 0;
	}
}

/***********************************************************
��ѭ��
***********************************************************/
void main()
{
	PORTB = 0x00;
	PORTA = 0x00;
	Init_System();
	initPWM();
	while(1)
	{
		CLRWDT();
		if(B_MainLoop)
		{
			B_MainLoop = 0;
			//sRefurbish_Sfr();
			CheckTouchKey();
			KeyServer();
			uint16 res = ADC_AVG(0x0F,8);
			uint16 av = 6000/res;		//һ�̶ȵĵ�ѹ
			if(res > 768)		//(0.6/3.2)*4096 
			{
				//��ѹ����3.2V
				penwuFlag = 0;
				wuhuaOff();
				fanOff();
				ledOff();
				ledStep = 0;
				fanStep = 0;
			}
			res = ADC_AVG(0x00,8);
			if(res > 2048)
			{
				//������
				penwuFlag = 0;
				wuhuaOff();
			}
			
			if(penwuFlag == 0 && ledStep == 0 && fanStep == 0 && keyCount0 == 0 && keyCount1 == 0 && keyCount2 == 0 && keyCount3 == 0)
			{
				Sleep_Mode();
			}
		}
	}
}



unsigned int ADC_AVG(unsigned char adch,unsigned char adtime)
{
	unsigned int adsum = 0;
	for(char i = 0; i< adtime;i++)
	{
		adsum+=ADC_Sample(adch);
	}
	return adsum/adtime;
}


void Sleep_Mode() {
    INTCON = 0;

    OPTION_REG = 0;
	
    WPUB = 0x18;         //RB5 ����
	

    IOCB = 0x18;            //����RB3 RB4��IO�ڵ�ƽ�仯�ж�
    RBIE = 1;                    //����PORTB��ƽ�仯�ж�
    GIE = 0;                    //GIE = 0ʱ�����Ѻ�ִ��SLEEP�����;GIE = 1ʱ�����Ѻ������жϷ���

    ADCON0 = 0;                    //�ر�����ģ��

    OSCCON = 0X70;                //������Ϊ16M,�ر�WDT
	
    PORTB;                        //��PORTBֵ������	
			
    asm("clrwdt");

    asm("sleep");                //��������ģʽ

    asm("nop");
	OSCCON = 0X72;                //������Ϊ16M,��WDT
	IOCB = 0x00;
}