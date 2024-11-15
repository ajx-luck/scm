;-------------------------------------------

;程序名称：Timer2定时中断程序
;日期版本：2021/1/20 <V1.0>

;备注：定时时间计算方法
;         时钟输入为系统指令时钟（即为Fosc/4）
;         定时时间T = {1/[(Fosc/4)*预分频比*后分频比]}*PR2
;         本程序计算示例：
;         T = {1/[(8/4)*1*1]}*250
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
		LDIA		00H
		OPTION							;预分频器分配给TMR0
		CLR			TMR0				;初始化TMR0
		
		LDIA		070H				;8M内部时钟
		LD			OSCCON,A
		
		CLR			TRISB
		
		CALL		INIT_TMR2
MAIN:									;主程序
		CLRWDT
		
		JP			MAIN
;-------------------------------------------

;-------------------------------------------
;函数名称：INIT_TMR2
;函数功能：初始化TMR2
;入口参数：无
;出口参数：无
;		   
;备	   注：
;-------------------------------------------
INIT_TMR2:
		LDIA		.250				;赋初值，定时125US
		LD			PR2,A
		
		CLRB		PIR1,TMR2IF			;清中断标志位
		
		LDIA		04H					;开启Timer2，预分频值为1，后分频比为1:1
		LD			T2CON,A
		
		SETB		PIE1,TMR2IE			;允许Timer2中断
		LDIA		0C0H				;允许所有未被屏蔽的中断、外设中断
		LD			INTCON,A
INIT_TMR2_BACK:
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
INT_TMR2:
		CLRB		PIR1,TMR2IF			;清中断标志
		
		LDIA		0FFH
		XORR		PORTB
INT_BACK:
		SWAPA		GPR1
		LD  		STATUS,A
		SWAPA		GPR0   				;中断返回
		RETI 				