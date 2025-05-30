/**********************************************************
   波特率9600
   8位数据格式，无校验
   接收10个字节数字，然后发送出来
**********************************************************/

#include <sc.h>

volatile unsigned int   result,result1,result2;

unsigned char RxTable[10];
bit RXOK_f;
unsigned int  Read_ADC(unsigned char  ADCchannel,unsigned char  ADCLDORef);
void DelayXms(unsigned char x);
void Init_System();

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
void main()
{
	DelayXms(2);
	unsigned char i =0 ;
	Init_System();
	
	TXREG =0x55;

	while(TRMT==0);
	TXREG =0xaa;

	while(TRMT==0);
	
	while(1)
	{
 
		
		if(RXOK_f==1)
		{
			for(i=0;i<10;i++)
			{
					
				TXREG =RxTable[i];

				while(TRMT==0);
			}

			RXOK_f = 0;
		}

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
	OSCCON = 0X70;				//配置振荡为8M,
	OPTION_REG = 0;
	
    WPUA  = 0B00000000;			//初始化上拉
    WPUB  = 0B00001000;			
  
 
	TRISA = 0B00000000;			//初始化IO状态
	TRISB = 0B00011000;

	PORTA = 0B00000000;
	PORTB = 0B00000000;			//初始化输出
	
	/**************   TXSTA   **************************************
		Bit7 CSRC: 时钟源选择位；  异步模式: 任意值；  同步模式:  
			1=主控模式（由内部BRG产生时钟信号）；  
			0=从动模式（由外部时钟源产生时钟）。 
		Bit6 TX9EN: 9位发送使能位；  
			1= 选择9位发送；  
			0= 选择8位发送。 
		Bit5 TXEN: 发送使能位(1)；  
			1= 使能发送；  
			0= 禁止发送。 
		Bit4 SYNC: USART模式选择位；  
			1= 同步模式；  
			0= 异步模式。 
		Bit3 SCKP: 同步时钟极性选择位。  
			异步模式:  
				1=将数据字符的电平取反后发送到TX/CK引脚；  
				0=直接将数据字符发送到TX/CK引脚。  
			同步模式:  
				0=在时钟上升沿传输数据；  
				1=在时钟下降沿传输数据。 
		Bit2 STOPBIT: 停止位选择（仅对异步发送有效），当通过判断TRMT=1来送数据时，此位需写0。  
			1= 1位停止位；  
			0= 2位停止位。 
		Bit1 TRMT: 发送移位寄存器状态位；  
			1= TSR为空；  
			0= TSR为满。 
		Bit0 TX9D: 发送数据的第9位。 可以是地址/数据位或奇偶校验位
	***********************************************************************/
	TXSTA =  0B10100000;		//主控模式，8位数据，异步模式，
	
	/*****************  RCSTA   ***********************************************
		Bit7 SPEN: 串行端口使能位；  
			1= 使能串行端口（将RX/DT和TX/CK引脚配置为串行端口引脚）； 
			0= 禁止串行端口（保持在复位状态）。 
		Bit6 RX9EN: 9位接收使能位；  
			1= 选择9位接收；  
			0= 选择8位接收。 
		Bit5 SREN: 单字节接收使能位。  
			异步模式: 任意值。  
			同步主控模式:  
				1=使能单字节接收；  
				0=禁止单字节接收。 接收完成后清零该位。  
			同步从动模式: 任意值。 
		Bit4 CREN: 连续接收使能位。  
			异步模式:  
				1=使能接收；  
				0=禁止接收。  
			同步模式:  
				1=使能连续接收直到清零CREN使能位（CREN覆盖SREN）；  
				0=禁止连续接收。 
		Bit3 RCIDL: 接收空闲标志位。  
			异步模式: 
				1=接收器空闲；  
				0=已接收到起始位，接收器正在接收数据。  
			同步模式: 任意值。
		Bit2 FERR: 帧错误位。  
			1= 帧错误（可通过读RCREG寄存器更新并接收下一个有效字节）；  
			0= 没有帧错误。 
		Bit1 OERR: 溢出错误位。  
			1= 溢出错误（可通过清零CREN位清零）；  
			0= 没有溢出错误。 
		Bit0 RX9D: 接收到数据的第9位。 此位可以是地址/数据位或奇偶校验位，必须由用户固件计算得到
	*********************************************************************************/
	
	RCSTA =  0B10010000;		//使能串口，使能接收
	SPBRG =  51;        		 //波特率9600，目标波特率=FOSC/16([SPBRG]+1)
	
	PEIE =1;
	RCIE =1;
	GIE =1;

}

/***********************************************
函数名称：UART_Isr
函数功能：UART中断服务
入口参数：无
出口参数：无
备注：
************************************************/
void interrupt UART_Isr()
{
	static unsigned char RxNum=0,TEMP;
	
	if(RCIF==1)
	{
		RCIF = 0;
	    
		if(RXOK_f==0)	
		{
			RxTable[RxNum] = RCREG;
			RxNum++;
			if(RxNum > 9)
			{
				RxNum =0;
				RXOK_f =1;
			}
		}
		else
		TEMP =  RCREG;
		
	}
}