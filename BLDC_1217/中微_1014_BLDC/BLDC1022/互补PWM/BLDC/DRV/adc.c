#include "adc.h"
bit AD_Op1oValueInitErrorFlags = 0;						//待机状态下电机静态电流初始值异常标志
xdata u8 AD_CollectCnt = 0;										//采样计数
xdata u16 AD_VspValueTemp = 0;								//AD采样得到的速度信号值
xdata u16 AD_VspValueSum = 0;									//采样值*8求和
xdata u16 AD_VspValue = 0;										//求和后再求平均后得到的最终值
xdata u16 AD_VspValueLast = 0;								//VSP滤波参数

xdata u16 AD_VinValueTemp = 0;								//AD采样得到的 电流
xdata u16 AD_VinValueSum = 0;									//采样值*8求和
xdata u16 AD_VinValue = 0;										//求和后再求平均后得到的最终值
xdata u16 AD_VinValueLast = 0;								//VIN滤波参数

xdata u16 AD_Op1oValueTemp = 0;								//AD采样得到的电机电流值
xdata u16 AD_Op1oValueSum = 0;								//采样值*8求和
xdata u16 AD_Op1oValue = 0;										//求和后再求平均后得到的最终值
xdata u16 AD_Op1oValueInit = 0;								//待机状态下电机静态电流初始值
xdata u16 AD_Op1oValueMax = 0;								//工作状态下电机允许最大电流值

xdata u16 AD_KeyValueTemp = 0;								//AD采样得到的按键电压值
xdata u16 AD_KeyValueSum = 0;									//采样值*8求和
xdata u16 AD_KeyValue = 0;										//求和后再求平均后得到的最终值

xdata u16 AD_PotValueTemp = 0;								//AD采样得到的电位器电压值
xdata u16 AD_PotValueSum = 0;									//采样值*8求和
xdata u16 AD_PotValue = 0;										//求和后再求平均后得到的最终值
xdata u16 AD_PotValueLast = 0;								//VIN滤波参数
void adc()
{ 
	//VSP
	ADCON0 = 0x40;					//0100 0000 右对齐 AN12 1 0000
	ADCON1 = 0xC8;					//1100 1100 使能ADC  1100 32分频 AN12 通道 
	ADCON0 |= 1<<1;		
	while(ADCON0 & 0x02);
	AD_VspValueTemp = (ADRESH<<8) + ADRESL;	
	ADRESH = 0x00;
	ADRESL = 0x00;
	
	//VIN
	ADCON0 = 0xC0;					//1100 0000 右对齐 AN17 1 0001  //这里检测的是电池电压
	ADCON1 = 0xC1;					//1100 1011 使能ADC 32分频 AN17通道 
	ADCON0 |= 1<<1;		
	while(ADCON0 & 0x02);
	AD_VinValueTemp = (ADRESH<<8) + ADRESL;	
	ADRESH = 0x00;
	ADRESL = 0x00;

	//SC
	ADCON0 = 0xD0;					//1101 0000 右对齐 AN22
	ADCON1 = 0xC7;					//1100 1111 使能ADC 32分频 AN22通道 
	ADCON0 |= 1<<1;		
	while(ADCON0 & 0x02);
	AD_Op1oValueTemp = (ADRESH<<8) + ADRESL;	
	ADRESH = 0x00;
	ADRESL = 0x00;
	
	//KEY
	ADCON0 = 0x40;					//1101 0000 右对齐 AN9 1 0000
	ADCON1 = 0xC9;					//1100 0000 使能ADC 32分频 AN9通道 
	ADCON0 |= 1<<1;		
	while(ADCON0 & 0x02);
	AD_KeyValueTemp = (ADRESH<<8) + ADRESL;	
	ADRESH = 0x00;
	ADRESL = 0x00;
//	

	AD_VspValueSum += AD_VspValueTemp;						//累加求和
	AD_VinValueSum  += AD_VinValueTemp;
	AD_Op1oValueSum += AD_Op1oValueTemp;
	AD_KeyValueSum += AD_KeyValueTemp;
	
	AD_CollectCnt++;															//累加计数
	if(AD_CollectCnt == COOLECTCNT)
	{
		AD_CollectCnt = 0;
		AD_VspValueLast = AD_VspValueSum>> 3;			
		AD_VinValueLast = (AD_VinValueSum >> SHIFTVALUE) >> 4;
		AD_Op1oValue = AD_Op1oValueSum >> SHIFTVALUE;	
		AD_Op1oValue>>=2;
		AD_PotValue = (AD_PotValueSum  >> SHIFTVALUE)>> 2;
		AD_KeyValue = AD_KeyValueSum >> 3;
		
		if(AD_VspValueLast > 120)
		{
				AD_VspValue = AD_VspValueLast;
		}
		else
			AD_VspValue = 0;

#if  0
		if(AD_VinValueLast > 10)
		{
			if(AD_VinValue + 5 < AD_VinValueLast)
				AD_VinValue += 5;
			else if(AD_VinValueLast + 5 < AD_VinValue)
				AD_VinValue -= 5;
		}
		else
			AD_VinValue = 0;
#endif
		if((AD_VinValueLast > (AD_VinValue+6))||(AD_VinValue > (AD_VinValueLast+6)))
		{
			AD_VinValue=AD_VinValueLast;
		}
	
		AD_VspValueSum = 0;
		AD_VinValueSum = 0;
		AD_Op1oValueSum = 0;	
		AD_KeyValueSum = 0;
	}
	
	if(Sys200ms < 200)	//开机前200ms 测试电机静态初始AD值
	{
		AD_Op1oValueInit = AD_Op1oValue;
		AD_Op1oValueMax = AD_Op1oValueInit + CURRENTMAX;	//差值为允许的最大电流
	}
	else
	{
		Sys200ms = 210;
		if((0 < AD_Op1oValueInit)&&(AD_Op1oValueInit < 100))	//静态初始值为一定范围内 超出则出现错误
			AD_Op1oValueInitErrorFlags = 1;
	}
}