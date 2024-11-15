opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1712D
opt include "H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.08_Beta8\SCMCU_IDE_V2.00.08_Beta8\data\include\sc8p1712d.cgen.inc"
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
	FNCALL	intlevel1,_Timer0_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_PORTB
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_PORTB	set	6
	global	_TMR0
_TMR0	set	1
	global	_T0IF
_T0IF	set	90
	global	_T0IE
_T0IE	set	93
	global	_GIE
_GIE	set	95
	global	_OSCCON
_OSCCON	set	143
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
; #config settings
	file	"SC8P171XD_Timer.as"
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
?_Timer0_Isr:	; 1 bytes @ 0x0
??_Timer0_Isr:	; 1 bytes @ 0x0
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
;! (0) _main                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (1) _Timer0_Isr                                           2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!
;! _Timer0_Isr (ROOT)
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
;;		line 3 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XD开发包\SC8P171XD_C_demo\SC8P171XD_Timer\SC8P171XD_Timer0.c"
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
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8P171XD开发包\SC8P171XD_C_demo\SC8P171XD_Timer\SC8P171XD_Timer0.c"
	line	3
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8P171XD开发包\SC8P171XD_C_demo\SC8P171XD_Timer\SC8P171XD_Timer0.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2]
	line	5
	
l796:	
# 5 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XD开发包\SC8P171XD_C_demo\SC8P171XD_Timer\SC8P171XD_Timer0.c"
nop ;# 
	line	6
# 6 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XD开发包\SC8P171XD_C_demo\SC8P171XD_Timer\SC8P171XD_Timer0.c"
clrwdt ;# 
psect	maintext
	line	7
	
l798:	
;SC8P171XD_Timer0.c: 7: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	9
	
l800:	
;SC8P171XD_Timer0.c: 9: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	10
	
l802:	
;SC8P171XD_Timer0.c: 10: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	12
	
l804:	
;SC8P171XD_Timer0.c: 12: OPTION_REG = 0B00000000;
	clrf	(129)^080h	;volatile
	line	14
	
l806:	
;SC8P171XD_Timer0.c: 14: TMR0 = 6;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	15
	
l808:	
;SC8P171XD_Timer0.c: 15: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	16
	
l810:	
;SC8P171XD_Timer0.c: 16: T0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	18
	
l812:	
;SC8P171XD_Timer0.c: 18: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	20
;SC8P171XD_Timer0.c: 20: while(1)
	
l411:	
	line	22
# 22 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XD开发包\SC8P171XD_C_demo\SC8P171XD_Timer\SC8P171XD_Timer0.c"
clrwdt ;# 
psect	maintext
	goto	l411
	global	start
	ljmp	start
	opt stack 0
	line	24
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 26 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XD开发包\SC8P171XD_C_demo\SC8P171XD_Timer\SC8P171XD_Timer0.c"
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
	line	26
global __ptext1
__ptext1:	;psect for function _Timer0_Isr
psect	text1
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8P171XD开发包\SC8P171XD_C_demo\SC8P171XD_Timer\SC8P171XD_Timer0.c"
	line	26
	global	__size_of_Timer0_Isr
	__size_of_Timer0_Isr	equ	__end_of_Timer0_Isr-_Timer0_Isr
	
_Timer0_Isr:	
;incstack = 0
	opt	stack 7
; Regs used in _Timer0_Isr: [wreg+status,2+status,0]
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
psect	text1
	line	28
	
i1l814:	
;SC8P171XD_Timer0.c: 28: if(T0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l420
u1_20:
	line	30
	
i1l816:	
;SC8P171XD_Timer0.c: 29: {
;SC8P171XD_Timer0.c: 30: TMR0 += 6;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	addwf	(1),f	;volatile
	line	31
	
i1l818:	
;SC8P171XD_Timer0.c: 31: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	33
;SC8P171XD_Timer0.c: 33: PORTB ^= 0XFF;
	movlw	low(0FFh)
	xorwf	(6),f	;volatile
	line	35
	
i1l420:	
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
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
