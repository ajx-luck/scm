;***************************************** 
MODE_0: ;1档一直消毒，按键关闭      	
		CLRB        PORTB,3             ;LED灯指示
		CLRB        F_ONOFF             ;不定时
		SETB        S1_VAL,7            ;BI 1声
		CLR         CNT0
		CLR         CNT1				
XD_QL_01:		
		CALL        DELAY5MS           ;5MS
		SZB         KEY_VAL,1          ;有按键
		JP          WORK_OFF		   ;bibibi后关机	
		LDIA        B'00000110' 
		ANDA        PORTB
		XORIA       B'00000110'        ;PB1,PB2全是高
		SZB         STATUS,Z		
		JP          XD_01a             ;全是高
		JP          XD_01b             ;不同
XD_01a:
        SNZB        PORTB,0
		SETB        S1_VAL,0           ;BI 2声
        SETB        PORTB,0            ;消毒控制OFF
		INCR        CNT0
		LDIA        .25                ;60*6=300MS
		XORA        CNT0
		SNZB        STATUS,Z
		JP          XD_QL_01
		LDIA        B'00001000'        ;PORTB,3   闪
		XORR        PORTB
		CLR         CNT0
		JP          XD_QL_01
			
XD_01b:
        SZB         PORTB,0
		CLR         CNT0
	;	SETB        S1_VAL,7           ;BI 1声
        CLRB        PORTB,0            ;消毒控制ON
		SETB        PORTB,3            ;消毒灯亮
		JP          XD_QL_01		
;**********************************		
MODE_1: ;2档定时10分钟      	
		CLRB        PORTB,3             ;控制人体感应地线
		SETB        F_ONOFF             ;定时
		SETB        S1_VAL,7            ;BI 1声
		CLR         CNT0
		CLR         CNT1		

XD_QL_02:		
		CALL        DELAY5MS           ;5MS
		SZB         KEY_VAL,1          ;有按键
		JP          WORK_OFF		   ;bibibi后关机	
		SZB         S1_VAL,2
		JP          WORK_OFF
		INCR        CNT0
		LDIA        .25                ;30*5=150MS
		XORA        CNT0
		SNZB        STATUS,Z
		JP          XD_02c
		LDIA        B'00001000'        ;PORTB,3   闪
		XORR        PORTB
		CLR         CNT0
XD_02c:		
		LDIA        B'00000110' 
		ANDA        PORTB
		XORIA       B'00000110'        ;PB1,PB2全是高
		SZB         STATUS,Z		
		JP          XD_02a             ;全是高
		JP          XD_02b             ;不同
XD_02a:
        SNZB        PORTB,0
		SETB        S1_VAL,0           ;BI 2声
        SETB        PORTB,0            ;消毒控制OFF
		JP          XD_QL_02
			
XD_02b:
        SZB         PORTB,0
		CLR         CNT0
	;	SETB        S1_VAL,7           ;BI 1声
        CLRB        PORTB,0            ;消毒控制ON
		CLRB        PORTB,3            ;消毒灯亮
		JP          XD_QL_02		
;***************************************
WORK_OFF:	
        SETB        PORTB,3
        CLR         WORK	
        SETB        S1_VAL,2           ;BIBIBI
		CALL        DELAY500MS
		CALL        DELAY500MS
		JP          WORK_SLEPP	
;*****************************************       		