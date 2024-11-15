/**********************************************************

**********************************************************/

#include <sc.h>



volatile unsigned int   result,result1,result2;
volatile unsigned char ReceBuffer;	//���յ�������
volatile unsigned char SendBuffer;	//�����͵�����


void DelayXms(unsigned char x);


/***********************************************************
�������ƣ�DelayXms
�������ܣ����뼶�Ǿ�׼��ʱ
��ڲ�����x - ��ʱʱ��
���ڲ�����
��    ע��
***********************************************************/
void DelayXms(unsigned char x)
{
	unsigned char i,j;
	for(i=x;i>0;i--)
		for(j=153;j>0;j--);
}

/***********************************************************
main������
***********************************************************/

void Init_System();

volatile unsigned char IICReadData;
void main()
{
	Init_System();
	
	TRISA |=   0b00000011;  //RA0 RA1����̬����IIC ����
	SPICON =   0B00100100;  // SPI  ʹ�� �Ӷ�ģʽ
	SPICON2 =  0B00000000;  // SPI  4��  �Ӷ�ģʽ
    
	 SPIIF =0;
	 SPIIE=1;
	 PEIE =1;
	 GIE =1;  

	while(1)
	{
         DelayXms(200);

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
	OSCCON = 0X70;				//������Ϊ8M,��WDT
	OPTION_REG = 0;
	
    WPUA  = 0B00000000;			//��ʼ������
    WPUB  = 0B00001000;			
  
 
	TRISA = 0B00000000;			//��ʼ��IO״̬
	TRISB = 0B00110100;

	PORTA = 0B00000000;
	PORTB = 0B00000000;			//��ʼ�����

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
		RBIF = 0;			//���жϱ�־
		
		//Init_System();
	}
	
	if(SPIIF==1)
	{
	   SPIIF = 0;
	   
	   ReceBuffer = SPIBUF;
	   
	   
	   SPIBUF =0x11;	
	
	}
}