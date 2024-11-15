
/*-------------------------------------------
���ܣ�AD������ƽ����ʾ
�汾��V1.0
���ڣ�2020.06.20 

*�������� ��΢�뵼�� &Ӧ��֧�ֲ�& ��д����
*��˾��ַ www.mcu.com.cn
*����֧��QQ 3001082102  �޹�
            3001030138	Ī��
-------------------------------------------*/

#include <cms.h>

void AD_Testing(unsigned char ad_fd,unsigned char ad_ch,unsigned char ad_lr);

//-------------------------------------

volatile unsigned int AD_Result;

void main()
{
	asm("nop");
	asm("clrwdt");
	
	TRISA = 0B00000010;				//AN1(RA1) ��������Ϊ�����
	ANSEL = 0B00000010;				//IO����ʱ��������Ϊģ��ڣ�
									//����������ʱ���ܻ���ɼ���uA�ĵ�������
	
	while(1)
	{
		AD_Testing(1,1,1);			//16��Ƶ��AN1ͨ�����Ҷ���
		asm("clrwdt");
	}
}

/************************************************************
�������ƣ�AD_Testing()
�������ܣ�AD��������
��ڲ�����ad_fd - ��Ƶ 00Fosc/8; 01Fosc/16; 10Fosc/32; 11Frc;
		  ad_ch - ADͨ��ѡ��1~15��15ͨ��Ϊ�ڲ���׼1.2V�̶�����ֵ
		  ad_lr - ��/�Ҷ��룬����0��1��0Ϊ����룬1Ϊ�Ҷ���
		  
���ڲ�����AdResult - AD���
��    ע����VDDΪ�ο�Դ,����10��,ȥ�������С������ƽ��ֵ
************************************************************/
void AD_Testing(unsigned char ad_fd,unsigned char ad_ch,unsigned char ad_lr)
{
	static volatile unsigned char adtimes;	
	static volatile unsigned int admin,admax,adsum;
	volatile unsigned int data;

	volatile unsigned char i = 0;
	
	if(!ad_lr)
		ADCON1 = 0;						//�����,��12λ
	else
		ADCON1 = 0x80;					//�Ҷ���,��10λ
		
	if(ad_ch & 0x10)					//����CHS4����λ��ADCON1�Ĵ�����
		ADCON1 |= 0x40;
	
	ADCON0 = 0;
	ad_ch &= 0x0f;
	ADCON0 |= (unsigned char)(ad_fd << 6);//��ͬ��VDD��ο���ѹ��Ҫ���ú���ķ�Ƶ
	ADCON0 |= (unsigned char)(ad_ch << 2);//����ͨ��
	ADCON0 |= 0x01;						  //ʹ��ADC		
	
	asm("nop");
	asm("nop");
	GODONE = 1;							//��ʼת��
	
	while(GODONE)
	{
		asm("nop");
		asm("nop");
		if((--i) == 0)					//ad�ȴ���ʱ����ֹ������ѭ������Ҫ����ת��ʱ�䲻�ܳ��ڴ�ʱ��
			return;
	}
 
	if(!ad_lr)							//�����
	{
		data =  (unsigned int)(ADRESH<<4);
		data |= (unsigned int)(ADRESL>>4);
	}
	else								//�Ҷ���
	{
		data =  (unsigned int)(ADRESH<<8);
		data |= (unsigned int)ADRESL;			
	}         

	if(adtimes == 0)
	{
		admax = data;
		admin = data;	
	}
	else if(data > admax)
	{
		admax = data;  				//AD�������ֵ
	}
	else if(data < admin)
	{
		admin = data;  				//AD������Сֵ
	}
	
	adsum += data;
	if(++adtimes >= 10)
	{
		adsum -= admax;
		adsum -= admin;			
					
		AD_Result = adsum >> 3;		//8��ƽ��ֵ��Ϊ���ս��
			
		adsum = 0;
		admin = 0;
		admax = 0;
		adtimes = 0;		  
	}
}