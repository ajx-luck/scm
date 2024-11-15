/**********************************************************
   ������9600
   8λ���ݸ�ʽ����У��
   ����10���ֽ����֣�Ȼ���ͳ���
**********************************************************/

#include <sc.h>



volatile unsigned int   result,result1,result2;


unsigned int  Read_ADC(unsigned char  ADCchannel,unsigned char  ADCLDORef);
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

#include <sc.h>


void Init_System();

unsigned char RxTable[10],rxDADA;
bit RXOK_f;

void main()
{
	unsigned char i =0 ;
	Init_System();
	
	TXREG =0x55;

	while(TRMT==0);
	TXREG =0xaa;

	while(TRMT==0);
	
	while(1)
	{
 
		
		if(RXOK_f==1)
		{
			for(i=0;i<10;i++)
			{
					
				TXREG =RxTable[i];

				while(TRMT==0);
			}

			RXOK_f = 0;
		}

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
	TRISB = 0B00011000;

	PORTA = 0B00000000;
	PORTB = 0B00000000;			//��ʼ�����
	
	TXSTA =   0b10100000;
	RCSTA =   0b10010000;
	SPBRG =   103;         //������9600
	
	PEIE =1;
	RCIE =1;
	GIE =1;

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
	static unsigned char RxNum=0,TEMP;
	if(RBIF)
	{
		RBIF = 0;			//���жϱ�־
		RB6 = ~RB6;
	
	}
	
	if(RCIF==1)
	{
		RCIF = 0;
	    
		if(RXOK_f==0)	
		{
			RxTable[RxNum] = RCREG;
			RxNum++;
			if(RxNum > 9)
			{
				RxNum =0;
				RXOK_f =1;
			}
		}
		else
		TEMP =  RCREG;
		
	}
}