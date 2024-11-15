/*-------------------------------------------

�������ƣ�Usart�첽�շ�����
���ڰ汾��2019/12/30 <V1.0>

��ע�����Ϳ������ѡ��ʹ�÷����жϣ�TXIE��������
      ���ͣ��д���������ʱ��TXIE��1�����һ���ַ�д��
	  TXREG�󣬽�TXIE�ж�����λ���㡣

*�������� ��΢�뵼�����޹�˾ &Ӧ��֧�ֲ�& ��д����
*��˾��ַ www.mcu.com.cn
*����֧��QQ 3001082102  �޹�
            3001085706	�¹�
-------------------------------------------*/


#include <cms.h>


//--------------------------------------
//����/�������鶨��
unsigned char Recebuffer[4];	//�������ݻ���
unsigned char Sendbuffer[4];	//�������ݻ���

//--------------------------------------
//������������
void Set_Usart_Async();			//�첽USART��ʼ�����ú���

//--------------------------------------
unsigned char sendcount = 0,rececount = 0;

//--------------------------------------
//����ʾ��


void main()
{
	asm("nop");
	asm("clrwdt");
	
	OSCCON = 0x71;				//8M�ڲ�ʱ��
	INTCON = 0;
	
	PIR1 = 0;
	PIE1 = 0;
	PIR2 = 0;
	PIE2 = 0;
	
	TRISA = 0B00000000;
	PORTA = 0B00000000;

	/*��ʼ��USARTͨ��ģ��*/
	Set_Usart_Async();

	
	INTCON = 0XC0;				//ȫ���ж�ʹ��
	
	
	while(1)
	{
		asm("clrwdt");	
		
		PORTA = Recebuffer[0];
		
		//-------------------------------------------
		//���Ϳ���
		if(TRMT)
		{
			TXREG = Sendbuffer[sendcount];	                       
			
			Sendbuffer[sendcount] ++;
			
			sendcount++;
			if(sendcount >= 4)
			{
				sendcount = 0;
			}
		}
		
	}
}


//--------------------------------------
//�жϷ���
void interrupt Usart_Isr()
{
	static unsigned char tcount = 0;

	
	//-------------------------------------------
	//���տ��ƣ�������ձ�־λΪ1��˵�������ݽ������
	//RCIF�ڼĴ������������Զ�����
	if(RCIF)
	{	
		if(FERR)
		{
			RCREG;							//֡����
			return;
		}
		
		Recebuffer[rececount] = RCREG;  	//�����ջ��������ݶ���
		rececount++;
			
		if(rececount >= 4)					//������һ֡���ݣ���������
		{
			rececount = 0;
		}
			
		if(OERR)							//������������
		{
			CREN = 0;						//����CRENλ�ɽ�OERRλ����
			CREN = 1;						//�ٴν�CREN��һ���������������
		}
		
	}
}

/***********************************************
�������ƣ�Set_Usart_Async
�������ܣ�Usart״̬���ã��첽��
��ڲ�������
���ڲ�������
��ע��
************************************************/
/*
SYNC = 0,BRG16 = 0,BRGH = 0;Ŀ�겨���� = Fosc/(64*([SPBRGH:SPBRG]+1))

SYNC = 0,BRG16 = 0,BRGH = 1;
SYNC = 0,BRG16 = 1,BRGH = 0;Ŀ�겨���� = Fosc/(16*([SPBRGH:SPBRG]+1))

SYNC = 0,BRG16 = 1,BRGH = 1;Ŀ�겨���� = Fosc/(4*([SPBRGH:SPBRG]+1))
*/
void Set_Usart_Async()
{
	SPBRG = 47;			//���ò�����Ϊ10417 bps�����0.16%	
	
	SYNC = 0;				//0Ϊ�첽ģʽ��1Ϊͬ��ģʽ
	SCKP = 0;
	
    SPEN = 1;				//�����ڲ���
	RCIE = 1;				//�����ж�  
	TXIE = 0;				//�����ж�
    RX9EN = 0;				//0Ϊ8λ���գ�1Ϊ9λ����
	TX9EN = 0;				//0Ϊ8λ���ͣ�1Ϊ9λ����
	CREN = 1;				//0Ϊ��ֹ���գ�1Ϊʹ�ܽ���
    TXEN = 1;				//0Ϊ��ֹ���ͣ�1Ϊʹ�ܷ���
}