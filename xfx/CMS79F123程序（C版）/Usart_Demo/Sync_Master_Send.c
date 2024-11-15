/*-------------------------------------------

�������ƣ�Usartͬ�����ط��ͳ�����ʾ
�汾��V1.0
���ڣ�2020.06.20 

��ע��

*�������� ��΢�뵼�� &Ӧ��֧�ֲ�& ��д����
*��˾��ַ www.mcu.com.cn
*����֧��QQ 3001082102  �޹�
            3001030138	Ī��
-------------------------------------------*/

#include <cms.h>


unsigned char Sendbuffer[4];	//�������ݻ���	
//--------------------------------------
//������������
void Set_Usart_Sync_Master();					//ͬ��USART����ģʽ��ʼ�����ú���
//--------------------------------------



bit B_MainLoop;
unsigned char sendcount = 0;

void main()
{
	asm("nop");
	asm("clrwdt");
	
	OSCCON = 0x71;								//�ڲ���������ϵͳʱ��
	INTCON = 0;
	
	/*��ʼ��USARTͨ��ģ��*/
	Set_Usart_Sync_Master();					//��ʼ��Usart��ͬ������ģʽ��
	
	/*��ʼ����ʱ��2, 125us�ж�*/
	PR2 = 250;
	T2CON = 4;
	TMR2IE = 1;
	
	INTCON = 0XC0;
	
	TRISA = 0;
	
	while(1)
	{	
		asm("clrwdt");
		
		PORTA = Sendbuffer[0];	
		
		if(B_MainLoop)
		{
			B_MainLoop = 0;
			
			if(TRMT)					//���Ϳ��оͷ���
			{
				//TX9D = 1;
				
				TXREG = Sendbuffer[sendcount];
				
				Sendbuffer[sendcount]++;
				
				sendcount++;
				if(sendcount >= 4)
				{
					sendcount = 0;
				}
			}
		}

		
	}
}

//--------------------------------------
//125us��ʱ�ж�
void interrupt Timer_Isr()
{
	static unsigned char tcount = 0;
	
	if(TMR2IF)
	{
		TMR2IF = 0;
		if(++tcount >= 40)
		{
			tcount = 0;
			B_MainLoop = 1;
		}
		
	}
}
		
/***********************************************
�������ƣ�Set_Usart_Sync_Master
�������ܣ�Usart״̬���ã�ͬ������ģʽ��
��ڲ�������
���ڲ�������
��ע��
1��SYNC = 1;Ŀ�겨���� = Fosc/(4*(SPBRG+1))
************************************************/
void Set_Usart_Sync_Master()
{
	SPBRG = 51;			//������=FSYS/[4(n+1)]
	
	SCKP=0;    				//���������Ƿ�ȡ��
	SYNC = 1;				//0Ϊ�첽ģʽ��1Ϊͬ��ģʽ
    SPEN = 1;				//�����ڲ���
	CSRC = 1;				//����ģʽ
	RCIE = 0;				//��ֹ�����ж� 
	TXIE = 0;				//��ֹ�����ж�
    RX9EN = 0;				//0Ϊ8λ���գ�1Ϊ9λ����
	TX9EN = 0;				//0Ϊ8λ���ͣ�1Ϊ9λ����
	SREN = 0;				//��ֹ����ģʽ
	CREN = 0;
	TXEN = 1;				//ʹ�ܷ���
}