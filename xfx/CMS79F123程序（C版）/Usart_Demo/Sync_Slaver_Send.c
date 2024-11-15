/*-------------------------------------------

�������ƣ�Usartͬ���Ӷ����ͳ���
�汾��V1.0
���ڣ�2020.06.20 

��ע��

*�������� ��΢�뵼�� &Ӧ��֧�ֲ�& ��д����
*��˾��ַ www.mcu.com.cn
*����֧��QQ 3001082102  �޹�
            3001030138	Ī��
-------------------------------------------*/

#include "cms.h"


unsigned char Sendbuffer[4];
unsigned char sendcount;


void Set_Usart_Sync_Slaver();
			
void main()
{
	asm("clrwdt");
	TRISA = 0B00000000;
	
	INTCON = 0XC0;
	
	Set_Usart_Sync_Slaver();
	
	while(1)
	{
		asm("clrwdt");
		
		PORTA = Sendbuffer[0];	
	}
	
}

//--------------------------------------
//���жϷ����н��з��Ͳ���
void interrupt Usart_Isr()
{
	
	if(TXIF)
	{
		//TX9D=1;   //��9λ����λ1
		
		TXREG=Sendbuffer[sendcount];
		
		Sendbuffer[sendcount]++;
		
		sendcount++;
		if(sendcount >= 4)
		{
			sendcount = 0;
		}
	}
}

void Set_Usart_Sync_Slaver()
{
	SCKP = 0;    //���������Ƿ�ȡ��
	
	SYNC = 1;    //ͬ����ģʽ
	CSRC = 0;   //�Ӷ�ģʽ
	
	SPEN = 1;    //ʱ���첽����
	
	CREN = 0;
	SREN = 0;
	TXIE = 1;
	TX9EN = 0;     //����9Ϊ����
	TXEN = 1;    //ʹ�ܷ���
}