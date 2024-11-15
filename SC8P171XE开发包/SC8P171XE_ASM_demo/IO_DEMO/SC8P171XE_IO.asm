;-------------------------------------------

;程序名称：IO程序
;日期版本：2021/1/20 <V1.0>

;备注：

;*公司网址 www.mcu.com.cn
;					WWW.SCMCU.COM
;-------------------------------------------

#INCLUDE	SC8P1712E.H


POUT		EQU			PORTA,2			;定义RA2口 取名POUT
PIN0		EQU			PORTA,0			;定义RA0口 取名PIN0
PIN1		EQU			PORTA,1			;定义RA1口 取名PIN1

ORG			0000H						
JP			START						

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

		LDIA		B'00000011'			;配置上拉情况
		LD			WPUA,A
		LDIA		B'00000000'
		LD			WPUB,A
				
		LDIA		B'00000011'			;配置IO状态
		LD			TRISA,A
		LDIA		B'00000000'
		LD			TRISB,A
				
MAIN:									;主程序
		CLRWDT

PIN0_JUDGE:		
		SZB			PIN0
		JP			PIN0_1
		JP			PIN0_0
PIN0_1:
		LDIA		B'11111111'			;PIN0 = 1
		XORR		PORTB
		JP			PIN1_JUDGE
PIN0_0:									;PIN0 = 0
		CLR			PORTB

;----------
PIN1_JUDGE:		
		SZB			PIN1
		JP			PIN1_1
		JP			PIN1_0
PIN1_1:
		SETB		POUT				;PIN1 = 1
		JP			MAIN
PIN1_0:
		CLRB		POUT				;PIN1 = 0
		JP			MAIN
;-------------------------------------------
