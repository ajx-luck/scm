;S1_VAL,设特殊标志，
;1：S1_VAL,2，关机标志
;2：强度加到12, S1_VAL,0=1
;3：强度减到1.  S1_VAL,0=1
;4: 单按        S1_VAL,7=1
;************************************ 
DELAY5MS:  
        CLRWDT
		LDIA         .40             ;40*0.125=5MS  
		XORA         TCOUNT
		SNZB         FLAGS,Z
		JP           DELAY5MS
		CLR 		 TCOUNT          ; 			   								        														
K_SCAN:	         
        SNZB         P0,0           ;按键开关
        JP           KEY_1   	  									 
		JP           KEY_OPEN		
KEY_1:                              ;模式
        SZB          KEY_VAL,0
        JP           KEY_RET
        LD           A,CNT_L
        XORIA        2              ;10MS
        SNZB         FLAGS,Z
        JP           KEY_HOLD
		SETB         KEY_VAL,0
        SETB         KEY_VAL,1								     
        JP           KEY_RET		
	   				
KEY_HOLD:                 
        INCR         CNT_L
        JP           KEY_RET
KEY_OPEN:                           
        CLR          KEY_VAL
        CLR          CNT_L
        JP           KEY_RET		
KEY_RET:     				  	 											
		RET		     00H
;**************************************		  	