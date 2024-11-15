/*-------------------------------------------

�������ƣ���д����EEPROM/������洢����ʾ
�汾��V1.0
���ڣ�2020.06.20 

*�������� ��΢�뵼�� &Ӧ��֧�ֲ�& ��д����
*��˾��ַ www.mcu.com.cn
*����֧��QQ 3001082102  �޹�
            3001030138	Ī��
-------------------------------------------*/

#include <cms.h>


//ѡ���д����EEPROM/������洢��
#define Data_EEP
//#define Flash_EEP


unsigned char Memory_Write(unsigned int Addr,unsigned char Value);//ʹ�ó���EEʱ���ɽ��������͸�Ϊchar��
unsigned int Memory_Read(unsigned int Addr);

volatile unsigned int t;
volatile unsigned int templ;

void main()
{
	asm("nop");
	asm("clrwdt");

#ifdef Data_EEP	//����EEPROM����
	templ = 10;//����������û����Զ���
	do{
		asm("clrwdt");
		asm("clrwdt");
	}while((0 == Memory_Write(0x0000,0x5a)) && (templ--));//����д��������ַ0x00��д������0x5a	
	//д������ɻ���������ʱ���˳�			
#endif
	while(1)
	{
		asm("clrwdt");
		t = Memory_Read(0x0000);	//���ö���������ȡ0x00��ַ����EEPROM����/ROM����
	}
}


/***********************************************
�������ƣ�Memory_Write
�������ܣ�д����/����Ĵ���
��ڲ�����Addr - д���ַ
          Value - д����ֵ
���ڲ���������ֵ 0 - д�������� 1 - д���
��ע��
1.д�������ռ䣬ִ����д����ָ��󣬴�������ʹ�ڲ�������ͣ5ms������ֵ��ʱ�䣬ʱ��ǹ̶���׼������дʱЧ�Խϸߵĳ���ʱ����Ҫ�ر�ע�⴦���ʱ�䡣
2.д����EE��������Ҫ��ʱ�ر��жϣ��Ա�֤дEEʱ���е�д55H��дAAH�ܹ��������У������п���д������дEE�Ŀɿ�������ѹ��ΧΪ3V���ϡ�
************************************************/
unsigned char Memory_Write(unsigned int Addr,unsigned char Value)
{
	volatile unsigned char i = 0;
										//��Ҫд��ĵ�ַ����EEADDR�Ĵ���
	EEADR = Addr;		
	EEDAT= Value;						//��Ҫд������ݸ�EEPROM�����ݼĴ���
	EEPGD = 0;							//�������ݴ洢��

	asm("clrwdt");

	WREN = 1;								//����д����
	
	GIE = 0;								//�ر��ж�
	GIE = 0;
	GIE = 0;
	while(GIE)
	{
		GIE = 0;							//ȷ���ж��ѹر�
		if(0 == --i)
		{
			//ע������ʹ�����ж���ִ��GIE = 1�����������δ������									
			GIE = 1;						//���ж�GIE��1
			return 0;
		}
	}
	
	EECON2 = 0x55;							//��EECON2д��0x55
	EECON2 = 0xaa;							//��EECON2д��0xaa
	WR = 1;									//����д����
	asm("nop");
	asm("nop");
	asm("clrwdt");
	WREN = 0;								//��ֹд��
	//ע������ʹ�����ж���ִ��GIE = 1�����������δ������									
	GIE = 1;							//���ж�GIE��1										

	if(WRERR)	return 0;				//д��������							
	else		return 1;				//д���
}


/***********************************************
�������ƣ�Memory_Read
�������ܣ�������/����Ĵ���
��ڲ�����Addr - ��ȡ��ַ
���ڲ��������ض�ȡ��ַ��Ӧ��ֵ
��ע��
1.����EEPROM���ɶ�д8λ���ݣ�����洢�����ɶ�16λ���ݣ�����ʱ��ע�����ߵĲ��졣
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
	
	#ifdef Data_EEP							
		return (EEDAT);
	#else ifdef Flash_EEP
		return ((EEDATH << 8) | EEDAT);
	#endif
}
