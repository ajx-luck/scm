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
	FNCALL	_main,_Init_System
	FNROOT	_main
	global	_rec_eedatbak
	global	_rec_eedat
	global	_INTCON
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_INTCON	set	11
	global	_PORTB
_PORTB	set	6
	global	_OPA1CON
_OPA1CON	set	154
	global	_OPA0CON
_OPA0CON	set	152
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
	global	_OPA1COFM
_OPA1COFM	set	1246
	global	_OPA0COFM
_OPA0COFM	set	1230
; #config settings
	file	"SC8F289XB_OPAO_Demo.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_rec_eedatbak:
       ds      1

_rec_eedat:
       ds      1

	file	"SC8F289XB_OPAO_Demo.as"
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
??_Init_System:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
??_main:	; 1 bytes @ 0x0
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      0       2
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
;!                        _Init_System
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Init_System
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      0       2       1       14.3%
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
;!ABS                  0      0       2       8        0.0%
;!DATA                 0      0       2       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_OPAO_Demo\SC8F289XB_OPAO_Demo.c"
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
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Init_System
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_OPAO_Demo\SC8F289XB_OPAO_Demo.c"
	line	13
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_OPAO_Demo\SC8F289XB_OPAO_Demo.c"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	16
	
l1147:	
;SC8F289XB_OPAO_Demo.c: 16: Init_System();
	fcall	_Init_System
	line	46
	
l1149:	
;SC8F289XB_OPAO_Demo.c: 46: OPA0COFM = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1230/8)^080h,(1230)&7	;volatile
	line	47
	
l1151:	
;SC8F289XB_OPAO_Demo.c: 47: OPA1COFM = 0;
	bcf	(1246/8)^080h,(1246)&7	;volatile
	line	69
	
l1153:	
;SC8F289XB_OPAO_Demo.c: 69: OPA0CON = 0B11010001;
	movlw	low(0D1h)
	movwf	(152)^080h	;volatile
	line	70
	
l1155:	
;SC8F289XB_OPAO_Demo.c: 70: OPA1CON = 0B11000000;
	movlw	low(0C0h)
	movwf	(154)^080h	;volatile
	line	71
;SC8F289XB_OPAO_Demo.c: 71: while(1)
	
l753:	
	line	73
# 73 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_OPAO_Demo\SC8F289XB_OPAO_Demo.c"
clrwdt ;# 
psect	maintext
	line	74
	
l1157:	
;SC8F289XB_OPAO_Demo.c: 74: EECON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(140)^080h	;volatile
	goto	l753
	global	start
	ljmp	start
	opt stack 0
	line	76
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 86 in file "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_OPAO_Demo\SC8F289XB_OPAO_Demo.c"
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
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	86
global __ptext1
__ptext1:	;psect for function _Init_System
psect	text1
	file	"F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_OPAO_Demo\SC8F289XB_OPAO_Demo.c"
	line	86
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 7
; Regs used in _Init_System: [wreg+status,2]
	line	88
	
l1135:	
# 88 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_OPAO_Demo\SC8F289XB_OPAO_Demo.c"
nop ;# 
	line	89
# 89 "F:\中微资料\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_OPAO_Demo\SC8F289XB_OPAO_Demo.c"
clrwdt ;# 
psect	text1
	line	90
	
l1137:	
;SC8F289XB_OPAO_Demo.c: 90: INTCON = 0;
	clrf	(11)	;volatile
	line	91
	
l1139:	
;SC8F289XB_OPAO_Demo.c: 91: OSCCON = 0X72;
	movlw	low(072h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	92
	
l1141:	
;SC8F289XB_OPAO_Demo.c: 92: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	94
;SC8F289XB_OPAO_Demo.c: 94: TRISA = 0B00111111;
	movlw	low(03Fh)
	movwf	(133)^080h	;volatile
	line	95
	
l1143:	
;SC8F289XB_OPAO_Demo.c: 95: TRISB = 0B00000000;
	clrf	(134)^080h	;volatile
	line	98
	
l1145:	
;SC8F289XB_OPAO_Demo.c: 98: PORTB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	100
	
l759:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
