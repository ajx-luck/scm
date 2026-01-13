#include "config.h"

void clk_init()
{
	EA = 0;
	TA = 0xAA;
	TA = 0x55;
	CLKDIV = 0x00;			//振荡器48MHz CONFIG配置中振荡1分频 系统时钟1分频 最终主频48Mhz
	CKCON = 0xE7;				//1110 0111 WDT 1.4s溢出  T0 12分频4Mhz  T1 12分频 4Mhz 
	EA = 1;
}

void power_init()
{
	EA = 0;
	PCON = 0x04;				//0000 0100 STOP状态功能唤醒 系统进入正常状态
	LVDCON = 0x00;			//关闭低电压检测
	EA = 1;
}

void wdt_init()
{
	EA = 0;
	TA = 0xAA;
	TA = 0x55;
	WDCON = 0x03;	
	EA = 1;
}

void clwdt()
{
	EA = 0;
	TA = 0xAA;
	TA = 0x55;
	WDCON |= 1<<0;		//清WDT
	EA = 1;
}
//void foot_vsp_onoff_mode(unsigned char chiose)
//{
//		if(chiose)
//		{
//				

//		}

//}
void io_init()
{										
	//0推挽正常 1开漏开漏			0输入 1输出 	0低电平 1高电平
	//PXTRIS 输入输出寄存器 PX 状态寄存器
	P0TRIS = 0xC1;		//1100 0001 	
	P1TRIS = 0xFF;		//1110 1111 //P14  改为调速脚踏和开关脚踏选择引脚
	P2TRIS = 0x71;		//0111 0001 //  p22  JP1 输入 切换 HAND 与 FOOT 
	P3TRIS = 0xB8;		//1011 1000 	//p30 AC_CHK  检测交流是否插电 (输入)
	
	P0 = 0x00;
	P1 = 0x00;
	P2 = 0x00;
	P3 = 0x00;
	
	P02CFG = 0x01;		//P02 模拟功能 比较器输入U
	P03CFG = 0x01;		//P03 模拟功能 比较器输入V
	P04CFG = 0x01;		//P04 模拟功能 比较器输入W
	P05CFG = 0x01;		//P05 模拟功能 比较器输入COM
//	P14CFG = 0x00;		//P14 模拟功能 FOOT_VSP


	P23CFG = 0x01;		//P24 模拟功能 FOOT
	P36CFG = 0x01;		//P25 模拟功能 V_AD
	P22CFG = 0x01;		//P26 模拟功能 VSP  电位器检测
	P36CFG = 0x01;		//P31 模拟功能 电机电流检测
	P30CFG = 0x01;		//P30 模拟功能 电机电流检测
//	P22CFG = 0x01;		//P22 JP1
//	P36CFG = 0x01;		//P36 F_R
}

void isr_init()
{
	IE = 0x00;
	IP = 0x00;
	EIE2 = 0x00;
	T2IE = 0x00;
	P0EXTIE = 0x00;		
	P1EXTIE = 0x00;
	P2EXTIE = 0x00;
	P3EXTIE = 0x00;
	TCON = 0x00;
	T2IF = 0x00;
	EIF2 = 0x00;
	P0EXTIF = 0x00;
	P1EXTIF = 0x00;
	P2EXTIF = 0x00;
	P3EXTIF = 0x00;
	EA = 0;
}

void Timer0_init()
{				
	TMOD = 0x12;				//0001 0010	T1 16位定时模式  T0自动重载8位
	TH0 = 0xB0;					//256 - 20*4 20us
	TL0 = 0xB0;

	TF0 = 0;
	PT0 = 1;						//T0高优先级
	ET0 = 1;						//允许T0中断
	TR0 = 1;						//启动T0
}

void Timer1_init()
{				
	TH1	=	0xF0;					//1000*4   *1/4
	TL1 = 0x60;					//1ms定时

	TF1 = 0;
//PT1 = 1;						//T1高优先级
	ET1 = 1;						//允许T1中断
	TR1 = 1;						//启动T1
}

void Timer3_init()
{
	T34MOD |= 0x01;			//0000 0001 12分频 1/4us 16位定时器
	TH3	=	0x00;						
	TL3 = 0x00;						
	
//	EIF2 &= ~(1<<0);		//清中断标志
//	EIE2 |= 1<<0;
	//T34MOD |= 1<<3;			//启动T3
}

void Timer4_init()
{				
//	T34MOD |= 0x60;			//0110 0000 T4M=1 12Mhz 8位自动重装 
//	EIF2 &= ~(1<<1);		//清零中断标志
//	TH4	=	0xD9;					//THx = 256- 48000000/(32*4*波特率)
//	TL4 = 0xD9;					//初始值(256-39)	波特率9600
//	
//	T34MOD |= 1<<7;			//启动T4
}

void uart0_init()
{
	BRTCON = 0x83;			//1000 0011 6MHz
	BRTDH = 0xFF;				
	BRTDL = 0xEC;				//104.1666666666667us
	
	FUNCCR = 0x05;			//0000 1111
	SCON0 = 0x40;				//0100 0000 8位异步 
	ES0 = 1;
}

void pwm_init()
{
	PWMCON = 0x10;			//3路PWM互补 边沿对齐 向下计数
	PWM01PSC = 0x01;		//第一级分频为(1+1)分频
	PWM23PSC = 0x01;		//第一级分频为(1+1)分频 
	PWM45PSC = 0x01;		//第一级分频为(1+1)分频 
	PWM0DIV = 0x04;			//第二级分频为
//	PWM1DIV = 0x04;			//第二级分频为
	PWM2DIV = 0x04;			//第二级分频为   最终得到的PWM时钟为24Mhz 1/24us

//	PWM3DIV = 0x04;			//第二级分频为
	PWM4DIV = 0x04;			//第二级分频为
//	PWM5DIV = 0x04;			//第二级分频为   最终得到的PWM时钟为24Mhz 1/24us
//	PWMCNTM = 0x07;			//计数器自动重新加载
//	PWMPINV = 0x00;			//输出极性选择 正常输出

	//PWM0周期 1200 * (1/24) = 50us 20Khz
	PWMP0H = PWMT>>8;
	PWMP0L = PWMT;				
	PWMP2H = PWMT>>8;
	PWMP2L = PWMT;				
	PWMP4H = PWMT>>8;
	PWMP4L = PWMT;					
	

//	PWMP3H = PWMT>>8;
//	PWMP3L = PWMT;				
//	PWMP4H = PWMT>>8;
//	PWMP4L = PWMT;				
//	PWMP5H = PWMT>>8;
//	PWMP5L = PWMT;	

	PWMD0H = 300>>8;
	PWMD0L = 300;				
	PWMD2H = 300>>8;
	PWMD2L = 300;				
	PWMD4H = 300>>8;
	PWMD4L = 300;		
//	PWMD3H = 0;
//	PWMD3L = 0;				
//	PWMD4H = 0;
//	PWMD4L = 0;				
//	PWMD5H = 0;
//	PWMD5L = 0;	
    PWMCNTM = 0x15;	    //数据加载
    PWMPINV = 0x00;			//输出极性选择 正常输出
    PWMOE   =0x3F;
    
    PWMDTE=0x07;
    PWM01DT = 0x13; //PWM0/1 死区时间：（PWM01DT+1）*TPWM0  50us  1ms = 1000us 
    PWM23DT = 0x13;
    PWM45DT = 0x13;

//	PWMMASKE = 0x3F;
//	PWMMASKE = 0x30;
//	PWMMASKD = 0x00;
	P17CFG = 0x12;		//P17 模拟功能 PG0 通道 AH
	P14CFG = 0x13;		//P16 模拟功能 PG1 通道 BH
	P16CFG = 0x14;		//P15 模拟功能 PG2 通道 CH
	P13CFG = 0x15;		//P13 模拟功能 PG3 通道 AL
	P15CFG = 0x16;		//P00 模拟功能 PG4 通道 BL
	P00CFG = 0x17;		//P01 模拟功能 PG5 通道 CL
    
//	PWMFBKC = 0x00;		
//	PWMFBKD = 0x00;	 
//	PWMOE = 0x15;			//PWM启动输出
    PWMLOADEN = 0x3F;	//数据加载
	PWMCNTE = 0x15;  	//PWM计数器启动计数

}

void acm0_init()
{
	C0CON0 = 0x0E;		//0000 1110 内部电压负端输入 	PGA-ANA正端输入
	C0CON2 = 0x00;		//0000 0000 正常输出 
	C0HYS = 0x00;			//0000 0000
	CNVRCON = 0x1A;		//0001 1010 分压开启 24V3A= 3.25V = 5*13/20
	CNFBCON = 0x04;		//0000 0100	使能比较器0控制PWM刹车 上升沿触发
	EIP1 |= 0x80;
	
	C0CON0 |= 1<<7;		//使能比较器0
	CNIE = 0x01;			//0000 0001 使能比较器0中断
	CNIF = 0x00;			//0000 0000 清中断标志
}

void acm1_init()
{
	C1CON0 = 0x00;		//0000 0000 比较器1禁止 禁止调节模式 C1N负端输入 C1P0正端输入
	C1CON2 = 0x18;		//0000 0000 正常输出
	C1HYS = 0x00;			//0000 0000
	
	C1CON0 |= 1<<7;		//使能比较器1	
}

void op_init()
{
//	OP1CON0 = 0x30;		//0011 0000禁止运放1 禁止调节模式 运放模式 OP1O输出 OP1N负端输入 OP1P正端输入
//	
//	OP1CON0 |= 1<<7;	//使能运放1
}

void pga_init()
{
	PGACON0 = 0x33;		//0011 0011  放大8倍 PGAP单端输入 
	PGACON1 = 0x10;		//0001 0000	 正常放大
	PGACON2 = 0x00;		//0000 0000  PGATO关闭
	
	PGACON0 |= 0x80;
}

void buzzer_init()
{
	BUZCON = 0x03;	//0000 0011 蜂鸣器分频48MHz/64
	BUZDIV = 0xBC;	//188 Fbuz=48MHz/(2*BUZDIV)/64= 2KH
//	BUZDIV = 0x5E;	//94  Fbuz=48MHz/(2*BUZDIV)/64= 4KH
//	BUZDIV = 0x3F;	//63  Fbuz=48MHz/(2*BUZDIV)/64= 6KH
}

void Sysinit()
{
	clk_init();
	power_init();
	wdt_init();
	clwdt();
	io_init();
	isr_init();
	Timer0_init();
	Timer1_init();
	Timer3_init();
	Timer4_init();
	uart0_init();
	pwm_init();
//	acm0_init();
	acm1_init();
	op_init();
	pga_init();
	buzzer_init();
}