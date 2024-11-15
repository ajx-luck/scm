;-------------------------------------------

;程序名称：Timer0定时中断程序
;日期版本：2021/1/20 <V1.0>

;备注：定时时间计算方法
;         定时时间T = {1/[(Fosc/4)*预分频比]}*(256-TMR0)
;         本程序计算示例：
;         T = {1/[(8/4)*1/2]}*(256-131)
;		    = 125 us 

;*公司网址 www.mcu.com.cn
;					WWW.SCMCU.COM
;-------------------------------------------


#INCLUDE	SC8P1712E.H



GPR0		EQU			?				;用于中断服务中保存ACC
GPR1		EQU			?				;用于中断服务中保存FLAGS

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
		
		CLR			TRISB
		
		CALL		INIT_TMR0
MAIN:									;主程序
		CLRWDT
		
		JP			MAIN
;-------------------------------------------

;-------------------------------------------
;函数名称：INIT_TMR0
;函数功能：初始化TMR0
;入口参数：无
;出口参数：无
;		   
;备	   注：
;-------------------------------------------
INIT_TMR0：
		LDIA		00H				;Timer0使用内部时钟Focs/4，预分频比为1:2
		LD			OPTION_REG,A
		
		LDIA		.131				;赋予初始值
		LD			TMR0,A
		LDIA		0A0H				;允许所有未被屏蔽的中断、禁止外设中断，使能Timer0
		LD			INTCON,A
INIT_TMR0_BACK:
		RET
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
INT_TMR0:
		CLRB		INTCON,T0IF			;清中断标志
		
		LDIA		.131				;更新赋予初始值
		ADDR		TMR0
		
		LDIA		0FFH
		XORR		PORTB
INT_BACK:
		SWAPA		GPR1
		LD  		STATUS,A
		SWAPA		GPR0   				;中断返回
		RETI 				