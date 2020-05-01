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
	FNCALL	_main,_delay_ms
	FNCALL	_main,_setLedOn
	FNCALL	_delay_ms,_delay_1ms
	FNCALL	_delay_1ms,_delay_100us
	FNCALL	_delay_100us,_delay_3us
	FNCALL	_delay_100us,_delay_50us
	FNCALL	_delay_50us,_delay_10us
	FNCALL	_delay_10us,_delay_3us
	FNROOT	_main
	global	_INTCON
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_INTCON	set	11
	global	_PORTC
_PORTC	set	7
	global	_PORTA
_PORTA	set	5
	global	_OSCCON
_OSCCON	set	143
	global	_TRISC
_TRISC	set	135
	global	_TRISA
_TRISA	set	133
	global	_WPUC
_WPUC	set	399
; #config settings
	file	"LedTest.as"
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
?_delay_ms:	; 1 bytes @ 0x0
?_setLedOn:	; 1 bytes @ 0x0
??_setLedOn:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_delay_3us:	; 1 bytes @ 0x0
??_delay_3us:	; 1 bytes @ 0x0
?_delay_10us:	; 1 bytes @ 0x0
??_delay_10us:	; 1 bytes @ 0x0
?_delay_50us:	; 1 bytes @ 0x0
??_delay_50us:	; 1 bytes @ 0x0
?_delay_100us:	; 1 bytes @ 0x0
??_delay_100us:	; 1 bytes @ 0x0
?_delay_1ms:	; 1 bytes @ 0x0
??_delay_1ms:	; 1 bytes @ 0x0
	global	setLedOn@ledIndex
setLedOn@ledIndex:	; 1 bytes @ 0x0
	global	delay_ms@ms
delay_ms@ms:	; 2 bytes @ 0x0
	ds	2
??_delay_ms:	; 1 bytes @ 0x2
??_main:	; 1 bytes @ 0x2
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
;!    COMMON           14      2       2
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
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
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
;! (0) _main                                                 0     0      0     252
;!                           _delay_ms
;!                           _setLedOn
;! ---------------------------------------------------------------------------------
;! (1) _setLedOn                                             1     1      0      15
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _delay_ms                                             2     0      2     237
;!                                              0 COMMON     2     0      2
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
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _delay_ms
;!     _delay_1ms
;!       _delay_100us
;!         _delay_3us
;!         _delay_50us
;!           _delay_10us
;!             _delay_3us
;!   _setLedOn
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      2       2       1       14.3%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!DATA                 0      0       0       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 60 in file "C:\SCMCU WorkSpace\led.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_delay_ms
;;		_setLedOn
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\SCMCU WorkSpace\led.c"
	line	60
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\SCMCU WorkSpace\led.c"
	line	60
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	62
	
l1576:	
# 62 "C:\SCMCU WorkSpace\led.c"
nop ;# 
	line	63
# 63 "C:\SCMCU WorkSpace\led.c"
clrwdt ;# 
psect	maintext
	line	64
	
l1578:	
;led.c: 64: INTCON = 0;
	clrf	(11)	;volatile
	line	65
	
l1580:	
;led.c: 65: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	67
	
l1582:	
;led.c: 67: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	68
;led.c: 68: TRISA = 0xFF;
	movlw	low(0FFh)
	movwf	(133)^080h	;volatile
	line	69
;led.c: 69: WPUC = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	70
	
l1584:	
;led.c: 70: PORTA = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	71
	
l1586:	
;led.c: 71: PORTC = 0x00;
	clrf	(7)	;volatile
	line	75
	
l1588:	
;led.c: 74: {
;led.c: 75: setLedOn(2);
	movlw	low(02h)
	fcall	_setLedOn
	line	76
	
l1590:	
;led.c: 76: delay_ms(1000);
	movlw	0E8h
	movwf	(delay_ms@ms)
	movlw	03h
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	line	77
	
l1592:	
;led.c: 77: setLedOn(1);
	movlw	low(01h)
	fcall	_setLedOn
	line	78
	
l1594:	
;led.c: 78: delay_ms(1000);
	movlw	0E8h
	movwf	(delay_ms@ms)
	movlw	03h
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	line	79
	
l1596:	
;led.c: 79: setLedOn(3);
	movlw	low(03h)
	fcall	_setLedOn
	line	80
	
l1598:	
;led.c: 80: delay_ms(1000);
	movlw	0E8h
	movwf	(delay_ms@ms)
	movlw	03h
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	line	81
	
l1600:	
;led.c: 81: setLedOn(4);
	movlw	low(04h)
	fcall	_setLedOn
	line	82
	
l1602:	
;led.c: 82: delay_ms(1000);
	movlw	0E8h
	movwf	(delay_ms@ms)
	movlw	03h
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	line	83
	
l1604:	
;led.c: 83: setLedOn(5);
	movlw	low(05h)
	fcall	_setLedOn
	line	84
	
l1606:	
;led.c: 84: delay_ms(1000);
	movlw	0E8h
	movwf	(delay_ms@ms)
	movlw	03h
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	goto	l1588
	global	start
	ljmp	start
	opt stack 0
	line	86
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_setLedOn

;; *************** function _setLedOn *****************
;; Defined at:
;;		line 12 in file "C:\SCMCU WorkSpace\led.c"
;; Parameters:    Size  Location     Type
;;  ledIndex        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ledIndex        1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	12
global __ptext1
__ptext1:	;psect for function _setLedOn
psect	text1
	file	"C:\SCMCU WorkSpace\led.c"
	line	12
	global	__size_of_setLedOn
	__size_of_setLedOn	equ	__end_of_setLedOn-_setLedOn
	
_setLedOn:	
;incstack = 0
	opt	stack 7
; Regs used in _setLedOn: [wreg-fsr0h+status,2+status,0]
;setLedOn@ledIndex stored from wreg
	movwf	(setLedOn@ledIndex)
	line	13
	
l1502:	
;led.c: 13: switch(ledIndex) {
	goto	l1506
	line	14
;led.c: 14: case 1:
	
l542:	
	line	16
;led.c: 16: TRISC&=~(1<<1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	17
;led.c: 17: TRISA|=(1<<7);
	bsf	(133)^080h+(7/8),(7)&7	;volatile
	line	18
;led.c: 18: TRISC&=~(1<<0);
	bcf	(135)^080h+(0/8),(0)&7	;volatile
	line	19
;led.c: 19: PORTA&=~(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(7/8),(7)&7	;volatile
	line	20
;led.c: 20: PORTC|=(1<<0);
	bsf	(7)+(0/8),(0)&7	;volatile
	line	21
;led.c: 21: PORTC&=~(1<<1);
	bcf	(7)+(1/8),(1)&7	;volatile
	line	22
;led.c: 22: break;
	goto	l548
	line	23
;led.c: 23: case 2:
	
l544:	
	line	24
;led.c: 24: TRISC&=~(1<<1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	25
;led.c: 25: TRISA|=(1<<7);
	bsf	(133)^080h+(7/8),(7)&7	;volatile
	line	26
;led.c: 26: TRISC&=~(1<<0);
	bcf	(135)^080h+(0/8),(0)&7	;volatile
	line	27
;led.c: 27: PORTC&=~(1<<0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(7)+(0/8),(0)&7	;volatile
	line	28
;led.c: 28: PORTC|=(1<<1);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	29
;led.c: 29: break;
	goto	l548
	line	30
;led.c: 30: case 3:
	
l545:	
	line	32
;led.c: 32: TRISC|=(1<<0);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(135)^080h+(0/8),(0)&7	;volatile
	line	33
;led.c: 33: TRISA&=~(1<<7);
	bcf	(133)^080h+(7/8),(7)&7	;volatile
	line	34
;led.c: 34: TRISC&=~(1<<1);
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	35
;led.c: 35: PORTA|=(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(7/8),(7)&7	;volatile
	line	36
;led.c: 36: PORTC&=~(1<<0);
	bcf	(7)+(0/8),(0)&7	;volatile
	line	37
;led.c: 37: PORTC&=~(1<<1);
	bcf	(7)+(1/8),(1)&7	;volatile
	line	38
;led.c: 38: break;
	goto	l548
	line	39
;led.c: 39: case 4:
	
l546:	
	line	40
;led.c: 40: TRISC|=(1<<0);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(135)^080h+(0/8),(0)&7	;volatile
	line	41
;led.c: 41: TRISA&=~(1<<7);
	bcf	(133)^080h+(7/8),(7)&7	;volatile
	line	42
;led.c: 42: TRISC&=~(1<<1);
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	43
;led.c: 43: PORTA&=~(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(7/8),(7)&7	;volatile
	line	44
;led.c: 44: PORTC|=(1<<0);
	bsf	(7)+(0/8),(0)&7	;volatile
	line	45
;led.c: 45: PORTC|=(1<<1);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	46
;led.c: 46: break;
	goto	l548
	line	47
;led.c: 47: case 5:
	
l547:	
	line	49
;led.c: 49: TRISC|=(1<<0);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(135)^080h+(0/8),(0)&7	;volatile
	line	50
;led.c: 50: TRISA|=(1<<7);
	bsf	(133)^080h+(7/8),(7)&7	;volatile
	line	51
;led.c: 51: TRISC|=(1<<1);
	bsf	(135)^080h+(1/8),(1)&7	;volatile
	line	52
;led.c: 52: PORTC&=~(1<<0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(7)+(0/8),(0)&7	;volatile
	line	53
;led.c: 53: PORTA&=~(1<<7);
	bcf	(5)+(7/8),(7)&7	;volatile
	line	54
;led.c: 54: PORTC&=~(1<<1);
	bcf	(7)+(1/8),(1)&7	;volatile
	line	55
;led.c: 55: break;
	goto	l548
	line	13
	
l1506:	
	movf	(setLedOn@ledIndex),w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 1 to 5
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           14     9 (fixed)
; simple_byte           16     9 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is direct_byte

	addlw	-1
	skipc
goto l548
	movwf fsr
	movlw	5
	subwf	fsr,w
skipnc
goto l548
movlw high(S1628)
movwf pclath
	movlw low(S1628)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S1628:
	ljmp	l542
	ljmp	l544
	ljmp	l545
	ljmp	l546
	ljmp	l547
psect	text1

	line	57
	
l548:	
	return
	opt stack 0
GLOBAL	__end_of_setLedOn
	__end_of_setLedOn:
	signat	_setLedOn,4217
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 52 in file "C:\SCMCU WorkSpace\delay.c"
;; Parameters:    Size  Location     Type
;;  ms              2    0[COMMON] unsigned int 
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
;;      Params:         2       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_delay_1ms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\delay.c"
	line	52
global __ptext2
__ptext2:	;psect for function _delay_ms
psect	text2
	file	"C:\SCMCU WorkSpace\delay.c"
	line	52
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	stack 2
; Regs used in _delay_ms: [wreg+status,2+status,0+pclath+cstack]
	line	54
	
l1570:	
;delay.c: 54: while(ms--)
	goto	l1574
	line	55
	
l1572:	
;delay.c: 55: delay_1ms();
	fcall	_delay_1ms
	line	54
	
l1574:	
	movlw	01h
	subwf	(delay_ms@ms),f
	movlw	0
	skipc
	decf	(delay_ms@ms+1),f
	subwf	(delay_ms@ms+1),f
		incf	(((delay_ms@ms))),w
	skipz
	goto	u21
	incf	(((delay_ms@ms+1))),w
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l1572
u20:
	line	56
	
l1116:	
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay_100us
;; This function is called by:
;;		_delay_ms
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	39
global __ptext3
__ptext3:	;psect for function _delay_1ms
psect	text3
	file	"C:\SCMCU WorkSpace\delay.c"
	line	39
	global	__size_of_delay_1ms
	__size_of_delay_1ms	equ	__end_of_delay_1ms-_delay_1ms
	
_delay_1ms:	
;incstack = 0
	opt	stack 2
; Regs used in _delay_1ms: [status,2+status,0+pclath+cstack]
	line	41
	
l1500:	
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
	
l1110:	
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay_3us
;;		_delay_50us
;; This function is called by:
;;		_delay_1ms
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	32
global __ptext4
__ptext4:	;psect for function _delay_100us
psect	text4
	file	"C:\SCMCU WorkSpace\delay.c"
	line	32
	global	__size_of_delay_100us
	__size_of_delay_100us	equ	__end_of_delay_100us-_delay_100us
	
_delay_100us:	
;incstack = 0
	opt	stack 2
; Regs used in _delay_100us: [status,2+status,0+pclath+cstack]
	line	34
	
l1498:	
;delay.c: 34: delay_50us();
	fcall	_delay_50us
	line	35
;delay.c: 35: delay_50us();
	fcall	_delay_50us
	line	36
;delay.c: 36: delay_3us();
	fcall	_delay_3us
	line	37
	
l1107:	
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay_10us
;; This function is called by:
;;		_delay_100us
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	24
global __ptext5
__ptext5:	;psect for function _delay_50us
psect	text5
	file	"C:\SCMCU WorkSpace\delay.c"
	line	24
	global	__size_of_delay_50us
	__size_of_delay_50us	equ	__end_of_delay_50us-_delay_50us
	
_delay_50us:	
;incstack = 0
	opt	stack 2
; Regs used in _delay_50us: [status,2+status,0+pclath+cstack]
	line	26
	
l1496:	
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
	
l1104:	
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay_3us
;; This function is called by:
;;		_delay_50us
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	18
global __ptext6
__ptext6:	;psect for function _delay_10us
psect	text6
	file	"C:\SCMCU WorkSpace\delay.c"
	line	18
	global	__size_of_delay_10us
	__size_of_delay_10us	equ	__end_of_delay_10us-_delay_10us
	
_delay_10us:	
;incstack = 0
	opt	stack 2
; Regs used in _delay_10us: [status,2+status,0+pclath+cstack]
	line	20
	
l1494:	
;delay.c: 20: delay_3us();
	fcall	_delay_3us
	line	21
;delay.c: 21: delay_3us();
	fcall	_delay_3us
	line	22
;delay.c: 22: delay_3us();
	fcall	_delay_3us
	line	23
	
l1101:	
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_delay_10us
;;		_delay_100us
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	8
global __ptext7
__ptext7:	;psect for function _delay_3us
psect	text7
	file	"C:\SCMCU WorkSpace\delay.c"
	line	8
	global	__size_of_delay_3us
	__size_of_delay_3us	equ	__end_of_delay_3us-_delay_3us
	
_delay_3us:	
;incstack = 0
	opt	stack 2
; Regs used in _delay_3us: []
	line	10
	
l1492:	
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
psect	text7
	line	17
	
l1098:	
	return
	opt stack 0
GLOBAL	__end_of_delay_3us
	__end_of_delay_3us:
	signat	_delay_3us,89
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
