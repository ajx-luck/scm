#include "adc.h"

typedef unsigned char uint8;
typedef unsigned int uint16;

//---------����ȫ�ֱ���--------------
uint8	intCount = 0;
uint8	intFlag = 0;
char numArray[10] = {0x3F, 0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x67};

//---------���巽��------------------
void initConfig();
void Sleep_Mode();

void interrupt Timer0_Isr() {
    if (T0IF) 
	{
        
		//---------------------------------------
        TMR0 += 155;        //���¸���ֵ���ڸ�ֵǰTimer0���м��������ڸû����ϼӳ�ֵ
        //---------------------------------------
		if(++intCount >= 100)
		{
			intFlag = 1;
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
		if(intFlag == 0)
			continue;
		intFlag = 0;
		TRISA = 0x02;
		ANSEL = 0x02;
		uint16 res = ADC_Result(0x0F);
		uint16 av = 6000/res;		//1.2*10000/2 = 6000�Ŵ�һ�򱶣��ٳ���2���ĳһ���̶ȵĵ�ѹֵ
		uint16 res2 = 0;
		DelayXms(50);
		res2 = ADC_Result(0x01);
		res = res2 * av;
		if(res > 29000)
		{
			res2 = 0;
		}
	}
}


void initConfig()
{
	PORTA = 0x00;
    PORTB = 0x00;
    PORTC = 0x00;
	TRISA = 0;
    TRISB = 0;
    TRISC = 0;
    WPUA = 0x00;
    WPUB = 0x00;
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
    OPTION_REG = 0x00;        //Timer0ʹ���ڲ�ʱ��Focs/4��Ԥ��Ƶ��Ϊ1:2
	
    TMR0 = 0;                //�����ʼֵ
    INTCON = 0xE0;            //��������δ�����ε��жϡ���ֹ�����жϣ�ʹ��Timer0
}


void Sleep_Mode() {
    INTCON = 0;

    OPTION_REG = 0;

    TRISA = 0B00000000;        //�ر��������
    PORTA = 0B01000001;
    WPUA = 0B00000000;

    TRISB = 0B00100100;
    PORTB = 0B01000000;

	TRISC = 0B00000000;
    PORTC = 0B00000011;
    WPUB = 0B00100000;         //RB5 ����
	

    IOCB = 0B00100100;            //����RB5 RB2��IO�ڵ�ƽ�仯�ж�
    RBIE = 1;                    //����PORTB��ƽ�仯�ж�
    GIE = 0;                    //GIE = 0ʱ�����Ѻ�ִ��SLEEP�����;GIE = 1ʱ�����Ѻ������жϷ���

    ADCON0 = 0;                    //�ر�����ģ��

    OSCCON = 0X70;                //������Ϊ16M,�ر�WDT
	
    PORTB;                        //��PORTBֵ������	
			
    asm("clrwdt");

    asm("sleep");                //��������ģʽ

    asm("nop");
	
	


}