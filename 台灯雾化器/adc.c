#include "adc.h"

/**********************************************************
�������ƣ�AD_Sample
�������ܣ�AD���
��ڲ�����adch - ���ͨ��
���ڲ������� 
��    ע������ͨ������������Ϊģ���
	      ����10��,ȡ�м�˴ε�ƽ��ֵΪ�����������adresult��
**********************************************************/
//ADC��������
unsigned int ADC_Sample(unsigned char adch)
{
	unsigned int adsum = 0;
	unsigned int admin = 0,admax = 0;
	unsigned char adtimes = 0;
	volatile unsigned int ad_temp;
	ADCON1 = 0;						//�����
	ADCON0 = 0X41 | (adch << 2);	//16��Ƶ
	asm("nop");
	asm("nop");
	GODONE = 1;						//��ʼת��

	unsigned char i = 0;
	while(GODONE)
	{
		if(0 == (--i))
			return;
	}
	
	ad_temp=(ADRESH<<4)+(ADRESL>>4);	//����12λADֵ
	return ad_temp;
	
}



//ADC�Ҷ������
unsigned int ADC_Result(unsigned char adch)
{
	ADCON1 = 0x80;						//�Ҷ���
	ADCON0 = 0X41 | (adch << 2);	//16��Ƶ
	asm("nop");
	asm("nop");
	GODONE = 1;						//��ʼת��

	unsigned char i = 0;
	while(GODONE)
	{
		if(0 == (--i))
			return 0;				//ת����ʱ
	}
	unsigned int tempResult = ADRESH;
	tempResult <<= 8;
	tempResult += ADRESL;
	return tempResult;
}
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

//��ȡ�ڲ���ѹ
unsigned char readVrefADC()
{
	DelayXms(1);
	ADC_Sample(0x0F);
	unsigned char result;
		
	result = ADC_Result(0x0F);
	return result;
}

