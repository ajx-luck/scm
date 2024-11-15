opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F5773
opt include "C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SCMCU_IDE_V2.00.15\SCMCU_IDE_V2.00.15\data\include\sc8f5773.cgen.inc"
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
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5       5
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
;!COMMON               E      5       5       1       35.7%
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
;!ABS                  0      0       0       8        0.0%
;!DATA                 0      0       0       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 33 in file "C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SC8F577X_DEMO_V1.0.0\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
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
	file	"C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SC8F577X_DEMO_V1.0.0\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
	line	33
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SC8F577X_DEMO_V1.0.0\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
	line	33
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	35
	
l1331:	
;main.c: 35: Init_System();
	fcall	_Init_System
	line	38
	
l1333:	
;main.c: 37: {
;main.c: 38: RB6=1;
	bsf	(54/8),(54)&7	;volatile
	line	39
;main.c: 39: DelayXms(100);
	movlw	low(064h)
	fcall	_DelayXms
	line	40
	
l1335:	
;main.c: 40: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	41
;main.c: 41: DelayXms(100);
	movlw	low(064h)
	fcall	_DelayXms
	line	42
	
l1337:	
;main.c: 42: RB6=1;
	bsf	(54/8),(54)&7	;volatile
	line	43
;main.c: 43: DelayXms(100);
	movlw	low(064h)
	fcall	_DelayXms
	line	45
;main.c: 45: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l1333
	global	start
	ljmp	start
	opt stack 0
	line	47
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 57 in file "C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SC8F577X_DEMO_V1.0.0\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
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
	line	57
global __ptext1
__ptext1:	;psect for function _Sleep_Mode
psect	text1
	file	"C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SC8F577X_DEMO_V1.0.0\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
	line	57
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 5
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	59
	
l1309:	
;main.c: 59: INTCON = 0;
	clrf	(11)	;volatile
	line	61
;main.c: 61: OPTION_REG = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(129)^080h	;volatile
	line	63
;main.c: 63: TRISA = 0B00000000;
	clrf	(133)^080h	;volatile
	line	64
;main.c: 64: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	65
;main.c: 65: WPUA = 0B00000000;
	clrf	(7)	;volatile
	line	67
	
l1311:	
;main.c: 67: TRISB = 0B00001000;
	movlw	low(08h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	68
	
l1313:	
;main.c: 68: PORTB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	70
	
l1315:	
;main.c: 70: PORTB = 0;
	clrf	(6)	;volatile
	line	71
	
l1317:	
;main.c: 71: WPUB = 0B00001000;
	movlw	low(08h)
	movwf	(8)	;volatile
	line	73
;main.c: 73: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(157)^080h	;volatile
	line	74
;main.c: 74: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(19)	;volatile
	line	76
;main.c: 76: EECON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(140)^080h	;volatile
	line	79
	
l1319:	
;main.c: 79: IOCB = 0B00001000;
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	80
	
l1321:	
;main.c: 80: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	81
	
l1323:	
;main.c: 81: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	84
	
l1325:	
;main.c: 84: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(136)^080h	;volatile
	line	86
	
l1327:	
;main.c: 86: PORTB;
	bcf	status, 5	;RP0=0, select bank0
	movf	(6),w	;volatile
	line	87
# 87 "C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SC8F577X_DEMO_V1.0.0\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
clrwdt ;# 
	line	89
# 89 "C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SC8F577X_DEMO_V1.0.0\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
sleep ;# 
	line	91
# 91 "C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SC8F577X_DEMO_V1.0.0\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
nop ;# 
psect	text1
	line	92
	
l1329:	
;main.c: 92: Init_System();
	fcall	_Init_System
	line	94
	
l886:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 103 in file "C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SC8F577X_DEMO_V1.0.0\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
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
	line	103
global __ptext2
__ptext2:	;psect for function _Init_System
psect	text2
	file	"C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SC8F577X_DEMO_V1.0.0\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
	line	103
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_System: [wreg+status,2]
	line	105
	
l1271:	
# 105 "C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SC8F577X_DEMO_V1.0.0\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
nop ;# 
	line	106
# 106 "C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SC8F577X_DEMO_V1.0.0\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
clrwdt ;# 
psect	text2
	line	107
	
l1273:	
;main.c: 107: INTCON = 0;
	clrf	(11)	;volatile
	line	108
	
l1275:	
;main.c: 108: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	109
	
l1277:	
;main.c: 109: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	111
	
l1279:	
;main.c: 111: WPUA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	112
	
l1281:	
;main.c: 112: WPUB = 0B00001000;
	movlw	low(08h)
	movwf	(8)	;volatile
	line	115
;main.c: 115: TRISA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	116
	
l1283:	
;main.c: 116: TRISB = 0B00001000;
	movlw	low(08h)
	movwf	(134)^080h	;volatile
	line	118
	
l1285:	
;main.c: 118: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	119
	
l1287:	
;main.c: 119: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	121
	
l889:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 19 in file "C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SC8F577X_DEMO_V1.0.0\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
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
	line	19
global __ptext3
__ptext3:	;psect for function _DelayXms
psect	text3
	file	"C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SC8F577X_DEMO_V1.0.0\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
	line	19
	global	__size_of_DelayXms
	__size_of_DelayXms	equ	__end_of_DelayXms-_DelayXms
	
_DelayXms:	
;incstack = 0
	opt	stack 6
; Regs used in _DelayXms: [wreg+status,2+status,0]
;DelayXms@x stored from wreg
	movwf	(DelayXms@x)
	line	22
	
l1289:	
;main.c: 21: unsigned char i,j;
;main.c: 22: for(i=x;i>0;i--)
	movf	(DelayXms@x),w
	movwf	(DelayXms@i)
	
l1291:	
	movf	((DelayXms@i)),w
	btfss	status,2
	goto	u11
	goto	u10
u11:
	goto	l1295
u10:
	goto	l875
	line	23
	
l1295:	
;main.c: 23: for(j=153;j>0;j--);
	movlw	low(099h)
	movwf	(DelayXms@j)
	
l1301:	
	decf	(DelayXms@j),f
	
l1303:	
	movf	((DelayXms@j)),w
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l1301
u20:
	line	22
	
l1305:	
	decf	(DelayXms@i),f
	goto	l1291
	line	24
	
l875:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
	global	_PB_Isr

;; *************** function _PB_Isr *****************
;; Defined at:
;;		line 130 in file "C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SC8F577X_DEMO_V1.0.0\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
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
	line	130
global __ptext4
__ptext4:	;psect for function _PB_Isr
psect	text4
	file	"C:\mcuproject\scm\SC8F67XX开发包\SC8F67XX开发包\SC8F577X_DEMO_V1.0.0\SC8F577X_DEMO\SC8F577X_Sleep_Demo\main.c"
	line	130
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
	line	132
	
i1l1339:	
;main.c: 132: if(RBIF)
	btfss	(88/8),(88)&7	;volatile
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l895
u3_20:
	line	134
	
i1l1341:	
;main.c: 133: {
;main.c: 134: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	135
	
i1l1343:	
;main.c: 135: RB6 = ~RB6;
	movlw	1<<((54)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((54)/8),f
	line	136
;main.c: 136: PORTB;
	movf	(6),w	;volatile
	line	139
	
i1l895:	
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
