opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	79F5139
opt include "C:\工具\单片机~1\SC8P\CMS_ID~1.15\data\include\79f5139.cgen.inc"
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
	FNCALL	_main,_Set_CCP_PWM
	FNROOT	_main
	global	_PWM23DT
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_PWM23DT	set	148
	global	_PWM01DT
_PWM01DT	set	147
	global	_OSCCON
_OSCCON	set	143
	global	_TRISA
_TRISA	set	133
	global	_PWMD23H
_PWMD23H	set	285
	global	_PWMD01H
_PWMD01H	set	284
	global	_PWMCON2
_PWMCON2	set	265
	global	_PWMCON1
_PWMCON1	set	264
	global	_PWMCON0
_PWMCON0	set	263
	global	_PWMD4L
_PWMD4L	set	407
	global	_PWMD3L
_PWMD3L	set	406
	global	_PWMD2L
_PWMD2L	set	405
	global	_PWMD1L
_PWMD1L	set	404
	global	_PWMD0L
_PWMD0L	set	403
	global	_PWMT4L
_PWMT4L	set	401
	global	_PWMTH
_PWMTH	set	400
	global	_PWMTL
_PWMTL	set	399
; #config settings
	file	"PWM_Demo.as"
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
?_Set_CCP_PWM:	; 1 bytes @ 0x0
??_Set_CCP_PWM:	; 1 bytes @ 0x0
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
;!    BANK3            88      0       0
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
;!Critical Paths under _main in BANK3
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
;!                        _Set_CCP_PWM
;! ---------------------------------------------------------------------------------
;! (1) _Set_CCP_PWM                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Set_CCP_PWM
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
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            58      0       0       8        0.0%
;!BANK3               58      0       0       9        0.0%
;!BITBANK2            50      0       0      10        0.0%
;!BANK2               50      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 23 in file "C:\mcuproject\scm\CMS79F5118_5139程序\PWM_Demo\PWM.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Set_CCP_PWM
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\CMS79F5118_5139程序\PWM_Demo\PWM.c"
	line	23
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\CMS79F5118_5139程序\PWM_Demo\PWM.c"
	line	23
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	25
	
l1141:	
# 25 "C:\mcuproject\scm\CMS79F5118_5139程序\PWM_Demo\PWM.c"
nop ;# 
	line	26
# 26 "C:\mcuproject\scm\CMS79F5118_5139程序\PWM_Demo\PWM.c"
clrwdt ;# 
psect	maintext
	line	28
	
l1143:	
;PWM.c: 28: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	30
	
l1145:	
;PWM.c: 30: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	32
	
l1147:	
;PWM.c: 32: Set_CCP_PWM();
	fcall	_Set_CCP_PWM
	line	34
;PWM.c: 34: while(1)
	
l737:	
	line	36
# 36 "C:\mcuproject\scm\CMS79F5118_5139程序\PWM_Demo\PWM.c"
clrwdt ;# 
psect	maintext
	goto	l737
	global	start
	ljmp	start
	opt stack 0
	line	38
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Set_CCP_PWM

;; *************** function _Set_CCP_PWM *****************
;; Defined at:
;;		line 49 in file "C:\mcuproject\scm\CMS79F5118_5139程序\PWM_Demo\PWM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/200
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	49
global __ptext1
__ptext1:	;psect for function _Set_CCP_PWM
psect	text1
	file	"C:\mcuproject\scm\CMS79F5118_5139程序\PWM_Demo\PWM.c"
	line	49
	global	__size_of_Set_CCP_PWM
	__size_of_Set_CCP_PWM	equ	__end_of_Set_CCP_PWM-_Set_CCP_PWM
	
_Set_CCP_PWM:	
;incstack = 0
	opt	stack 7
; Regs used in _Set_CCP_PWM: [wreg+status,2]
	line	51
	
l1119:	
;PWM.c: 51: PWMTL = 0x8f;
	movlw	low(08Fh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	52
;PWM.c: 52: PWMTH = 0x05;
	movlw	low(05h)
	movwf	(400)^0180h	;volatile
	line	53
;PWM.c: 53: PWMT4L = 0x8f;
	movlw	low(08Fh)
	movwf	(401)^0180h	;volatile
	line	56
;PWM.c: 56: PWMD0L = 0x4f;
	movlw	low(04Fh)
	movwf	(403)^0180h	;volatile
	line	58
;PWM.c: 58: PWMD1L = 0x9f;
	movlw	low(09Fh)
	movwf	(404)^0180h	;volatile
	line	59
	
l1121:	
;PWM.c: 59: PWMD01H = 0x00;
	bcf	status, 5	;RP0=0, select bank2
	clrf	(284)^0100h	;volatile
	line	61
	
l1123:	
;PWM.c: 61: PWMD2L = 0xef;
	movlw	low(0EFh)
	bsf	status, 5	;RP0=1, select bank3
	movwf	(405)^0180h	;volatile
	line	63
	
l1125:	
;PWM.c: 63: PWMD3L = 0x3f;
	movlw	low(03Fh)
	movwf	(406)^0180h	;volatile
	line	64
	
l1127:	
;PWM.c: 64: PWMD23H = 0x10;
	movlw	low(010h)
	bcf	status, 5	;RP0=0, select bank2
	movwf	(285)^0100h	;volatile
	line	66
	
l1129:	
;PWM.c: 66: PWMD4L = 0xc7;
	movlw	low(0C7h)
	bsf	status, 5	;RP0=1, select bank3
	movwf	(407)^0180h	;volatile
	line	69
	
l1131:	
;PWM.c: 69: PWM01DT = 0;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(147)^080h	;volatile
	line	70
	
l1133:	
;PWM.c: 70: PWM23DT = 0;
	clrf	(148)^080h	;volatile
	line	72
	
l1135:	
;PWM.c: 72: PWMCON2 = 0B00000000;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(265)^0100h	;volatile
	line	73
	
l1137:	
;PWM.c: 73: PWMCON1 = 0B00000000;
	clrf	(264)^0100h	;volatile
	line	74
	
l1139:	
;PWM.c: 74: PWMCON0 = 0B00111111;
	movlw	low(03Fh)
	movwf	(263)^0100h	;volatile
	line	76
	
l743:	
	return
	opt stack 0
GLOBAL	__end_of_Set_CCP_PWM
	__end_of_Set_CCP_PWM:
	signat	_Set_CCP_PWM,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
