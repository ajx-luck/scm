/*-------------------------------------------

程序名称：AD转换程序
日期版本：2019/12/27 <V1.1>

备注：直接调用AD_Testing函数检测AD值

*本程序由 中微半导体有限公司 &应用支持部& 编写整理
*公司网址 www.mcu.com.cn
*技术支持QQ 3001082102  罗工
            3001085706	陈工
-------------------------------------------*/

#include <cms.h>

void AD_Testing(unsigned char ad_fd,unsigned char ad_ch,unsigned char ad_lr);


//-------------------------------------
//示例
volatile unsigned int AD_Result;
void main()
{
	asm("nop");
	asm("clrwdt");
	
	TRISA = 0B00000010;
	
	while(1)
	{
		AD_Testing(1,1,1);			//16分频，AN1通道，右对齐
		asm("clrwdt");
	}
}



/************************************************************
函数名称：AD_Testing()
函数功能：AD采样函数
入口参数：ad_fd - 分频 00Fosc/8; 01Fosc/16; 10Fosc/32; 11FRC
		  ad_ch - AD通道选择（格式：0B00000000~0B00001111或其对应的其他进制数值）
		  ad_lr - 左/右对齐，输入0或1，0为左对齐，1为右对齐
		  
出口参数：AdResult - AD结果
备    注：采样AD值,采样10次,去掉最大及最小求算术平均值
************************************************************/
void AD_Testing(unsigned char ad_fd,unsigned char ad_ch,unsigned char ad_lr)
{
	static volatile unsigned char adtimes;	
	static volatile unsigned int admin,admax,adsum;
	volatile unsigned int data;
	volatile unsigned char i = 0;
	
	
	if(!ad_lr)
		ADCON1 = 0;						//左对齐,出12位
	else
		ADCON1 = 0x80;					//右对齐,出10位
	
	ADCON0 = 0;
	ADCON0 |= (unsigned char)(ad_fd << 6);//设置分频
	ADCON0 |= (unsigned char)(ad_ch << 2);//设置通道
	ADCON0 |= 0x01;						//使能ADC		
	
	asm("nop");
	asm("nop");
	GODONE = 1;							//开始转换
	
	while(GODONE)
	{
		asm("nop");
		asm("nop");
		if(0 == (--i))					//ad等待限时，防止拔插电后出现死循环
			return;
	}
 
	if(!ad_lr)							//左对齐
	{
		data = (unsigned int)(ADRESH<<4);
		data |= (unsigned int)(ADRESL>>4);
	}
	else								//右对齐
	{
		data = (unsigned int)(ADRESH<<8);
		data |= (unsigned int)ADRESL;			
	}         

	if(0 == adtimes)
	{
		admax = data;
		admin = data;	
	}
	else if(data > admax)
	{
		admax = data;  				//AD采样最大值
	}
	else if(data < admin)
	{
		admin = data;  				//AD采样最小值
	}
	
	adsum += data;
	if(++adtimes >= 10)
	{
		adsum -= admax;
		adsum -= admin;			
					
		AD_Result = adsum >> 3;		//8次平均值作为最终结果
			
		adsum = 0;
		admin = 0;
		admax = 0;
		adtimes = 0;		  
	}
}

