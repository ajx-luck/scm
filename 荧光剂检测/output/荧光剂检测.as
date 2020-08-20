opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1713S
opt include "C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\include\sc8p1713s.cgen.inc"
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
	FNCALL	_main,_ADC_Result
	FNCALL	_main,_DelayXms
	FNCALL	_main,___lwdiv
	FNCALL	_main,___wmul
	FNCALL	_main,_initConfig
	FNROOT	_main
	FNCALL	intlevel1,_Timer0_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_adresult
	global	_intCount
	global	_intFlag
	global	_ADCON0
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_INTCON
_INTCON	set	11
	global	_PORTC
_PORTC	set	7
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_TMR0
_TMR0	set	1
	global	_GODONE
_GODONE	set	249
	global	_T0IF
_T0IF	set	90
	global	_RBIF
_RBIF	set	88
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_IOCB
_IOCB	set	150
	global	_WPUB
_WPUB	set	149
	global	_OSCCON
_OSCCON	set	143
	global	_TRISC
_TRISC	set	135
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_WPUE
_WPUE	set	282
	global	_WPUC
_WPUC	set	399
	global	_WPUA
_WPUA	set	398
	global	_ANSEL
_ANSEL	set	392
; #config settings
	file	"荧光剂检测.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_adresult:
       ds      2

_intCount:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_intFlag:
       ds      1

	file	"荧光剂检测.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	((__pbssBANK0)+0)&07Fh
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
?_initConfig:	; 1 bytes @ 0x0
?_DelayXms:	; 1 bytes @ 0x0
?_Timer0_Isr:	; 1 bytes @ 0x0
??_Timer0_Isr:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	ds	2
??_initConfig:	; 1 bytes @ 0x2
??_DelayXms:	; 1 bytes @ 0x2
	global	?_ADC_Result
?_ADC_Result:	; 2 bytes @ 0x2
	global	?___wmul
?___wmul:	; 2 bytes @ 0x2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x2
	global	DelayXms@x
DelayXms@x:	; 1 bytes @ 0x2
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	ds	1
	global	DelayXms@i
DelayXms@i:	; 1 bytes @ 0x3
	ds	1
??_ADC_Result:	; 1 bytes @ 0x4
	global	DelayXms@j
DelayXms@j:	; 1 bytes @ 0x4
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x4
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x4
	ds	1
	global	ADC_Result@adch
ADC_Result@adch:	; 1 bytes @ 0x5
	ds	1
??___wmul:	; 1 bytes @ 0x6
??___lwdiv:	; 1 bytes @ 0x6
	global	ADC_Result@i
ADC_Result@i:	; 1 bytes @ 0x6
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x6
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x6
	ds	1
	global	ADC_Result@tempResult
ADC_Result@tempResult:	; 2 bytes @ 0x7
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x8
	ds	1
??_main:	; 1 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	main@av
main@av:	; 2 bytes @ 0x0
	ds	2
	global	main@res2
main@res2:	; 2 bytes @ 0x2
	ds	2
	global	main@res
main@res:	; 2 bytes @ 0x4
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         4
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      12
;!    BANK0            80      6       7
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_ADC_Result
;!    _main->___lwdiv
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
;! (0) _main                                                 6     6      0     744
;!                                              0 BANK0      6     6      0
;!                         _ADC_Result
;!                           _DelayXms
;!                            ___lwdiv
;!                             ___wmul
;!                         _initConfig
;! ---------------------------------------------------------------------------------
;! (1) _initConfig                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) ___wmul                                               6     2      4     198
;!                                              2 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (1) ___lwdiv                                              7     3      4     268
;!                                              2 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _DelayXms                                             3     3      0     114
;!                                              2 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Result                                           7     5      2      70
;!                                              2 COMMON     7     5      2
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
;!   _ADC_Result
;!   _DelayXms
;!   ___lwdiv
;!   ___wmul
;!   _initConfig
;!
;! _Timer0_Isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      9       C       1       85.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      13       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      6       7       5        8.8%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!DATA                 0      0      13       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 36 in file "C:\mcuproject\scm\荧光剂检测\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  res             2    4[BANK0 ] unsigned int 
;;  res2            2    2[BANK0 ] unsigned int 
;;  av              2    0[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       6       0
;;      Temps:          0       0       0
;;      Totals:         0       6       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ADC_Result
;;		_DelayXms
;;		___lwdiv
;;		___wmul
;;		_initConfig
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\荧光剂检测\main.c"
	line	36
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\荧光剂检测\main.c"
	line	36
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l2486:	
;main.c: 38: initConfig();
	fcall	_initConfig
	line	40
;main.c: 39: for(;;)
	
l563:	
	line	41
# 41 "C:\mcuproject\scm\荧光剂检测\main.c"
clrwdt ;# 
psect	maintext
	line	42
	
l2488:	
;main.c: 42: if(intFlag == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_intFlag)),w
	btfss	status,2
	goto	u311
	goto	u310
u311:
	goto	l2492
u310:
	goto	l563
	line	44
	
l2492:	
;main.c: 44: intFlag = 0;
	clrf	(_intFlag)
	line	45
	
l2494:	
;main.c: 45: TRISA = 0x02;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	46
	
l2496:	
;main.c: 46: ANSEL = 0x02;
	movlw	low(02h)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	47
	
l2498:	
;main.c: 47: uint16 res = ADC_Result(0x0F);
	movlw	low(0Fh)
	fcall	_ADC_Result
	movf	(1+(?_ADC_Result)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(main@res+1)
	movf	(0+(?_ADC_Result)),w
	movwf	(main@res)
	line	48
	
l2500:	
;main.c: 48: uint16 av = 6000/res;
	movf	(main@res+1),w
	movwf	(___lwdiv@divisor+1)
	movf	(main@res),w
	movwf	(___lwdiv@divisor)
	movlw	070h
	movwf	(___lwdiv@dividend)
	movlw	017h
	movwf	((___lwdiv@dividend))+1
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(main@av+1)
	movf	(0+(?___lwdiv)),w
	movwf	(main@av)
	line	50
	
l2502:	
;main.c: 50: DelayXms(50);
	movlw	low(032h)
	fcall	_DelayXms
	line	51
	
l2504:	
;main.c: 51: res2 = ADC_Result(0x01);
	movlw	low(01h)
	fcall	_ADC_Result
	movf	(1+(?_ADC_Result)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(main@res2+1)
	movf	(0+(?_ADC_Result)),w
	movwf	(main@res2)
	line	52
	
l2506:	
;main.c: 52: res = res2 * av;
	movf	(main@res2+1),w
	movwf	(___wmul@multiplier+1)
	movf	(main@res2),w
	movwf	(___wmul@multiplier)
	movf	(main@av+1),w
	movwf	(___wmul@multiplicand+1)
	movf	(main@av),w
	movwf	(___wmul@multiplicand)
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(main@res+1)
	movf	(0+(?___wmul)),w
	movwf	(main@res)
	line	53
	
l2508:	
;main.c: 53: if(res > 29000)
	movlw	071h
	subwf	(main@res+1),w
	movlw	049h
	skipnz
	subwf	(main@res),w
	skipc
	goto	u321
	goto	u320
u321:
	goto	l563
u320:
	line	55
	
l2510:	
	goto	l563
	global	start
	ljmp	start
	opt stack 0
	line	58
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_initConfig

;; *************** function _initConfig *****************
;; Defined at:
;;		line 61 in file "C:\mcuproject\scm\荧光剂检测\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
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
	line	61
global __ptext1
__ptext1:	;psect for function _initConfig
psect	text1
	file	"C:\mcuproject\scm\荧光剂检测\main.c"
	line	61
	global	__size_of_initConfig
	__size_of_initConfig	equ	__end_of_initConfig-_initConfig
	
_initConfig:	
;incstack = 0
	opt	stack 6
; Regs used in _initConfig: [wreg+status,2]
	line	63
	
l2390:	
;main.c: 63: PORTA = 0x00;
	clrf	(5)	;volatile
	line	64
;main.c: 64: PORTB = 0x00;
	clrf	(6)	;volatile
	line	65
;main.c: 65: PORTC = 0x00;
	clrf	(7)	;volatile
	line	66
;main.c: 66: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	67
;main.c: 67: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	68
;main.c: 68: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	69
;main.c: 69: WPUA = 0x00;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(398)^0180h	;volatile
	line	70
;main.c: 70: WPUB = 0x00;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(149)^080h	;volatile
	line	71
;main.c: 71: WPUC = 0x00;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(399)^0180h	;volatile
	line	72
;main.c: 72: WPUE = 0x00;
	bcf	status, 5	;RP0=0, select bank2
	clrf	(282)^0100h	;volatile
	line	73
;main.c: 73: PORTA = 0x00;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	74
;main.c: 74: PORTB = 0x00;
	clrf	(6)	;volatile
	line	75
;main.c: 75: PORTC = 0x00;
	clrf	(7)	;volatile
	line	76
;main.c: 76: IOCB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	79
# 79 "C:\mcuproject\scm\荧光剂检测\main.c"
nop ;# 
	line	80
# 80 "C:\mcuproject\scm\荧光剂检测\main.c"
clrwdt ;# 
psect	text1
	line	81
;main.c: 81: INTCON = 0;
	clrf	(11)	;volatile
	line	82
	
l2392:	
;main.c: 82: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	83
	
l2394:	
;main.c: 83: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	85
	
l2396:	
;main.c: 85: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	86
	
l2398:	
;main.c: 86: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(11)	;volatile
	line	87
	
l571:	
	return
	opt stack 0
GLOBAL	__end_of_initConfig
	__end_of_initConfig:
	signat	_initConfig,89
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    2[COMMON] unsigned int 
;;  multiplicand    2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    6[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\Umul16.c"
	line	15
global __ptext2
__ptext2:	;psect for function ___wmul
psect	text2
	file	"C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l2436:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	45
	
l2438:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u221
	goto	u220
u221:
	goto	l2442
u220:
	line	46
	
l2440:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	47
	
l2442:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	48
	
l2444:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	49
	
l2446:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u231
	goto	u230
u231:
	goto	l2438
u230:
	line	52
	
l2448:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	53
	
l1894:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMMON] unsigned int 
;;  counter         1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         3       0       0
;;      Temps:          0       0       0
;;      Totals:         7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\lwdiv.c"
	line	6
global __ptext3
__ptext3:	;psect for function ___lwdiv
psect	text3
	file	"C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l2452:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l2454:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u241
	goto	u240
u241:
	goto	l2474
u240:
	line	16
	
l2456:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l2460
	line	18
	
l2458:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l2460:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u251
	goto	u250
u251:
	goto	l2458
u250:
	line	22
	
l2462:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l2464:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u265
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u265:
	skipc
	goto	u261
	goto	u260
u261:
	goto	l2470
u260:
	line	24
	
l2466:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l2468:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l2470:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l2472:	
	decfsz	(___lwdiv@counter),f
	goto	u271
	goto	u270
u271:
	goto	l2462
u270:
	line	30
	
l2474:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l2231:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 85 in file "C:\mcuproject\scm\荧光剂检测\adc.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    2[COMMON] unsigned char 
;;  j               1    4[COMMON] unsigned char 
;;  i               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         3       0       0
;;      Temps:          0       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\荧光剂检测\adc.c"
	line	85
global __ptext4
__ptext4:	;psect for function _DelayXms
psect	text4
	file	"C:\mcuproject\scm\荧光剂检测\adc.c"
	line	85
	global	__size_of_DelayXms
	__size_of_DelayXms	equ	__end_of_DelayXms-_DelayXms
	
_DelayXms:	
;incstack = 0
	opt	stack 6
; Regs used in _DelayXms: [wreg+status,2+status,0]
;DelayXms@x stored from wreg
	movwf	(DelayXms@x)
	line	88
	
l2416:	
;adc.c: 87: unsigned char i,j;
;adc.c: 88: for(i=x;i>0;i--)
	movf	(DelayXms@x),w
	movwf	(DelayXms@i)
	
l2418:	
	movf	((DelayXms@i)),w
	btfss	status,2
	goto	u201
	goto	u200
u201:
	goto	l2422
u200:
	goto	l1147
	line	89
	
l2422:	
;adc.c: 89: for(j=153;j>0;j--);
	movlw	low(099h)
	movwf	(DelayXms@j)
	
l2428:	
	decf	(DelayXms@j),f
	
l2430:	
	movf	((DelayXms@j)),w
	btfss	status,2
	goto	u211
	goto	u210
u211:
	goto	l2428
u210:
	line	88
	
l2432:	
	decf	(DelayXms@i),f
	goto	l2418
	line	90
	
l1147:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
	global	_ADC_Result

;; *************** function _ADC_Result *****************
;; Defined at:
;;		line 59 in file "C:\mcuproject\scm\荧光剂检测\adc.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    5[COMMON] unsigned char 
;;  tempResult      2    7[COMMON] unsigned int 
;;  i               1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/300
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         4       0       0
;;      Temps:          1       0       0
;;      Totals:         7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	59
global __ptext5
__ptext5:	;psect for function _ADC_Result
psect	text5
	file	"C:\mcuproject\scm\荧光剂检测\adc.c"
	line	59
	global	__size_of_ADC_Result
	__size_of_ADC_Result	equ	__end_of_ADC_Result-_ADC_Result
	
_ADC_Result:	
;incstack = 0
	opt	stack 6
; Regs used in _ADC_Result: [wreg+status,2+status,0]
;ADC_Result@adch stored from wreg
	movwf	(ADC_Result@adch)
	line	61
	
l2400:	
;adc.c: 61: ADCON1 = 0x80;
	movlw	low(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	62
	
l2402:	
;adc.c: 62: ADCON0 = 0X41 | (adch << 2);
	movf	(ADC_Result@adch),w
	movwf	(??_ADC_Result+0)+0
	movlw	(02h)-1
u175:
	clrc
	rlf	(??_ADC_Result+0)+0,f
	addlw	-1
	skipz
	goto	u175
	clrc
	rlf	(??_ADC_Result+0)+0,w
	iorlw	041h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	63
# 63 "C:\mcuproject\scm\荧光剂检测\adc.c"
nop ;# 
	line	64
# 64 "C:\mcuproject\scm\荧光剂检测\adc.c"
nop ;# 
psect	text5
	line	65
	
l2404:	
;adc.c: 65: GODONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	67
	
l2406:	
;adc.c: 67: unsigned char i = 0;
	clrf	(ADC_Result@i)
	line	68
;adc.c: 68: while(GODONE)
	goto	l1136
	
l1137:	
	line	70
;adc.c: 69: {
;adc.c: 70: if(0 == (--i))
	decfsz	(ADC_Result@i),f
	goto	u181
	goto	u180
u181:
	goto	l1136
u180:
	line	71
	
l2408:	
;adc.c: 71: return 0;
	clrf	(?_ADC_Result)
	clrf	(?_ADC_Result+1)
	goto	l1139
	line	72
	
l1136:	
	line	68
	btfsc	(249/8),(249)&7	;volatile
	goto	u191
	goto	u190
u191:
	goto	l1137
u190:
	line	73
	
l2412:	
;adc.c: 72: }
;adc.c: 73: unsigned int tempResult = ADRESH;
	movf	(30),w	;volatile
	movwf	(ADC_Result@tempResult)
	clrf	(ADC_Result@tempResult+1)
	line	74
;adc.c: 74: tempResult <<= 8;
	movf	(ADC_Result@tempResult),w
	movwf	(ADC_Result@tempResult+1)
	clrf	(ADC_Result@tempResult)
	line	75
;adc.c: 75: tempResult += ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	addwf	(ADC_Result@tempResult),f
	skipnc
	incf	(ADC_Result@tempResult+1),f
	line	76
;adc.c: 76: return tempResult;
	movf	(ADC_Result@tempResult+1),w
	movwf	(?_ADC_Result+1)
	movf	(ADC_Result@tempResult),w
	movwf	(?_ADC_Result)
	line	77
	
l1139:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Result
	__end_of_ADC_Result:
	signat	_ADC_Result,4218
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 15 in file "C:\mcuproject\scm\荧光剂检测\main.c"
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
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\荧光剂检测\main.c"
	line	15
global __ptext6
__ptext6:	;psect for function _Timer0_Isr
psect	text6
	file	"C:\mcuproject\scm\荧光剂检测\main.c"
	line	15
	global	__size_of_Timer0_Isr
	__size_of_Timer0_Isr	equ	__end_of_Timer0_Isr-_Timer0_Isr
	
_Timer0_Isr:	
;incstack = 0
	opt	stack 6
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
psect	text6
	line	16
	
i1l2478:	
;main.c: 16: if (T0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u28_21
	goto	u28_20
u28_21:
	goto	i1l555
u28_20:
	line	20
	
i1l2480:	
;main.c: 17: {
;main.c: 20: TMR0 += 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(1),f	;volatile
	line	22
;main.c: 22: if(++intCount >= 100)
	movlw	low(064h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u29_21
	goto	u29_20
u29_21:
	goto	i1l556
u29_20:
	line	24
	
i1l2482:	
;main.c: 23: {
;main.c: 24: intFlag = 1;
	clrf	(_intFlag)
	incf	(_intFlag),f
	line	25
	
i1l556:	
	line	27
;main.c: 25: }
;main.c: 27: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	28
	
i1l555:	
	line	30
;main.c: 28: }
;main.c: 30: if (RBIF) {
	btfss	(88/8),(88)&7	;volatile
	goto	u30_21
	goto	u30_20
u30_21:
	goto	i1l558
u30_20:
	line	31
	
i1l2484:	
;main.c: 31: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	33
	
i1l558:	
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
