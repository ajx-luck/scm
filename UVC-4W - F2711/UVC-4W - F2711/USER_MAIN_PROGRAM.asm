
		#INCLUDE		SC8F2811B.H

	;	#INCLUDE		"Touch_Kscan_Library.h"


;注意事项
;寄存器：KEYF、KEYF1、
;标志位：B_KEY_EN、B_KEY_LONG、B_KEY_UP、B_KEY_SLP、B_KEY_WAKE	
;为BANK0的空间，使用时需要注意页的切换

;**********************************************
;**********************************************

GPR0		EQU 		0EH	        ;中断现场保护寄存器必须用BANK1,BANK0公用寄存器
GPR1		EQU 		0FH         ;中断现场保护寄存器必须用BANK1,BANK0公用寄存器
TCOUNT		EQU 		?			;系统计时，125US加1

TIME		EQU			?
WORK		EQU			?
F_ONOFF		EQU			WORK,0
F_W_EN      EQU         WORK,1      ;消毒工作状态
F_L_EN      EQU         WORK,2      ;手电工作标志
F_Y_EN      EQU         WORK,3      ;低电压标志

KEY_VAL     EQU         ?
S1_VAL      EQU         ?
;工作RAM
TEMP            EQU			?           ;   
;C18             EQU		?
;S14             EQU		?
;R15             EQU		?
;B16             EQU		?
S_STATUS        EQU		    ?
G17             EQU			?
COUNT       	EQU         ?
MODE_V          EQU         ?
;KEYF_OLD		EQU			?

;TIME1			EQU			?			;休眠定时
;TIME2			EQU			?
M1_VAL          EQU			?           ;模式值
L1_VAL          EQU			?           ;力度值

;R14             EQU	    ?
R16             EQU			?
R17             EQU			?
;R1A             EQU		?

CNT0            EQU			?
CNT1            EQU			?
CNT2            EQU			?
CNT3            EQU			?
CNT_L           EQU			?
CNT_H           EQU			?
CNT_a           EQU			?         ;BZ
CNT_b           EQU			?         ;BZ
R2A             EQU			?
R2B             EQU			?
R2C             EQU			?
;R2D             EQU			?

;PWML			EQU			?			;存放语音TG2的PULSE
;TEMP_H			EQU			?			;临时寄存器
;TEMP_L			EQU			?
;SEC0		    EQU			?			;LED灯模式
;COLOR           EQU			?       ;灯的色值
R20             EQU			?
R21             EQU			?
R22             EQU			?
MM1             EQU			?
MM2             EQU			?
B               EQU			?
DEL_10MS_L      EQU			?
DEL_10MS_H      EQU			?
MM1_SAVE        EQU			?
;KEY_TIME        EQU			?
;KEY_OPT         EQU			?
;KEY_PRE         EQU			?
TIME_L          EQU			?
TIME_H          EQU			?    
RECNT           EQU			?
RDATAL          EQU			?
RDATAH          EQU			?
RUSERL          EQU			?
RUSERH          EQU			?
RKEY            EQU			?
OUT_            EQU			2
IR              EQU         1
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
		INCR		TCOUNT		
		SZB         P0,0    	
		JP          KEY_BACK_0
		SZB         S1_VAL,0        ;是否长按没放开
		JP          INT_BACK
		SZDECR      CNT0            ;255*0.125=32MS
		JP          INT_BACK
		INCR        CNT1
		LDIA        .140;.25        ;156*32=5S
		SUBA        CNT1
		SNZB        FLAGS,C
		JP          INT_BACK
		SETB        KEY_VAL,7
		SETB        S1_VAL,0        ;有长按一次标志
		CLR         CNT_L
		JP          INT_BACK	
KEY_BACK_0:
        CLR         CNT0
		CLR         CNT1
		CLR         S1_VAL		     ;可以再长按了      		        
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
		CLR 		P0
		CLR			P1
		LDIA		07H
		LD			P2,A
		
		LDIA		B'10100010'     ;P0,6;P0,4输出,P0,5上拉输入
		LD  		P0CH,A	
		
		LDIA		B'11100000'		;P0,0为按键,P0,1=SW,P02-OUT,P0,3=AD
		LD  		P0CL,A	  
		     
		LDIA		B'10000010'    ;P1,6输出，P1,5，上拉输入,P1,4-OUT
		LD  		P1CH,A
		LDIA  		B'10101010'
		LD  		P1CL,A

		LDIA		B'10010010'		;P2.0编码输出
		LD  		P2C,A			;P2.2 为防水/抗干扰选择
		
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
        JP   		WORK_SLEPP
;-----------初始化RAM-------------------------
INIT_RAM:
        CLRB         FLAGS,4            ;BANK0
 		CLR			 PWM8DATA
		CLR			 PWM10DATA
		CLR			 TABLE_SPL	        ;
		CLR			 BUZCON
		CLR			 INT_EXT		    ;
		CLR			 TABLE_SPH	        ;

		LDIA		 .6
		LD  		 TMR1,A				; TMR1初值设定
		LDIA		 80H				; TMR1设定为定时器，分频比1：1
		LD  		 TMR1C,A
		SETB		 TMR1C,4			; TMR1开启
		
		LDIA		 01H
		LD  		 SYS_GEN,A			;中断使能，AD使能
		LDIA		 08H				;TMR1中断使能，其它中断关闭
		LD  		 INT_EN,A   
		    		
DJ_01:
  	    LDIA         100;080H           ;计时500MS  按第1次
		LD           CNT_a,A
DJ_02:;单击		
		CALL         DELAY5MS		
		SZB          KEY_VAL,1
		JP           SJ_01	
		SZDECR       CNT_a		
		JP           DJ_02              
		JP           WORK_SLEPP
SJ_01:;双击
	    CLRB         KEY_VAL,1
		LDIA         100;080H            ;计时500MS  按第1次
		LD           CNT_a,A
SJ_02:
        CALL         DELAY5MS
		SZB          KEY_VAL,7          ;长按5S了
		JP           XD_QL              ;
		SZB          KEY_VAL,1	
		JP           SD_QL
		SZDECR       CNT_a
		JP           SJ_02
		SNZB         P0,0
		JP           SJ_01              ;重新计数500MS
		JP           WORK_SLEPP		
		
;*****************************************
SD_QL:  ;打开手电
        CLRB         FLAGS,4            ;BANK0 
	;	CLRB         KEY_VAL,7
	    SETB         F_ONOFF
        CLRB         KEY_VAL,1
		LDIA         B'01000000'        ;P0,6
        XORR         P0                 ;手电
		JP           M_LOOP
;*****************************************
XD_QL:  ;打开消毒
        CLRB         FLAGS,4            ;BANK0 
		SETB         F_ONOFF
        CLRB         KEY_VAL,1
		CLRB         KEY_VAL,7        
		LDIA         B'00000100'        ;P2,2
        XORR         P2                 ;消毒 
		SNZB         P2,2
		SETB         F_W_EN             ;消毒使能
		SZB          P2,2
		CLRB         F_W_EN 
		JP           M_LOOP    	
M_LOOP:				
		CALL         DELAY5MS           ;5MS
		SZB          KEY_VAL,1          ;有短按？		
		JP           SD_QL
		SZB          KEY_VAL,7          ;有长按？
		JP           XD_QL
		SZB          P0,1               ;SW2 
		JP           M_LOOP1
		SETB         P2,2               ;消毒OFF
		JP           AD_TEST
M_LOOP1:	
        INCR         CNT3
		LDIA         200;40                 ;40*5=200MS查询一次
		XORA         CNT3
		SNZB         FLAGS,Z
		JP           AD_TEST    	
		SZB          F_W_EN             ;查询消毒状态是什么？
		CLRB         P2,2
		CLR          CNT3
AD_TEST:	       	
		CALL         Charge_0			
		INCR         CNT2
		LDIA         100                ;100*2.5MS=250MS
		XORA         CNT2
		SZB          FLAGS,Z
		JP           XD_ON_01
		SNZB         F_Y_EN
		SETB         P2,0               ;红灯灭
		JP           XD_BACK
XD_ON_01:
		CLR          CNT2               ;重新计数
		LDIA         B'00000000'	
		SZB          F_Y_EN
		LDIA         B'00000001'        ;P2,0 红灯 是否闪
		XORR         P2
		JP           XD_BACK				 			
XD_BACK:
        SZB          F_W_EN               ;是否在工作，手电与消毒		
        JP           M_LOOP	
		SZB          P0,6
		JP           M_LOOP
		CLRB         F_ONOFF
		JP           WORK_SLEPP			
;*****************************************
;*****************************************
Charge_0:        
        CLRB         FLAGS,4
		CLRWDT
		LDIA		 B'11100000'		 ;P0,3=AD
		LD  		 P0CL,A
		SETB         SYS_GEN,ADC_EN      ;
        CALL         Delay_125us
		LDIA         B'00110000'         ;选择AN3为ad转换,P0,3
        LD           ADCON,A             
        nop
        nop
		
        SETB         ADCON,CONV          ;CONV下降沿开始转换
        NOP
		NOP
		NOP
        CLRB         ADCON,CONV          ;开始转换
AD_WAIT:
        SNZB         ADCON,EOC
		JP           AD_WAIT
		NOP
		LD           A,ADDATAH
		SUBIA        .86                 ;约6.2V  ;256/3.3*/86 
		SZB          FLAGS,C
		SETB		 F_Y_EN	             ;设置低6电压标志
        CLRB         SYS_GEN,ADC_EN      ;关AD 
	    RET 		 00H 		
;*************************************		
Delay_125us:		
        LDIA        .20
		LD          COUNT,A
D2:									
		CLRWDT
		SZDECR		COUNT
		JP		    D2		
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
				
;********************************************
WORK_SLEPP:
		SZB			F_ONOFF
		CLR			TIME
		                               ;关机500MS系统进入休眠
		INCR		TIME
		LDIA		5					;2.5MS*200=500MS
		SUBA		TIME
		SNZB		FLAGS,C
        JP          WORK_SLEPP
		CLR			TIME
		
        
		CLR         KEY_VAL
		CLR         S1_VAL
		CLR         CNT_a
		CLR         CNT_b
		CLR         CNT0
		CLR         CNT1
		CLR         R16
		CLR         R17
	;	CLR         MM1

USER_ENTER_SLEEP:
		;进入休眠前关掉所有功能模块,以降低休眠电流
		CLR         INT_EN
		CLR         SYS_GEN
		CLR         FLAGS
		CLR         CNT_a
		CLR         CNT_b
		CLR			ADCON
		CLR			COMPCON
		CLR			BUZCON
		CLR			KEY_C
		CLR			KEY_C1
		CLR			PWM8CON
		CLR			PWM10CON
		SNZB        P0,0
		JP          USER_ENTER_SLEEP
	;	CLR         WORK
		
		;进入休眠前,必须固定口线电平
	;	CLRB 		P0,4
		CLRB		P0,6
		CLRB        P0,7
	;	SETB        P2,2
		LDIA		B'10100010'     ;P0,6;P0,4输出,P0,5上拉输入
		LD  		P0CH,A	
		
		LDIA		B'11101000'		;P0,0为按键,P0,1=SW OUT,P02-OUT,P0,3=AD
		LD  		P0CL,A	  
		     
		LDIA		B'10000010'    ;P1,6输出，P1,5，上拉输入,P1,4-OUT
		LD  		P1CH,A
		LDIA  		B'10101010'
		LD  		P1CL,A

		LDIA		B'10010010'		;P2.0编码输出
		LD  		P2C,A			;P2.2 为防水/抗干扰选择
		CLR         P0
		CLR         P1	
		LDIA		0FH
		LD			P2,A
		CLRWDT
		NOP
		STOP
		NOP
		CLRWDT
		CLR         FLAGS
		CLR         CNT0 
		CLR         CNT1		
		LDIA		B'11100000'		;P0,0为按键,P0,1=SW OUT,P02-OUT,P0,3=AD
		LD  		P0CL,A
KEY_START:	
     ;   SZB         P0,0
	;	JP          INIT_RAM        
     ;   CALL        DELAY_50_MS					
	;	SZDECR      CNT0        
	;	JP          KEY_START		
	;	SETB        KEY_VAL,7	   ;开机HOLD 标志
	;	SNZB        P0,1
	;	JP          USER_ENTER_SLEEP
		JP          INIT_RAM 
;********************************************
	;	#INCLUDE    "INT_TMR1.ASM"
		#INCLUDE    "KEY-01.ASM"
;********************************************
		END

