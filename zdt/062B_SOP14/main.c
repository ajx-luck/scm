/**********************************************************
AD检测范例程序
**********************************************************/
#pragma warning disable 752
#pragma warning disable 373			//屏蔽掉编译的1个警告
#include <sc.h>

#ifndef _XTAL_FREQ
#define _XTAL_FREQ 16000000			//16MHz,使用内置延时函数必须定义主频，
									//如用FCPU_DIV选择2T，则定时赋值减半
#endif
#define		u8t		unsigned char
#define		u16t	unsigned int
#define     POWER_RATIO  	(4096UL*1.2*1000)

volatile unsigned int adresult;
volatile unsigned int result;
volatile unsigned char test_adc;
volatile unsigned int power_ad;
u8t	intCount;
u8t	count1s;
u8t	IntFlag;

unsigned char ADC_Sample(unsigned char adch, unsigned char adldo);
void DelayXms(unsigned char x);
unsigned char ADC_Result(unsigned char adch);
void Init_System();
void AD_Init();
void Sleep_Mode();
void pwmInit();

#define _DEBUG			//调试程序用



/**********************************************************
函数名称：AD_Sample
函数功能：AD检测
入口参数：adch - 检测通道
出口参数：无
备    注：采样通道需自行设置为输入口
	      采样10次,取中间八次的平均值为采样结果存于adresult中

	      adch 为输入AD通道 0-15，31
             31  检测内部1.2V
	
 		  adldo =5,开启内部LDO 2V 作为ADC 参考
 		  adldo =6,开启内部LDO 2.4V 作为ADC 参考
		  adldo =7,开启内部LDO 3V 作为ADC 参考
 		  adldo =0,VDD 作为ADC 参考
 		  AD转换结果左对齐
 		  ADC参考电压从VDD切换到LDO时需要延时100us以上，才能进行AD转换
**********************************************************/
unsigned char ADC_Sample(unsigned char adch, unsigned char adldo) 
{
	volatile unsigned long adsum = 0;
	volatile unsigned int admin = 0, admax = 0;
	volatile unsigned int ad_temp = 0;

	if ((!LDO_EN) && (adldo & 0x04) ) 
	{
								//如果AD参考从VDD换到内部LDO，需要延时100US以上
		ADCON1 = adldo;			//左对齐,AD值取12位
		__delay_us(100);		//IDE内置延时函数，延时100us
	} 
	else
		ADCON1 = adldo;			//如果ADCON1.7(ADFM)=1为右对齐，,AD值取10位

	if(adch & 0x10) 
	{
		CHS4 = 1;
		adch &= 0x0f;
	}
	unsigned char i = 0;
	for (i = 0; i < 10; i++) 
	{
		ADCON0 = (unsigned char)(0X41 | (adch << 2));	//16分频，如果主频为16M，则必须选16分频或以上
		asm("nop");
		asm("nop");
		asm("nop");
		asm("nop");				//选择通道后需延时1uS以上
		GODONE = 1;				//开始转换

		unsigned char j = 0;
		while (GODONE) 
		{
			__delay_us(2);		//延时2us(编译器内置函数)

			if (0 == (--j))		//延时0.5ms仍没有AD转换结束，跳出程序
			return 0;
		}

		ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));	//计算12位AD值

		if (0 == admax) 
		{
			admax = ad_temp;
			admin = ad_temp;
		} 
		else if (ad_temp > admax)
			admax = ad_temp;				//AD采样最大值
		else if (ad_temp < admin)
			admin = ad_temp;				//AD采样最小值

		adsum += ad_temp;
	}
		adsum -= admax;
		if (adsum >= admin)
			adsum -= admin;
		else
			adsum = 0;

		adresult = adsum >> 3;		//8次平均值作为最终结果

		adsum = 0;
		admin = 0;
		admax = 0;
		return 0xA5;
		
}


/***********************************************************
main主函数
***********************************************************/
void main() 
{
	Init_System();
	AD_Init();
	while (1) 
	{
		asm("clrwdt");
		if(!IntFlag)
    		continue;			//10ms执行一次
    	IntFlag = 0;
		pwmInit();
#ifdef _DEBUG
		TRISB7 = 1;							//测试AN15对应的IO设为输入,
		ANSEL1 |= 0X80;						//测试AN15对应的IO设为模拟输入
		test_adc = ADC_Sample(15, 7);		//测试AN15口的AD值，参考电压3V
		if (0xA5 == test_adc)				//测试完成，如因其他原因导致AD转换没有完成，则不处理
		{
			
		}
		else
		{
			ADCON0 = 0;						//如果转换没有完成，需初始化ADCON0,1
			ADCON1 = 0;				
			__delay_us(100);				//延时100us(编译器内置函数)
		}

		test_adc = ADC_Sample(31, 0);		//测试内部基准1.2V相对电源的AD值
		if (0xA5 == test_adc)
		{
			volatile unsigned long power_temp;
			
			power_temp = (unsigned long)((POWER_RATIO)/adresult);		//1.2*4096/AD=VDD，参数放大1000倍 
			power_ad = (unsigned int)(power_temp);		//通过内部基准电压推出芯片VDD电压
		}

#endif
	}
}

/**********************************************************
函数名称：Init_System
函数功能：系统初始化
入口参数：无
出口参数：无
备    注：
**********************************************************/
void Init_System() 
{
	asm("nop");
	asm("clrwdt");
	OPTION_REG = 0;					//预分频给TMR0 ，Timer0使用内部时钟Focs/4，预分频比为1:2
	asm("clrwdt");
	OSCCON = 0X70;					//内部振荡器8M

	WPUA = 0B00000000;				//配置上拉，1为使能上拉
	WPUB = 0B00000000;

	TRISA = 0B00000000;				//配置IO状态，0为输出，1为输入
	TRISB = 0B00000000;

	PORTA = 0X00;
	PORTB = 0X00;

//---------------------------------------
//125us中断初始化
	PR2 = 249;					//设定Timer初始值，定时周期是250*4/8M=125uS
	TMR2IF = 0;
	TMR2IE = 1;					//使能Timer2溢出中断

	T2CON = 0B00000100;			//开启Timer2,设置TMR2的分频比为1:1
	INTCON = 0XC0;				//开启总中断
}

/***********************************************************
中断服务函数
函数名称：Isr_Timer()
函数功能：中断处理函数
入口参数：
出口参数：
备    注：125US定时2中断
			所有中断都是在这个函数里面处理
***********************************************************/
void interrupt Isr_Timer() 
{
	if (TMR2IF) 
	{			//若只使能了一个中断源,可以略去判断
		TMR2IF = 0;
		if(++intCount >= 160)
		{
			intCount = 0;
			IntFlag = 1;
			PORTA ^= 0x01;
			if(++count1s >= 100)
			{
				count1s = 0;
				PORTA ^= 0x02;
			}
		}
	}

}

/***********************************************************
中断服务函数
函数名称：AD_Init()
函数功能：AD初始化处理函数
入口参数：
出口参数：
备    注：第一次打开AD允许位ADON，需延时20uS以上才能进入AD采样
			如后继程序不关闭ADON，则不需要延时
***********************************************************/
void AD_Init() 
{
	/*********** ADCON0 ****************************
		Bit7~Bit6  ADCS<1:0>:  AD转换时钟选择位。
			00=  F HSI /16
			01=  F HSI /32
			10=  F HSI /64
			11=  F HSI /128
		Bit5~Bit2  CHS<3:0>:  模拟通道选择位。与ADCON1寄存器CHS4组合CHS<3:0>
			CHS<4:0>: 
			00000=  AN0
			00001=  AN1
			00010=  AN2
			00011=  AN3
			00100=  AN4
			00101=  AN5
			00110=  保留
			00111=  保留
			01000=  AN8
			… 
			01101=  AN13
			01110=  AN14
			01111=  AN15
			11111=  1.2V（固定参考电压）
			其他=  保留
		Bit1  GO/DONE: AD转换状态位。
			1=  AD转换正在进行。将该位置1启动AD转换。当AD转换完成以后，该位由硬件自动清零。
				当GO/DONE位从1变0或ADIF从0变1时，需至少等待两个TAD时间，才能再次启动AD转换。
			0=  AD转换完成/或不在进行中。
		Bit0  ADON:  ADC使能位。
			1=  使能ADC；
			0=  禁止ADC，不消耗工作电流。
	*********************************************/
	ADCON0 = 0X41;		//ADON开启，AD采样时间选为FSYS/16
	
	/*********** ADCON1 ****************************
		Bit7  ADFM:  AD转换结果格式选择位；
			1=  右对齐；
			0=  左对齐。
		Bit6  CHS4:  通道选择位
		Bit5~Bit3  未用 
		Bit2  LDO_EN:  内部参考电压使能位。
			1=  使能ADC内部LDO参考电压；
				当选择内部LDO作参考电压时，ADC最大有效精度为8位。
			0=  VDD作为ADC参考电压。
		Bit1~Bit0  LDO_SEL<1:0>:  参考电压选择位
			0X=  2.0V
			10=  2.4V
			11=  3.0V
	*********************************************/
	ADCON1 = 0;
}

void pwmInit()
{
							//以下是对PWM功能初始化
		/************PWMCON1定义**************************
		Bit7~6 PWMIO_SEL[1:0]: PWM IO选择。
			11= PWM分配在A组，PWM0-RA0,PWM1-RA1,PWM2-RA2,PWM3-RA3,PWM4-RA4
			10= PWM分配在B组，PWM0-RA0,PWM1-RA1,PWM2-RA2,PWM3-RB2,PWM4-RB1
			01= PWM分配在C组，PWM0-RA5,PWM1-RB7,PWM2-RB6,PWM3-RB5,PWM4-RB4
			00= PWM分配在D组，PWM0-RB0,PWM1-RB1,PWM2-RB3,PWM3-RB4,PWM4-RB2
		Bit5 PWM2DTEN: PWM2死区使能位。
			1= 使能PWM2死区功能，PWM2和PWM3组成一对互补输出。
			0= 禁止PWM2死区功能。
		Bit4 PWM0DTEN: PWM0死区使能位。
			1= 使能PWM0死区功能，PWM0和PWM1组成一对互补输出。
			0= 禁止PWM0死区功能。
		Bit3~Bit2 未用。
		Bit1~Bit0 DT_DIV[1:0] 死区时钟源分频。
			11= FOSC/8
			10= FOSC/4
			01= FOSC/2
			00= FOSC/1
	**********************************************************************/
		PWMCON1 = 0B11010010;	//PWM选择A组，死区2禁止，死区1使能，死区时钟源为Fosc/4
		
		TRISA	= 0B00011111;	//选择的PA0~PA4口设为输入
		PWMTL = 0XFF;			//PWM 周期=[PWMT+1]*Tosc*(CLKDIV 分频值)
		PWMT4L = 0XFF;
		PWMTH = 0X0C;			//周期选择为0FF，则周期为（255+1）*1/8M，周期的时钟分频在PWMCON0选择
								//PWM4周期选择为03FF
		
		PWMD0L = 0X1F;			//脉冲宽度 = (PWMDx[9:0]+1)*TOSC*(CLKDIV 分频值)
								//必须注意根据公式，即使占空比设为0仍有脉冲输出，如要输出低电平
								//需要关闭PWMEN，然后设为输出低
		PWMD1L = 0X7F;			//互补模式，PWM1的占空比与PWM0互补，和设置值无关
		PWMD01H = 0;			//配置PWM1,PWM2的占空比，该值不能超过周期，否者为100%输出
		
		PWM01DT = 0X03;			//死区设为2uS，计算为（3+1）*1/8M*4
								//死区1的占空比以PWM0设置的占空比为基准
		
		PWMD2L = 0X3F;        	//PWM2 占空比低位寄存器   该值不能超过周期，否者为100%输出
		PWMD3L = 0X7F;			//PWM3 占空比低位寄存器 ，互补以PWM0占空比为准
		PWMD23H = 0;			//PWM2 和 PWM3 占空比高位寄存器 PWMD01H，该值不能超过周期，否者为100%输出
		
		PWMD4L = 0X1F;			//PWM4 占空比低位寄存器,PWM4占空比高位在PWMTH的Bit4~5 
				
	/***************PWMCON0*************************************
		Bit7~Bit5 CLKDIV[2:0]: PWM时钟分频。
			111= FOSC/128
			110= FOSC/64
			101= FOSC/32
			100= FOSC/16
			011= FOSC/8
			010= FOSC/4
			001= FOSC/2
			000= FOSC/1
		Bit4~Bit0 PWMxEN: PWMx使能位。
			1= 使能PWMx。
			0= 禁止PWMx。
	******************************************************************/
		PWMCON0 = 0X1F;			//打开PWM0~PWM4,分频比为1
		PWMCON2 =0X10;			//PWM4输出反向
}


/***********************************************
函数名称：Sleep_Mode
函数功能：进入休眠模式
入口参数：无
出口参数：无
备注：
************************************************/
void Sleep_Mode()
{
	INTCON = 0;		
	
	OPTION_REG = 0;

	TRISA = 0B00000001; 		//关闭所有输出，RA0口做唤醒输入
	WPUA  = 0B00000001;			//RA0 开上拉电阻
	
	TRISB = 0B00001000;			//关闭所有输出，RB3口做唤醒输入
	PORTB = 0B00000000;
	WPUB  = 0B00001000;			//RB3 开上拉电阻
   			
   	ADCON0 = 0;					//关闭所有模块
	ADCON1 = 0;
	
	PWMCON0 = 0;
		
	OSCCON = 0X70;				//配置振荡为8M,关闭WDT，需注意芯片工程选项里WDT必须选为DISABLE,否则无法软件关掉WDT
	
	IOCA = 0B00000001;			//允许RA0的IO电平变化中断
	IOCB = 0B00001000;			//允许RB3的IO口电平变化中断
	
	RAIE = 1;					//允许PORTA的IO电平变化中断
	PEIE = 1;					//要用RORTA中断唤醒，则PEIE必须设为1
	RBIE = 1;					//允许PORTB电平变化中断
	GIE = 0;					//唤醒后执行SLEEP后程序;
	
	PIE1 &= 0X08;				//关闭不需要的中断
	PIR1 = 0;					//必须清不需要的中断标志位
	INTCON &= 0XC8;				//必须清不需要的中断标志位

	PORTA;						//读PORTA值并锁存,用电平变化中断必须执行这一步
	RAIF = 0;					//清PORTA中断标志位
	PORTB;						//读PORTB值并锁存	
	RBIF = 0;					//清PORTB中断标志位		
	asm("clrwdt");

	asm("sleep");				//进入休眠模式
	
	asm("nop");
	asm("clrwdt");
	if(RAIF)  RAIF = 0;			//清中断标志
	if(RBIF)  RBIF = 0;			//清中断标志
	PORTA ^= 0X08;
	Init_System();
}
