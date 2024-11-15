opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F2892B
opt include "H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.11_Beta4\data\include\sc8f2892b.cgen.inc"
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
	FNCALL	_main,_DelayXms
	FNCALL	_main,_Init_System
	FNCALL	_main,___ftdiv
	FNCALL	_main,___fttol
	FNCALL	_main,___lwtoft
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNROOT	_main
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_result
	global	_power_ad
	global	_test_adc
	global	_adresult
	global	_T2CON
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_T2CON	set	18
	global	_INTCON
_INTCON	set	11
	global	_WPUB
_WPUB	set	8
	global	_WPUA
_WPUA	set	7
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_TMR2IE
_TMR2IE	set	105
	global	_TMR2IF
_TMR2IF	set	97
	global	_ADRESH
_ADRESH	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_ADCON0
_ADCON0	set	157
	global	_ADCON1
_ADCON1	set	156
	global	_PR2
_PR2	set	145
	global	_OSCCON
_OSCCON	set	136
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_GODONE
_GODONE	set	1257
	global	_LDO_EN
_LDO_EN	set	1250
	global	_TRISB7
_TRISB7	set	1079
; #config settings
	file	"SC8F289XB_ADC_Demo.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_result:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_power_ad:
       ds      2

_test_adc:
       ds      1

_adresult:
       ds      2

	file	"SC8F289XB_ADC_Demo.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
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
?_DelayXms:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
	ds	2
??_Init_System:	; 1 bytes @ 0x2
??_AD_Init:	; 1 bytes @ 0x2
?_ADC_Sample:	; 1 bytes @ 0x2
??_DelayXms:	; 1 bytes @ 0x2
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x2
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x2
	global	DelayXms@x
DelayXms@x:	; 1 bytes @ 0x2
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x2
	ds	1
??_ADC_Sample:	; 1 bytes @ 0x3
	global	DelayXms@i
DelayXms@i:	; 1 bytes @ 0x3
	ds	1
	global	DelayXms@j
DelayXms@j:	; 1 bytes @ 0x4
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x5
	ds	1
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x6
	ds	1
??___ftpack:	; 1 bytes @ 0x7
	ds	3
??_main:	; 1 bytes @ 0xA
??___lwtoft:	; 1 bytes @ 0xA
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x0
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x0
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x0
	ds	1
	global	ADC_Sample@j
ADC_Sample@j:	; 1 bytes @ 0x1
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
	global	main@power_temp
main@power_temp:	; 4 bytes @ 0x1F
	ds	4
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         7
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      12
;!    BANK0            80     35      40
;!    BANK1            80      0       0
;!    BANK2            80      0       0

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
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _Isr_Timer in BANK2
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
;! (0) _main                                                 4     4      0    4775
;!                                             31 BANK0      4     4      0
;!                         _ADC_Sample
;!                            _AD_Init
;!                           _DelayXms
;!                        _Init_System
;!                            ___ftdiv
;!                            ___fttol
;!                           ___lwtoft
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
;! (1) _DelayXms                                             3     3      0     114
;!                                              2 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _AD_Init                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Sample                                          18    17      1     612
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
;!   _DelayXms
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
;!BANK0               50     23      28       4       50.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!BANK2               50      0       0       7        0.0%
;!ABS                  0      0      34       8        0.0%
;!DATA                 0      0      34       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 127 in file "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  power_temp      4   31[BANK0 ] volatile unsigned long 
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
;;      Locals:         0       4       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ADC_Sample
;;		_AD_Init
;;		_DelayXms
;;		_Init_System
;;		___ftdiv
;;		___fttol
;;		___lwtoft
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
	line	127
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
	line	127
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	129
	
l1649:	
;SC8F289XB_ADC.c: 129: Init_System();
	fcall	_Init_System
	line	130
;SC8F289XB_ADC.c: 130: AD_Init();
	fcall	_AD_Init
	line	132
;SC8F289XB_ADC.c: 132: while (1)
	
l786:	
	line	134
# 134 "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
clrwdt ;# 
psect	maintext
	line	135
;SC8F289XB_ADC.c: 135: DelayXms(1);
	movlw	low(01h)
	fcall	_DelayXms
	line	138
	
l1651:	
;SC8F289XB_ADC.c: 138: TRISB7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1079/8)^080h,(1079)&7	;volatile
	line	139
;SC8F289XB_ADC.c: 139: test_adc = ADC_Sample(6, 7);
	movlw	low(07h)
	movwf	(ADC_Sample@adldo)
	movlw	low(06h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	145
	
l1655:	
;SC8F289XB_ADC.c: 143: }
;SC8F289XB_ADC.c: 145: test_adc = ADC_Sample(15, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(0Fh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	146
	
l1657:	
;SC8F289XB_ADC.c: 146: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u751
	goto	u750
u751:
	goto	l786
u750:
	line	150
	
l1659:	
;SC8F289XB_ADC.c: 147: {
;SC8F289XB_ADC.c: 148: volatile unsigned long power_temp;
;SC8F289XB_ADC.c: 150: power_temp = ((4096UL*0.6*1000))/adresult;
	movlw	0x0
	movwf	(___ftdiv@f1)
	movlw	0x16
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

	line	151
	
l1661:	
;SC8F289XB_ADC.c: 151: power_ad = (unsigned int)(power_temp);
	movf	(main@power_temp+1),w	;volatile
	movwf	(_power_ad+1)	;volatile
	movf	(main@power_temp),w	;volatile
	movwf	(_power_ad)	;volatile
	goto	l786
	global	start
	ljmp	start
	opt stack 0
	line	156
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.11_Beta4\data\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       3       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=1
	file	"H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.11_Beta4\data\sources\common\lwtoft.c"
	line	28
global __ptext1
__ptext1:	;psect for function ___lwtoft
psect	text1
	file	"H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.11_Beta4\data\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l1645:	
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
	
l1161:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.11_Beta4\data\sources\common\fttol.c"
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
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       6       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0      13       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=1
	file	"H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.11_Beta4\data\sources\common\fttol.c"
	line	44
global __ptext2
__ptext2:	;psect for function ___fttol
psect	text2
	file	"H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.11_Beta4\data\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l1605:	
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
	goto	u671
	goto	u670
u671:
	goto	l1609
u670:
	line	50
	
l1607:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l1052
	line	51
	
l1609:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u685:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u680:
	addlw	-1
	skipz
	goto	u685
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l1611:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l1613:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l1615:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l1617:	
	movlw	08Eh
	subwf	(___fttol@exp1),f
	line	56
	
l1619:	
	btfss	(___fttol@exp1),7
	goto	u691
	goto	u690
u691:
	goto	l1629
u690:
	line	57
	
l1621:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u701
	goto	u700
u701:
	goto	l1625
u700:
	goto	l1607
	line	60
	
l1625:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l1627:	
	incfsz	(___fttol@exp1),f
	goto	u711
	goto	u710
u711:
	goto	l1625
u710:
	goto	l1637
	line	63
	
l1629:	
	movlw	low(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u721
	goto	u720
u721:
	goto	l1635
u720:
	goto	l1607
	line	66
	
l1633:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	65
	
l1635:	
	movf	((___fttol@exp1)),w
	btfss	status,2
	goto	u731
	goto	u730
u731:
	goto	l1633
u730:
	line	70
	
l1637:	
	movf	((___fttol@sign1)),w
	btfsc	status,2
	goto	u741
	goto	u740
u741:
	goto	l1641
u740:
	line	71
	
l1639:	
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
	
l1641:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l1052:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 56 in file "H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.11_Beta4\data\sources\common\ftdiv.c"
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
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       6       0       0
;;      Locals:         0       6       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0      15       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	file	"H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.11_Beta4\data\sources\common\ftdiv.c"
	line	56
global __ptext3
__ptext3:	;psect for function ___ftdiv
psect	text3
	file	"H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.11_Beta4\data\sources\common\ftdiv.c"
	line	56
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l1565:	
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
	goto	u631
	goto	u630
u631:
	goto	l1569
u630:
	line	64
	
l1567:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1016
	line	65
	
l1569:	
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
	goto	u641
	goto	u640
u641:
	goto	l1017
u640:
	line	66
	
l1571:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1016
	
l1017:	
	line	67
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	68
	
l1573:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l1575:	
	movf	0+(___ftdiv@f1)+02h,w
	movwf	(___ftdiv@sign)
	line	70
	
l1577:	
	movf	0+(___ftdiv@f2)+02h,w
	xorwf	(___ftdiv@sign),f
	line	71
	
l1579:	
	movlw	low(080h)
	andwf	(___ftdiv@sign),f
	line	72
	
l1581:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	
l1583:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l1585:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	
l1587:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	
l1589:	
	movlw	low(018h)
	movwf	(___ftdiv@cntr)
	line	78
	
l1591:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	79
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u655
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u655
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u655:
	skipc
	goto	u651
	goto	u650
u651:
	goto	l1597
u650:
	line	80
	
l1593:	
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
	
l1595:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	83
	
l1597:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	84
	
l1599:	
	decfsz	(___ftdiv@cntr),f
	goto	u661
	goto	u660
u661:
	goto	l1591
u660:
	line	85
	
l1601:	
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
	
l1016:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.11_Beta4\data\sources\common\float.c"
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
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         5       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          3       0       0       0
;;      Totals:         8       0       0       0
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
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	file	"H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.11_Beta4\data\sources\common\float.c"
	line	62
global __ptext4
__ptext4:	;psect for function ___ftpack
psect	text4
	file	"H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.11_Beta4\data\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1425:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u391
	goto	u390
u391:
	goto	l963
u390:
	
l1427:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u401
	goto	u400
u401:
	goto	l1431
u400:
	
l963:	
	line	65
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l964
	line	67
	
l1429:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l1431:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u411
	goto	u410
u411:
	goto	l1429
u410:
	goto	l1435
	line	71
	
l1433:	
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
	
l1435:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u421
	goto	u420
u421:
	goto	l1433
u420:
	goto	l1439
	line	76
	
l1437:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l1439:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u431
	goto	u430
u431:
	goto	l975
u430:
	
l1441:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u441
	goto	u440
u441:
	goto	l1437
u440:
	
l975:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u451
	goto	u450
u451:
	goto	l976
u450:
	line	80
	
l1443:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l976:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l1445:	
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
	goto	u461
	goto	u460
u461:
	goto	l977
u460:
	line	84
	
l1447:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l977:	
	line	85
	line	86
	
l964:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 165 in file "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
	line	165
global __ptext5
__ptext5:	;psect for function _Init_System
psect	text5
	file	"J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
	line	165
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	167
	
l1533:	
# 167 "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
nop ;# 
	line	168
# 168 "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
clrwdt ;# 
psect	text5
	line	169
	
l1535:	
;SC8F289XB_ADC.c: 169: OPTION_REG = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(129)^080h	;volatile
	line	170
# 170 "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
clrwdt ;# 
psect	text5
	line	171
	
l1537:	
;SC8F289XB_ADC.c: 171: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	173
	
l1539:	
;SC8F289XB_ADC.c: 173: WPUA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	174
	
l1541:	
;SC8F289XB_ADC.c: 174: WPUB = 0B00000000;
	clrf	(8)	;volatile
	line	176
	
l1543:	
;SC8F289XB_ADC.c: 176: TRISA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	177
	
l1545:	
;SC8F289XB_ADC.c: 177: TRISB = 0B00000000;
	clrf	(134)^080h	;volatile
	line	179
	
l1547:	
;SC8F289XB_ADC.c: 179: PORTA = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	180
	
l1549:	
;SC8F289XB_ADC.c: 180: PORTB = 0X00;
	clrf	(6)	;volatile
	line	184
	
l1551:	
;SC8F289XB_ADC.c: 184: PR2 = 249;
	movlw	low(0F9h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(145)^080h	;volatile
	line	185
	
l1553:	
;SC8F289XB_ADC.c: 185: TMR2IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	line	186
	
l1555:	
;SC8F289XB_ADC.c: 186: TMR2IE = 1;
	bsf	(105/8),(105)&7	;volatile
	line	188
	
l1557:	
;SC8F289XB_ADC.c: 188: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(18)	;volatile
	line	189
	
l1559:	
;SC8F289XB_ADC.c: 189: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	190
	
l794:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 117 in file "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
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
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	117
global __ptext6
__ptext6:	;psect for function _DelayXms
psect	text6
	file	"J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
	line	117
	global	__size_of_DelayXms
	__size_of_DelayXms	equ	__end_of_DelayXms-_DelayXms
	
_DelayXms:	
;incstack = 0
	opt	stack 6
; Regs used in _DelayXms: [wreg+status,2+status,0]
;DelayXms@x stored from wreg
	movwf	(DelayXms@x)
	line	120
	
l1513:	
;SC8F289XB_ADC.c: 119: unsigned char i, j;
;SC8F289XB_ADC.c: 120: for (i = x; i > 0; i--)
	movf	(DelayXms@x),w
	movwf	(DelayXms@i)
	
l1515:	
	movf	((DelayXms@i)),w
	btfss	status,2
	goto	u611
	goto	u610
u611:
	goto	l1519
u610:
	goto	l781
	line	121
	
l1519:	
;SC8F289XB_ADC.c: 121: for (j = 153; j > 0; j--);
	movlw	low(099h)
	movwf	(DelayXms@j)
	
l1525:	
	decf	(DelayXms@j),f
	
l1527:	
	movf	((DelayXms@j)),w
	btfss	status,2
	goto	u621
	goto	u620
u621:
	goto	l1525
u620:
	line	120
	
l1529:	
	decf	(DelayXms@i),f
	goto	l1515
	line	122
	
l781:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 220 in file "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
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
	line	220
global __ptext7
__ptext7:	;psect for function _AD_Init
psect	text7
	file	"J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
	line	220
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 6
; Regs used in _AD_Init: [wreg+status,2]
	line	245
	
l1561:	
;SC8F289XB_ADC.c: 245: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(157)^080h	;volatile
	line	263
	
l1563:	
;SC8F289XB_ADC.c: 263: ADCON1 = 0;
	clrf	(156)^080h	;volatile
	line	264
	
l803:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 46 in file "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;;  adldo           1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    0[BANK0 ] unsigned char 
;;  j               1    1[BANK0 ] unsigned char 
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
;;		On entry : 200/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         0      13       0       0
;;      Temps:          4       0       0       0
;;      Totals:         5      13       0       0
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
	line	46
global __ptext8
__ptext8:	;psect for function _ADC_Sample
psect	text8
	file	"J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
	line	46
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 6
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	48
	
l1449:	
;SC8F289XB_ADC.c: 48: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	49
	
l1451:	
;SC8F289XB_ADC.c: 49: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	50
;SC8F289XB_ADC.c: 50: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	52
	
l1453:	
;SC8F289XB_ADC.c: 52: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1250/8)^080h,(1250)&7	;volatile
	goto	u471
	goto	u470
u471:
	goto	l1459
u470:
	
l1455:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u481
	goto	u480
u481:
	goto	l1459
u480:
	line	55
	
l1457:	
;SC8F289XB_ADC.c: 53: {
;SC8F289XB_ADC.c: 55: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(156)^080h	;volatile
	line	56
;SC8F289XB_ADC.c: 56: _delay((unsigned long)((100)*(8000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	66
movwf	((??_ADC_Sample+0)+0),f
	u767:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u767
	nop
opt asmopt_pop

	line	57
;SC8F289XB_ADC.c: 57: }
	goto	l1461
	line	59
	
l1459:	
;SC8F289XB_ADC.c: 58: else
;SC8F289XB_ADC.c: 59: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(156)^080h	;volatile
	line	61
	
l1461:	
	line	62
	
l1463:	
;SC8F289XB_ADC.c: 62: for (i = 0; i < 10; i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(ADC_Sample@i)
	line	64
	
l1467:	
;SC8F289XB_ADC.c: 63: {
;SC8F289XB_ADC.c: 64: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u495:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u495
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(157)^080h	;volatile
	line	65
# 65 "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
nop ;# 
	line	66
# 66 "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
nop ;# 
	line	67
# 67 "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
nop ;# 
	line	68
# 68 "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
nop ;# 
psect	text8
	line	69
	
l1469:	
;SC8F289XB_ADC.c: 69: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1257/8)^080h,(1257)&7	;volatile
	line	71
	
l1471:	
;SC8F289XB_ADC.c: 71: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	72
;SC8F289XB_ADC.c: 72: while (GODONE)
	goto	l763
	
l764:	
	line	74
;SC8F289XB_ADC.c: 73: {
;SC8F289XB_ADC.c: 74: _delay((unsigned long)((2)*(8000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	76
;SC8F289XB_ADC.c: 76: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u501
	goto	u500
u501:
	goto	l763
u500:
	line	77
	
l1473:	
;SC8F289XB_ADC.c: 77: return 0;
	movlw	low(0)
	goto	l766
	line	78
	
l763:	
	line	72
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1257/8)^080h,(1257)&7	;volatile
	goto	u511
	goto	u510
u511:
	goto	l764
u510:
	line	80
	
l1477:	
;SC8F289XB_ADC.c: 78: }
;SC8F289XB_ADC.c: 80: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
	movf	(159)^080h,w	;volatile
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
	
l1479:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	82
	
l1481:	
;SC8F289XB_ADC.c: 82: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u521
	goto	u520
u521:
	goto	l1485
u520:
	line	84
	
l1483:	
;SC8F289XB_ADC.c: 83: {
;SC8F289XB_ADC.c: 84: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	85
;SC8F289XB_ADC.c: 85: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	86
;SC8F289XB_ADC.c: 86: }
	goto	l769
	line	87
	
l1485:	
;SC8F289XB_ADC.c: 87: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u535
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u535:
	skipnc
	goto	u531
	goto	u530
u531:
	goto	l1489
u530:
	line	88
	
l1487:	
;SC8F289XB_ADC.c: 88: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l769
	line	89
	
l1489:	
;SC8F289XB_ADC.c: 89: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u545
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u545:
	skipnc
	goto	u541
	goto	u540
u541:
	goto	l769
u540:
	line	90
	
l1491:	
;SC8F289XB_ADC.c: 90: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	92
	
l769:	
;SC8F289XB_ADC.c: 92: adsum += ad_temp;
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
	goto	u551
	addwf	(ADC_Sample@adsum+1),f	;volatile
u551:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u552
	addwf	(ADC_Sample@adsum+2),f	;volatile
u552:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u553
	addwf	(ADC_Sample@adsum+3),f	;volatile
u553:

	line	62
	
l1493:	
	incf	(ADC_Sample@i),f
	
l1495:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u561
	goto	u560
u561:
	goto	l1467
u560:
	line	94
	
l1497:	
;SC8F289XB_ADC.c: 93: }
;SC8F289XB_ADC.c: 94: adsum -= admax;
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
	goto	u575
	goto	u576
u575:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u576:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u577
	goto	u578
u577:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u578:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u579
	goto	u570
u579:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u570:

	line	95
;SC8F289XB_ADC.c: 95: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u585
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u585
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u585
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u585:
	skipc
	goto	u581
	goto	u580
u581:
	goto	l773
u580:
	line	96
	
l1499:	
;SC8F289XB_ADC.c: 96: adsum -= admin;
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
	goto	u595
	goto	u596
u595:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u596:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u597
	goto	u598
u597:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u598:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u599
	goto	u590
u599:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u590:

	goto	l1501
	line	97
	
l773:	
	line	98
;SC8F289XB_ADC.c: 97: else
;SC8F289XB_ADC.c: 98: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	100
	
l1501:	
;SC8F289XB_ADC.c: 100: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u605:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u600:
	addlw	-1
	skipz
	goto	u605
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	102
	
l1503:	
;SC8F289XB_ADC.c: 102: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	103
	
l1505:	
;SC8F289XB_ADC.c: 103: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	104
	
l1507:	
;SC8F289XB_ADC.c: 104: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	105
	
l1509:	
;SC8F289XB_ADC.c: 105: return 0xA5;
	movlw	low(0A5h)
	line	107
	
l766:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 201 in file "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	201
global __ptext9
__ptext9:	;psect for function _Isr_Timer
psect	text9
	file	"J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_ADC_Demo\SC8F289XB_ADC.c"
	line	201
	global	__size_of_Isr_Timer
	__size_of_Isr_Timer	equ	__end_of_Isr_Timer-_Isr_Timer
	
_Isr_Timer:	
;incstack = 0
	opt	stack 5
; Regs used in _Isr_Timer: []
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
	line	203
	
i1l1421:	
;SC8F289XB_ADC.c: 203: if (TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u38_21
	goto	u38_20
u38_21:
	goto	i1l800
u38_20:
	line	205
	
i1l1423:	
;SC8F289XB_ADC.c: 204: {
;SC8F289XB_ADC.c: 205: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	209
	
i1l800:	
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
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
