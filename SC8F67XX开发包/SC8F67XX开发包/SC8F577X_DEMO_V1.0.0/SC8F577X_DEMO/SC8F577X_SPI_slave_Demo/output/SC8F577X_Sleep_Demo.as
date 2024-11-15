opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F5772
opt include "E:\CMS_WORK\TOOLS\SCMCU_IDE_V2.00.07\data\include\sc8f5772.cgen.inc"
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
	FNCALL	_main,_DelayXms
	FNCALL	_main,_Init_System
	FNCALL	_main,_Sleep_Mode
	FNCALL	_Sleep_Mode,_Init_System
	FNROOT	_main
	FNCALL	intlevel1,_PB_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_result2
	global	_result1
	global	_result
	global	_PWMCON0
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_PWMCON0	set	19
	global	_INTCON
_INTCON	set	11
	global	_IOCB
_IOCB	set	9
	global	_WPUB
_WPUB	set	8
	global	_WPUA
_WPUA	set	7
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_RBIF
_RBIF	set	88
	global	_RBIE
_RBIE	set	91
	global	_GIE
_GIE	set	95
	global	_RB6
_RB6	set	54
	global	_ADCON0
_ADCON0	set	157
	global	_EECON1
_EECON1	set	140
	global	_OSCCON
_OSCCON	set	136
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
; #config settings
	file	"SC8F577X_Sleep_Demo.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_result2:
       ds      2

_result1:
       ds      2

_result:
       ds      2

	file	"SC8F577X_Sleep_Demo.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
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
?_Init_System:	; 1 bytes @ 0x0
?_Sleep_Mode:	; 1 bytes @ 0x0
?_DelayXms:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_PB_Isr:	; 1 bytes @ 0x0
??_PB_Isr:	; 1 bytes @ 0x0
	ds	2
??_Init_System:	; 1 bytes @ 0x2
??_Sleep_Mode:	; 1 bytes @ 0x2
??_DelayXms:	; 1 bytes @ 0x2
	global	DelayXms@x
DelayXms@x:	; 1 bytes @ 0x2
	ds	1
	global	DelayXms@i
DelayXms@i:	; 1 bytes @ 0x3
	ds	1
	global	DelayXms@j
DelayXms@j:	; 1 bytes @ 0x4
	ds	1
??_main:	; 1 bytes @ 0x5
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         6
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5      11
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_DelayXms
;!
;!Critical Paths under _PB_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _PB_Isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _PB_Isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _PB_Isr in BANK2
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
;! (0) _main                                                 0     0      0      75
;!                           _DelayXms
;!                        _Init_System
;!                         _Sleep_Mode
;! ---------------------------------------------------------------------------------
;! (1) _Sleep_Mode                                           0     0      0       0
;!                        _Init_System
;! ---------------------------------------------------------------------------------
;! (2) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _DelayXms                                             3     3      0      75
;!                                              2 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _PB_Isr                                               2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _DelayXms
;!   _Init_System
;!   _Sleep_Mode
;!     _Init_System
;!
;! _PB_Isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      5       B       1       78.6%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!BANK2               50      0       0       7        0.0%
;!ABS                  0      0       B       8        0.0%
;!DATA                 0      0       B       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 40 in file "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DelayXms
;;		_Init_System
;;		_Sleep_Mode
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
	line	40
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
	line	40
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	42
	
l1281:	
;main.c: 42: Init_System();
	fcall	_Init_System
	line	45
	
l1283:	
;main.c: 44: {
;main.c: 45: RB6=1;
	bsf	(54/8),(54)&7	;volatile
	line	46
;main.c: 46: DelayXms(100);
	movlw	low(064h)
	fcall	_DelayXms
	line	47
	
l1285:	
;main.c: 47: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	48
;main.c: 48: DelayXms(100);
	movlw	low(064h)
	fcall	_DelayXms
	line	49
	
l1287:	
;main.c: 49: RB6=1;
	bsf	(54/8),(54)&7	;volatile
	line	50
;main.c: 50: DelayXms(100);
	movlw	low(064h)
	fcall	_DelayXms
	line	52
;main.c: 52: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l1283
	global	start
	ljmp	start
	opt stack 0
	line	54
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 64 in file "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Init_System
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	64
global __ptext1
__ptext1:	;psect for function _Sleep_Mode
psect	text1
	file	"E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
	line	64
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 5
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	66
	
l1257:	
;main.c: 66: INTCON = 0;
	clrf	(11)	;volatile
	line	68
;main.c: 68: OPTION_REG = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(129)^080h	;volatile
	line	70
;main.c: 70: TRISA = 0B00000000;
	clrf	(133)^080h	;volatile
	line	71
;main.c: 71: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	72
;main.c: 72: WPUA = 0B00000000;
	clrf	(7)	;volatile
	line	74
	
l1259:	
;main.c: 74: TRISB = 0B00001000;
	movlw	low(08h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	75
	
l1261:	
;main.c: 75: PORTB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	77
	
l1263:	
;main.c: 77: PORTB = 0;
	clrf	(6)	;volatile
	line	78
	
l1265:	
;main.c: 78: WPUB = 0B00001000;
	movlw	low(08h)
	movwf	(8)	;volatile
	line	80
	
l1267:	
;main.c: 80: IOCB = 0B00001000;
	movlw	low(08h)
	movwf	(9)	;volatile
	line	81
	
l1269:	
;main.c: 81: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	82
	
l1271:	
;main.c: 82: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	84
	
l1273:	
;main.c: 84: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(157)^080h	;volatile
	line	85
	
l1275:	
;main.c: 85: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(19)	;volatile
	line	87
	
l1277:	
;main.c: 87: EECON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(140)^080h	;volatile
	line	89
;main.c: 89: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(136)^080h	;volatile
	line	91
;main.c: 91: PORTB;
	bcf	status, 5	;RP0=0, select bank0
	movf	(6),w	;volatile
	line	92
# 92 "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
clrwdt ;# 
	line	94
# 94 "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
sleep ;# 
	line	96
# 96 "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
nop ;# 
psect	text1
	line	97
	
l1279:	
;main.c: 97: Init_System();
	fcall	_Init_System
	line	99
	
l834:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 108 in file "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Sleep_Mode
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	108
global __ptext2
__ptext2:	;psect for function _Init_System
psect	text2
	file	"E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
	line	108
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_System: [wreg+status,2]
	line	110
	
l1219:	
# 110 "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
nop ;# 
	line	111
# 111 "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
clrwdt ;# 
psect	text2
	line	112
	
l1221:	
;main.c: 112: INTCON = 0;
	clrf	(11)	;volatile
	line	113
	
l1223:	
;main.c: 113: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	114
	
l1225:	
;main.c: 114: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	116
	
l1227:	
;main.c: 116: WPUA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	117
	
l1229:	
;main.c: 117: WPUB = 0B00001000;
	movlw	low(08h)
	movwf	(8)	;volatile
	line	120
;main.c: 120: TRISA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	121
	
l1231:	
;main.c: 121: TRISB = 0B00001000;
	movlw	low(08h)
	movwf	(134)^080h	;volatile
	line	123
	
l1233:	
;main.c: 123: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	124
	
l1235:	
;main.c: 124: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	126
	
l837:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 23 in file "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    2[COMMON] unsigned char 
;;  j               1    4[COMMON] unsigned char 
;;  i               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	23
global __ptext3
__ptext3:	;psect for function _DelayXms
psect	text3
	file	"E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
	line	23
	global	__size_of_DelayXms
	__size_of_DelayXms	equ	__end_of_DelayXms-_DelayXms
	
_DelayXms:	
;incstack = 0
	opt	stack 6
; Regs used in _DelayXms: [wreg+status,2+status,0]
;DelayXms@x stored from wreg
	movwf	(DelayXms@x)
	line	26
	
l1237:	
;main.c: 25: unsigned char i,j;
;main.c: 26: for(i=x;i>0;i--)
	movf	(DelayXms@x),w
	movwf	(DelayXms@i)
	
l1239:	
	movf	((DelayXms@i)),w
	btfss	status,2
	goto	u11
	goto	u10
u11:
	goto	l1243
u10:
	goto	l823
	line	27
	
l1243:	
;main.c: 27: for(j=153;j>0;j--);
	movlw	low(099h)
	movwf	(DelayXms@j)
	
l1249:	
	decf	(DelayXms@j),f
	
l1251:	
	movf	((DelayXms@j)),w
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l1249
u20:
	line	26
	
l1253:	
	decf	(DelayXms@i),f
	goto	l1239
	line	28
	
l823:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
	global	_PB_Isr

;; *************** function _PB_Isr *****************
;; Defined at:
;;		line 135 in file "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	135
global __ptext4
__ptext4:	;psect for function _PB_Isr
psect	text4
	file	"E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
	line	135
	global	__size_of_PB_Isr
	__size_of_PB_Isr	equ	__end_of_PB_Isr-_PB_Isr
	
_PB_Isr:	
;incstack = 0
	opt	stack 5
; Regs used in _PB_Isr: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_PB_Isr+0)
	movf	pclath,w
	movwf	(??_PB_Isr+1)
	ljmp	_PB_Isr
psect	text4
	line	137
	
i1l1289:	
;main.c: 137: if(RBIF)
	btfss	(88/8),(88)&7	;volatile
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l843
u3_20:
	line	139
	
i1l1291:	
;main.c: 138: {
;main.c: 139: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	140
	
i1l1293:	
;main.c: 140: RB6 = ~RB6;
	movlw	1<<((54)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((54)/8),f
	line	143
	
i1l843:	
	movf	(??_PB_Isr+1),w
	movwf	pclath
	swapf	(??_PB_Isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_PB_Isr
	__end_of_PB_Isr:
	signat	_PB_Isr,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
