/*-------------------------------------------

程序名称：读写程序EEPROM/读程序存储器演示
版本：V1.0
日期：2020.06.20 

*本程序由 中微半导体 &应用支持部& 编写整理
*公司网址 www.mcu.com.cn
*技术支持QQ 3001082102  罗工
            3001030138	莫工
-------------------------------------------*/

#include <cms.h>


//选择读写程序EEPROM/读程序存储器
#define Data_EEP
//#define Flash_EEP


unsigned char Memory_Write(unsigned int Addr,unsigned char Value);//使用程序EE时，可将数据类型改为char型
unsigned int Memory_Read(unsigned int Addr);

volatile unsigned int t;
volatile unsigned int templ;

void main()
{
	asm("nop");
	asm("clrwdt");

#ifdef Data_EEP	//程序EEPROM操作
	templ = 10;//错误计数，用户可自定义
	do{
		asm("clrwdt");
		asm("clrwdt");
	}while((0 == Memory_Write(0x0000,0x5a)) && (templ--));//调用写函数：地址0x00处写入数据0x5a	
	//写操作完成或错误计数超时则退出			
#endif
	while(1)
	{
		asm("clrwdt");
		t = Memory_Read(0x0000);	//调用读函数：读取0x00地址处的EEPROM数据/ROM数据
	}
}


/***********************************************
函数名称：Memory_Write
函数功能：写数据/程序寄存器
入口参数：Addr - 写入地址
          Value - 写入数值
出口参数：返回值 0 - 写操作错误 1 - 写完毕
备注：
1.写闪存程序空间，执行完写操作指令后，处理器会使内部操作暂停5ms（典型值）时间，时间非固定精准。所以写时效性较高的程序时，需要特别注意处理好时间。
2.写程序EE过程中需要暂时关闭中断，以保证写EE时序中的写55H和写AAH能够连续进行，否则将有可能写错，并且写EE的可靠工作电压范围为3V以上。
************************************************/
unsigned char Memory_Write(unsigned int Addr,unsigned char Value)
{
	volatile unsigned char i = 0;
										//将要写入的地址放入EEADDR寄存器
	EEADR = Addr;		
	EEDAT= Value;						//将要写入的数据给EEPROM的数据寄存器
	EEPGD = 0;							//访问数据存储器

	asm("clrwdt");

	WREN = 1;								//允许写周期
	
	GIE = 0;								//关闭中断
	GIE = 0;
	GIE = 0;
	while(GIE)
	{
		GIE = 0;							//确保中断已关闭
		if(0 == --i)
		{
			//注：程序使用了中断需执行GIE = 1，否则需屏蔽此条语句									
			GIE = 1;						//总中断GIE置1
			return 0;
		}
	}
	
	EECON2 = 0x55;							//给EECON2写入0x55
	EECON2 = 0xaa;							//给EECON2写入0xaa
	WR = 1;									//启动写周期
	asm("nop");
	asm("nop");
	asm("clrwdt");
	WREN = 0;								//禁止写入
	//注：程序使用了中断需执行GIE = 1，否则需屏蔽此条语句									
	GIE = 1;							//总中断GIE置1										

	if(WRERR)	return 0;				//写操作错误							
	else		return 1;				//写完毕
}


/***********************************************
函数名称：Memory_Read
函数功能：读数据/程序寄存器
入口参数：Addr - 读取地址
出口参数：返回读取地址相应数值
备注：
1.程序EEPROM最多可读写8位数据，程序存储器最多可读16位数据，操作时请注意两者的差异。
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
	
	#ifdef Data_EEP							
		return (EEDAT);
	#else ifdef Flash_EEP
		return ((EEDATH << 8) | EEDAT);
	#endif
}
