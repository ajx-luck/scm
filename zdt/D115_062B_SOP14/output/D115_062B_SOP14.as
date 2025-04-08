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
	FNCALL	_main,_AD_Init
	FNCALL	_main,_Init_System
	FNCALL	_main,_Sleep_Mode
	FNCALL	_main,_checkBatAD
	FNCALL	_main,_checkOutA
	FNCALL	_main,_chrgCtr
	FNCALL	_main,_keyCtr
	FNCALL	_main,_ledCtr
	FNCALL	_main,_workCtr
	FNCALL	_workCtr,_pwmInit
	FNCALL	_workCtr,_pwmStop
	FNCALL	_ledCtr,___lbdiv
	FNCALL	_ledCtr,___lbmod
	FNCALL	_keyCtr,_keyRead
	FNCALL	_chrgCtr,___lbdiv
	FNCALL	_checkOutA,_ADC_Sample
	FNCALL	_checkBatAD,_ADC_Sample
	FNCALL	_Sleep_Mode,_AD_Init
	FNCALL	_Sleep_Mode,_Init_System
	FNROOT	_main
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_prePwStep
	global	_ledStep
	global	_workStep
	global	_count900s
	global	_count8s
	global	_count5s
	global	_count50s
	global	_batADValue
	global	_outADValue
	global	_power_ad
	global	_result
	global	_adresult
	global	_sleepTime
	global	_lowBatFlag
	global	_preLedStep
	global	_overWorkTime
	global	_showBatTime
	global	_lockLedStep
	global	_pwStep
	global	_startTime
	global	_tempDuty
	global	_overCount
	global	_maxDuty
	global	_longPressFlag
	global	_keyCount
	global	_workOverOutTime
	global	_intCount10
	global	_chrgFlag
	global	_IntFlag
	global	_count1s
	global	_intCount
	global	_test_adc
	global	_firstTime
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_firstTime:
       ds      1

	global	_PWMCON2
_PWMCON2	set	29
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
	global	_PIE1
_PIE1	set	14
	global	_PIR1
_PIR1	set	13
	global	_INTCON
_INTCON	set	11
	global	_IOCB
_IOCB	set	9
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
	global	_RAIE
_RAIE	set	115
	global	_TMR2IF
_TMR2IF	set	105
	global	_RAIF
_RAIF	set	107
	global	_RBIF
_RBIF	set	88
	global	_RBIE
_RBIE	set	91
	global	_PEIE
_PEIE	set	94
	global	_GIE
_GIE	set	95
	global	_RB3
_RB3	set	51
	global	_PWMD23H
_PWMD23H	set	158
	global	_PWM23DT
_PWM23DT	set	157
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
	global	_ANSEL0
_ANSEL0	set	147
	global	_IOCA
_IOCA	set	137
	global	_WPUA
_WPUA	set	136
	global	_WPDA
_WPDA	set	135
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
	file	"D115_062B_SOP14.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_prePwStep:
       ds      1

_ledStep:
       ds      1

_workStep:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_count900s:
       ds      2

_count8s:
       ds      2

_count5s:
       ds      2

_count50s:
       ds      2

_batADValue:
       ds      2

_outADValue:
       ds      2

_power_ad:
       ds      2

_result:
       ds      2

_adresult:
       ds      2

_sleepTime:
       ds      1

_lowBatFlag:
       ds      1

_preLedStep:
       ds      1

_overWorkTime:
       ds      1

_showBatTime:
       ds      1

_lockLedStep:
       ds      1

_pwStep:
       ds      1

_startTime:
       ds      1

_tempDuty:
       ds      1

_overCount:
       ds      1

_maxDuty:
       ds      1

_longPressFlag:
       ds      1

_keyCount:
       ds      1

_workOverOutTime:
       ds      1

_intCount10:
       ds      1

_chrgFlag:
       ds      1

_IntFlag:
       ds      1

_count1s:
       ds      1

_intCount:
       ds      1

_test_adc:
       ds      1

	file	"D115_062B_SOP14.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+026h)
	fcall	clear_ram0
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
?_checkOutA:	; 1 bytes @ 0x0
?_chrgCtr:	; 1 bytes @ 0x0
?_checkBatAD:	; 1 bytes @ 0x0
?_keyCtr:	; 1 bytes @ 0x0
?_workCtr:	; 1 bytes @ 0x0
?_ledCtr:	; 1 bytes @ 0x0
?_Sleep_Mode:	; 1 bytes @ 0x0
?_pwmInit:	; 1 bytes @ 0x0
?_pwmStop:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_keyRead:	; 1 bytes @ 0x0
	ds	2
??_Init_System:	; 1 bytes @ 0x2
??_AD_Init:	; 1 bytes @ 0x2
??_workCtr:	; 1 bytes @ 0x2
??_Sleep_Mode:	; 1 bytes @ 0x2
??_pwmInit:	; 1 bytes @ 0x2
??_pwmStop:	; 1 bytes @ 0x2
?_ADC_Sample:	; 1 bytes @ 0x2
??_keyRead:	; 1 bytes @ 0x2
?___lbdiv:	; 1 bytes @ 0x2
?___lbmod:	; 1 bytes @ 0x2
	global	keyRead@keyStatus
keyRead@keyStatus:	; 1 bytes @ 0x2
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x2
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x2
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x2
	ds	1
??_keyCtr:	; 1 bytes @ 0x3
??_ADC_Sample:	; 1 bytes @ 0x3
??___lbdiv:	; 1 bytes @ 0x3
??___lbmod:	; 1 bytes @ 0x3
	global	keyCtr@kclick
keyCtr@kclick:	; 1 bytes @ 0x3
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x3
	ds	1
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x4
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x4
	ds	1
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x5
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x5
	ds	1
??_chrgCtr:	; 1 bytes @ 0x6
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x6
	ds	1
??_checkOutA:	; 1 bytes @ 0x7
??_checkBatAD:	; 1 bytes @ 0x7
??_ledCtr:	; 1 bytes @ 0x7
	ds	2
??_main:	; 1 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	ADC_Sample@j
ADC_Sample@j:	; 1 bytes @ 0x0
	ds	1
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x1
	ds	1
	global	ADC_Sample@i
ADC_Sample@i:	; 1 bytes @ 0x2
	ds	1
	global	ADC_Sample@adsum
ADC_Sample@adsum:	; 4 bytes @ 0x3
	ds	4
	global	ADC_Sample@admin
ADC_Sample@admin:	; 2 bytes @ 0x7
	ds	2
	global	ADC_Sample@admax
ADC_Sample@admax:	; 2 bytes @ 0x9
	ds	2
	global	ADC_Sample@ad_temp
ADC_Sample@ad_temp:	; 2 bytes @ 0xB
	ds	3
	global	checkOutA@maxAout
checkOutA@maxAout:	; 1 bytes @ 0xE
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         41
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      12
;!    BANK0            80     15      54
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_checkBatAD
;!    _main->_checkOutA
;!    _ledCtr->___lbmod
;!    _keyCtr->_keyRead
;!    _chrgCtr->___lbdiv
;!    _checkOutA->_ADC_Sample
;!    _checkBatAD->_ADC_Sample
;!
;!Critical Paths under _Isr_Timer in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_checkOutA
;!    _checkOutA->_ADC_Sample
;!    _checkBatAD->_ADC_Sample
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    2812
;!                            _AD_Init
;!                        _Init_System
;!                         _Sleep_Mode
;!                         _checkBatAD
;!                          _checkOutA
;!                            _chrgCtr
;!                             _keyCtr
;!                             _ledCtr
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              0     0      0       0
;!                            _pwmInit
;!                            _pwmStop
;! ---------------------------------------------------------------------------------
;! (2) _pwmStop                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _pwmInit                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _ledCtr                                               1     1      0     533
;!                                              7 COMMON     1     1      0
;!                            ___lbdiv
;!                            ___lbmod
;! ---------------------------------------------------------------------------------
;! (2) ___lbmod                                              5     4      1     265
;!                                              2 COMMON     5     4      1
;! ---------------------------------------------------------------------------------
;! (1) _keyCtr                                               1     1      0      67
;!                                              3 COMMON     1     1      0
;!                            _keyRead
;! ---------------------------------------------------------------------------------
;! (2) _keyRead                                              1     1      0      22
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              0     0      0     268
;!                            ___lbdiv
;! ---------------------------------------------------------------------------------
;! (2) ___lbdiv                                              4     3      1     268
;!                                              2 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _checkOutA                                            4     4      0    1032
;!                                              7 COMMON     2     2      0
;!                                             13 BANK0      2     2      0
;!                         _ADC_Sample
;! ---------------------------------------------------------------------------------
;! (1) _checkBatAD                                           2     2      0     912
;!                                              7 COMMON     2     2      0
;!                         _ADC_Sample
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Sample                                          18    17      1     912
;!                                              2 COMMON     5     4      1
;!                                              0 BANK0     13    13      0
;! ---------------------------------------------------------------------------------
;! (1) _Sleep_Mode                                           0     0      0       0
;!                            _AD_Init
;!                        _Init_System
;! ---------------------------------------------------------------------------------
;! (2) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _AD_Init                                              0     0      0       0
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
;!   _AD_Init
;!   _Init_System
;!   _Sleep_Mode
;!     _AD_Init
;!     _Init_System
;!   _checkBatAD
;!     _ADC_Sample
;!   _checkOutA
;!     _ADC_Sample
;!   _chrgCtr
;!     ___lbdiv
;!   _keyCtr
;!     _keyRead
;!   _ledCtr
;!     ___lbdiv
;!     ___lbmod
;!   _workCtr
;!     _pwmInit
;!     _pwmStop
;!
;! _Isr_Timer (ROOT)
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
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50      F      36       4       67.5%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      42       7        0.0%
;!DATA                 0      0      42       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 135 in file "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
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
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_AD_Init
;;		_Init_System
;;		_Sleep_Mode
;;		_checkBatAD
;;		_checkOutA
;;		_chrgCtr
;;		_keyCtr
;;		_ledCtr
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
	line	135
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
	line	135
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	137
	
l2650:	
;main.c: 137: Init_System();
	fcall	_Init_System
	line	138
;main.c: 138: AD_Init();
	fcall	_AD_Init
	line	139
	
l2652:	
;main.c: 139: firstTime = 100;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_firstTime)
	line	140
;main.c: 140: while (1)
	
l661:	
	line	142
# 142 "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
clrwdt ;# 
psect	maintext
	line	143
	
l2654:	
;main.c: 143: if(intCount10 > 10)
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_intCount10),w
	skipc
	goto	u2611
	goto	u2610
u2611:
	goto	l2660
u2610:
	line	145
	
l2656:	
;main.c: 144: {
;main.c: 145: intCount10 = 0;
	clrf	(_intCount10)
	line	146
	
l2658:	
;main.c: 146: checkOutA();
	fcall	_checkOutA
	line	148
	
l2660:	
;main.c: 147: }
;main.c: 148: if(!IntFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l2664
u2620:
	goto	l661
	line	150
	
l2664:	
;main.c: 150: IntFlag = 0;
	clrf	(_IntFlag)
	line	151
	
l2666:	
;main.c: 151: chrgCtr();
	fcall	_chrgCtr
	line	152
	
l2668:	
;main.c: 152: checkBatAD();
	fcall	_checkBatAD
	line	153
	
l2670:	
;main.c: 153: if(chrgFlag == 0 && lowBatFlag == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l665
u2630:
	
l2672:	
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l665
u2640:
	line	155
	
l2674:	
;main.c: 154: {
;main.c: 155: keyCtr();
	fcall	_keyCtr
	line	156
	
l665:	
	line	157
;main.c: 156: }
;main.c: 157: workCtr();
	fcall	_workCtr
	line	158
;main.c: 158: ledCtr();
	fcall	_ledCtr
	line	159
	
l2676:	
;main.c: 159: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && showBatTime == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l2692
u2650:
	
l2678:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l2692
u2660:
	
l2680:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l2692
u2670:
	
l2682:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l2692
u2680:
	
l2684:	
	movf	((_showBatTime)),w
	btfss	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l2692
u2690:
	line	161
	
l2686:	
;main.c: 160: {
;main.c: 161: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u2701
	goto	u2700
u2701:
	goto	l661
u2700:
	line	163
	
l2688:	
;main.c: 162: {
;main.c: 163: sleepTime = 0;
	clrf	(_sleepTime)
	line	164
	
l2690:	
;main.c: 164: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l661
	line	169
	
l2692:	
;main.c: 167: else
;main.c: 168: {
;main.c: 169: sleepTime = 0;
	clrf	(_sleepTime)
	goto	l661
	global	start
	ljmp	start
	opt stack 0
	line	172
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 407 in file "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pwmInit
;;		_pwmStop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	407
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
	line	407
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	410
	
l2228:	
;main.c: 410: if(startTime > 0)
	movf	((_startTime)),w
	btfsc	status,2
	goto	u1781
	goto	u1780
u1781:
	goto	l2232
u1780:
	line	412
	
l2230:	
;main.c: 411: {
;main.c: 412: startTime--;
	decf	(_startTime),f
	line	414
	
l2232:	
;main.c: 413: }
;main.c: 414: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1791
	goto	u1790
u1791:
	goto	l2258
u1790:
	line	416
	
l2234:	
;main.c: 415: {
;main.c: 416: if((PWMCON0 & 0x04) == 0)
	btfsc	(21),(2)&7	;volatile
	goto	u1801
	goto	u1800
u1801:
	goto	l2238
u1800:
	line	418
	
l2236:	
;main.c: 417: {
;main.c: 418: pwmInit();
	fcall	_pwmInit
	line	420
	
l2238:	
;main.c: 419: }
;main.c: 420: maxDuty = 40 + (workStep*3);
	movf	(_workStep),w
	addwf	(_workStep),w
	addwf	(_workStep),w
	addlw	028h
	movwf	(_maxDuty)
	line	421
	
l2240:	
;main.c: 421: if(overCount >= 5)
	movlw	low(05h)
	subwf	(_overCount),w
	skipc
	goto	u1811
	goto	u1810
u1811:
	goto	l2250
u1810:
	line	423
	
l2242:	
;main.c: 422: {
;main.c: 423: if(++count5s > 500)
	incf	(_count5s),f
	skipnz
	incf	(_count5s+1),f
	movlw	01h
	subwf	((_count5s+1)),w
	movlw	0F5h
	skipnz
	subwf	((_count5s)),w
	skipc
	goto	u1821
	goto	u1820
u1821:
	goto	l2252
u1820:
	line	425
	
l2244:	
;main.c: 424: {
;main.c: 425: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	426
	
l2246:	
;main.c: 426: overWorkTime = 180;
	movlw	low(0B4h)
	movwf	(_overWorkTime)
	line	427
	
l2248:	
;main.c: 427: preLedStep = workStep;
	movf	(_workStep),w
	movwf	(_preLedStep)
	line	428
;main.c: 428: workStep = 0;
	clrf	(_workStep)
	goto	l2252
	line	434
	
l2250:	
;main.c: 432: else
;main.c: 433: {
;main.c: 434: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	436
	
l2252:	
;main.c: 435: }
;main.c: 436: if(count1s == 0 && ++count900s >= 900)
	movf	((_count1s)),w
	btfss	status,2
	goto	u1831
	goto	u1830
u1831:
	goto	l753
u1830:
	
l2254:	
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	movlw	03h
	subwf	((_count900s+1)),w
	movlw	084h
	skipnz
	subwf	((_count900s)),w
	skipc
	goto	u1841
	goto	u1840
u1841:
	goto	l753
u1840:
	line	438
	
l2256:	
;main.c: 437: {
;main.c: 438: workStep = 0;
	clrf	(_workStep)
	goto	l753
	line	443
	
l2258:	
;main.c: 441: else
;main.c: 442: {
;main.c: 443: pwmStop();
	fcall	_pwmStop
	line	444
	
l2260:	
;main.c: 444: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	446
	
l753:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 726 in file "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	726
global __ptext2
__ptext2:	;psect for function _pwmStop
psect	text2
	file	"C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
	line	726
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 5
; Regs used in _pwmStop: []
	line	728
	
l1920:	
;main.c: 728: PWMCON0 &= 0XFB;
	bcf	(21)+(2/8),(2)&7	;volatile
	line	729
;main.c: 729: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	730
	
l811:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 711 in file "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
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
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	711
global __ptext3
__ptext3:	;psect for function _pwmInit
psect	text3
	file	"C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
	line	711
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 5
; Regs used in _pwmInit: [wreg+status,2]
	line	713
	
l1910:	
;main.c: 713: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	714
;main.c: 714: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	715
	
l1912:	
;main.c: 715: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	718
	
l1914:	
;main.c: 718: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	719
;main.c: 719: PWMD2L = 50;
	movlw	low(032h)
	movwf	(155)^080h	;volatile
	line	720
	
l1916:	
;main.c: 720: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	722
	
l1918:	
;main.c: 722: PWMCON0 = 0X64;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	723
;main.c: 723: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	724
	
l808:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_ledCtr

;; *************** function _ledCtr *****************
;; Defined at:
;;		line 176 in file "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          1       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lbdiv
;;		___lbmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	176
global __ptext4
__ptext4:	;psect for function _ledCtr
psect	text4
	file	"C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
	line	176
	global	__size_of_ledCtr
	__size_of_ledCtr	equ	__end_of_ledCtr-_ledCtr
	
_ledCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _ledCtr: [wreg+status,2+status,0+pclath+cstack]
	line	178
	
l2262:	
;main.c: 178: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u1851
	goto	u1850
u1851:
	goto	l2272
u1850:
	line	180
	
l2264:	
;main.c: 179: {
;main.c: 180: firstTime--;
	decf	(_firstTime),f
	line	181
	
l2266:	
;main.c: 181: ledStep = 6;
	movlw	low(06h)
	movwf	(_ledStep)
	line	182
	
l2268:	
;main.c: 182: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u1861
	goto	u1860
u1861:
	goto	l2314
u1860:
	line	184
	
l2270:	
;main.c: 183: {
;main.c: 184: prePwStep = pwStep;
	movf	(_pwStep),w
	movwf	(_prePwStep)
	goto	l2314
	line	187
	
l2272:	
;main.c: 187: else if(overWorkTime > 0)
	movf	((_overWorkTime)),w
	btfsc	status,2
	goto	u1871
	goto	u1870
u1871:
	goto	l2282
u1870:
	line	189
	
l2274:	
;main.c: 188: {
;main.c: 189: overWorkTime--;
	decf	(_overWorkTime),f
	line	190
	
l2276:	
;main.c: 190: if(overWorkTime % 60 < 30)
	movlw	low(03Ch)
	movwf	(___lbmod@divisor)
	movf	(_overWorkTime),w
	fcall	___lbmod
	movwf	(??_ledCtr+0)+0
	movlw	01Eh
	subwf	(??_ledCtr+0)+0,w
	skipnc
	goto	u1881
	goto	u1880
u1881:
	goto	l2280
u1880:
	line	192
	
l2278:	
;main.c: 191: {
;main.c: 192: ledStep = preLedStep;
	movf	(_preLedStep),w
	movwf	(_ledStep)
	line	193
;main.c: 193: }
	goto	l2314
	line	196
	
l2280:	
;main.c: 194: else
;main.c: 195: {
;main.c: 196: ledStep = 0;
	clrf	(_ledStep)
	goto	l2314
	line	199
	
l2282:	
;main.c: 199: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u1891
	goto	u1890
u1891:
	goto	l2300
u1890:
	line	201
	
l2284:	
;main.c: 200: {
;main.c: 201: showBatTime--;
	decf	(_showBatTime),f
	line	202
	
l2286:	
;main.c: 202: if(prePwStep >= 14)
	movlw	low(0Eh)
	subwf	(_prePwStep),w
	skipc
	goto	u1901
	goto	u1900
u1901:
	goto	l2290
u1900:
	line	204
	
l2288:	
;main.c: 203: {
;main.c: 204: ledStep = prePwStep/14;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	movwf	(_ledStep)
	line	205
;main.c: 205: }
	goto	l2314
	line	206
	
l2290:	
;main.c: 206: else if(prePwStep > 5)
	movlw	low(06h)
	subwf	(_prePwStep),w
	skipc
	goto	u1911
	goto	u1910
u1911:
	goto	l2294
u1910:
	line	208
	
l2292:	
;main.c: 207: {
;main.c: 208: ledStep = 1;
	clrf	(_ledStep)
	incf	(_ledStep),f
	line	209
;main.c: 209: }
	goto	l2314
	line	212
	
l2294:	
;main.c: 210: else
;main.c: 211: {
;main.c: 212: if(count1s < 50)
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u1921
	goto	u1920
u1921:
	goto	l2280
u1920:
	goto	l2292
	line	220
	
l682:	
	line	221
;main.c: 219: }
;main.c: 220: }
;main.c: 221: }
	goto	l2314
	line	222
	
l2300:	
;main.c: 222: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1931
	goto	u1930
u1931:
	goto	l2304
u1930:
	line	224
	
l2302:	
;main.c: 223: {
;main.c: 224: ledStep = workStep;
	movf	(_workStep),w
	movwf	(_ledStep)
	line	225
;main.c: 225: }
	goto	l2314
	line	226
	
l2304:	
;main.c: 226: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u1941
	goto	u1940
u1941:
	goto	l2280
u1940:
	line	228
	
l2306:	
;main.c: 227: {
;main.c: 228: if(count1s % 50 == 0)
	movlw	low(032h)
	movwf	(___lbmod@divisor)
	movf	(_count1s),w
	fcall	___lbmod
	xorlw	0
	skipz
	goto	u1951
	goto	u1950
u1951:
	goto	l2314
u1950:
	line	230
	
l2308:	
;main.c: 229: {
;main.c: 230: if(++ledStep > 6)
	movlw	low(07h)
	incf	(_ledStep),f
	subwf	((_ledStep)),w
	skipc
	goto	u1961
	goto	u1960
u1961:
	goto	l682
u1960:
	line	232
	
l2310:	
;main.c: 231: {
;main.c: 232: ledStep = lockLedStep;
	movf	(_lockLedStep),w
	movwf	(_ledStep)
	line	240
	
l2314:	
;main.c: 239: }
;main.c: 240: PORTB |= 0x03;
	movlw	low(03h)
	iorwf	(6),f	;volatile
	line	241
	
l2316:	
;main.c: 241: PORTA |= 0x3C;
	movlw	low(03Ch)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(134)^080h,f	;volatile
	line	242
	
l2318:	
;main.c: 242: if(ledStep > 5)
	movlw	low(06h)
	subwf	(_ledStep),w
	skipc
	goto	u1971
	goto	u1970
u1971:
	goto	l2322
u1970:
	line	244
	
l2320:	
;main.c: 243: {
;main.c: 244: PORTB &= 0xFC;
	movlw	low(0FCh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(6),f	;volatile
	line	245
;main.c: 245: PORTA &= 0xC3;
	movlw	low(0C3h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	246
;main.c: 246: }
	goto	l705
	line	247
	
l2322:	
;main.c: 247: else if(ledStep > 4)
	movlw	low(05h)
	subwf	(_ledStep),w
	skipc
	goto	u1981
	goto	u1980
u1981:
	goto	l2326
u1980:
	line	249
	
l2324:	
;main.c: 248: {
;main.c: 249: PORTB &= 0xFC;
	movlw	low(0FCh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(6),f	;volatile
	line	250
;main.c: 250: PORTA &= 0xE3;
	movlw	low(0E3h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	251
;main.c: 251: }
	goto	l705
	line	252
	
l2326:	
;main.c: 252: else if(ledStep > 3)
	movlw	low(04h)
	subwf	(_ledStep),w
	skipc
	goto	u1991
	goto	u1990
u1991:
	goto	l2330
u1990:
	line	254
	
l2328:	
;main.c: 253: {
;main.c: 254: PORTB &= 0xFC;
	movlw	low(0FCh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(6),f	;volatile
	line	255
;main.c: 255: PORTA &= 0xF3;
	movlw	low(0F3h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	256
;main.c: 256: }
	goto	l705
	line	257
	
l2330:	
;main.c: 257: else if(ledStep > 2)
	movlw	low(03h)
	subwf	(_ledStep),w
	skipc
	goto	u2001
	goto	u2000
u2001:
	goto	l2336
u2000:
	line	259
	
l2332:	
;main.c: 258: {
;main.c: 259: PORTB &= 0xFC;
	movlw	low(0FCh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(6),f	;volatile
	line	260
	
l2334:	
;main.c: 260: PORTA &= 0xFB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(2/8),(2)&7	;volatile
	line	261
;main.c: 261: }
	goto	l705
	line	262
	
l2336:	
;main.c: 262: else if(ledStep > 1)
	movlw	low(02h)
	subwf	(_ledStep),w
	skipc
	goto	u2011
	goto	u2010
u2011:
	goto	l2340
u2010:
	line	264
	
l2338:	
;main.c: 263: {
;main.c: 264: PORTB &= 0xFC;
	movlw	low(0FCh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(6),f	;volatile
	line	265
;main.c: 265: }
	goto	l705
	line	266
	
l2340:	
;main.c: 266: else if(ledStep > 0)
	movf	((_ledStep)),w
	btfsc	status,2
	goto	u2021
	goto	u2020
u2021:
	goto	l699
u2020:
	line	268
	
l2342:	
;main.c: 267: {
;main.c: 268: PORTB &= 0xFE;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(6)+(0/8),(0)&7	;volatile
	goto	l705
	line	271
	
l699:	
	
l705:	
	return
	opt stack 0
GLOBAL	__end_of_ledCtr
	__end_of_ledCtr:
	signat	_ledCtr,89
	global	___lbmod

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 4 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    4[COMMON] unsigned char 
;;  rem             1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 100/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         3       0       0
;;      Temps:          1       0       0
;;      Totals:         5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ledCtr
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
	line	4
global __ptext5
__ptext5:	;psect for function ___lbmod
psect	text5
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
	line	4
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
;incstack = 0
	opt	stack 5
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	movwf	(___lbmod@dividend)
	line	9
	
l2018:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l2020:	
	clrf	(___lbmod@rem)
	line	12
	
l2022:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u1345:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u1345
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l2024:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l2026:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u1351
	goto	u1350
u1351:
	goto	l2030
u1350:
	line	15
	
l2028:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l2030:	
	decfsz	(___lbmod@counter),f
	goto	u1361
	goto	u1360
u1361:
	goto	l2022
u1360:
	line	17
	
l2032:	
	movf	(___lbmod@rem),w
	line	18
	
l1111:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 370 in file "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  kclick          1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_keyRead
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
	line	370
global __ptext6
__ptext6:	;psect for function _keyCtr
psect	text6
	file	"C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
	line	370
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	372
	
l2200:	
;main.c: 372: char kclick = keyRead(0x10 & (~PORTB));
	comf	(6),w	;volatile
	andlw	010h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	373
	
l2202:	
;main.c: 373: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u1721
	goto	u1720
u1721:
	goto	l2218
u1720:
	line	375
	
l2204:	
;main.c: 374: {
;main.c: 375: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1731
	goto	u1730
u1731:
	goto	l2210
u1730:
	line	377
	
l2206:	
;main.c: 376: {
;main.c: 377: if(++workStep > 6)
	movlw	low(07h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u1741
	goto	u1740
u1741:
	goto	l742
u1740:
	line	379
	
l2208:	
;main.c: 378: {
;main.c: 379: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l742
	line	382
	
l2210:	
;main.c: 382: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u1751
	goto	u1750
u1751:
	goto	l2214
u1750:
	line	384
	
l2212:	
;main.c: 383: {
;main.c: 384: showBatTime = 0;
	clrf	(_showBatTime)
	line	385
;main.c: 385: }
	goto	l742
	line	388
	
l2214:	
;main.c: 386: else
;main.c: 387: {
;main.c: 388: showBatTime = 200;
	movlw	low(0C8h)
	movwf	(_showBatTime)
	line	389
	
l2216:	
;main.c: 389: count1s = 0;
	clrf	(_count1s)
	goto	l742
	line	392
	
l2218:	
;main.c: 392: else if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u1761
	goto	u1760
u1761:
	goto	l742
u1760:
	line	394
	
l2220:	
;main.c: 393: {
;main.c: 394: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1771
	goto	u1770
u1771:
	goto	l740
u1770:
	line	396
	
l2222:	
;main.c: 395: {
;main.c: 396: workStep = 0;
	clrf	(_workStep)
	line	397
;main.c: 397: }
	goto	l742
	line	398
	
l740:	
	line	400
;main.c: 398: else
;main.c: 399: {
;main.c: 400: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	401
	
l2224:	
;main.c: 401: startTime = 30;
	movlw	low(01Eh)
	movwf	(_startTime)
	goto	l2212
	line	405
	
l742:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 337 in file "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;  keyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyStatus       1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	337
global __ptext7
__ptext7:	;psect for function _keyRead
psect	text7
	file	"C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
	line	337
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	339
	
l1870:	
;main.c: 339: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1101
	goto	u1100
u1101:
	goto	l1886
u1100:
	line	341
	
l1872:	
;main.c: 340: {
;main.c: 341: keyCount++;
	incf	(_keyCount),f
	line	342
	
l1874:	
;main.c: 342: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1111
	goto	u1110
u1111:
	goto	l1890
u1110:
	line	344
	
l1876:	
;main.c: 343: {
;main.c: 344: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	line	345
	
l1878:	
;main.c: 345: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1121
	goto	u1120
u1121:
	goto	l1890
u1120:
	line	347
	
l1880:	
;main.c: 346: {
;main.c: 347: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	348
	
l1882:	
;main.c: 348: return 2;
	movlw	low(02h)
	goto	l725
	line	354
	
l1886:	
;main.c: 352: else
;main.c: 353: {
;main.c: 354: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1131
	goto	u1130
u1131:
	goto	l1896
u1130:
	line	356
	
l1888:	
;main.c: 355: {
;main.c: 356: keyCount = 0;
	clrf	(_keyCount)
	line	357
;main.c: 357: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	358
	
l1890:	
;main.c: 358: return 0;
	movlw	low(0)
	goto	l725
	line	360
	
l1896:	
;main.c: 360: else if(keyCount >= 6)
	movlw	low(06h)
	subwf	(_keyCount),w
	skipc
	goto	u1141
	goto	u1140
u1141:
	goto	l1904
u1140:
	line	362
	
l1898:	
;main.c: 361: {
;main.c: 362: keyCount = 0;
	clrf	(_keyCount)
	line	363
	
l1900:	
;main.c: 363: return 1;
	movlw	low(01h)
	goto	l725
	line	365
	
l1904:	
;main.c: 364: }
;main.c: 365: keyCount = 0;
	clrf	(_keyCount)
	goto	l1890
	line	368
	
l725:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 275 in file "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lbdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	275
global __ptext8
__ptext8:	;psect for function _chrgCtr
psect	text8
	file	"C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
	line	275
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	277
	
l2120:	
;main.c: 277: if(PORTB & 0x04)
	btfss	(6),(2)&7	;volatile
	goto	u1571
	goto	u1570
u1571:
	goto	l2144
u1570:
	line	279
	
l2122:	
;main.c: 278: {
;main.c: 279: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u1581
	goto	u1580
u1581:
	goto	l709
u1580:
	line	281
	
l2124:	
;main.c: 280: {
;main.c: 281: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	282
	
l2126:	
;main.c: 283: chrgMaxDuty = 0;
	clrf	(_ledStep)
	line	284
	
l709:	
	line	285
;main.c: 284: }
;main.c: 285: workStep = 0;
	clrf	(_workStep)
	line	286
;main.c: 286: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	287
	
l2128:	
;main.c: 287: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u1591
	goto	u1590
u1591:
	goto	l2136
u1590:
	line	289
	
l2130:	
;main.c: 288: {
;main.c: 289: if(++count50s > 7200)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	01Ch
	subwf	((_count50s+1)),w
	movlw	021h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u1601
	goto	u1600
u1601:
	goto	l2138
u1600:
	line	291
	
l2132:	
;main.c: 290: {
;main.c: 291: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	292
	
l2134:	
;main.c: 292: prePwStep++;
	incf	(_prePwStep),f
	goto	l2138
	line	297
	
l2136:	
;main.c: 295: else
;main.c: 296: {
;main.c: 297: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	299
	
l2138:	
;main.c: 298: }
;main.c: 299: if(prePwStep < 15)
	movlw	low(0Fh)
	subwf	(_prePwStep),w
	skipnc
	goto	u1611
	goto	u1610
u1611:
	goto	l2142
u1610:
	line	301
	
l2140:	
;main.c: 300: {
;main.c: 301: lockLedStep = 0;
	clrf	(_lockLedStep)
	line	302
;main.c: 302: }
	goto	l719
	line	305
	
l2142:	
;main.c: 303: else
;main.c: 304: {
;main.c: 305: lockLedStep = (prePwStep/14) - 1;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	0FFh
	movwf	(_lockLedStep)
	goto	l719
	line	311
	
l2144:	
;main.c: 317: lockCount = 0;
	clrf	(_chrgFlag)
	line	318
;main.c: 319: chrgWaitTime = 20;
	clrf	(_lockLedStep)
	line	320
	
l2146:	
;main.c: 320: if(prePwStep > 0 && prePwStep > pwStep)
	movf	((_prePwStep)),w
	btfsc	status,2
	goto	u1621
	goto	u1620
u1621:
	goto	l2156
u1620:
	
l2148:	
	movf	(_prePwStep),w
	subwf	(_pwStep),w
	skipnc
	goto	u1631
	goto	u1630
u1631:
	goto	l2156
u1630:
	line	322
	
l2150:	
;main.c: 321: {
;main.c: 322: if(++count50s > 2000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	07h
	subwf	((_count50s+1)),w
	movlw	0D1h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u1641
	goto	u1640
u1641:
	goto	l719
u1640:
	line	324
	
l2152:	
;main.c: 323: {
;main.c: 324: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	325
	
l2154:	
;main.c: 325: prePwStep--;
	decf	(_prePwStep),f
	goto	l719
	line	330
	
l2156:	
;main.c: 328: else
;main.c: 329: {
;main.c: 330: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	333
	
l719:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	___lbdiv

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 4 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    3[COMMON] unsigned char 
;;  quotient        1    5[COMMON] unsigned char 
;;  counter         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 100/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         3       0       0
;;      Temps:          0       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ledCtr
;;		_chrgCtr
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
	line	4
global __ptext9
__ptext9:	;psect for function ___lbdiv
psect	text9
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
	line	4
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	movwf	(___lbdiv@dividend)
	line	9
	
l1994:	
	clrf	(___lbdiv@quotient)
	line	10
	
l1996:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1301
	goto	u1300
u1301:
	goto	l2014
u1300:
	line	11
	
l1998:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2002
	
l1100:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l2000:	
	incf	(___lbdiv@counter),f
	line	12
	
l2002:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1311
	goto	u1310
u1311:
	goto	l1100
u1310:
	line	16
	
l1102:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l2004:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1321
	goto	u1320
u1321:
	goto	l2010
u1320:
	line	19
	
l2006:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2008:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2010:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l2012:	
	decfsz	(___lbdiv@counter),f
	goto	u1331
	goto	u1330
u1331:
	goto	l1102
u1330:
	line	25
	
l2014:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1105:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_checkOutA

;; *************** function _checkOutA *****************
;; Defined at:
;;		line 448 in file "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  maxAout         1   14[BANK0 ] unsigned char 
;;  maxtempV        1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          2       0       0
;;      Totals:         2       2       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ADC_Sample
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
	line	448
global __ptext10
__ptext10:	;psect for function _checkOutA
psect	text10
	file	"C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
	line	448
	global	__size_of_checkOutA
	__size_of_checkOutA	equ	__end_of_checkOutA-_checkOutA
	
_checkOutA:	
;incstack = 0
	opt	stack 5
; Regs used in _checkOutA: [wreg+status,2+status,0+pclath+cstack]
	line	450
	
l2524:	
;main.c: 450: test_adc = ADC_Sample(0, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	451
	
l2526:	
;main.c: 451: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u2341
	goto	u2340
u2341:
	goto	l2604
u2340:
	line	454
	
l2528:	
;main.c: 452: {
;main.c: 454: outADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_outADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_outADValue)
	line	456
	
l2530:	
;main.c: 456: if(workStep && (outADValue > 800))
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l2538
u2350:
	
l2532:	
	movlw	03h
	subwf	(_outADValue+1),w
	movlw	021h
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l2538
u2360:
	line	458
	
l2534:	
;main.c: 457: {
;main.c: 458: if(++workOverOutTime > 50)
	movlw	low(033h)
	incf	(_workOverOutTime),f
	subwf	((_workOverOutTime)),w
	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l2540
u2370:
	line	460
	
l2536:	
;main.c: 459: {
;main.c: 460: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	461
;main.c: 461: workStep = 0;
	clrf	(_workStep)
	goto	l2540
	line	466
	
l2538:	
;main.c: 464: else
;main.c: 465: {
;main.c: 466: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	468
	
l2540:	
	line	469
	
l2542:	
;main.c: 469: if(workStep < 6 && outADValue > maxtempV)
	movlw	low(06h)
	subwf	(_workStep),w
	skipnc
	goto	u2381
	goto	u2380
u2381:
	goto	l2550
u2380:
	
l2544:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	0C9h
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l2550
u2390:
	line	471
	
l2546:	
;main.c: 470: {
;main.c: 471: if(++overCount > 5)
	movlw	low(06h)
	incf	(_overCount),f
	subwf	((_overCount)),w
	skipc
	goto	u2401
	goto	u2400
u2401:
	goto	l2600
u2400:
	line	473
	
l2548:	
;main.c: 472: {
;main.c: 473: overCount = 5;
	movlw	low(05h)
	movwf	(_overCount)
	goto	l2600
	line	476
	
l2550:	
;main.c: 476: else if(outADValue > (maxtempV+100))
	movlw	01h
	subwf	(_outADValue+1),w
	movlw	02Dh
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u2411
	goto	u2410
u2411:
	goto	l2556
u2410:
	line	478
	
l2552:	
;main.c: 477: {
;main.c: 478: if(++overCount > 5)
	movlw	low(06h)
	incf	(_overCount),f
	subwf	((_overCount)),w
	skipc
	goto	u2421
	goto	u2420
u2421:
	goto	l2600
u2420:
	goto	l2548
	line	485
	
l2556:	
;main.c: 483: else
;main.c: 484: {
;main.c: 485: unsigned char maxAout = 40;
	movlw	low(028h)
	movwf	(checkOutA@maxAout)
	line	486
;main.c: 486: if(pwStep < 40)
	movlw	low(028h)
	subwf	(_pwStep),w
	skipnc
	goto	u2431
	goto	u2430
u2431:
	goto	l2560
u2430:
	line	488
	
l2558:	
;main.c: 487: {
;main.c: 488: maxAout = 37;
	movlw	low(025h)
	movwf	(checkOutA@maxAout)
	line	490
	
l2560:	
;main.c: 489: }
;main.c: 490: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l2564
u2440:
	line	492
	
l2562:	
;main.c: 491: {
;main.c: 492: maxAout = maxAout + 1;
	incf	(checkOutA@maxAout),f
	line	493
;main.c: 493: }
	goto	l768
	line	494
	
l2564:	
;main.c: 494: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2451
	goto	u2450
u2451:
	goto	l2568
u2450:
	line	496
	
l2566:	
;main.c: 495: {
;main.c: 496: maxAout = maxAout + 3;
	movlw	low(03h)
	addwf	(checkOutA@maxAout),f
	line	497
;main.c: 497: }
	goto	l768
	line	498
	
l2568:	
;main.c: 498: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2461
	goto	u2460
u2461:
	goto	l2572
u2460:
	line	500
	
l2570:	
;main.c: 499: {
;main.c: 500: maxAout = maxAout + 5;
	movlw	low(05h)
	addwf	(checkOutA@maxAout),f
	line	501
;main.c: 501: }
	goto	l768
	line	502
	
l2572:	
;main.c: 502: else if(workStep == 4)
		movlw	4
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2471
	goto	u2470
u2471:
	goto	l2576
u2470:
	line	504
	
l2574:	
;main.c: 503: {
;main.c: 504: maxAout = maxAout + 7;
	movlw	low(07h)
	addwf	(checkOutA@maxAout),f
	line	505
;main.c: 505: }
	goto	l768
	line	506
	
l2576:	
;main.c: 506: else if(workStep == 5)
		movlw	5
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l2580
u2480:
	line	508
	
l2578:	
;main.c: 507: {
;main.c: 508: maxAout = maxAout + 9;
	movlw	low(09h)
	addwf	(checkOutA@maxAout),f
	line	509
;main.c: 509: }
	goto	l768
	line	510
	
l2580:	
;main.c: 510: else if(workStep == 6)
		movlw	6
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l772
u2490:
	line	512
	
l2582:	
;main.c: 511: {
;main.c: 512: maxAout = maxAout + 12;
	movlw	low(0Ch)
	addwf	(checkOutA@maxAout),f
	goto	l768
	line	514
	
l772:	
	
l768:	
;main.c: 513: }
;main.c: 514: if(overCount > 0)
	movf	((_overCount)),w
	btfsc	status,2
	goto	u2501
	goto	u2500
u2501:
	goto	l2586
u2500:
	line	516
	
l2584:	
;main.c: 515: {
;main.c: 516: overCount--;
	decf	(_overCount),f
	line	518
	
l2586:	
;main.c: 517: }
;main.c: 518: if(outADValue > maxAout)
	movf	(checkOutA@maxAout),w
	movwf	(??_checkOutA+0)+0
	clrf	(??_checkOutA+0)+0+1
	movf	(_outADValue+1),w
	subwf	1+(??_checkOutA+0)+0,w
	skipz
	goto	u2515
	movf	(_outADValue),w
	subwf	0+(??_checkOutA+0)+0,w
u2515:
	skipnc
	goto	u2511
	goto	u2510
u2511:
	goto	l2594
u2510:
	line	521
	
l2588:	
;main.c: 519: {
;main.c: 521: if(startTime == 0)
	movf	((_startTime)),w
	btfss	status,2
	goto	u2521
	goto	u2520
u2521:
	goto	l2592
u2520:
	line	523
	
l2590:	
;main.c: 522: {
;main.c: 523: tempDuty = 81 + (workStep*3);
	movf	(_workStep),w
	addwf	(_workStep),w
	addwf	(_workStep),w
	addlw	051h
	movwf	(_tempDuty)
	line	524
;main.c: 524: }
	goto	l2600
	line	527
	
l2592:	
;main.c: 525: else
;main.c: 526: {
;main.c: 527: tempDuty = maxDuty;
	movf	(_maxDuty),w
	movwf	(_tempDuty)
	goto	l2600
	line	535
	
l2594:	
;main.c: 535: if(tempDuty > maxDuty)
	movf	(_tempDuty),w
	subwf	(_maxDuty),w
	skipnc
	goto	u2531
	goto	u2530
u2531:
	goto	l2592
u2530:
	line	537
	
l2596:	
;main.c: 536: {
;main.c: 537: tempDuty--;
	decf	(_tempDuty),f
	line	547
;main.c: 538: }
	
l2600:	
;main.c: 542: }
;main.c: 544: }
;main.c: 546: }
;main.c: 547: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	548
	
l2602:	
;main.c: 548: PWMD2L = tempDuty;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_tempDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	line	549
;main.c: 549: }
	goto	l786
	line	552
	
l2604:	
;main.c: 550: else
;main.c: 551: {
;main.c: 552: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	553
;main.c: 553: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	554
	
l2606:	
;main.c: 554: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkOutA+0)+0),f
	u2717:
decfsz	(??_checkOutA+0)+0,f
	goto	u2717
opt asmopt_pop

	line	556
	
l786:	
	return
	opt stack 0
GLOBAL	__end_of_checkOutA
	__end_of_checkOutA:
	signat	_checkOutA,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 558 in file "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          2       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ADC_Sample
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	558
global __ptext11
__ptext11:	;psect for function _checkBatAD
psect	text11
	file	"C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
	line	558
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 5
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	560
	
l2608:	
;main.c: 560: test_adc = ADC_Sample(1, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(01h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	561
	
l2610:	
;main.c: 561: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u2541
	goto	u2540
u2541:
	goto	l2646
u2540:
	line	563
	
l2612:	
;main.c: 562: {
;main.c: 563: batADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_batADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_batADValue)
	line	564
;main.c: 564: if(batADValue < 1117)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Dh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2551
	goto	u2550
u2551:
	goto	l2630
u2550:
	line	566
	
l2614:	
;main.c: 565: {
;main.c: 566: pwStep = 0;
	clrf	(_pwStep)
	line	567
	
l2616:	
;main.c: 567: if(++count8s > 800)
	incf	(_count8s),f
	skipnz
	incf	(_count8s+1),f
	movlw	03h
	subwf	((_count8s+1)),w
	movlw	021h
	skipnz
	subwf	((_count8s)),w
	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l2642
u2560:
	line	569
	
l2618:	
;main.c: 568: {
;main.c: 569: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	570
	
l2620:	
;main.c: 570: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	571
	
l2622:	
;main.c: 571: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l2626
u2570:
	line	573
	
l2624:	
;main.c: 572: {
;main.c: 573: overWorkTime = 180;
	movlw	low(0B4h)
	movwf	(_overWorkTime)
	line	574
;main.c: 574: preLedStep = workStep;
	movf	(_workStep),w
	movwf	(_preLedStep)
	line	576
	
l2626:	
;main.c: 575: }
;main.c: 576: prePwStep = 0;
	clrf	(_prePwStep)
	line	577
	
l2628:	
;main.c: 577: workStep = 0;
	clrf	(_workStep)
	goto	l799
	line	582
	
l2630:	
;main.c: 580: else
;main.c: 581: {
;main.c: 582: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	583
	
l2632:	
;main.c: 583: if(batADValue >= 1340)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	03Ch
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l2636
u2580:
	line	585
	
l2634:	
;main.c: 584: {
;main.c: 585: pwStep = ((batADValue - 1340) /2) + 13;
	movf	(_batADValue),w
	addlw	low(0FAC4h)
	movwf	(??_checkBatAD+0)+0
	movf	(_batADValue+1),w
	skipnc
	addlw	1
	addlw	high(0FAC4h)
	movwf	1+(??_checkBatAD+0)+0
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	movf	0+(??_checkBatAD+0)+0,w
	addlw	0Dh
	movwf	(_pwStep)
	line	586
;main.c: 586: }
	goto	l2638
	line	589
	
l2636:	
;main.c: 587: else
;main.c: 588: {
;main.c: 589: pwStep = (batADValue - 1117) / 16;
	movf	(_batADValue),w
	addlw	low(0FBA3h)
	movwf	(??_checkBatAD+0)+0
	movf	(_batADValue+1),w
	skipnc
	addlw	1
	addlw	high(0FBA3h)
	movwf	1+(??_checkBatAD+0)+0
	movlw	04h
u2595:
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	addlw	-1
	skipz
	goto	u2595
	movf	0+(??_checkBatAD+0)+0,w
	movwf	(_pwStep)
	line	591
	
l2638:	
;main.c: 590: }
;main.c: 591: if(pwStep > 99)
	movlw	low(064h)
	subwf	(_pwStep),w
	skipc
	goto	u2601
	goto	u2600
u2601:
	goto	l2642
u2600:
	line	593
	
l2640:	
;main.c: 592: {
;main.c: 593: pwStep = 99;
	movlw	low(063h)
	movwf	(_pwStep)
	goto	l799
	line	596
	
l2642:	
	goto	l799
	line	603
	
l2646:	
;main.c: 601: else
;main.c: 602: {
;main.c: 603: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	604
;main.c: 604: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	605
	
l2648:	
;main.c: 605: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u2727:
decfsz	(??_checkBatAD+0)+0,f
	goto	u2727
opt asmopt_pop

	line	608
	
l799:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 816 in file "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
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
;;		On entry : 100/0
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
;;		_checkOutA
;;		_checkBatAD
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	816
global __ptext12
__ptext12:	;psect for function _ADC_Sample
psect	text12
	file	"C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
	line	816
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 5
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	818
	
l2452:	
;main.c: 818: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	819
	
l2454:	
;main.c: 819: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	820
;main.c: 820: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	822
	
l2456:	
;main.c: 822: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u2191
	goto	u2190
u2191:
	goto	l2462
u2190:
	
l2458:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l2462
u2200:
	line	825
	
l2460:	
;main.c: 823: {
;main.c: 825: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	826
;main.c: 826: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_ADC_Sample+0)+0),f
	u2737:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u2737
opt asmopt_pop

	line	827
;main.c: 827: }
	goto	l2464
	line	829
	
l2462:	
;main.c: 828: else
;main.c: 829: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	831
	
l2464:	
;main.c: 831: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l2470
u2210:
	line	833
	
l2466:	
;main.c: 832: {
;main.c: 833: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	834
	
l2468:	
;main.c: 834: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	836
	
l2470:	
	line	837
	
l2472:	
;main.c: 837: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	839
	
l2478:	
;main.c: 838: {
;main.c: 839: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u2225:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u2225
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	840
# 840 "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
nop ;# 
	line	841
# 841 "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
nop ;# 
	line	842
# 842 "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
nop ;# 
	line	843
# 843 "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
nop ;# 
psect	text12
	line	844
	
l2480:	
;main.c: 844: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	846
	
l2482:	
;main.c: 846: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	847
;main.c: 847: while (GODONE)
	goto	l825
	
l826:	
	line	849
;main.c: 848: {
;main.c: 849: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	851
;main.c: 851: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u2231
	goto	u2230
u2231:
	goto	l825
u2230:
	line	852
	
l2484:	
;main.c: 852: return 0;
	movlw	low(0)
	goto	l828
	line	853
	
l825:	
	line	847
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u2241
	goto	u2240
u2241:
	goto	l826
u2240:
	line	855
	
l2488:	
;main.c: 853: }
;main.c: 855: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l2490:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	857
	
l2492:	
;main.c: 857: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u2251
	goto	u2250
u2251:
	goto	l2496
u2250:
	line	859
	
l2494:	
;main.c: 858: {
;main.c: 859: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	860
;main.c: 860: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	861
;main.c: 861: }
	goto	l831
	line	862
	
l2496:	
;main.c: 862: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u2265
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u2265:
	skipnc
	goto	u2261
	goto	u2260
u2261:
	goto	l2500
u2260:
	line	863
	
l2498:	
;main.c: 863: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l831
	line	864
	
l2500:	
;main.c: 864: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u2275
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u2275:
	skipnc
	goto	u2271
	goto	u2270
u2271:
	goto	l831
u2270:
	line	865
	
l2502:	
;main.c: 865: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	867
	
l831:	
;main.c: 867: adsum += ad_temp;
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
	goto	u2281
	addwf	(ADC_Sample@adsum+1),f	;volatile
u2281:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2282
	addwf	(ADC_Sample@adsum+2),f	;volatile
u2282:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2283
	addwf	(ADC_Sample@adsum+3),f	;volatile
u2283:

	line	837
	
l2504:	
	incf	(ADC_Sample@i),f
	
l2506:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l2478
u2290:
	line	869
	
l2508:	
;main.c: 868: }
;main.c: 869: adsum -= admax;
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
	goto	u2305
	goto	u2306
u2305:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u2306:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u2307
	goto	u2308
u2307:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u2308:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u2309
	goto	u2300
u2309:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u2300:

	line	870
;main.c: 870: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u2315
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u2315
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u2315
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u2315:
	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l835
u2310:
	line	871
	
l2510:	
;main.c: 871: adsum -= admin;
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
	goto	u2325
	goto	u2326
u2325:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u2326:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u2327
	goto	u2328
u2327:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u2328:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u2329
	goto	u2320
u2329:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u2320:

	goto	l2512
	line	872
	
l835:	
	line	873
;main.c: 872: else
;main.c: 873: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	875
	
l2512:	
;main.c: 875: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u2335:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u2330:
	addlw	-1
	skipz
	goto	u2335
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	877
	
l2514:	
;main.c: 877: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	878
	
l2516:	
;main.c: 878: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	879
	
l2518:	
;main.c: 879: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	880
	
l2520:	
;main.c: 880: return 0xA5;
	movlw	low(0A5h)
	line	882
	
l828:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 740 in file "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_AD_Init
;;		_Init_System
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	740
global __ptext13
__ptext13:	;psect for function _Sleep_Mode
psect	text13
	file	"C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
	line	740
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 5
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	742
	
l2344:	
;main.c: 742: INTCON = 0;
	clrf	(11)	;volatile
	line	744
;main.c: 744: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	746
	
l2346:	
;main.c: 746: TRISA = 0x03;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	747
	
l2348:	
;main.c: 747: WPUA = 0B00000000;
	clrf	(136)^080h	;volatile
	line	748
;main.c: 748: PORTA = 0x3C;
	movlw	low(03Ch)
	movwf	(134)^080h	;volatile
	line	749
;main.c: 749: TRISB = 0x14;
	movlw	low(014h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	750
;main.c: 750: PORTB = 0x03;
	movlw	low(03h)
	movwf	(6)	;volatile
	line	751
;main.c: 751: WPUB = 0x10;
	movlw	low(010h)
	movwf	(8)	;volatile
	line	753
	
l2350:	
;main.c: 753: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	754
	
l2352:	
;main.c: 754: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	756
	
l2354:	
;main.c: 756: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	758
	
l2356:	
;main.c: 758: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	760
;main.c: 760: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	761
	
l2358:	
;main.c: 761: IOCB = 0x14;
	movlw	low(014h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	763
	
l2360:	
;main.c: 763: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	764
	
l2362:	
;main.c: 764: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	765
	
l2364:	
;main.c: 765: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	766
	
l2366:	
;main.c: 766: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	768
	
l2368:	
;main.c: 768: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	769
	
l2370:	
;main.c: 769: PIR1 = 0;
	clrf	(13)	;volatile
	line	770
	
l2372:	
;main.c: 770: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	772
;main.c: 772: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	773
	
l2374:	
;main.c: 773: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	774
;main.c: 774: PORTB;
	movf	(6),w	;volatile
	line	775
	
l2376:	
;main.c: 775: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	776
# 776 "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
clrwdt ;# 
	line	778
# 778 "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
sleep ;# 
	line	780
# 780 "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
nop ;# 
	line	781
# 781 "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
clrwdt ;# 
	line	782
# 782 "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
nop ;# 
	line	783
# 783 "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
nop ;# 
	line	784
# 784 "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
nop ;# 
	line	785
# 785 "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
nop ;# 
	line	786
# 786 "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
nop ;# 
psect	text13
	line	787
	
l2378:	
;main.c: 787: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u2031
	goto	u2030
u2031:
	goto	l814
u2030:
	
l2380:	
	bcf	(107/8),(107)&7	;volatile
	
l814:	
	line	788
;main.c: 788: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u2041
	goto	u2040
u2041:
	goto	l815
u2040:
	
l2382:	
	bcf	(88/8),(88)&7	;volatile
	
l815:	
	line	789
;main.c: 789: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u2051
	goto	u2050
u2051:
	goto	l2386
u2050:
	
l2384:	
	bcf	(105/8),(105)&7	;volatile
	line	790
	
l2386:	
;main.c: 790: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	791
;main.c: 791: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	792
	
l2388:	
;main.c: 792: Init_System();
	fcall	_Init_System
	line	793
	
l2390:	
;main.c: 793: AD_Init();
	fcall	_AD_Init
	line	794
	
l817:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 619 in file "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
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
;;		_Sleep_Mode
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	619
global __ptext14
__ptext14:	;psect for function _Init_System
psect	text14
	file	"C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
	line	619
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_System: [wreg+status,2]
	line	621
	
l1834:	
# 621 "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
nop ;# 
	line	622
# 622 "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
clrwdt ;# 
psect	text14
	line	623
	
l1836:	
;main.c: 623: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	624
# 624 "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
clrwdt ;# 
psect	text14
	line	625
	
l1838:	
;main.c: 625: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	627
	
l1840:	
;main.c: 627: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	628
	
l1842:	
;main.c: 628: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	629
	
l1844:	
;main.c: 629: WPUB = 0x10;
	movlw	low(010h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	631
	
l1846:	
;main.c: 631: TRISA = 0x03;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	632
	
l1848:	
;main.c: 632: TRISB = 0x14;
	movlw	low(014h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	634
	
l1850:	
;main.c: 634: PORTA = 0X3C;
	movlw	low(03Ch)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	635
	
l1852:	
;main.c: 635: PORTB = 0X03;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	639
	
l1854:	
;main.c: 639: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	640
	
l1856:	
;main.c: 640: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	641
	
l1858:	
;main.c: 641: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	643
	
l1860:	
;main.c: 643: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	644
	
l1862:	
;main.c: 644: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	645
	
l802:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 656 in file "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
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
;;		_Sleep_Mode
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	656
global __ptext15
__ptext15:	;psect for function _AD_Init
psect	text15
	file	"C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
	line	656
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 5
; Regs used in _AD_Init: [wreg+status,2]
	line	689
	
l1864:	
;main.c: 689: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	706
	
l1866:	
;main.c: 706: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	707
	
l1868:	
;main.c: 707: ANSEL0 = 0X03;
	movlw	low(03h)
	movwf	(147)^080h	;volatile
	line	708
	
l805:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 112 in file "C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
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
;;		On exit  : 100/0
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
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	112
global __ptext16
__ptext16:	;psect for function _Isr_Timer
psect	text16
	file	"C:\mcuproject\scm\zdt\D115_062B_SOP14\main.c"
	line	112
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
psect	text16
	line	114
	
i1l2392:	
;main.c: 114: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u206_21
	goto	u206_20
u206_21:
	goto	i1l656
u206_20:
	line	116
	
i1l2394:	
;main.c: 115: {
;main.c: 116: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	117
	
i1l2396:	
;main.c: 117: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u207_21
	goto	u207_20
u207_21:
	goto	i1l2406
u207_20:
	line	119
	
i1l2398:	
;main.c: 118: {
;main.c: 119: intCount = 0;
	clrf	(_intCount)
	line	120
	
i1l2400:	
;main.c: 120: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	121
	
i1l2402:	
;main.c: 121: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u208_21
	goto	u208_20
u208_21:
	goto	i1l2406
u208_20:
	line	123
	
i1l2404:	
;main.c: 122: {
;main.c: 123: count1s = 0;
	clrf	(_count1s)
	line	126
	
i1l2406:	
;main.c: 124: }
;main.c: 125: }
;main.c: 126: intCount10++;
	incf	(_intCount10),f
	line	129
	
i1l656:	
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
