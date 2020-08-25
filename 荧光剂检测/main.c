#include "adc.h"
#include "number.h"

#define LEDCTR()		PORTB ^= 0x20
#define BLUEON()	PORTE |= 0x01
#define BLUEOFF()	PORTE &= 0xFE

typedef unsigned char uint8;
typedef unsigned int uint16;

//---------����ȫ�ֱ���--------------
uint8	intCount = 0;
uint8	intFlag = 0;
uint8	nubStep = 0;	//0Ϊ�� ----3Ϊǿ
uint8	tempbaiweiNum = 0;	//��λ
uint8	tempshiweiNum = 0;	//ʮλ
uint8	tempgeweiNum = 0;	//��λ
uint8 refreshCount = 0;	//ˢ�¼�ʱ
uint16	ygNub;			//ӫ�������
uint8	count500ms = 0;
uint16	timeCount = 0;
uint8	nubShowTime = 20;
uint8	keyClick = 0;
uint8 keyNub = 0;
uint8	keyCount = 0;//��������
char numArray[10] = {0x3F, 0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x67};

//---------���巽��------------------
void initConfig();
void Sleep_Mode();
void refreshNub();
void keyCtr();
char keyRead(char KeyStatus);
unsigned int ADC_AVG(unsigned char adch,unsigned char adtime);

void interrupt Timer0_Isr() {
    if (T0IF) 
	{
        
		//---------------------------------------
        TMR0 = 150;        //���¸���ֵ���ڸ�ֵǰTimer0���м��������ڸû����ϼӳ�ֵ
        //---------------------------------------
		if(++intCount >= 100)
		{
			intFlag = 1;
			if(++count500ms >= 100)
			{	
				count500ms = 0;
				timeCount++;
				if(nubShowTime > 0)
				{
					--nubShowTime;
				}
			}
		}	
        
		T0IF = 0;            //���жϱ�־λ	
    }

    if (RBIF) {
        RBIF = 0;            //���жϱ�־
    }
}


void main()
{
	initConfig();
	for(;;)
	{
		asm("clrwdt");
		refreshNub();
		if(intFlag == 0)
			continue;
		intFlag = 0;
		
		keyCtr();
		
		TRISB |= 0x04;
		ANSEL = 0x00;
		ANSELH = 0x01;
	
		uint16 res = ADC_AVG(0x0F,8);
		uint16 av = 6000/res;		//1.2*10000/2 = 6000�Ŵ�һ�򱶣��ٳ���2���ĳһ���̶ȵĵ�ѹֵ
		uint16 res2 = 0;
		for(int i=0;i<10;i++)
		{
			refreshNub();
		}
		/**
		if(nubShowTime == 20)
		{
			res2 = ADC_AVG(0x08,8);
			res = res2 * av;
			ygNub = res/100;
			//ygNub = res;
		}
		else
		{
			BLUEOFF();
		}
		**/
		
		res2 = ADC_AVG(0x08,8);
		if(res2)
		{
			//res2 = ADC_AVG(0x08,8);
			res = res2 * av;
			//ygNub = res/10;
			nubShowTime = 20;
		}
		nubShowTime = 20;
		//ygNub = 500;
	}
}


void keyCtr()
{
	keyClick = keyRead(0x18&(~PORTB));
	if(keyClick > 0)
	{
		if(keyNub & 0x08)
		{
			//K1������,����LED��
			LEDCTR();
		}
		else
		{
			//K2������
			BLUEON();
			nubShowTime = 20;
			count500ms = 0;
		}
	
	
	}
}

//ˢ�������
void refreshNub()
{
	if(nubShowTime == 0)
	{
		setInput();
		return;
	}
	if(++refreshCount >= 10)
	{
		refreshCount = 0;
		tempbaiweiNum = ygNub/100;
		tempshiweiNum = (ygNub%100)/10;
		tempgeweiNum = ygNub%10;
	}
	low1(numArray[tempbaiweiNum],numArray[tempshiweiNum],numArray[tempgeweiNum],1,1);
	low2(numArray[tempbaiweiNum],numArray[tempshiweiNum],numArray[tempgeweiNum],1);
	low3(numArray[tempbaiweiNum],numArray[tempshiweiNum],numArray[tempgeweiNum],1);
	low4(numArray[tempbaiweiNum],numArray[tempshiweiNum],numArray[tempgeweiNum],1,1);
	/**
	DP();
	TITLE();
	showNubBaiwei(numArray[tempbaiweiNum]);
	setInput();
	showNubShiwei(numArray[tempshiweiNum]);
	setInput();
	showNubGewei(numArray[tempgeweiNum]);
	**/
	DelayXms(1);
	switch(nubStep)
	{
		case 0:
		WU();
		break;
		case 1:
		RUO();
		break;
		case 2:
		ZHONG();
		break;
		case 3:
		QIANG();
		break;
	}
	DelayXms(3);
}

unsigned int ADC_AVG(unsigned char adch,unsigned char adtime)
{
	unsigned int adsum = 0;
	for(char i = 0; i< adtime;i++)
	{
		adsum+=ADC_Sample(adch);
		refreshNub();
	}
	return adsum/adtime;
}


void initConfig()
{
	COMEN = 0x00;
	PORTA = 0x00;
    PORTB = 0x00;
    PORTC = 0x00;
	TRISA = 0;
    TRISB = 0x18;
    TRISC = 0;
    WPUA = 0x00;
    WPUB = 0x18;
    WPUC = 0x00;
	WPUE = 0x00;
    PORTA = 0x00;
    PORTB = 0x00;
    PORTC = 0x00;
    IOCB = 0x00;

	
	asm("nop");
    asm("clrwdt");
    INTCON = 0;                    //ϵͳ��ʼ��
    OSCCON = 0X71;                //������Ϊ8M,�� WDT
    OPTION_REG = 0x06;        //Timer0ʹ���ڲ�ʱ��Focs/4��Ԥ��Ƶ��Ϊ1:128
	
    TMR0 = 0;                //�����ʼֵ
    INTCON = 0xE0;            //��������δ�����ε��жϡ���ֹ�����жϣ�ʹ��Timer0
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
	OSCCON = 0X71;                //������Ϊ16M,��WDT
	IOCB = 0x00;
}

char keyRead(char KeyStatus)	
{ 
	if (KeyStatus)
	{
		keyNub = KeyStatus;
		keyCount++;
	}
	else
	{
		if(keyCount >= 8)
		{
			keyCount = 0;
			return	1;
		}
		keyCount = 0;
		keyNub = 0;
	}
	return 0;
}