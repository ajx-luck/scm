opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1712D
opt include "H:\MyDownloads\IDE\SCMCU_IDE_V2.00.05\SCMCU_IDE_V2.00.05\data\include\sc8p1712d.cgen.inc"
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
	global	_PWMCON
psect	maintext,global,class=CODE,delta=2,split=1
global __pmaintext
__pmaintext:
_PWMCON	set	27
	global	_PWMTH
_PWMTH	set	26
	global	_PWMTL
_PWMTL	set	25
	global	_PWMD01H
_PWMD01H	set	24
	global	_PWMD1L
_PWMD1L	set	23
	global	_PWMD0L
_PWMD0L	set	22
	global	_PWMIF
_PWMIF	set	98
	global	_OSCCON
_OSCCON	set	143
	global	_TRISA
_TRISA	set	133
; #config settings
	file	"SC8P171XD_PWM.as"
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
	global	main@delaycnt
main@delaycnt:	; 2 bytes @ 0x0
	ds	2
	global	main@pwmbuf
main@pwmbuf:	; 1 bytes @ 0x2
	ds	1
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
;!    COMMON           14      3       3
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
;! (0) _main                                                 3     3      0      30
;!                                              0 COMMON     3     3      0
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
;!COMMON               E      3       3       1       21.4%
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
;;		line 5 in file "F:\TEST_CODE\SC8P171XD_C\SC8P171XD_PWM\SC8P171XD_PWM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  delaycnt        2    0[COMMON] unsigned int 
;;  pwmbuf          1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         3       0       0
;;      Temps:          0       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
psect	maintext
	file	"F:\TEST_CODE\SC8P171XD_C\SC8P171XD_PWM\SC8P171XD_PWM.c"
	line	5
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0]
	line	7
	
l791:	
;SC8P171XD_PWM.c: 7: unsigned int delaycnt = 0;
	clrf	(main@delaycnt)
	clrf	(main@delaycnt+1)
	line	8
;SC8P171XD_PWM.c: 8: unsigned char pwmbuf = 0;
	clrf	(main@pwmbuf)
	line	10
# 10 "F:\TEST_CODE\SC8P171XD_C\SC8P171XD_PWM\SC8P171XD_PWM.c"
nop ;# 
	line	11
# 11 "F:\TEST_CODE\SC8P171XD_C\SC8P171XD_PWM\SC8P171XD_PWM.c"
clrwdt ;# 
psect	maintext
	line	12
	
l793:	
;SC8P171XD_PWM.c: 12: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	14
	
l795:	
;SC8P171XD_PWM.c: 14: TRISA = 0B00000110;
	movlw	low(06h)
	movwf	(133)^080h	;volatile
	line	16
	
l797:	
;SC8P171XD_PWM.c: 16: PWMCON = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(27)	;volatile
	line	17
	
l799:	
;SC8P171XD_PWM.c: 17: PWMTL = 0XFF;
	movlw	low(0FFh)
	movwf	(25)	;volatile
	line	18
	
l801:	
;SC8P171XD_PWM.c: 18: PWMTH = 01;
	movlw	low(01h)
	movwf	(26)	;volatile
	line	20
	
l803:	
;SC8P171XD_PWM.c: 20: PWMD0L = 0X1F;
	movlw	low(01Fh)
	movwf	(22)	;volatile
	line	21
	
l805:	
;SC8P171XD_PWM.c: 21: PWMD1L = 0X7F;
	movlw	low(07Fh)
	movwf	(23)	;volatile
	line	22
	
l807:	
;SC8P171XD_PWM.c: 22: PWMD01H = 0X01;
	movlw	low(01h)
	movwf	(24)	;volatile
	line	24
	
l809:	
;SC8P171XD_PWM.c: 24: PWMIF = 0;
	bcf	(98/8),(98)&7	;volatile
	line	25
	
l811:	
;SC8P171XD_PWM.c: 25: PWMCON = 0B00000111;
	movlw	low(07h)
	movwf	(27)	;volatile
	line	26
	
l813:	
;SC8P171XD_PWM.c: 26: TRISA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	28
;SC8P171XD_PWM.c: 28: while(1)
	
l411:	
	line	30
# 30 "F:\TEST_CODE\SC8P171XD_C\SC8P171XD_PWM\SC8P171XD_PWM.c"
clrwdt ;# 
psect	maintext
	line	31
	
l815:	
;SC8P171XD_PWM.c: 31: if(++delaycnt > 1000)
	incf	(main@delaycnt),f
	skipnz
	incf	(main@delaycnt+1),f
	movlw	03h
	subwf	((main@delaycnt+1)),w
	movlw	0E9h
	skipnz
	subwf	((main@delaycnt)),w
	skipc
	goto	u11
	goto	u10
u11:
	goto	l411
u10:
	line	33
	
l817:	
;SC8P171XD_PWM.c: 32: {
;SC8P171XD_PWM.c: 33: delaycnt = 0;
	clrf	(main@delaycnt)
	clrf	(main@delaycnt+1)
	line	34
	
l819:	
;SC8P171XD_PWM.c: 34: pwmbuf++;
	incf	(main@pwmbuf),f
	line	35
	
l821:	
;SC8P171XD_PWM.c: 35: PWMD0L = pwmbuf;
	movf	(main@pwmbuf),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(22)	;volatile
	goto	l411
	global	start
	ljmp	start
	opt stack 0
	line	38
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
