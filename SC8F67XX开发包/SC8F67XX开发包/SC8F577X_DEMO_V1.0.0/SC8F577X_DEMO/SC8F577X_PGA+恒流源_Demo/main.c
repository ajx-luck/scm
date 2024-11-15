/**********************************************************

**********************************************************/

#include <sc.h>


volatile unsigned int  Adc_Result1,Adc_Result2,Adc_Result0;

/***********************************************************
main主函数
***********************************************************/

unsigned int  Read_ADC(unsigned char  ADCchannel,unsigned char  ADCLDORef);
void Init_System();


void main()
{
	Init_System();
	
	TRISA |= 0x01;       //RA0 输入态
	PGACON =  0b10000011;//  使能PGA，16倍放大

	ECIGEN =1;             //恒流源开启
	while(1)
	{
		
      PGACH =0;
	  Adc_Result1 =  Read_ADC(20,1);//读取PGA的值
	  PGACH =1;
	  Adc_Result2 =  Read_ADC(20,1);//读取PGA的值
	  
	  Adc_Result1 += Adc_Result2;
	  Adc_Result1 >>=1;
	   

		
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
	GODONE =1;
	while(GODONE==1&&i>0)
	{
		i--;
		asm("nop");
	}
	Adc_Result = ADRESH<<4;
	Adc_Result += ADRESL>>4;
	
	return Adc_Result;
	
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
	OSCCON = 0X70;				//配置振荡为8M,关WDT
	OPTION_REG = 0;
	
    WPUA  = 0B00000000;			
    WPUB  = 0B00001000;			//初始化RB3上拉
  
 
	TRISA = 0B00000001;			//初始化IO状态
	TRISB = 0B00001000;

	PORTA = 0B00000000;
	PORTB = 0B00000000;			//初始化输出
	
    ADCON0 = 0B10000001;         //	
	ADCON1 = 0B00000011;
	
   
}

