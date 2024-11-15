/**********************************************************
AD��ⷶ������
**********************************************************/

#include <sc.h>
#define _XTAL_FREQ 8000000UL		//�����16M�������Ϊ16000000UL

volatile unsigned int	adresult;
volatile unsigned long adsum;
volatile unsigned int admin,admax;
volatile unsigned char adtimes;

void ADC_Sample(unsigned char adch,unsigned char adldo);
void DelayXms(unsigned char x);


#define _DEBUG			//���Գ�����

/**********************************************************
�������ƣ�AD_Sample
�������ܣ�AD���
��ڲ�����adch - ���ͨ����adldo-��׼��ѹ
			adldo = 0�� VDD ��ΪADC �ο�
			adldo = 4�� �ڲ�LDO 2.4V ��ΪADC �ο�
			adldo = 5�� �ڲ�LDO 2.0V ��ΪADC �ο�
���ڲ������� 
��    ע������ͨ������������Ϊģ���
	      ����10��,ȡ�м�˴ε�ƽ��ֵΪ�����������adresult��
**********************************************************/
void ADC_Sample(unsigned char adch,unsigned char adldo)
{
	volatile unsigned int ad_temp;
	
	if(LDOEN^(adldo!=0)) 		//���AD�ο�ΪVDD���ڲ�LDO��������Ҫ��ʱ100US���� 
	{
		ADCON1 = adldo;			//�����,ADֵȡ12λ
		__delay_us(100);		//��ʱ100us 
	}	
	else
		ADCON1 = adldo;			//�����Ҫѡ������ADת��ʱ�ӣ����԰�ADCON1��BIT3��Ϊ1����TADSEL = 1; 
		
	ADCON0 = 0X41 | (adch << 2);	//16��Ƶ�������ƵΪ16M����TADSEL=1�������ѡ16��Ƶ������
	asm("nop");
	asm("nop");
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
	
	if(0 == admax)
	{
		admax = ad_temp;
		admin = ad_temp;
	}
	else if(ad_temp > admax)
		admax = ad_temp;				//AD�������ֵ
	else if(ad_temp < admin)
		admin = ad_temp;				//AD������Сֵ
	
	adsum += ad_temp;
	if(++adtimes >= 10)
	{
		adsum -= admax;
		if(adsum >= admin)	adsum -= admin;
			else	adsum = 0;
		
		adresult = (unsigned int)(adsum >> 3);		//8��ƽ��ֵ��Ϊ���ս��
		
		adsum = 0;
		admin = 0;
		admax = 0;
		adtimes = 0;
	}
}


//ADC���β���
unsigned int ADC_Result(unsigned char adch)
{
	ADCON1 = 0;						//����룬��VDD��AD�ο� 
	__delay_us(20);					//��ʱ20us
	ADCON0 = 0X41 | (adch << 2);	//16��Ƶ
	asm("nop");
	asm("nop");
	asm("nop");
	asm("nop");
	GODONE = 1;						//��ʼת��

	unsigned char i = 0;
	while(GODONE)
	{
		if(0 == (--i))
			return 0;				//ת����ʱ
	}
	
	unsigned int ad_result ;
	ad_result=(ADRESH<<4)+(ADRESL>>4);	//����12λADֵ;
	return ad_result;
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

/***********************************************************
main������
***********************************************************/
void main()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;				//��ֹ�ж�
	OSCCON = 0X70;			//������Ϊ8M
	TRISB = 0;
	DelayXms(2);
	while(1)
	{
		asm("clrwdt");
	
#ifdef _DEBUG		
		unsigned int result;
		
		result = ADC_Result(15);		//�����ڲ���׼Դ1.2V
		if (result > 666) RB4 = 0;		//��Դ��ѹС��3V
			else RB4 =1;
		
		//������ad�ο���ѹ��VDDתΪ�ڲ���׼Դ��������ʱ100uS���ϲſ��Լ��
		//������ad�ο���ѹ���ڲ���׼ԴתΪVDD��������ʱ20uS����
	
		ANS13 = 1;		//RB5ѡ��ģ������
		TRISB5 = 1;		//RB5��Ϊ����
		ADC_Sample(13,5);
		
#endif
	}
}
