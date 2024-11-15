/**********************************************************

**********************************************************/

#include <sc.h>


volatile unsigned int  Adc_Result1,Adc_Result2,Adc_Result0;

/***********************************************************
main������
***********************************************************/

unsigned int  Read_ADC(unsigned char  ADCchannel,unsigned char  ADCLDORef);
void Init_System();


void main()
{
	Init_System();
	
	TRISA |= 0x01;       //RA0 ����̬
	PGACON =  0b10000011;//  ʹ��PGA��16���Ŵ�

	ECIGEN =1;             //����Դ����
	while(1)
	{
		
      PGACH =0;
	  Adc_Result1 =  Read_ADC(20,1);//��ȡPGA��ֵ
	  PGACH =1;
	  Adc_Result2 =  Read_ADC(20,1);//��ȡPGA��ֵ
	  
	  Adc_Result1 += Adc_Result2;
	  Adc_Result1 >>=1;
	   

		
	}
}


/******************************************
  ����  Adc_Result 
  
 ADCchannel Ϊ����ADͨ�� 0-18
             19  ����ڲ�1.2V 
			 20  ���PGA���
 ADCLDORef =1,�����ڲ�LDO 2V ��ΪADC �ο�
 ADCLDORef =2,�����ڲ�LDO 2.4V ��ΪADC �ο�
 ADCLDORef =0,VDD ��ΪADC �ο�
*****************************************/
unsigned int  Read_ADC(unsigned char  ADCchannel,unsigned char  ADCLDORef)
{
 unsigned int	Adc_Result;
	unsigned char i=200;
	
	
	if(ADCLDORef==0)
	{
		ADCON1 = 0B00000000;
	}
	else if(ADCLDORef==1)
	{
		ADCON1 = 0B00000101;
	}
	else
	{
    	ADCON1 = 0B00000110;	
	}
	
	CHS4 = 0;	
	if(ADCchannel >=16)
	{
		ADCchannel -= 16;	
		CHS4 = 1;	
	}
	
	ADCON0 &= 0b11000011;
	ADCON0 |= ADCchannel<<2; 
	asm("nop");
	GODONE =1;
	while(GODONE==1&&i>0)
	{
		i--;
		asm("nop");
	}
	Adc_Result = ADRESH<<4;
	Adc_Result += ADRESL>>4;
	
	return Adc_Result;
	
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
	
    WPUA  = 0B00000000;			
    WPUB  = 0B00001000;			//��ʼ��RB3����
  
 
	TRISA = 0B00000001;			//��ʼ��IO״̬
	TRISB = 0B00001000;

	PORTA = 0B00000000;
	PORTB = 0B00000000;			//��ʼ�����
	
    ADCON0 = 0B10000001;         //	
	ADCON1 = 0B00000011;
	
   
}

