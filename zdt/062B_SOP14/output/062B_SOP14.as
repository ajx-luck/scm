opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P062BD
opt include "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\include\sc8p062bd.cgen.inc"
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
	FNCALL	_main,_ADC_Sample
	FNCALL	_main,_AD_Init
	FNCALL	_main,_Init_System
	FNCALL	_main,___ftdiv
	FNCALL	_main,___fttol
	FNCALL	_main,___lwtoft
	FNCALL	_main,_pwmInit
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNROOT	_main
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_count1s
	global	_intCount
	global	_power_ad
	global	_result
	global	_IntFlag
	global	_test_adc
	global	_adresult
	global	_PWM01DT
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_PWM01DT	set	31
	global	_PWMD01H
_PWMD01H	set	30
	global	_PWMCON2
_PWMCON2	set	29
	global	_PWMT4L
_PWMT4L	set	28
	global	_PWMD4L
_PWMD4L	set	27
	global	_PWMD1L
_PWMD1L	set	26
	global	_PWMD0L
_PWMD0L	set	25
	global	_PWMTH
_PWMTH	set	24
	global	_PWMTL
_PWMTL	set	23
	global	_PWMCON1
_PWMCON1	set	22
	global	_PWMCON0
_PWMCON0	set	21
	global	_OSCCON
_OSCCON	set	20
	global	_T2CON
_T2CON	set	19
	global	_PR2
_PR2	set	17
	global	_INTCON
_INTCON	set	11
	global	_WPUB
_WPUB	set	8
	global	_PORTB
_PORTB	set	6
	global	_TRISB
_TRISB	set	5
	global	_OPTION_REG
_OPTION_REG	set	1
	global	_TMR2IE
_TMR2IE	set	113
	global	_TMR2IF
_TMR2IF	set	105
	global	_TRISB7
_TRISB7	set	47
	global	_PWMD23H
_PWMD23H	set	158
	global	_PWMD3L
_PWMD3L	set	156
	global	_PWMD2L
_PWMD2L	set	155
	global	_ADRESH
_ADRESH	set	153
	global	_ADRESL
_ADRESL	set	152
	global	_ADCON1
_ADCON1	set	150
	global	_ADCON0
_ADCON0	set	149
	global	_ANSEL1
_ANSEL1	set	148
	global	_WPUA
_WPUA	set	136
	global	_PORTA
_PORTA	set	134
	global	_TRISA
_TRISA	set	133
	global	_LDO_EN
_LDO_EN	set	1202
	global	_CHS4
_CHS4	set	1206
	global	_GODONE
_GODONE	set	1193
; #config settings
	file	"062B_SOP14.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_count1s:
       ds      1

_intCount:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_power_ad:
       ds      2

_result:
       ds      2

_IntFlag:
       ds      1

_test_adc:
       ds      1

_adresult:
       ds      2

	file	"062B_SOP14.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
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
?_AD_Init:	; 1 bytes @ 0x0
?_pwmInit:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
	ds	2
??_Init_System:	; 1 bytes @ 0x2
??_AD_Init:	; 1 bytes @ 0x2
??_pwmInit:	; 1 bytes @ 0x2
?_ADC_Sample:	; 1 bytes @ 0x2
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x2
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x2
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x2
	ds	1
??_ADC_Sample:	; 1 bytes @ 0x3
	ds	2
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x5
	ds	1
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x6
	ds	1
??___ftpack:	; 1 bytes @ 0x7
	ds	3
??___lwtoft:	; 1 bytes @ 0xA
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x0
	global	ADC_Sample@j
ADC_Sample@j:	; 1 bytes @ 0x0
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x0
	ds	1
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x1
	ds	1
	global	ADC_Sample@i
ADC_Sample@i:	; 1 bytes @ 0x2
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x3
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x3
	global	ADC_Sample@adsum
ADC_Sample@adsum:	; 4 bytes @ 0x3
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x6
	ds	1
	global	ADC_Sample@admin
ADC_Sample@admin:	; 2 bytes @ 0x7
	ds	2
??___ftdiv:	; 1 bytes @ 0x9
	global	ADC_Sample@admax
ADC_Sample@admax:	; 2 bytes @ 0x9
	ds	2
	global	ADC_Sample@ad_temp
ADC_Sample@ad_temp:	; 2 bytes @ 0xB
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0xC
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0xD
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x10
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x11
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x12
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x12
	ds	4
??___fttol:	; 1 bytes @ 0x16
	ds	3
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x19
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x1A
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x1E
	ds	1
??_main:	; 1 bytes @ 0x1F
	ds	1
	global	main@power_temp
main@power_temp:	; 4 bytes @ 0x20
	ds	4
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         10
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      12
;!    BANK0            80     36      44
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    ___lwtoft->___ftpack
;!    ___ftdiv->___ftpack
;!
;!Critical Paths under _Isr_Timer in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->___fttol
;!    ___fttol->___ftdiv
;!    ___ftdiv->___lwtoft
;!
;!Critical Paths under _Isr_Timer in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _Isr_Timer in BANK1
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 5     5      0    4695
;!                                             31 BANK0      5     5      0
;!                         _ADC_Sample
;!                            _AD_Init
;!                        _Init_System
;!                            ___ftdiv
;!                            ___fttol
;!                           ___lwtoft
;!                            _pwmInit
;! ---------------------------------------------------------------------------------
;! (1) _pwmInit                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) ___lwtoft                                             3     0      3    1704
;!                                              0 BANK0      3     0      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) ___fttol                                             13     9      4     305
;!                                             18 BANK0     13     9      4
;!                            ___ftdiv (ARG)
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___ftdiv                                             15     9      6    2017
;!                                              3 BANK0     15     9      6
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftpack                                             8     3      5    1629
;!                                              2 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _AD_Init                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Sample                                          18    17      1     635
;!                                              2 COMMON     5     4      1
;!                                              0 BANK0     13    13      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _Isr_Timer                                            2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _ADC_Sample
;!   _AD_Init
;!   _Init_System
;!   ___ftdiv
;!     ___ftpack
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   ___fttol
;!     ___ftdiv (ARG)
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   ___lwtoft
;!     ___ftpack
;!   _pwmInit
;!
;! _Isr_Timer (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      A       C       1       85.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50     24      2C       4       55.0%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      38       7        0.0%
;!DATA                 0      0      38       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 126 in file "C:\mcuproject\scm\zdt\062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  power_temp      4   32[BANK0 ] volatile unsigned long 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       4       0
;;      Temps:          0       1       0
;;      Totals:         0       5       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ADC_Sample
;;		_AD_Init
;;		_Init_System
;;		___ftdiv
;;		___fttol
;;		___lwtoft
;;		_pwmInit
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\062B_SOP14\main.c"
	line	126
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\062B_SOP14\main.c"
	line	126
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	128
	
l1527:	
;main.c: 128: Init_System();
	fcall	_Init_System
	line	129
;main.c: 129: AD_Init();
	fcall	_AD_Init
	line	130
;main.c: 130: while (1)
	
l562:	
	line	132
# 132 "C:\mcuproject\scm\zdt\062B_SOP14\main.c"
clrwdt ;# 
psect	maintext
	line	133
	
l1529:	
;main.c: 133: if(!IntFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u831
	goto	u830
u831:
	goto	l1533
u830:
	goto	l562
	line	135
	
l1533:	
;main.c: 135: IntFlag = 0;
	clrf	(_IntFlag)
	line	136
	
l1535:	
;main.c: 136: pwmInit();
	fcall	_pwmInit
	line	138
	
l1537:	
;main.c: 138: TRISB7 = 1;
	bsf	(47/8),(47)&7	;volatile
	line	139
	
l1539:	
;main.c: 139: ANSEL1 |= 0X80;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(148)^080h+(7/8),(7)&7	;volatile
	line	140
	
l1541:	
;main.c: 140: test_adc = ADC_Sample(15, 7);
	movlw	low(07h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0Fh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	141
	
l1543:	
;main.c: 141: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u841
	goto	u840
u841:
	goto	l1547
u840:
	goto	l1551
	line	147
	
l1547:	
;main.c: 145: else
;main.c: 146: {
;main.c: 147: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	148
;main.c: 148: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	149
	
l1549:	
;main.c: 149: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_main+0)+0),f
	u867:
decfsz	(??_main+0)+0,f
	goto	u867
	nop2
opt asmopt_pop

	line	152
	
l1551:	
;main.c: 150: }
;main.c: 152: test_adc = ADC_Sample(31, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(01Fh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	153
	
l1553:	
;main.c: 153: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u851
	goto	u850
u851:
	goto	l562
u850:
	line	157
	
l1555:	
;main.c: 154: {
;main.c: 155: volatile unsigned long power_temp;
;main.c: 157: power_temp = (unsigned long)(((4096UL*1.2*1000))/adresult);
	movlw	0x0
	movwf	(___ftdiv@f1)
	movlw	0x96
	movwf	(___ftdiv@f1+1)
	movlw	0x4a
	movwf	(___ftdiv@f1+2)
	movf	(_adresult+1),w	;volatile
	movwf	(___lwtoft@c+1)
	movf	(_adresult),w	;volatile
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftdiv@f2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftdiv)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	movwf	(main@power_temp+3)	;volatile
	movf	(2+(?___fttol)),w
	movwf	(main@power_temp+2)	;volatile
	movf	(1+(?___fttol)),w
	movwf	(main@power_temp+1)	;volatile
	movf	(0+(?___fttol)),w
	movwf	(main@power_temp)	;volatile

	line	158
	
l1557:	
;main.c: 158: power_ad = (unsigned int)(power_temp);
	movf	(main@power_temp+1),w	;volatile
	movwf	(_power_ad+1)	;volatile
	movf	(main@power_temp),w	;volatile
	movwf	(_power_ad)	;volatile
	goto	l562
	global	start
	ljmp	start
	opt stack 0
	line	163
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 290 in file "C:\mcuproject\scm\zdt\062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
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
	line	290
global __ptext1
__ptext1:	;psect for function _pwmInit
psect	text1
	file	"C:\mcuproject\scm\zdt\062B_SOP14\main.c"
	line	290
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 6
; Regs used in _pwmInit: [wreg+status,2]
	line	312
	
l1377:	
;main.c: 312: PWMCON1 = 0B11010010;
	movlw	low(0D2h)
	movwf	(22)	;volatile
	line	314
;main.c: 314: TRISA = 0B00011111;
	movlw	low(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	315
;main.c: 315: PWMTL = 0XFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(23)	;volatile
	line	316
;main.c: 316: PWMT4L = 0XFF;
	movlw	low(0FFh)
	movwf	(28)	;volatile
	line	317
;main.c: 317: PWMTH = 0X0C;
	movlw	low(0Ch)
	movwf	(24)	;volatile
	line	320
;main.c: 320: PWMD0L = 0X1F;
	movlw	low(01Fh)
	movwf	(25)	;volatile
	line	323
;main.c: 323: PWMD1L = 0X7F;
	movlw	low(07Fh)
	movwf	(26)	;volatile
	line	324
	
l1379:	
;main.c: 324: PWMD01H = 0;
	clrf	(30)	;volatile
	line	326
	
l1381:	
;main.c: 326: PWM01DT = 0X03;
	movlw	low(03h)
	movwf	(31)	;volatile
	line	329
	
l1383:	
;main.c: 329: PWMD2L = 0X3F;
	movlw	low(03Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	line	330
	
l1385:	
;main.c: 330: PWMD3L = 0X7F;
	movlw	low(07Fh)
	movwf	(156)^080h	;volatile
	line	331
;main.c: 331: PWMD23H = 0;
	clrf	(158)^080h	;volatile
	line	333
	
l1387:	
;main.c: 333: PWMD4L = 0X1F;
	movlw	low(01Fh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(27)	;volatile
	line	349
	
l1389:	
;main.c: 349: PWMCON0 = 0X1F;
	movlw	low(01Fh)
	movwf	(21)	;volatile
	line	350
	
l1391:	
;main.c: 350: PWMCON2 =0X10;
	movlw	low(010h)
	movwf	(29)	;volatile
	line	351
	
l586:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       3       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwtoft.c"
	line	28
global __ptext2
__ptext2:	;psect for function ___lwtoft
psect	text2
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l1473:	
	movf	(___lwtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lwtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	low(08Eh)
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	line	31
	
l949:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   18[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   26[BANK0 ] unsigned long 
;;  exp1            1   30[BANK0 ] unsigned char 
;;  sign1           1   25[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   18[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       4       0
;;      Locals:         0       6       0
;;      Temps:          0       3       0
;;      Totals:         0      13       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\fttol.c"
	line	44
global __ptext3
__ptext3:	;psect for function ___fttol
psect	text3
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l1433:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(___fttol@exp1)
	movf	(((___fttol@exp1))),w
	btfss	status,2
	goto	u691
	goto	u690
u691:
	goto	l1437
u690:
	line	50
	
l1435:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l840
	line	51
	
l1437:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u705:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u700:
	addlw	-1
	skipz
	goto	u705
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l1439:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l1441:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l1443:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l1445:	
	movlw	08Eh
	subwf	(___fttol@exp1),f
	line	56
	
l1447:	
	btfss	(___fttol@exp1),7
	goto	u711
	goto	u710
u711:
	goto	l1457
u710:
	line	57
	
l1449:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u721
	goto	u720
u721:
	goto	l1453
u720:
	goto	l1435
	line	60
	
l1453:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l1455:	
	incfsz	(___fttol@exp1),f
	goto	u731
	goto	u730
u731:
	goto	l1453
u730:
	goto	l1465
	line	63
	
l1457:	
	movlw	low(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u741
	goto	u740
u741:
	goto	l1463
u740:
	goto	l1435
	line	66
	
l1461:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	65
	
l1463:	
	movf	((___fttol@exp1)),w
	btfss	status,2
	goto	u751
	goto	u750
u751:
	goto	l1461
u750:
	line	70
	
l1465:	
	movf	((___fttol@sign1)),w
	btfsc	status,2
	goto	u761
	goto	u760
u761:
	goto	l1469
u760:
	line	71
	
l1467:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	line	72
	
l1469:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l840:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 56 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    3[BANK0 ] float 
;;  f1              3    6[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   13[BANK0 ] float 
;;  sign            1   17[BANK0 ] unsigned char 
;;  exp             1   16[BANK0 ] unsigned char 
;;  cntr            1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    3[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       6       0
;;      Locals:         0       6       0
;;      Temps:          0       3       0
;;      Totals:         0      15       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\ftdiv.c"
	line	56
global __ptext4
__ptext4:	;psect for function ___ftdiv
psect	text4
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\ftdiv.c"
	line	56
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l1393:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(___ftdiv@exp)
	movf	(((___ftdiv@exp))),w
	btfss	status,2
	goto	u651
	goto	u650
u651:
	goto	l1397
u650:
	line	64
	
l1395:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l804
	line	65
	
l1397:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(___ftdiv@sign)
	movf	(((___ftdiv@sign))),w
	btfss	status,2
	goto	u661
	goto	u660
u661:
	goto	l805
u660:
	line	66
	
l1399:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l804
	
l805:	
	line	67
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	68
	
l1401:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l1403:	
	movf	0+(___ftdiv@f1)+02h,w
	movwf	(___ftdiv@sign)
	line	70
	
l1405:	
	movf	0+(___ftdiv@f2)+02h,w
	xorwf	(___ftdiv@sign),f
	line	71
	
l1407:	
	movlw	low(080h)
	andwf	(___ftdiv@sign),f
	line	72
	
l1409:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	
l1411:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l1413:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	
l1415:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	
l1417:	
	movlw	low(018h)
	movwf	(___ftdiv@cntr)
	line	78
	
l1419:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	79
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u675
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u675
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u675:
	skipc
	goto	u671
	goto	u670
u671:
	goto	l1425
u670:
	line	80
	
l1421:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	81
	
l1423:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	83
	
l1425:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	84
	
l1427:	
	decfsz	(___ftdiv@cntr),f
	goto	u681
	goto	u680
u681:
	goto	l1419
u680:
	line	85
	
l1429:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	line	86
	
l804:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    2[COMMON] unsigned um
;;  exp             1    5[COMMON] unsigned char 
;;  sign            1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    2[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 100/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         5       0       0
;;      Locals:         0       0       0
;;      Temps:          3       0       0
;;      Totals:         8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftdiv
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\float.c"
	line	62
global __ptext5
__ptext5:	;psect for function ___ftpack
psect	text5
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1249:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u421
	goto	u420
u421:
	goto	l751
u420:
	
l1251:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u431
	goto	u430
u431:
	goto	l1255
u430:
	
l751:	
	line	65
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l752
	line	67
	
l1253:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l1255:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u441
	goto	u440
u441:
	goto	l1253
u440:
	goto	l1259
	line	71
	
l1257:	
	incf	(___ftpack@exp),f
	line	72
	incf	(___ftpack@arg),f
	skipnz
	incf	(___ftpack@arg+1),f
	skipnz
	incf	(___ftpack@arg+2),f
	line	73
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	70
	
l1259:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u451
	goto	u450
u451:
	goto	l1257
u450:
	goto	l1263
	line	76
	
l1261:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l1263:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u461
	goto	u460
u461:
	goto	l763
u460:
	
l1265:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u471
	goto	u470
u471:
	goto	l1261
u470:
	
l763:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u481
	goto	u480
u481:
	goto	l764
u480:
	line	80
	
l1267:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l764:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l1269:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0+2)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+0)
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	movf	((___ftpack@sign)),w
	btfsc	status,2
	goto	u491
	goto	u490
u491:
	goto	l765
u490:
	line	84
	
l1271:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l765:	
	line	85
	line	86
	
l752:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 172 in file "C:\mcuproject\scm\zdt\062B_SOP14\main.c"
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
;;		On exit  : 100/0
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
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\062B_SOP14\main.c"
	line	172
global __ptext6
__ptext6:	;psect for function _Init_System
psect	text6
	file	"C:\mcuproject\scm\zdt\062B_SOP14\main.c"
	line	172
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	174
	
l1345:	
# 174 "C:\mcuproject\scm\zdt\062B_SOP14\main.c"
nop ;# 
	line	175
# 175 "C:\mcuproject\scm\zdt\062B_SOP14\main.c"
clrwdt ;# 
psect	text6
	line	176
	
l1347:	
;main.c: 176: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	177
# 177 "C:\mcuproject\scm\zdt\062B_SOP14\main.c"
clrwdt ;# 
psect	text6
	line	178
	
l1349:	
;main.c: 178: OSCCON = 0X70;
	movlw	low(070h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	180
	
l1351:	
;main.c: 180: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	181
	
l1353:	
;main.c: 181: WPUB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(8)	;volatile
	line	183
	
l1355:	
;main.c: 183: TRISA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	184
	
l1357:	
;main.c: 184: TRISB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	186
	
l1359:	
;main.c: 186: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	187
	
l1361:	
;main.c: 187: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	191
	
l1363:	
;main.c: 191: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	192
	
l1365:	
;main.c: 192: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	193
	
l1367:	
;main.c: 193: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	195
	
l1369:	
;main.c: 195: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	196
	
l1371:	
;main.c: 196: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	197
	
l572:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 237 in file "C:\mcuproject\scm\zdt\062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/100
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
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	237
global __ptext7
__ptext7:	;psect for function _AD_Init
psect	text7
	file	"C:\mcuproject\scm\zdt\062B_SOP14\main.c"
	line	237
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 6
; Regs used in _AD_Init: [wreg+status,2]
	line	270
	
l1373:	
;main.c: 270: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	287
	
l1375:	
;main.c: 287: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	288
	
l583:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 54 in file "C:\mcuproject\scm\zdt\062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;;  adldo           1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    1[BANK0 ] unsigned char 
;;  j               1    0[BANK0 ] unsigned char 
;;  adsum           4    3[BANK0 ] volatile unsigned long 
;;  ad_temp         2   11[BANK0 ] volatile unsigned int 
;;  admax           2    9[BANK0 ] volatile unsigned int 
;;  admin           2    7[BANK0 ] volatile unsigned int 
;;  i               1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         0      13       0
;;      Temps:          4       0       0
;;      Totals:         5      13       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	54
global __ptext8
__ptext8:	;psect for function _ADC_Sample
psect	text8
	file	"C:\mcuproject\scm\zdt\062B_SOP14\main.c"
	line	54
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 6
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	56
	
l1273:	
;main.c: 56: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	57
	
l1275:	
;main.c: 57: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	58
;main.c: 58: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	60
	
l1277:	
;main.c: 60: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u501
	goto	u500
u501:
	goto	l1283
u500:
	
l1279:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u511
	goto	u510
u511:
	goto	l1283
u510:
	line	63
	
l1281:	
;main.c: 61: {
;main.c: 63: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	64
;main.c: 64: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_ADC_Sample+0)+0),f
	u877:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u877
opt asmopt_pop

	line	65
;main.c: 65: }
	goto	l1285
	line	67
	
l1283:	
;main.c: 66: else
;main.c: 67: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	69
	
l1285:	
;main.c: 69: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u521
	goto	u520
u521:
	goto	l1291
u520:
	line	71
	
l1287:	
;main.c: 70: {
;main.c: 71: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	72
	
l1289:	
;main.c: 72: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	74
	
l1291:	
	line	75
	
l1293:	
;main.c: 75: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	77
	
l1299:	
;main.c: 76: {
;main.c: 77: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u535:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u535
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	78
# 78 "C:\mcuproject\scm\zdt\062B_SOP14\main.c"
nop ;# 
	line	79
# 79 "C:\mcuproject\scm\zdt\062B_SOP14\main.c"
nop ;# 
	line	80
# 80 "C:\mcuproject\scm\zdt\062B_SOP14\main.c"
nop ;# 
	line	81
# 81 "C:\mcuproject\scm\zdt\062B_SOP14\main.c"
nop ;# 
psect	text8
	line	82
	
l1301:	
;main.c: 82: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	84
	
l1303:	
;main.c: 84: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	85
;main.c: 85: while (GODONE)
	goto	l546
	
l547:	
	line	87
;main.c: 86: {
;main.c: 87: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	89
;main.c: 89: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u541
	goto	u540
u541:
	goto	l546
u540:
	line	90
	
l1305:	
;main.c: 90: return 0;
	movlw	low(0)
	goto	l549
	line	91
	
l546:	
	line	85
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u551
	goto	u550
u551:
	goto	l547
u550:
	line	93
	
l1309:	
;main.c: 91: }
;main.c: 93: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
	movf	(153)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	swapf	(ADC_Sample@ad_temp),f	;volatile
	swapf	(ADC_Sample@ad_temp+1),f	;volatile
	movlw	0f0h
	andwf	(ADC_Sample@ad_temp+1),f	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	andlw	0fh
	iorwf	(ADC_Sample@ad_temp+1),f	;volatile
	movlw	0f0h
	andwf	(ADC_Sample@ad_temp),f	;volatile
	
l1311:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	95
	
l1313:	
;main.c: 95: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u561
	goto	u560
u561:
	goto	l1317
u560:
	line	97
	
l1315:	
;main.c: 96: {
;main.c: 97: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	98
;main.c: 98: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	99
;main.c: 99: }
	goto	l552
	line	100
	
l1317:	
;main.c: 100: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u575
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u575:
	skipnc
	goto	u571
	goto	u570
u571:
	goto	l1321
u570:
	line	101
	
l1319:	
;main.c: 101: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l552
	line	102
	
l1321:	
;main.c: 102: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u585
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u585:
	skipnc
	goto	u581
	goto	u580
u581:
	goto	l552
u580:
	line	103
	
l1323:	
;main.c: 103: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	105
	
l552:	
;main.c: 105: adsum += ad_temp;
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	0+(??_ADC_Sample+0)+0,w
	addwf	(ADC_Sample@adsum),f	;volatile
	movf	1+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u591
	addwf	(ADC_Sample@adsum+1),f	;volatile
u591:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u592
	addwf	(ADC_Sample@adsum+2),f	;volatile
u592:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u593
	addwf	(ADC_Sample@adsum+3),f	;volatile
u593:

	line	75
	
l1325:	
	incf	(ADC_Sample@i),f
	
l1327:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u601
	goto	u600
u601:
	goto	l1299
u600:
	line	107
	
l1329:	
;main.c: 106: }
;main.c: 107: adsum -= admax;
	movf	(ADC_Sample@admax),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admax+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),f	;volatile
	movf	1+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	1+(??_ADC_Sample+0)+0,w
	goto	u615
	goto	u616
u615:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u616:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u617
	goto	u618
u617:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u618:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u619
	goto	u610
u619:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u610:

	line	108
;main.c: 108: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u625
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u625
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u625
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u625:
	skipc
	goto	u621
	goto	u620
u621:
	goto	l556
u620:
	line	109
	
l1331:	
;main.c: 109: adsum -= admin;
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),f	;volatile
	movf	1+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	1+(??_ADC_Sample+0)+0,w
	goto	u635
	goto	u636
u635:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u636:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u637
	goto	u638
u637:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u638:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u639
	goto	u630
u639:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u630:

	goto	l1333
	line	110
	
l556:	
	line	111
;main.c: 110: else
;main.c: 111: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	113
	
l1333:	
;main.c: 113: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u645:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u640:
	addlw	-1
	skipz
	goto	u645
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	115
	
l1335:	
;main.c: 115: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	116
	
l1337:	
;main.c: 116: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	117
	
l1339:	
;main.c: 117: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	118
	
l1341:	
;main.c: 118: return 0xA5;
	movlw	low(0A5h)
	line	120
	
l549:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 208 in file "C:\mcuproject\scm\zdt\062B_SOP14\main.c"
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
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	208
global __ptext9
__ptext9:	;psect for function _Isr_Timer
psect	text9
	file	"C:\mcuproject\scm\zdt\062B_SOP14\main.c"
	line	208
	global	__size_of_Isr_Timer
	__size_of_Isr_Timer	equ	__end_of_Isr_Timer-_Isr_Timer
	
_Isr_Timer:	
;incstack = 0
	opt	stack 5
; Regs used in _Isr_Timer: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_Isr_Timer+0)
	movf	pclath,w
	movwf	(??_Isr_Timer+1)
	ljmp	_Isr_Timer
psect	text9
	line	210
	
i1l1509:	
;main.c: 210: if (TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u80_21
	goto	u80_20
u80_21:
	goto	i1l580
u80_20:
	line	212
	
i1l1511:	
;main.c: 211: {
;main.c: 212: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	213
	
i1l1513:	
;main.c: 213: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u81_21
	goto	u81_20
u81_21:
	goto	i1l580
u81_20:
	line	215
	
i1l1515:	
;main.c: 214: {
;main.c: 215: intCount = 0;
	clrf	(_intCount)
	line	216
	
i1l1517:	
;main.c: 216: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	217
	
i1l1519:	
;main.c: 217: PORTA ^= 0x01;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	xorwf	(134)^080h,f	;volatile
	line	218
	
i1l1521:	
;main.c: 218: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u82_21
	goto	u82_20
u82_21:
	goto	i1l580
u82_20:
	line	220
	
i1l1523:	
;main.c: 219: {
;main.c: 220: count1s = 0;
	clrf	(_count1s)
	line	221
	
i1l1525:	
;main.c: 221: PORTA ^= 0x02;
	movlw	low(02h)
	xorwf	(134)^080h,f	;volatile
	line	226
	
i1l580:	
	movf	(??_Isr_Timer+1),w
	movwf	pclath
	swapf	(??_Isr_Timer+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Isr_Timer
	__end_of_Isr_Timer:
	signat	_Isr_Timer,89
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
