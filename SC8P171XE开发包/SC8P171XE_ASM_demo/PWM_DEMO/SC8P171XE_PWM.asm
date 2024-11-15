;-------------------------------------------

;程序名称：PWM模式程序
;日期版本：2021/1/15 <V1.1>

;备注：以PWM作为示例

;*公司网址 www.mcu.com.cn
;					WWW.SCMCU.COM
;-------------------------------------------
;PWM周期 = [(PWMT)+1]*(1/Fosc)*(CLKD/V分频值)
;脉冲宽度 = (PWMDX(9:0)+1)*(1/Fosc)*(CLKD/V分频值)
;本程序计算示例：周期 = [(511)+1]*(1/8)*(1) 
;					  = 64us
;				 脉冲宽度 = (128*(1/8)*(1)
;						  = 16us

#INCLUDE	SC8P1712E.H

GPR0		EQU			?				;用于中断服务中保存ACC
GPR1		EQU			?				;用于中断服务中保存STATUS
WORK		EQU			?				;
	B_MainLoop	EQU	WORK,0	;进入定时中断标志位
DELAYCNT	EQU		?				;延时计数器
PWMBUF		EQU		?

ORG			0000H						
JP			START						
ORG			0004H
JP			INT_SERVICE
;-------------------------------------------
START:
		NOP
		CLRWDT
		LDIA		00H
		OPTION							;预分频器分配给TMR0
		CLR			TMR0				;初始化TMR0
		CLRWDT
		
		LDIA		070H				;8M内部时钟
		LD			OSCCON,A
		
		LDIA		.250				;赋初值
		LD			PR2,A
		
		CLRB		PIR1,TMR2IF			;清中断标志位
		
		LDIA		04H					;开启Timer2，预分频值为1，后分频比为1:1
		LD			T2CON,A
		
		SETB		PIE1,TMR2IE			;允许Timer2中断
		LDIA		0C0H				;允许所有未被屏蔽的中断、外设中断
		LD			INTCON,A
		
		LDIA		B'00000011'			;选择作为PWM的PB1,PB0口设为输入
		LD			TRISB,A
		
		LDIA		B'00000100'			;PWM选择时钟源为Fosc/1,PWM0反向
		LD			PWMCON,A
		LDIA		0FFH
		LD			PWMTL,A				;
		LDIA		01H
		LD			PWMTH,A				;周期选择为01FF，则周期为（511+1）*1/8M=64uS，周期的时钟分频在PWMCON选择
								
		LDIA		01FH
		LD			PWMD0L,A			;选择PWM0脉宽为（31+1）*1/8M=4uS,则占空比为1/16
		LDIA		07FH
		LD			PWMD1L,A			;选择PWM1脉宽为（127+1）*1/8M=16uS,则占空比为1/4
		LDIA		00H					;配置PWM脉宽高位
		LD			PWMD01H,A			;配置PWM1,PWM2的占空比，该值不能超过周期，否者为100%输出
    
		CLRB		PIR1,PWMIF          ;清零PWMIF中断标志位
		LDIA		B'00000111'
		LD			PWMCON,A			;PWM选择时钟源为Fosc/1,PWM0反向，允许PWM0,PWM1使能
		LDIA		00H
		LD			TRISB,A				;选择的PB1,PB0口设为输出
MAIN:									;主程序
		SNZB		B_MainLoop
		JP			MAIN
		CLRB		B_MainLoop
		CLRWDT
		INCR		DELAYCNT
		LDIA		.128				;16mS对PWM0占空比加一
		SUBA		DELAYCNT
		SNZB		STATUS,C
		JP			MAIN
		CLR			DELAYCNT
		INCR		PWMBUF
		LD			A,PWMBUF
		LD			PWMD0L,A
		JP			MAIN
;-------------------------------------------


;-------------------------------------------
;函数名称：INT_SERVICE
;函数功能：中断服务
;入口参数：无
;出口参数：无
;		   
;备	   注：
;-------------------------------------------
INT_SERVICE：
INT_IN:
		LD  		GPR0,A				;中断现场保护
		SWAPR		GPR0
		SWAPA		STATUS
		LD  		GPR1,A					
INT_TMR2:
		CLRB		PIR1,TMR2IF			;清中断标志
		SETB		B_MainLoop
		
INT_BACK:
		SWAPA		GPR1
		LD  		STATUS,A
		SWAPA		GPR0   				;中断返回
		RETI 		