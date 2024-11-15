opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	79F5139
opt include "C:\Edward_work_FILE\work_file\开发文件\中微开发工具\CMS_IDE_V2.03.18_Beta3\data\include\79f5139.cgen.inc"
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
	FNCALL	_main,_Set_Usart_Async
	FNROOT	_main
	FNCALL	intlevel1,_Usart_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_Sendbuffer
	global	_Recebuffer
	global	_rececount
	global	_sendcount
	global	_RCREG
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_RCREG	set	26
	global	_TXREG
_TXREG	set	25
	global	_PIR2
_PIR2	set	13
	global	_PIR1
_PIR1	set	12
	global	_INTCON
_INTCON	set	11
	global	_PORTA
_PORTA	set	5
	global	_OERR
_OERR	set	193
	global	_FERR
_FERR	set	194
	global	_CREN
_CREN	set	196
	global	_RX9EN
_RX9EN	set	198
	global	_SPEN
_SPEN	set	199
	global	_RCIF
_RCIF	set	101
	global	_SPBRG
_SPBRG	set	153
	global	_OSCCON
_OSCCON	set	143
	global	_PIE2
_PIE2	set	141
	global	_PIE1
_PIE1	set	140
	global	_TRISA
_TRISA	set	133
	global	_TRMT
_TRMT	set	1217
	global	_SCKP
_SCKP	set	1219
	global	_SYNC
_SYNC	set	1220
	global	_TXEN
_TXEN	set	1221
	global	_TX9EN
_TX9EN	set	1222
	global	_TXIE
_TXIE	set	1124
	global	_RCIE
_RCIE	set	1125
; #config settings
	file	"UART.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_Sendbuffer:
       ds      4

_Recebuffer:
       ds      4

_rececount:
       ds      1

_sendcount:
       ds      1

	file	"UART.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
	clrf	((__pbssCOMMON)+6)&07Fh
	clrf	((__pbssCOMMON)+7)&07Fh
	clrf	((__pbssCOMMON)+8)&07Fh
	clrf	((__pbssCOMMON)+9)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_Set_Usart_Async:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_Usart_Isr:	; 1 bytes @ 0x0
??_Usart_Isr:	; 1 bytes @ 0x0
	ds	3
??_Set_Usart_Async:	; 1 bytes @ 0x3
??_main:	; 1 bytes @ 0x3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         10
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      3      13
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            88      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _Usart_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _Usart_Isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _Usart_Isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _Usart_Isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _Usart_Isr in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0       0
;!                    _Set_Usart_Async
;! ---------------------------------------------------------------------------------
;! (1) _Set_Usart_Async                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _Usart_Isr                                            3     3      0       0
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Set_Usart_Async
;!
;! _Usart_Isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      3       D       1       92.9%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       D       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            58      0       0       8        0.0%
;!BANK3               58      0       0       9        0.0%
;!BITBANK2            50      0       0      10        0.0%
;!BANK2               50      0       0      11        0.0%
;!DATA                 0      0       D      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 36 in file "C:\Users\edwar\Desktop\CMS79F5118_5139程序\Usart_Demo\Async_Usart_Demo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Set_Usart_Async
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\Users\edwar\Desktop\CMS79F5118_5139程序\Usart_Demo\Async_Usart_Demo.c"
	line	36
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\edwar\Desktop\CMS79F5118_5139程序\Usart_Demo\Async_Usart_Demo.c"
	line	36
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	38
	
l1142:	
# 38 "C:\Users\edwar\Desktop\CMS79F5118_5139程序\Usart_Demo\Async_Usart_Demo.c"
nop ;# 
	line	39
# 39 "C:\Users\edwar\Desktop\CMS79F5118_5139程序\Usart_Demo\Async_Usart_Demo.c"
clrwdt ;# 
psect	maintext
	line	41
	
l1144:	
;Async_Usart_Demo.c: 41: OSCCON = 0x71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	42
	
l1146:	
;Async_Usart_Demo.c: 42: INTCON = 0;
	clrf	(11)	;volatile
	line	44
	
l1148:	
;Async_Usart_Demo.c: 44: PIR1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(12)	;volatile
	line	45
	
l1150:	
;Async_Usart_Demo.c: 45: PIE1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(140)^080h	;volatile
	line	46
	
l1152:	
;Async_Usart_Demo.c: 46: PIR2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(13)	;volatile
	line	47
	
l1154:	
;Async_Usart_Demo.c: 47: PIE2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(141)^080h	;volatile
	line	49
	
l1156:	
;Async_Usart_Demo.c: 49: TRISA = 0B00000000;
	clrf	(133)^080h	;volatile
	line	50
	
l1158:	
;Async_Usart_Demo.c: 50: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	53
	
l1160:	
;Async_Usart_Demo.c: 53: Set_Usart_Async();
	fcall	_Set_Usart_Async
	line	56
	
l1162:	
;Async_Usart_Demo.c: 56: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	59
;Async_Usart_Demo.c: 59: while(1)
	
l727:	
	line	61
# 61 "C:\Users\edwar\Desktop\CMS79F5118_5139程序\Usart_Demo\Async_Usart_Demo.c"
clrwdt ;# 
psect	maintext
	line	63
	
l1164:	
;Async_Usart_Demo.c: 63: PORTA = Recebuffer[0];
	movf	(_Recebuffer),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	67
	
l1166:	
;Async_Usart_Demo.c: 67: if(TRMT)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u11
	goto	u10
u11:
	goto	l727
u10:
	line	69
	
l1168:	
;Async_Usart_Demo.c: 68: {
;Async_Usart_Demo.c: 69: TXREG = Sendbuffer[sendcount];
	movf	(_sendcount),w
	addlw	low(_Sendbuffer|((0x00)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(25)	;volatile
	line	71
;Async_Usart_Demo.c: 71: Sendbuffer[sendcount] ++;
	movf	(_sendcount),w
	addlw	low(_Sendbuffer|((0x00)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	line	73
	
l1170:	
;Async_Usart_Demo.c: 73: sendcount++;
	incf	(_sendcount),f
	line	74
	
l1172:	
;Async_Usart_Demo.c: 74: if(sendcount >= 4)
	movlw	low(04h)
	subwf	(_sendcount),w
	skipc
	goto	u21
	goto	u20
u21:
	goto	l727
u20:
	line	76
	
l1174:	
;Async_Usart_Demo.c: 75: {
;Async_Usart_Demo.c: 76: sendcount = 0;
	clrf	(_sendcount)
	goto	l727
	global	start
	ljmp	start
	opt stack 0
	line	81
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Set_Usart_Async

;; *************** function _Set_Usart_Async *****************
;; Defined at:
;;		line 134 in file "C:\Users\edwar\Desktop\CMS79F5118_5139程序\Usart_Demo\Async_Usart_Demo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	134
global __ptext1
__ptext1:	;psect for function _Set_Usart_Async
psect	text1
	file	"C:\Users\edwar\Desktop\CMS79F5118_5139程序\Usart_Demo\Async_Usart_Demo.c"
	line	134
	global	__size_of_Set_Usart_Async
	__size_of_Set_Usart_Async	equ	__end_of_Set_Usart_Async-_Set_Usart_Async
	
_Set_Usart_Async:	
;incstack = 0
	opt	stack 6
; Regs used in _Set_Usart_Async: [wreg]
	line	136
	
l1122:	
;Async_Usart_Demo.c: 136: SPBRG = 47;
	movlw	low(02Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(153)^080h	;volatile
	line	138
	
l1124:	
;Async_Usart_Demo.c: 138: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7	;volatile
	line	139
	
l1126:	
;Async_Usart_Demo.c: 139: SCKP = 0;
	bcf	(1219/8)^080h,(1219)&7	;volatile
	line	141
	
l1128:	
;Async_Usart_Demo.c: 141: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7	;volatile
	line	142
	
l1130:	
;Async_Usart_Demo.c: 142: RCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1125/8)^080h,(1125)&7	;volatile
	line	143
	
l1132:	
;Async_Usart_Demo.c: 143: TXIE = 0;
	bcf	(1124/8)^080h,(1124)&7	;volatile
	line	144
	
l1134:	
;Async_Usart_Demo.c: 144: RX9EN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(198/8),(198)&7	;volatile
	line	145
	
l1136:	
;Async_Usart_Demo.c: 145: TX9EN = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1222/8)^080h,(1222)&7	;volatile
	line	146
	
l1138:	
;Async_Usart_Demo.c: 146: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(196/8),(196)&7	;volatile
	line	147
	
l1140:	
;Async_Usart_Demo.c: 147: TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1221/8)^080h,(1221)&7	;volatile
	line	148
	
l746:	
	return
	opt stack 0
GLOBAL	__end_of_Set_Usart_Async
	__end_of_Set_Usart_Async:
	signat	_Set_Usart_Async,89
	global	_Usart_Isr

;; *************** function _Usart_Isr *****************
;; Defined at:
;;		line 86 in file "C:\Users\edwar\Desktop\CMS79F5118_5139程序\Usart_Demo\Async_Usart_Demo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	86
global __ptext2
__ptext2:	;psect for function _Usart_Isr
psect	text2
	file	"C:\Users\edwar\Desktop\CMS79F5118_5139程序\Usart_Demo\Async_Usart_Demo.c"
	line	86
	global	__size_of_Usart_Isr
	__size_of_Usart_Isr	equ	__end_of_Usart_Isr-_Usart_Isr
	
_Usart_Isr:	
;incstack = 0
	opt	stack 6
; Regs used in _Usart_Isr: [wreg-fsr0h+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_Usart_Isr+0)
	movf	fsr0,w
	movwf	(??_Usart_Isr+1)
	movf	pclath,w
	movwf	(??_Usart_Isr+2)
	ljmp	_Usart_Isr
psect	text2
	line	94
	
i1l1176:	
;Async_Usart_Demo.c: 88: static unsigned char tcount = 0;
;Async_Usart_Demo.c: 94: if(RCIF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l741
u3_20:
	line	96
	
i1l1178:	
;Async_Usart_Demo.c: 95: {
;Async_Usart_Demo.c: 96: if(FERR)
	btfss	(194/8),(194)&7	;volatile
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l1184
u4_20:
	line	98
	
i1l1180:	
;Async_Usart_Demo.c: 97: {
;Async_Usart_Demo.c: 98: RCREG;
	movf	(26),w	;volatile
	goto	i1l741
	line	102
	
i1l1184:	
;Async_Usart_Demo.c: 100: }
;Async_Usart_Demo.c: 102: Recebuffer[rececount] = RCREG;
	movf	(_rececount),w
	addlw	low(_Recebuffer|((0x00)<<8))&0ffh
	movwf	fsr0
	movf	(26),w	;volatile
	movwf	indf
	line	103
	
i1l1186:	
;Async_Usart_Demo.c: 103: rececount++;
	incf	(_rececount),f
	line	105
	
i1l1188:	
;Async_Usart_Demo.c: 105: if(rececount >= 4)
	movlw	low(04h)
	subwf	(_rececount),w
	skipc
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l1192
u5_20:
	line	107
	
i1l1190:	
;Async_Usart_Demo.c: 106: {
;Async_Usart_Demo.c: 107: rececount = 0;
	clrf	(_rececount)
	line	110
	
i1l1192:	
;Async_Usart_Demo.c: 108: }
;Async_Usart_Demo.c: 110: if(OERR)
	btfss	(193/8),(193)&7	;volatile
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l741
u6_20:
	line	112
	
i1l1194:	
;Async_Usart_Demo.c: 111: {
;Async_Usart_Demo.c: 112: CREN = 0;
	bcf	(196/8),(196)&7	;volatile
	line	113
;Async_Usart_Demo.c: 113: CREN = 1;
	bsf	(196/8),(196)&7	;volatile
	line	117
	
i1l741:	
	movf	(??_Usart_Isr+2),w
	movwf	pclath
	movf	(??_Usart_Isr+1),w
	movwf	fsr0
	swapf	(??_Usart_Isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Usart_Isr
	__end_of_Usart_Isr:
	signat	_Usart_Isr,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
