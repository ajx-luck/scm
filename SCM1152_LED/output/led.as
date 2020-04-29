opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1152A
opt include "C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\include\sc8p1152a.cgen.inc"
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
_timeoutFlag:
       ds      1

	file	"led.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
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
	global	main@FirstFlag
main@FirstFlag:	; 1 bytes @ 0x2
	ds	1
	global	main@count
main@count:	; 2 bytes @ 0x3
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         1
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5       6
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
;! (0) _main                                                 4     4      0      60
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
;!COMMON               E      5       6       1       42.9%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               20      0       0       3        0.0%
;!ABS                  0      0       6       4        0.0%
;!BITBANK0            20      0       0       5        0.0%
;!DATA                 0      0       6       6        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 26 in file "C:\SCMCU WorkSpace\SCM1152_LED\led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    3[COMMON] unsigned int 
;;  FirstFlag       1    2[COMMON] unsigned char 
;;  ledIndex        1    0        unsigned char 
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
	file	"C:\SCMCU WorkSpace\SCM1152_LED\led.c"
	line	26
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\SCMCU WorkSpace\SCM1152_LED\led.c"
	line	26
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	28
	
l709:	
;led.c: 28: Init_System();
	fcall	_Init_System
	line	29
	
l711:	
;led.c: 29: unsigned int count = 0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	30
	
l713:	
;led.c: 31: unsigned char ledIndex = 4;
	clrf	(main@FirstFlag)
	incf	(main@FirstFlag),f
	line	32
;led.c: 32: while(1)
	
l288:	
	line	34
# 34 "C:\SCMCU WorkSpace\SCM1152_LED\led.c"
clrwdt ;# 
psect	maintext
	line	35
	
l715:	
;led.c: 35: if(timeoutFlag)
	movf	((_timeoutFlag)),w
	btfsc	status,2
	goto	u11
	goto	u10
u11:
	goto	l288
u10:
	line	37
	
l717:	
;led.c: 36: {
;led.c: 37: timeoutFlag = 0;
	clrf	(_timeoutFlag)
	line	38
	
l719:	
;led.c: 38: if(count == 400)
		movlw	144
	xorwf	((main@count)),w
	skipz
	goto	u21
	decf	((main@count+1)),w
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l723
u20:
	line	40
	
l721:	
;led.c: 39: {
;led.c: 40: count = 0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	43
	
l723:	
;led.c: 41: }
;led.c: 43: if(FirstFlag)
	movf	((main@FirstFlag)),w
	btfsc	status,2
	goto	u31
	goto	u30
u31:
	goto	l751
u30:
	goto	l739
	line	48
	
l727:	
;led.c: 48: PORTB = 0xFC;
	movlw	low(0FCh)
	movwf	(5)	;volatile
	line	49
;led.c: 49: break;
	goto	l753
	line	51
	
l729:	
;led.c: 51: PORTB = 0xF9;
	movlw	low(0F9h)
	movwf	(5)	;volatile
	line	52
;led.c: 52: break;
	goto	l753
	line	54
	
l731:	
;led.c: 54: PORTB = 0xF3;
	movlw	low(0F3h)
	movwf	(5)	;volatile
	line	55
	
l733:	
;led.c: 55: FirstFlag = 0;
	clrf	(main@FirstFlag)
	line	56
;led.c: 56: break;
	goto	l753
	line	58
	
l735:	
;led.c: 58: PORTB = 0xFE;
	movlw	low(0FEh)
	movwf	(5)	;volatile
	line	59
;led.c: 59: break;
	goto	l753
	line	45
	
l739:	
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
	goto	l895
	xorlw	1^0	; case 1
	skipnz
	goto	l897
	goto	l753
	opt asmopt_pop
	
l895:	
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
	goto	l735
	xorlw	100^0	; case 100
	skipnz
	goto	l727
	xorlw	200^100	; case 200
	skipnz
	goto	l729
	goto	l753
	opt asmopt_pop
	
l897:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 44 to 44
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           10     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (main@count),w
	opt asmopt_push
	opt asmopt_off
	xorlw	44^0	; case 44
	skipnz
	goto	l731
	goto	l753
	opt asmopt_pop

	line	66
	
l741:	
;led.c: 66: PORTB = 0xEC;
	movlw	low(0ECh)
	movwf	(5)	;volatile
	line	67
;led.c: 67: break;
	goto	l753
	line	72
	
l745:	
;led.c: 72: PORTB = 0xF3;
	movlw	low(0F3h)
	movwf	(5)	;volatile
	line	73
;led.c: 73: break;
	goto	l753
	line	75
	
l747:	
;led.c: 75: PORTB = 0xE6;
	movlw	low(0E6h)
	movwf	(5)	;volatile
	line	76
;led.c: 76: break;
	goto	l753
	line	63
	
l751:	
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
	goto	l899
	xorlw	1^0	; case 1
	skipnz
	goto	l901
	goto	l753
	opt asmopt_pop
	
l899:	
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
	goto	l747
	xorlw	100^0	; case 100
	skipnz
	goto	l741
	xorlw	200^100	; case 200
	skipnz
	goto	l729
	goto	l753
	opt asmopt_pop
	
l901:	
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 44 to 44
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           10     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (main@count),w
	opt asmopt_push
	opt asmopt_off
	xorlw	44^0	; case 44
	skipnz
	goto	l745
	goto	l753
	opt asmopt_pop

	line	81
	
l753:	
;led.c: 78: }
;led.c: 81: count++;
	incf	(main@count),f
	skipnz
	incf	(main@count+1),f
	goto	l288
	global	start
	ljmp	start
	opt stack 0
	line	85
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 7 in file "C:\SCMCU WorkSpace\SCM1152_LED\led.c"
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
	line	7
global __ptext1
__ptext1:	;psect for function _Init_System
psect	text1
	file	"C:\SCMCU WorkSpace\SCM1152_LED\led.c"
	line	7
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	9
	
l689:	
# 9 "C:\SCMCU WorkSpace\SCM1152_LED\led.c"
nop ;# 
	line	10
# 10 "C:\SCMCU WorkSpace\SCM1152_LED\led.c"
clrwdt ;# 
psect	text1
	line	11
	
l691:	
;led.c: 11: INTCON = 0;
	clrf	(9)	;volatile
	line	12
	
l693:	
;led.c: 12: OSCCON = 0X71;
	movlw	low(071h)
	movwf	(8)	;volatile
	line	13
	
l695:	
;led.c: 13: OPTION_REG = 0x00;
	clrf	(7)	;volatile
	line	14
	
l697:	
;led.c: 14: TMR0 = 0;
	clrf	(1)	;volatile
	line	15
	
l699:	
;led.c: 15: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(9)	;volatile
	line	16
	
l701:	
;led.c: 16: TMR0PRD = 100;
	movlw	low(064h)
	movwf	(15)	;volatile
	line	19
	
l703:	
;led.c: 19: TRISB = 0;
	clrf	(6)	;volatile
	line	20
;led.c: 20: WPUB = 0xFF;
	movlw	low(0FFh)
	movwf	(13)	;volatile
	line	21
	
l705:	
;led.c: 21: PDCONB = 0;
	clrf	(11)	;volatile
	line	22
	
l707:	
;led.c: 22: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(5)	;volatile
	line	23
;led.c: 23: IOCB = 0x00;
	clrf	(14)	;volatile
	line	24
	
l283:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 94 in file "C:\SCMCU WorkSpace\SCM1152_LED\led.c"
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
	line	94
global __ptext2
__ptext2:	;psect for function _Timer0_Isr
psect	text2
	file	"C:\SCMCU WorkSpace\SCM1152_LED\led.c"
	line	94
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
	line	96
	
i1l771:	
;led.c: 96: if(T0IF)
	btfss	(74/8),(74)&7	;volatile
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l313
u4_20:
	line	102
	
i1l773:	
;led.c: 97: {
;led.c: 102: T0IF = 0;
	bcf	(74/8),(74)&7	;volatile
	line	103
;led.c: 103: timeoutFlag = 1;
	clrf	(_timeoutFlag)
	incf	(_timeoutFlag),f
	line	105
	
i1l313:	
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
