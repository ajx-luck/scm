;-------------------------------------------

;程序名称：休眠模式及唤醒程序
;日期版本：2021/1/20 <V1.0>

;备注：在CONFIG配置中WDT已被禁止，休眠模式下利用PORTB电平变化唤醒 

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
		
MAIN:									;主程序
		CLRWDT
		
		CALL		SLEEP_MODE
		
		JP			MAIN
;-------------------------------------------

;-------------------------------------------
;函数名称：SLEEP_MODE
;函数功能：进入休眠模式
;入口参数：无
;出口参数：无
;		   
;备	   注：
;-------------------------------------------
SLEEP_MODE:
		CLR			INTCON
		CLR			OPTION_REG
		
		CLR			ANSEL				;都为数字通道
		CLR			ANSELH
		
		CLR			TRISA
		LDIA		B'00000100'			
		LD			TRISB,A
				
		CLR			WPUA
		LDIA		B'00000100'			;PORTB2上拉输入
		LD			WPUB,A
				
		CLR			PORTA				;关闭所有输出
		CLR			PORTB
			
		LDIA		B'00000100'			;允许RB2的IO口电平变化中断
		LD			IOCB,A
		SETB		INTCON,RBIE			;允许PORTB电平变化中断
		SETB		INTCON,GIE			;GIE = 0时，唤醒后执行SLEEP后程序;GIE = 1时，唤醒后跳至中断服务
		
		CLR			ADCON0				;关闭所有模块
		CLR			ADCON1
		CLR			PWMCON
		CLR			PWMCON1
		CLR			WDTCON				;关闭看门狗
		
		LD			A,PORTB				;读PORTB值以锁存
		
		CLRWDT
		STOP							;进入休眠模式
		
		NOP
		NOP								;休眠唤醒后响应完中断后从此处开始运行
		CLRWDT
		
		SETB		WDTCON,0			;重新使能看门狗
SLEEP_MODE_BACK:
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
INT_PB:
		CLRB		INTCON,RBIF			;清中断标志
		LD			A,PORTB				;读PB口寄存器状态
		LDIA		0FFH
		XORR		PORTA
		
INT_BACK:
		SWAPA		GPR1
		LD  		STATUS,A
		SWAPA		GPR0   				;中断返回
		RETI 				