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
	ds	1
	global	main@count
main@count:	; 2 bytes @ 0x3
	ds	2
	global	main@index
main@index:	; 1 bytes @ 0x5
	ds	1
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
;!    COMMON           14      6       7
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     4      0      45
;!                                              2 COMMON     4     4      0
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
;!COMMON               E      6       7       1       50.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               20      0       0       3        0.0%
;!ABS                  0      0       7       4        0.0%
;!BITBANK0            20      0       0       5        0.0%
;!DATA                 0      0       7       6        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 28 in file "E:\project\scm\SCM1152_LED\led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    3[COMMON] unsigned int 
;;  index           1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         3       0
;;      Temps:          1       0
;;      Totals:         4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Init_System
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"E:\project\scm\SCM1152_LED\led.c"
	line	28
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\project\scm\SCM1152_LED\led.c"
	line	28
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l698:	
;led.c: 30: Init_System();
	fcall	_Init_System
	line	31
	
l700:	
;led.c: 31: unsigned int count = 0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	32
	
l702:	
;led.c: 32: unsigned char index = 0;
	clrf	(main@index)
	line	33
;led.c: 33: while(1)
	
l288:	
	line	35
# 35 "E:\project\scm\SCM1152_LED\led.c"
clrwdt ;# 
psect	maintext
	line	36
	
l704:	
;led.c: 36: if(timeoutFlag)
	movf	((_timeoutFlag)),w
	btfsc	status,2
	goto	u11
	goto	u10
u11:
	goto	l288
u10:
	line	38
	
l706:	
;led.c: 37: {
;led.c: 38: timeoutFlag = 0;
	clrf	(_timeoutFlag)
	line	39
	
l708:	
;led.c: 39: count++;
	incf	(main@count),f
	skipnz
	incf	(main@count+1),f
	line	40
	
l710:	
;led.c: 40: if(count == 500)
		movlw	244
	xorwf	((main@count)),w
	skipz
	goto	u21
	decf	((main@count+1)),w
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l288
u20:
	line	42
	
l712:	
;led.c: 41: {
;led.c: 42: count =0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	43
	
l714:	
;led.c: 43: PORTB^=(1<<index++);
	movlw	low(01h)
	movwf	(??_main+0)+0
	incf	(main@index),w
	goto	u34
u35:
	clrc
	rlf	(??_main+0)+0,f
u34:
	addlw	-1
	skipz
	goto	u35
	movf	0+(??_main+0)+0,w
	xorwf	(5),f	;volatile
	
l716:	
	incf	(main@index),f
	line	44
	
l718:	
;led.c: 44: if(index == 5)
		movlw	5
	xorwf	((main@index)),w
	btfss	status,2
	goto	u41
	goto	u40
u41:
	goto	l289
u40:
	goto	l702
	line	49
	
l289:	
	goto	l288
	global	start
	ljmp	start
	opt stack 0
	line	51
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 9 in file "E:\project\scm\SCM1152_LED\led.c"
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
	line	9
global __ptext1
__ptext1:	;psect for function _Init_System
psect	text1
	file	"E:\project\scm\SCM1152_LED\led.c"
	line	9
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	11
	
l676:	
# 11 "E:\project\scm\SCM1152_LED\led.c"
nop ;# 
	line	12
# 12 "E:\project\scm\SCM1152_LED\led.c"
clrwdt ;# 
psect	text1
	line	13
	
l678:	
;led.c: 13: INTCON = 0;
	clrf	(9)	;volatile
	line	14
	
l680:	
;led.c: 14: OSCCON = 0X71;
	movlw	low(071h)
	movwf	(8)	;volatile
	line	15
	
l682:	
;led.c: 15: OPTION_REG = 0x00;
	clrf	(7)	;volatile
	line	16
	
l684:	
;led.c: 16: TMR0 = 0;
	clrf	(1)	;volatile
	line	17
	
l686:	
;led.c: 17: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(9)	;volatile
	line	18
	
l688:	
;led.c: 18: TMR0PRD = 100;
	movlw	low(064h)
	movwf	(15)	;volatile
	line	21
	
l690:	
;led.c: 21: TRISB = 0;
	clrf	(6)	;volatile
	line	22
;led.c: 22: WPUB = 0xFF;
	movlw	low(0FFh)
	movwf	(13)	;volatile
	line	23
	
l692:	
;led.c: 23: PDCONB = 0;
	clrf	(11)	;volatile
	line	24
	
l694:	
;led.c: 24: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(5)	;volatile
	line	25
	
l696:	
;led.c: 25: IOCB = 0xFF;
	movlw	low(0FFh)
	movwf	(14)	;volatile
	line	26
	
l283:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 60 in file "E:\project\scm\SCM1152_LED\led.c"
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
	line	60
global __ptext2
__ptext2:	;psect for function _Timer0_Isr
psect	text2
	file	"E:\project\scm\SCM1152_LED\led.c"
	line	60
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
	line	62
	
i1l722:	
;led.c: 62: if(T0IF)
	btfss	(74/8),(74)&7	;volatile
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l300
u5_20:
	line	68
	
i1l724:	
;led.c: 63: {
;led.c: 68: T0IF = 0;
	bcf	(74/8),(74)&7	;volatile
	line	69
;led.c: 69: timeoutFlag = 1;
	clrf	(_timeoutFlag)
	incf	(_timeoutFlag),f
	line	71
	
i1l300:	
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
