/*-------------------------------------------

�������ƣ�Usartͬ�����ؽ��ճ���
�汾��V1.0
���ڣ�2020.06.20 

��ע��

*�������� ��΢�뵼�� &Ӧ��֧�ֲ�& ��д����
*��˾��ַ www.mcu.com.cn
*����֧��QQ 3001082102  �޹�
            3001030138	Ī��
-------------------------------------------*/


#include "cms.h"

unsigned char Recebuffer[4];

unsigned char rececount = 0;
void Set_Usart_Sync_Master();
		
			
void main()
{
	asm("clrwdt");

	TRISA = 0B00000000;

	Set_Usart_Sync_Master();
	
	INTCON = 0XC0;

	while(1)
	{
		asm("clrwdt");
			
		PORTA = Recebuffer[0];	
	}
	
}

//--------------------------------------
//125us��ʱ�жϣ����жϷ����н����շ�����
void interrupt Usart_Isr()
{
	
	if(RCIF)
	{
		
		
		//RX9D;
		Recebuffer[rececount]=RCREG;
			
		rececount++;
		if(rececount >= 4)
		{
			rececount = 0;
		}
		
					
		if(OERR==1)
		{
			CREN=0;
			CREN=1;
		}

		CREN=0;
		SREN=0;
		SREN=1;
	}
}

void Set_Usart_Sync_Master()
{
	SPBRG = 51;				//������=FSYS/[4(n+1)]
	
	SCKP = 0;   				//���������Ƿ�ȡ��
	
	SYNC = 1;    				//ͬ��ģʽ
	CSRC = 1;   				//����ģʽ
	RCIE = 1;
	SPEN = 1;    				//ʹ���첽����	
	RX9EN = 0;     			//����9Ϊ����	
	CREN = 0;
	SREN = 1;
	
}