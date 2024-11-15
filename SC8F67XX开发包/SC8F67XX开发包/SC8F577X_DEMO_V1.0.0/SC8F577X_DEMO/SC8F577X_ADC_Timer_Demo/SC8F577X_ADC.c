/**********************************************************
AD��ⷶ������
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
void main()
{
	
	asm("nop");
	asm("clrwdt");
	INTCON = 0;				//��ֹ�ж�
	OSCCON = 0X70;			//������Ϊ16M
	
    DelayXms(2);
	
	ADCON0 = 0B10000001;   //	
	ADCON1 = 0B00000011;	

	OPTION_REG = 0B00001111;
	
	TMR0 = 6;					//�趨Timer0��ʼֵ
	T0IF = 0;
	T0IE = 1;   // T0 �ж�ʹ��
	
	T2CON = 0B00000011; // 16��Ƶ
	PR2 = 250;
	TMR2 = 0;
	TMR2ON = 1;
	TMR2IE = 1; // T2 �ж�ʹ��
	
	PEIE = 1;  // ��λ���뿪�����ܽ���T2�ж�

	TRISB6 = 0;  //RB6 ���̬
	TRISB5 = 0;  //RB5 ���̬
	
	ADON = 1;
	INTF = 0;
	
	GIE  = 1;
	
	while(1)
	{
		asm("clrwdt");

		result = Read_ADC(19,0);   // VDD �ο���ȡ�ڲ�1.2V��׼ 
		
		result1 = Read_ADC(19,1);   // �ڲ�LDO 2V �ο���ȡ�ڲ�1.2V��׼ 
		result2 = Read_ADC(19,2);    // �ڲ�LDO 2.4V �ο���ȡ�ڲ�1.2V��׼ 
	}
}

void interrupt Timer0_Isr(void)
{
		
	if(T0IF)  // TIMER0 62us�� �ж�
	{
		TMR0 += 6;
		T0IF = 0;
		
		RB6 = ~RB6;
		   
	}
	
	if(TMR2IF) // TIMER2 1MS �ж�
	{
        
		TMR2IF = 0;
		RB5 = ~RB5;   
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
	GODONE = 1;
	while(GODONE==1&&i>0)
	{
		i--;
		asm("nop");
	}
	Adc_Result = ADRESH<<4;
	Adc_Result += ADRESL>>4;
	
	return Adc_Result;
	
}



