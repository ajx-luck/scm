
/*-------------------------------------------
功能：AD采样求平均演示
版本：V1.0
日期：2020.06.20 

*本程序由 中微半导体 &应用支持部& 编写整理
*公司网址 www.mcu.com.cn
*技术支持QQ 3001082102  罗工
            3001030138	莫工
-------------------------------------------*/

#include <cms.h>

void AD_Testing(unsigned char ad_fd,unsigned char ad_ch,unsigned char ad_lr);

//-------------------------------------

volatile unsigned int AD_Result;

void main()
{
	asm("nop");
	asm("clrwdt");
	
	TRISA = 0B00000010;				//AN1(RA1) 引脚设置为输入口
	ANSEL = 0B00000010;				//IO配置时，需配置为模拟口，
									//否则在休眠时可能会造成几个uA的电流增大
	
	while(1)
	{
		AD_Testing(1,1,1);			//16分频，AN1通道，右对齐
		asm("clrwdt");
	}
}

/************************************************************
函数名称：AD_Testing()
函数功能：AD采样函数
入口参数：ad_fd - 分频 00Fosc/8; 01Fosc/16; 10Fosc/32; 11Frc;
		  ad_ch - AD通道选择1~15，15通道为内部基准1.2V固定输入值
		  ad_lr - 左/右对齐，输入0或1，0为左对齐，1为右对齐
		  
出口参数：AdResult - AD结果
备    注：以VDD为参考源,采样10次,去掉最大及最小求算术平均值
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
		
	if(ad_ch & 0x10)					//设置CHS4，此位在ADCON1寄存器中
		ADCON1 |= 0x40;
	
	ADCON0 = 0;
	ad_ch &= 0x0f;
	ADCON0 |= (unsigned char)(ad_fd << 6);//不同的VDD或参考电压需要配置合理的分频
	ADCON0 |= (unsigned char)(ad_ch << 2);//设置通道
	ADCON0 |= 0x01;						  //使能ADC		
	
	asm("nop");
	asm("nop");
	GODONE = 1;							//开始转换
	
	while(GODONE)
	{
		asm("nop");
		asm("nop");
		if((--i) == 0)					//ad等待限时，防止出现死循环，但要考虑转换时间不能长于此时间
			return;
	}
 
	if(!ad_lr)							//左对齐
	{
		data =  (unsigned int)(ADRESH<<4);
		data |= (unsigned int)(ADRESL>>4);
	}
	else								//右对齐
	{
		data =  (unsigned int)(ADRESH<<8);
		data |= (unsigned int)ADRESL;			
	}         

	if(adtimes == 0)
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