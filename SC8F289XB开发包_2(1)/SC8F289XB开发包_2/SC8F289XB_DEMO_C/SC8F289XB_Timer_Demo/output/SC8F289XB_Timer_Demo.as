opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F2892B
opt include "F:\中微资料\SCMCU_IDE_V2.00.11_Beta4\SCMCU_IDE_V2.00.11_Beta4\data\include\sc8f2892b.cgen.inc"
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
	global	_PORTB
psect	maintext,global,class=CODE,delta=2,split=1
global __pmaintext
__pmaintext:
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
_OSCCON	set	136
	global	_TRISB
_TRISB	set	134
	global	_OPTION_REG
_OPTION_REG	set	129
; #config settings
	file	"SC8F289XB_Timer_Demo.as"
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
??_main:	; 1 bytes @ 0x0
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
;!    COMMON           14      0       0
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
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
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
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      0       0       1        0.0%
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
;;		line 3 in file "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Timer_Demo\SC8F289XB_Timer0_Demo.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
psect	maintext
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Timer_Demo\SC8F289XB_Timer0_Demo.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0]
	line	5
	
l1127:	
# 5 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Timer_Demo\SC8F289XB_Timer0_Demo.c"
nop ;# 
	line	6
# 6 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Timer_Demo\SC8F289XB_Timer0_Demo.c"
clrwdt ;# 
psect	maintext
	line	7
	
l1129:	
;SC8F289XB_Timer0_Demo.c: 7: OSCCON = 0X72;
	movlw	low(072h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	9
	
l1131:	
;SC8F289XB_Timer0_Demo.c: 9: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	11
	
l1133:	
;SC8F289XB_Timer0_Demo.c: 11: OPTION_REG = 0B00000000;
	clrf	(129)^080h	;volatile
	line	13
	
l1135:	
;SC8F289XB_Timer0_Demo.c: 13: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	14
	
l1137:	
;SC8F289XB_Timer0_Demo.c: 14: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	15
	
l1139:	
;SC8F289XB_Timer0_Demo.c: 15: T0IE = 0;
	bcf	(93/8),(93)&7	;volatile
	line	17
	
l1141:	
;SC8F289XB_Timer0_Demo.c: 17: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	21
	
l1143:	
;SC8F289XB_Timer0_Demo.c: 20: {
;SC8F289XB_Timer0_Demo.c: 21: if(TMR0 >=125)
	movlw	low(07Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(1),w	;volatile
	skipc
	goto	u11
	goto	u10
u11:
	goto	l748
u10:
	line	23
	
l1145:	
;SC8F289XB_Timer0_Demo.c: 22: {
;SC8F289XB_Timer0_Demo.c: 23: TMR0 -= 125;
	movlw	07Dh
	subwf	(1),f	;volatile
	line	24
;SC8F289XB_Timer0_Demo.c: 24: PORTB ^= 0XFF;
	movlw	low(0FFh)
	xorwf	(6),f	;volatile
	line	25
	
l748:	
	line	26
# 26 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_Timer_Demo\SC8F289XB_Timer0_Demo.c"
clrwdt ;# 
psect	maintext
	goto	l1143
	global	start
	ljmp	start
	opt stack 0
	line	28
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
