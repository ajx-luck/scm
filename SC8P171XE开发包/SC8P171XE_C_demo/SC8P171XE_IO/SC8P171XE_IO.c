/*-------------------------------------------
���ܣ�IO���������ʾ
�汾��V1.0
���ڣ�2021.01.05 

*�������� ��΢�뵼�� &Ӧ��֧�ֲ�& ��д����
*��˾��ַ www.mcu.com.cn
*
-------------------------------------------*/

#include <sc.h>					//оƬͷ�ļ�������ݹ���ѡ���Զ�Ѱ�Ҷ�Ӧ�ͺ�ͷ�ļ�

#define		Pout	RA2				//����RA2�� ȡ��Pout
#define 	Pin0	RA0				//����RA0�� ȡ��Pin0
#define 	Pin1	RA1				//����RA1�� ȡ��Pin1

void main(void)
{
	asm("nop");
	asm("clrwdt");
	
	OPTION_REG =0;					//Ԥ��Ƶ��TMR0  
	OSCCON = 0X70;					//�ڲ�����Fosc/1
	
	WPUA = 0B00000011;				//����������1Ϊʹ������
	WPUB = 0B00000000;
	
	TRISA = 0B00000011;				//����IO״̬��0Ϊ�����1Ϊ����
	TRISB = 0B00000000;
	
	ANSEL = 0B00000000;			//��Ϊ���ֹ��ܿ�
	ANSELH = 0B00000000;
	
	while(1)
	{
		asm("clrwdt");
		
		if(Pin0)
			PORTB ^= 0xff;			//B�����巭ת
		else
			PORTB =0;
			
		if(Pin1)					
			Pout =1;
		else
			Pout =0;			
	}
}