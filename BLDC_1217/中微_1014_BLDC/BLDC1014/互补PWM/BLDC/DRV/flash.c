
#include "flash.h"
xdata u8 Flash_Check = 0;

void FlashUnlock()
{
	MLOCK = 0xAA;	
}

void FlashLock()
{
	MLOCK = 0x00;	
}

void FlashWrite(u16 Addr,u16 Data)
{
	MDATA = Data;
	MADRL = Addr;
	MADRH = Addr>>8;
	
    EA = 0;
	_nop_();
	MCTRL = 0x10 | 0x08 | 0x01;	//xx00 1001选择数据区 写操作 启动操作
	_nop_();
	_nop_();
	_nop_();
	_nop_();
	_nop_();
	_nop_();
	_nop_();
	
	while(MCTRL & 0x01);
    EA = 1;
}

u16 FlashRead(u16 Addr)
{
	MADRL = Addr;
	MADRH = Addr>>8;
	
    EA = 0;
	_nop_();
	MCTRL = 0x10 | 0x00 | 0x01;	//xx00 0001选择数据区 读操作 启动操作
	_nop_();
	_nop_();
	_nop_();
	_nop_();
	_nop_();
	_nop_();
	_nop_();
	
	while(MCTRL & 0x01);
    EA = 1;
	
	return (MDATA);
}
	
void FlashErase(u16 Addr)
{

	MADRL = Addr;
	MADRH = Addr>>8;
	
    EA = 0;
	_nop_();
	MCTRL = 0x10 | 0x0C | 0x01;	//xx00 1101选择数据区 擦除操作 启动操作
	_nop_();
	_nop_();
	_nop_();
	_nop_();
	_nop_();
	_nop_();
	_nop_();
	
	while(MCTRL & 0x01);
    EA = 1;	
    
//    for(i = 0 ;i< 256 ;i++)		//连续256 bytes的写等待Flash执行完成
//	{			
//		FlashWrite(0x03FF,0xFF);
//	}
}

void flash_read()
{
	EA = 0;	
	FlashUnlock();
	Flash_Check = 0;
	Flash_Check = FlashRead(0x01);
	if(Flash_Check == 0x05)
	{
		Bat_ChargeFullTimem = FlashRead(0x02);
		Vsp_LevelValueTarget = FlashRead(0x03);
		displogo = FlashRead(0x04);
	}
	else
	{
		FlashErase(0x00);
		FlashWrite(0x01,0x05);
		FlashWrite(0x02,0);
		FlashWrite(0x03,0);
		FlashWrite(0x04,0);
		FlashWrite(0x05,0);
	}
	FlashLock();
	EA = 1;	
}

void flash_write()
{
	EA = 0;
	FlashUnlock();
	FlashErase(0x00);
	FlashWrite(0x01,0x05);
	FlashWrite(0x02,Bat_ChargeFullTimem);
	FlashWrite(0x03,Vsp_LevelValueTarget);
	FlashWrite(0x04,displogo);
	FlashWrite(0x05,displogo);
	FlashLock();
	EA = 1;
}