opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1152A
opt include "E:\cms\SCMCU_IDE_V2.00.07\data\include\sc8p1152a.cgen.inc"
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
	FNROOT	_main
	FNCALL	intlevel1,_Timer0_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_minuteFlag
	global	_hourCount
	global	_timeoutFlag
	global	_TMR0PRD
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_TMR0PRD	set	15
	global	_IOCB
_IOCB	set	14
	global	_WPUB
_WPUB	set	13
	global	_PDCONB
_PDCONB	set	11
	global	_INTCON
_INTCON	set	9
	global	_OSCCON
_OSCCON	set	8
	global	_OPTION_REG
_OPTION_REG	set	7
	global	_TRISB
_TRISB	set	6
	global	_PORTB
_PORTB	set	5
	global	_TMR0
_TMR0	set	1
	global	_T0IF
_T0IF	set	74
; #config settings
	file	"led.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_minuteFlag:
       ds      2

_hourCount:
       ds      1

_timeoutFlag:
       ds      1

	file	"led.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
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
?_Timer0_Isr:	; 1 bytes @ 0x0
??_Timer0_Isr:	; 1 bytes @ 0x0
	ds	2
??_Init_System:	; 1 bytes @ 0x2
??_main:	; 1 bytes @ 0x2
	global	main@timeout1MSFlag
main@timeout1MSFlag:	; 1 bytes @ 0x2
	ds	1
	global	main@count
main@count:	; 2 bytes @ 0x3
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         4
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5       9
;!    BANK0            32      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _Timer0_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _Timer0_Isr in BANK0
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
;! (0) _main                                                 3     3      0      45
;!                                              2 COMMON     3     3      0
;!                        _Init_System
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _Timer0_Isr                                           2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Init_System
;!
;! _Timer0_Isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      5       9       1       64.3%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               20      0       0       3        0.0%
;!ABS                  0      0       9       4        0.0%
;!BITBANK0            20      0       0       5        0.0%
;!DATA                 0      0       9       6        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 29 in file "E:\project\project0508\scm\SCM1152_LED\led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    3[COMMON] unsigned int 
;;  timeout1MSFl    1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         3       0
;;      Temps:          0       0
;;      Totals:         3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Init_System
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"E:\project\project0508\scm\SCM1152_LED\led.c"
	line	29
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\project\project0508\scm\SCM1152_LED\led.c"
	line	29
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	31
	
l710:	
;led.c: 31: Init_System();
	fcall	_Init_System
	line	32
	
l712:	
;led.c: 32: unsigned int count = 0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	33
	
l714:	
;led.c: 33: unsigned char timeout1MSFlag = 0;
	clrf	(main@timeout1MSFlag)
	line	37
	
l716:	
;led.c: 35: {
;led.c: 37: if(timeoutFlag)
	movf	((_timeoutFlag)),w
	btfsc	status,2
	goto	u11
	goto	u10
u11:
	goto	l716
u10:
	line	39
	
l718:	
;led.c: 38: {
;led.c: 39: timeoutFlag = 0;
	clrf	(_timeoutFlag)
	line	40
# 40 "E:\project\project0508\scm\SCM1152_LED\led.c"
clrwdt ;# 
psect	maintext
	line	41
	
l720:	
;led.c: 41: if(count == 500)
		movlw	244
	xorwf	((main@count)),w
	skipz
	goto	u21
	decf	((main@count+1)),w
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l726
u20:
	line	43
	
l722:	
;led.c: 42: {
;led.c: 43: count = 0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	44
	
l724:	
;led.c: 44: minuteFlag++;
	incf	(_minuteFlag),f
	skipnz
	incf	(_minuteFlag+1),f
	line	47
	
l726:	
;led.c: 45: }
;led.c: 47: if(minuteFlag == 3)
		movlw	3
	xorwf	((_minuteFlag)),w
iorwf	((_minuteFlag+1)),w
	btfss	status,2
	goto	u31
	goto	u30
u31:
	goto	l732
u30:
	line	49
	
l728:	
;led.c: 48: {
;led.c: 49: minuteFlag = 0;
	clrf	(_minuteFlag)
	clrf	(_minuteFlag+1)
	line	50
	
l730:	
;led.c: 50: hourCount++;
	incf	(_hourCount),f
	line	53
	
l732:	
;led.c: 51: }
;led.c: 53: if(hourCount == 24)
		movlw	24
	xorwf	((_hourCount)),w
	btfss	status,2
	goto	u41
	goto	u40
u41:
	goto	l736
u40:
	line	55
	
l734:	
;led.c: 54: {
;led.c: 55: hourCount = 0;
	clrf	(_hourCount)
	line	58
	
l736:	
;led.c: 56: }
;led.c: 58: if(timeout1MSFlag == 10)
		movlw	10
	xorwf	((main@timeout1MSFlag)),w
	btfss	status,2
	goto	u51
	goto	u50
u51:
	goto	l742
u50:
	line	60
	
l738:	
;led.c: 59: {
;led.c: 60: timeout1MSFlag =0;
	clrf	(main@timeout1MSFlag)
	line	61
	
l740:	
;led.c: 61: count++;
	incf	(main@count),f
	skipnz
	incf	(main@count+1),f
	line	64
	
l742:	
;led.c: 62: }
;led.c: 64: timeout1MSFlag++;
	incf	(main@timeout1MSFlag),f
	line	67
	
l744:	
;led.c: 67: if(hourCount > 5)
	movlw	low(06h)
	subwf	(_hourCount),w
	skipc
	goto	u61
	goto	u60
u61:
	goto	l750
u60:
	line	69
	
l746:	
;led.c: 68: {
;led.c: 69: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(5)	;volatile
	line	70
;led.c: 70: continue;
	goto	l716
	line	75
;led.c: 74: {
;led.c: 75: case 0:
	
l301:	
	line	76
;led.c: 76: PORTB&=~(1<<4);
	bcf	(5)+(4/8),(4)&7	;volatile
	line	77
;led.c: 77: PORTB|=(1<<2);
	bsf	(5)+(2/8),(2)&7	;volatile
	line	78
;led.c: 78: break;
	goto	l716
	line	79
;led.c: 79: case 100:
	
l303:	
	line	80
;led.c: 80: PORTB&=~(1<<3);
	bcf	(5)+(3/8),(3)&7	;volatile
	line	81
;led.c: 81: PORTB|=(1<<1);
	bsf	(5)+(1/8),(1)&7	;volatile
	line	82
;led.c: 82: break;
	goto	l716
	line	83
;led.c: 83: case 200:
	
l304:	
	line	84
;led.c: 84: PORTB&=~(1<<2);
	bcf	(5)+(2/8),(2)&7	;volatile
	line	85
;led.c: 85: PORTB|=(1<<0);
	bsf	(5)+(0/8),(0)&7	;volatile
	line	86
;led.c: 86: break;
	goto	l716
	line	87
;led.c: 87: case 300:
	
l305:	
	line	88
;led.c: 88: PORTB&=~(1<<1);
	bcf	(5)+(1/8),(1)&7	;volatile
	line	89
;led.c: 89: PORTB|=(1<<4);
	bsf	(5)+(4/8),(4)&7	;volatile
	line	90
;led.c: 90: break;
	goto	l716
	line	91
;led.c: 91: case 400:
	
l306:	
	line	92
;led.c: 92: PORTB&=~(1<<0);
	bcf	(5)+(0/8),(0)&7	;volatile
	line	93
;led.c: 93: PORTB|=(1<<3);
	bsf	(5)+(3/8),(3)&7	;volatile
	line	94
;led.c: 94: break;
	goto	l716
	line	73
	
l750:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 2 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte            8     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (main@count+1),w
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l824
	xorlw	1^0	; case 1
	skipnz
	goto	l826
	goto	l716
	opt asmopt_pop
	
l824:	
; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 200
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte          207     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (main@count),w
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l301
	xorlw	100^0	; case 100
	skipnz
	goto	l303
	xorlw	200^100	; case 200
	skipnz
	goto	l304
	goto	l716
	opt asmopt_pop
	
l826:	
; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 44 to 144
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte          110     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (main@count),w
	opt asmopt_push
	opt asmopt_off
	xorlw	44^0	; case 44
	skipnz
	goto	l305
	xorlw	144^44	; case 144
	skipnz
	goto	l306
	goto	l716
	opt asmopt_pop

	global	start
	ljmp	start
	opt stack 0
	line	100
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 10 in file "E:\project\project0508\scm\SCM1152_LED\led.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       0
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
	line	10
global __ptext1
__ptext1:	;psect for function _Init_System
psect	text1
	file	"E:\project\project0508\scm\SCM1152_LED\led.c"
	line	10
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	12
	
l690:	
# 12 "E:\project\project0508\scm\SCM1152_LED\led.c"
nop ;# 
	line	13
# 13 "E:\project\project0508\scm\SCM1152_LED\led.c"
clrwdt ;# 
psect	text1
	line	14
	
l692:	
;led.c: 14: INTCON = 0;
	clrf	(9)	;volatile
	line	15
	
l694:	
;led.c: 15: OSCCON = 0X71;
	movlw	low(071h)
	movwf	(8)	;volatile
	line	16
	
l696:	
;led.c: 16: OPTION_REG = 0x00;
	clrf	(7)	;volatile
	line	17
	
l698:	
;led.c: 17: TMR0 = 0;
	clrf	(1)	;volatile
	line	18
	
l700:	
;led.c: 18: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(9)	;volatile
	line	19
	
l702:	
;led.c: 19: TMR0PRD = 100;
	movlw	low(064h)
	movwf	(15)	;volatile
	line	22
	
l704:	
;led.c: 22: TRISB = 0;
	clrf	(6)	;volatile
	line	23
;led.c: 23: WPUB = 0xFF;
	movlw	low(0FFh)
	movwf	(13)	;volatile
	line	24
	
l706:	
;led.c: 24: PDCONB = 0;
	clrf	(11)	;volatile
	line	25
	
l708:	
;led.c: 25: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(5)	;volatile
	line	26
;led.c: 26: IOCB = 0x00;
	clrf	(14)	;volatile
	line	27
	
l287:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 109 in file "E:\project\project0508\scm\SCM1152_LED\led.c"
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
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          2       0
;;      Totals:         2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	109
global __ptext2
__ptext2:	;psect for function _Timer0_Isr
psect	text2
	file	"E:\project\project0508\scm\SCM1152_LED\led.c"
	line	109
	global	__size_of_Timer0_Isr
	__size_of_Timer0_Isr	equ	__end_of_Timer0_Isr-_Timer0_Isr
	
_Timer0_Isr:	
;incstack = 0
	opt	stack 6
; Regs used in _Timer0_Isr: []
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
psect	text2
	line	111
	
i1l760:	
;led.c: 111: if(T0IF)
	btfss	(74/8),(74)&7	;volatile
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l314
u7_20:
	line	117
	
i1l762:	
;led.c: 112: {
;led.c: 117: T0IF = 0;
	bcf	(74/8),(74)&7	;volatile
	line	118
;led.c: 118: timeoutFlag = 1;
	clrf	(_timeoutFlag)
	incf	(_timeoutFlag),f
	line	120
	
i1l314:	
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
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 04Eh

	DABS	1,78,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
