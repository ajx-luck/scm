/*-------------------------------------------

�������ƣ�����EEPROM����洢����д����
���ڰ汾��2019/12/27 <V1.0>

��ע���ڶ�д����EEʱ����д���Ժ����̽��ж�������
      Ӧ�ȵȴ�д������WR����ɡ�

*�������� ��΢�뵼�����޹�˾ &Ӧ��֧�ֲ�& ��д����
*��˾��ַ www.mcu.com.cn
*����֧��QQ 3001082102  �޹�
            3001085706	�¹�
-------------------------------------------*/


#include <cms.h>


//ѡ���д ����EEPROM/����洢��
#define Data_EEP
//#define Flash_EEP


unsigned char Memory_Write(unsigned int Addr,unsigned int Value);//ʹ�ó���EEʱ���ɽ��������͸�Ϊchar��
unsigned int Memory_Read(unsigned int Addr);

volatile unsigned int t;


void main()
{
	asm("nop");
	asm("clrwdt");

	
	Memory_Write(0x0000,0x5a);			//����д����
	while(1)
	{
		asm("clrwdt");
		
		if(!WR)
			t = Memory_Read(0x0000);	//���ö�����
	}
}


/***********************************************
�������ƣ�Memory_Write
�������ܣ�д����/����Ĵ���
��ڲ�����Addr - д���ַ
          Value - д����ֵ
���ڲ���������ֵ 0 - дδ׼���� 1 - д���
��ע��
************************************************/
unsigned char Memory_Write(unsigned int Addr,unsigned int Value)
{
	static volatile bit B_GIE_On;
	static volatile unsigned char i = 0;
	
	if(WR)									//д��û�н���ֱ�ӷ���
		return 0;
	
	B_GIE_On = 0;							//��¼����ǰ�Ƿ��Ѿ������ж�
	if(GIE)
		B_GIE_On = 1;
	
	#ifdef Data_EEP							//��Ҫд��ĵ�ַ����EEADDR�Ĵ���
		EEADR = Addr;
		EEPGD = 0;							//�������ݴ洢��
	#else ifdef Flash_EEP
		EEADR=(Addr & 0xff);				
		EEADRH=(Addr >> 8);
		EEPGD = 1;							//���ʳ���洢��
	#endif
	
	EEDATH=(Value >> 8);					//��Ҫд������ݸ�EEPROM�����ݼĴ���
	EEDAT=(Value & 0xff);
	
	WREN = 1;								//����д����
	GIE = 0;								//�ر��ж�
	
	while(GIE)
	{
		GIE = 0;							//ȷ���ж��ѹر�
		if(0 == --i)
			return 0;
	}
	
	EECON2 = 0x55;							//��EECON2д��0x55
	EECON2 = 0xaa;							//��EECON2д��0xaa
	WR = 1;									//����д����
	asm("nop");
	asm("nop");
	
	if(B_GIE_On)							//��ԭ���ѿ����жϵľͿ����ж�	
		GIE = 1;													

	WREN = 0;								//��ֹд��
	return 1;
}


/***********************************************
�������ƣ�Memory_Read
�������ܣ�������/����Ĵ���
��ڲ�����Addr - ��ȡ��ַ
���ڲ��������ض�ȡ��ַ��Ӧ��ֵ
��ע��
************************************************/
unsigned int Memory_Read(unsigned int Addr)
{
	#ifdef Data_EEP							//��Ҫд��ĵ�ַ����EEADDR�Ĵ���
		EEADR = Addr;
		EEPGD = 0;							//�������ݴ洢��
	#else ifdef Flash_EEP
		EEADR=(Addr & 0xff);				
		EEADRH=(Addr >> 8);
		EEPGD = 1;							//���ʳ���洢��
	#endif

	RD=1;									//���������
	asm("nop");
	asm("nop");
	
	return ((EEDATH << 8) | EEDAT);
}
