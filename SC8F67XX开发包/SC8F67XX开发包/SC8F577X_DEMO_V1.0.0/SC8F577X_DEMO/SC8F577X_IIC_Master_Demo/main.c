/**********************************************************

**********************************************************/

#include <sc.h>



volatile unsigned int   result,result1,result2;


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

#define  SLAVE_ADRSS   0xa0

 
void Init_System();

/******************************************
  Adress  �ӻ���ַ
  data    ��������
********************************************/
void Write_IIC(unsigned char Adress,unsigned char data)
{
	SEN =1;  //��ʼ�ź�
	while(IICIF==0);  //�ȴ��������
	IICIF = 0;
	IICBUF = Adress;   //���͵�ַ
	while(IICIF==0);
	IICIF = 0;
	IICBUF = data;    //��������
	while(IICIF==0);
	IICIF = 0;
	PEN =1;           //����ֹͣ
    while(IICIF==0);
	IICIF = 0;
	
}

/******************************************
   Adress   �ӻ���ַ
   data     ��������
   ���� ReadData
  
********************************************/
unsigned char  Read_IIC(unsigned char Adress,unsigned char data)
{
	unsigned char ReadData;

	SEN =1;  //��ʼ�ź�
	while(IICIF==0); //�ȴ��������
	IICIF = 0;
	IICBUF = Adress;  
	while(IICIF==0);

	IICIF = 0;
	IICBUF = data;
	while(IICIF==0);
	IICIF = 0;
	
	RSEN =1;  //�ظ���ʼ�ź�
	while(IICIF==0);

	IICIF = 0;
	
	IICBUF = Adress+1;  //���͵�ַ+1 ��ȡ����
	while(IICIF==0);
	IICIF = 0;    
	RCEN = 1;           //��ʼ��������
	while(IICIF==0);
	IICIF = 0;
	ReadData = IICBUF;  //��ȡ���յ�����
	
	PEN =1;                //����ֹͣ
    while(IICIF==0); 
	IICIF = 0;
	
	return ReadData;
	

}
volatile unsigned char IICReadData;
void main()
{
	Init_System();
	TRISA |=  0b00000011;  //RA0 RA1����̬����IIC ����
	IICCON =  0B00100000;  // IIC ʹ��  ����ģʽ
    IICADD = 159;          // 100K Ƶ�� = 16M /159+1
	
	
    Write_IIC(0xa0,5);
    Write_IIC(0xa0,5);
	while(1)
	{
         DelayXms(200);
		 Write_IIC(0xa0,0x80);
			
		 IICReadData =  Read_IIC(0xa0,0x80);
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
	OSCCON = 0X70;				//������Ϊ8M,�ر�WDT
	OPTION_REG = 0;
	
    WPUA  = 0B00000000;			//��ʼ������
    WPUB  = 0B00001000;			
  
 
	TRISA = 0B00000000;			//��ʼ��IO״̬
	TRISB = 0B00001000;

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
		RB6 = ~RB6;
		//Init_System();
	}
}