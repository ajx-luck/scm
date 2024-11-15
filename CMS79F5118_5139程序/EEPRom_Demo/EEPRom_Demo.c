/*-------------------------------------------

程序名称：数据EEPROM程序存储器读写程序
日期版本：2019/12/27 <V1.0>

备注：在读写数据EE时，若写完以后立刻进行读操作，
      应先等待写操作（WR）完成。

*本程序由 中微半导体有限公司 &应用支持部& 编写整理
*公司网址 www.mcu.com.cn
*技术支持QQ 3001082102  罗工
            3001085706	陈工
-------------------------------------------*/


#include <cms.h>


//选择读写 程序EEPROM/程序存储器
#define Data_EEP
//#define Flash_EEP


unsigned char Memory_Write(unsigned int Addr,unsigned int Value);//使用程序EE时，可将数据类型改为char型
unsigned int Memory_Read(unsigned int Addr);

volatile unsigned int t;


void main()
{
	asm("nop");
	asm("clrwdt");

	
	Memory_Write(0x0000,0x5a);			//调用写函数
	while(1)
	{
		asm("clrwdt");
		
		if(!WR)
			t = Memory_Read(0x0000);	//调用读函数
	}
}


/***********************************************
函数名称：Memory_Write
函数功能：写数据/程序寄存器
入口参数：Addr - 写入地址
          Value - 写入数值
出口参数：返回值 0 - 写未准备好 1 - 写完毕
备注：
************************************************/
unsigned char Memory_Write(unsigned int Addr,unsigned int Value)
{
	static volatile bit B_GIE_On;
	static volatile unsigned char i = 0;
	
	if(WR)									//写还没有结束直接返回
		return 0;
	
	B_GIE_On = 0;							//记录进来前是否已经开启中断
	if(GIE)
		B_GIE_On = 1;
	
	#ifdef Data_EEP							//将要写入的地址放入EEADDR寄存器
		EEADR = Addr;
		EEPGD = 0;							//访问数据存储器
	#else ifdef Flash_EEP
		EEADR=(Addr & 0xff);				
		EEADRH=(Addr >> 8);
		EEPGD = 1;							//访问程序存储器
	#endif
	
	EEDATH=(Value >> 8);					//将要写入的数据给EEPROM的数据寄存器
	EEDAT=(Value & 0xff);
	
	WREN = 1;								//允许写周期
	GIE = 0;								//关闭中断
	
	while(GIE)
	{
		GIE = 0;							//确保中断已关闭
		if(0 == --i)
			return 0;
	}
	
	EECON2 = 0x55;							//给EECON2写入0x55
	EECON2 = 0xaa;							//给EECON2写入0xaa
	WR = 1;									//启动写周期
	asm("nop");
	asm("nop");
	
	if(B_GIE_On)							//若原来已开启中断的就开启中断	
		GIE = 1;													

	WREN = 0;								//禁止写入
	return 1;
}


/***********************************************
函数名称：Memory_Read
函数功能：读数据/程序寄存器
入口参数：Addr - 读取地址
出口参数：返回读取地址相应数值
备注：
************************************************/
unsigned int Memory_Read(unsigned int Addr)
{
	#ifdef Data_EEP							//将要写入的地址放入EEADDR寄存器
		EEADR = Addr;
		EEPGD = 0;							//访问数据存储器
	#else ifdef Flash_EEP
		EEADR=(Addr & 0xff);				
		EEADRH=(Addr >> 8);
		EEPGD = 1;							//访问程序存储器
	#endif

	RD=1;									//允许读操作
	asm("nop");
	asm("nop");
	
	return ((EEDATH << 8) | EEDAT);
}
