#INCLUDE		SC8F2811B.H

GPR0		EQU 		0EH	        ;中断现场保护寄存器必须用BANK1,BANK0公用寄存器
GPR1		EQU 		0FH         ;中断现场保护寄存器必须用BANK1,BANK0公用寄存器
TCOUNT		EQU 		?			;系统计时，125US加1
LOOPFLAG	EQU			?
INTCOUNT	EQU			?
KEY00COUNT	EQU			?
KEY01COUNT	EQU			?
KEY06COUNT	EQU			?

R2A             EQU			?
R2B             EQU			?
R2C             EQU			?
;--------------------------------------------
;工作RAM
;**************************************

;;********************************************************
;*********************************************************
		ORG 		00H
   		JP  		START
		ORG 		01H
		JP  		INT_SERVICE
;--------------------------------------------
INT_SERVICE:
		LD  		GPR0,A			;中断现场保护
		SWAPR		GPR0
		SWAPA		FLAGS
		LD  		GPR1,A		
;--------------------------------------------
		CLRB        FLAGS,4		    ;BANK0
		CLR 		INT_FLAG
		LDIA  		06H 
		LD  		TMR1,A
		INCR		TCOUNT
		INCR		INTCOUNT		
		JP          INT_BACK	
   		        
;--------------------------------------------							
INT_BACK:
		SWAPA		GPR1
		LD  		FLAGS,A
		SWAPA		GPR0			;中断返回
		RETI
;********************************************

;********************************************
;********************************************

;********************************************
START:
		NOP
		NOP
		CLRWDT								;上电清WDT（必要）
;-----------初始化I/O-----------------------;设置IO口的初始状态
		NOP
		NOP
		NOP
		LDIA		018H				;P0.3 P0.4输出高
		LD  		P0,A 
		LDIA		00H
		LD			A,P0
		CLR			P1
		CLR			P2
		
		LDIA		B'10010110'     ;P0.7输出；P0,6输入;P0,4输出,P0,5输入
		LD  		P0CH,A	
		
		LDIA		B'10010101'		;P0.0  按键  P0.1  按键  P0.2  平时为低 P0.3  解锁LED灯
		LD  		P0CL,A	  
		     
		LDIA		B'10000010'    ;P1,6输出，P1,5，上拉输入,P1,4-OUT
		LD  		P1CH,A
		LDIA  		B'10101010'
		LD  		P1CL,A

		LDIA		B'10010010'		;P2.0编码输出
		LD  		P2C,A			;P2.2 为防水/抗干扰选择
		
		LDIA		018H				;P0.3 P0.4输出高
		LD  		P0,A 
		
;-----------清寄存器 BANK0--------------------------
CLR_RAM:								;间接寻址清掉所有RAM
		CLRB        FLAGS,4             ;BANK0
		LDIA		0FH
		LD  		MP,A
CLR_LOOP:
		INCR		MP
		CLR 		IAR
		LDIA		07FH
		SUBA		MP
		SNZB		FLAGS,C
		JP  		CLR_LOOP
;***************清寄存器 BANK1************************
CLR_RAM_1:
        SETB        FLAGS,4             ;BANK1
		LDIA		02FH
		LD  		MP,A
CLR_LOOP_1:
		INCR		MP
		CLR 		IAR
		LDIA		07FH
		SUBA		MP
		SNZB		FLAGS,C
		JP  		CLR_LOOP_1
		
		CLR         08H
		CLR         0EH
		CLR         0FH
		CLR         25H
		CLR         26H
		CLR         27H
		CLR         2AH
		CLR         2BH
;-------------上电延时-----------------------
INIT_DELAY:
        CLRB        FLAGS,4
		LDIA		.0
		LD  		TCOUNT,A
INIT_LOOP:								;上电延时3*256*256*5/2=500MS
		CLRWDT
		SZDECR	    TCOUNT
		JP  		INIT_LOOP
;---------------------------------------------

;-----------初始化RAM-------------------------
INIT_RAM:
        CLRB         FLAGS,4            ;BANK0
 		CLR			 PWM8DATA
		CLR			 PWM10DATA
		CLR			 TABLE_SPL	        ;
		CLR			 BUZCON
		CLR			 INT_EXT		    ;
		CLR			 TABLE_SPH	        ;

		CLRB  TMR1C,TON  ;禁止 TMR1 定时器工作
		CLRB  INT_EN,EN_T1  ;禁止 TMR1 中断
		CLRB  INT_FLAG,F_T1  ;清零 TMR1 中断请求标志位
		LDIA  B'10000000' 
		LD  TMR1C,A  ;设置 TMR1 为定时器模式，分频比 1:1
		LDIA  06H 
		LD  TMR1,A  ;设置 TMR1 初值
		CLRB  INT_FLAG,F_T1  ;清零 TMR1 中断请求标志位
		SETB  INT_EN,EN_T1  ;使能 TMR1 中断
		SETB  SYS_GEN,INT_GEN  ;使能 INT_GEN
		SETB  TMR1C,TON  ;使能 TMR1 定时器
		


		
MAIN_LOOP:
		
		CALL         DELAY5MS           ;5MS
		
		
		


		JP			MAIN_LOOP
		
DELAY5MS:  
        CLRWDT
		LDIA         .40  ;40          ;40*0.125=5MS  
		XORA         TCOUNT
		SNZB         FLAGS,Z
		JP           DELAY5MS
		CLR 		 TCOUNT         ; 
		
KEYSCAN:
		SZB		P0,0			;为1则为按下了
		INCR	KEY00COUNT
		SZR		KEY00COUNT
		JP		KEY_INLOCK
		SZB		P0,1
		INCR	KEY01COUNT
		SZR		KEY01COUNT
		JP		KEY_INUNLOCK
		SZB		P0,6
		INCR	KEY06COUNT
		SZR		KEY06COUNT
		JP		KEY_OUTUNLOCK
		RET
KEY_INLOCK:							;内部锁定
		SZB		P0,0
		RET							;还在按下状态，直接返回
		CLR		KEY00COUNT			;松开状态了
		LDIA    40H				;点亮按键灯P1.6
		ORR		P1
		LDIA	0F7H			;关闭外部按键灯
		ANDR	P0
		

KEY_INUNLOCK:						;内部解锁

KEY_OUTUNLOCK:						;外部解锁
			
		
		RET		    00H

DELAY_50_MS:
		LDIA        40           ;20MS
		LD          R2A,A
L0b:
		LDIA        230          ;
		LD          R2C,A
L0a:                   
		CLRWDT
		SZDECR      R2C
		JP          L0a
		SZDECR      R2A
		JP          L0b
		RET		    00H