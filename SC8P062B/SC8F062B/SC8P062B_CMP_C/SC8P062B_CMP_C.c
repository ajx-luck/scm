/*-------------------------------------------

�������ƣ�IO����ʾ������
���ڰ汾��2023/09/14 <V1.0>

      
*�������� &Ӧ��֧�ֲ�& ��д����
-------------------------------------------*/


#include <sc.h>						//оƬͷ�ļ�������ݹ���ѡ���Զ�Ѱ�Ҷ�Ӧ�ͺ�ͷ�ļ�


void main(void)
{
	asm("nop");
	asm("clrwdt");
	
	OSCCON = 0x72;					//16MHZ,�ڲ���������ϵͳʱ��,CONFIG�ر�WDTʱ����������WDT
	OPTION_REG = 0x09;				//����WDTʱ�䣬09Ϊ2��Ƶ����16*2=32ms���
	
	
	WPUB = 0B00000000;
	WPDB = 0B00000000;
	ODCONB = 0B00000000;			//����PORTB������
	IOCB = 0B00000000;
		
	TRISB = 0B00000000;
	
	/***************************************************
	�Ƚ������ƼĴ��� CMPCON0(0FH)
	Bit7  CMPEN:  CMPʹ��λ
		1=  ʹ��CMP
		0=  ��ֹCMP
	Bit6  CMPPS:  CMP��������ѡ��λ
		1=  CMP+�˿ڵ�ѹ
		0=  VDD�����ڲ������ѹ��ĵ�ѹ
	Bit5~Bit3  CMPNS<2:0>:  CMP��������ѡ��λ
		000=  CMP0- �˿ڵ�ѹ
		001=  CMP1- �˿ڵ�ѹ
		010=  CMP2-�˿ڵ�ѹ
		011=  CMP3-�˿ڵ�ѹ
		100=  VDD�����ڲ������ѹ��ĵ�ѹ
		101=  BG
		11x=  BG
	Bit2  CMPNV:  CMPO�˿����ȡ������λ
		1=  CMPOUT��CMPO�˿�ȡ�����
		0=  CMPOUT��CMPO�˿��������
	Bit1  CMPOUT:  CMP���λ
	Bit0  CMPOEN:  CMPO�˿����ʹ��λ
		1=  ʹ��CMPO�˿����CMPOUT
		0=  ��ֹCMPO�˿����CMPOUT
	*****************************************************/
	CMPCON0 = 0B00111001;			//���ñȽ�������ΪVDD��ѹ������ΪBG1.2V��ʹ�ܱȽ������
	
	/***************************************
	�Ƚ������ƼĴ��� CMPCON1(10H)
	Bit7  CMPIM:  CMP�жϴ�������ѡ��
		1=  CMP������½��ش����ж�
		0=  CMP����������ش����ж�
	Bit6  AN_EN:  ģ��ѡ��λ��ѡ��CMP+��CMPX-��ģ������ֹ���
		1=  ģ���
		0=  ���ֿ�
	Bit5  RBIAS_H:  �����÷��ο��Ƚ�����ͼ
	Bit4  RBIAS_L:  �����÷��ο��Ƚ�����ͼ
	Bit3~Bit0  LVDS<3:0>:  �ڲ������ѹ��ѡ��λ
	****************************************************/
	
	CMPCON1 = 0B10010111;			//	����VDD��ѹ����3.6V�жϣ���Ϊ�½��ش���
									//Bit5~0��Ӧ�ĵ�ѹֵ�ɲο�оƬ˵����
	
	INTCON = 0XC0;					//�������жϼ������ж�
	PIE1 = 0X20;					//�����Ƚ����ж�
	CMPEN = 1;						//�Ƚ���ʹ��
	CMPIF =0;						//��Ƚ����жϱ�־λ
	while(1)
	{
		asm("clrwdt");
		
						
	}
}

/***********************************************
�������ƣ�PB_Isr
�������ܣ�INT�жϷ���
��ڲ�������
���ڲ�������
��ע��
************************************************/
void interrupt CMP_Isr()
{
	if(CMPIF)
	{
		CMPIF = 0;			//���жϱ�־
		PORTB ^= 0X10;
		
	}
}