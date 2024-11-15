/**********************************************************

**********************************************************/

#include <sc.h>



void Memory_Write(unsigned char Addr,unsigned char Value);
unsigned int Memory_Read(unsigned char Addr);

volatile unsigned int t;


void main()
{
	asm("nop");
	asm("clrwdt");
	TRISA = 0;

	Memory_Write(0x08,120);			//����д����
	t = Memory_Read(0x08);				//���ö�����
	if ( t!= 0x96 ) RA0 = 1;
		else RA0 = 0 ;
	while(1)
	{
		asm("clrwdt");
	}
}


/***********************************************
�������ƣ�Memory_Write
�������ܣ�д����/����Ĵ���
��ڲ�����Addr - д���ַ
          Value - д����ֵ
���ڲ�������
��ע��
************************************************/
void Memory_Write(unsigned char Addr,unsigned char Value)
{
									//��Ҫд��ĵ�ַ����EEADDR�Ĵ���
	EEADR = Addr;
	EEPGD = 0;							//�������ݴ洢��
	
									//��Ҫд������ݸ�EEPROM�����ݼĴ���
	EEDAT = Value;
	
	WREN = 1;								//����д����
	GIE = 0;								//�ر��ж�
	
	while(GIE) GIE = 0;						//ȷ���ж��ѹر�
	
	asm("clrwdt");					//д��EEʱ������WDT����ֹWDT�������оƬ����д������������������
	
	EECON2 = 0x55;							//��EECON2д��0x55
	EECON2 = 0xaa;							//��EECON2д��0xaa
	WR = 1;									//����д����
	asm("nop");
	asm("nop");
	WREN = 0;								//��ֹд��
	GIE = 1;								//�����ж�							
	
}


/***********************************************
�������ƣ�Memory_Read
�������ܣ�������/����Ĵ���
��ڲ�����Addr - ��ȡ��ַ
���ڲ��������ض�ȡ��ַ��Ӧ��ֵ
��ע��
************************************************/
unsigned int Memory_Read(unsigned char Addr)
{
									//��Ҫд��ĵ�ַ����EEADDR�Ĵ���
		EEADR = Addr;
		EEPGD = 0;							//�������ݴ洢��
	
	RD=1;									//���������
	asm("nop");
	asm("nop");
	
	return  EEDAT;
}
