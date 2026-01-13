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
	global	_batADValue
	global	_prePwStep
	global	_workStep
	global	_count900s
	global	_count8s
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
	file	"D282_062B_SOP14.as"
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

	file	"D282_062B_SOP14.as"
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
;;		line 124 in file "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
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
	file	"C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
	line	124
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
	line	124
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	126
	
l3419:	
;main.c: 126: Init_System();
	fcall	_Init_System
	line	127
;main.c: 127: AD_Init();
	fcall	_AD_Init
	line	128
	
l3421:	
;main.c: 128: firstTime = 100;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_firstTime)
	line	129
;main.c: 129: while (1)
	
l661:	
	line	131
# 131 "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
clrwdt ;# 
psect	maintext
	line	132
	
l3423:	
;main.c: 132: if(intCount10 > 10)
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_intCount10),w
	skipc
	goto	u3961
	goto	u3960
u3961:
	goto	l3429
u3960:
	line	134
	
l3425:	
;main.c: 133: {
;main.c: 134: intCount10 = 0;
	clrf	(_intCount10)
	line	135
	
l3427:	
;main.c: 135: checkOutA();
	fcall	_checkOutA
	line	137
	
l3429:	
;main.c: 136: }
;main.c: 137: if(!IntFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u3971
	goto	u3970
u3971:
	goto	l3433
u3970:
	goto	l661
	line	139
	
l3433:	
;main.c: 139: IntFlag = 0;
	clrf	(_IntFlag)
	line	140
	
l3435:	
;main.c: 140: chrgCtr();
	fcall	_chrgCtr
	line	141
	
l3437:	
;main.c: 141: checkBatAD();
	fcall	_checkBatAD
	line	142
	
l3439:	
;main.c: 142: if(chrgFlag == 0 && lowBatFlag == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3981
	goto	u3980
u3981:
	goto	l665
u3980:
	
l3441:	
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u3991
	goto	u3990
u3991:
	goto	l665
u3990:
	line	144
	
l3443:	
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
	
l3445:	
;main.c: 148: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && showBatTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u4001
	goto	u4000
u4001:
	goto	l3461
u4000:
	
l3447:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u4011
	goto	u4010
u4011:
	goto	l3461
u4010:
	
l3449:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u4021
	goto	u4020
u4021:
	goto	l3461
u4020:
	
l3451:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u4031
	goto	u4030
u4031:
	goto	l3461
u4030:
	
l3453:	
	movf	((_showBatTime)),w
	btfss	status,2
	goto	u4041
	goto	u4040
u4041:
	goto	l3461
u4040:
	line	150
	
l3455:	
;main.c: 149: {
;main.c: 150: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u4051
	goto	u4050
u4051:
	goto	l661
u4050:
	line	152
	
l3457:	
;main.c: 151: {
;main.c: 152: sleepTime = 0;
	clrf	(_sleepTime)
	line	153
	
l3459:	
;main.c: 153: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l661
	line	158
	
l3461:	
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
;;		line 539 in file "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
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
	line	539
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
	line	539
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	542
	
l2725:	
;main.c: 542: if(startTime > 0)
	movf	((_startTime)),w
	btfsc	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l2729
u2600:
	line	544
	
l2727:	
;main.c: 543: {
;main.c: 544: startTime--;
	decf	(_startTime),f
	line	546
	
l2729:	
;main.c: 545: }
;main.c: 546: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l2755
u2610:
	line	548
	
l2731:	
;main.c: 547: {
;main.c: 548: if((PWMCON0 & 0x02) == 0)
	btfsc	(21),(1)&7	;volatile
	goto	u2621
	goto	u2620
u2621:
	goto	l2735
u2620:
	line	550
	
l2733:	
;main.c: 549: {
;main.c: 550: pwmInit();
	fcall	_pwmInit
	line	552
	
l2735:	
;main.c: 551: }
;main.c: 552: maxDuty = 43 + (workStep*2);
	clrc
	rlf	(_workStep),w
	addlw	02Bh
	movwf	(_maxDuty)
	line	553
	
l2737:	
;main.c: 553: if(overCount >= 5)
	movlw	low(05h)
	subwf	(_overCount),w
	skipc
	goto	u2631
	goto	u2630
u2631:
	goto	l2747
u2630:
	line	555
	
l2739:	
;main.c: 554: {
;main.c: 555: if(++count5s > 500)
	incf	(_count5s),f
	skipnz
	incf	(_count5s+1),f
	movlw	01h
	subwf	((_count5s+1)),w
	movlw	0F5h
	skipnz
	subwf	((_count5s)),w
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l2749
u2640:
	line	557
	
l2741:	
;main.c: 556: {
;main.c: 557: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	558
	
l2743:	
;main.c: 558: overWorkTime = 180;
	movlw	low(0B4h)
	movwf	(_overWorkTime)
	line	559
	
l2745:	
;main.c: 559: preLedStep = workStep;
	movf	(_workStep),w
	movwf	(_preLedStep)
	line	560
;main.c: 560: workStep = 0;
	clrf	(_workStep)
	goto	l2749
	line	566
	
l2747:	
;main.c: 564: else
;main.c: 565: {
;main.c: 566: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	568
	
l2749:	
;main.c: 567: }
;main.c: 568: if(count1s == 0 && ++count900s >= 900)
	movf	((_count1s)),w
	btfss	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l791
u2650:
	
l2751:	
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	movlw	03h
	subwf	((_count900s+1)),w
	movlw	084h
	skipnz
	subwf	((_count900s)),w
	skipc
	goto	u2661
	goto	u2660
u2661:
	goto	l791
u2660:
	line	570
	
l2753:	
;main.c: 569: {
;main.c: 570: workStep = 0;
	clrf	(_workStep)
	goto	l791
	line	575
	
l2755:	
;main.c: 573: else
;main.c: 574: {
;main.c: 575: pwmStop();
	fcall	_pwmStop
	line	576
	
l2757:	
;main.c: 576: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	578
	
l791:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 925 in file "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
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
	line	925
global __ptext2
__ptext2:	;psect for function _pwmStop
psect	text2
	file	"C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
	line	925
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: []
	line	927
	
l2195:	
;main.c: 927: PWMCON0 &= 0XFD;
	bcf	(21)+(1/8),(1)&7	;volatile
	line	928
;main.c: 928: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	929
	
l868:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 910 in file "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
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
	line	910
global __ptext3
__ptext3:	;psect for function _pwmInit
psect	text3
	file	"C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
	line	910
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2]
	line	912
	
l2185:	
;main.c: 912: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	913
;main.c: 913: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	914
	
l2187:	
;main.c: 914: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	917
	
l2189:	
;main.c: 917: PWMD01H = 0;
	clrf	(30)	;volatile
	line	918
;main.c: 918: PWMD1L = 50;
	movlw	low(032h)
	movwf	(26)	;volatile
	line	919
	
l2191:	
;main.c: 919: PWM01DT = 0X00;
	clrf	(31)	;volatile
	line	921
	
l2193:	
;main.c: 921: PWMCON0 = 0X62;
	movlw	low(062h)
	movwf	(21)	;volatile
	line	922
;main.c: 922: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	923
	
l865:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_ledCtr

;; *************** function _ledCtr *****************
;; Defined at:
;;		line 231 in file "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
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
	line	231
global __ptext4
__ptext4:	;psect for function _ledCtr
psect	text4
	file	"C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
	line	231
	global	__size_of_ledCtr
	__size_of_ledCtr	equ	__end_of_ledCtr-_ledCtr
	
_ledCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _ledCtr: [wreg+status,2+status,0+pclath+cstack]
	line	233
	
l3367:	
;main.c: 233: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u3841
	goto	u3840
u3841:
	goto	l3377
u3840:
	line	235
	
l3369:	
;main.c: 234: {
;main.c: 235: firstTime--;
	decf	(_firstTime),f
	line	236
	
l3371:	
;main.c: 236: ledStep = 6;
	movlw	low(06h)
	movwf	(_ledStep)
	line	237
	
l3373:	
;main.c: 237: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u3851
	goto	u3850
u3851:
	goto	l714
u3850:
	line	239
	
l3375:	
;main.c: 238: {
;main.c: 239: prePwStep = pwStep;
	movf	(_pwStep),w
	movwf	(_prePwStep)
	goto	l714
	line	242
	
l3377:	
;main.c: 242: else if(overWorkTime > 0)
	movf	((_overWorkTime)),w
	btfsc	status,2
	goto	u3861
	goto	u3860
u3861:
	goto	l3387
u3860:
	line	244
	
l3379:	
;main.c: 243: {
;main.c: 244: overWorkTime--;
	decf	(_overWorkTime),f
	line	245
	
l3381:	
;main.c: 245: if(overWorkTime % 60 < 30)
	movlw	low(03Ch)
	movwf	(___lbmod@divisor)
	movf	(_overWorkTime),w
	fcall	___lbmod
	movwf	(??_ledCtr+0)+0
	movlw	01Eh
	subwf	(??_ledCtr+0)+0,w
	skipnc
	goto	u3871
	goto	u3870
u3871:
	goto	l3385
u3870:
	line	247
	
l3383:	
;main.c: 246: {
;main.c: 247: ledStep = preLedStep;
	movf	(_preLedStep),w
	movwf	(_ledStep)
	line	248
;main.c: 248: }
	goto	l714
	line	251
	
l3385:	
;main.c: 249: else
;main.c: 250: {
;main.c: 251: ledStep = 0;
	clrf	(_ledStep)
	goto	l714
	line	254
	
l3387:	
;main.c: 254: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u3881
	goto	u3880
u3881:
	goto	l3405
u3880:
	line	256
	
l3389:	
;main.c: 255: {
;main.c: 256: showBatTime--;
	decf	(_showBatTime),f
	line	257
	
l3391:	
;main.c: 257: if(prePwStep >= 14)
	movlw	low(0Eh)
	subwf	(_prePwStep),w
	skipc
	goto	u3891
	goto	u3890
u3891:
	goto	l3395
u3890:
	line	259
	
l3393:	
;main.c: 258: {
;main.c: 259: ledStep = prePwStep/14;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	movwf	(_ledStep)
	line	260
;main.c: 260: }
	goto	l714
	line	261
	
l3395:	
;main.c: 261: else if(prePwStep > 5)
	movlw	low(06h)
	subwf	(_prePwStep),w
	skipc
	goto	u3901
	goto	u3900
u3901:
	goto	l3399
u3900:
	line	263
	
l3397:	
;main.c: 262: {
;main.c: 263: ledStep = 1;
	clrf	(_ledStep)
	incf	(_ledStep),f
	line	264
;main.c: 264: }
	goto	l714
	line	267
	
l3399:	
;main.c: 265: else
;main.c: 266: {
;main.c: 267: if(count1s < 50)
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u3911
	goto	u3910
u3911:
	goto	l3385
u3910:
	goto	l3397
	line	275
	
l702:	
	line	276
;main.c: 274: }
;main.c: 275: }
;main.c: 276: }
	goto	l714
	line	277
	
l3405:	
;main.c: 277: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3921
	goto	u3920
u3921:
	goto	l3409
u3920:
	line	279
	
l3407:	
;main.c: 278: {
;main.c: 279: ledStep = workStep;
	movf	(_workStep),w
	movwf	(_ledStep)
	line	280
;main.c: 280: }
	goto	l714
	line	281
	
l3409:	
;main.c: 281: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3931
	goto	u3930
u3931:
	goto	l3385
u3930:
	line	283
	
l3411:	
;main.c: 282: {
;main.c: 283: if(count1s % 50 == 0)
	movlw	low(032h)
	movwf	(___lbmod@divisor)
	movf	(_count1s),w
	fcall	___lbmod
	xorlw	0
	skipz
	goto	u3941
	goto	u3940
u3941:
	goto	l714
u3940:
	line	285
	
l3413:	
;main.c: 284: {
;main.c: 285: if(++ledStep > 6)
	movlw	low(07h)
	incf	(_ledStep),f
	subwf	((_ledStep)),w
	skipc
	goto	u3951
	goto	u3950
u3951:
	goto	l702
u3950:
	line	287
	
l3415:	
;main.c: 286: {
;main.c: 287: ledStep = lockLedStep;
	movf	(_lockLedStep),w
	movwf	(_ledStep)
	line	295
	
l714:	
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
	
l3019:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l3021:	
	clrf	(___lbmod@rem)
	line	12
	
l3023:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u3105:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u3105
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l3025:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l3027:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u3111
	goto	u3110
u3111:
	goto	l3031
u3110:
	line	15
	
l3029:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l3031:	
	decfsz	(___lbmod@counter),f
	goto	u3121
	goto	u3120
u3121:
	goto	l3023
u3120:
	line	17
	
l3033:	
	movf	(___lbmod@rem),w
	line	18
	
l1168:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 502 in file "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
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
	file	"C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
	line	502
global __ptext6
__ptext6:	;psect for function _keyCtr
psect	text6
	file	"C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
	line	502
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	504
	
l2697:	
;main.c: 504: char kclick = keyRead(0x04 & (~PORTB));
	comf	(6),w	;volatile
	andlw	04h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	505
	
l2699:	
;main.c: 505: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2541
	goto	u2540
u2541:
	goto	l2715
u2540:
	line	507
	
l2701:	
;main.c: 506: {
;main.c: 507: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l2707
u2550:
	line	509
	
l2703:	
;main.c: 508: {
;main.c: 509: if(++workStep > 6)
	movlw	low(07h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l780
u2560:
	line	511
	
l2705:	
;main.c: 510: {
;main.c: 511: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l780
	line	514
	
l2707:	
;main.c: 514: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l2711
u2570:
	line	516
	
l2709:	
;main.c: 515: {
;main.c: 516: showBatTime = 0;
	clrf	(_showBatTime)
	line	517
;main.c: 517: }
	goto	l780
	line	520
	
l2711:	
;main.c: 518: else
;main.c: 519: {
;main.c: 520: showBatTime = 200;
	movlw	low(0C8h)
	movwf	(_showBatTime)
	line	521
	
l2713:	
;main.c: 521: count1s = 0;
	clrf	(_count1s)
	goto	l780
	line	524
	
l2715:	
;main.c: 524: else if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l780
u2580:
	line	526
	
l2717:	
;main.c: 525: {
;main.c: 526: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l778
u2590:
	line	528
	
l2719:	
;main.c: 527: {
;main.c: 528: workStep = 0;
	clrf	(_workStep)
	line	529
;main.c: 529: }
	goto	l780
	line	530
	
l778:	
	line	532
;main.c: 530: else
;main.c: 531: {
;main.c: 532: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	533
	
l2721:	
;main.c: 533: startTime = 30;
	movlw	low(01Eh)
	movwf	(_startTime)
	goto	l2709
	line	537
	
l780:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 469 in file "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
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
	line	469
global __ptext7
__ptext7:	;psect for function _keyRead
psect	text7
	file	"C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
	line	469
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	471
	
l2145:	
;main.c: 471: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1481
	goto	u1480
u1481:
	goto	l2161
u1480:
	line	473
	
l2147:	
;main.c: 472: {
;main.c: 473: keyCount++;
	incf	(_keyCount),f
	line	474
	
l2149:	
;main.c: 474: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1491
	goto	u1490
u1491:
	goto	l2165
u1490:
	line	476
	
l2151:	
;main.c: 475: {
;main.c: 476: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	line	477
	
l2153:	
;main.c: 477: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1501
	goto	u1500
u1501:
	goto	l2165
u1500:
	line	479
	
l2155:	
;main.c: 478: {
;main.c: 479: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	480
	
l2157:	
;main.c: 480: return 2;
	movlw	low(02h)
	goto	l763
	line	486
	
l2161:	
;main.c: 484: else
;main.c: 485: {
;main.c: 486: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1511
	goto	u1510
u1511:
	goto	l2171
u1510:
	line	488
	
l2163:	
;main.c: 487: {
;main.c: 488: keyCount = 0;
	clrf	(_keyCount)
	line	489
;main.c: 489: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	490
	
l2165:	
;main.c: 490: return 0;
	movlw	low(0)
	goto	l763
	line	492
	
l2171:	
;main.c: 492: else if(keyCount >= 6)
	movlw	low(06h)
	subwf	(_keyCount),w
	skipc
	goto	u1521
	goto	u1520
u1521:
	goto	l2179
u1520:
	line	494
	
l2173:	
;main.c: 493: {
;main.c: 494: keyCount = 0;
	clrf	(_keyCount)
	line	495
	
l2175:	
;main.c: 495: return 1;
	movlw	low(01h)
	goto	l763
	line	497
	
l2179:	
;main.c: 496: }
;main.c: 497: keyCount = 0;
	clrf	(_keyCount)
	goto	l2165
	line	500
	
l763:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 299 in file "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
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
	line	299
global __ptext8
__ptext8:	;psect for function _chrgCtr
psect	text8
	file	"C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
	line	299
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	301
	
l3141:	
;main.c: 301: if(PORTA & 0x01)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(134)^080h,(0)&7	;volatile
	goto	u3381
	goto	u3380
u3381:
	goto	l3281
u3380:
	line	303
	
l3143:	
;main.c: 302: {
;main.c: 303: if(chrgFlag == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3391
	goto	u3390
u3391:
	goto	l3151
u3390:
	line	305
	
l3145:	
;main.c: 304: {
;main.c: 305: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	306
	
l3147:	
;main.c: 306: ledStep = 0;
	clrf	(_ledStep)
	line	307
;main.c: 307: chrgMaxDuty = 0;
	clrf	(_chrgMaxDuty)
	line	308
	
l3149:	
;main.c: 308: chrgPwmStop();
	fcall	_chrgPwmStop
	line	310
	
l3151:	
;main.c: 309: }
;main.c: 310: workStep = 0;
	clrf	(_workStep)
	line	311
	
l3153:	
;main.c: 311: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	312
	
l3155:	
;main.c: 312: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u3401
	goto	u3400
u3401:
	goto	l3163
u3400:
	line	314
	
l3157:	
;main.c: 313: {
;main.c: 314: if(++count50s > 2000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	07h
	subwf	((_count50s+1)),w
	movlw	0D1h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u3411
	goto	u3410
u3411:
	goto	l3165
u3410:
	line	316
	
l3159:	
;main.c: 315: {
;main.c: 316: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	317
	
l3161:	
;main.c: 317: prePwStep++;
	incf	(_prePwStep),f
	goto	l3165
	line	322
	
l3163:	
;main.c: 320: else
;main.c: 321: {
;main.c: 322: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	324
	
l3165:	
;main.c: 323: }
;main.c: 324: if(protectFlag)
	movf	((_protectFlag)),w
	btfsc	status,2
	goto	u3421
	goto	u3420
u3421:
	goto	l3189
u3420:
	line	326
	
l3167:	
;main.c: 325: {
;main.c: 326: chrgPwmStop();
	fcall	_chrgPwmStop
	line	327
	
l3169:	
;main.c: 327: ledStep = 6;
	movlw	low(06h)
	movwf	(_ledStep)
	line	328
	
l3171:	
;main.c: 328: if(prePwStep < 99 && protectFlag == 1)
	movlw	low(063h)
	subwf	(_prePwStep),w
	skipnc
	goto	u3431
	goto	u3430
u3431:
	goto	l3185
u3430:
	
l3173:	
		decf	((_protectFlag)),w
	btfss	status,2
	goto	u3441
	goto	u3440
u3441:
	goto	l3185
u3440:
	line	330
	
l3175:	
;main.c: 329: {
;main.c: 330: if(++reChrgCount > 250)
	movlw	low(0FBh)
	incf	(_reChrgCount),f
	subwf	((_reChrgCount)),w
	skipc
	goto	u3451
	goto	u3450
u3451:
	goto	l728
u3450:
	line	332
	
l3177:	
;main.c: 331: {
;main.c: 332: reChrgCount = 0;
	clrf	(_reChrgCount)
	line	333
;main.c: 333: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	334
;main.c: 334: protectFlag = 0;
	clrf	(_protectFlag)
	line	335
	
l3179:	
;main.c: 335: if(prePwStep > 14)
	movlw	low(0Fh)
	subwf	(_prePwStep),w
	skipc
	goto	u3461
	goto	u3460
u3461:
	goto	l3183
u3460:
	line	337
	
l3181:	
;main.c: 336: {
;main.c: 337: lockLedStep = (prePwStep/14) - 1;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	0FFh
	movwf	(_lockLedStep)
	line	338
;main.c: 338: }
	goto	l728
	line	341
	
l3183:	
;main.c: 339: else
;main.c: 340: {
;main.c: 341: lockLedStep = 0;
	clrf	(_lockLedStep)
	goto	l728
	line	347
	
l3185:	
;main.c: 345: else
;main.c: 346: {
;main.c: 347: reChrgCount = 0;
	clrf	(_reChrgCount)
	goto	l728
	line	351
	
l3189:	
;main.c: 350: }
;main.c: 351: if(batADValue < 1118)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Eh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3471
	goto	u3470
u3471:
	goto	l3195
u3470:
	line	353
	
l3191:	
;main.c: 352: {
;main.c: 353: chrgMode = 0;
	clrf	(_chrgMode)
	line	354
	
l3193:	
;main.c: 354: chrgMaxAD = 12;
	movlw	low(0Ch)
	movwf	(_chrgMaxAD)
	line	355
;main.c: 355: }
	goto	l3219
	line	356
	
l3195:	
;main.c: 356: else if(batADValue < 1300)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	014h
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3481
	goto	u3480
u3481:
	goto	l3201
u3480:
	line	358
	
l3197:	
;main.c: 357: {
;main.c: 358: chrgMode = 0;
	clrf	(_chrgMode)
	line	359
	
l3199:	
;main.c: 359: chrgMaxAD = 30;
	movlw	low(01Eh)
	movwf	(_chrgMaxAD)
	line	360
;main.c: 360: }
	goto	l3219
	line	361
	
l3201:	
;main.c: 361: else if(batADValue < 1530)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	0FAh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3491
	goto	u3490
u3491:
	goto	l3209
u3490:
	line	363
	
l3203:	
;main.c: 362: {
;main.c: 363: chrgMode = 1;
	clrf	(_chrgMode)
	incf	(_chrgMode),f
	line	364
	
l3205:	
;main.c: 364: chrgMaxAD = 35;
	movlw	low(023h)
	movwf	(_chrgMaxAD)
	line	365
	
l3207:	
;main.c: 365: lockCount = 0;
	clrf	(_lockCount)
	line	366
;main.c: 366: }
	goto	l3219
	line	367
	
l3209:	
;main.c: 367: else if(count1s == 0)
	movf	((_count1s)),w
	btfss	status,2
	goto	u3501
	goto	u3500
u3501:
	goto	l732
u3500:
	line	369
	
l3211:	
;main.c: 368: {
;main.c: 369: if(++lockCount > 200)
	movlw	low(0C9h)
	incf	(_lockCount),f
	subwf	((_lockCount)),w
	skipc
	goto	u3511
	goto	u3510
u3511:
	goto	l3217
u3510:
	line	371
	
l3213:	
;main.c: 370: {
;main.c: 371: lockCount = 0;
	clrf	(_lockCount)
	line	372
	
l3215:	
;main.c: 372: chrgMode = 2;
	movlw	low(02h)
	movwf	(_chrgMode)
	line	375
	
l3217:	
;main.c: 373: }
;main.c: 375: chrgMaxAD = 40;
	movlw	low(028h)
	movwf	(_chrgMaxAD)
	goto	l3219
	line	377
	
l732:	
	
l3219:	
;main.c: 376: }
;main.c: 377: if(chrgMode == 2 && outADValue < 10)
		movlw	2
	xorwf	((_chrgMode)),w
	btfss	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l3229
u3520:
	
l3221:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	0Ah
	skipnz
	subwf	(_outADValue),w
	skipnc
	goto	u3531
	goto	u3530
u3531:
	goto	l3229
u3530:
	line	379
	
l3223:	
;main.c: 378: {
;main.c: 379: if(++fullCount >= 200)
	incf	(_fullCount),f
	skipnz
	incf	(_fullCount+1),f
	movlw	0
	subwf	((_fullCount+1)),w
	movlw	0C8h
	skipnz
	subwf	((_fullCount)),w
	skipc
	goto	u3541
	goto	u3540
u3541:
	goto	l3231
u3540:
	line	381
	
l3225:	
;main.c: 380: {
;main.c: 381: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	382
	
l3227:	
;main.c: 382: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l3231
	line	387
	
l3229:	
;main.c: 385: else
;main.c: 386: {
;main.c: 387: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	389
	
l3231:	
;main.c: 388: }
;main.c: 389: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u3551
	goto	u3550
u3551:
	goto	l3237
u3550:
	line	391
	
l3233:	
;main.c: 390: {
;main.c: 391: lockLedStep = 6;
	movlw	low(06h)
	movwf	(_lockLedStep)
	line	392
	
l3235:	
;main.c: 392: chrgPwmStop();
	fcall	_chrgPwmStop
	line	393
;main.c: 393: }
	goto	l728
	line	396
	
l3237:	
;main.c: 394: else
;main.c: 395: {
;main.c: 396: if(prePwStep < 15)
	movlw	low(0Fh)
	subwf	(_prePwStep),w
	skipnc
	goto	u3561
	goto	u3560
u3561:
	goto	l3241
u3560:
	line	398
	
l3239:	
;main.c: 397: {
;main.c: 398: lockLedStep = 0;
	clrf	(_lockLedStep)
	line	399
;main.c: 399: }
	goto	l3243
	line	402
	
l3241:	
;main.c: 400: else
;main.c: 401: {
;main.c: 402: lockLedStep = (prePwStep/14) - 1;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	0FFh
	movwf	(_lockLedStep)
	line	404
	
l3243:	
;main.c: 403: }
;main.c: 404: if(batADValue > 1545 || outADValue > (chrgMaxAD + 2))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	0Ah
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3571
	goto	u3570
u3571:
	goto	l3247
u3570:
	
l3245:	
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
	goto	u3585
	movf	(_outADValue),w
	subwf	0+(??_chrgCtr+0)+0,w
u3585:
	skipnc
	goto	u3581
	goto	u3580
u3581:
	goto	l3259
u3580:
	line	406
	
l3247:	
;main.c: 405: {
;main.c: 406: if(++subTime > chrgWaitTime)
	incf	(_subTime),f
	movf	((_subTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u3591
	goto	u3590
u3591:
	goto	l3257
u3590:
	line	408
	
l3249:	
;main.c: 407: {
;main.c: 408: if(chrgMaxDuty > 1)
	movlw	low(02h)
	subwf	(_chrgMaxDuty),w
	skipc
	goto	u3601
	goto	u3600
u3601:
	goto	l3253
u3600:
	line	410
	
l3251:	
;main.c: 409: {
;main.c: 410: chrgMaxDuty--;
	decf	(_chrgMaxDuty),f
	line	412
	
l3253:	
;main.c: 411: }
;main.c: 412: subTime = 0;
	clrf	(_subTime)
	line	413
	
l3255:	
;main.c: 413: chrgWaitTime = 50;
	movlw	low(032h)
	movwf	(_chrgWaitTime)
	line	415
	
l3257:	
;main.c: 414: }
;main.c: 415: addTime = 0;
	clrf	(_addTime)
	line	416
;main.c: 416: }
	goto	l3273
	line	417
	
l3259:	
;main.c: 417: else if(batADValue < 1545 && outADValue < (chrgMaxAD - 4))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	09h
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3611
	goto	u3610
u3611:
	goto	l3273
u3610:
	
l3261:	
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
	goto	u3625
	movf	0+(??_chrgCtr+0)+0,w
	subwf	(_outADValue),w
u3625:
	skipnc
	goto	u3621
	goto	u3620
u3621:
	goto	l3273
u3620:
	line	419
	
l3263:	
;main.c: 418: {
;main.c: 419: if(++addTime > chrgWaitTime)
	incf	(_addTime),f
	movf	((_addTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u3631
	goto	u3630
u3631:
	goto	l3271
u3630:
	line	421
	
l3265:	
;main.c: 420: {
;main.c: 421: addTime = 0;
	clrf	(_addTime)
	line	422
	
l3267:	
;main.c: 422: if(chrgMaxDuty < 75)
	movlw	low(04Bh)
	subwf	(_chrgMaxDuty),w
	skipnc
	goto	u3641
	goto	u3640
u3641:
	goto	l3271
u3640:
	line	424
	
l3269:	
;main.c: 423: {
;main.c: 424: chrgMaxDuty++;
	incf	(_chrgMaxDuty),f
	line	427
	
l3271:	
;main.c: 425: }
;main.c: 426: }
;main.c: 427: subTime = 0;
	clrf	(_subTime)
	line	431
	
l3273:	
;main.c: 428: }
;main.c: 431: if((PWMCON0 & 0x01) == 0)
	btfsc	(21),(0)&7	;volatile
	goto	u3651
	goto	u3650
u3651:
	goto	l3277
u3650:
	line	433
	
l3275:	
;main.c: 432: {
;main.c: 433: chrgPwmInit();
	fcall	_chrgPwmInit
	line	435
	
l3277:	
;main.c: 434: }
;main.c: 435: PWMD01H = 0X00;
	clrf	(30)	;volatile
	line	436
	
l3279:	
;main.c: 436: PWMD0L = chrgMaxDuty;
	movf	(_chrgMaxDuty),w
	movwf	(25)	;volatile
	goto	l728
	line	442
	
l3281:	
;main.c: 440: else
;main.c: 441: {
;main.c: 442: chrgFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgFlag)
	line	443
;main.c: 443: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	444
;main.c: 444: protectFlag = 0;
	clrf	(_protectFlag)
	line	445
;main.c: 445: chrgMode = 0;
	clrf	(_chrgMode)
	line	446
;main.c: 446: chrgMaxAD = 0;
	clrf	(_chrgMaxAD)
	line	447
;main.c: 447: chrgMaxDuty = 0;
	clrf	(_chrgMaxDuty)
	line	448
;main.c: 448: lockCount = 0;
	clrf	(_lockCount)
	line	449
;main.c: 449: lockLedStep = 0;
	clrf	(_lockLedStep)
	line	450
	
l3283:	
;main.c: 450: chrgWaitTime = 20;
	movlw	low(014h)
	movwf	(_chrgWaitTime)
	line	451
	
l3285:	
;main.c: 451: chrgPwmStop();
	fcall	_chrgPwmStop
	line	452
	
l3287:	
;main.c: 452: if(prePwStep > 0 && prePwStep > pwStep)
	movf	((_prePwStep)),w
	btfsc	status,2
	goto	u3661
	goto	u3660
u3661:
	goto	l3297
u3660:
	
l3289:	
	movf	(_prePwStep),w
	subwf	(_pwStep),w
	skipnc
	goto	u3671
	goto	u3670
u3671:
	goto	l3297
u3670:
	line	454
	
l3291:	
;main.c: 453: {
;main.c: 454: if(++count50s > 2000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	07h
	subwf	((_count50s+1)),w
	movlw	0D1h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u3681
	goto	u3680
u3681:
	goto	l728
u3680:
	line	456
	
l3293:	
;main.c: 455: {
;main.c: 456: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	457
	
l3295:	
;main.c: 457: prePwStep--;
	decf	(_prePwStep),f
	goto	l728
	line	462
	
l3297:	
;main.c: 460: else
;main.c: 461: {
;main.c: 462: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	465
	
l728:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_chrgPwmStop

;; *************** function _chrgPwmStop *****************
;; Defined at:
;;		line 904 in file "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
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
	line	904
global __ptext9
__ptext9:	;psect for function _chrgPwmStop
psect	text9
	file	"C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
	line	904
	global	__size_of_chrgPwmStop
	__size_of_chrgPwmStop	equ	__end_of_chrgPwmStop-_chrgPwmStop
	
_chrgPwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmStop: []
	line	906
	
l2133:	
;main.c: 906: PWMCON0 &= 0xFE;
	bcf	(21)+(0/8),(0)&7	;volatile
	line	907
;main.c: 907: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	line	908
	
l862:	
	return
	opt stack 0
GLOBAL	__end_of_chrgPwmStop
	__end_of_chrgPwmStop:
	signat	_chrgPwmStop,89
	global	_chrgPwmInit

;; *************** function _chrgPwmInit *****************
;; Defined at:
;;		line 887 in file "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
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
	line	887
global __ptext10
__ptext10:	;psect for function _chrgPwmInit
psect	text10
	file	"C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
	line	887
	global	__size_of_chrgPwmInit
	__size_of_chrgPwmInit	equ	__end_of_chrgPwmInit-_chrgPwmInit
	
_chrgPwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmInit: [wreg+status,2]
	line	889
	
l2135:	
;main.c: 889: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	891
;main.c: 891: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	892
	
l2137:	
;main.c: 892: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	896
	
l2139:	
;main.c: 896: PWMD01H = 0;
	clrf	(30)	;volatile
	line	897
;main.c: 897: PWMD0L = 1;
	movlw	low(01h)
	movwf	(25)	;volatile
	line	898
	
l2141:	
;main.c: 898: PWM01DT = 0X00;
	clrf	(31)	;volatile
	line	900
	
l2143:	
;main.c: 900: PWMCON0 = 0X01;
	movlw	low(01h)
	movwf	(21)	;volatile
	line	901
;main.c: 901: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	902
	
l859:	
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
	
l2269:	
	clrf	(___lbdiv@quotient)
	line	10
	
l2271:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1681
	goto	u1680
u1681:
	goto	l2289
u1680:
	line	11
	
l2273:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2277
	
l1157:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l2275:	
	incf	(___lbdiv@counter),f
	line	12
	
l2277:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1691
	goto	u1690
u1691:
	goto	l1157
u1690:
	line	16
	
l1159:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l2279:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1701
	goto	u1700
u1701:
	goto	l2285
u1700:
	line	19
	
l2281:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2283:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2285:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l2287:	
	decfsz	(___lbdiv@counter),f
	goto	u1711
	goto	u1710
u1711:
	goto	l1159
u1710:
	line	25
	
l2289:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1162:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_checkOutA

;; *************** function _checkOutA *****************
;; Defined at:
;;		line 580 in file "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
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
	file	"C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
	line	580
global __ptext12
__ptext12:	;psect for function _checkOutA
psect	text12
	file	"C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
	line	580
	global	__size_of_checkOutA
	__size_of_checkOutA	equ	__end_of_checkOutA-_checkOutA
	
_checkOutA:	
;incstack = 0
	opt	stack 4
; Regs used in _checkOutA: [wreg+status,2+status,0+pclath+cstack]
	line	582
	
l3037:	
;main.c: 582: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l3041
u3130:
	line	584
	
l3039:	
;main.c: 583: {
;main.c: 584: test_adc = ADC_Sample(4, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(04h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	585
;main.c: 585: }
	goto	l3043
	line	588
	
l3041:	
;main.c: 586: else
;main.c: 587: {
;main.c: 588: test_adc = ADC_Sample(1, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(01h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	590
	
l3043:	
;main.c: 589: }
;main.c: 590: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l3137
u3140:
	line	592
	
l3045:	
;main.c: 591: {
;main.c: 592: if(chrgFlag && adresult > 210)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l3055
u3150:
	
l3047:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	0D3h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u3161
	goto	u3160
u3161:
	goto	l3055
u3160:
	line	594
	
l3049:	
;main.c: 593: {
;main.c: 594: if(++overChrgTime > 10)
	movlw	low(0Bh)
	incf	(_overChrgTime),f
	subwf	((_overChrgTime)),w
	skipc
	goto	u3171
	goto	u3170
u3171:
	goto	l3057
u3170:
	line	596
	
l3051:	
;main.c: 595: {
;main.c: 596: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	597
	
l3053:	
;main.c: 597: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l3057
	line	603
	
l3055:	
;main.c: 601: else
;main.c: 602: {
;main.c: 603: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	605
	
l3057:	
;main.c: 604: }
;main.c: 605: outADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_outADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_outADValue)
	line	607
	
l3059:	
;main.c: 607: if(workStep && (outADValue > 220))
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3181
	goto	u3180
u3181:
	goto	l3067
u3180:
	
l3061:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	0DDh
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3191
	goto	u3190
u3191:
	goto	l3067
u3190:
	line	609
	
l3063:	
;main.c: 608: {
;main.c: 609: if(++workOverOutTime > 50)
	movlw	low(033h)
	incf	(_workOverOutTime),f
	subwf	((_workOverOutTime)),w
	skipc
	goto	u3201
	goto	u3200
u3201:
	goto	l3069
u3200:
	line	611
	
l3065:	
;main.c: 610: {
;main.c: 611: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	612
;main.c: 612: workStep = 0;
	clrf	(_workStep)
	goto	l3069
	line	617
	
l3067:	
;main.c: 615: else
;main.c: 616: {
;main.c: 617: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	619
	
l3069:	
	line	620
	
l3071:	
;main.c: 620: if(workStep < 6 && outADValue > maxtempV)
	movlw	low(06h)
	subwf	(_workStep),w
	skipnc
	goto	u3211
	goto	u3210
u3211:
	goto	l3079
u3210:
	
l3073:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	029h
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l3079
u3220:
	line	622
	
l3075:	
;main.c: 621: {
;main.c: 622: if(++overCount > 5)
	movlw	low(06h)
	incf	(_overCount),f
	subwf	((_overCount)),w
	skipc
	goto	u3231
	goto	u3230
u3231:
	goto	l3133
u3230:
	line	624
	
l3077:	
;main.c: 623: {
;main.c: 624: overCount = 5;
	movlw	low(05h)
	movwf	(_overCount)
	goto	l3133
	line	627
	
l3079:	
;main.c: 627: else if(outADValue > (maxtempV+3))
	movlw	0
	subwf	(_outADValue+1),w
	movlw	02Ch
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3241
	goto	u3240
u3241:
	goto	l3085
u3240:
	line	629
	
l3081:	
;main.c: 628: {
;main.c: 629: if(++overCount > 5)
	movlw	low(06h)
	incf	(_overCount),f
	subwf	((_overCount)),w
	skipc
	goto	u3251
	goto	u3250
u3251:
	goto	l3133
u3250:
	goto	l3077
	line	636
	
l3085:	
;main.c: 634: else
;main.c: 635: {
;main.c: 636: unsigned char maxAout = 11;
	movlw	low(0Bh)
	movwf	(checkOutA@maxAout)
	line	637
	
l3087:	
;main.c: 637: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u3261
	goto	u3260
u3261:
	goto	l3091
u3260:
	line	639
	
l3089:	
;main.c: 638: {
;main.c: 639: maxAout = maxAout + 5;
	movlw	low(05h)
	addwf	(checkOutA@maxAout),f
	line	640
;main.c: 640: }
	goto	l810
	line	641
	
l3091:	
;main.c: 641: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3271
	goto	u3270
u3271:
	goto	l3095
u3270:
	line	643
	
l3093:	
;main.c: 642: {
;main.c: 643: maxAout = maxAout + 6;
	movlw	low(06h)
	addwf	(checkOutA@maxAout),f
	line	644
;main.c: 644: }
	goto	l810
	line	645
	
l3095:	
;main.c: 645: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l3099
u3280:
	line	647
	
l3097:	
;main.c: 646: {
;main.c: 647: maxAout = maxAout + 7;
	movlw	low(07h)
	addwf	(checkOutA@maxAout),f
	line	648
;main.c: 648: }
	goto	l810
	line	649
	
l3099:	
;main.c: 649: else if(workStep == 4)
		movlw	4
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l3103
u3290:
	line	651
	
l3101:	
;main.c: 650: {
;main.c: 651: maxAout = maxAout + 8;
	movlw	low(08h)
	addwf	(checkOutA@maxAout),f
	line	652
;main.c: 652: }
	goto	l810
	line	653
	
l3103:	
;main.c: 653: else if(workStep == 5)
		movlw	5
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3301
	goto	u3300
u3301:
	goto	l3107
u3300:
	line	655
	
l3105:	
;main.c: 654: {
;main.c: 655: maxAout = maxAout + 9;
	movlw	low(09h)
	addwf	(checkOutA@maxAout),f
	line	656
;main.c: 656: }
	goto	l810
	line	657
	
l3107:	
;main.c: 657: else if(workStep == 6)
		movlw	6
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3311
	goto	u3310
u3311:
	goto	l814
u3310:
	line	659
	
l3109:	
;main.c: 658: {
;main.c: 659: maxAout = maxAout + 10;
	movlw	low(0Ah)
	addwf	(checkOutA@maxAout),f
	goto	l810
	line	661
	
l814:	
	
l810:	
;main.c: 660: }
;main.c: 661: if(overCount > 0)
	movf	((_overCount)),w
	btfsc	status,2
	goto	u3321
	goto	u3320
u3321:
	goto	l3113
u3320:
	line	663
	
l3111:	
;main.c: 662: {
;main.c: 663: overCount--;
	decf	(_overCount),f
	line	665
	
l3113:	
;main.c: 664: }
;main.c: 665: if(outADValue > maxAout)
	movf	(checkOutA@maxAout),w
	movwf	(??_checkOutA+0)+0
	clrf	(??_checkOutA+0)+0+1
	movf	(_outADValue+1),w
	subwf	1+(??_checkOutA+0)+0,w
	skipz
	goto	u3335
	movf	(_outADValue),w
	subwf	0+(??_checkOutA+0)+0,w
u3335:
	skipnc
	goto	u3331
	goto	u3330
u3331:
	goto	l3125
u3330:
	line	667
	
l3115:	
;main.c: 666: {
;main.c: 667: if(++addPowerCount > 3)
	movlw	low(04h)
	incf	(_addPowerCount),f
	subwf	((_addPowerCount)),w
	skipc
	goto	u3341
	goto	u3340
u3341:
	goto	l3133
u3340:
	line	669
	
l3117:	
;main.c: 668: {
;main.c: 669: addPowerCount = 3;
	movlw	low(03h)
	movwf	(_addPowerCount)
	line	670
	
l3119:	
;main.c: 670: if(startTime == 0)
	movf	((_startTime)),w
	btfss	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l3123
u3350:
	line	672
	
l3121:	
;main.c: 671: {
;main.c: 672: tempDuty = 72 + (workStep*4);
	movf	(_workStep),w
	movwf	(??_checkOutA+0)+0
	movlw	(02h)-1
u3365:
	clrc
	rlf	(??_checkOutA+0)+0,f
	addlw	-1
	skipz
	goto	u3365
	clrc
	rlf	(??_checkOutA+0)+0,w
	addlw	048h
	movwf	(_tempDuty)
	line	674
;main.c: 674: }
	goto	l3133
	line	677
	
l3123:	
;main.c: 675: else
;main.c: 676: {
;main.c: 677: tempDuty = maxDuty;
	movf	(_maxDuty),w
	movwf	(_tempDuty)
	goto	l3133
	line	684
	
l3125:	
;main.c: 682: else
;main.c: 683: {
;main.c: 684: addPowerCount = 0;
	clrf	(_addPowerCount)
	line	685
	
l3127:	
;main.c: 685: if(tempDuty > maxDuty)
	movf	(_tempDuty),w
	subwf	(_maxDuty),w
	skipnc
	goto	u3371
	goto	u3370
u3371:
	goto	l3123
u3370:
	line	687
	
l3129:	
;main.c: 686: {
;main.c: 687: tempDuty--;
	decf	(_tempDuty),f
	line	697
;main.c: 688: }
	
l3133:	
;main.c: 692: }
;main.c: 694: }
;main.c: 696: }
;main.c: 697: PWMD01H = 0X00;
	clrf	(30)	;volatile
	line	698
	
l3135:	
;main.c: 698: PWMD1L = tempDuty;
	movf	(_tempDuty),w
	movwf	(26)	;volatile
	line	699
;main.c: 699: }
	goto	l829
	line	702
	
l3137:	
;main.c: 700: else
;main.c: 701: {
;main.c: 702: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	703
;main.c: 703: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	704
	
l3139:	
;main.c: 704: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkOutA+0)+0),f
	u4067:
decfsz	(??_checkOutA+0)+0,f
	goto	u4067
opt asmopt_pop

	line	706
	
l829:	
	return
	opt stack 0
GLOBAL	__end_of_checkOutA
	__end_of_checkOutA:
	signat	_checkOutA,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 708 in file "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
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
	line	708
global __ptext13
__ptext13:	;psect for function _checkBatAD
psect	text13
	file	"C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
	line	708
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	710
	
l3299:	
;main.c: 710: test_adc = ADC_Sample(2, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(02h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	711
	
l3301:	
;main.c: 711: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3691
	goto	u3690
u3691:
	goto	l3339
u3690:
	line	713
	
l3303:	
;main.c: 712: {
;main.c: 713: batADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_batADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_batADValue)
	line	714
;main.c: 714: if(batADValue < 1117)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Dh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3701
	goto	u3700
u3701:
	goto	l3321
u3700:
	line	716
	
l3305:	
;main.c: 715: {
;main.c: 716: pwStep = 0;
	clrf	(_pwStep)
	line	717
	
l3307:	
;main.c: 717: if(++count8s > 800)
	incf	(_count8s),f
	skipnz
	incf	(_count8s+1),f
	movlw	03h
	subwf	((_count8s+1)),w
	movlw	021h
	skipnz
	subwf	((_count8s)),w
	skipc
	goto	u3711
	goto	u3710
u3711:
	goto	l3333
u3710:
	line	719
	
l3309:	
;main.c: 718: {
;main.c: 719: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	720
	
l3311:	
;main.c: 720: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	721
	
l3313:	
;main.c: 721: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3721
	goto	u3720
u3721:
	goto	l3317
u3720:
	line	723
	
l3315:	
;main.c: 722: {
;main.c: 723: overWorkTime = 180;
	movlw	low(0B4h)
	movwf	(_overWorkTime)
	line	724
;main.c: 724: preLedStep = workStep;
	movf	(_workStep),w
	movwf	(_preLedStep)
	line	726
	
l3317:	
;main.c: 725: }
;main.c: 726: prePwStep = 0;
	clrf	(_prePwStep)
	line	727
	
l3319:	
;main.c: 727: workStep = 0;
	clrf	(_workStep)
	goto	l3333
	line	732
	
l3321:	
;main.c: 730: else
;main.c: 731: {
;main.c: 732: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	733
	
l3323:	
;main.c: 733: if(batADValue >= 1340)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	03Ch
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3731
	goto	u3730
u3731:
	goto	l3327
u3730:
	line	735
	
l3325:	
;main.c: 734: {
;main.c: 735: pwStep = ((batADValue - 1340) /2) + 13;
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
	line	736
;main.c: 736: }
	goto	l3329
	line	739
	
l3327:	
;main.c: 737: else
;main.c: 738: {
;main.c: 739: pwStep = (batADValue - 1117) / 16;
	movf	(_batADValue),w
	addlw	low(0FBA3h)
	movwf	(??_checkBatAD+0)+0
	movf	(_batADValue+1),w
	skipnc
	addlw	1
	addlw	high(0FBA3h)
	movwf	1+(??_checkBatAD+0)+0
	movlw	04h
u3745:
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	addlw	-1
	skipz
	goto	u3745
	movf	0+(??_checkBatAD+0)+0,w
	movwf	(_pwStep)
	line	741
	
l3329:	
;main.c: 740: }
;main.c: 741: if(pwStep > 99)
	movlw	low(064h)
	subwf	(_pwStep),w
	skipc
	goto	u3751
	goto	u3750
u3751:
	goto	l3333
u3750:
	line	743
	
l3331:	
;main.c: 742: {
;main.c: 743: pwStep = 99;
	movlw	low(063h)
	movwf	(_pwStep)
	line	746
	
l3333:	
;main.c: 744: }
;main.c: 745: }
;main.c: 746: if(chrgFlag && batADValue > 1861)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3761
	goto	u3760
u3761:
	goto	l3343
u3760:
	
l3335:	
	movlw	07h
	subwf	(_batADValue+1),w
	movlw	046h
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3771
	goto	u3770
u3771:
	goto	l3343
u3770:
	line	748
	
l3337:	
;main.c: 747: {
;main.c: 748: protectFlag = 1;
	clrf	(_protectFlag)
	incf	(_protectFlag),f
	goto	l3343
	line	753
	
l3339:	
;main.c: 751: else
;main.c: 752: {
;main.c: 753: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	754
;main.c: 754: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	755
	
l3341:	
;main.c: 755: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u4077:
decfsz	(??_checkBatAD+0)+0,f
	goto	u4077
opt asmopt_pop

	line	757
	
l3343:	
;main.c: 756: }
;main.c: 757: test_adc = ADC_Sample(3, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(03h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	758
	
l3345:	
;main.c: 758: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3781
	goto	u3780
u3781:
	goto	l3363
u3780:
	line	760
	
l3347:	
;main.c: 759: {
;main.c: 760: if(chrgFlag && adresult > 100)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3791
	goto	u3790
u3791:
	goto	l850
u3790:
	
l3349:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	065h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u3801
	goto	u3800
u3801:
	goto	l850
u3800:
	line	763
	
l3351:	
;main.c: 761: {
;main.c: 763: if(adresult > 810 || (batADValue - adresult) > 810)
	movlw	03h
	subwf	(_adresult+1),w	;volatile
	movlw	02Bh
	skipnz
	subwf	(_adresult),w	;volatile
	skipnc
	goto	u3811
	goto	u3810
u3811:
	goto	l3355
u3810:
	
l3353:	
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
	goto	u3821
	goto	u3820
u3821:
	goto	l3361
u3820:
	line	766
	
l3355:	
;main.c: 764: {
;main.c: 766: if(++countHalfFull > 250)
	movlw	low(0FBh)
	incf	(_countHalfFull),f
	subwf	((_countHalfFull)),w
	skipc
	goto	u3831
	goto	u3830
u3831:
	goto	l843
u3830:
	line	768
	
l3357:	
;main.c: 767: {
;main.c: 768: countHalfFull = 0;
	clrf	(_countHalfFull)
	line	769
	
l3359:	
;main.c: 769: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l850
	line	774
	
l3361:	
;main.c: 772: else
;main.c: 773: {
;main.c: 774: countHalfFull = 0;
	clrf	(_countHalfFull)
	goto	l850
	line	776
	
l843:	
	line	777
;main.c: 775: }
;main.c: 776: }
;main.c: 777: }
	goto	l850
	line	780
	
l3363:	
;main.c: 778: else
;main.c: 779: {
;main.c: 780: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	781
;main.c: 781: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	782
	
l3365:	
;main.c: 782: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u4087:
decfsz	(??_checkBatAD+0)+0,f
	goto	u4087
opt asmopt_pop

	line	784
	
l850:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 1015 in file "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
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
	line	1015
global __ptext14
__ptext14:	;psect for function _ADC_Sample
psect	text14
	file	"C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
	line	1015
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	1017
	
l2947:	
;main.c: 1017: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1018
	
l2949:	
;main.c: 1018: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1019
;main.c: 1019: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	1021
	
l2951:	
;main.c: 1021: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u2951
	goto	u2950
u2951:
	goto	l2957
u2950:
	
l2953:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u2961
	goto	u2960
u2961:
	goto	l2957
u2960:
	line	1024
	
l2955:	
;main.c: 1022: {
;main.c: 1024: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1025
;main.c: 1025: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_ADC_Sample+0)+0),f
	u4097:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u4097
	nop2
opt asmopt_pop

	line	1026
;main.c: 1026: }
	goto	l2959
	line	1028
	
l2957:	
;main.c: 1027: else
;main.c: 1028: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1030
	
l2959:	
;main.c: 1030: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l2965
u2970:
	line	1032
	
l2961:	
;main.c: 1031: {
;main.c: 1032: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	1033
	
l2963:	
;main.c: 1033: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	1035
	
l2965:	
	line	1036
	
l2967:	
;main.c: 1036: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	1038
	
l2973:	
;main.c: 1037: {
;main.c: 1038: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u2985:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u2985
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	1039
# 1039 "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
nop ;# 
	line	1040
# 1040 "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
nop ;# 
	line	1041
# 1041 "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
nop ;# 
	line	1042
# 1042 "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
nop ;# 
psect	text14
	line	1043
	
l2975:	
;main.c: 1043: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	1045
	
l2977:	
;main.c: 1045: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	1046
;main.c: 1046: while (GODONE)
	goto	l882
	
l883:	
	line	1048
;main.c: 1047: {
;main.c: 1048: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	1050
;main.c: 1050: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u2991
	goto	u2990
u2991:
	goto	l882
u2990:
	line	1051
	
l2979:	
;main.c: 1051: return 0;
	movlw	low(0)
	goto	l885
	line	1052
	
l882:	
	line	1046
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u3001
	goto	u3000
u3001:
	goto	l883
u3000:
	line	1054
	
l2983:	
;main.c: 1052: }
;main.c: 1054: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l2985:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	1056
	
l2987:	
;main.c: 1056: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l2991
u3010:
	line	1058
	
l2989:	
;main.c: 1057: {
;main.c: 1058: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	1059
;main.c: 1059: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1060
;main.c: 1060: }
	goto	l888
	line	1061
	
l2991:	
;main.c: 1061: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u3025
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u3025:
	skipnc
	goto	u3021
	goto	u3020
u3021:
	goto	l2995
u3020:
	line	1062
	
l2993:	
;main.c: 1062: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l888
	line	1063
	
l2995:	
;main.c: 1063: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u3035
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u3035:
	skipnc
	goto	u3031
	goto	u3030
u3031:
	goto	l888
u3030:
	line	1064
	
l2997:	
;main.c: 1064: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1066
	
l888:	
;main.c: 1066: adsum += ad_temp;
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
	goto	u3041
	addwf	(ADC_Sample@adsum+1),f	;volatile
u3041:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3042
	addwf	(ADC_Sample@adsum+2),f	;volatile
u3042:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3043
	addwf	(ADC_Sample@adsum+3),f	;volatile
u3043:

	line	1036
	
l2999:	
	incf	(ADC_Sample@i),f
	
l3001:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l2973
u3050:
	line	1068
	
l3003:	
;main.c: 1067: }
;main.c: 1068: adsum -= admax;
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

	line	1069
;main.c: 1069: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u3075
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u3075
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u3075
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u3075:
	skipc
	goto	u3071
	goto	u3070
u3071:
	goto	l892
u3070:
	line	1070
	
l3005:	
;main.c: 1070: adsum -= admin;
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
	goto	u3085
	goto	u3086
u3085:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3086:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3087
	goto	u3088
u3087:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3088:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3089
	goto	u3080
u3089:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3080:

	goto	l3007
	line	1071
	
l892:	
	line	1072
;main.c: 1071: else
;main.c: 1072: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1074
	
l3007:	
;main.c: 1074: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u3095:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u3090:
	addlw	-1
	skipz
	goto	u3095
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	1076
	
l3009:	
;main.c: 1076: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1077
	
l3011:	
;main.c: 1077: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	1078
	
l3013:	
;main.c: 1078: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1079
	
l3015:	
;main.c: 1079: return 0xA5;
	movlw	low(0A5h)
	line	1081
	
l885:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 939 in file "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
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
	line	939
global __ptext15
__ptext15:	;psect for function _Sleep_Mode
psect	text15
	file	"C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
	line	939
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 4
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	941
	
l2811:	
;main.c: 941: INTCON = 0;
	clrf	(11)	;volatile
	line	943
;main.c: 943: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	945
	
l2813:	
;main.c: 945: TRISA = 0x1F;
	movlw	low(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	946
	
l2815:	
;main.c: 946: WPUA = 0B00000000;
	clrf	(136)^080h	;volatile
	line	947
	
l2817:	
;main.c: 947: PORTA = 0x00;
	clrf	(134)^080h	;volatile
	line	948
	
l2819:	
;main.c: 948: TRISB = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	949
;main.c: 949: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	950
	
l2821:	
;main.c: 950: WPUB = 0B00000100;
	movlw	low(04h)
	movwf	(8)	;volatile
	line	952
	
l2823:	
;main.c: 952: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	953
	
l2825:	
;main.c: 953: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	955
	
l2827:	
;main.c: 955: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	957
;main.c: 957: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	959
;main.c: 959: IOCA = 0B00000001;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(137)^080h	;volatile
	line	960
;main.c: 960: IOCB = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	962
	
l2829:	
;main.c: 962: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	963
	
l2831:	
;main.c: 963: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	964
	
l2833:	
;main.c: 964: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	965
	
l2835:	
;main.c: 965: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	967
	
l2837:	
;main.c: 967: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	968
	
l2839:	
;main.c: 968: PIR1 = 0;
	clrf	(13)	;volatile
	line	969
	
l2841:	
;main.c: 969: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	971
	
l2843:	
;main.c: 971: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	972
	
l2845:	
;main.c: 972: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	973
	
l2847:	
;main.c: 973: PORTB;
	movf	(6),w	;volatile
	line	974
	
l2849:	
;main.c: 974: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	975
# 975 "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
clrwdt ;# 
	line	977
# 977 "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
sleep ;# 
	line	979
# 979 "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
nop ;# 
	line	980
# 980 "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
clrwdt ;# 
	line	981
# 981 "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
nop ;# 
	line	982
# 982 "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
nop ;# 
	line	983
# 983 "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
nop ;# 
	line	984
# 984 "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
nop ;# 
	line	985
# 985 "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
nop ;# 
psect	text15
	line	986
	
l2851:	
;main.c: 986: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u2791
	goto	u2790
u2791:
	goto	l871
u2790:
	
l2853:	
	bcf	(107/8),(107)&7	;volatile
	
l871:	
	line	987
;main.c: 987: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u2801
	goto	u2800
u2801:
	goto	l872
u2800:
	
l2855:	
	bcf	(88/8),(88)&7	;volatile
	
l872:	
	line	988
;main.c: 988: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u2811
	goto	u2810
u2811:
	goto	l2859
u2810:
	
l2857:	
	bcf	(105/8),(105)&7	;volatile
	line	989
	
l2859:	
;main.c: 989: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	990
;main.c: 990: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	991
	
l2861:	
;main.c: 991: Init_System();
	fcall	_Init_System
	line	992
	
l2863:	
;main.c: 992: AD_Init();
	fcall	_AD_Init
	line	993
	
l874:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 795 in file "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
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
	line	795
global __ptext16
__ptext16:	;psect for function _Init_System
psect	text16
	file	"C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
	line	795
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	797
	
l2111:	
# 797 "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
nop ;# 
	line	798
# 798 "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
clrwdt ;# 
psect	text16
	line	799
	
l2113:	
;main.c: 799: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	800
# 800 "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
clrwdt ;# 
psect	text16
	line	801
	
l2115:	
;main.c: 801: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	803
	
l2117:	
;main.c: 803: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	804
;main.c: 804: WPDA = 0x01;
	movlw	low(01h)
	movwf	(135)^080h	;volatile
	line	805
;main.c: 805: WPUB = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	807
;main.c: 807: TRISA = 0x1F;
	movlw	low(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	808
;main.c: 808: TRISB = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	810
	
l2119:	
;main.c: 810: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	811
	
l2121:	
;main.c: 811: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	815
;main.c: 815: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	816
	
l2123:	
;main.c: 816: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	817
	
l2125:	
;main.c: 817: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	819
;main.c: 819: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	820
;main.c: 820: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	821
	
l853:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 832 in file "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
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
	line	832
global __ptext17
__ptext17:	;psect for function _AD_Init
psect	text17
	file	"C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
	line	832
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _AD_Init: [wreg+status,2]
	line	865
	
l2127:	
;main.c: 865: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	882
	
l2129:	
;main.c: 882: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	883
	
l2131:	
;main.c: 883: ANSEL0 = 0X1E;
	movlw	low(01Eh)
	movwf	(147)^080h	;volatile
	line	884
	
l856:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 100 in file "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
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
	file	"C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
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
	
i1l2865:	
;main.c: 102: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u282_21
	goto	u282_20
u282_21:
	goto	i1l656
u282_20:
	line	104
	
i1l2867:	
;main.c: 103: {
;main.c: 104: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	105
	
i1l2869:	
;main.c: 105: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u283_21
	goto	u283_20
u283_21:
	goto	i1l2879
u283_20:
	line	107
	
i1l2871:	
;main.c: 106: {
;main.c: 107: intCount = 0;
	clrf	(_intCount)
	line	108
	
i1l2873:	
;main.c: 108: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	109
	
i1l2875:	
;main.c: 109: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u284_21
	goto	u284_20
u284_21:
	goto	i1l2879
u284_20:
	line	111
	
i1l2877:	
;main.c: 110: {
;main.c: 111: count1s = 0;
	clrf	(_count1s)
	line	114
	
i1l2879:	
;main.c: 112: }
;main.c: 113: }
;main.c: 114: ledShow();
	fcall	_ledShow
	line	115
	
i1l2881:	
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
;;		line 163 in file "C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
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
	file	"C:\mcuproject\scm\zdt\D282_062B_SOP14\main.c"
	line	163
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 4
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	165
	
i1l2311:	
;main.c: 165: if(++ledCntTime > 30)
	movlw	low(01Fh)
	incf	(_ledCntTime),f
	subwf	((_ledCntTime)),w
	skipc
	goto	u175_21
	goto	u175_20
u175_21:
	goto	i1l690
u175_20:
	line	167
	
i1l2313:	
;main.c: 166: {
;main.c: 167: ledCntTime = 0;
	clrf	(_ledCntTime)
	line	168
	
i1l2315:	
;main.c: 168: if(++ledCnt > 5)
	movlw	low(06h)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u176_21
	goto	u176_20
u176_21:
	goto	i1l2319
u176_20:
	line	170
	
i1l2317:	
;main.c: 169: {
;main.c: 170: ledCnt = 0;
	clrf	(_ledCnt)
	line	172
	
i1l2319:	
;main.c: 171: }
;main.c: 172: PORTA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(5/8),(5)&7	;volatile
	line	173
	
i1l2321:	
;main.c: 173: PORTB &= 0xC7;
	movlw	low(0C7h)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(6),f	;volatile
	line	174
	
i1l2323:	
;main.c: 174: TRISA |= 0x20;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(133)^080h+(5/8),(5)&7	;volatile
	line	175
	
i1l2325:	
;main.c: 175: TRISB |= 0x38;
	movlw	low(038h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(5),f	;volatile
	line	176
;main.c: 176: switch(ledCnt)
	goto	i1l2361
	line	179
	
i1l2327:	
;main.c: 179: if(ledStep > 0)
	movf	((_ledStep)),w
	btfsc	status,2
	goto	u177_21
	goto	u177_20
u177_21:
	goto	i1l690
u177_20:
	line	181
	
i1l2329:	
;main.c: 180: {
;main.c: 181: TRISB &= 0xE7;
	movlw	low(0E7h)
	andwf	(5),f	;volatile
	line	182
	
i1l2331:	
;main.c: 182: PORTB |= 0x10;
	bsf	(6)+(4/8),(4)&7	;volatile
	goto	i1l690
	line	186
	
i1l2333:	
;main.c: 186: if(ledStep > 1)
	movlw	low(02h)
	subwf	(_ledStep),w
	skipc
	goto	u178_21
	goto	u178_20
u178_21:
	goto	i1l690
u178_20:
	line	188
	
i1l2335:	
;main.c: 187: {
;main.c: 188: TRISB &= 0xCF;
	movlw	low(0CFh)
	andwf	(5),f	;volatile
	line	189
	
i1l2337:	
;main.c: 189: PORTB |= 0x20;
	bsf	(6)+(5/8),(5)&7	;volatile
	goto	i1l690
	line	193
	
i1l2339:	
;main.c: 193: if(ledStep > 2)
	movlw	low(03h)
	subwf	(_ledStep),w
	skipc
	goto	u179_21
	goto	u179_20
u179_21:
	goto	i1l690
u179_20:
	line	195
	
i1l2341:	
;main.c: 194: {
;main.c: 195: TRISB &= 0xE7;
	movlw	low(0E7h)
	andwf	(5),f	;volatile
	line	196
	
i1l2343:	
;main.c: 196: PORTB |= 0x08;
	bsf	(6)+(3/8),(3)&7	;volatile
	goto	i1l690
	line	200
	
i1l2345:	
;main.c: 200: if(ledStep > 3)
	movlw	low(04h)
	subwf	(_ledStep),w
	skipc
	goto	u180_21
	goto	u180_20
u180_21:
	goto	i1l690
u180_20:
	line	202
	
i1l2347:	
;main.c: 201: {
;main.c: 202: TRISB &= 0xCF;
	movlw	low(0CFh)
	andwf	(5),f	;volatile
	goto	i1l2331
	line	207
	
i1l2351:	
;main.c: 207: if(ledStep > 4)
	movlw	low(05h)
	subwf	(_ledStep),w
	skipc
	goto	u181_21
	goto	u181_20
u181_21:
	goto	i1l690
u181_20:
	line	209
	
i1l2353:	
;main.c: 208: {
;main.c: 209: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	210
;main.c: 210: TRISB &= 0xDF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(5/8),(5)&7	;volatile
	line	211
;main.c: 211: PORTB |= 0x20;
	bsf	(6)+(5/8),(5)&7	;volatile
	goto	i1l690
	line	215
	
i1l2355:	
;main.c: 215: if(ledStep > 5)
	movlw	low(06h)
	subwf	(_ledStep),w
	skipc
	goto	u182_21
	goto	u182_20
u182_21:
	goto	i1l690
u182_20:
	line	217
	
i1l2357:	
;main.c: 216: {
;main.c: 217: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	218
;main.c: 218: TRISB &= 0xDF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(5/8),(5)&7	;volatile
	line	219
;main.c: 219: PORTA |= 0x20;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(5/8),(5)&7	;volatile
	goto	i1l690
	line	176
	
i1l2361:	
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
goto i1l690
movlw high(i1S3483)
movwf pclath
	movlw low(i1S3483)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S3483:
	ljmp	i1l2355
	ljmp	i1l2327
	ljmp	i1l2333
	ljmp	i1l2339
	ljmp	i1l2345
	ljmp	i1l2351
psect	text19

	line	228
	
i1l690:	
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
