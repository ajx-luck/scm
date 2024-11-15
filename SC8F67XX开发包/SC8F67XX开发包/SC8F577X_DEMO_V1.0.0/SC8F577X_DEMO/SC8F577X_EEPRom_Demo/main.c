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

	Memory_Write(0x08,120);			//调用写函数
	t = Memory_Read(0x08);				//调用读函数
	if ( t!= 0x96 ) RA0 = 1;
		else RA0 = 0 ;
	while(1)
	{
		asm("clrwdt");
	}
}


/***********************************************
函数名称：Memory_Write
函数功能：写数据/程序寄存器
入口参数：Addr - 写入地址
          Value - 写入数值
出口参数：无
备注：
************************************************/
void Memory_Write(unsigned char Addr,unsigned char Value)
{
									//将要写入的地址放入EEADDR寄存器
	EEADR = Addr;
	EEPGD = 0;							//访问数据存储器
	
									//将要写入的数据给EEPROM的数据寄存器
	EEDAT = Value;
	
	WREN = 1;								//允许写周期
	GIE = 0;								//关闭中断
	
	while(GIE) GIE = 0;						//确保中断已关闭
	
	asm("clrwdt");					//写入EE时必须清WDT，防止WDT溢出导致芯片数据写错甚至不能正常工作
	
	EECON2 = 0x55;							//给EECON2写入0x55
	EECON2 = 0xaa;							//给EECON2写入0xaa
	WR = 1;									//启动写周期
	asm("nop");
	asm("nop");
	WREN = 0;								//禁止写入
	GIE = 1;								//开启中断							
	
}


/***********************************************
函数名称：Memory_Read
函数功能：读数据/程序寄存器
入口参数：Addr - 读取地址
出口参数：返回读取地址相应数值
备注：
************************************************/
unsigned int Memory_Read(unsigned char Addr)
{
									//将要写入的地址放入EEADDR寄存器
		EEADR = Addr;
		EEPGD = 0;							//访问数据存储器
	
	RD=1;									//允许读操作
	asm("nop");
	asm("nop");
	
	return  EEDAT;
}
