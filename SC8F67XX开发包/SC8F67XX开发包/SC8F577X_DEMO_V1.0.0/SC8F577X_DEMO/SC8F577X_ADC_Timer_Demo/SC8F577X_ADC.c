/**********************************************************
AD检测范例程序
**********************************************************/

#include <sc.h>



volatile unsigned int   result,result1,result2;


unsigned int  Read_ADC(unsigned char  ADCchannel,unsigned char  ADCLDORef);
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
void main()
{
	
	asm("nop");
	asm("clrwdt");
	INTCON = 0;				//禁止中断
	OSCCON = 0X70;			//配置振荡为16M
	
    DelayXms(2);
	
	ADCON0 = 0B10000001;   //	
	ADCON1 = 0B00000011;	

	OPTION_REG = 0B00001111;
	
	TMR0 = 6;					//设定Timer0初始值
	T0IF = 0;
	T0IE = 1;   // T0 中断使能
	
	T2CON = 0B00000011; // 16分频
	PR2 = 250;
	TMR2 = 0;
	TMR2ON = 1;
	TMR2IE = 1; // T2 中断使能
	
	PEIE = 1;  // 这位必须开启才能进入T2中断

	TRISB6 = 0;  //RB6 输出态
	TRISB5 = 0;  //RB5 输出态
	
	ADON = 1;
	INTF = 0;
	
	GIE  = 1;
	
	while(1)
	{
		asm("clrwdt");

		result = Read_ADC(19,0);   // VDD 参考读取内部1.2V基准 
		
		result1 = Read_ADC(19,1);   // 内部LDO 2V 参考读取内部1.2V基准 
		result2 = Read_ADC(19,2);    // 内部LDO 2.4V 参考读取内部1.2V基准 
	}
}

void interrupt Timer0_Isr(void)
{
		
	if(T0IF)  // TIMER0 62us进 中断
	{
		TMR0 += 6;
		T0IF = 0;
		
		RB6 = ~RB6;
		   
	}
	
	if(TMR2IF) // TIMER2 1MS 中断
	{
        
		TMR2IF = 0;
		RB5 = ~RB5;   
	}
	
}

/******************************************
  返回  Adc_Result 
  
 ADCchannel 为输入AD通道 0-18
             19  检测内部1.2V 
			 20  检测PGA输出
 ADCLDORef =1,开启内部LDO 2V 作为ADC 参考
 ADCLDORef =2,开启内部LDO 2.4V 作为ADC 参考
 ADCLDORef =0,VDD 作为ADC 参考
*****************************************/
unsigned int  Read_ADC(unsigned char  ADCchannel,unsigned char  ADCLDORef)
{
 unsigned int	Adc_Result;
	unsigned char i=200;
	
	
	if(ADCLDORef==0)
	{
		ADCON1 = 0B00000000;
	}
	else if(ADCLDORef==1)
	{
		ADCON1 = 0B00000101;
	}
	else
	{
    	ADCON1 = 0B00000110;	
	}
	
	CHS4 = 0;	
	if(ADCchannel >=16)
	{
		ADCchannel -= 16;	
		CHS4 = 1;	
	}
	
	ADCON0 &= 0b11000011;
	ADCON0 |= ADCchannel<<2; 
	asm("nop");
	GODONE = 1;
	while(GODONE==1&&i>0)
	{
		i--;
		asm("nop");
	}
	Adc_Result = ADRESH<<4;
	Adc_Result += ADRESL>>4;
	
	return Adc_Result;
	
}



