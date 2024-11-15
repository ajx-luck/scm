/********************************
//运放初始化模式参考程序
两种方案：1.程序在上电复位的时候会自动初始化运放调节位
2：读取EE30，31地址里面的数据，这种模式不能将30，32地址当作通用EE使用
***************************************/

#include <sc.h>           		//调用单片机的头文件

void Init_System();

volatile unsigned char rec_eedat,rec_eedatbak;
	
void main(void)            		//主函数,单片机开机后就是从这个函数开始运行
{
	
	Init_System();
	/*******读取EE数据作为修调值************
	EEADR = 30;				//芯片测试时已将运放的调零值放入数据EE中，OPA0存储于30地址
	EEPGD = 0;
	RD = 1;
	asm("nop");
	asm("nop");
	rec_eedat = EEDAT;
	rec_eedatbak = ~EEDATH;
	if (rec_eedat == rec_eedatbak)		//EE的1个字节16位，高8位和低8位为取反值
		OPA0ADJ = EEDAT;
	else
		OPA0ADJ = 0x08;		//如果读取EE数据不对，默认取中间值
	
	EEADR = 31;				//芯片测试时已将运放的调零值放入数据EE中，OPA1存储于31地址
	EEPGD = 0;
	RD = 1;
	asm("nop");
	asm("nop");
	rec_eedat = EEDAT;
	rec_eedatbak = ~EEDATH;
	if (rec_eedat == rec_eedatbak)		//EE的1个字节16位，高8位和低8位为取反值
		OPA1ADJ = EEDAT;
	else
		OPA1ADJ = 0x08;		//如果读取EE数据不对，默认取中间值
	
	
	EECON1 = 0;
	********************************/
	
	OPA0COFM = 0;			//OPA0工作于正常模式
	OPA1COFM = 0;			//OPA1工作于正常模式
							//不操作OPAXADJ，默认使用
							
							
	/********************************************************************
		Bit7 OPA0EN: OPA0使能位； 
			1= 使能OPA0 
			0= 关闭OPA0 
		Bit6 OPA0OEN: OPA0输出使能 
			1= OPA0输出接至I/O口(OPA0O管脚) 
			0= OPA0输出不接至I/O口 
		Bit5 CMP0MODE: 比较器模式选择  
			1= 比较器模式  
			0= 运放模式 
		Bit4 OPA0_ADC: ADC通道使能 
			1= OPA0的输出接至ADC14通道 
			0= OPA0的输出不接至ADC14通道 
		Bit3~Bit1 未用 
		Bit0 OPA0FT: 运放输出内部滤波选择 
			1= OPA0输出内部接滤波电路 
			0= OPA0输出内部不接滤波电路
	**************************************************************************/
	OPA0CON = 0B11010001;	//OPA0使能，，输出接到IO和AN14，接内部滤波
	OPA1CON = 0B11000000;	//OPA1使能，，输出接到IO，只能有一组运放输出接AN14，不接内部滤波
    while(1)					//死循环,单片机初始化后,将一直运行这个死循环
    {
			asm("clrwdt");
			EECON1 = 0;
    }
}


/***********************************************
函数名称：Init_System
函数功能：系统初始化
入口参数：无
出口参数：无
备注：
************************************************/
void Init_System()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;					//系统初始化
	OSCCON = 0X72;				//配置振荡为8M,开WDT
	OPTION_REG = 0;
	
	TRISA = 0B00111111;			//初始化IO状态，做运放则该口线需做输入
	TRISB = 0B00000000;

//	PORTA = 0B00000000;
	PORTB = 0B00000000;			//初始化输出

}