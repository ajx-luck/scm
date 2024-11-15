/*-------------------------------------------

�������ƣ�����ģʽ�����ѳ���
���ڰ汾��2018/6/15 <V1.1>

��ע��WDT����CONFIG�н�ֹ������ģʽ������PORTB��ƽ�仯����

*�������� ��΢�뵼�����޹�˾ &Ӧ��֧�ֲ�& ��д����
*��˾��ַ www.mcu.com.cn
*����֧��QQ 3001082102  �޹�
            3001085706	�¹�
-------------------------------------------*/


#include <cms.h>
/*************************************************************************/
volatile unsigned char KEYRAM0 @ 0x113;
volatile unsigned char KEYRAM1 @ 0x114;
volatile unsigned char KEYRAM2 @ 0x117;
volatile unsigned char KEYRAM3 @ 0x118;

volatile unsigned char PFGRAM0 @ 0x11B;
volatile unsigned char PFGRAM1 @ 0x11E;
/*************************************************************************/

void Init_System();
void Sleep_Mode();

void main()
{
	Init_System();
	while(1)
	{
		asm("clrwdt");
		
		Sleep_Mode();
	}
}


/***********************************************
�������ƣ�Sleep_Mode
�������ܣ���������ģʽ
��ڲ�������
���ڲ�������
��ע��
************************************************/
void Sleep_Mode()
{
	INTCON = 0;		
	
	OPTION_REG = 0;

	KEYRAM0 = 0;
	KEYRAM1 = 0;
	KEYRAM2 = 0;
	KEYRAM3 = 0;
	PFGRAM0 = 0;
	PFGRAM1 = 0;   //������Ҫ�ص��⼸���Ĵ���
	
	
	ANSEL = 0;					//��Ϊ����ͨ��
	ANSELH = 0;
	 
	TRISA = 0B00000000; 		//�ر��������
	PORTA = 0B00000000;
	WPUA  = 0B00000000;
	
	TRISB = 0B00000100;	
	PORTB = 0B00000000;
	WPUB  = 0B00000100;		

	IOCA = 0B00000000;
	IOCB = 0B00000100;			//����RB1��IO�ڵ�ƽ�仯�ж�
	RBIE = 1;					//����PORTB��ƽ�仯�ж�
	GIE = 1;					//
	
	ADCON0 = 0;					//�ر�����ģ��
	PWMCON0 = 0;
	EECON1 = 0;					//��˼Ĵ���,�кô�(�����齨��)
	OPA0CON = 0;
	WDTCON = 0;					//�رտ��Ź�
	
	PORTB;						//��PORTBֵ������			
	asm("clrwdt");

	asm("sleep");				//��������ģʽ
	
	asm("nop");
	asm("nop");
	asm("clrwdt");
	
	WDTCON = 0x01;				//���¿������Ź�
	Init_System();				//���Ѳ����жϺ󷵻ش˴�
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
	OSCCON = 0X71;				//������Ϊ8M
	OPTION_REG = 0;
	
    WPUA  = 0B00000011;			//��ʼ������
    WPUB  = 0B00000100;				
 
	TRISA = 0B00000011;			//��ʼ��IO״̬
	TRISB = 0B00000100;
 
	PORTA = 0B00000000;
	PORTB = 0B00000000;			//��ʼ�����
	
	ANSEL = 0;
	ANSELH = 0;
}


/***********************************************
�������ƣ�PB_Isr
�������ܣ�PB��ƽ�仯�жϷ���
��ڲ�������
���ڲ�������
��ע��
************************************************/
void interrupt PB_Isr()
{
	if(RBIF)
	{
		PORTB;				//��PORTBֵ
		RBIF = 0;			//���жϱ�־
		
	}
}