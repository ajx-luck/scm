opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F5772
opt include "E:\CMS_WORK\TOOLS\SCMCU_IDE_V2.00.07\data\include\sc8f5772.cgen.inc"
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
	global	_PWM4TL
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_PWM4TL	set	30
	global	_PWMD01H
_PWMD01H	set	28
	global	_PWMD4L
_PWMD4L	set	27
	global	_PWMD3L
_PWMD3L	set	26
	global	_PWMD2L
_PWMD2L	set	25
	global	_PWMD1L
_PWMD1L	set	24
	global	_PWMD0L
_PWMD0L	set	23
	global	_PWMTH
_PWMTH	set	22
	global	_PWMTL
_PWMTL	set	21
	global	_PWMCON1
_PWMCON1	set	20
	global	_PWMCON0
_PWMCON0	set	19
	global	_PWM23DT
_PWM23DT	set	16
	global	_PWMD23H
_PWMD23H	set	14
	global	_INTCON
_INTCON	set	11
	global	_PORTB
_PORTB	set	6
	global	_OSCCON
_OSCCON	set	136
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
; #config settings
	file	"SC8F577X_ADC_Demo.as"
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
?_Init_System:	; 1 bytes @ 0x0
??_Init_System:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
??_main:	; 1 bytes @ 0x0
	global	main@delaycnt
main@delaycnt:	; 2 bytes @ 0x0
	ds	2
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
;! (0) _main                                                 3     3      0      15
;!                                              0 COMMON     2     2      0
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
;!COMMON               E      2       2       1       14.3%
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
;;		line 15 in file "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_PWM_Demo\SC8F577X_ADC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  delaycnt        2    0[COMMON] unsigned int 
;;  pwmbuf          1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Init_System
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_PWM_Demo\SC8F577X_ADC.c"
	line	15
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_PWM_Demo\SC8F577X_ADC.c"
	line	15
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	17
	
l1211:	
;SC8F577X_ADC.c: 18: unsigned char pwmbuf = 0X1F;
	clrf	(main@delaycnt)
	clrf	(main@delaycnt+1)
	line	20
	
l1213:	
;SC8F577X_ADC.c: 20: Init_System();
	fcall	_Init_System
	line	23
	
l1215:	
;SC8F577X_ADC.c: 23: PWMCON1 = 0B01100000;
	movlw	low(060h)
	movwf	(20)	;volatile
	line	25
	
l1217:	
;SC8F577X_ADC.c: 25: PWMTL = 200;
	movlw	low(0C8h)
	movwf	(21)	;volatile
	line	26
	
l1219:	
;SC8F577X_ADC.c: 26: PWM4TL = 200;
	movlw	low(0C8h)
	movwf	(30)	;volatile
	line	27
	
l1221:	
;SC8F577X_ADC.c: 27: PWMTH = 0;
	clrf	(22)	;volatile
	line	28
	
l1223:	
;SC8F577X_ADC.c: 28: PWMD0L = 25;
	movlw	low(019h)
	movwf	(23)	;volatile
	line	29
	
l1225:	
;SC8F577X_ADC.c: 29: PWMD1L = 50;
	movlw	low(032h)
	movwf	(24)	;volatile
	line	30
	
l1227:	
;SC8F577X_ADC.c: 30: PWMD2L = 50;
	movlw	low(032h)
	movwf	(25)	;volatile
	line	31
	
l1229:	
;SC8F577X_ADC.c: 31: PWMD3L = 0;
	clrf	(26)	;volatile
	line	32
	
l1231:	
;SC8F577X_ADC.c: 32: PWMD4L = 200;
	movlw	low(0C8h)
	movwf	(27)	;volatile
	line	34
	
l1233:	
;SC8F577X_ADC.c: 34: PWMD01H = 0;
	clrf	(28)	;volatile
	line	35
	
l1235:	
;SC8F577X_ADC.c: 35: PWMD23H = 0;
	clrf	(14)	;volatile
	line	36
	
l1237:	
;SC8F577X_ADC.c: 36: PWM23DT = 0X03;
	movlw	low(03h)
	movwf	(16)	;volatile
	line	37
	
l1239:	
;SC8F577X_ADC.c: 37: PWMCON0 = 0X1F;
	movlw	low(01Fh)
	movwf	(19)	;volatile
	line	38
	
l1241:	
;SC8F577X_ADC.c: 38: TRISB= 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	43
	
l1243:	
;SC8F577X_ADC.c: 42: {
;SC8F577X_ADC.c: 43: delaycnt++;
	incf	(main@delaycnt),f
	skipnz
	incf	(main@delaycnt+1),f
	line	44
	
l1245:	
;SC8F577X_ADC.c: 44: if(delaycnt >2000)
	movlw	07h
	subwf	(main@delaycnt+1),w
	movlw	0D1h
	skipnz
	subwf	(main@delaycnt),w
	skipc
	goto	u11
	goto	u10
u11:
	goto	l1243
u10:
	line	46
	
l1247:	
;SC8F577X_ADC.c: 45: {
;SC8F577X_ADC.c: 46: delaycnt =0;
	clrf	(main@delaycnt)
	clrf	(main@delaycnt+1)
	line	47
	
l1249:	
;SC8F577X_ADC.c: 47: PWMD2L++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(25),f	;volatile
	line	48
	
l1251:	
;SC8F577X_ADC.c: 48: if( PWMD2L >=250)
	movlw	low(0FAh)
	subwf	(25),w	;volatile
	skipc
	goto	u21
	goto	u20
u21:
	goto	l1243
u20:
	line	49
	
l1253:	
;SC8F577X_ADC.c: 49: PWMD2L = 10;
	movlw	low(0Ah)
	movwf	(25)	;volatile
	goto	l1243
	global	start
	ljmp	start
	opt stack 0
	line	55
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 65 in file "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_PWM_Demo\SC8F577X_ADC.c"
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
	line	65
global __ptext1
__ptext1:	;psect for function _Init_System
psect	text1
	file	"E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_PWM_Demo\SC8F577X_ADC.c"
	line	65
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 7
; Regs used in _Init_System: [wreg+status,2]
	line	67
	
l1197:	
# 67 "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_PWM_Demo\SC8F577X_ADC.c"
nop ;# 
	line	68
# 68 "E:\CMS_WORK\democode\SC8F577X_DEMO\SC8F577X_PWM_Demo\SC8F577X_ADC.c"
clrwdt ;# 
psect	text1
	line	69
	
l1199:	
;SC8F577X_ADC.c: 69: INTCON = 0;
	clrf	(11)	;volatile
	line	70
	
l1201:	
;SC8F577X_ADC.c: 70: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	71
	
l1203:	
;SC8F577X_ADC.c: 71: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	73
	
l1205:	
;SC8F577X_ADC.c: 73: TRISA = 0B00000000;
	clrf	(133)^080h	;volatile
	line	74
	
l1207:	
;SC8F577X_ADC.c: 74: TRISB = 0B00000000;
	clrf	(134)^080h	;volatile
	line	77
	
l1209:	
;SC8F577X_ADC.c: 77: PORTB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	79
	
l821:	
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
