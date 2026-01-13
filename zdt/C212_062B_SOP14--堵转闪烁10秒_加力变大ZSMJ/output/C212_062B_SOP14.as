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
	FNCALL	_ledCtr,___lwmod
	FNCALL	_keyCtr,_keyRead
	FNCALL	_chrgCtr,___lbdiv
	FNCALL	_chrgCtr,_chrgPwmInit
	FNCALL	_chrgCtr,_chrgPwmStop
	FNCALL	_checkOutA,_ADC_Sample
	FNCALL	_checkBatAD,_ADC_Sample
	FNCALL	_Sleep_Mode,_AD_Init
	FNCALL	_Sleep_Mode,_Init_System
	FNROOT	_main
	FNCALL	_Isr_Timer,_ledShow
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_batADValue
	global	_prePwStep
	global	_workStep
	global	_count900s
	global	_count8s
	global	_overWorkTime
	global	_count5s
	global	_fullCount
	global	_count50s
	global	_outADValue
	global	_power_ad
	global	_result
	global	_adresult
	global	_sleepTime
	global	_lowBatFlag
	global	_preLedStep
	global	_ledCntTime
	global	_chrgMaxDuty
	global	_chrgWaitTime
	global	_subTime
	global	_addTime
	global	_lockCount
	global	_chrgMaxAD
	global	_chrgMode
	global	_showBatTime
	global	_lockLedStep
	global	_reChrgCount
	global	_pwStep
	global	_overChrgTime
	global	_startTime
	global	_tempDuty
	global	_addPowerCount
	global	_overCount
	global	_maxDuty
	global	_longPressFlag
	global	_keyCount
	global	_ledStep
	global	_ledCnt
	global	_workOverOutTime
	global	_protectFlag
	global	_countHalfFull
	global	_intCount10
	global	_chrgFullFlag
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

	global	_PWM01DT
_PWM01DT	set	31
	global	_PWMD01H
_PWMD01H	set	30
	global	_PWMCON2
_PWMCON2	set	29
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
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
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
	file	"C212_062B_SOP14.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_batADValue:
       ds      2

_prePwStep:
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

_overWorkTime:
       ds      2

_count5s:
       ds      2

_fullCount:
       ds      2

_count50s:
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

_ledCntTime:
       ds      1

_chrgMaxDuty:
       ds      1

_chrgWaitTime:
       ds      1

_subTime:
       ds      1

_addTime:
       ds      1

_lockCount:
       ds      1

_chrgMaxAD:
       ds      1

_chrgMode:
       ds      1

_showBatTime:
       ds      1

_lockLedStep:
       ds      1

_reChrgCount:
       ds      1

_pwStep:
       ds      1

_overChrgTime:
       ds      1

_startTime:
       ds      1

_tempDuty:
       ds      1

_addPowerCount:
       ds      1

_overCount:
       ds      1

_maxDuty:
       ds      1

_longPressFlag:
       ds      1

_keyCount:
       ds      1

_ledStep:
       ds      1

_ledCnt:
       ds      1

_workOverOutTime:
       ds      1

_protectFlag:
       ds      1

_countHalfFull:
       ds      1

_intCount10:
       ds      1

_chrgFullFlag:
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

	file	"C212_062B_SOP14.as"
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
	movlw	low(__pbssCOMMON)
	movwf	fsr
	movlw	low((__pbssCOMMON)+04h)
	fcall	clear_ram0
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+037h)
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
?_ledShow:	; 1 bytes @ 0x0
??_ledShow:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_AD_Init:	; 1 bytes @ 0x0
?_checkOutA:	; 1 bytes @ 0x0
?_chrgCtr:	; 1 bytes @ 0x0
?_checkBatAD:	; 1 bytes @ 0x0
?_keyCtr:	; 1 bytes @ 0x0
?_workCtr:	; 1 bytes @ 0x0
?_ledCtr:	; 1 bytes @ 0x0
?_Sleep_Mode:	; 1 bytes @ 0x0
?_chrgPwmStop:	; 1 bytes @ 0x0
?_chrgPwmInit:	; 1 bytes @ 0x0
?_pwmInit:	; 1 bytes @ 0x0
?_pwmStop:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_keyRead:	; 1 bytes @ 0x0
	ds	3
??_Init_System:	; 1 bytes @ 0x3
??_AD_Init:	; 1 bytes @ 0x3
??_workCtr:	; 1 bytes @ 0x3
??_Sleep_Mode:	; 1 bytes @ 0x3
??_chrgPwmStop:	; 1 bytes @ 0x3
??_chrgPwmInit:	; 1 bytes @ 0x3
??_pwmInit:	; 1 bytes @ 0x3
??_pwmStop:	; 1 bytes @ 0x3
?_ADC_Sample:	; 1 bytes @ 0x3
??_keyRead:	; 1 bytes @ 0x3
?___lbdiv:	; 1 bytes @ 0x3
?___lbmod:	; 1 bytes @ 0x3
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x3
	global	keyRead@keyStatus
keyRead@keyStatus:	; 1 bytes @ 0x3
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x3
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x3
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x3
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x3
	ds	1
??_checkOutA:	; 1 bytes @ 0x4
??_checkBatAD:	; 1 bytes @ 0x4
??_keyCtr:	; 1 bytes @ 0x4
??___lbdiv:	; 1 bytes @ 0x4
??___lbmod:	; 1 bytes @ 0x4
	global	keyCtr@kclick
keyCtr@kclick:	; 1 bytes @ 0x4
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x4
	ds	1
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x5
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x5
	ds	1
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x6
	ds	1
??_ledCtr:	; 1 bytes @ 0x7
??_main:	; 1 bytes @ 0x7
??___lwmod:	; 1 bytes @ 0x7
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_chrgCtr:	; 1 bytes @ 0x0
??_ADC_Sample:	; 1 bytes @ 0x0
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x0
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x0
	ds	1
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x1
	ds	1
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x2
	ds	2
	global	ADC_Sample@j
ADC_Sample@j:	; 1 bytes @ 0x4
	ds	1
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x5
	ds	1
	global	ADC_Sample@i
ADC_Sample@i:	; 1 bytes @ 0x6
	ds	1
	global	ADC_Sample@adsum
ADC_Sample@adsum:	; 4 bytes @ 0x7
	ds	4
	global	ADC_Sample@admin
ADC_Sample@admin:	; 2 bytes @ 0xB
	ds	2
	global	ADC_Sample@admax
ADC_Sample@admax:	; 2 bytes @ 0xD
	ds	2
	global	ADC_Sample@ad_temp
ADC_Sample@ad_temp:	; 2 bytes @ 0xF
	ds	3
	global	checkOutA@maxAout
checkOutA@maxAout:	; 1 bytes @ 0x12
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         59
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      11
;!    BANK0            80     19      75
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _ledCtr->___lbdiv
;!    _ledCtr->___lwmod
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
;!    _ledCtr->___lbmod
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
;! (0) _main                                                 0     0      0    3569
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
;! (1) _ledCtr                                               0     0      0     980
;!                            ___lbdiv
;!                            ___lbmod
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     362
;!                                              3 COMMON     4     0      4
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) ___lbmod                                              5     4      1     297
;!                                              3 COMMON     2     1      1
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _keyCtr                                               1     1      0      67
;!                                              4 COMMON     1     1      0
;!                            _keyRead
;! ---------------------------------------------------------------------------------
;! (2) _keyRead                                              1     1      0      22
;!                                              3 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              2     2      0     321
;!                                              0 BANK0      2     2      0
;!                            ___lbdiv
;!                        _chrgPwmInit
;!                        _chrgPwmStop
;! ---------------------------------------------------------------------------------
;! (2) _chrgPwmStop                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _chrgPwmInit                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___lbdiv                                              4     3      1     321
;!                                              3 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _checkOutA                                            4     4      0    1159
;!                                              4 COMMON     2     2      0
;!                                             17 BANK0      2     2      0
;!                         _ADC_Sample
;! ---------------------------------------------------------------------------------
;! (1) _checkBatAD                                           2     2      0    1042
;!                                              4 COMMON     2     2      0
;!                         _ADC_Sample
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Sample                                          18    17      1    1042
;!                                              3 COMMON     1     0      1
;!                                              0 BANK0     17    17      0
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
;! (3) _Isr_Timer                                            3     3      0       0
;!                                              0 COMMON     3     3      0
;!                            _ledShow
;! ---------------------------------------------------------------------------------
;! (4) _ledShow                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
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
;!     _chrgPwmInit
;!     _chrgPwmStop
;!   _keyCtr
;!     _keyRead
;!   _ledCtr
;!     ___lbdiv
;!     ___lbmod
;!     ___lwmod
;!   _workCtr
;!     _pwmInit
;!     _pwmStop
;!
;! _Isr_Timer (ROOT)
;!   _ledShow
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      7       B       1       78.6%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50     13      4B       4       93.8%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      56       7        0.0%
;!DATA                 0      0      56       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 125 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
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
;; Hardware stack levels required when called:    4
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
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
	line	125
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
	line	125
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	127
	
l3539:	
;main.c: 127: Init_System();
	fcall	_Init_System
	line	128
;main.c: 128: AD_Init();
	fcall	_AD_Init
	line	129
	
l3541:	
;main.c: 129: firstTime = 100;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_firstTime)
	line	130
;main.c: 130: while (1)
	
l663:	
	line	132
# 132 "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
clrwdt ;# 
psect	maintext
	line	133
	
l3543:	
;main.c: 133: if(intCount10 > 10)
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_intCount10),w
	skipc
	goto	u4181
	goto	u4180
u4181:
	goto	l3549
u4180:
	line	135
	
l3545:	
;main.c: 134: {
;main.c: 135: intCount10 = 0;
	clrf	(_intCount10)
	line	136
	
l3547:	
;main.c: 136: checkOutA();
	fcall	_checkOutA
	line	138
	
l3549:	
;main.c: 137: }
;main.c: 138: if(!IntFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u4191
	goto	u4190
u4191:
	goto	l3553
u4190:
	goto	l663
	line	140
	
l3553:	
;main.c: 140: IntFlag = 0;
	clrf	(_IntFlag)
	line	141
	
l3555:	
;main.c: 141: chrgCtr();
	fcall	_chrgCtr
	line	142
	
l3557:	
;main.c: 142: checkBatAD();
	fcall	_checkBatAD
	line	143
	
l3559:	
;main.c: 143: if(chrgFlag == 0 && lowBatFlag == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u4201
	goto	u4200
u4201:
	goto	l667
u4200:
	
l3561:	
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u4211
	goto	u4210
u4211:
	goto	l667
u4210:
	line	145
	
l3563:	
;main.c: 144: {
;main.c: 145: keyCtr();
	fcall	_keyCtr
	line	146
	
l667:	
	line	147
;main.c: 146: }
;main.c: 147: workCtr();
	fcall	_workCtr
	line	148
;main.c: 148: ledCtr();
	fcall	_ledCtr
	line	149
	
l3565:	
;main.c: 149: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && showBatTime == 0 && overWorkTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u4221
	goto	u4220
u4221:
	goto	l3583
u4220:
	
l3567:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u4231
	goto	u4230
u4231:
	goto	l3583
u4230:
	
l3569:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u4241
	goto	u4240
u4241:
	goto	l3583
u4240:
	
l3571:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u4251
	goto	u4250
u4251:
	goto	l3583
u4250:
	
l3573:	
	movf	((_showBatTime)),w
	btfss	status,2
	goto	u4261
	goto	u4260
u4261:
	goto	l3583
u4260:
	
l3575:	
	movf	((_overWorkTime)),w
iorwf	((_overWorkTime+1)),w
	btfss	status,2
	goto	u4271
	goto	u4270
u4271:
	goto	l3583
u4270:
	line	151
	
l3577:	
;main.c: 150: {
;main.c: 151: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u4281
	goto	u4280
u4281:
	goto	l663
u4280:
	line	153
	
l3579:	
;main.c: 152: {
;main.c: 153: sleepTime = 0;
	clrf	(_sleepTime)
	line	154
	
l3581:	
;main.c: 154: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l663
	line	159
	
l3583:	
;main.c: 157: else
;main.c: 158: {
;main.c: 159: sleepTime = 0;
	clrf	(_sleepTime)
	goto	l663
	global	start
	ljmp	start
	opt stack 0
	line	162
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 551 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_pwmInit
;;		_pwmStop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	551
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
	line	551
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	554
	
l2811:	
;main.c: 554: if(startTime > 0)
	movf	((_startTime)),w
	btfsc	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l2815
u2750:
	line	556
	
l2813:	
;main.c: 555: {
;main.c: 556: startTime--;
	decf	(_startTime),f
	line	558
	
l2815:	
;main.c: 557: }
;main.c: 558: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l2841
u2760:
	line	560
	
l2817:	
;main.c: 559: {
;main.c: 560: if((PWMCON0 & 0x02) == 0)
	btfsc	(21),(1)&7	;volatile
	goto	u2771
	goto	u2770
u2771:
	goto	l2821
u2770:
	line	562
	
l2819:	
;main.c: 561: {
;main.c: 562: pwmInit();
	fcall	_pwmInit
	line	564
	
l2821:	
;main.c: 563: }
;main.c: 564: maxDuty = 43 + (workStep*2);
	clrc
	rlf	(_workStep),w
	addlw	02Bh
	movwf	(_maxDuty)
	line	565
	
l2823:	
;main.c: 565: if(overCount >= 5)
	movlw	low(05h)
	subwf	(_overCount),w
	skipc
	goto	u2781
	goto	u2780
u2781:
	goto	l2833
u2780:
	line	567
	
l2825:	
;main.c: 566: {
;main.c: 567: if(++count5s > 500)
	incf	(_count5s),f
	skipnz
	incf	(_count5s+1),f
	movlw	01h
	subwf	((_count5s+1)),w
	movlw	0F5h
	skipnz
	subwf	((_count5s)),w
	skipc
	goto	u2791
	goto	u2790
u2791:
	goto	l2835
u2790:
	line	569
	
l2827:	
;main.c: 568: {
;main.c: 569: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	570
	
l2829:	
;main.c: 570: overWorkTime = 1000;
	movlw	0E8h
	movwf	(_overWorkTime)
	movlw	03h
	movwf	((_overWorkTime))+1
	line	571
	
l2831:	
;main.c: 571: preLedStep = workStep;
	movf	(_workStep),w
	movwf	(_preLedStep)
	line	572
;main.c: 572: workStep = 0;
	clrf	(_workStep)
	goto	l2835
	line	578
	
l2833:	
;main.c: 576: else
;main.c: 577: {
;main.c: 578: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	580
	
l2835:	
;main.c: 579: }
;main.c: 580: if(count1s == 0 && ++count900s >= 900)
	movf	((_count1s)),w
	btfss	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l797
u2800:
	
l2837:	
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	movlw	03h
	subwf	((_count900s+1)),w
	movlw	084h
	skipnz
	subwf	((_count900s)),w
	skipc
	goto	u2811
	goto	u2810
u2811:
	goto	l797
u2810:
	line	582
	
l2839:	
;main.c: 581: {
;main.c: 582: workStep = 0;
	clrf	(_workStep)
	goto	l797
	line	587
	
l2841:	
;main.c: 585: else
;main.c: 586: {
;main.c: 587: pwmStop();
	fcall	_pwmStop
	line	588
	
l2843:	
;main.c: 588: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	590
	
l797:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 948 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	948
global __ptext2
__ptext2:	;psect for function _pwmStop
psect	text2
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
	line	948
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: []
	line	950
	
l2243:	
;main.c: 950: PWMCON0 &= 0XFD;
	bcf	(21)+(1/8),(1)&7	;volatile
	line	951
;main.c: 951: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	952
	
l876:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 933 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	933
global __ptext3
__ptext3:	;psect for function _pwmInit
psect	text3
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
	line	933
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2]
	line	935
	
l2233:	
;main.c: 935: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	936
;main.c: 936: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	937
	
l2235:	
;main.c: 937: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	940
	
l2237:	
;main.c: 940: PWMD01H = 0;
	clrf	(30)	;volatile
	line	941
;main.c: 941: PWMD1L = 50;
	movlw	low(032h)
	movwf	(26)	;volatile
	line	942
	
l2239:	
;main.c: 942: PWM01DT = 0X00;
	clrf	(31)	;volatile
	line	944
	
l2241:	
;main.c: 944: PWMCON0 = 0X62;
	movlw	low(062h)
	movwf	(21)	;volatile
	line	945
;main.c: 945: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	946
	
l873:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_ledCtr

;; *************** function _ledCtr *****************
;; Defined at:
;;		line 232 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lbdiv
;;		___lbmod
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	232
global __ptext4
__ptext4:	;psect for function _ledCtr
psect	text4
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
	line	232
	global	__size_of_ledCtr
	__size_of_ledCtr	equ	__end_of_ledCtr-_ledCtr
	
_ledCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _ledCtr: [wreg+status,2+status,0+pclath+cstack]
	line	234
	
l3487:	
;main.c: 234: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u4061
	goto	u4060
u4061:
	goto	l3497
u4060:
	line	236
	
l3489:	
;main.c: 235: {
;main.c: 236: firstTime--;
	decf	(_firstTime),f
	line	237
	
l3491:	
;main.c: 237: ledStep = 6;
	movlw	low(06h)
	movwf	(_ledStep)
	line	238
	
l3493:	
;main.c: 238: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u4071
	goto	u4070
u4071:
	goto	l716
u4070:
	line	240
	
l3495:	
;main.c: 239: {
;main.c: 240: prePwStep = pwStep;
	movf	(_pwStep),w
	movwf	(_prePwStep)
	goto	l716
	line	243
	
l3497:	
;main.c: 243: else if(overWorkTime > 0)
	movf	((_overWorkTime)),w
iorwf	((_overWorkTime+1)),w
	btfsc	status,2
	goto	u4081
	goto	u4080
u4081:
	goto	l3507
u4080:
	line	245
	
l3499:	
;main.c: 244: {
;main.c: 245: overWorkTime--;
	movlw	01h
	subwf	(_overWorkTime),f
	movlw	0
	skipc
	decf	(_overWorkTime+1),f
	subwf	(_overWorkTime+1),f
	line	246
	
l3501:	
;main.c: 246: if(overWorkTime % 40 < 20)
	movlw	028h
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(_overWorkTime+1),w
	movwf	(___lwmod@dividend+1)
	movf	(_overWorkTime),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movlw	0
	subwf	(1+(?___lwmod)),w
	movlw	014h
	skipnz
	subwf	(0+(?___lwmod)),w
	skipnc
	goto	u4091
	goto	u4090
u4091:
	goto	l3505
u4090:
	line	248
	
l3503:	
;main.c: 247: {
;main.c: 248: ledStep = preLedStep;
	movf	(_preLedStep),w
	movwf	(_ledStep)
	line	249
;main.c: 249: }
	goto	l716
	line	252
	
l3505:	
;main.c: 250: else
;main.c: 251: {
;main.c: 252: ledStep = 0;
	clrf	(_ledStep)
	goto	l716
	line	255
	
l3507:	
;main.c: 255: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u4101
	goto	u4100
u4101:
	goto	l3525
u4100:
	line	257
	
l3509:	
;main.c: 256: {
;main.c: 257: showBatTime--;
	decf	(_showBatTime),f
	line	258
	
l3511:	
;main.c: 258: if(prePwStep >= 14)
	movlw	low(0Eh)
	subwf	(_prePwStep),w
	skipc
	goto	u4111
	goto	u4110
u4111:
	goto	l3515
u4110:
	line	260
	
l3513:	
;main.c: 259: {
;main.c: 260: ledStep = prePwStep/14;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	movwf	(_ledStep)
	line	261
;main.c: 261: }
	goto	l716
	line	262
	
l3515:	
;main.c: 262: else if(prePwStep > 5)
	movlw	low(06h)
	subwf	(_prePwStep),w
	skipc
	goto	u4121
	goto	u4120
u4121:
	goto	l3519
u4120:
	line	264
	
l3517:	
;main.c: 263: {
;main.c: 264: ledStep = 1;
	clrf	(_ledStep)
	incf	(_ledStep),f
	line	265
;main.c: 265: }
	goto	l716
	line	268
	
l3519:	
;main.c: 266: else
;main.c: 267: {
;main.c: 268: if(count1s < 50)
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u4131
	goto	u4130
u4131:
	goto	l3505
u4130:
	goto	l3517
	line	276
	
l704:	
	line	277
;main.c: 275: }
;main.c: 276: }
;main.c: 277: }
	goto	l716
	line	278
	
l3525:	
;main.c: 278: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u4141
	goto	u4140
u4141:
	goto	l3529
u4140:
	line	280
	
l3527:	
;main.c: 279: {
;main.c: 280: ledStep = workStep;
	movf	(_workStep),w
	movwf	(_ledStep)
	line	281
;main.c: 281: }
	goto	l716
	line	282
	
l3529:	
;main.c: 282: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u4151
	goto	u4150
u4151:
	goto	l3505
u4150:
	line	284
	
l3531:	
;main.c: 283: {
;main.c: 284: if(count1s % 50 == 0)
	movlw	low(032h)
	movwf	(___lbmod@divisor)
	movf	(_count1s),w
	fcall	___lbmod
	xorlw	0
	skipz
	goto	u4161
	goto	u4160
u4161:
	goto	l716
u4160:
	line	286
	
l3533:	
;main.c: 285: {
;main.c: 286: if(++ledStep > 6)
	movlw	low(07h)
	incf	(_ledStep),f
	subwf	((_ledStep)),w
	skipc
	goto	u4171
	goto	u4170
u4171:
	goto	l704
u4170:
	line	288
	
l3535:	
;main.c: 287: {
;main.c: 288: ledStep = lockLedStep;
	movf	(_lockLedStep),w
	movwf	(_ledStep)
	line	296
	
l716:	
	return
	opt stack 0
GLOBAL	__end_of_ledCtr
	__end_of_ledCtr:
	signat	_ledCtr,89
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    3[COMMON] unsigned int 
;;  dividend        2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         0       1       0
;;      Temps:          0       0       0
;;      Totals:         4       1       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ledCtr
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
	line	6
global __ptext5
__ptext5:	;psect for function ___lwmod
psect	text5
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l3125:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l3141
u3290:
	line	14
	
l3127:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l3131
	line	16
	
l3129:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l3131:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l3129
u3300:
	line	20
	
l3133:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3315
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3315:
	skipc
	goto	u3311
	goto	u3310
u3311:
	goto	l3137
u3310:
	line	21
	
l3135:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l3137:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l3139:	
	decfsz	(___lwmod@counter),f
	goto	u3321
	goto	u3320
u3321:
	goto	l3133
u3320:
	line	25
	
l3141:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l1254:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lbmod

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 4 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    0[BANK0 ] unsigned char 
;;  rem             1    2[BANK0 ] unsigned char 
;;  counter         1    1[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0
;;      Temps:          1       0       0
;;      Totals:         2       3       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ledCtr
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
	line	4
global __ptext6
__ptext6:	;psect for function ___lbmod
psect	text6
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
	line	4
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
;incstack = 0
	opt	stack 4
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	movwf	(___lbmod@dividend)
	line	9
	
l3107:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l3109:	
	clrf	(___lbmod@rem)
	line	12
	
l3111:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u3265:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u3265
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l3113:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l3115:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l3119
u3270:
	line	15
	
l3117:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l3119:	
	decfsz	(___lbmod@counter),f
	goto	u3281
	goto	u3280
u3281:
	goto	l3111
u3280:
	line	17
	
l3121:	
	movf	(___lbmod@rem),w
	line	18
	
l1176:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 509 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  kclick          1    4[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_keyRead
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
	line	509
global __ptext7
__ptext7:	;psect for function _keyCtr
psect	text7
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
	line	509
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	511
	
l2777:	
;main.c: 511: char kclick = keyRead(0x04 & (~PORTB));
	comf	(6),w	;volatile
	andlw	04h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	512
	
l2779:	
;main.c: 512: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l2801
u2680:
	line	514
	
l2781:	
;main.c: 513: {
;main.c: 514: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l2787
u2690:
	line	516
	
l2783:	
;main.c: 515: {
;main.c: 516: if(++workStep > 6)
	movlw	low(07h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u2701
	goto	u2700
u2701:
	goto	l786
u2700:
	line	518
	
l2785:	
;main.c: 517: {
;main.c: 518: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l786
	line	521
	
l2787:	
;main.c: 521: else if(overWorkTime > 0)
	movf	((_overWorkTime)),w
iorwf	((_overWorkTime+1)),w
	btfsc	status,2
	goto	u2711
	goto	u2710
u2711:
	goto	l2793
u2710:
	line	523
	
l2789:	
;main.c: 522: {
;main.c: 523: overWorkTime = 0;
	clrf	(_overWorkTime)
	clrf	(_overWorkTime+1)
	line	524
	
l2791:	
;main.c: 524: workStep = preLedStep;
	movf	(_preLedStep),w
	movwf	(_workStep)
	line	525
;main.c: 525: }
	goto	l786
	line	526
	
l2793:	
;main.c: 526: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2721
	goto	u2720
u2721:
	goto	l2797
u2720:
	line	528
	
l2795:	
;main.c: 527: {
;main.c: 528: showBatTime = 0;
	clrf	(_showBatTime)
	line	529
;main.c: 529: }
	goto	l786
	line	532
	
l2797:	
;main.c: 530: else
;main.c: 531: {
;main.c: 532: showBatTime = 200;
	movlw	low(0C8h)
	movwf	(_showBatTime)
	line	533
	
l2799:	
;main.c: 533: count1s = 0;
	clrf	(_count1s)
	goto	l786
	line	536
	
l2801:	
;main.c: 536: else if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l786
u2730:
	line	538
	
l2803:	
;main.c: 537: {
;main.c: 538: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l784
u2740:
	line	540
	
l2805:	
;main.c: 539: {
;main.c: 540: workStep = 0;
	clrf	(_workStep)
	line	541
;main.c: 541: }
	goto	l786
	line	542
	
l784:	
	line	544
;main.c: 542: else
;main.c: 543: {
;main.c: 544: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	545
	
l2807:	
;main.c: 545: startTime = 30;
	movlw	low(01Eh)
	movwf	(_startTime)
	goto	l2795
	line	549
	
l786:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 476 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
;; Parameters:    Size  Location     Type
;;  keyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyStatus       1    3[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	476
global __ptext8
__ptext8:	;psect for function _keyRead
psect	text8
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
	line	476
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	478
	
l2193:	
;main.c: 478: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1561
	goto	u1560
u1561:
	goto	l2209
u1560:
	line	480
	
l2195:	
;main.c: 479: {
;main.c: 480: keyCount++;
	incf	(_keyCount),f
	line	481
	
l2197:	
;main.c: 481: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1571
	goto	u1570
u1571:
	goto	l2213
u1570:
	line	483
	
l2199:	
;main.c: 482: {
;main.c: 483: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	line	484
	
l2201:	
;main.c: 484: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1581
	goto	u1580
u1581:
	goto	l2213
u1580:
	line	486
	
l2203:	
;main.c: 485: {
;main.c: 486: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	487
	
l2205:	
;main.c: 487: return 2;
	movlw	low(02h)
	goto	l767
	line	493
	
l2209:	
;main.c: 491: else
;main.c: 492: {
;main.c: 493: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1591
	goto	u1590
u1591:
	goto	l2219
u1590:
	line	495
	
l2211:	
;main.c: 494: {
;main.c: 495: keyCount = 0;
	clrf	(_keyCount)
	line	496
;main.c: 496: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	497
	
l2213:	
;main.c: 497: return 0;
	movlw	low(0)
	goto	l767
	line	499
	
l2219:	
;main.c: 499: else if(keyCount >= 6)
	movlw	low(06h)
	subwf	(_keyCount),w
	skipc
	goto	u1601
	goto	u1600
u1601:
	goto	l2227
u1600:
	line	501
	
l2221:	
;main.c: 500: {
;main.c: 501: keyCount = 0;
	clrf	(_keyCount)
	line	502
	
l2223:	
;main.c: 502: return 1;
	movlw	low(01h)
	goto	l767
	line	504
	
l2227:	
;main.c: 503: }
;main.c: 504: keyCount = 0;
	clrf	(_keyCount)
	goto	l2213
	line	507
	
l767:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 300 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
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
;;      Temps:          0       2       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lbdiv
;;		_chrgPwmInit
;;		_chrgPwmStop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	300
global __ptext9
__ptext9:	;psect for function _chrgCtr
psect	text9
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
	line	300
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	302
	
l3249:	
;main.c: 302: if(PORTA & 0x02)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(134)^080h,(1)&7	;volatile
	goto	u3571
	goto	u3570
u3571:
	goto	l3397
u3570:
	line	304
	
l3251:	
;main.c: 303: {
;main.c: 304: if(chrgFlag == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3581
	goto	u3580
u3581:
	goto	l3259
u3580:
	line	306
	
l3253:	
;main.c: 305: {
;main.c: 306: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	307
	
l3255:	
;main.c: 307: ledStep = 0;
	clrf	(_ledStep)
	line	308
;main.c: 308: chrgMaxDuty = 0;
	clrf	(_chrgMaxDuty)
	line	309
	
l3257:	
;main.c: 309: chrgPwmStop();
	fcall	_chrgPwmStop
	line	311
	
l3259:	
;main.c: 310: }
;main.c: 311: workStep = 0;
	clrf	(_workStep)
	line	312
	
l3261:	
;main.c: 312: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	313
	
l3263:	
;main.c: 313: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u3591
	goto	u3590
u3591:
	goto	l3271
u3590:
	line	315
	
l3265:	
;main.c: 314: {
;main.c: 315: if(++count50s > 2000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	07h
	subwf	((_count50s+1)),w
	movlw	0D1h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u3601
	goto	u3600
u3601:
	goto	l3273
u3600:
	line	317
	
l3267:	
;main.c: 316: {
;main.c: 317: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	318
	
l3269:	
;main.c: 318: prePwStep++;
	incf	(_prePwStep),f
	goto	l3273
	line	323
	
l3271:	
;main.c: 321: else
;main.c: 322: {
;main.c: 323: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	325
	
l3273:	
;main.c: 324: }
;main.c: 325: if(protectFlag)
	movf	((_protectFlag)),w
	btfsc	status,2
	goto	u3611
	goto	u3610
u3611:
	goto	l3297
u3610:
	line	327
	
l3275:	
;main.c: 326: {
;main.c: 327: chrgPwmStop();
	fcall	_chrgPwmStop
	line	328
	
l3277:	
;main.c: 328: ledStep = 6;
	movlw	low(06h)
	movwf	(_ledStep)
	line	329
	
l3279:	
;main.c: 329: if(prePwStep < 99 && protectFlag == 1)
	movlw	low(063h)
	subwf	(_prePwStep),w
	skipnc
	goto	u3621
	goto	u3620
u3621:
	goto	l3293
u3620:
	
l3281:	
		decf	((_protectFlag)),w
	btfss	status,2
	goto	u3631
	goto	u3630
u3631:
	goto	l3293
u3630:
	line	331
	
l3283:	
;main.c: 330: {
;main.c: 331: if(++reChrgCount > 250)
	movlw	low(0FBh)
	incf	(_reChrgCount),f
	subwf	((_reChrgCount)),w
	skipc
	goto	u3641
	goto	u3640
u3641:
	goto	l730
u3640:
	line	333
	
l3285:	
;main.c: 332: {
;main.c: 333: reChrgCount = 0;
	clrf	(_reChrgCount)
	line	334
;main.c: 334: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	335
;main.c: 335: protectFlag = 0;
	clrf	(_protectFlag)
	line	336
	
l3287:	
;main.c: 336: if(prePwStep > 14)
	movlw	low(0Fh)
	subwf	(_prePwStep),w
	skipc
	goto	u3651
	goto	u3650
u3651:
	goto	l3291
u3650:
	line	338
	
l3289:	
;main.c: 337: {
;main.c: 338: lockLedStep = (prePwStep/14) - 1;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	0FFh
	movwf	(_lockLedStep)
	line	339
;main.c: 339: }
	goto	l730
	line	342
	
l3291:	
;main.c: 340: else
;main.c: 341: {
;main.c: 342: lockLedStep = 0;
	clrf	(_lockLedStep)
	goto	l730
	line	348
	
l3293:	
;main.c: 346: else
;main.c: 347: {
;main.c: 348: reChrgCount = 0;
	clrf	(_reChrgCount)
	goto	l730
	line	352
	
l3297:	
;main.c: 351: }
;main.c: 352: if(batADValue < 1200)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	0B0h
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3661
	goto	u3660
u3661:
	goto	l3303
u3660:
	line	354
	
l3299:	
;main.c: 353: {
;main.c: 354: chrgMode = 0;
	clrf	(_chrgMode)
	line	355
	
l3301:	
;main.c: 355: chrgMaxAD = 10;
	movlw	low(0Ah)
	movwf	(_chrgMaxAD)
	line	356
;main.c: 356: }
	goto	l3335
	line	357
	
l3303:	
;main.c: 357: else if(batADValue < 1300)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	014h
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3671
	goto	u3670
u3671:
	goto	l3309
u3670:
	line	359
	
l3305:	
;main.c: 358: {
;main.c: 359: chrgMode = 0;
	clrf	(_chrgMode)
	line	360
	
l3307:	
;main.c: 360: chrgMaxAD = 15;
	movlw	low(0Fh)
	movwf	(_chrgMaxAD)
	line	361
;main.c: 361: }
	goto	l3335
	line	362
	
l3309:	
;main.c: 362: else if(batADValue < 1400)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	078h
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3681
	goto	u3680
u3681:
	goto	l3317
u3680:
	line	364
	
l3311:	
;main.c: 363: {
;main.c: 364: chrgMode = 1;
	clrf	(_chrgMode)
	incf	(_chrgMode),f
	line	365
	
l3313:	
;main.c: 365: chrgMaxAD = 23;
	movlw	low(017h)
	movwf	(_chrgMaxAD)
	line	366
	
l3315:	
;main.c: 366: lockCount = 0;
	clrf	(_lockCount)
	line	367
;main.c: 367: }
	goto	l3335
	line	368
	
l3317:	
;main.c: 368: else if(batADValue < 1530)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	0FAh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3691
	goto	u3690
u3691:
	goto	l3325
u3690:
	line	370
	
l3319:	
;main.c: 369: {
;main.c: 370: chrgMode = 1;
	clrf	(_chrgMode)
	incf	(_chrgMode),f
	line	371
	
l3321:	
;main.c: 371: chrgMaxAD = 24;
	movlw	low(018h)
	movwf	(_chrgMaxAD)
	goto	l3315
	line	374
	
l3325:	
;main.c: 374: else if(count1s == 0)
	movf	((_count1s)),w
	btfss	status,2
	goto	u3701
	goto	u3700
u3701:
	goto	l734
u3700:
	line	376
	
l3327:	
;main.c: 375: {
;main.c: 376: if(++lockCount > 200)
	movlw	low(0C9h)
	incf	(_lockCount),f
	subwf	((_lockCount)),w
	skipc
	goto	u3711
	goto	u3710
u3711:
	goto	l3333
u3710:
	line	378
	
l3329:	
;main.c: 377: {
;main.c: 378: lockCount = 0;
	clrf	(_lockCount)
	line	379
	
l3331:	
;main.c: 379: chrgMode = 2;
	movlw	low(02h)
	movwf	(_chrgMode)
	line	382
	
l3333:	
;main.c: 380: }
;main.c: 382: chrgMaxAD = 22;
	movlw	low(016h)
	movwf	(_chrgMaxAD)
	goto	l3335
	line	384
	
l734:	
	
l3335:	
;main.c: 383: }
;main.c: 384: if(chrgMode == 2 && outADValue < 8)
		movlw	2
	xorwf	((_chrgMode)),w
	btfss	status,2
	goto	u3721
	goto	u3720
u3721:
	goto	l3345
u3720:
	
l3337:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	08h
	skipnz
	subwf	(_outADValue),w
	skipnc
	goto	u3731
	goto	u3730
u3731:
	goto	l3345
u3730:
	line	386
	
l3339:	
;main.c: 385: {
;main.c: 386: if(++fullCount >= 200)
	incf	(_fullCount),f
	skipnz
	incf	(_fullCount+1),f
	movlw	0
	subwf	((_fullCount+1)),w
	movlw	0C8h
	skipnz
	subwf	((_fullCount)),w
	skipc
	goto	u3741
	goto	u3740
u3741:
	goto	l3347
u3740:
	line	388
	
l3341:	
;main.c: 387: {
;main.c: 388: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	389
	
l3343:	
;main.c: 389: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l3347
	line	394
	
l3345:	
;main.c: 392: else
;main.c: 393: {
;main.c: 394: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	396
	
l3347:	
;main.c: 395: }
;main.c: 396: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u3751
	goto	u3750
u3751:
	goto	l3353
u3750:
	line	398
	
l3349:	
;main.c: 397: {
;main.c: 398: lockLedStep = 6;
	movlw	low(06h)
	movwf	(_lockLedStep)
	line	399
	
l3351:	
;main.c: 399: chrgPwmStop();
	fcall	_chrgPwmStop
	line	400
;main.c: 400: }
	goto	l730
	line	403
	
l3353:	
;main.c: 401: else
;main.c: 402: {
;main.c: 403: if(prePwStep < 15)
	movlw	low(0Fh)
	subwf	(_prePwStep),w
	skipnc
	goto	u3761
	goto	u3760
u3761:
	goto	l3357
u3760:
	line	405
	
l3355:	
;main.c: 404: {
;main.c: 405: lockLedStep = 0;
	clrf	(_lockLedStep)
	line	406
;main.c: 406: }
	goto	l3359
	line	409
	
l3357:	
;main.c: 407: else
;main.c: 408: {
;main.c: 409: lockLedStep = (prePwStep/14) - 1;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	0FFh
	movwf	(_lockLedStep)
	line	411
	
l3359:	
;main.c: 410: }
;main.c: 411: if(batADValue > 1545 || outADValue > (chrgMaxAD + 2))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	0Ah
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3771
	goto	u3770
u3771:
	goto	l3363
u3770:
	
l3361:	
	movf	(_chrgMaxAD),w
	addlw	low(02h)
	movwf	(??_chrgCtr+0)+0
	movlw	high(02h)
	skipnc
	movlw	(high(02h)+1)&0ffh
	movwf	((??_chrgCtr+0)+0)+1
	movf	(_outADValue+1),w
	subwf	1+(??_chrgCtr+0)+0,w
	skipz
	goto	u3785
	movf	(_outADValue),w
	subwf	0+(??_chrgCtr+0)+0,w
u3785:
	skipnc
	goto	u3781
	goto	u3780
u3781:
	goto	l3375
u3780:
	line	413
	
l3363:	
;main.c: 412: {
;main.c: 413: if(++subTime > chrgWaitTime)
	incf	(_subTime),f
	movf	((_subTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u3791
	goto	u3790
u3791:
	goto	l3373
u3790:
	line	415
	
l3365:	
;main.c: 414: {
;main.c: 415: if(chrgMaxDuty > 1)
	movlw	low(02h)
	subwf	(_chrgMaxDuty),w
	skipc
	goto	u3801
	goto	u3800
u3801:
	goto	l3369
u3800:
	line	417
	
l3367:	
;main.c: 416: {
;main.c: 417: chrgMaxDuty--;
	decf	(_chrgMaxDuty),f
	line	419
	
l3369:	
;main.c: 418: }
;main.c: 419: subTime = 0;
	clrf	(_subTime)
	line	420
	
l3371:	
;main.c: 420: chrgWaitTime = 50;
	movlw	low(032h)
	movwf	(_chrgWaitTime)
	line	422
	
l3373:	
;main.c: 421: }
;main.c: 422: addTime = 0;
	clrf	(_addTime)
	line	423
;main.c: 423: }
	goto	l3389
	line	424
	
l3375:	
;main.c: 424: else if(batADValue < 1545 && outADValue < (chrgMaxAD - 4))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	09h
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3811
	goto	u3810
u3811:
	goto	l3389
u3810:
	
l3377:	
	movf	(_chrgMaxAD),w
	addlw	low(0FFFCh)
	movwf	(??_chrgCtr+0)+0
	movlw	high(0FFFCh)
	skipnc
	movlw	(high(0FFFCh)+1)&0ffh
	movwf	((??_chrgCtr+0)+0)+1
	movf	1+(??_chrgCtr+0)+0,w
	subwf	(_outADValue+1),w
	skipz
	goto	u3825
	movf	0+(??_chrgCtr+0)+0,w
	subwf	(_outADValue),w
u3825:
	skipnc
	goto	u3821
	goto	u3820
u3821:
	goto	l3389
u3820:
	line	426
	
l3379:	
;main.c: 425: {
;main.c: 426: if(++addTime > chrgWaitTime)
	incf	(_addTime),f
	movf	((_addTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u3831
	goto	u3830
u3831:
	goto	l3387
u3830:
	line	428
	
l3381:	
;main.c: 427: {
;main.c: 428: addTime = 0;
	clrf	(_addTime)
	line	429
	
l3383:	
;main.c: 429: if(chrgMaxDuty < 75)
	movlw	low(04Bh)
	subwf	(_chrgMaxDuty),w
	skipnc
	goto	u3841
	goto	u3840
u3841:
	goto	l3387
u3840:
	line	431
	
l3385:	
;main.c: 430: {
;main.c: 431: chrgMaxDuty++;
	incf	(_chrgMaxDuty),f
	line	434
	
l3387:	
;main.c: 432: }
;main.c: 433: }
;main.c: 434: subTime = 0;
	clrf	(_subTime)
	line	438
	
l3389:	
;main.c: 435: }
;main.c: 438: if((PWMCON0 & 0x01) == 0)
	btfsc	(21),(0)&7	;volatile
	goto	u3851
	goto	u3850
u3851:
	goto	l3393
u3850:
	line	440
	
l3391:	
;main.c: 439: {
;main.c: 440: chrgPwmInit();
	fcall	_chrgPwmInit
	line	442
	
l3393:	
;main.c: 441: }
;main.c: 442: PWMD01H = 0X00;
	clrf	(30)	;volatile
	line	443
	
l3395:	
;main.c: 443: PWMD0L = chrgMaxDuty;
	movf	(_chrgMaxDuty),w
	movwf	(25)	;volatile
	goto	l730
	line	449
	
l3397:	
;main.c: 449: chrgFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgFlag)
	line	450
;main.c: 450: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	451
;main.c: 451: protectFlag = 0;
	clrf	(_protectFlag)
	line	452
;main.c: 452: chrgMode = 0;
	clrf	(_chrgMode)
	line	453
;main.c: 453: chrgMaxAD = 0;
	clrf	(_chrgMaxAD)
	line	454
;main.c: 454: chrgMaxDuty = 0;
	clrf	(_chrgMaxDuty)
	line	455
;main.c: 455: lockCount = 0;
	clrf	(_lockCount)
	line	456
;main.c: 456: lockLedStep = 0;
	clrf	(_lockLedStep)
	line	457
	
l3399:	
;main.c: 457: chrgWaitTime = 20;
	movlw	low(014h)
	movwf	(_chrgWaitTime)
	line	458
	
l3401:	
;main.c: 458: chrgPwmStop();
	fcall	_chrgPwmStop
	line	459
	
l3403:	
;main.c: 459: if(prePwStep > 0 && prePwStep > pwStep)
	movf	((_prePwStep)),w
	btfsc	status,2
	goto	u3861
	goto	u3860
u3861:
	goto	l3413
u3860:
	
l3405:	
	movf	(_prePwStep),w
	subwf	(_pwStep),w
	skipnc
	goto	u3871
	goto	u3870
u3871:
	goto	l3413
u3870:
	line	461
	
l3407:	
;main.c: 460: {
;main.c: 461: if(++count50s > 2000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	07h
	subwf	((_count50s+1)),w
	movlw	0D1h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u3881
	goto	u3880
u3881:
	goto	l730
u3880:
	line	463
	
l3409:	
;main.c: 462: {
;main.c: 463: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	464
	
l3411:	
;main.c: 464: prePwStep--;
	decf	(_prePwStep),f
	goto	l730
	line	469
	
l3413:	
;main.c: 467: else
;main.c: 468: {
;main.c: 469: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	472
	
l730:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_chrgPwmStop

;; *************** function _chrgPwmStop *****************
;; Defined at:
;;		line 927 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_chrgCtr
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	927
global __ptext10
__ptext10:	;psect for function _chrgPwmStop
psect	text10
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
	line	927
	global	__size_of_chrgPwmStop
	__size_of_chrgPwmStop	equ	__end_of_chrgPwmStop-_chrgPwmStop
	
_chrgPwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmStop: []
	line	929
	
l2181:	
;main.c: 929: PWMCON0 &= 0xFE;
	bcf	(21)+(0/8),(0)&7	;volatile
	line	930
;main.c: 930: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	line	931
	
l870:	
	return
	opt stack 0
GLOBAL	__end_of_chrgPwmStop
	__end_of_chrgPwmStop:
	signat	_chrgPwmStop,89
	global	_chrgPwmInit

;; *************** function _chrgPwmInit *****************
;; Defined at:
;;		line 910 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_chrgCtr
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	910
global __ptext11
__ptext11:	;psect for function _chrgPwmInit
psect	text11
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
	line	910
	global	__size_of_chrgPwmInit
	__size_of_chrgPwmInit	equ	__end_of_chrgPwmInit-_chrgPwmInit
	
_chrgPwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmInit: [wreg+status,2]
	line	912
	
l2183:	
;main.c: 912: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	914
;main.c: 914: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	915
	
l2185:	
;main.c: 915: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	919
	
l2187:	
;main.c: 919: PWMD01H = 0;
	clrf	(30)	;volatile
	line	920
;main.c: 920: PWMD0L = 1;
	movlw	low(01h)
	movwf	(25)	;volatile
	line	921
	
l2189:	
;main.c: 921: PWM01DT = 0X00;
	clrf	(31)	;volatile
	line	923
	
l2191:	
;main.c: 923: PWMCON0 = 0X01;
	movlw	low(01h)
	movwf	(21)	;volatile
	line	924
;main.c: 924: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	925
	
l867:	
	return
	opt stack 0
GLOBAL	__end_of_chrgPwmInit
	__end_of_chrgPwmInit:
	signat	_chrgPwmInit,89
	global	___lbdiv

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 4 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    4[COMMON] unsigned char 
;;  quotient        1    6[COMMON] unsigned char 
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
;;      Temps:          0       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ledCtr
;;		_chrgCtr
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
	line	4
global __ptext12
__ptext12:	;psect for function ___lbdiv
psect	text12
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
	line	4
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	movwf	(___lbdiv@dividend)
	line	9
	
l2317:	
	clrf	(___lbdiv@quotient)
	line	10
	
l2319:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1761
	goto	u1760
u1761:
	goto	l2337
u1760:
	line	11
	
l2321:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2325
	
l1165:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l2323:	
	incf	(___lbdiv@counter),f
	line	12
	
l2325:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1771
	goto	u1770
u1771:
	goto	l1165
u1770:
	line	16
	
l1167:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l2327:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1781
	goto	u1780
u1781:
	goto	l2333
u1780:
	line	19
	
l2329:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2331:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2333:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l2335:	
	decfsz	(___lbdiv@counter),f
	goto	u1791
	goto	u1790
u1791:
	goto	l1167
u1790:
	line	25
	
l2337:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1170:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_checkOutA

;; *************** function _checkOutA *****************
;; Defined at:
;;		line 592 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  maxAout         1   18[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ADC_Sample
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
	line	592
global __ptext13
__ptext13:	;psect for function _checkOutA
psect	text13
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
	line	592
	global	__size_of_checkOutA
	__size_of_checkOutA	equ	__end_of_checkOutA-_checkOutA
	
_checkOutA:	
;incstack = 0
	opt	stack 4
; Regs used in _checkOutA: [wreg+status,2+status,0+pclath+cstack]
	line	594
	
l3145:	
;main.c: 594: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3331
	goto	u3330
u3331:
	goto	l3149
u3330:
	line	596
	
l3147:	
;main.c: 595: {
;main.c: 596: test_adc = ADC_Sample(4, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(04h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	597
;main.c: 597: }
	goto	l3151
	line	600
	
l3149:	
;main.c: 598: else
;main.c: 599: {
;main.c: 600: test_adc = ADC_Sample(0, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	602
	
l3151:	
;main.c: 601: }
;main.c: 602: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l3245
u3340:
	line	604
	
l3153:	
;main.c: 603: {
;main.c: 604: if(chrgFlag && adresult > 150)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l3163
u3350:
	
l3155:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	097h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u3361
	goto	u3360
u3361:
	goto	l3163
u3360:
	line	606
	
l3157:	
;main.c: 605: {
;main.c: 606: if(++overChrgTime > 10)
	movlw	low(0Bh)
	incf	(_overChrgTime),f
	subwf	((_overChrgTime)),w
	skipc
	goto	u3371
	goto	u3370
u3371:
	goto	l3165
u3370:
	line	608
	
l3159:	
;main.c: 607: {
;main.c: 608: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	609
	
l3161:	
;main.c: 609: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l3165
	line	615
	
l3163:	
;main.c: 613: else
;main.c: 614: {
;main.c: 615: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	618
	
l3165:	
;main.c: 616: }
;main.c: 618: outADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_outADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_outADValue)
	line	620
	
l3167:	
;main.c: 620: if(workStep && (outADValue > 220))
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3381
	goto	u3380
u3381:
	goto	l3175
u3380:
	
l3169:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	0DDh
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l3175
u3390:
	line	622
	
l3171:	
;main.c: 621: {
;main.c: 622: if(++workOverOutTime > 50)
	movlw	low(033h)
	incf	(_workOverOutTime),f
	subwf	((_workOverOutTime)),w
	skipc
	goto	u3401
	goto	u3400
u3401:
	goto	l3177
u3400:
	line	624
	
l3173:	
;main.c: 623: {
;main.c: 624: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	625
;main.c: 625: workStep = 0;
	clrf	(_workStep)
	goto	l3177
	line	630
	
l3175:	
;main.c: 628: else
;main.c: 629: {
;main.c: 630: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	632
	
l3177:	
	line	633
	
l3179:	
;main.c: 633: if(workStep < 6 && outADValue > maxtempV)
	movlw	low(06h)
	subwf	(_workStep),w
	skipnc
	goto	u3411
	goto	u3410
u3411:
	goto	l3187
u3410:
	
l3181:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	029h
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3421
	goto	u3420
u3421:
	goto	l3187
u3420:
	line	635
	
l3183:	
;main.c: 634: {
;main.c: 635: if(++overCount > 5)
	movlw	low(06h)
	incf	(_overCount),f
	subwf	((_overCount)),w
	skipc
	goto	u3431
	goto	u3430
u3431:
	goto	l3241
u3430:
	line	637
	
l3185:	
;main.c: 636: {
;main.c: 637: overCount = 5;
	movlw	low(05h)
	movwf	(_overCount)
	goto	l3241
	line	640
	
l3187:	
;main.c: 640: else if(outADValue > (maxtempV+3))
	movlw	0
	subwf	(_outADValue+1),w
	movlw	02Ch
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3441
	goto	u3440
u3441:
	goto	l3193
u3440:
	line	642
	
l3189:	
;main.c: 641: {
;main.c: 642: if(++overCount > 5)
	movlw	low(06h)
	incf	(_overCount),f
	subwf	((_overCount)),w
	skipc
	goto	u3451
	goto	u3450
u3451:
	goto	l3241
u3450:
	goto	l3185
	line	649
	
l3193:	
;main.c: 647: else
;main.c: 648: {
;main.c: 649: unsigned char maxAout = 11;
	movlw	low(0Bh)
	movwf	(checkOutA@maxAout)
	line	650
	
l3195:	
;main.c: 650: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l3199
u3460:
	line	652
	
l3197:	
;main.c: 651: {
;main.c: 652: maxAout = maxAout + 5;
	movlw	low(05h)
	addwf	(checkOutA@maxAout),f
	line	653
;main.c: 653: }
	goto	l816
	line	654
	
l3199:	
;main.c: 654: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l3203
u3470:
	line	656
	
l3201:	
;main.c: 655: {
;main.c: 656: maxAout = maxAout + 6;
	movlw	low(06h)
	addwf	(checkOutA@maxAout),f
	line	657
;main.c: 657: }
	goto	l816
	line	658
	
l3203:	
;main.c: 658: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3481
	goto	u3480
u3481:
	goto	l3207
u3480:
	line	660
	
l3205:	
;main.c: 659: {
;main.c: 660: maxAout = maxAout + 7;
	movlw	low(07h)
	addwf	(checkOutA@maxAout),f
	line	661
;main.c: 661: }
	goto	l816
	line	662
	
l3207:	
;main.c: 662: else if(workStep == 4)
		movlw	4
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3491
	goto	u3490
u3491:
	goto	l3211
u3490:
	line	664
	
l3209:	
;main.c: 663: {
;main.c: 664: maxAout = maxAout + 8;
	movlw	low(08h)
	addwf	(checkOutA@maxAout),f
	line	665
;main.c: 665: }
	goto	l816
	line	666
	
l3211:	
;main.c: 666: else if(workStep == 5)
		movlw	5
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3501
	goto	u3500
u3501:
	goto	l3215
u3500:
	line	668
	
l3213:	
;main.c: 667: {
;main.c: 668: maxAout = maxAout + 9;
	movlw	low(09h)
	addwf	(checkOutA@maxAout),f
	line	669
;main.c: 669: }
	goto	l816
	line	670
	
l3215:	
;main.c: 670: else if(workStep == 6)
		movlw	6
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3511
	goto	u3510
u3511:
	goto	l820
u3510:
	line	672
	
l3217:	
;main.c: 671: {
;main.c: 672: maxAout = maxAout + 10;
	movlw	low(0Ah)
	addwf	(checkOutA@maxAout),f
	goto	l816
	line	674
	
l820:	
	
l816:	
;main.c: 673: }
;main.c: 674: if(overCount > 0)
	movf	((_overCount)),w
	btfsc	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l3221
u3520:
	line	676
	
l3219:	
;main.c: 675: {
;main.c: 676: overCount--;
	decf	(_overCount),f
	line	678
	
l3221:	
;main.c: 677: }
;main.c: 678: if(outADValue > maxAout)
	movf	(checkOutA@maxAout),w
	movwf	(??_checkOutA+0)+0
	clrf	(??_checkOutA+0)+0+1
	movf	(_outADValue+1),w
	subwf	1+(??_checkOutA+0)+0,w
	skipz
	goto	u3535
	movf	(_outADValue),w
	subwf	0+(??_checkOutA+0)+0,w
u3535:
	skipnc
	goto	u3531
	goto	u3530
u3531:
	goto	l3233
u3530:
	line	680
	
l3223:	
;main.c: 679: {
;main.c: 680: if(++addPowerCount > 3)
	movlw	low(04h)
	incf	(_addPowerCount),f
	subwf	((_addPowerCount)),w
	skipc
	goto	u3541
	goto	u3540
u3541:
	goto	l3241
u3540:
	line	682
	
l3225:	
;main.c: 681: {
;main.c: 682: addPowerCount = 3;
	movlw	low(03h)
	movwf	(_addPowerCount)
	line	683
	
l3227:	
;main.c: 683: if(startTime == 0)
	movf	((_startTime)),w
	btfss	status,2
	goto	u3551
	goto	u3550
u3551:
	goto	l3231
u3550:
	line	685
	
l3229:	
;main.c: 684: {
;main.c: 685: tempDuty = 87 + (workStep*2);
	clrc
	rlf	(_workStep),w
	addlw	057h
	movwf	(_tempDuty)
	line	687
;main.c: 687: }
	goto	l3241
	line	690
	
l3231:	
;main.c: 688: else
;main.c: 689: {
;main.c: 690: tempDuty = maxDuty;
	movf	(_maxDuty),w
	movwf	(_tempDuty)
	goto	l3241
	line	697
	
l3233:	
;main.c: 695: else
;main.c: 696: {
;main.c: 697: addPowerCount = 0;
	clrf	(_addPowerCount)
	line	698
	
l3235:	
;main.c: 698: if(tempDuty > maxDuty)
	movf	(_tempDuty),w
	subwf	(_maxDuty),w
	skipnc
	goto	u3561
	goto	u3560
u3561:
	goto	l3231
u3560:
	line	700
	
l3237:	
;main.c: 699: {
;main.c: 700: tempDuty--;
	decf	(_tempDuty),f
	line	710
;main.c: 701: }
	
l3241:	
;main.c: 705: }
;main.c: 707: }
;main.c: 709: }
;main.c: 710: PWMD01H = 0X00;
	clrf	(30)	;volatile
	line	711
	
l3243:	
;main.c: 711: PWMD1L = tempDuty;
	movf	(_tempDuty),w
	movwf	(26)	;volatile
	line	712
;main.c: 712: }
	goto	l835
	line	715
	
l3245:	
;main.c: 713: else
;main.c: 714: {
;main.c: 715: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	716
;main.c: 716: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	717
	
l3247:	
;main.c: 717: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkOutA+0)+0),f
	u4297:
decfsz	(??_checkOutA+0)+0,f
	goto	u4297
opt asmopt_pop

	line	719
	
l835:	
	return
	opt stack 0
GLOBAL	__end_of_checkOutA
	__end_of_checkOutA:
	signat	_checkOutA,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 721 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ADC_Sample
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	721
global __ptext14
__ptext14:	;psect for function _checkBatAD
psect	text14
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
	line	721
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	723
	
l3415:	
;main.c: 723: test_adc = ADC_Sample(2, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(02h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	724
	
l3417:	
;main.c: 724: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3891
	goto	u3890
u3891:
	goto	l3457
u3890:
	line	726
	
l3419:	
;main.c: 725: {
;main.c: 726: batADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_batADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_batADValue)
	line	727
;main.c: 727: if(batADValue < 558)
	movlw	02h
	subwf	(_batADValue+1),w
	movlw	02Eh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3901
	goto	u3900
u3901:
	goto	l839
u3900:
	line	729
	
l3421:	
;main.c: 728: {
;main.c: 729: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	line	730
	
l839:	
	line	732
;main.c: 730: }
;main.c: 732: if(batADValue < 1117)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Dh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3911
	goto	u3910
u3911:
	goto	l3439
u3910:
	line	734
	
l3423:	
;main.c: 733: {
;main.c: 734: pwStep = 0;
	clrf	(_pwStep)
	line	735
	
l3425:	
;main.c: 735: if(++count8s > 800)
	incf	(_count8s),f
	skipnz
	incf	(_count8s+1),f
	movlw	03h
	subwf	((_count8s+1)),w
	movlw	021h
	skipnz
	subwf	((_count8s)),w
	skipc
	goto	u3921
	goto	u3920
u3921:
	goto	l3451
u3920:
	line	737
	
l3427:	
;main.c: 736: {
;main.c: 737: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	738
	
l3429:	
;main.c: 738: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	739
	
l3431:	
;main.c: 739: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3931
	goto	u3930
u3931:
	goto	l3435
u3930:
	line	741
	
l3433:	
;main.c: 740: {
;main.c: 741: overWorkTime = 120;
	movlw	078h
	movwf	(_overWorkTime)
	clrf	(_overWorkTime+1)
	line	742
;main.c: 742: preLedStep = workStep;
	movf	(_workStep),w
	movwf	(_preLedStep)
	line	744
	
l3435:	
;main.c: 743: }
;main.c: 744: prePwStep = 0;
	clrf	(_prePwStep)
	line	745
	
l3437:	
;main.c: 745: workStep = 0;
	clrf	(_workStep)
	goto	l3451
	line	750
	
l3439:	
;main.c: 748: else
;main.c: 749: {
;main.c: 750: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	751
	
l3441:	
;main.c: 751: if(batADValue >= 1340)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	03Ch
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3941
	goto	u3940
u3941:
	goto	l3445
u3940:
	line	753
	
l3443:	
;main.c: 752: {
;main.c: 753: pwStep = ((batADValue - 1340) /2) + 13;
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
	line	754
;main.c: 754: }
	goto	l3447
	line	757
	
l3445:	
;main.c: 755: else
;main.c: 756: {
;main.c: 757: pwStep = (batADValue - 1117) / 16;
	movf	(_batADValue),w
	addlw	low(0FBA3h)
	movwf	(??_checkBatAD+0)+0
	movf	(_batADValue+1),w
	skipnc
	addlw	1
	addlw	high(0FBA3h)
	movwf	1+(??_checkBatAD+0)+0
	movlw	04h
u3955:
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	addlw	-1
	skipz
	goto	u3955
	movf	0+(??_checkBatAD+0)+0,w
	movwf	(_pwStep)
	line	759
	
l3447:	
;main.c: 758: }
;main.c: 759: if(pwStep > 99)
	movlw	low(064h)
	subwf	(_pwStep),w
	skipc
	goto	u3961
	goto	u3960
u3961:
	goto	l3451
u3960:
	line	761
	
l3449:	
;main.c: 760: {
;main.c: 761: pwStep = 99;
	movlw	low(063h)
	movwf	(_pwStep)
	line	764
	
l3451:	
;main.c: 762: }
;main.c: 763: }
;main.c: 764: if(chrgFlag && batADValue > 1861)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3971
	goto	u3970
u3971:
	goto	l3461
u3970:
	
l3453:	
	movlw	07h
	subwf	(_batADValue+1),w
	movlw	046h
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3981
	goto	u3980
u3981:
	goto	l3461
u3980:
	line	766
	
l3455:	
;main.c: 765: {
;main.c: 766: protectFlag = 1;
	clrf	(_protectFlag)
	incf	(_protectFlag),f
	goto	l3461
	line	771
	
l3457:	
;main.c: 769: else
;main.c: 770: {
;main.c: 771: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	772
;main.c: 772: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	773
	
l3459:	
;main.c: 773: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u4307:
decfsz	(??_checkBatAD+0)+0,f
	goto	u4307
opt asmopt_pop

	line	775
	
l3461:	
;main.c: 774: }
;main.c: 775: test_adc = ADC_Sample(3, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(03h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	776
	
l3463:	
;main.c: 776: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3991
	goto	u3990
u3991:
	goto	l3483
u3990:
	line	778
	
l3465:	
;main.c: 777: {
;main.c: 778: if(chrgFlag && adresult > 100)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u4001
	goto	u4000
u4001:
	goto	l858
u4000:
	
l3467:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	065h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u4011
	goto	u4010
u4011:
	goto	l858
u4010:
	line	781
	
l3469:	
;main.c: 779: {
;main.c: 781: if(batADValue < 279)
	movlw	01h
	subwf	(_batADValue+1),w
	movlw	017h
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u4021
	goto	u4020
u4021:
	goto	l851
u4020:
	line	783
	
l3471:	
;main.c: 782: {
;main.c: 783: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	line	784
	
l851:	
	line	786
;main.c: 784: }
;main.c: 786: if(adresult > 800 || (batADValue - adresult) > 800)
	movlw	03h
	subwf	(_adresult+1),w	;volatile
	movlw	021h
	skipnz
	subwf	(_adresult),w	;volatile
	skipnc
	goto	u4031
	goto	u4030
u4031:
	goto	l3475
u4030:
	
l3473:	
	movf	(_adresult),w	;volatile
	subwf	(_batADValue),w
	movwf	(??_checkBatAD+0)+0
	movf	(_adresult+1),w	;volatile
	skipc
	incf	(_adresult+1),w	;volatile
	subwf	(_batADValue+1),w
	movwf	1+(??_checkBatAD+0)+0
	movlw	03h
	subwf	1+(??_checkBatAD+0)+0,w
	movlw	021h
	skipnz
	subwf	0+(??_checkBatAD+0)+0,w
	skipc
	goto	u4041
	goto	u4040
u4041:
	goto	l3481
u4040:
	line	789
	
l3475:	
;main.c: 787: {
;main.c: 789: if(++countHalfFull > 250)
	movlw	low(0FBh)
	incf	(_countHalfFull),f
	subwf	((_countHalfFull)),w
	skipc
	goto	u4051
	goto	u4050
u4051:
	goto	l850
u4050:
	line	791
	
l3477:	
;main.c: 790: {
;main.c: 791: countHalfFull = 0;
	clrf	(_countHalfFull)
	line	792
	
l3479:	
;main.c: 792: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l858
	line	797
	
l3481:	
;main.c: 795: else
;main.c: 796: {
;main.c: 797: countHalfFull = 0;
	clrf	(_countHalfFull)
	goto	l858
	line	799
	
l850:	
	line	800
;main.c: 798: }
;main.c: 799: }
;main.c: 800: }
	goto	l858
	line	803
	
l3483:	
;main.c: 801: else
;main.c: 802: {
;main.c: 803: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	804
;main.c: 804: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	805
	
l3485:	
;main.c: 805: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u4317:
decfsz	(??_checkBatAD+0)+0,f
	goto	u4317
opt asmopt_pop

	line	807
	
l858:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 1038 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;;  adldo           1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    5[BANK0 ] unsigned char 
;;  j               1    4[BANK0 ] unsigned char 
;;  adsum           4    7[BANK0 ] volatile unsigned long 
;;  ad_temp         2   15[BANK0 ] volatile unsigned int 
;;  admax           2   13[BANK0 ] volatile unsigned int 
;;  admin           2   11[BANK0 ] volatile unsigned int 
;;  i               1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         0      13       0
;;      Temps:          0       4       0
;;      Totals:         1      17       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkOutA
;;		_checkBatAD
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	1038
global __ptext15
__ptext15:	;psect for function _ADC_Sample
psect	text15
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
	line	1038
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	1040
	
l3035:	
;main.c: 1040: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1041
	
l3037:	
;main.c: 1041: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1042
;main.c: 1042: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	1044
	
l3039:	
;main.c: 1044: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u3111
	goto	u3110
u3111:
	goto	l3045
u3110:
	
l3041:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u3121
	goto	u3120
u3121:
	goto	l3045
u3120:
	line	1047
	
l3043:	
;main.c: 1045: {
;main.c: 1047: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1048
;main.c: 1048: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_ADC_Sample+0)+0),f
	u4327:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u4327
	nop2
opt asmopt_pop

	line	1049
;main.c: 1049: }
	goto	l3047
	line	1051
	
l3045:	
;main.c: 1050: else
;main.c: 1051: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1053
	
l3047:	
;main.c: 1053: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u3131
	goto	u3130
u3131:
	goto	l3053
u3130:
	line	1055
	
l3049:	
;main.c: 1054: {
;main.c: 1055: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	1056
	
l3051:	
;main.c: 1056: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	1058
	
l3053:	
	line	1059
	
l3055:	
;main.c: 1059: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	1061
	
l3061:	
;main.c: 1060: {
;main.c: 1061: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u3145:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u3145
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	1062
# 1062 "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
nop ;# 
	line	1063
# 1063 "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
nop ;# 
	line	1064
# 1064 "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
nop ;# 
	line	1065
# 1065 "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
nop ;# 
psect	text15
	line	1066
	
l3063:	
;main.c: 1066: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	1068
	
l3065:	
;main.c: 1068: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	1069
;main.c: 1069: while (GODONE)
	goto	l890
	
l891:	
	line	1071
;main.c: 1070: {
;main.c: 1071: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	1073
;main.c: 1073: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u3151
	goto	u3150
u3151:
	goto	l890
u3150:
	line	1074
	
l3067:	
;main.c: 1074: return 0;
	movlw	low(0)
	goto	l893
	line	1075
	
l890:	
	line	1069
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u3161
	goto	u3160
u3161:
	goto	l891
u3160:
	line	1077
	
l3071:	
;main.c: 1075: }
;main.c: 1077: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l3073:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	1079
	
l3075:	
;main.c: 1079: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l3079
u3170:
	line	1081
	
l3077:	
;main.c: 1080: {
;main.c: 1081: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	1082
;main.c: 1082: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1083
;main.c: 1083: }
	goto	l896
	line	1084
	
l3079:	
;main.c: 1084: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u3185
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u3185:
	skipnc
	goto	u3181
	goto	u3180
u3181:
	goto	l3083
u3180:
	line	1085
	
l3081:	
;main.c: 1085: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l896
	line	1086
	
l3083:	
;main.c: 1086: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u3195
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u3195:
	skipnc
	goto	u3191
	goto	u3190
u3191:
	goto	l896
u3190:
	line	1087
	
l3085:	
;main.c: 1087: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1089
	
l896:	
;main.c: 1089: adsum += ad_temp;
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
	goto	u3201
	addwf	(ADC_Sample@adsum+1),f	;volatile
u3201:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3202
	addwf	(ADC_Sample@adsum+2),f	;volatile
u3202:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3203
	addwf	(ADC_Sample@adsum+3),f	;volatile
u3203:

	line	1059
	
l3087:	
	incf	(ADC_Sample@i),f
	
l3089:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u3211
	goto	u3210
u3211:
	goto	l3061
u3210:
	line	1091
	
l3091:	
;main.c: 1090: }
;main.c: 1091: adsum -= admax;
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
	goto	u3225
	goto	u3226
u3225:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3226:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3227
	goto	u3228
u3227:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3228:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3229
	goto	u3220
u3229:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3220:

	line	1092
;main.c: 1092: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u3235
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u3235
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u3235
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u3235:
	skipc
	goto	u3231
	goto	u3230
u3231:
	goto	l900
u3230:
	line	1093
	
l3093:	
;main.c: 1093: adsum -= admin;
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
	goto	u3245
	goto	u3246
u3245:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3246:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3247
	goto	u3248
u3247:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3248:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3249
	goto	u3240
u3249:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3240:

	goto	l3095
	line	1094
	
l900:	
	line	1095
;main.c: 1094: else
;main.c: 1095: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1097
	
l3095:	
;main.c: 1097: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u3255:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u3250:
	addlw	-1
	skipz
	goto	u3255
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	1099
	
l3097:	
;main.c: 1099: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1100
	
l3099:	
;main.c: 1100: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	1101
	
l3101:	
;main.c: 1101: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1102
	
l3103:	
;main.c: 1102: return 0xA5;
	movlw	low(0A5h)
	line	1104
	
l893:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 962 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_AD_Init
;;		_Init_System
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	962
global __ptext16
__ptext16:	;psect for function _Sleep_Mode
psect	text16
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
	line	962
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 4
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	964
	
l2897:	
;main.c: 964: INTCON = 0;
	clrf	(11)	;volatile
	line	966
;main.c: 966: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	968
	
l2899:	
;main.c: 968: TRISA = 0x1F;
	movlw	low(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	969
	
l2901:	
;main.c: 969: WPUA = 0B00000000;
	clrf	(136)^080h	;volatile
	line	970
	
l2903:	
;main.c: 970: PORTA = 0x00;
	clrf	(134)^080h	;volatile
	line	971
	
l2905:	
;main.c: 971: TRISB = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	972
;main.c: 972: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	973
	
l2907:	
;main.c: 973: WPUB = 0B00000100;
	movlw	low(04h)
	movwf	(8)	;volatile
	line	975
	
l2909:	
;main.c: 975: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	976
	
l2911:	
;main.c: 976: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	978
	
l2913:	
;main.c: 978: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	980
;main.c: 980: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	982
;main.c: 982: IOCA = 0B00000010;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(137)^080h	;volatile
	line	983
;main.c: 983: IOCB = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	985
	
l2915:	
;main.c: 985: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	986
	
l2917:	
;main.c: 986: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	987
	
l2919:	
;main.c: 987: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	988
	
l2921:	
;main.c: 988: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	990
	
l2923:	
;main.c: 990: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	991
	
l2925:	
;main.c: 991: PIR1 = 0;
	clrf	(13)	;volatile
	line	992
	
l2927:	
;main.c: 992: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	994
	
l2929:	
;main.c: 994: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	995
	
l2931:	
;main.c: 995: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	996
	
l2933:	
;main.c: 996: PORTB;
	movf	(6),w	;volatile
	line	997
	
l2935:	
;main.c: 997: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	998
# 998 "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
clrwdt ;# 
	line	1000
# 1000 "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
sleep ;# 
	line	1002
# 1002 "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
nop ;# 
	line	1003
# 1003 "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
clrwdt ;# 
	line	1004
# 1004 "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
nop ;# 
	line	1005
# 1005 "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
nop ;# 
	line	1006
# 1006 "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
nop ;# 
	line	1007
# 1007 "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
nop ;# 
	line	1008
# 1008 "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
nop ;# 
psect	text16
	line	1009
	
l2937:	
;main.c: 1009: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u2941
	goto	u2940
u2941:
	goto	l879
u2940:
	
l2939:	
	bcf	(107/8),(107)&7	;volatile
	
l879:	
	line	1010
;main.c: 1010: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u2951
	goto	u2950
u2951:
	goto	l880
u2950:
	
l2941:	
	bcf	(88/8),(88)&7	;volatile
	
l880:	
	line	1011
;main.c: 1011: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u2961
	goto	u2960
u2961:
	goto	l2945
u2960:
	
l2943:	
	bcf	(105/8),(105)&7	;volatile
	line	1012
	
l2945:	
;main.c: 1012: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	1013
;main.c: 1013: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	1014
	
l2947:	
;main.c: 1014: Init_System();
	fcall	_Init_System
	line	1015
	
l2949:	
;main.c: 1015: AD_Init();
	fcall	_AD_Init
	line	1016
	
l882:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 818 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Sleep_Mode
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	818
global __ptext17
__ptext17:	;psect for function _Init_System
psect	text17
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
	line	818
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	820
	
l2159:	
# 820 "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
nop ;# 
	line	821
# 821 "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
clrwdt ;# 
psect	text17
	line	822
	
l2161:	
;main.c: 822: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	823
# 823 "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
clrwdt ;# 
psect	text17
	line	824
	
l2163:	
;main.c: 824: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	826
	
l2165:	
;main.c: 826: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	827
;main.c: 827: WPDA = 0x02;
	movlw	low(02h)
	movwf	(135)^080h	;volatile
	line	828
;main.c: 828: WPUB = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	830
;main.c: 830: TRISA = 0x1F;
	movlw	low(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	831
;main.c: 831: TRISB = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	833
	
l2167:	
;main.c: 833: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	834
	
l2169:	
;main.c: 834: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	838
;main.c: 838: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	839
	
l2171:	
;main.c: 839: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	840
	
l2173:	
;main.c: 840: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	842
;main.c: 842: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	843
;main.c: 843: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	844
	
l861:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 855 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Sleep_Mode
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	855
global __ptext18
__ptext18:	;psect for function _AD_Init
psect	text18
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
	line	855
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _AD_Init: [wreg+status,2]
	line	888
	
l2175:	
;main.c: 888: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	905
	
l2177:	
;main.c: 905: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	906
	
l2179:	
;main.c: 906: ANSEL0 = 0X1D;
	movlw	low(01Dh)
	movwf	(147)^080h	;volatile
	line	907
	
l864:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 101 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          3       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ledShow
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	101
global __ptext19
__ptext19:	;psect for function _Isr_Timer
psect	text19
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
	line	101
	global	__size_of_Isr_Timer
	__size_of_Isr_Timer	equ	__end_of_Isr_Timer-_Isr_Timer
	
_Isr_Timer:	
;incstack = 0
	opt	stack 4
; Regs used in _Isr_Timer: [wreg-fsr0h+status,2+status,0+pclath+cstack]
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
	movf	fsr0,w
	movwf	(??_Isr_Timer+1)
	movf	pclath,w
	movwf	(??_Isr_Timer+2)
	ljmp	_Isr_Timer
psect	text19
	line	103
	
i1l2951:	
;main.c: 103: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u297_21
	goto	u297_20
u297_21:
	goto	i1l658
u297_20:
	line	105
	
i1l2953:	
;main.c: 104: {
;main.c: 105: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	106
	
i1l2955:	
;main.c: 106: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u298_21
	goto	u298_20
u298_21:
	goto	i1l2965
u298_20:
	line	108
	
i1l2957:	
;main.c: 107: {
;main.c: 108: intCount = 0;
	clrf	(_intCount)
	line	109
	
i1l2959:	
;main.c: 109: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	110
	
i1l2961:	
;main.c: 110: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u299_21
	goto	u299_20
u299_21:
	goto	i1l2965
u299_20:
	line	112
	
i1l2963:	
;main.c: 111: {
;main.c: 112: count1s = 0;
	clrf	(_count1s)
	line	115
	
i1l2965:	
;main.c: 113: }
;main.c: 114: }
;main.c: 115: ledShow();
	fcall	_ledShow
	line	116
	
i1l2967:	
;main.c: 116: intCount10++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_intCount10),f
	line	119
	
i1l658:	
	movf	(??_Isr_Timer+2),w
	movwf	pclath
	movf	(??_Isr_Timer+1),w
	movwf	fsr0
	swapf	(??_Isr_Timer+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Isr_Timer
	__end_of_Isr_Timer:
	signat	_Isr_Timer,89
	global	_ledShow

;; *************** function _ledShow *****************
;; Defined at:
;;		line 164 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Isr_Timer
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	164
global __ptext20
__ptext20:	;psect for function _ledShow
psect	text20
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14--堵转闪烁10秒_加力变大ZSMJ\main.c"
	line	164
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 4
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	166
	
i1l2379:	
;main.c: 166: if(++ledCntTime > 30)
	movlw	low(01Fh)
	incf	(_ledCntTime),f
	subwf	((_ledCntTime)),w
	skipc
	goto	u187_21
	goto	u187_20
u187_21:
	goto	i1l692
u187_20:
	line	168
	
i1l2381:	
;main.c: 167: {
;main.c: 168: ledCntTime = 0;
	clrf	(_ledCntTime)
	line	169
	
i1l2383:	
;main.c: 169: if(++ledCnt > 5)
	movlw	low(06h)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u188_21
	goto	u188_20
u188_21:
	goto	i1l2387
u188_20:
	line	171
	
i1l2385:	
;main.c: 170: {
;main.c: 171: ledCnt = 0;
	clrf	(_ledCnt)
	line	173
	
i1l2387:	
;main.c: 172: }
;main.c: 173: PORTA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(5/8),(5)&7	;volatile
	line	174
	
i1l2389:	
;main.c: 174: PORTB &= 0xC7;
	movlw	low(0C7h)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(6),f	;volatile
	line	175
	
i1l2391:	
;main.c: 175: TRISA |= 0x20;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(133)^080h+(5/8),(5)&7	;volatile
	line	176
	
i1l2393:	
;main.c: 176: TRISB |= 0x38;
	movlw	low(038h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(5),f	;volatile
	line	177
;main.c: 177: switch(ledCnt)
	goto	i1l2429
	line	180
	
i1l2395:	
;main.c: 180: if(ledStep > 0)
	movf	((_ledStep)),w
	btfsc	status,2
	goto	u189_21
	goto	u189_20
u189_21:
	goto	i1l692
u189_20:
	line	182
	
i1l2397:	
;main.c: 181: {
;main.c: 182: TRISB &= 0xE7;
	movlw	low(0E7h)
	andwf	(5),f	;volatile
	line	183
	
i1l2399:	
;main.c: 183: PORTB |= 0x10;
	bsf	(6)+(4/8),(4)&7	;volatile
	goto	i1l692
	line	187
	
i1l2401:	
;main.c: 187: if(ledStep > 1)
	movlw	low(02h)
	subwf	(_ledStep),w
	skipc
	goto	u190_21
	goto	u190_20
u190_21:
	goto	i1l692
u190_20:
	line	189
	
i1l2403:	
;main.c: 188: {
;main.c: 189: TRISB &= 0xCF;
	movlw	low(0CFh)
	andwf	(5),f	;volatile
	line	190
	
i1l2405:	
;main.c: 190: PORTB |= 0x20;
	bsf	(6)+(5/8),(5)&7	;volatile
	goto	i1l692
	line	194
	
i1l2407:	
;main.c: 194: if(ledStep > 2)
	movlw	low(03h)
	subwf	(_ledStep),w
	skipc
	goto	u191_21
	goto	u191_20
u191_21:
	goto	i1l692
u191_20:
	line	196
	
i1l2409:	
;main.c: 195: {
;main.c: 196: TRISB &= 0xE7;
	movlw	low(0E7h)
	andwf	(5),f	;volatile
	line	197
	
i1l2411:	
;main.c: 197: PORTB |= 0x08;
	bsf	(6)+(3/8),(3)&7	;volatile
	goto	i1l692
	line	201
	
i1l2413:	
;main.c: 201: if(ledStep > 3)
	movlw	low(04h)
	subwf	(_ledStep),w
	skipc
	goto	u192_21
	goto	u192_20
u192_21:
	goto	i1l692
u192_20:
	line	203
	
i1l2415:	
;main.c: 202: {
;main.c: 203: TRISB &= 0xCF;
	movlw	low(0CFh)
	andwf	(5),f	;volatile
	goto	i1l2399
	line	208
	
i1l2419:	
;main.c: 208: if(ledStep > 4)
	movlw	low(05h)
	subwf	(_ledStep),w
	skipc
	goto	u193_21
	goto	u193_20
u193_21:
	goto	i1l692
u193_20:
	line	210
	
i1l2421:	
;main.c: 209: {
;main.c: 210: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	211
;main.c: 211: TRISB &= 0xDF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(5/8),(5)&7	;volatile
	line	212
;main.c: 212: PORTB |= 0x20;
	bsf	(6)+(5/8),(5)&7	;volatile
	goto	i1l692
	line	216
	
i1l2423:	
;main.c: 216: if(ledStep > 5)
	movlw	low(06h)
	subwf	(_ledStep),w
	skipc
	goto	u194_21
	goto	u194_20
u194_21:
	goto	i1l692
u194_20:
	line	218
	
i1l2425:	
;main.c: 217: {
;main.c: 218: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	219
;main.c: 219: TRISB &= 0xDF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(5/8),(5)&7	;volatile
	line	220
;main.c: 220: PORTA |= 0x20;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(5/8),(5)&7	;volatile
	goto	i1l692
	line	177
	
i1l2429:	
	movf	(_ledCnt),w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 0 to 5
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           12     6 (fixed)
; simple_byte           19    10 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	6
	subwf	fsr,w
skipnc
goto i1l692
movlw high(i1S3605)
movwf pclath
	movlw low(i1S3605)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S3605:
	ljmp	i1l2423
	ljmp	i1l2395
	ljmp	i1l2401
	ljmp	i1l2407
	ljmp	i1l2413
	ljmp	i1l2419
psect	text20

	line	229
	
i1l692:	
	return
	opt stack 0
GLOBAL	__end_of_ledShow
	__end_of_ledShow:
	signat	_ledShow,89
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
