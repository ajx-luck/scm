/*-------------------------------------------
���ܣ�IO���������ʾ
�汾��V1.0
���ڣ�2020.06.20 

*�������� ��΢�뵼�� &Ӧ��֧�ֲ�& ��д����
*��˾��ַ www.mcu.com.cn
*����֧��QQ 3001082102  �޹�
            3001030138	Ī��
-------------------------------------------*/

#include <cms.h>					//оƬͷ�ļ�������ݹ���ѡ���Զ�Ѱ�Ҷ�Ӧ�ͺ�ͷ�ļ�

#define		Pout	RA2				//����RA2�� ȡ��Pout
#define 	Pin0	RA0				//����RA0�� ȡ��Pin0
#define 	Pin1	RA1				//����RA1�� ȡ��Pin1

void main(void)
{
	asm("nop");
	asm("clrwdt");
	
	OPTION_REG =0;					//Ԥ��Ƶ��TMR0  
	OSCCON = 0X71;					//�ڲ�����Fosc/1
	
	WPUA = 0B00000001;				//����������1Ϊʹ������
	WPUB = 0B00000000;
	
	TRISA = 0B00000011;				//����IO״̬��0Ϊ�����1Ϊ����
	TRISB = 0B00000000;
			
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