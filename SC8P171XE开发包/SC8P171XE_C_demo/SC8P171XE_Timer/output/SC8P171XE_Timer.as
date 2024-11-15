opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1712E
opt include "C:\mcuproject\scm\SC8P171XE开发包\SCMCU_IDE_V2.00.09_Beta4\data\include\sc8p1712e.cgen.inc"
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
	FNROOT	_main
	FNCALL	intlevel1,_Timer1_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_T2CON
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_T2CON	set	18
	global	_INTCON
_INTCON	set	11
	global	_PORTB
_PORTB	set	6
	global	_TMR2IF
_TMR2IF	set	97
	global	_PR2
_PR2	set	146
	global	_OSCCON
_OSCCON	set	143
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_TMR2IE
_TMR2IE	set	1121
; #config settings
	file	"SC8P171XE_Timer.as"
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
?_main:	; 1 bytes @ 0x0
?_Timer1_Isr:	; 1 bytes @ 0x0
??_Timer1_Isr:	; 1 bytes @ 0x0
	ds	2
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
;!    None.
;!
;!Critical Paths under _Timer1_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _Timer1_Isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _Timer1_Isr in BANK1
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
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (1) _Timer1_Isr                                           2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!
;! _Timer1_Isr (ROOT)
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
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50      0       0       4        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0       0       7        0.0%
;!DATA                 0      0       0       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 22 in file "C:\mcuproject\scm\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_Timer\SC8P171XE_Timer2.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_Timer\SC8P171XE_Timer2.c"
	line	22
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_Timer\SC8P171XE_Timer2.c"
	line	22
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2]
	line	24
	
l850:	
# 24 "C:\mcuproject\scm\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_Timer\SC8P171XE_Timer2.c"
nop ;# 
	line	25
# 25 "C:\mcuproject\scm\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_Timer\SC8P171XE_Timer2.c"
clrwdt ;# 
psect	maintext
	line	26
	
l852:	
;SC8P171XE_Timer2.c: 26: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	28
	
l854:	
;SC8P171XE_Timer2.c: 28: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	29
	
l856:	
;SC8P171XE_Timer2.c: 29: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	31
;SC8P171XE_Timer2.c: 31: PR2 = 249;
	movlw	low(0F9h)
	movwf	(146)^080h	;volatile
	line	32
	
l858:	
;SC8P171XE_Timer2.c: 32: TMR2IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	line	33
	
l860:	
;SC8P171XE_Timer2.c: 33: TMR2IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	35
;SC8P171XE_Timer2.c: 35: T2CON = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	37
;SC8P171XE_Timer2.c: 37: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	38
;SC8P171XE_Timer2.c: 38: while(1)
	
l465:	
	line	40
# 40 "C:\mcuproject\scm\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_Timer\SC8P171XE_Timer2.c"
clrwdt ;# 
psect	maintext
	goto	l465
	global	start
	ljmp	start
	opt stack 0
	line	42
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Timer1_Isr

;; *************** function _Timer1_Isr *****************
;; Defined at:
;;		line 50 in file "C:\mcuproject\scm\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_Timer\SC8P171XE_Timer2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          2       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	50
global __ptext1
__ptext1:	;psect for function _Timer1_Isr
psect	text1
	file	"C:\mcuproject\scm\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_Timer\SC8P171XE_Timer2.c"
	line	50
	global	__size_of_Timer1_Isr
	__size_of_Timer1_Isr	equ	__end_of_Timer1_Isr-_Timer1_Isr
	
_Timer1_Isr:	
;incstack = 0
	opt	stack 7
; Regs used in _Timer1_Isr: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_Timer1_Isr+0)
	movf	pclath,w
	movwf	(??_Timer1_Isr+1)
	ljmp	_Timer1_Isr
psect	text1
	line	52
	
i1l862:	
;SC8P171XE_Timer2.c: 52: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l474
u1_20:
	line	54
	
i1l864:	
;SC8P171XE_Timer2.c: 53: {
;SC8P171XE_Timer2.c: 54: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	56
	
i1l866:	
;SC8P171XE_Timer2.c: 56: PORTB ^= 0XFF;
	movlw	low(0FFh)
	xorwf	(6),f	;volatile
	line	58
	
i1l474:	
	movf	(??_Timer1_Isr+1),w
	movwf	pclath
	swapf	(??_Timer1_Isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Timer1_Isr
	__end_of_Timer1_Isr:
	signat	_Timer1_Isr,89
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
