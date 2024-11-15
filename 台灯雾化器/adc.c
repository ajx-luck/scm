#include "adc.h"

/**********************************************************
函数名称：AD_Sample
函数功能：AD检测
入口参数：adch - 检测通道
出口参数：无 
备    注：采样通道需自行设置为模拟口
	      采样10次,取中间八次的平均值为采样结果存于adresult中
**********************************************************/
//ADC左对齐采样
unsigned int ADC_Sample(unsigned char adch)
{
	unsigned int adsum = 0;
	unsigned int admin = 0,admax = 0;
	unsigned char adtimes = 0;
	volatile unsigned int ad_temp;
	ADCON1 = 0;						//左对齐
	ADCON0 = 0X41 | (adch << 2);	//16分频
	asm("nop");
	asm("nop");
	GODONE = 1;						//开始转换

	unsigned char i = 0;
	while(GODONE)
	{
		if(0 == (--i))
			return;
	}
	
	ad_temp=(ADRESH<<4)+(ADRESL>>4);	//计算12位AD值
	return ad_temp;
	
}



//ADC右对齐采样
unsigned int ADC_Result(unsigned char adch)
{
	ADCON1 = 0x80;						//右对齐
	ADCON0 = 0X41 | (adch << 2);	//16分频
	asm("nop");
	asm("nop");
	GODONE = 1;						//开始转换

	unsigned char i = 0;
	while(GODONE)
	{
		if(0 == (--i))
			return 0;				//转换超时
	}
	unsigned int tempResult = ADRESH;
	tempResult <<= 8;
	tempResult += ADRESL;
	return tempResult;
}
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

//读取内部电压
unsigned char readVrefADC()
{
	DelayXms(1);
	ADC_Sample(0x0F);
	unsigned char result;
		
	result = ADC_Result(0x0F);
	return result;
}

