;S1_VAL,设特殊标志，
;1：S1_VAL,2，关机标志
;2：强度加到12, S1_VAL,0=1
;3：强度减到1.  S1_VAL,0=1
;4: 单按        S1_VAL,7=1
;************************************ 
DELAY5MS:  
        CLRWDT
		LDIA         .40  ;40          ;40*0.125=5MS  
		XORA         TCOUNT
		SNZB         FLAGS,Z
		JP           DELAY5MS
		CLR 		 TCOUNT         ; 			   								        														
K_SCAN:	         
        SNZB         P0,0           ;模式开关
        JP           KEY_1   	  									 
		JP           KEY_OPEN		
KEY_1:                              ;模式
        SZB          KEY_VAL,0
        JP           KEY_RET
        LD           A,CNT_L
	;	CLRB         PORTB,4        ;LED指示灯灭
        XORIA        2             ;20MS
        SNZB         FLAGS,Z
        JP           KEY_HOLD
		SETB         KEY_VAL,0
    ;   SETB         KEY_VAL,1
	;	SETB         PORTB,4								     
        JP           KEY_RET		
	   				
KEY_HOLD:                 
        INCR         CNT_L
        JP           KEY_RET
KEY_OPEN:    
        LD           A,CNT_L
		SZB          FLAGS,Z
		JP           KEY_OPEN_01 
		SZB          S1_VAL,0        ;是否长按处理了，放开了
		JP           KEY_RET
        LDIA         .2
		SUBA         CNT_L
		SZB          FLAGS,C
		SETB         KEY_VAL,1  
KEY_OPEN_01:		                    
        CLRB         KEY_VAL,0
        CLR          CNT_L
        JP           KEY_RET		
KEY_RET:     				  	 											
		RET		     00H
;**************************************		  	