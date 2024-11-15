opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	79F5135
opt include "C:\mcuproject\scm\CMS_IDE_V2.03.26\CMS_IDE_V2.03.26\data\include\79f5135.cgen.inc"
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
	file	"Usart_Demo.as"
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

	file	"Usart_Demo.as"
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
;;		line 35 in file "C:\mcuproject\scm\xfx\CMS79F123≥Ã–Ú£®C∞Ê£©\Usart_Demo\Async_Usart_Demo.c"
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
	file	"C:\mcuproject\scm\xfx\CMS79F123≥Ã–Ú£®C∞Ê£©\Usart_Demo\Async_Usart_Demo.c"
	line	35
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\xfx\CMS79F123≥Ã–Ú£®C∞Ê£©\Usart_Demo\Async_Usart_Demo.c"
	line	35
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	37
	
l1141:	
# 37 "C:\mcuproject\scm\xfx\CMS79F123≥Ã–Ú£®C∞Ê£©\Usart_Demo\Async_Usart_Demo.c"
nop ;# 
	line	38
# 38 "C:\mcuproject\scm\xfx\CMS79F123≥Ã–Ú£®C∞Ê£©\Usart_Demo\Async_Usart_Demo.c"
clrwdt ;# 
psect	maintext
	line	40
	
l1143:	
;Async_Usart_Demo.c: 40: OSCCON = 0x71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	41
	
l1145:	
;Async_Usart_Demo.c: 41: INTCON = 0;
	clrf	(11)	;volatile
	line	43
	
l1147:	
;Async_Usart_Demo.c: 43: PIR1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(12)	;volatile
	line	44
	
l1149:	
;Async_Usart_Demo.c: 44: PIE1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(140)^080h	;volatile
	line	45
	
l1151:	
;Async_Usart_Demo.c: 45: PIR2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(13)	;volatile
	line	46
	
l1153:	
;Async_Usart_Demo.c: 46: PIE2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(141)^080h	;volatile
	line	48
	
l1155:	
;Async_Usart_Demo.c: 48: TRISA = 0B00000000;
	clrf	(133)^080h	;volatile
	line	49
	
l1157:	
;Async_Usart_Demo.c: 49: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	52
	
l1159:	
;Async_Usart_Demo.c: 52: Set_Usart_Async();
	fcall	_Set_Usart_Async
	line	55
	
l1161:	
;Async_Usart_Demo.c: 55: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	58
;Async_Usart_Demo.c: 58: while(1)
	
l727:	
	line	60
# 60 "C:\mcuproject\scm\xfx\CMS79F123≥Ã–Ú£®C∞Ê£©\Usart_Demo\Async_Usart_Demo.c"
clrwdt ;# 
psect	maintext
	line	62
	
l1163:	
;Async_Usart_Demo.c: 62: PORTA = Recebuffer[0];
	movf	(_Recebuffer),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	68
	
l1165:	
;Async_Usart_Demo.c: 68: if(TRMT)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u11
	goto	u10
u11:
	goto	l727
u10:
	line	70
	
l1167:	
;Async_Usart_Demo.c: 69: {
;Async_Usart_Demo.c: 70: TXREG = Sendbuffer[sendcount];
	movf	(_sendcount),w
	addlw	low(_Sendbuffer|((0x00)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(25)	;volatile
	line	72
;Async_Usart_Demo.c: 72: Sendbuffer[sendcount] ++;
	movf	(_sendcount),w
	addlw	low(_Sendbuffer|((0x00)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	line	74
	
l1169:	
;Async_Usart_Demo.c: 74: sendcount++;
	incf	(_sendcount),f
	line	75
	
l1171:	
;Async_Usart_Demo.c: 75: if(sendcount >= 4)
	movlw	low(04h)
	subwf	(_sendcount),w
	skipc
	goto	u21
	goto	u20
u21:
	goto	l727
u20:
	line	77
	
l1173:	
;Async_Usart_Demo.c: 76: {
;Async_Usart_Demo.c: 77: sendcount = 0;
	clrf	(_sendcount)
	goto	l727
	global	start
	ljmp	start
	opt stack 0
	line	82
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Set_Usart_Async

;; *************** function _Set_Usart_Async *****************
;; Defined at:
;;		line 125 in file "C:\mcuproject\scm\xfx\CMS79F123≥Ã–Ú£®C∞Ê£©\Usart_Demo\Async_Usart_Demo.c"
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
	line	125
global __ptext1
__ptext1:	;psect for function _Set_Usart_Async
psect	text1
	file	"C:\mcuproject\scm\xfx\CMS79F123≥Ã–Ú£®C∞Ê£©\Usart_Demo\Async_Usart_Demo.c"
	line	125
	global	__size_of_Set_Usart_Async
	__size_of_Set_Usart_Async	equ	__end_of_Set_Usart_Async-_Set_Usart_Async
	
_Set_Usart_Async:	
;incstack = 0
	opt	stack 6
; Regs used in _Set_Usart_Async: [wreg]
	line	127
	
l1121:	
;Async_Usart_Demo.c: 127: SPBRG = 95;
	movlw	low(05Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(153)^080h	;volatile
	line	129
	
l1123:	
;Async_Usart_Demo.c: 129: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7	;volatile
	line	130
	
l1125:	
;Async_Usart_Demo.c: 130: SCKP = 0;
	bcf	(1219/8)^080h,(1219)&7	;volatile
	line	132
	
l1127:	
;Async_Usart_Demo.c: 132: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7	;volatile
	line	133
	
l1129:	
;Async_Usart_Demo.c: 133: RCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1125/8)^080h,(1125)&7	;volatile
	line	134
	
l1131:	
;Async_Usart_Demo.c: 134: TXIE = 0;
	bcf	(1124/8)^080h,(1124)&7	;volatile
	line	135
	
l1133:	
;Async_Usart_Demo.c: 135: RX9EN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(198/8),(198)&7	;volatile
	line	136
	
l1135:	
;Async_Usart_Demo.c: 136: TX9EN = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1222/8)^080h,(1222)&7	;volatile
	line	137
	
l1137:	
;Async_Usart_Demo.c: 137: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(196/8),(196)&7	;volatile
	line	138
	
l1139:	
;Async_Usart_Demo.c: 138: TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1221/8)^080h,(1221)&7	;volatile
	line	139
	
l745:	
	return
	opt stack 0
GLOBAL	__end_of_Set_Usart_Async
	__end_of_Set_Usart_Async:
	signat	_Set_Usart_Async,89
	global	_Usart_Isr

;; *************** function _Usart_Isr *****************
;; Defined at:
;;		line 87 in file "C:\mcuproject\scm\xfx\CMS79F123≥Ã–Ú£®C∞Ê£©\Usart_Demo\Async_Usart_Demo.c"
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
	line	87
global __ptext2
__ptext2:	;psect for function _Usart_Isr
psect	text2
	file	"C:\mcuproject\scm\xfx\CMS79F123≥Ã–Ú£®C∞Ê£©\Usart_Demo\Async_Usart_Demo.c"
	line	87
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
	line	95
	
i1l1175:	
;Async_Usart_Demo.c: 89: static unsigned char tcount = 0;
;Async_Usart_Demo.c: 95: if(RCIF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l742
u3_20:
	line	99
	
i1l1177:	
;Async_Usart_Demo.c: 96: {
;Async_Usart_Demo.c: 99: Recebuffer[rececount] = RCREG;
	movf	(_rececount),w
	addlw	low(_Recebuffer|((0x00)<<8))&0ffh
	movwf	fsr0
	movf	(26),w	;volatile
	movwf	indf
	line	100
	
i1l1179:	
;Async_Usart_Demo.c: 100: rececount++;
	incf	(_rececount),f
	line	102
	
i1l1181:	
;Async_Usart_Demo.c: 102: if(rececount >= 4)
	movlw	low(04h)
	subwf	(_rececount),w
	skipc
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l1185
u4_20:
	line	104
	
i1l1183:	
;Async_Usart_Demo.c: 103: {
;Async_Usart_Demo.c: 104: rececount = 0;
	clrf	(_rececount)
	line	107
	
i1l1185:	
;Async_Usart_Demo.c: 105: }
;Async_Usart_Demo.c: 107: if(OERR)
	btfss	(193/8),(193)&7	;volatile
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l742
u5_20:
	line	109
	
i1l1187:	
;Async_Usart_Demo.c: 108: {
;Async_Usart_Demo.c: 109: CREN = 0;
	bcf	(196/8),(196)&7	;volatile
	line	110
;Async_Usart_Demo.c: 110: CREN = 1;
	bsf	(196/8),(196)&7	;volatile
	line	114
	
i1l742:	
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
