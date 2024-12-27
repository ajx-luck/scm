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
	global	_prePwStep
	global	_ledStep
	global	_workStep
	global	_chrgFlag
	global	_count900s
	global	_count8s
	global	_count5s
	global	_fullCount
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
	global	_ledCnt
	global	_workOverOutTime
	global	_protectFlag
	global	_countHalfFull
	global	_intCount10
	global	_chrgFullFlag
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
_prePwStep:
       ds      1

_ledStep:
       ds      1

_workStep:
       ds      1

_chrgFlag:
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

_fullCount:
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
	movlw	low((__pbssBANK0)+036h)
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
	global	keyRead@keyStatus
keyRead@keyStatus:	; 1 bytes @ 0x3
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x3
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x3
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x3
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
	ds	1
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x6
	ds	1
??_main:	; 1 bytes @ 0x7
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_chrgCtr:	; 1 bytes @ 0x0
??_ADC_Sample:	; 1 bytes @ 0x0
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x0
	ds	1
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x1
	ds	1
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x2
	ds	1
??_ledCtr:	; 1 bytes @ 0x3
	ds	1
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
;!    BSS         58
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      11
;!    BANK0            80     19      74
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _ledCtr->___lbdiv
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
;! (0) _main                                                 0     0      0    3272
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
;! (1) _ledCtr                                               1     1      0     683
;!                                              3 BANK0      1     1      0
;!                            ___lbdiv
;!                            ___lbmod
;! ---------------------------------------------------------------------------------
;! (2) ___lbmod                                              5     4      1     362
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
;!BANK0               50     13      4A       4       92.5%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      55       7        0.0%
;!DATA                 0      0      55       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 124 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
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
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
	line	124
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
	line	124
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	126
	
l3398:	
;main.c: 126: Init_System();
	fcall	_Init_System
	line	127
;main.c: 127: AD_Init();
	fcall	_AD_Init
	line	128
	
l3400:	
;main.c: 128: firstTime = 100;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_firstTime)
	line	129
;main.c: 129: while (1)
	
l661:	
	line	131
# 131 "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
clrwdt ;# 
psect	maintext
	line	132
	
l3402:	
;main.c: 132: if(intCount10 > 10)
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_intCount10),w
	skipc
	goto	u3931
	goto	u3930
u3931:
	goto	l3408
u3930:
	line	134
	
l3404:	
;main.c: 133: {
;main.c: 134: intCount10 = 0;
	clrf	(_intCount10)
	line	135
	
l3406:	
;main.c: 135: checkOutA();
	fcall	_checkOutA
	line	137
	
l3408:	
;main.c: 136: }
;main.c: 137: if(!IntFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u3941
	goto	u3940
u3941:
	goto	l3412
u3940:
	goto	l661
	line	139
	
l3412:	
;main.c: 139: IntFlag = 0;
	clrf	(_IntFlag)
	line	140
	
l3414:	
;main.c: 140: chrgCtr();
	fcall	_chrgCtr
	line	141
	
l3416:	
;main.c: 141: checkBatAD();
	fcall	_checkBatAD
	line	142
	
l3418:	
;main.c: 142: if(chrgFlag == 0 && lowBatFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3951
	goto	u3950
u3951:
	goto	l665
u3950:
	
l3420:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u3961
	goto	u3960
u3961:
	goto	l665
u3960:
	line	144
	
l3422:	
;main.c: 143: {
;main.c: 144: keyCtr();
	fcall	_keyCtr
	line	145
	
l665:	
	line	146
;main.c: 145: }
;main.c: 146: workCtr();
	fcall	_workCtr
	line	147
;main.c: 147: ledCtr();
	fcall	_ledCtr
	line	148
	
l3424:	
;main.c: 148: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && showBatTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3971
	goto	u3970
u3971:
	goto	l3440
u3970:
	
l3426:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u3981
	goto	u3980
u3981:
	goto	l3440
u3980:
	
l3428:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u3991
	goto	u3990
u3991:
	goto	l3440
u3990:
	
l3430:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u4001
	goto	u4000
u4001:
	goto	l3440
u4000:
	
l3432:	
	movf	((_showBatTime)),w
	btfss	status,2
	goto	u4011
	goto	u4010
u4011:
	goto	l3440
u4010:
	line	150
	
l3434:	
;main.c: 149: {
;main.c: 150: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u4021
	goto	u4020
u4021:
	goto	l661
u4020:
	line	152
	
l3436:	
;main.c: 151: {
;main.c: 152: sleepTime = 0;
	clrf	(_sleepTime)
	line	153
	
l3438:	
;main.c: 153: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l661
	line	158
	
l3440:	
;main.c: 156: else
;main.c: 157: {
;main.c: 158: sleepTime = 0;
	clrf	(_sleepTime)
	goto	l661
	global	start
	ljmp	start
	opt stack 0
	line	161
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 535 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
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
	line	535
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
	line	535
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	538
	
l2710:	
;main.c: 538: if(startTime > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_startTime)),w
	btfsc	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l2714
u2580:
	line	540
	
l2712:	
;main.c: 539: {
;main.c: 540: startTime--;
	decf	(_startTime),f
	line	542
	
l2714:	
;main.c: 541: }
;main.c: 542: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l2740
u2590:
	line	544
	
l2716:	
;main.c: 543: {
;main.c: 544: if((PWMCON0 & 0x02) == 0)
	btfsc	(21),(1)&7	;volatile
	goto	u2601
	goto	u2600
u2601:
	goto	l2720
u2600:
	line	546
	
l2718:	
;main.c: 545: {
;main.c: 546: pwmInit();
	fcall	_pwmInit
	line	548
	
l2720:	
;main.c: 547: }
;main.c: 548: maxDuty = 43 + (workStep*2);
	clrc
	rlf	(_workStep),w
	addlw	02Bh
	movwf	(_maxDuty)
	line	549
	
l2722:	
;main.c: 549: if(overCount >= 5)
	movlw	low(05h)
	subwf	(_overCount),w
	skipc
	goto	u2611
	goto	u2610
u2611:
	goto	l2732
u2610:
	line	551
	
l2724:	
;main.c: 550: {
;main.c: 551: if(++count5s > 500)
	incf	(_count5s),f
	skipnz
	incf	(_count5s+1),f
	movlw	01h
	subwf	((_count5s+1)),w
	movlw	0F5h
	skipnz
	subwf	((_count5s)),w
	skipc
	goto	u2621
	goto	u2620
u2621:
	goto	l2734
u2620:
	line	553
	
l2726:	
;main.c: 552: {
;main.c: 553: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	554
	
l2728:	
;main.c: 554: overWorkTime = 180;
	movlw	low(0B4h)
	movwf	(_overWorkTime)
	line	555
	
l2730:	
;main.c: 555: preLedStep = workStep;
	movf	(_workStep),w
	movwf	(_preLedStep)
	line	556
;main.c: 556: workStep = 0;
	clrf	(_workStep)
	goto	l2734
	line	562
	
l2732:	
;main.c: 560: else
;main.c: 561: {
;main.c: 562: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	564
	
l2734:	
;main.c: 563: }
;main.c: 564: if(count1s == 0 && ++count900s >= 900)
	movf	((_count1s)),w
	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l790
u2630:
	
l2736:	
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	movlw	03h
	subwf	((_count900s+1)),w
	movlw	084h
	skipnz
	subwf	((_count900s)),w
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l790
u2640:
	line	566
	
l2738:	
;main.c: 565: {
;main.c: 566: workStep = 0;
	clrf	(_workStep)
	goto	l790
	line	571
	
l2740:	
;main.c: 569: else
;main.c: 570: {
;main.c: 571: pwmStop();
	fcall	_pwmStop
	line	572
	
l2742:	
;main.c: 572: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	574
	
l790:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 921 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
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
	line	921
global __ptext2
__ptext2:	;psect for function _pwmStop
psect	text2
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
	line	921
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: []
	line	923
	
l2186:	
;main.c: 923: PWMCON0 &= 0XFD;
	bcf	(21)+(1/8),(1)&7	;volatile
	line	924
;main.c: 924: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	925
	
l867:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 906 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
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
	line	906
global __ptext3
__ptext3:	;psect for function _pwmInit
psect	text3
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
	line	906
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2]
	line	908
	
l2176:	
;main.c: 908: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	909
;main.c: 909: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	910
	
l2178:	
;main.c: 910: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	913
	
l2180:	
;main.c: 913: PWMD01H = 0;
	clrf	(30)	;volatile
	line	914
;main.c: 914: PWMD1L = 50;
	movlw	low(032h)
	movwf	(26)	;volatile
	line	915
	
l2182:	
;main.c: 915: PWM01DT = 0X00;
	clrf	(31)	;volatile
	line	917
	
l2184:	
;main.c: 917: PWMCON0 = 0X62;
	movlw	low(062h)
	movwf	(21)	;volatile
	line	918
;main.c: 918: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	919
	
l864:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_ledCtr

;; *************** function _ledCtr *****************
;; Defined at:
;;		line 232 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
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
;;      Temps:          0       1       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lbdiv
;;		___lbmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	232
global __ptext4
__ptext4:	;psect for function _ledCtr
psect	text4
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
	line	232
	global	__size_of_ledCtr
	__size_of_ledCtr	equ	__end_of_ledCtr-_ledCtr
	
_ledCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _ledCtr: [wreg+status,2+status,0+pclath+cstack]
	line	234
	
l3346:	
;main.c: 234: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u3811
	goto	u3810
u3811:
	goto	l3356
u3810:
	line	236
	
l3348:	
;main.c: 235: {
;main.c: 236: firstTime--;
	decf	(_firstTime),f
	line	237
	
l3350:	
;main.c: 237: ledStep = 6;
	movlw	low(06h)
	movwf	(_ledStep)
	line	238
	
l3352:	
;main.c: 238: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u3821
	goto	u3820
u3821:
	goto	l715
u3820:
	line	240
	
l3354:	
;main.c: 239: {
;main.c: 240: prePwStep = pwStep;
	movf	(_pwStep),w
	movwf	(_prePwStep)
	goto	l715
	line	243
	
l3356:	
;main.c: 243: else if(overWorkTime > 0)
	movf	((_overWorkTime)),w
	btfsc	status,2
	goto	u3831
	goto	u3830
u3831:
	goto	l3366
u3830:
	line	245
	
l3358:	
;main.c: 244: {
;main.c: 245: overWorkTime--;
	decf	(_overWorkTime),f
	line	246
	
l3360:	
;main.c: 246: if(overWorkTime % 60 < 30)
	movlw	low(03Ch)
	movwf	(___lbmod@divisor)
	movf	(_overWorkTime),w
	fcall	___lbmod
	movwf	(??_ledCtr+0)+0
	movlw	01Eh
	subwf	(??_ledCtr+0)+0,w
	skipnc
	goto	u3841
	goto	u3840
u3841:
	goto	l3364
u3840:
	line	248
	
l3362:	
;main.c: 247: {
;main.c: 248: ledStep = preLedStep;
	movf	(_preLedStep),w
	movwf	(_ledStep)
	line	249
;main.c: 249: }
	goto	l715
	line	252
	
l3364:	
;main.c: 250: else
;main.c: 251: {
;main.c: 252: ledStep = 0;
	clrf	(_ledStep)
	goto	l715
	line	255
	
l3366:	
;main.c: 255: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u3851
	goto	u3850
u3851:
	goto	l3384
u3850:
	line	257
	
l3368:	
;main.c: 256: {
;main.c: 257: showBatTime--;
	decf	(_showBatTime),f
	line	258
	
l3370:	
;main.c: 258: if(prePwStep >= 14)
	movlw	low(0Eh)
	subwf	(_prePwStep),w
	skipc
	goto	u3861
	goto	u3860
u3861:
	goto	l3374
u3860:
	line	260
	
l3372:	
;main.c: 259: {
;main.c: 260: ledStep = prePwStep/14;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	movwf	(_ledStep)
	line	261
;main.c: 261: }
	goto	l715
	line	262
	
l3374:	
;main.c: 262: else if(prePwStep > 5)
	movlw	low(06h)
	subwf	(_prePwStep),w
	skipc
	goto	u3871
	goto	u3870
u3871:
	goto	l3378
u3870:
	line	264
	
l3376:	
;main.c: 263: {
;main.c: 264: ledStep = 1;
	clrf	(_ledStep)
	incf	(_ledStep),f
	line	265
;main.c: 265: }
	goto	l715
	line	268
	
l3378:	
;main.c: 266: else
;main.c: 267: {
;main.c: 268: if(count1s < 50)
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u3881
	goto	u3880
u3881:
	goto	l3364
u3880:
	goto	l3376
	line	276
	
l703:	
	line	277
;main.c: 275: }
;main.c: 276: }
;main.c: 277: }
	goto	l715
	line	278
	
l3384:	
;main.c: 278: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3891
	goto	u3890
u3891:
	goto	l3388
u3890:
	line	280
	
l3386:	
;main.c: 279: {
;main.c: 280: ledStep = workStep;
	movf	(_workStep),w
	movwf	(_ledStep)
	line	281
;main.c: 281: }
	goto	l715
	line	282
	
l3388:	
;main.c: 282: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3901
	goto	u3900
u3901:
	goto	l3364
u3900:
	line	284
	
l3390:	
;main.c: 283: {
;main.c: 284: if(count1s % 50 == 0)
	movlw	low(032h)
	movwf	(___lbmod@divisor)
	movf	(_count1s),w
	fcall	___lbmod
	xorlw	0
	skipz
	goto	u3911
	goto	u3910
u3911:
	goto	l715
u3910:
	line	286
	
l3392:	
;main.c: 285: {
;main.c: 286: if(++ledStep > 6)
	movlw	low(07h)
	incf	(_ledStep),f
	subwf	((_ledStep)),w
	skipc
	goto	u3921
	goto	u3920
u3921:
	goto	l703
u3920:
	line	288
	
l3394:	
;main.c: 287: {
;main.c: 288: ledStep = lockLedStep;
	movf	(_lockLedStep),w
	movwf	(_ledStep)
	line	296
	
l715:	
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
	opt	stack 4
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	movwf	(___lbmod@dividend)
	line	9
	
l3004:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l3006:	
	clrf	(___lbmod@rem)
	line	12
	
l3008:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u3085:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u3085
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l3010:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l3012:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u3091
	goto	u3090
u3091:
	goto	l3016
u3090:
	line	15
	
l3014:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l3016:	
	decfsz	(___lbmod@counter),f
	goto	u3101
	goto	u3100
u3101:
	goto	l3008
u3100:
	line	17
	
l3018:	
	movf	(___lbmod@rem),w
	line	18
	
l1167:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 498 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
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
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
	line	498
global __ptext6
__ptext6:	;psect for function _keyCtr
psect	text6
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
	line	498
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	500
	
l2682:	
;main.c: 500: char kclick = keyRead(0x04 & (~PORTB));
	comf	(6),w	;volatile
	andlw	04h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	501
	
l2684:	
;main.c: 501: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2521
	goto	u2520
u2521:
	goto	l2700
u2520:
	line	503
	
l2686:	
;main.c: 502: {
;main.c: 503: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2531
	goto	u2530
u2531:
	goto	l2692
u2530:
	line	505
	
l2688:	
;main.c: 504: {
;main.c: 505: if(++workStep > 6)
	movlw	low(07h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l779
u2540:
	line	507
	
l2690:	
;main.c: 506: {
;main.c: 507: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l779
	line	510
	
l2692:	
;main.c: 510: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l2696
u2550:
	line	512
	
l2694:	
;main.c: 511: {
;main.c: 512: showBatTime = 0;
	clrf	(_showBatTime)
	line	513
;main.c: 513: }
	goto	l779
	line	516
	
l2696:	
;main.c: 514: else
;main.c: 515: {
;main.c: 516: showBatTime = 200;
	movlw	low(0C8h)
	movwf	(_showBatTime)
	line	517
	
l2698:	
;main.c: 517: count1s = 0;
	clrf	(_count1s)
	goto	l779
	line	520
	
l2700:	
;main.c: 520: else if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l779
u2560:
	line	522
	
l2702:	
;main.c: 521: {
;main.c: 522: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l777
u2570:
	line	524
	
l2704:	
;main.c: 523: {
;main.c: 524: workStep = 0;
	clrf	(_workStep)
	line	525
;main.c: 525: }
	goto	l779
	line	526
	
l777:	
	line	528
;main.c: 526: else
;main.c: 527: {
;main.c: 528: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	529
	
l2706:	
;main.c: 529: startTime = 30;
	movlw	low(01Eh)
	movwf	(_startTime)
	goto	l2694
	line	533
	
l779:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 465 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
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
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	465
global __ptext7
__ptext7:	;psect for function _keyRead
psect	text7
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
	line	465
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	467
	
l2136:	
;main.c: 467: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1471
	goto	u1470
u1471:
	goto	l2152
u1470:
	line	469
	
l2138:	
;main.c: 468: {
;main.c: 469: keyCount++;
	incf	(_keyCount),f
	line	470
	
l2140:	
;main.c: 470: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1481
	goto	u1480
u1481:
	goto	l2156
u1480:
	line	472
	
l2142:	
;main.c: 471: {
;main.c: 472: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	line	473
	
l2144:	
;main.c: 473: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1491
	goto	u1490
u1491:
	goto	l2156
u1490:
	line	475
	
l2146:	
;main.c: 474: {
;main.c: 475: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	476
	
l2148:	
;main.c: 476: return 2;
	movlw	low(02h)
	goto	l762
	line	482
	
l2152:	
;main.c: 480: else
;main.c: 481: {
;main.c: 482: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1501
	goto	u1500
u1501:
	goto	l2162
u1500:
	line	484
	
l2154:	
;main.c: 483: {
;main.c: 484: keyCount = 0;
	clrf	(_keyCount)
	line	485
;main.c: 485: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	486
	
l2156:	
;main.c: 486: return 0;
	movlw	low(0)
	goto	l762
	line	488
	
l2162:	
;main.c: 488: else if(keyCount >= 6)
	movlw	low(06h)
	subwf	(_keyCount),w
	skipc
	goto	u1511
	goto	u1510
u1511:
	goto	l2170
u1510:
	line	490
	
l2164:	
;main.c: 489: {
;main.c: 490: keyCount = 0;
	clrf	(_keyCount)
	line	491
	
l2166:	
;main.c: 491: return 1;
	movlw	low(01h)
	goto	l762
	line	493
	
l2170:	
;main.c: 492: }
;main.c: 493: keyCount = 0;
	clrf	(_keyCount)
	goto	l2156
	line	496
	
l762:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 300 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
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
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	300
global __ptext8
__ptext8:	;psect for function _chrgCtr
psect	text8
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
	line	300
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	302
	
l3126:	
;main.c: 302: if(PORTA & 0x02)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(134)^080h,(1)&7	;volatile
	goto	u3361
	goto	u3360
u3361:
	goto	l3260
u3360:
	line	304
	
l3128:	
;main.c: 303: {
;main.c: 304: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l3136
u3370:
	line	306
	
l3130:	
;main.c: 305: {
;main.c: 306: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	307
	
l3132:	
;main.c: 307: ledStep = 0;
	clrf	(_ledStep)
	line	308
;main.c: 308: chrgMaxDuty = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgMaxDuty)
	line	309
	
l3134:	
;main.c: 309: chrgPwmStop();
	fcall	_chrgPwmStop
	line	311
	
l3136:	
;main.c: 310: }
;main.c: 311: workStep = 0;
	clrf	(_workStep)
	line	312
	
l3138:	
;main.c: 312: lowBatFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_lowBatFlag)
	line	313
	
l3140:	
;main.c: 313: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u3381
	goto	u3380
u3381:
	goto	l3148
u3380:
	line	315
	
l3142:	
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
	goto	u3391
	goto	u3390
u3391:
	goto	l3150
u3390:
	line	317
	
l3144:	
;main.c: 316: {
;main.c: 317: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	318
	
l3146:	
;main.c: 318: prePwStep++;
	incf	(_prePwStep),f
	goto	l3150
	line	323
	
l3148:	
;main.c: 321: else
;main.c: 322: {
;main.c: 323: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	325
	
l3150:	
;main.c: 324: }
;main.c: 325: if(protectFlag)
	movf	((_protectFlag)),w
	btfsc	status,2
	goto	u3401
	goto	u3400
u3401:
	goto	l3174
u3400:
	line	327
	
l3152:	
;main.c: 326: {
;main.c: 327: chrgPwmStop();
	fcall	_chrgPwmStop
	line	328
	
l3154:	
;main.c: 328: ledStep = 6;
	movlw	low(06h)
	movwf	(_ledStep)
	line	329
	
l3156:	
;main.c: 329: if(prePwStep < 99 && protectFlag == 1)
	movlw	low(063h)
	subwf	(_prePwStep),w
	skipnc
	goto	u3411
	goto	u3410
u3411:
	goto	l3170
u3410:
	
l3158:	
		decf	((_protectFlag)),w
	btfss	status,2
	goto	u3421
	goto	u3420
u3421:
	goto	l3170
u3420:
	line	331
	
l3160:	
;main.c: 330: {
;main.c: 331: if(++reChrgCount > 250)
	movlw	low(0FBh)
	incf	(_reChrgCount),f
	subwf	((_reChrgCount)),w
	skipc
	goto	u3431
	goto	u3430
u3431:
	goto	l729
u3430:
	line	333
	
l3162:	
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
	
l3164:	
;main.c: 336: if(prePwStep > 14)
	movlw	low(0Fh)
	subwf	(_prePwStep),w
	skipc
	goto	u3441
	goto	u3440
u3441:
	goto	l3168
u3440:
	line	338
	
l3166:	
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
	goto	l729
	line	342
	
l3168:	
;main.c: 340: else
;main.c: 341: {
;main.c: 342: lockLedStep = 0;
	clrf	(_lockLedStep)
	goto	l729
	line	348
	
l3170:	
;main.c: 346: else
;main.c: 347: {
;main.c: 348: reChrgCount = 0;
	clrf	(_reChrgCount)
	goto	l729
	line	352
	
l3174:	
;main.c: 351: }
;main.c: 352: if(batADValue < 1118)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Eh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3451
	goto	u3450
u3451:
	goto	l3180
u3450:
	line	354
	
l3176:	
;main.c: 353: {
;main.c: 354: chrgMode = 0;
	clrf	(_chrgMode)
	line	355
	
l3178:	
;main.c: 355: chrgMaxAD = 15;
	movlw	low(0Fh)
	movwf	(_chrgMaxAD)
	line	356
;main.c: 356: }
	goto	l3198
	line	357
	
l3180:	
;main.c: 357: else if(batADValue < 1530)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	0FAh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3461
	goto	u3460
u3461:
	goto	l3188
u3460:
	line	359
	
l3182:	
;main.c: 358: {
;main.c: 359: chrgMode = 1;
	clrf	(_chrgMode)
	incf	(_chrgMode),f
	line	360
	
l3184:	
;main.c: 360: chrgMaxAD = 40;
	movlw	low(028h)
	movwf	(_chrgMaxAD)
	line	361
	
l3186:	
;main.c: 361: lockCount = 0;
	clrf	(_lockCount)
	line	362
;main.c: 362: }
	goto	l3198
	line	363
	
l3188:	
;main.c: 363: else if(count1s == 0)
	movf	((_count1s)),w
	btfss	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l3198
u3470:
	line	365
	
l3190:	
;main.c: 364: {
;main.c: 365: if(++lockCount > 200)
	movlw	low(0C9h)
	incf	(_lockCount),f
	subwf	((_lockCount)),w
	skipc
	goto	u3481
	goto	u3480
u3481:
	goto	l3196
u3480:
	line	367
	
l3192:	
;main.c: 366: {
;main.c: 367: lockCount = 0;
	clrf	(_lockCount)
	line	368
	
l3194:	
;main.c: 368: chrgMode = 2;
	movlw	low(02h)
	movwf	(_chrgMode)
	line	371
	
l3196:	
;main.c: 369: }
;main.c: 371: chrgMaxAD = 40;
	movlw	low(028h)
	movwf	(_chrgMaxAD)
	line	373
	
l3198:	
;main.c: 372: }
;main.c: 373: if(chrgMode == 2 && outADValue < 5)
		movlw	2
	xorwf	((_chrgMode)),w
	btfss	status,2
	goto	u3491
	goto	u3490
u3491:
	goto	l3208
u3490:
	
l3200:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	05h
	skipnz
	subwf	(_outADValue),w
	skipnc
	goto	u3501
	goto	u3500
u3501:
	goto	l3208
u3500:
	line	375
	
l3202:	
;main.c: 374: {
;main.c: 375: if(++fullCount >= 200)
	incf	(_fullCount),f
	skipnz
	incf	(_fullCount+1),f
	movlw	0
	subwf	((_fullCount+1)),w
	movlw	0C8h
	skipnz
	subwf	((_fullCount)),w
	skipc
	goto	u3511
	goto	u3510
u3511:
	goto	l3210
u3510:
	line	377
	
l3204:	
;main.c: 376: {
;main.c: 377: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	378
	
l3206:	
;main.c: 378: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l3210
	line	383
	
l3208:	
;main.c: 381: else
;main.c: 382: {
;main.c: 383: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	385
	
l3210:	
;main.c: 384: }
;main.c: 385: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l3216
u3520:
	line	387
	
l3212:	
;main.c: 386: {
;main.c: 387: lockLedStep = 6;
	movlw	low(06h)
	movwf	(_lockLedStep)
	line	388
	
l3214:	
;main.c: 388: chrgPwmStop();
	fcall	_chrgPwmStop
	line	389
;main.c: 389: }
	goto	l729
	line	392
	
l3216:	
;main.c: 390: else
;main.c: 391: {
;main.c: 392: if(prePwStep < 15)
	movlw	low(0Fh)
	subwf	(_prePwStep),w
	skipnc
	goto	u3531
	goto	u3530
u3531:
	goto	l3220
u3530:
	line	394
	
l3218:	
;main.c: 393: {
;main.c: 394: lockLedStep = 0;
	clrf	(_lockLedStep)
	line	395
;main.c: 395: }
	goto	l3222
	line	398
	
l3220:	
;main.c: 396: else
;main.c: 397: {
;main.c: 398: lockLedStep = (prePwStep/14) - 1;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	0FFh
	movwf	(_lockLedStep)
	line	400
	
l3222:	
;main.c: 399: }
;main.c: 400: if(batADValue > 1545 || outADValue > (chrgMaxAD + 2))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	0Ah
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3541
	goto	u3540
u3541:
	goto	l3226
u3540:
	
l3224:	
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
	goto	u3555
	movf	(_outADValue),w
	subwf	0+(??_chrgCtr+0)+0,w
u3555:
	skipnc
	goto	u3551
	goto	u3550
u3551:
	goto	l3238
u3550:
	line	402
	
l3226:	
;main.c: 401: {
;main.c: 402: if(++subTime > chrgWaitTime)
	incf	(_subTime),f
	movf	((_subTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u3561
	goto	u3560
u3561:
	goto	l3236
u3560:
	line	404
	
l3228:	
;main.c: 403: {
;main.c: 404: if(chrgMaxDuty > 1)
	movlw	low(02h)
	subwf	(_chrgMaxDuty),w
	skipc
	goto	u3571
	goto	u3570
u3571:
	goto	l3232
u3570:
	line	406
	
l3230:	
;main.c: 405: {
;main.c: 406: chrgMaxDuty--;
	decf	(_chrgMaxDuty),f
	line	408
	
l3232:	
;main.c: 407: }
;main.c: 408: subTime = 0;
	clrf	(_subTime)
	line	409
	
l3234:	
;main.c: 409: chrgWaitTime = 50;
	movlw	low(032h)
	movwf	(_chrgWaitTime)
	line	411
	
l3236:	
;main.c: 410: }
;main.c: 411: addTime = 0;
	clrf	(_addTime)
	line	412
;main.c: 412: }
	goto	l3252
	line	413
	
l3238:	
;main.c: 413: else if(batADValue < 1545 && outADValue < (chrgMaxAD - 4))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	09h
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3581
	goto	u3580
u3581:
	goto	l3252
u3580:
	
l3240:	
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
	goto	u3595
	movf	0+(??_chrgCtr+0)+0,w
	subwf	(_outADValue),w
u3595:
	skipnc
	goto	u3591
	goto	u3590
u3591:
	goto	l3252
u3590:
	line	415
	
l3242:	
;main.c: 414: {
;main.c: 415: if(++addTime > chrgWaitTime)
	incf	(_addTime),f
	movf	((_addTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u3601
	goto	u3600
u3601:
	goto	l3250
u3600:
	line	417
	
l3244:	
;main.c: 416: {
;main.c: 417: addTime = 0;
	clrf	(_addTime)
	line	418
	
l3246:	
;main.c: 418: if(chrgMaxDuty < 75)
	movlw	low(04Bh)
	subwf	(_chrgMaxDuty),w
	skipnc
	goto	u3611
	goto	u3610
u3611:
	goto	l3250
u3610:
	line	420
	
l3248:	
;main.c: 419: {
;main.c: 420: chrgMaxDuty++;
	incf	(_chrgMaxDuty),f
	line	423
	
l3250:	
;main.c: 421: }
;main.c: 422: }
;main.c: 423: subTime = 0;
	clrf	(_subTime)
	line	427
	
l3252:	
;main.c: 424: }
;main.c: 427: if((PWMCON0 & 0x01) == 0)
	btfsc	(21),(0)&7	;volatile
	goto	u3621
	goto	u3620
u3621:
	goto	l3256
u3620:
	line	429
	
l3254:	
;main.c: 428: {
;main.c: 429: chrgPwmInit();
	fcall	_chrgPwmInit
	line	431
	
l3256:	
;main.c: 430: }
;main.c: 431: PWMD01H = 0X00;
	clrf	(30)	;volatile
	line	432
	
l3258:	
;main.c: 432: PWMD0L = chrgMaxDuty;
	movf	(_chrgMaxDuty),w
	movwf	(25)	;volatile
	goto	l729
	line	438
	
l3260:	
;main.c: 438: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	439
;main.c: 439: chrgFullFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgFullFlag)
	line	440
;main.c: 440: protectFlag = 0;
	clrf	(_protectFlag)
	line	441
;main.c: 441: chrgMode = 0;
	clrf	(_chrgMode)
	line	442
;main.c: 442: chrgMaxAD = 0;
	clrf	(_chrgMaxAD)
	line	443
;main.c: 443: chrgMaxDuty = 0;
	clrf	(_chrgMaxDuty)
	line	444
;main.c: 444: lockCount = 0;
	clrf	(_lockCount)
	line	445
;main.c: 445: lockLedStep = 0;
	clrf	(_lockLedStep)
	line	446
	
l3262:	
;main.c: 446: chrgWaitTime = 20;
	movlw	low(014h)
	movwf	(_chrgWaitTime)
	line	447
	
l3264:	
;main.c: 447: chrgPwmStop();
	fcall	_chrgPwmStop
	line	448
	
l3266:	
;main.c: 448: if(prePwStep > 0 && prePwStep > pwStep)
	movf	((_prePwStep)),w
	btfsc	status,2
	goto	u3631
	goto	u3630
u3631:
	goto	l3276
u3630:
	
l3268:	
	movf	(_prePwStep),w
	subwf	(_pwStep),w
	skipnc
	goto	u3641
	goto	u3640
u3641:
	goto	l3276
u3640:
	line	450
	
l3270:	
;main.c: 449: {
;main.c: 450: if(++count50s > 2000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	07h
	subwf	((_count50s+1)),w
	movlw	0D1h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u3651
	goto	u3650
u3651:
	goto	l729
u3650:
	line	452
	
l3272:	
;main.c: 451: {
;main.c: 452: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	453
	
l3274:	
;main.c: 453: prePwStep--;
	decf	(_prePwStep),f
	goto	l729
	line	458
	
l3276:	
;main.c: 456: else
;main.c: 457: {
;main.c: 458: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	461
	
l729:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_chrgPwmStop

;; *************** function _chrgPwmStop *****************
;; Defined at:
;;		line 900 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
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
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	900
global __ptext9
__ptext9:	;psect for function _chrgPwmStop
psect	text9
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
	line	900
	global	__size_of_chrgPwmStop
	__size_of_chrgPwmStop	equ	__end_of_chrgPwmStop-_chrgPwmStop
	
_chrgPwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmStop: []
	line	902
	
l2124:	
;main.c: 902: PWMCON0 &= 0xFE;
	bcf	(21)+(0/8),(0)&7	;volatile
	line	903
;main.c: 903: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	line	904
	
l861:	
	return
	opt stack 0
GLOBAL	__end_of_chrgPwmStop
	__end_of_chrgPwmStop:
	signat	_chrgPwmStop,89
	global	_chrgPwmInit

;; *************** function _chrgPwmInit *****************
;; Defined at:
;;		line 883 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
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
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	883
global __ptext10
__ptext10:	;psect for function _chrgPwmInit
psect	text10
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
	line	883
	global	__size_of_chrgPwmInit
	__size_of_chrgPwmInit	equ	__end_of_chrgPwmInit-_chrgPwmInit
	
_chrgPwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmInit: [wreg+status,2]
	line	885
	
l2126:	
;main.c: 885: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	887
;main.c: 887: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	888
	
l2128:	
;main.c: 888: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	892
	
l2130:	
;main.c: 892: PWMD01H = 0;
	clrf	(30)	;volatile
	line	893
;main.c: 893: PWMD0L = 1;
	movlw	low(01h)
	movwf	(25)	;volatile
	line	894
	
l2132:	
;main.c: 894: PWM01DT = 0X00;
	clrf	(31)	;volatile
	line	896
	
l2134:	
;main.c: 896: PWMCON0 = 0X01;
	movlw	low(01h)
	movwf	(21)	;volatile
	line	897
;main.c: 897: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	898
	
l858:	
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
psect	text11,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
	line	4
global __ptext11
__ptext11:	;psect for function ___lbdiv
psect	text11
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
	
l2260:	
	clrf	(___lbdiv@quotient)
	line	10
	
l2262:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1671
	goto	u1670
u1671:
	goto	l2280
u1670:
	line	11
	
l2264:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2268
	
l1156:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l2266:	
	incf	(___lbdiv@counter),f
	line	12
	
l2268:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1681
	goto	u1680
u1681:
	goto	l1156
u1680:
	line	16
	
l1158:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l2270:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1691
	goto	u1690
u1691:
	goto	l2276
u1690:
	line	19
	
l2272:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2274:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2276:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l2278:	
	decfsz	(___lbdiv@counter),f
	goto	u1701
	goto	u1700
u1701:
	goto	l1158
u1700:
	line	25
	
l2280:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1161:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_checkOutA

;; *************** function _checkOutA *****************
;; Defined at:
;;		line 576 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
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
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
	line	576
global __ptext12
__ptext12:	;psect for function _checkOutA
psect	text12
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
	line	576
	global	__size_of_checkOutA
	__size_of_checkOutA	equ	__end_of_checkOutA-_checkOutA
	
_checkOutA:	
;incstack = 0
	opt	stack 4
; Regs used in _checkOutA: [wreg+status,2+status,0+pclath+cstack]
	line	578
	
l3022:	
;main.c: 578: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3111
	goto	u3110
u3111:
	goto	l3026
u3110:
	line	580
	
l3024:	
;main.c: 579: {
;main.c: 580: test_adc = ADC_Sample(4, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(04h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	581
;main.c: 581: }
	goto	l3028
	line	584
	
l3026:	
;main.c: 582: else
;main.c: 583: {
;main.c: 584: test_adc = ADC_Sample(0, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	586
	
l3028:	
;main.c: 585: }
;main.c: 586: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l3122
u3120:
	line	588
	
l3030:	
;main.c: 587: {
;main.c: 588: if(chrgFlag && adresult > 210)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l3040
u3130:
	
l3032:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	0D3h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u3141
	goto	u3140
u3141:
	goto	l3040
u3140:
	line	590
	
l3034:	
;main.c: 589: {
;main.c: 590: if(++overChrgTime > 10)
	movlw	low(0Bh)
	incf	(_overChrgTime),f
	subwf	((_overChrgTime)),w
	skipc
	goto	u3151
	goto	u3150
u3151:
	goto	l3042
u3150:
	line	592
	
l3036:	
;main.c: 591: {
;main.c: 592: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	593
	
l3038:	
;main.c: 593: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l3042
	line	599
	
l3040:	
;main.c: 597: else
;main.c: 598: {
;main.c: 599: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	601
	
l3042:	
;main.c: 600: }
;main.c: 601: outADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_outADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_outADValue)
	line	603
	
l3044:	
;main.c: 603: if(workStep && (outADValue > 220))
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3161
	goto	u3160
u3161:
	goto	l3052
u3160:
	
l3046:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	0DDh
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3171
	goto	u3170
u3171:
	goto	l3052
u3170:
	line	605
	
l3048:	
;main.c: 604: {
;main.c: 605: if(++workOverOutTime > 50)
	movlw	low(033h)
	incf	(_workOverOutTime),f
	subwf	((_workOverOutTime)),w
	skipc
	goto	u3181
	goto	u3180
u3181:
	goto	l3054
u3180:
	line	607
	
l3050:	
;main.c: 606: {
;main.c: 607: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	608
;main.c: 608: workStep = 0;
	clrf	(_workStep)
	goto	l3054
	line	613
	
l3052:	
;main.c: 611: else
;main.c: 612: {
;main.c: 613: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	615
	
l3054:	
	line	616
	
l3056:	
;main.c: 616: if(workStep < 6 && outADValue > maxtempV)
	movlw	low(06h)
	subwf	(_workStep),w
	skipnc
	goto	u3191
	goto	u3190
u3191:
	goto	l3064
u3190:
	
l3058:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	029h
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3201
	goto	u3200
u3201:
	goto	l3064
u3200:
	line	618
	
l3060:	
;main.c: 617: {
;main.c: 618: if(++overCount > 5)
	movlw	low(06h)
	incf	(_overCount),f
	subwf	((_overCount)),w
	skipc
	goto	u3211
	goto	u3210
u3211:
	goto	l3118
u3210:
	line	620
	
l3062:	
;main.c: 619: {
;main.c: 620: overCount = 5;
	movlw	low(05h)
	movwf	(_overCount)
	goto	l3118
	line	623
	
l3064:	
;main.c: 623: else if(outADValue > (maxtempV+3))
	movlw	0
	subwf	(_outADValue+1),w
	movlw	02Ch
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l3070
u3220:
	line	625
	
l3066:	
;main.c: 624: {
;main.c: 625: if(++overCount > 5)
	movlw	low(06h)
	incf	(_overCount),f
	subwf	((_overCount)),w
	skipc
	goto	u3231
	goto	u3230
u3231:
	goto	l3118
u3230:
	goto	l3062
	line	632
	
l3070:	
;main.c: 630: else
;main.c: 631: {
;main.c: 632: unsigned char maxAout = 7;
	movlw	low(07h)
	movwf	(checkOutA@maxAout)
	line	633
	
l3072:	
;main.c: 633: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u3241
	goto	u3240
u3241:
	goto	l3076
u3240:
	line	635
	
l3074:	
;main.c: 634: {
;main.c: 635: maxAout = maxAout + 5;
	movlw	low(05h)
	addwf	(checkOutA@maxAout),f
	line	636
;main.c: 636: }
	goto	l809
	line	637
	
l3076:	
;main.c: 637: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3251
	goto	u3250
u3251:
	goto	l3080
u3250:
	line	639
	
l3078:	
;main.c: 638: {
;main.c: 639: maxAout = maxAout + 6;
	movlw	low(06h)
	addwf	(checkOutA@maxAout),f
	line	640
;main.c: 640: }
	goto	l809
	line	641
	
l3080:	
;main.c: 641: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3261
	goto	u3260
u3261:
	goto	l3084
u3260:
	line	643
	
l3082:	
;main.c: 642: {
;main.c: 643: maxAout = maxAout + 7;
	movlw	low(07h)
	addwf	(checkOutA@maxAout),f
	line	644
;main.c: 644: }
	goto	l809
	line	645
	
l3084:	
;main.c: 645: else if(workStep == 4)
		movlw	4
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3271
	goto	u3270
u3271:
	goto	l3088
u3270:
	goto	l3082
	line	649
	
l3088:	
;main.c: 649: else if(workStep == 5)
		movlw	5
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l3092
u3280:
	line	651
	
l3090:	
;main.c: 650: {
;main.c: 651: maxAout = maxAout + 8;
	movlw	low(08h)
	addwf	(checkOutA@maxAout),f
	line	652
;main.c: 652: }
	goto	l809
	line	653
	
l3092:	
;main.c: 653: else if(workStep == 6)
		movlw	6
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l813
u3290:
	goto	l3090
	line	657
	
l813:	
	
l809:	
;main.c: 656: }
;main.c: 657: if(overCount > 0)
	movf	((_overCount)),w
	btfsc	status,2
	goto	u3301
	goto	u3300
u3301:
	goto	l3098
u3300:
	line	659
	
l3096:	
;main.c: 658: {
;main.c: 659: overCount--;
	decf	(_overCount),f
	line	661
	
l3098:	
;main.c: 660: }
;main.c: 661: if(outADValue > maxAout)
	movf	(checkOutA@maxAout),w
	movwf	(??_checkOutA+0)+0
	clrf	(??_checkOutA+0)+0+1
	movf	(_outADValue+1),w
	subwf	1+(??_checkOutA+0)+0,w
	skipz
	goto	u3315
	movf	(_outADValue),w
	subwf	0+(??_checkOutA+0)+0,w
u3315:
	skipnc
	goto	u3311
	goto	u3310
u3311:
	goto	l3110
u3310:
	line	663
	
l3100:	
;main.c: 662: {
;main.c: 663: if(++addPowerCount > 3)
	movlw	low(04h)
	incf	(_addPowerCount),f
	subwf	((_addPowerCount)),w
	skipc
	goto	u3321
	goto	u3320
u3321:
	goto	l3118
u3320:
	line	665
	
l3102:	
;main.c: 664: {
;main.c: 665: addPowerCount = 3;
	movlw	low(03h)
	movwf	(_addPowerCount)
	line	666
	
l3104:	
;main.c: 666: if(startTime == 0)
	movf	((_startTime)),w
	btfss	status,2
	goto	u3331
	goto	u3330
u3331:
	goto	l3108
u3330:
	line	668
	
l3106:	
;main.c: 667: {
;main.c: 668: tempDuty = 72 + (workStep*4);
	movf	(_workStep),w
	movwf	(??_checkOutA+0)+0
	movlw	(02h)-1
u3345:
	clrc
	rlf	(??_checkOutA+0)+0,f
	addlw	-1
	skipz
	goto	u3345
	clrc
	rlf	(??_checkOutA+0)+0,w
	addlw	048h
	movwf	(_tempDuty)
	line	670
;main.c: 670: }
	goto	l3118
	line	673
	
l3108:	
;main.c: 671: else
;main.c: 672: {
;main.c: 673: tempDuty = maxDuty;
	movf	(_maxDuty),w
	movwf	(_tempDuty)
	goto	l3118
	line	680
	
l3110:	
;main.c: 678: else
;main.c: 679: {
;main.c: 680: addPowerCount = 0;
	clrf	(_addPowerCount)
	line	681
	
l3112:	
;main.c: 681: if(tempDuty > maxDuty)
	movf	(_tempDuty),w
	subwf	(_maxDuty),w
	skipnc
	goto	u3351
	goto	u3350
u3351:
	goto	l3108
u3350:
	line	683
	
l3114:	
;main.c: 682: {
;main.c: 683: tempDuty--;
	decf	(_tempDuty),f
	line	693
;main.c: 684: }
	
l3118:	
;main.c: 688: }
;main.c: 690: }
;main.c: 692: }
;main.c: 693: PWMD01H = 0X00;
	clrf	(30)	;volatile
	line	694
	
l3120:	
;main.c: 694: PWMD1L = tempDuty;
	movf	(_tempDuty),w
	movwf	(26)	;volatile
	line	695
;main.c: 695: }
	goto	l828
	line	698
	
l3122:	
;main.c: 696: else
;main.c: 697: {
;main.c: 698: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	699
;main.c: 699: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	700
	
l3124:	
;main.c: 700: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkOutA+0)+0),f
	u4037:
decfsz	(??_checkOutA+0)+0,f
	goto	u4037
opt asmopt_pop

	line	702
	
l828:	
	return
	opt stack 0
GLOBAL	__end_of_checkOutA
	__end_of_checkOutA:
	signat	_checkOutA,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 704 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
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
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	704
global __ptext13
__ptext13:	;psect for function _checkBatAD
psect	text13
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
	line	704
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	706
	
l3278:	
;main.c: 706: test_adc = ADC_Sample(2, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(02h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	707
	
l3280:	
;main.c: 707: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3661
	goto	u3660
u3661:
	goto	l3318
u3660:
	line	709
	
l3282:	
;main.c: 708: {
;main.c: 709: batADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_batADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_batADValue)
	line	710
;main.c: 710: if(batADValue < 1117)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Dh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3671
	goto	u3670
u3671:
	goto	l3300
u3670:
	line	712
	
l3284:	
;main.c: 711: {
;main.c: 712: pwStep = 0;
	clrf	(_pwStep)
	line	713
	
l3286:	
;main.c: 713: if(++count8s > 800)
	incf	(_count8s),f
	skipnz
	incf	(_count8s+1),f
	movlw	03h
	subwf	((_count8s+1)),w
	movlw	021h
	skipnz
	subwf	((_count8s)),w
	skipc
	goto	u3681
	goto	u3680
u3681:
	goto	l3312
u3680:
	line	715
	
l3288:	
;main.c: 714: {
;main.c: 715: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	716
	
l3290:	
;main.c: 716: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	717
	
l3292:	
;main.c: 717: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3691
	goto	u3690
u3691:
	goto	l3296
u3690:
	line	719
	
l3294:	
;main.c: 718: {
;main.c: 719: overWorkTime = 180;
	movlw	low(0B4h)
	movwf	(_overWorkTime)
	line	720
;main.c: 720: preLedStep = workStep;
	movf	(_workStep),w
	movwf	(_preLedStep)
	line	722
	
l3296:	
;main.c: 721: }
;main.c: 722: prePwStep = 0;
	clrf	(_prePwStep)
	line	723
	
l3298:	
;main.c: 723: workStep = 0;
	clrf	(_workStep)
	goto	l3312
	line	728
	
l3300:	
;main.c: 726: else
;main.c: 727: {
;main.c: 728: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	729
	
l3302:	
;main.c: 729: if(batADValue >= 1340)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	03Ch
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3701
	goto	u3700
u3701:
	goto	l3306
u3700:
	line	731
	
l3304:	
;main.c: 730: {
;main.c: 731: pwStep = ((batADValue - 1340) /2) + 13;
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
	line	732
;main.c: 732: }
	goto	l3308
	line	735
	
l3306:	
;main.c: 733: else
;main.c: 734: {
;main.c: 735: pwStep = (batADValue - 1117) / 16;
	movf	(_batADValue),w
	addlw	low(0FBA3h)
	movwf	(??_checkBatAD+0)+0
	movf	(_batADValue+1),w
	skipnc
	addlw	1
	addlw	high(0FBA3h)
	movwf	1+(??_checkBatAD+0)+0
	movlw	04h
u3715:
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	addlw	-1
	skipz
	goto	u3715
	movf	0+(??_checkBatAD+0)+0,w
	movwf	(_pwStep)
	line	737
	
l3308:	
;main.c: 736: }
;main.c: 737: if(pwStep > 99)
	movlw	low(064h)
	subwf	(_pwStep),w
	skipc
	goto	u3721
	goto	u3720
u3721:
	goto	l3312
u3720:
	line	739
	
l3310:	
;main.c: 738: {
;main.c: 739: pwStep = 99;
	movlw	low(063h)
	movwf	(_pwStep)
	line	742
	
l3312:	
;main.c: 740: }
;main.c: 741: }
;main.c: 742: if(chrgFlag && batADValue > 1861)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3731
	goto	u3730
u3731:
	goto	l3322
u3730:
	
l3314:	
	movlw	07h
	subwf	(_batADValue+1),w
	movlw	046h
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3741
	goto	u3740
u3741:
	goto	l3322
u3740:
	line	744
	
l3316:	
;main.c: 743: {
;main.c: 744: protectFlag = 1;
	clrf	(_protectFlag)
	incf	(_protectFlag),f
	goto	l3322
	line	749
	
l3318:	
;main.c: 747: else
;main.c: 748: {
;main.c: 749: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	750
;main.c: 750: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	751
	
l3320:	
;main.c: 751: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u4047:
decfsz	(??_checkBatAD+0)+0,f
	goto	u4047
opt asmopt_pop

	line	753
	
l3322:	
;main.c: 752: }
;main.c: 753: test_adc = ADC_Sample(3, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(03h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	754
	
l3324:	
;main.c: 754: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3751
	goto	u3750
u3751:
	goto	l3342
u3750:
	line	756
	
l3326:	
;main.c: 755: {
;main.c: 756: if(chrgFlag && adresult > 100)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3761
	goto	u3760
u3761:
	goto	l849
u3760:
	
l3328:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	065h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u3771
	goto	u3770
u3771:
	goto	l849
u3770:
	line	759
	
l3330:	
;main.c: 757: {
;main.c: 759: if(adresult > 810 || (batADValue - adresult) > 810)
	movlw	03h
	subwf	(_adresult+1),w	;volatile
	movlw	02Bh
	skipnz
	subwf	(_adresult),w	;volatile
	skipnc
	goto	u3781
	goto	u3780
u3781:
	goto	l3334
u3780:
	
l3332:	
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
	movlw	02Bh
	skipnz
	subwf	0+(??_checkBatAD+0)+0,w
	skipc
	goto	u3791
	goto	u3790
u3791:
	goto	l3340
u3790:
	line	762
	
l3334:	
;main.c: 760: {
;main.c: 762: if(++countHalfFull > 250)
	movlw	low(0FBh)
	incf	(_countHalfFull),f
	subwf	((_countHalfFull)),w
	skipc
	goto	u3801
	goto	u3800
u3801:
	goto	l842
u3800:
	line	764
	
l3336:	
;main.c: 763: {
;main.c: 764: countHalfFull = 0;
	clrf	(_countHalfFull)
	line	765
	
l3338:	
;main.c: 765: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l849
	line	770
	
l3340:	
;main.c: 768: else
;main.c: 769: {
;main.c: 770: countHalfFull = 0;
	clrf	(_countHalfFull)
	goto	l849
	line	772
	
l842:	
	line	773
;main.c: 771: }
;main.c: 772: }
;main.c: 773: }
	goto	l849
	line	776
	
l3342:	
;main.c: 774: else
;main.c: 775: {
;main.c: 776: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	777
;main.c: 777: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	778
	
l3344:	
;main.c: 778: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u4057:
decfsz	(??_checkBatAD+0)+0,f
	goto	u4057
opt asmopt_pop

	line	780
	
l849:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 1011 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
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
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	1011
global __ptext14
__ptext14:	;psect for function _ADC_Sample
psect	text14
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
	line	1011
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	1013
	
l2932:	
;main.c: 1013: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1014
	
l2934:	
;main.c: 1014: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1015
;main.c: 1015: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	1017
	
l2936:	
;main.c: 1017: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u2931
	goto	u2930
u2931:
	goto	l2942
u2930:
	
l2938:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u2941
	goto	u2940
u2941:
	goto	l2942
u2940:
	line	1020
	
l2940:	
;main.c: 1018: {
;main.c: 1020: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1021
;main.c: 1021: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_ADC_Sample+0)+0),f
	u4067:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u4067
	nop2
opt asmopt_pop

	line	1022
;main.c: 1022: }
	goto	l2944
	line	1024
	
l2942:	
;main.c: 1023: else
;main.c: 1024: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1026
	
l2944:	
;main.c: 1026: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u2951
	goto	u2950
u2951:
	goto	l2950
u2950:
	line	1028
	
l2946:	
;main.c: 1027: {
;main.c: 1028: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	1029
	
l2948:	
;main.c: 1029: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	1031
	
l2950:	
	line	1032
	
l2952:	
;main.c: 1032: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	1034
	
l2958:	
;main.c: 1033: {
;main.c: 1034: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u2965:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u2965
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	1035
# 1035 "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
nop ;# 
	line	1036
# 1036 "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
nop ;# 
	line	1037
# 1037 "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
nop ;# 
	line	1038
# 1038 "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
nop ;# 
psect	text14
	line	1039
	
l2960:	
;main.c: 1039: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	1041
	
l2962:	
;main.c: 1041: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	1042
;main.c: 1042: while (GODONE)
	goto	l881
	
l882:	
	line	1044
;main.c: 1043: {
;main.c: 1044: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	1046
;main.c: 1046: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u2971
	goto	u2970
u2971:
	goto	l881
u2970:
	line	1047
	
l2964:	
;main.c: 1047: return 0;
	movlw	low(0)
	goto	l884
	line	1048
	
l881:	
	line	1042
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u2981
	goto	u2980
u2981:
	goto	l882
u2980:
	line	1050
	
l2968:	
;main.c: 1048: }
;main.c: 1050: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l2970:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	1052
	
l2972:	
;main.c: 1052: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u2991
	goto	u2990
u2991:
	goto	l2976
u2990:
	line	1054
	
l2974:	
;main.c: 1053: {
;main.c: 1054: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	1055
;main.c: 1055: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1056
;main.c: 1056: }
	goto	l887
	line	1057
	
l2976:	
;main.c: 1057: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u3005
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u3005:
	skipnc
	goto	u3001
	goto	u3000
u3001:
	goto	l2980
u3000:
	line	1058
	
l2978:	
;main.c: 1058: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l887
	line	1059
	
l2980:	
;main.c: 1059: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u3015
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u3015:
	skipnc
	goto	u3011
	goto	u3010
u3011:
	goto	l887
u3010:
	line	1060
	
l2982:	
;main.c: 1060: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1062
	
l887:	
;main.c: 1062: adsum += ad_temp;
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
	goto	u3021
	addwf	(ADC_Sample@adsum+1),f	;volatile
u3021:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3022
	addwf	(ADC_Sample@adsum+2),f	;volatile
u3022:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3023
	addwf	(ADC_Sample@adsum+3),f	;volatile
u3023:

	line	1032
	
l2984:	
	incf	(ADC_Sample@i),f
	
l2986:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u3031
	goto	u3030
u3031:
	goto	l2958
u3030:
	line	1064
	
l2988:	
;main.c: 1063: }
;main.c: 1064: adsum -= admax;
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
	goto	u3045
	goto	u3046
u3045:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3046:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3047
	goto	u3048
u3047:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3048:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3049
	goto	u3040
u3049:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3040:

	line	1065
;main.c: 1065: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u3055
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u3055
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u3055
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u3055:
	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l891
u3050:
	line	1066
	
l2990:	
;main.c: 1066: adsum -= admin;
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
	goto	u3065
	goto	u3066
u3065:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3066:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3067
	goto	u3068
u3067:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3068:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3069
	goto	u3060
u3069:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3060:

	goto	l2992
	line	1067
	
l891:	
	line	1068
;main.c: 1067: else
;main.c: 1068: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1070
	
l2992:	
;main.c: 1070: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u3075:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u3070:
	addlw	-1
	skipz
	goto	u3075
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	1072
	
l2994:	
;main.c: 1072: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1073
	
l2996:	
;main.c: 1073: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	1074
	
l2998:	
;main.c: 1074: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1075
	
l3000:	
;main.c: 1075: return 0xA5;
	movlw	low(0A5h)
	line	1077
	
l884:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 935 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
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
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	935
global __ptext15
__ptext15:	;psect for function _Sleep_Mode
psect	text15
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
	line	935
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 4
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	937
	
l2796:	
;main.c: 937: INTCON = 0;
	clrf	(11)	;volatile
	line	939
;main.c: 939: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	941
	
l2798:	
;main.c: 941: TRISA = 0x1F;
	movlw	low(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	942
	
l2800:	
;main.c: 942: WPUA = 0B00000000;
	clrf	(136)^080h	;volatile
	line	943
	
l2802:	
;main.c: 943: PORTA = 0x00;
	clrf	(134)^080h	;volatile
	line	944
	
l2804:	
;main.c: 944: TRISB = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	945
;main.c: 945: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	946
	
l2806:	
;main.c: 946: WPUB = 0B00000100;
	movlw	low(04h)
	movwf	(8)	;volatile
	line	948
	
l2808:	
;main.c: 948: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	949
	
l2810:	
;main.c: 949: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	951
	
l2812:	
;main.c: 951: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	953
;main.c: 953: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	955
;main.c: 955: IOCA = 0B00000010;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(137)^080h	;volatile
	line	956
;main.c: 956: IOCB = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	958
	
l2814:	
;main.c: 958: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	959
	
l2816:	
;main.c: 959: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	960
	
l2818:	
;main.c: 960: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	961
	
l2820:	
;main.c: 961: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	963
	
l2822:	
;main.c: 963: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	964
	
l2824:	
;main.c: 964: PIR1 = 0;
	clrf	(13)	;volatile
	line	965
	
l2826:	
;main.c: 965: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	967
	
l2828:	
;main.c: 967: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	968
	
l2830:	
;main.c: 968: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	969
	
l2832:	
;main.c: 969: PORTB;
	movf	(6),w	;volatile
	line	970
	
l2834:	
;main.c: 970: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	971
# 971 "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
clrwdt ;# 
	line	973
# 973 "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
sleep ;# 
	line	975
# 975 "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
nop ;# 
	line	976
# 976 "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
clrwdt ;# 
	line	977
# 977 "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
nop ;# 
	line	978
# 978 "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
nop ;# 
	line	979
# 979 "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
nop ;# 
	line	980
# 980 "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
nop ;# 
	line	981
# 981 "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
nop ;# 
psect	text15
	line	982
	
l2836:	
;main.c: 982: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u2771
	goto	u2770
u2771:
	goto	l870
u2770:
	
l2838:	
	bcf	(107/8),(107)&7	;volatile
	
l870:	
	line	983
;main.c: 983: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u2781
	goto	u2780
u2781:
	goto	l871
u2780:
	
l2840:	
	bcf	(88/8),(88)&7	;volatile
	
l871:	
	line	984
;main.c: 984: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u2791
	goto	u2790
u2791:
	goto	l2844
u2790:
	
l2842:	
	bcf	(105/8),(105)&7	;volatile
	line	985
	
l2844:	
;main.c: 985: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	986
;main.c: 986: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	987
	
l2846:	
;main.c: 987: Init_System();
	fcall	_Init_System
	line	988
	
l2848:	
;main.c: 988: AD_Init();
	fcall	_AD_Init
	line	989
	
l873:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 791 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
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
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	791
global __ptext16
__ptext16:	;psect for function _Init_System
psect	text16
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
	line	791
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	793
	
l2102:	
# 793 "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
nop ;# 
	line	794
# 794 "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
clrwdt ;# 
psect	text16
	line	795
	
l2104:	
;main.c: 795: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	796
# 796 "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
clrwdt ;# 
psect	text16
	line	797
	
l2106:	
;main.c: 797: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	799
	
l2108:	
;main.c: 799: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	800
;main.c: 800: WPDA = 0x02;
	movlw	low(02h)
	movwf	(135)^080h	;volatile
	line	801
;main.c: 801: WPUB = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	803
;main.c: 803: TRISA = 0x1F;
	movlw	low(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	804
;main.c: 804: TRISB = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	806
	
l2110:	
;main.c: 806: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	807
	
l2112:	
;main.c: 807: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	811
;main.c: 811: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	812
	
l2114:	
;main.c: 812: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	813
	
l2116:	
;main.c: 813: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	815
;main.c: 815: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	816
;main.c: 816: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	817
	
l852:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 828 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
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
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	828
global __ptext17
__ptext17:	;psect for function _AD_Init
psect	text17
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
	line	828
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _AD_Init: [wreg+status,2]
	line	861
	
l2118:	
;main.c: 861: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	878
	
l2120:	
;main.c: 878: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	879
	
l2122:	
;main.c: 879: ANSEL0 = 0X1D;
	movlw	low(01Dh)
	movwf	(147)^080h	;volatile
	line	880
	
l855:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 100 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
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
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	100
global __ptext18
__ptext18:	;psect for function _Isr_Timer
psect	text18
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
	line	100
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
psect	text18
	line	102
	
i1l2850:	
;main.c: 102: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u280_21
	goto	u280_20
u280_21:
	goto	i1l656
u280_20:
	line	104
	
i1l2852:	
;main.c: 103: {
;main.c: 104: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	105
	
i1l2854:	
;main.c: 105: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u281_21
	goto	u281_20
u281_21:
	goto	i1l2864
u281_20:
	line	107
	
i1l2856:	
;main.c: 106: {
;main.c: 107: intCount = 0;
	clrf	(_intCount)
	line	108
	
i1l2858:	
;main.c: 108: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	109
	
i1l2860:	
;main.c: 109: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u282_21
	goto	u282_20
u282_21:
	goto	i1l2864
u282_20:
	line	111
	
i1l2862:	
;main.c: 110: {
;main.c: 111: count1s = 0;
	clrf	(_count1s)
	line	114
	
i1l2864:	
;main.c: 112: }
;main.c: 113: }
;main.c: 114: ledShow();
	fcall	_ledShow
	line	115
	
i1l2866:	
;main.c: 115: intCount10++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_intCount10),f
	line	118
	
i1l656:	
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
;;		line 163 in file "C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
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
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	163
global __ptext19
__ptext19:	;psect for function _ledShow
psect	text19
	file	"C:\mcuproject\scm\zdt\C212_062B_SOP14\main.c"
	line	163
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 4
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	165
	
i1l2302:	
;main.c: 165: if(++ledCntTime > 5)
	movlw	low(06h)
	incf	(_ledCntTime),f
	subwf	((_ledCntTime)),w
	skipc
	goto	u174_21
	goto	u174_20
u174_21:
	goto	i1l2352
u174_20:
	line	167
	
i1l2304:	
;main.c: 166: {
;main.c: 167: ledCntTime = 0;
	clrf	(_ledCntTime)
	line	168
	
i1l2306:	
;main.c: 168: if(++ledCnt > 6)
	movlw	low(07h)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u175_21
	goto	u175_20
u175_21:
	goto	i1l2310
u175_20:
	line	170
	
i1l2308:	
;main.c: 169: {
;main.c: 170: ledCnt = 0;
	clrf	(_ledCnt)
	line	172
	
i1l2310:	
;main.c: 171: }
;main.c: 172: PORTA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(5/8),(5)&7	;volatile
	line	173
	
i1l2312:	
;main.c: 173: PORTB &= 0xC7;
	movlw	low(0C7h)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(6),f	;volatile
	line	174
	
i1l2314:	
;main.c: 174: TRISA |= 0x20;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(133)^080h+(5/8),(5)&7	;volatile
	line	175
	
i1l2316:	
;main.c: 175: TRISB |= 0x38;
	movlw	low(038h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(5),f	;volatile
	goto	i1l2352
	line	183
	
i1l2318:	
;main.c: 183: if(ledStep > 0)
	movf	((_ledStep)),w
	btfsc	status,2
	goto	u176_21
	goto	u176_20
u176_21:
	goto	i1l691
u176_20:
	line	185
	
i1l2320:	
;main.c: 184: {
;main.c: 185: TRISB &= 0xE7;
	movlw	low(0E7h)
	andwf	(5),f	;volatile
	line	186
	
i1l2322:	
;main.c: 186: PORTB |= 0x10;
	bsf	(6)+(4/8),(4)&7	;volatile
	goto	i1l691
	line	190
	
i1l2324:	
;main.c: 190: if(ledStep > 1)
	movlw	low(02h)
	subwf	(_ledStep),w
	skipc
	goto	u177_21
	goto	u177_20
u177_21:
	goto	i1l691
u177_20:
	line	192
	
i1l2326:	
;main.c: 191: {
;main.c: 192: TRISB &= 0xCF;
	movlw	low(0CFh)
	andwf	(5),f	;volatile
	line	193
	
i1l2328:	
;main.c: 193: PORTB |= 0x20;
	bsf	(6)+(5/8),(5)&7	;volatile
	goto	i1l691
	line	197
	
i1l2330:	
;main.c: 197: if(ledStep > 2)
	movlw	low(03h)
	subwf	(_ledStep),w
	skipc
	goto	u178_21
	goto	u178_20
u178_21:
	goto	i1l691
u178_20:
	line	199
	
i1l2332:	
;main.c: 198: {
;main.c: 199: TRISB &= 0xE7;
	movlw	low(0E7h)
	andwf	(5),f	;volatile
	line	200
	
i1l2334:	
;main.c: 200: PORTB |= 0x08;
	bsf	(6)+(3/8),(3)&7	;volatile
	goto	i1l691
	line	204
	
i1l2336:	
;main.c: 204: if(ledStep > 3)
	movlw	low(04h)
	subwf	(_ledStep),w
	skipc
	goto	u179_21
	goto	u179_20
u179_21:
	goto	i1l691
u179_20:
	line	206
	
i1l2338:	
;main.c: 205: {
;main.c: 206: TRISB &= 0xCF;
	movlw	low(0CFh)
	andwf	(5),f	;volatile
	goto	i1l2322
	line	211
	
i1l2342:	
;main.c: 211: if(ledStep > 4)
	movlw	low(05h)
	subwf	(_ledStep),w
	skipc
	goto	u180_21
	goto	u180_20
u180_21:
	goto	i1l691
u180_20:
	line	213
	
i1l2344:	
;main.c: 212: {
;main.c: 213: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	214
;main.c: 214: TRISB &= 0xDF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(5/8),(5)&7	;volatile
	line	215
;main.c: 215: PORTB |= 0x20;
	bsf	(6)+(5/8),(5)&7	;volatile
	goto	i1l691
	line	219
	
i1l2346:	
;main.c: 219: if(ledStep > 5)
	movlw	low(06h)
	subwf	(_ledStep),w
	skipc
	goto	u181_21
	goto	u181_20
u181_21:
	goto	i1l691
u181_20:
	line	221
	
i1l2348:	
;main.c: 220: {
;main.c: 221: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	222
;main.c: 222: TRISB &= 0xDF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(5/8),(5)&7	;volatile
	line	223
;main.c: 223: PORTA |= 0x20;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(5/8),(5)&7	;volatile
	goto	i1l691
	line	178
	
i1l2352:	
	movf	(_ledCnt),w
	; Switch size 1, requested type "space"
; Number of cases is 7, Range of values is 0 to 6
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           13     6 (fixed)
; simple_byte           22    12 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	7
	subwf	fsr,w
skipnc
goto i1l691
movlw high(i1S3462)
movwf pclath
	movlw low(i1S3462)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S3462:
	ljmp	i1l691
	ljmp	i1l2318
	ljmp	i1l2324
	ljmp	i1l2330
	ljmp	i1l2336
	ljmp	i1l2342
	ljmp	i1l2346
psect	text19

	line	229
	
i1l691:	
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
