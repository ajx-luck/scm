/**********************************************************
AD检测范例程序
**********************************************************/

#include <sc.h>
#define _XTAL_FREQ 8000000UL		//如果用16M晶振则改为16000000UL

volatile unsigned int	adresult;
volatile unsigned long adsum;
volatile unsigned int admin,admax;
volatile unsigned char adtimes;

void ADC_Sample(unsigned char adch,unsigned char adldo);
void DelayXms(unsigned char x);


#define _DEBUG			//调试程序用

/**********************************************************
函数名称：AD_Sample
函数功能：AD检测
入口参数：adch - 检测通道；adldo-基准电压
			adldo = 0， VDD 作为ADC 参考
			adldo = 4， 内部LDO 2.4V 作为ADC 参考
			adldo = 5， 内部LDO 2.0V 作为ADC 参考
出口参数：无 
备    注：采样通道需自行设置为模拟口
	      采样10次,取中间八次的平均值为采样结果存于adresult中
**********************************************************/
void ADC_Sample(unsigned char adch,unsigned char adldo)
{
	volatile unsigned int ad_temp;
	
	if(LDOEN^(adldo!=0)) 		//如果AD参考为VDD和内部LDO互换，需要延时100US以上 
	{
		ADCON1 = adldo;			//左对齐,AD值取12位
		__delay_us(100);		//延时100us 
	}	
	else
		ADCON1 = adldo;			//如果需要选择更快的AD转换时钟，可以把ADCON1的BIT3设为1，即TADSEL = 1; 
		
	ADCON0 = 0X41 | (adch << 2);	//16分频，如果主频为16M，且TADSEL=1，则必须选16分频或以上
	asm("nop");
	asm("nop");
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
	
	if(0 == admax)
	{
		admax = ad_temp;
		admin = ad_temp;
	}
	else if(ad_temp > admax)
		admax = ad_temp;				//AD采样最大值
	else if(ad_temp < admin)
		admin = ad_temp;				//AD采样最小值
	
	adsum += ad_temp;
	if(++adtimes >= 10)
	{
		adsum -= admax;
		if(adsum >= admin)	adsum -= admin;
			else	adsum = 0;
		
		adresult = (unsigned int)(adsum >> 3);		//8次平均值作为最终结果
		
		adsum = 0;
		admin = 0;
		admax = 0;
		adtimes = 0;
	}
}


//ADC单次采样
unsigned int ADC_Result(unsigned char adch)
{
	ADCON1 = 0;						//左对齐，用VDD做AD参考 
	__delay_us(20);					//延时20us
	ADCON0 = 0X41 | (adch << 2);	//16分频
	asm("nop");
	asm("nop");
	asm("nop");
	asm("nop");
	GODONE = 1;						//开始转换

	unsigned char i = 0;
	while(GODONE)
	{
		if(0 == (--i))
			return 0;				//转换超时
	}
	
	unsigned int ad_result ;
	ad_result=(ADRESH<<4)+(ADRESL>>4);	//计算12位AD值;
	return ad_result;
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

/***********************************************************
main主函数
***********************************************************/
void main()
{
	asm("nop");
	asm("clrwdt");
	INTCON = 0;				//禁止中断
	OSCCON = 0X70;			//配置振荡为8M
	TRISB = 0;
	DelayXms(2);
	while(1)
	{
		asm("clrwdt");
	
#ifdef _DEBUG		
		unsigned int result;
		
		result = ADC_Result(15);		//测试内部基准源1.2V
		if (result > 666) RB4 = 0;		//电源电压小于3V
			else RB4 =1;
		
		//如果检测ad参考电压从VDD转为内部基准源，必需延时100uS以上才可以检测
		//如果检测ad参考电压从内部基准源转为VDD，必需延时20uS以上
	
		ANS13 = 1;		//RB5选择模拟输入
		TRISB5 = 1;		//RB5设为输入
		ADC_Sample(13,5);
		
#endif
	}
}
