#include "Eeprom.h"
#include <cms.h>
/*******************************************************
					修改说明：
修改日期：
2016/8/24

********************************************************/
/**********************************************************************
***********************************************************************
函数功能：EEPROM写一个数据
入口参数：wdata要写的数据
		  waddr要写的地址
返回数据：0 写EE错误
		  1 写EE正确
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
	while(GIE) GIE = 0;						//确保中断已关闭
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
		wredata = Set_jiyi_re(waddr);				//写完之后校验
		if(wredata != wdata)
		{
			wrtemp = 0;
		}
	}
	return	wrtemp;
}
/***********************************************************************
函数功能：EEPROM读一个数据
入口参数：addr要读的地址
返回数据：redata读的数据
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


















