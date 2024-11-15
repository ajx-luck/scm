
;**********************************************
;触摸库程序使用范例,此程序仅供参考
;**********************************************

;工作RAM

TCOUNT		EQU 		？	
TEMP        EQU         ?
TEMPL		EQU			?
COUNT       EQU         ?

KEYF_OLD	EQU			?

TIME		EQU			?

WORK		EQU			?
F_ONOFF		EQU			WORK,0



GPR0		EQU 		70H
GPR1		EQU 		71H        
BANK_RP0		EQU		STATUS,5
BANK_RP1		EQU		STATUS,6
;*********************************************
;RAM定义选择为EQU ?，不要定义为直接地址。
;ROM地址1AA以后为触摸库占用；
;**********************************************
;**********************************************
		ORG 		00H
   		JP  		START
		ORG 		04H
;**********************************************
        LD  		GPR0,A			;中断现场保护
		SWAPR		GPR0
		SWAPA		STATUS
		LD  		GPR1,A
		CLRB		BANK_RP0
		CLRB		BANK_RP1
		SZB			PIR1,TMR2IF
		JP			INT_TMR2
		LDIA		0C0H
		LD			INTCON,A
		JP			INT_EXIT
INT_TMR2:
		CLRB		PIR1,TMR2IF		;清中断响应标志位
		INCR		TCOUNT
;**********************************************
INT_EXIT:
		SWAPA		GPR1
		LD  		STATUS,A
		SWAPA		GPR0
		RETI
;**********************************************
;**********************************************

;**********************************************
;**********************************************
START:
		NOP
		CLRWDT
		
		LDIA		071H
		LD			OSCCON,A		;16MHz
		CLR			INTCON
		
;-----------初始化I/O------------------------
		LDIA		00H
		LD  		PORTB,A
		LD  		TRISB,A			
		LD  		PORTB,A	
	
;-----------清寄存器10~7FH-------------------
		CLRB		STATUS,IRP
CLR_RAM：
		LDIA		1FH					;从20H开始
		LD  		FSR,A
CLR_RAM_LOOP:
		INCR		FSR
		CLR 		INDF
		LDIA		07FH
		ANDA		FSR
		SUBIA		07FH				;20-7F,A0-FF
		SNZB 		STATUS,Z
		JP  		CLR_RAM_LOOP
		LDIA		20H					;当前是7FH，增加20H，开始清A0-FF
		ADDR		FSR
CLR_RAM_LOOP_H:
		INCR		FSR
		CLR 		INDF
		LDIA		0BFH
		SUBA		FSR					;20-7F,A0-FF
		SNZB 		STATUS,Z
		JP  		CLR_RAM_LOOP_H
		
CLR_RAM_BACK:
		
;----------------------------------------------
INIT_LOOP:							;上电延时约400MS
		JP			$+1
		JP			$+1
		JP			$+1
		SZDECR		COUNT
		JP  		INIT_LOOP
		CLRWDT
		SZDECR		TEMP
		JP  		INIT_LOOP
	
		CALL        SET_SYS			;配置TMR2
;**********************************************
;**********************************************
MAIN:
        
		LDIA		.32				;125us*32=4ms一个主循环
		SUBA		TCOUNT
		SNZB		STATUS,C
		JP  		MAIN
;**********************************************
		CLR 		TCOUNT
		CLRWDT
		
		CALL		SET_SYS		
		CALL  		KSCAN           ;触摸扫描程序
		CALL        MAINK
		CALL		SET_WORK
		CALL		WORK_SLEPP
		JP  		MAIN


;**********************************************
;**********************************************
SET_SYS:
		LDIA		.250
		LD  		PR2,A
		LDIA		02H
		LD			PIE1,A
		LDIA		0C0H
		LD  		INTCON,A		;定时2中断使能
		LDIA		04H
		SUBA		T2CON			;T2CON为04时不写
		LDIA		04H	
		SNZB 		STATUS,Z	
		LD  		T2CON,A			;写操作会影响计时，在T2CON没有乱的时候不写	
		RET


;**********************************************
;按键处理程序
;每次检测到按键翻转IO口输出电平
;处理程序仅供参考，具体处理需根据实际应用修改
;**********************************************
MAINK:
		LD			A,KEYF			;KEYF是触摸库定义的有键标志位
		SZB			STATUS,Z
		JP			MAINK_NO
		
		LD			A,KEYF
		XORA		KEYF_OLD		;相同
		SZB			STATUS,Z
		JP			MAINK_HAVE_KEY
		LD			A,KEYF
		LD			KEYF_OLD,A
		JP			MAINK_BACK
MAINK_HAVE_KEY:		
		SNZB		KEYF_OLD,0
		JP			MAINK_HAVE_KEY_2
		LDIA		08H
		XORR		PORTB
		
MAINK_HAVE_KEY_2:		
		SNZB		KEYF_OLD,1
		JP			MAINK_HAVE_KEY_3
		LDIA		08H
		XORR		PORTB
MAINK_HAVE_KEY_3:		
		SNZB		KEYF_OLD,2
		JP			MAINK_HAVE_KEY_4
		LDIA		08H
		XORR		PORTB	
MAINK_HAVE_KEY_4:		
		SNZB		KEYF_OLD,3
		JP			MAINK_BACK
		LDIA		20H
		XORR		PORTB	
		JP			MAINK_BACK
MAINK_NO:
		CLR			KEYF_OLD
MAINK_BACK:
		RET

;**********************************************
;**********************************************
SET_WORK:
		LD			A,KEYF
		SZB			STATUS,Z
		JP			SET_WORK_BACK
		
		SNZB		KEYF,0
		JP			SET_WORK_ON
		
		CLRB		F_ONOFF
	;	SZB			PORTB,3
SET_WORK_ON:
		SETB		F_ONOFF
		
		SNZB		F_ONOFF
		CLRB		PORTB,3
		SZB			F_ONOFF
		SETB		PORTB,3
SET_WORK_BACK:
		RET

;**********************************************
;进入休眠
;**********************************************
WORK_SLEPP:
#if 	C_KEY_WAKEUP != 0
		SZB			F_ONOFF
		CLR			TIME

		;关机500MS系统进入休眠
		INCR		TIME
		LDIA		250					;4MS*250=1000MS
		SUBA		TIME				;初始上电需等触摸基准值稳定后再休眠
		SNZB		STATUS,C			;理论上最好2S以上
		RET
		CLR			TIME

		;进入休眠前关掉所有功能模块,以降低休眠电流

		CLR			INTCON			;关断ADC模块及中断使能；
		CLR   		PIE1
		CLR			PIR1
		CLR			PWMCON0				;关断PWM

		;进入休眠前,必须固定口线电平,这儿全部输出低电平,并关闭所有上拉电阻
		
		CLR			TRISB
		CLR			PORTB
		
		CLR			WPUB
	;**********************************************************	
	;**********如用RB唤醒，可用下列语句************************
		;LDIA		04H
		;LD			TRISB,A			;
		;LD			WPUB,A
		;SETB		INTCON,RBIE
		;SETB		IOCB,2
		;CLRB		INTCON,RBIF
		;LD			A,PORTB
	;******************************************************
	
		CALL		_KSCAN_ENTER_SLEEP	;进入休眠模式
		
	;*************如用RB唤醒，可用下列语句**********************
		;SZB		INTCON,RBIF
		;CLRB		INTCON,RBIF
	;*******************************************************
		;休眠被唤醒,重新配置中断等SFR,使系统进入正常工作
		CALL		SET_SYS
#endif		
		RET

;**********************************************
;调用按键库文件
;**********************************************
KSCAN:
        #INCLUDE	"Touch_Kscan_Library.lib"
;**********************************************
		END

