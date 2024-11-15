/**********************************************************

**********************************************************/

#include <sc.h>



volatile unsigned int   result,result1,result2;


void DelayXms(unsigned char x);


/***********************************************************
函数名称：DelayXms
函数功能：毫秒级非精准延时
入口参数：x - 延时时间
出口参数：
备    注：
***********************************************************/
void DelayXms(unsigned char x)
{
	unsigned char i,j;
	for(i=x;i>0;i--)
		for(j=153;j>0;j--);
}

/***********************************************************
main主函数
***********************************************************/

#define  SLAVE_ADRSS   0xa0

 
void Init_System();

/******************************************
  Adress  从机地址
  data    待发数据
********************************************/
void Write_IIC(unsigned char Adress,unsigned char data)
{
	SEN =1;  //起始信号
	while(IICIF==0);  //等待发送完成
	IICIF = 0;
	IICBUF = Adress;   //发送地址
	while(IICIF==0);
	IICIF = 0;
	IICBUF = data;    //发送数据
	while(IICIF==0);
	IICIF = 0;
	PEN =1;           //发送停止
    while(IICIF==0);
	IICIF = 0;
	
}

/******************************************
   Adress   从机地址
   data     待发数据
   返回 ReadData
  
********************************************/
unsigned char  Read_IIC(unsigned char Adress,unsigned char data)
{
	unsigned char ReadData;

	SEN =1;  //起始信号
	while(IICIF==0); //等待发送完成
	IICIF = 0;
	IICBUF = Adress;  
	while(IICIF==0);

	IICIF = 0;
	IICBUF = data;
	while(IICIF==0);
	IICIF = 0;
	
	RSEN =1;  //重复起始信号
	while(IICIF==0);

	IICIF = 0;
	
	IICBUF = Adress+1;  //发送地址+1 读取数据
	while(IICIF==0);
	IICIF = 0;    
	RCEN = 1;           //开始接收数据
	while(IICIF==0);
	IICIF = 0;
	ReadData = IICBUF;  //读取接收的数据
	
	PEN =1;                //发送停止
    while(IICIF==0); 
	IICIF = 0;
	
	return ReadData;
	

}
volatile unsigned char IICReadData;
void main()
{
	Init_System();
	TRISA |=  0b00000011;  //RA0 RA1输入态，做IIC 引脚
	IICCON =  0B00100000;  // IIC 使能  主动模式
    IICADD = 159;          // 100K 频率 = 16M /159+1
	
	
    Write_IIC(0xa0,5);
    Write_IIC(0xa0,5);
	while(1)
	{
         DelayXms(200);
		 Write_IIC(0xa0,0x80);
			
		 IICReadData =  Read_IIC(0xa0,0x80);
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
	OSCCON = 0X70;				//配置振荡为8M,关闭WDT
	OPTION_REG = 0;
	
    WPUA  = 0B00000000;			//初始化上拉
    WPUB  = 0B00001000;			
  
 
	TRISA = 0B00000000;			//初始化IO状态
	TRISB = 0B00001000;

	PORTA = 0B00000000;
	PORTB = 0B00000000;			//初始化输出

}

/***********************************************
函数名称：PB_Isr
函数功能：PB电平变化中断服务
入口参数：无
出口参数：无
备注：
************************************************/
void interrupt PB_Isr()
{
	if(RBIF)
	{
		RBIF = 0;			//清中断标志
		RB6 = ~RB6;
		//Init_System();
	}
}