opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1711C
opt include "C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\include\sc8p1711c.cgen.inc"
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
	FNCALL	_main,_Init_System
	FNCALL	_main,_delay_ms
	FNCALL	_delay_ms,_delay_1ms
	FNCALL	_delay_1ms,_delay_100us
	FNCALL	_delay_100us,_delay_3us
	FNCALL	_delay_100us,_delay_50us
	FNCALL	_delay_50us,_delay_10us
	FNCALL	_delay_10us,_delay_3us
	FNROOT	_main
	FNCALL	_Timer0_Isr,_scanKey
	FNCALL	intlevel1,_Timer0_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	scanKey@keyLast
	global	_tempK1
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"C:\SCMCU WorkSpace\pwmtest.c"
	line	60

;initializer for scanKey@keyLast
	retlw	0FFh
	line	15

;initializer for _tempK1
	retlw	0FFh
	global	scanKey@keyCountDown
	global	_K1
	global	_INTCON
_INTCON	set	11
	global	_PORTC
_PORTC	set	7
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_TMR0
_TMR0	set	1
	global	_T0IF
_T0IF	set	90
	global	_IOCB
_IOCB	set	150
	global	_WPUB
_WPUB	set	149
	global	_OSCCON
_OSCCON	set	143
	global	_TRISC
_TRISC	set	135
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
; #config settings
	file	"PWMTEST.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
scanKey@keyCountDown:
       ds      1

_K1:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"C:\SCMCU WorkSpace\pwmtest.c"
	line	60
scanKey@keyLast:
       ds      1

psect	dataCOMMON
	file	"C:\SCMCU WorkSpace\pwmtest.c"
	line	15
_tempK1:
       ds      1

	file	"PWMTEST.as"
	line	#
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
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
?_main:	; 1 bytes @ 0x0
?_scanKey:	; 1 bytes @ 0x0
??_scanKey:	; 1 bytes @ 0x0
?_Timer0_Isr:	; 1 bytes @ 0x0
?_delay_3us:	; 1 bytes @ 0x0
?_delay_10us:	; 1 bytes @ 0x0
?_delay_50us:	; 1 bytes @ 0x0
?_delay_100us:	; 1 bytes @ 0x0
?_delay_1ms:	; 1 bytes @ 0x0
	global	scanKey@keyret
scanKey@keyret:	; 1 bytes @ 0x0
	ds	1
	global	scanKey@keyCur
scanKey@keyCur:	; 1 bytes @ 0x1
	ds	1
??_Timer0_Isr:	; 1 bytes @ 0x2
	ds	2
??_Init_System:	; 1 bytes @ 0x4
?_delay_ms:	; 1 bytes @ 0x4
??_delay_3us:	; 1 bytes @ 0x4
??_delay_10us:	; 1 bytes @ 0x4
??_delay_50us:	; 1 bytes @ 0x4
??_delay_100us:	; 1 bytes @ 0x4
??_delay_1ms:	; 1 bytes @ 0x4
	global	delay_ms@ms
delay_ms@ms:	; 2 bytes @ 0x4
	ds	2
??_delay_ms:	; 1 bytes @ 0x6
??_main:	; 1 bytes @ 0x6
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        2
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      10
;!    BANK0            80      0       0
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_delay_ms
;!
;!Critical Paths under _Timer0_Isr in COMMON
;!
;!    _Timer0_Isr->_scanKey
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _Timer0_Isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _Timer0_Isr in BANK1
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
;! (0) _main                                                 0     0      0      65
;!                        _Init_System
;!                           _delay_ms
;! ---------------------------------------------------------------------------------
;! (1) _delay_ms                                             2     0      2      65
;!                                              4 COMMON     2     0      2
;!                          _delay_1ms
;! ---------------------------------------------------------------------------------
;! (2) _delay_1ms                                            0     0      0       0
;!                        _delay_100us
;! ---------------------------------------------------------------------------------
;! (3) _delay_100us                                          0     0      0       0
;!                          _delay_3us
;!                         _delay_50us
;! ---------------------------------------------------------------------------------
;! (4) _delay_50us                                           0     0      0       0
;!                         _delay_10us
;! ---------------------------------------------------------------------------------
;! (5) _delay_10us                                           0     0      0       0
;!                          _delay_3us
;! ---------------------------------------------------------------------------------
;! (6) _delay_3us                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (7) _Timer0_Isr                                           2     2      0      60
;!                                              2 COMMON     2     2      0
;!                            _scanKey
;! ---------------------------------------------------------------------------------
;! (8) _scanKey                                              2     2      0      60
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Init_System
;!   _delay_ms
;!     _delay_1ms
;!       _delay_100us
;!         _delay_3us
;!         _delay_50us
;!           _delay_10us
;!             _delay_3us
;!
;! _Timer0_Isr (ROOT)
;!   _scanKey
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      6       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0       A       8        0.0%
;!ABS                  0      0       A       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 17 in file "C:\SCMCU WorkSpace\pwmtest.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Init_System
;;		_delay_ms
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\SCMCU WorkSpace\pwmtest.c"
	line	17
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\SCMCU WorkSpace\pwmtest.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 0
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	19
	
l1612:	
;pwmtest.c: 19: Init_System();
	fcall	_Init_System
	line	23
	
l1614:	
;pwmtest.c: 22: {
;pwmtest.c: 23: if(K1 == 1)
		decf	((_K1)),w
	btfss	status,2
	goto	u111
	goto	u110
u111:
	goto	l1618
u110:
	line	25
	
l1616:	
;pwmtest.c: 24: {
;pwmtest.c: 25: PORTB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	27
;pwmtest.c: 27: }
	goto	l1620
	line	30
	
l1618:	
;pwmtest.c: 28: else
;pwmtest.c: 29: {
;pwmtest.c: 30: PORTB = 0B00010000;
	movlw	low(010h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	32
	
l1620:	
;pwmtest.c: 33: nub++;
	movlw	0E8h
	movwf	(delay_ms@ms)
	movlw	03h
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	goto	l1614
	global	start
	ljmp	start
	opt stack 0
	line	46
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 52 in file "C:\SCMCU WorkSpace\delay.c"
;; Parameters:    Size  Location     Type
;;  ms              2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_delay_1ms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\delay.c"
	line	52
global __ptext1
__ptext1:	;psect for function _delay_ms
psect	text1
	file	"C:\SCMCU WorkSpace\delay.c"
	line	52
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	stack 0
; Regs used in _delay_ms: [wreg+status,2+status,0+pclath+cstack]
	line	54
	
l1606:	
;delay.c: 54: while(ms--)
	goto	l1610
	line	55
	
l1608:	
;delay.c: 55: delay_1ms();
	fcall	_delay_1ms
	line	54
	
l1610:	
	movlw	01h
	subwf	(delay_ms@ms),f
	movlw	0
	skipc
	decf	(delay_ms@ms+1),f
	subwf	(delay_ms@ms+1),f
		incf	(((delay_ms@ms))),w
	skipz
	goto	u101
	incf	(((delay_ms@ms+1))),w
	btfss	status,2
	goto	u101
	goto	u100
u101:
	goto	l1608
u100:
	line	56
	
l1142:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4217
	global	_delay_1ms

;; *************** function _delay_1ms *****************
;; Defined at:
;;		line 39 in file "C:\SCMCU WorkSpace\delay.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_delay_100us
;; This function is called by:
;;		_delay_ms
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	39
global __ptext2
__ptext2:	;psect for function _delay_1ms
psect	text2
	file	"C:\SCMCU WorkSpace\delay.c"
	line	39
	global	__size_of_delay_1ms
	__size_of_delay_1ms	equ	__end_of_delay_1ms-_delay_1ms
	
_delay_1ms:	
;incstack = 0
	opt	stack 0
; Regs used in _delay_1ms: [status,2+status,0+pclath+cstack]
	line	41
	
l1526:	
;delay.c: 41: delay_100us();
	fcall	_delay_100us
	line	42
;delay.c: 42: delay_100us();
	fcall	_delay_100us
	line	43
;delay.c: 43: delay_100us();
	fcall	_delay_100us
	line	44
;delay.c: 44: delay_100us();
	fcall	_delay_100us
	line	45
;delay.c: 45: delay_100us();
	fcall	_delay_100us
	line	46
;delay.c: 46: delay_100us();
	fcall	_delay_100us
	line	47
;delay.c: 47: delay_100us();
	fcall	_delay_100us
	line	48
;delay.c: 48: delay_100us();
	fcall	_delay_100us
	line	49
;delay.c: 49: delay_100us();
	fcall	_delay_100us
	line	50
;delay.c: 50: delay_100us();
	fcall	_delay_100us
	line	51
	
l1136:	
	return
	opt stack 0
GLOBAL	__end_of_delay_1ms
	__end_of_delay_1ms:
	signat	_delay_1ms,89
	global	_delay_100us

;; *************** function _delay_100us *****************
;; Defined at:
;;		line 32 in file "C:\SCMCU WorkSpace\delay.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_delay_3us
;;		_delay_50us
;; This function is called by:
;;		_delay_1ms
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	32
global __ptext3
__ptext3:	;psect for function _delay_100us
psect	text3
	file	"C:\SCMCU WorkSpace\delay.c"
	line	32
	global	__size_of_delay_100us
	__size_of_delay_100us	equ	__end_of_delay_100us-_delay_100us
	
_delay_100us:	
;incstack = 0
	opt	stack 0
; Regs used in _delay_100us: [status,2+status,0+pclath+cstack]
	line	34
	
l1524:	
;delay.c: 34: delay_50us();
	fcall	_delay_50us
	line	35
;delay.c: 35: delay_50us();
	fcall	_delay_50us
	line	36
;delay.c: 36: delay_3us();
	fcall	_delay_3us
	line	37
	
l1133:	
	return
	opt stack 0
GLOBAL	__end_of_delay_100us
	__end_of_delay_100us:
	signat	_delay_100us,89
	global	_delay_50us

;; *************** function _delay_50us *****************
;; Defined at:
;;		line 24 in file "C:\SCMCU WorkSpace\delay.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay_10us
;; This function is called by:
;;		_delay_100us
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	24
global __ptext4
__ptext4:	;psect for function _delay_50us
psect	text4
	file	"C:\SCMCU WorkSpace\delay.c"
	line	24
	global	__size_of_delay_50us
	__size_of_delay_50us	equ	__end_of_delay_50us-_delay_50us
	
_delay_50us:	
;incstack = 0
	opt	stack 0
; Regs used in _delay_50us: [status,2+status,0+pclath+cstack]
	line	26
	
l1522:	
;delay.c: 26: delay_10us();
	fcall	_delay_10us
	line	27
;delay.c: 27: delay_10us();
	fcall	_delay_10us
	line	28
;delay.c: 28: delay_10us();
	fcall	_delay_10us
	line	29
;delay.c: 29: delay_10us();
	fcall	_delay_10us
	line	30
;delay.c: 30: delay_10us();
	fcall	_delay_10us
	line	31
	
l1130:	
	return
	opt stack 0
GLOBAL	__end_of_delay_50us
	__end_of_delay_50us:
	signat	_delay_50us,89
	global	_delay_10us

;; *************** function _delay_10us *****************
;; Defined at:
;;		line 18 in file "C:\SCMCU WorkSpace\delay.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay_3us
;; This function is called by:
;;		_delay_50us
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	18
global __ptext5
__ptext5:	;psect for function _delay_10us
psect	text5
	file	"C:\SCMCU WorkSpace\delay.c"
	line	18
	global	__size_of_delay_10us
	__size_of_delay_10us	equ	__end_of_delay_10us-_delay_10us
	
_delay_10us:	
;incstack = 0
	opt	stack 0
; Regs used in _delay_10us: [status,2+status,0+pclath+cstack]
	line	20
	
l1520:	
;delay.c: 20: delay_3us();
	fcall	_delay_3us
	line	21
;delay.c: 21: delay_3us();
	fcall	_delay_3us
	line	22
;delay.c: 22: delay_3us();
	fcall	_delay_3us
	line	23
	
l1127:	
	return
	opt stack 0
GLOBAL	__end_of_delay_10us
	__end_of_delay_10us:
	signat	_delay_10us,89
	global	_delay_3us

;; *************** function _delay_3us *****************
;; Defined at:
;;		line 8 in file "C:\SCMCU WorkSpace\delay.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_delay_10us
;;		_delay_100us
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	8
global __ptext6
__ptext6:	;psect for function _delay_3us
psect	text6
	file	"C:\SCMCU WorkSpace\delay.c"
	line	8
	global	__size_of_delay_3us
	__size_of_delay_3us	equ	__end_of_delay_3us-_delay_3us
	
_delay_3us:	
;incstack = 0
	opt	stack 0
; Regs used in _delay_3us: []
	line	10
	
l1518:	
# 10 "C:\SCMCU WorkSpace\delay.c"
nop ;# 
	line	11
# 11 "C:\SCMCU WorkSpace\delay.c"
nop ;# 
	line	12
# 12 "C:\SCMCU WorkSpace\delay.c"
nop ;# 
	line	13
# 13 "C:\SCMCU WorkSpace\delay.c"
nop ;# 
	line	14
# 14 "C:\SCMCU WorkSpace\delay.c"
nop ;# 
	line	15
# 15 "C:\SCMCU WorkSpace\delay.c"
nop ;# 
psect	text6
	line	17
	
l1124:	
	return
	opt stack 0
GLOBAL	__end_of_delay_3us
	__end_of_delay_3us:
	signat	_delay_3us,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 94 in file "C:\SCMCU WorkSpace\pwmtest.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\pwmtest.c"
	line	94
global __ptext7
__ptext7:	;psect for function _Init_System
psect	text7
	file	"C:\SCMCU WorkSpace\pwmtest.c"
	line	94
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_System: [wreg+status,2]
	line	96
	
l1528:	
# 96 "C:\SCMCU WorkSpace\pwmtest.c"
nop ;# 
	line	97
# 97 "C:\SCMCU WorkSpace\pwmtest.c"
clrwdt ;# 
psect	text7
	line	98
	
l1530:	
;pwmtest.c: 98: INTCON = 0;
	clrf	(11)	;volatile
	line	99
	
l1532:	
;pwmtest.c: 99: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	100
	
l1534:	
;pwmtest.c: 100: WPUB = 0xFF;
	movlw	low(0FFh)
	movwf	(149)^080h	;volatile
	line	101
	
l1536:	
;pwmtest.c: 101: OPTION_REG = 0xD0;
	movlw	low(0D0h)
	movwf	(129)^080h	;volatile
	line	102
	
l1538:	
;pwmtest.c: 102: TMR0 = 131;
	movlw	low(083h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	103
	
l1540:	
;pwmtest.c: 103: INTCON = 0xA0;
	movlw	low(0A0h)
	movwf	(11)	;volatile
	line	104
	
l1542:	
;pwmtest.c: 104: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	105
;pwmtest.c: 105: TRISB = 0B00101111;
	movlw	low(02Fh)
	movwf	(134)^080h	;volatile
	line	106
	
l1544:	
;pwmtest.c: 106: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	107
	
l1546:	
;pwmtest.c: 107: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	108
;pwmtest.c: 108: PORTB = 0B00010000;
	movlw	low(010h)
	movwf	(6)	;volatile
	line	109
	
l1548:	
;pwmtest.c: 109: PORTC = 0x00;
	clrf	(7)	;volatile
	line	110
	
l1550:	
;pwmtest.c: 110: IOCB = 0xFF;
	movlw	low(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(150)^080h	;volatile
	line	111
	
l573:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 120 in file "C:\SCMCU WorkSpace\pwmtest.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          2       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_scanKey
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	120
global __ptext8
__ptext8:	;psect for function _Timer0_Isr
psect	text8
	file	"C:\SCMCU WorkSpace\pwmtest.c"
	line	120
	global	__size_of_Timer0_Isr
	__size_of_Timer0_Isr	equ	__end_of_Timer0_Isr-_Timer0_Isr
	
_Timer0_Isr:	
;incstack = 0
	opt	stack 0
; Regs used in _Timer0_Isr: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_Timer0_Isr+0)
	movf	pclath,w
	movwf	(??_Timer0_Isr+1)
	ljmp	_Timer0_Isr
psect	text8
	line	122
	
i1l1592:	
;pwmtest.c: 122: if(T0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l582
u7_20:
	line	125
	
i1l1594:	
;pwmtest.c: 123: {
;pwmtest.c: 125: TMR0 += 131;
	movlw	low(083h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(1),f	;volatile
	line	128
	
i1l1596:	
;pwmtest.c: 128: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	139
	
i1l1598:	
;pwmtest.c: 139: tempK1 = scanKey(0B00000100 & PORTB);
	movf	(6),w	;volatile
	andlw	04h
	fcall	_scanKey
	movwf	(_tempK1)
	line	140
	
i1l1600:	
;pwmtest.c: 140: if(tempK1 != 0xFF)
		incf	((_tempK1)),w
	btfsc	status,2
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l582
u8_20:
	line	142
	
i1l1602:	
;pwmtest.c: 141: {
;pwmtest.c: 142: if(K1 == 1)
		decf	((_K1)),w
	btfss	status,2
	goto	u9_21
	goto	u9_20
u9_21:
	goto	i1l580
u9_20:
	line	144
	
i1l1604:	
;pwmtest.c: 143: {
;pwmtest.c: 144: K1 = 0;
	clrf	(_K1)
	line	145
;pwmtest.c: 145: }
	goto	i1l582
	line	146
	
i1l580:	
	line	148
;pwmtest.c: 146: else
;pwmtest.c: 147: {
;pwmtest.c: 148: K1 = 1;
	clrf	(_K1)
	incf	(_K1),f
	line	153
	
i1l582:	
	movf	(??_Timer0_Isr+1),w
	movwf	pclath
	swapf	(??_Timer0_Isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Timer0_Isr
	__end_of_Timer0_Isr:
	signat	_Timer0_Isr,89
	global	_scanKey

;; *************** function _scanKey *****************
;; Defined at:
;;		line 56 in file "C:\SCMCU WorkSpace\pwmtest.c"
;; Parameters:    Size  Location     Type
;;  keyCur          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyCur          1    1[COMMON] unsigned char 
;;  keyret          1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Timer0_Isr
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	56
global __ptext9
__ptext9:	;psect for function _scanKey
psect	text9
	file	"C:\SCMCU WorkSpace\pwmtest.c"
	line	56
	global	__size_of_scanKey
	__size_of_scanKey	equ	__end_of_scanKey-_scanKey
	
_scanKey:	
;incstack = 0
	opt	stack 0
; Regs used in _scanKey: [wreg+status,2+status,0]
;scanKey@keyCur stored from wreg
	movwf	(scanKey@keyCur)
	line	58
	
i1l1558:	
;pwmtest.c: 58: unsigned char keyret = 0xFF;
	movlw	low(0FFh)
	movwf	(scanKey@keyret)
	line	62
	
i1l1560:	
;pwmtest.c: 59: static unsigned char keyCountDown = 0;
;pwmtest.c: 60: static unsigned char keyLast = 0xFF;
;pwmtest.c: 62: if(keyCur == 0)
	movf	((scanKey@keyCur)),w
	btfss	status,2
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l1568
u2_20:
	line	65
	
i1l1562:	
;pwmtest.c: 63: {
;pwmtest.c: 65: if(keyLast == keyCur || 0xFF == keyLast)
	movf	(scanKey@keyLast),w
	xorwf	(scanKey@keyCur),w
	skipnz
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l1566
u3_20:
	
i1l1564:	
		incf	((scanKey@keyLast)),w
	btfss	status,2
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l1576
u4_20:
	line	67
	
i1l1566:	
;pwmtest.c: 66: {
;pwmtest.c: 67: keyCountDown++;
	incf	(scanKey@keyCountDown),f
	goto	i1l1576
	line	73
	
i1l1568:	
;pwmtest.c: 71: else
;pwmtest.c: 72: {
;pwmtest.c: 73: if(keyCountDown >= 10)
	movlw	low(0Ah)
	subwf	(scanKey@keyCountDown),w
	skipc
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l1572
u5_20:
	line	75
	
i1l1570:	
;pwmtest.c: 74: {
;pwmtest.c: 75: keyret = keyLast;
	movf	(scanKey@keyLast),w
	movwf	(scanKey@keyret)
	line	76
;pwmtest.c: 76: }
	goto	i1l1574
	line	79
	
i1l1572:	
;pwmtest.c: 77: else
;pwmtest.c: 78: {
;pwmtest.c: 79: keyret = 0xFF;
	movlw	low(0FFh)
	movwf	(scanKey@keyret)
	line	81
	
i1l1574:	
;pwmtest.c: 80: }
;pwmtest.c: 81: keyCountDown = 0;
	clrf	(scanKey@keyCountDown)
	line	83
	
i1l1576:	
;pwmtest.c: 82: }
;pwmtest.c: 83: keyLast = keyCur;
	movf	(scanKey@keyCur),w
	movwf	(scanKey@keyLast)
	line	84
	
i1l1578:	
;pwmtest.c: 84: return keyret;
	movf	(scanKey@keyret),w
	line	85
	
i1l570:	
	return
	opt stack 0
GLOBAL	__end_of_scanKey
	__end_of_scanKey:
	signat	_scanKey,4217
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
