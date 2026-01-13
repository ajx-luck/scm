#include "XH711.h"    //调用hx711头文件
#include "SysTick.h"    //调用delay延时头文件
#define MEDIAN_LEN  5  			//中值滤波的滤波长度,一般取奇数
#define MEDIAN      3  			//中值在滤波数组中的位置
u32   buffer[MEDIAN_LEN];   	//中值滤波的数据缓存
int   medleng = 0;          	//一组中值滤波数据中,进入滤波缓存的数据个数
u32   xd,xd1;					//数据对比大小中间变量
 
u32	weight=0;		      //实际重量值
u32	pi_weight=0;		        //皮重
//u32	hx711_xishu=31706;		//这是一个修正系数，例如1000g砝码称出来是934g，则HX711_xishu=原数据*1000/934;
u32	hx711_xishu=47785;
void HX711_GPIO_Init(void)      //初始化hx711  
{
	GPIO_InitTypeDef GPIO_InitStructure;
	
	//打开GPIO口时钟，先打开复用才能修改是否停用复用功能
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB | RCC_APB2Periph_AFIO,ENABLE);
	//关闭JTAG，使能SWD
	GPIO_PinRemapConfig(GPIO_Remap_SWJ_JTAGDisable,ENABLE);
 
	GPIO_InitStructure.GPIO_Pin = HX711_SCK_GPIO_PIN;	//配置SCK引脚
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;    //配置输出模式-推完输出
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;    //配置速度频率
	GPIO_Init(GPIOB, &GPIO_InitStructure);    //初始化配置
	
	GPIO_InitStructure.GPIO_Pin = HX711_DATA_GPIO_PIN;    //配置DOUT引脚
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;    //配置输入模式-浮空输入
	GPIO_Init(GPIOB, &GPIO_InitStructure);    //初始化配置
}
 
void HX711_Data_Out(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	
	
	//打开GPIO口时钟，先打开复用才能修改是否停用复用功能
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB | RCC_APB2Periph_AFIO,ENABLE);
	//关闭JTAG，使能SWD
	GPIO_PinRemapConfig(GPIO_Remap_SWJ_JTAGDisable,ENABLE);
 
	GPIO_InitStructure.GPIO_Pin = HX711_DATA_GPIO_PIN;	
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(HX711_DATA_GPIO_PORT, &GPIO_InitStructure);
}
 
void HX711_Data_In(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	
		//打开GPIO口时钟，先打开复用才能修改是否停用复用功能
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB | RCC_APB2Periph_AFIO,ENABLE);
	//关闭JTAG，使能SWD
	GPIO_PinRemapConfig(GPIO_Remap_SWJ_JTAGDisable,ENABLE);
 
	GPIO_InitStructure.GPIO_Pin = HX711_DATA_GPIO_PIN;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_Init(HX711_DATA_GPIO_PORT, &GPIO_InitStructure);
	
}
 
u32 Read_HX711(void)
{
	uint8_t i;
	uint32_t value = 0;
	
	/**
	数据手册写到，当数据输出管脚 DOUT 为高电平时，表明A/D 转换器还未准备好输出数据，此时串口时
	钟输入信号 PD_SCK 应为低电平，所以下面设置引脚状态。
	**/
	HX711_Data_Out();
	HX711_DATA=1; //初始状态DT引脚为高电平
	delay_us(1);
	HX711_SCK=0; //初始状态SCK引脚为低电平
	HX711_Data_In();
	/**
	等待DT引脚变为高电平
	**/
//	while(HX711_DATA);
	delay_us(1);
	
	/**
	当 DOUT 从高电平变低电平后，PD_SCK 应输入 25 至 27 个不等的时钟脉冲
	25个时钟脉冲 ---> 通道A 增益128
	26个时钟脉冲 ---> 通道B 增益32
	27个时钟脉冲 ---> 通道A 增益64
	**/
	for(i=0; i<24; i++) //24位输出数据从最高位至最低位逐位输出完成
	{
		HX711_SCK=1;
		delay_us(1);
		HX711_SCK=0;
		if(HX711_DATA == 0)
		{
			value = value << 1;
			value |= 0x00;
		}
		if(HX711_DATA == 1)
		{
			value = value << 1;
			value |= 0x01;
		}
		delay_us(1);
	}
	
	//第 25至 27 个时钟脉冲用来选择下一次 A/D 转换的输入通道和增益
	HX711_SCK=1;; 
	value = value^0x800000; 
	delay_us(1); 
	HX711_SCK=0; 
	delay_us(1);  
	return value; 	
}
 

void Get_Tare(void)//获取皮重
{
	u32 hx711_dat=0;
	u8 i=0;
	for(i=0;i<MEDIAN_LEN;i++)
	{
		hx711_dat=Read_HX711();	        	//HX711AD转换数据处理
		if(medleng == 0)                    //缓存的第1个元素,直接放入,不需要排序
		{ 
			buffer[0] = hx711_dat; medleng = 1; 
		}
		else                            	//插入排序算法,按从小到大的顺序排列 
		{  
			for(i = 0; i < medleng; i ++)  
			{
				if( buffer[i] > hx711_dat) 	// 轮询到的当前元素>AD值,则交换它们的值，xd为中间变量存放位置
				{ 
					xd = hx711_dat; hx711_dat = buffer[i]; buffer[i] = xd;
				}
			}
			buffer[medleng] = hx711_dat; 	//把轮询出较大的数放入缓存的后面.
			medleng++;
		}		
		if(medleng >= MEDIAN_LEN) 		    //ADC采样的数据个数达到中值滤波要求的数据个数
		{
			hx711_dat = buffer[MEDIAN];	    //最终重量取中值滤波数组的中间值
			medleng = 0; 
		}
	}
	pi_weight=(u16)(hx711_dat*0.01);
}
 
void Get_Weight(void)	  //获取被测物体重量
{
	u32 hx711_data,a;
	u32 get,aa;	
	hx711_data=Read_HX711();		   //HX711数据采集函数
	get=(u16)(hx711_data*0.01);   //HX711AD转换数据处理，数据缩小100倍
	if(get>pi_weight)
	{
		a=Read_HX711();			   //重新采集HX711数据					 														   
		aa=(u16)(a*0.01)-pi_weight;			     //测得的重量值减去皮重
		weight=(u16)((float)aa*0.00001*hx711_xishu);//重量转换函数，传感器型号不同此函数要适当修改（修改HX711_xishu的大小）	
	}
	else				
		weight=0;
}
u32 get_zhongliang(void)
{		
	int i = 0;
	Get_Weight();	
	if(medleng == 0)                    //缓存的第1个元素,直接放入,不需要排序
	{ 
		buffer[0] = weight; medleng = 1; 
	}
	else                            	//插入排序算法,按从小到大的顺序排列 
	{  
		for(i = 0; i < medleng; i ++)  
		{
			if( buffer[i] > weight) 	// 轮询到的当前元素>AD值,则交换它们的值，xd为中间变量存放位置
			{ 
				xd = weight; weight = buffer[i]; buffer[i] = xd;
			}
		}
		buffer[medleng] = weight; 	//把轮询出较大的数放入缓存的后面.
		medleng++;
	}		
	if(medleng >= MEDIAN_LEN) 		    //ADC采样的数据个数达到中值滤波要求的数据个数
	{
		weight = buffer[MEDIAN];	    //最终重量取中值滤波数组的中间值
		medleng = 0; 
//		delay_ms(50);
	}
	return weight;
}

//最后记得空行！！！






