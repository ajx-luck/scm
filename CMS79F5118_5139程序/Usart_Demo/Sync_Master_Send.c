/*-------------------------------------------

�������ƣ�Usartͬ�����ط��ͳ���
���ڰ汾��2019/12/30 <V1.0>

��ע��

*�������� ��΢�뵼�����޹�˾ &Ӧ��֧�ֲ�& ��д����
*��˾��ַ www.mcu.com.cn
*����֧��QQ 3001082102  �޹�
            3001085706	�¹�
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
	
	OSCCON = 0x71;								//8M�ڲ�ʱ��
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
************************************************/
/*
SYNC = 1,BRG16 = 0,BRGH = x;
SYNC = 1,BRG16 = 1,BRGH = x;Ŀ�겨���� = Fosc/(4*([SPBRGH:SPBRG]+1))
*/
void Set_Usart_Sync_Master()
{
	SPBRG = 51;			//���ò�����Ϊ9600 bps�����0.16%	
	
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