;-------------------------------------------

;程序名称：INT外部中断程序
;日期版本：2021/1/20 <V1.0>

;备注：

;*公司网址 www.mcu.com.cn
;					WWW.SCMCU.COM
;-------------------------------------------

#INCLUDE	SC8P1712E.H


GPR0		EQU			?				;用于中断服务中保存ACC
GPR1		EQU			?				;用于中断服务中保存STATUS

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
		
;-------------------	
		CLRB		OPTION_REG,INTEDG	;INT引脚下降沿触发,置1为上升沿触发
		LDIA		090H				;允许所有未被屏蔽的中断、禁止外设中断，使能INT外部中断
		LD			INTCON,A
;-------------------
MAIN:									;主程序
		CLRWDT
		
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
INT_INT:
		CLRB		INTCON,INTF			;清中断标志
		
INT_BACK:
		SWAPA		GPR1
		LD  		STATUS,A
		SWAPA		GPR0   				;中断返回
		RETI 				