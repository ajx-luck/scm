#include "config.h"

xdata u8  DataBuff[DATALENGTH] = 0;

void tm1621_writeCmd(u16 Cmd)
{
	s8 i = 0;
	u16 Data = Cmd;
	
	CS = 0;
	for(i=11;i>=0;i--)
	{
		WR = 0;
		if(Data & (1 << i))                              
			DATA = 1;
		else
			DATA = 0;
		_nop_x;_nop_x;_nop_x;_nop_x;_nop_x;
		WR = 1;
	}
	CS = 1;
}

void tm1621_send()
{
	s8 i = 0;
	s8 k = 0;
	u8 addr = 0; 
	
	CS = 0;
	_nop_x;_nop_x;
	
	// "1"
	WR = 0;
	_nop_x;_nop_x;
	DATA = 1;
	_nop_x;_nop_x;
	WR = 1;
	_nop_x;_nop_x;
	
	// "0"
	WR = 0;
	_nop_x;_nop_x;
	DATA = 0;
	_nop_x;_nop_x;
	WR = 1;
	_nop_x;_nop_x;
	
	// "1"
	WR = 0;
	_nop_x;_nop_x;
	DATA = 1;
	_nop_x;_nop_x;
	WR = 1;
	_nop_x;_nop_x;
	
	addr = STARTADDR;
	for(i=0; i<6; i++)
	{
		WR = 0;
		_nop_x;_nop_x;
		if(addr & 0x20)
			DATA = 1;
		else
			DATA = 0;
		_nop_x;_nop_x;
		WR = 1;
		addr <<= 1;
		_nop_x;_nop_x;
	}
	
	for(i=0; i<DATALENGTH; i++)
	{
		for(k=0; k<4; k++)
		{
			WR = 0;
			_nop_x;_nop_x;
			if(DataBuff[i] & (1<<k))
				DATA = 1;
			else
				DATA = 0;
			_nop_x;_nop_x;
			WR = 1;
			_nop_x;_nop_x;
		}
	}
	CS = 1;
}

void tm1621_init()
{
	u8 ii = 0;
	
	CS = 1;
	WR = 1;
	DATA = 1;
	_nop_x;_nop_x;_nop_x;_nop_x;_nop_x;
	
	tm1621_writeCmd( 0x800 | 0x30 ); 
	tm1621_writeCmd( 0x800 | 0x52 ); 
	tm1621_writeCmd( 0x800 | 0x0A );
 	tm1621_writeCmd( 0x800 | 0x02 );
	
	for(ii=0; ii<DATALENGTH; ii++)
	{
		DataBuff[ii] = 0;
	}
	
	tm1621_send();
	tm1621_writeCmd( 0x800 | 0x06 );
}