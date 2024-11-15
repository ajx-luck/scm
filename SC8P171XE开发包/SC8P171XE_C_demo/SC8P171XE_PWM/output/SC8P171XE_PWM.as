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
	global	_xx
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_PWM\SC8P171XE_PWM.c"
	line	18

;initializer for _xx
	retlw	023h
	retlw	0FFh
	global	_PWMD23H
_PWMD23H	set	28
	global	_PWMCON
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
	global	_PWMD4L
_PWMD4L	set	16
	global	_PWMD3L
_PWMD3L	set	15
	global	_PWMD2L
_PWMD2L	set	14
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_PWMIF
_PWMIF	set	98
	global	_OSCCON
_OSCCON	set	143
	global	_PWMCON1
_PWMCON1	set	142
	global	_TRISA
_TRISA	set	133
; #config settings
	file	"SC8P171XE_PWM.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_PWM\SC8P171XE_PWM.c"
	line	18
_xx:
       ds      2

	file	"SC8P171XE_PWM.as"
	line	#
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
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
;!    Data        2
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      3       5
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
;! (0) _main                                                 3     3      0      45
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
;!BANK1               50      0       0       6        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      0       0       4        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      3       5       1       35.7%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0       5       8        0.0%
;!ABS                  0      0       5       7        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 20 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_PWM\SC8P171XE_PWM.c"
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
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_PWM\SC8P171XE_PWM.c"
	line	20
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_PWM\SC8P171XE_PWM.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0]
	line	22
	
l847:	
;SC8P171XE_PWM.c: 22: unsigned int delaycnt = 0;
	clrf	(main@delaycnt)
	clrf	(main@delaycnt+1)
	line	23
;SC8P171XE_PWM.c: 23: unsigned char pwmbuf = 0;
	clrf	(main@pwmbuf)
	line	25
# 25 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_PWM\SC8P171XE_PWM.c"
nop ;# 
	line	26
# 26 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_PWM\SC8P171XE_PWM.c"
clrwdt ;# 
psect	maintext
	line	27
	
l849:	
;SC8P171XE_PWM.c: 27: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	29
	
l851:	
;SC8P171XE_PWM.c: 29: TRISA = 0B00111110;
	movlw	low(03Eh)
	movwf	(133)^080h	;volatile
	line	32
	
l853:	
;SC8P171XE_PWM.c: 32: PWMCON = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(27)	;volatile
	line	33
	
l855:	
;SC8P171XE_PWM.c: 33: PWMTL = 0XFF;
	movlw	low(0FFh)
	movwf	(25)	;volatile
	line	34
	
l857:	
;SC8P171XE_PWM.c: 34: PWMTH = 0B00000001;
	movlw	low(01h)
	movwf	(26)	;volatile
	line	37
	
l859:	
;SC8P171XE_PWM.c: 37: PWMD01H = 0X00;
	clrf	(24)	;volatile
	line	38
;SC8P171XE_PWM.c: 38: PWMD0L = 0X1F;
	movlw	low(01Fh)
	movwf	(22)	;volatile
	line	39
;SC8P171XE_PWM.c: 39: PWMD1L = 0X7F;
	movlw	low(07Fh)
	movwf	(23)	;volatile
	line	41
	
l861:	
;SC8P171XE_PWM.c: 41: PWMD23H = 0X00;
	clrf	(28)	;volatile
	line	42
	
l863:	
;SC8P171XE_PWM.c: 42: PWMD2L = 0X3F;
	movlw	low(03Fh)
	movwf	(14)	;volatile
	line	43
	
l865:	
;SC8P171XE_PWM.c: 43: PWMD3L = 0XFF;
	movlw	low(0FFh)
	movwf	(15)	;volatile
	line	46
	
l867:	
;SC8P171XE_PWM.c: 46: PWMD4L = 0X3F;
	movlw	low(03Fh)
	movwf	(16)	;volatile
	line	49
	
l869:	
;SC8P171XE_PWM.c: 49: PWMIF = 0;
	bcf	(98/8),(98)&7	;volatile
	line	50
	
l871:	
;SC8P171XE_PWM.c: 50: PWMCON = 0B00000111;
	movlw	low(07h)
	movwf	(27)	;volatile
	line	51
	
l873:	
;SC8P171XE_PWM.c: 51: PWMCON1 = 0B00100111;
	movlw	low(027h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(142)^080h	;volatile
	line	52
;SC8P171XE_PWM.c: 52: TRISA = 0B00000000;
	clrf	(133)^080h	;volatile
	line	54
;SC8P171XE_PWM.c: 54: while(1)
	
l467:	
	line	56
# 56 "H:\MyDownloads\说明书&测试报告\开发包\SC8P171XE开发包\SC8P171XE_C_demo\SC8P171XE_PWM\SC8P171XE_PWM.c"
clrwdt ;# 
psect	maintext
	line	57
	
l875:	
;SC8P171XE_PWM.c: 57: if(++delaycnt >5000)
	incf	(main@delaycnt),f
	skipnz
	incf	(main@delaycnt+1),f
	movlw	013h
	subwf	((main@delaycnt+1)),w
	movlw	089h
	skipnz
	subwf	((main@delaycnt)),w
	skipc
	goto	u11
	goto	u10
u11:
	goto	l887
u10:
	line	59
	
l877:	
;SC8P171XE_PWM.c: 58: {
;SC8P171XE_PWM.c: 59: delaycnt = 0;
	clrf	(main@delaycnt)
	clrf	(main@delaycnt+1)
	line	61
	
l879:	
;SC8P171XE_PWM.c: 61: pwmbuf++;
	incf	(main@pwmbuf),f
	line	62
	
l881:	
;SC8P171XE_PWM.c: 62: PWMD0L = pwmbuf;
	movf	(main@pwmbuf),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(22)	;volatile
	line	63
	
l883:	
;SC8P171XE_PWM.c: 63: PWMD23H = 0X00;
	clrf	(28)	;volatile
	line	64
	
l885:	
;SC8P171XE_PWM.c: 64: PWMD2L = pwmbuf;
	movf	(main@pwmbuf),w
	movwf	(14)	;volatile
	line	67
	
l887:	
;SC8P171XE_PWM.c: 66: }
;SC8P171XE_PWM.c: 67: xx.bytel = 0x23;
	movlw	low(023h)
	movwf	(_xx)
	line	68
	
l889:	
;SC8P171XE_PWM.c: 68: xx.byteh = 0x03;
	movlw	low(03h)
	movwf	0+(_xx)+01h
	line	69
	
l891:	
;SC8P171XE_PWM.c: 69: PORTB = xx.bytel;
	movf	(_xx),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	70
	
l893:	
;SC8P171XE_PWM.c: 70: PORTA = xx.byteh;
	movf	0+(_xx)+01h,w
	movwf	(5)	;volatile
	goto	l467
	global	start
	ljmp	start
	opt stack 0
	line	72
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
