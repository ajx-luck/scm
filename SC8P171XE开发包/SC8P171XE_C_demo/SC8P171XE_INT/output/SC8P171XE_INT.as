opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1712E
opt include "H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.09_Beta3\SCMCU_IDE_V2.00.09_Beta3\data\include\sc8p1712e.cgen.inc"
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
	FNCALL	intlevel1,_PB_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_INTCON
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_INTCON	set	11
	global	_PORTB
_PORTB	set	6
	global	_RBIF
_RBIF	set	88
	global	_RBIE
_RBIE	set	91
	global	_RA0
_RA0	set	40
	global	_IOCB
_IOCB	set	150
	global	_WPUB
_WPUB	set	149
	global	_OSCCON
_OSCCON	set	143
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
; #config settings
	file	"SC8P171XE_INT.as"
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
?_PB_Isr:	; 1 bytes @ 0x0
??_PB_Isr:	; 1 bytes @ 0x0
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
;! (1) _PB_Isr                                               2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!
;! _PB_Isr (ROOT)
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
;;		line 14 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_INT\PB_Interrupt_Demo.c"
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
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_INT\PB_Interrupt_Demo.c"
	line	14
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_INT\PB_Interrupt_Demo.c"
	line	14
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2]
	line	16
	
l850:	
# 16 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_INT\PB_Interrupt_Demo.c"
nop ;# 
	line	17
# 17 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_INT\PB_Interrupt_Demo.c"
clrwdt ;# 
psect	maintext
	line	19
	
l852:	
;PB_Interrupt_Demo.c: 19: OSCCON = 0x70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	20
	
l854:	
;PB_Interrupt_Demo.c: 20: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	21
	
l856:	
;PB_Interrupt_Demo.c: 21: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	23
;PB_Interrupt_Demo.c: 23: WPUB = 0B00001000;
	movlw	low(08h)
	movwf	(149)^080h	;volatile
	line	24
;PB_Interrupt_Demo.c: 24: TRISB = 0B00001000;
	movlw	low(08h)
	movwf	(134)^080h	;volatile
	line	25
;PB_Interrupt_Demo.c: 25: IOCB = 0B00001000;
	movlw	low(08h)
	movwf	(150)^080h	;volatile
	line	26
	
l858:	
;PB_Interrupt_Demo.c: 26: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	27
;PB_Interrupt_Demo.c: 27: INTCON = 0xC8;
	movlw	low(0C8h)
	movwf	(11)	;volatile
	line	28
;PB_Interrupt_Demo.c: 28: PORTB;
	bcf	status, 5	;RP0=0, select bank0
	movf	(6),w	;volatile
	line	31
;PB_Interrupt_Demo.c: 31: while(1)
	
l465:	
	line	33
# 33 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_INT\PB_Interrupt_Demo.c"
clrwdt ;# 
psect	maintext
	goto	l465
	global	start
	ljmp	start
	opt stack 0
	line	35
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_PB_Isr

;; *************** function _PB_Isr *****************
;; Defined at:
;;		line 45 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_INT\PB_Interrupt_Demo.c"
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
	line	45
global __ptext1
__ptext1:	;psect for function _PB_Isr
psect	text1
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_INT\PB_Interrupt_Demo.c"
	line	45
	global	__size_of_PB_Isr
	__size_of_PB_Isr	equ	__end_of_PB_Isr-_PB_Isr
	
_PB_Isr:	
;incstack = 0
	opt	stack 7
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
psect	text1
	line	47
	
i1l860:	
;PB_Interrupt_Demo.c: 47: if(RBIF)
	btfss	(88/8),(88)&7	;volatile
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l474
u1_20:
	line	49
	
i1l862:	
;PB_Interrupt_Demo.c: 48: {
;PB_Interrupt_Demo.c: 49: PORTB;
	bcf	status, 5	;RP0=0, select bank0
	movf	(6),w	;volatile
	line	50
	
i1l864:	
;PB_Interrupt_Demo.c: 50: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	51
;PB_Interrupt_Demo.c: 51: RA0 = !RA0;
	movlw	1<<((40)&7)
	xorwf	((40)/8),f
	line	53
	
i1l474:	
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
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
