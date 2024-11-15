#include "Eeprom.h"
#include <cms.h>
/*******************************************************
					�޸�˵����
�޸����ڣ�
2016/8/24

********************************************************/
/**********************************************************************
***********************************************************************
�������ܣ�EEPROMдһ������
��ڲ�����wdataҪд������
		  waddrҪд�ĵ�ַ
�������ݣ�0 дEE����
		  1 дEE��ȷ
**********************************************************************/
unsigned char Set_jiyi_wr(unsigned char wdata,unsigned char waddr)
{
	unsigned char wrtemp;
	unsigned char wredata;
	unsigned int wrdelay;
	/******************************************************************/
	asm("clrwdt");
	EEADR = waddr;
	asm("NOP");
	EEDAT = wdata;
	asm("NOP");
	EEPGD = 0;
	WREN = 1;
	wrtemp = 0;
	if(1 == GIE)	wrtemp = 1;
	GIE = 0;
	while(GIE) GIE = 0;						//ȷ���ж��ѹر�
	EECON2 = 0x55;
	EECON2 = 0xaa;
	WR = 1;
	if(1 == wrtemp)	GIE = 1;
	wrdelay = 5000;
	do{
		asm("clrwdt");
		if(0 == WR)
		{
			wrtemp = 1;
			break;
		}
	}while(--wrdelay);
	asm("NOP");
	WREN = 0;
	if(1 == WRERR)
	{
		return 0;
	}
	else
	{
		wredata = Set_jiyi_re(waddr);				//д��֮��У��
		if(wredata != wdata)
		{
			wrtemp = 0;
		}
	}
	return	wrtemp;
}
/***********************************************************************
�������ܣ�EEPROM��һ������
��ڲ�����addrҪ���ĵ�ַ
�������ݣ�redata��������
***********************************************************************/
unsigned char	Set_jiyi_re(unsigned char	raddr)
{
	unsigned char	redata;
	/******************************************************************/
	EEADR = raddr;
	asm("NOP");
	EEPGD = 0;
	asm("NOP");
	RD = 1;
	asm("NOP");
	asm("NOP");
	asm("NOP");
	redata = EEDAT;
	return	redata;
}
/**********************************************************************/


















