/**********************************************************

**********************************************************/

#include <sc.h>



volatile unsigned int   result,result1,result2;



/***********************************************************
main������
***********************************************************/

#include <sc.h>


#define  SLAVE_ADRSS   0xa0

 
void Init_System();

volatile unsigned char IICReadData;

void main()
{
	Init_System();
	TRISA |=  0b00000011;  //RA0 RA1����̬����IIC ����
	
	IICCON =  0B00100001;  // IIC ʹ��  �ӻ�ģʽ
	
    IICADD = 0xa0;          // 
	IICIE =1;
	PEIE =1;
    GIE =1;	


	while(1)
	{

	}
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
	OSCCON = 0X70;				//������Ϊ16M,�� WDT
	OPTION_REG = 0;
	
    WPUA  = 0B00000000;			//��ʼ������
    WPUB  = 0B00001000;			
  
 
	TRISA = 0B00000000;			//��ʼ��IO״̬
	TRISB = 0B00001000;

	PORTA = 0B00000000;
	PORTB = 0B00000000;			//��ʼ�����

}

/***********************************************
�������ƣ�IIC_Isr
�������ܣ�IIC�жϷ���
��ڲ�������
���ڲ�������
��ע��
************************************************/
void interrupt IIC_Isr()
{
	
	if(IICIF==1)
	{
		IICIF =0;
	
		
		if(RW==1)   //��������
		{
			IICBUF = 0x55;
		}
		else
		{
			if(DA==0)  //��ַƥ��
			{
				IICBUF;
				
			}
			else
			{
				
			  IICReadData = IICBUF;  //��������
			}
		}
			
		
		
		IICCKP =1;
	
	}
}