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
	FNCALL	_workCtr,___bmul
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
??_Sleep_Mode:	; 1 bytes @ 0x3
??_chrgPwmStop:	; 1 bytes @ 0x3
??_chrgPwmInit:	; 1 bytes @ 0x3
??_pwmInit:	; 1 bytes @ 0x3
??_pwmStop:	; 1 bytes @ 0x3
?_ADC_Sample:	; 1 bytes @ 0x3
??_keyRead:	; 1 bytes @ 0x3
?___bmul:	; 1 bytes @ 0x3
?___lbdiv:	; 1 bytes @ 0x3
?___lbmod:	; 1 bytes @ 0x3
	global	keyRead@keyStatus
keyRead@keyStatus:	; 1 bytes @ 0x3
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x3
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x3
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x3
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x3
	ds	1
??_checkOutA:	; 1 bytes @ 0x4
??_checkBatAD:	; 1 bytes @ 0x4
??_keyCtr:	; 1 bytes @ 0x4
??___bmul:	; 1 bytes @ 0x4
??___lbdiv:	; 1 bytes @ 0x4
??___lbmod:	; 1 bytes @ 0x4
	global	keyCtr@kclick
keyCtr@kclick:	; 1 bytes @ 0x4
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x4
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x4
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x5
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x5
	ds	1
??_workCtr:	; 1 bytes @ 0x6
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
;!    _workCtr->___bmul
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
;! (0) _main                                                 0     0      0    3417
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
;! (1) _workCtr                                              0     0      0     145
;!                             ___bmul
;!                            _pwmInit
;!                            _pwmStop
;! ---------------------------------------------------------------------------------
;! (2) _pwmStop                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _pwmInit                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___bmul                                               3     2      1     145
;!                                              3 COMMON     3     2      1
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
;!     ___bmul
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
;;		line 124 in file "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
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
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
	line	124
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
	line	124
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	126
	
l3423:	
;main.c: 126: Init_System();
	fcall	_Init_System
	line	127
;main.c: 127: AD_Init();
	fcall	_AD_Init
	line	128
	
l3425:	
;main.c: 128: firstTime = 100;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_firstTime)
	line	129
;main.c: 129: while (1)
	
l661:	
	line	131
# 131 "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
clrwdt ;# 
psect	maintext
	line	132
	
l3427:	
;main.c: 132: if(intCount10 > 10)
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_intCount10),w
	skipc
	goto	u3971
	goto	u3970
u3971:
	goto	l3433
u3970:
	line	134
	
l3429:	
;main.c: 133: {
;main.c: 134: intCount10 = 0;
	clrf	(_intCount10)
	line	135
	
l3431:	
;main.c: 135: checkOutA();
	fcall	_checkOutA
	line	137
	
l3433:	
;main.c: 136: }
;main.c: 137: if(!IntFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u3981
	goto	u3980
u3981:
	goto	l3437
u3980:
	goto	l661
	line	139
	
l3437:	
;main.c: 139: IntFlag = 0;
	clrf	(_IntFlag)
	line	140
	
l3439:	
;main.c: 140: chrgCtr();
	fcall	_chrgCtr
	line	141
	
l3441:	
;main.c: 141: checkBatAD();
	fcall	_checkBatAD
	line	142
	
l3443:	
;main.c: 142: if(chrgFlag == 0 && lowBatFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3991
	goto	u3990
u3991:
	goto	l665
u3990:
	
l3445:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u4001
	goto	u4000
u4001:
	goto	l665
u4000:
	line	144
	
l3447:	
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
	
l3449:	
;main.c: 148: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && showBatTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u4011
	goto	u4010
u4011:
	goto	l3465
u4010:
	
l3451:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u4021
	goto	u4020
u4021:
	goto	l3465
u4020:
	
l3453:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u4031
	goto	u4030
u4031:
	goto	l3465
u4030:
	
l3455:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u4041
	goto	u4040
u4041:
	goto	l3465
u4040:
	
l3457:	
	movf	((_showBatTime)),w
	btfss	status,2
	goto	u4051
	goto	u4050
u4051:
	goto	l3465
u4050:
	line	150
	
l3459:	
;main.c: 149: {
;main.c: 150: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u4061
	goto	u4060
u4061:
	goto	l661
u4060:
	line	152
	
l3461:	
;main.c: 151: {
;main.c: 152: sleepTime = 0;
	clrf	(_sleepTime)
	line	153
	
l3463:	
;main.c: 153: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l661
	line	158
	
l3465:	
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
;;		line 534 in file "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
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
;;		___bmul
;;		_pwmInit
;;		_pwmStop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	534
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
	line	534
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	537
	
l2737:	
;main.c: 537: if(startTime > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_startTime)),w
	btfsc	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l2741
u2620:
	line	539
	
l2739:	
;main.c: 538: {
;main.c: 539: startTime--;
	decf	(_startTime),f
	line	541
	
l2741:	
;main.c: 540: }
;main.c: 541: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l2765
u2630:
	line	543
	
l2743:	
;main.c: 542: {
;main.c: 543: if((PWMCON0 & 0x02) == 0)
	btfsc	(21),(1)&7	;volatile
	goto	u2641
	goto	u2640
u2641:
	goto	l783
u2640:
	line	545
	
l2745:	
;main.c: 544: {
;main.c: 545: pwmInit();
	fcall	_pwmInit
	line	546
	
l783:	
	line	547
;main.c: 546: }
;main.c: 547: maxDuty = 33 + (workStep*11);
	movlw	low(0Bh)
	movwf	(___bmul@multiplicand)
	movf	(_workStep),w
	fcall	___bmul
	addlw	021h
	movwf	(_maxDuty)
	line	548
	
l2747:	
;main.c: 548: if(overCount >= 5)
	movlw	low(05h)
	subwf	(_overCount),w
	skipc
	goto	u2651
	goto	u2650
u2651:
	goto	l2757
u2650:
	line	550
	
l2749:	
;main.c: 549: {
;main.c: 550: if(++count5s > 500)
	incf	(_count5s),f
	skipnz
	incf	(_count5s+1),f
	movlw	01h
	subwf	((_count5s+1)),w
	movlw	0F5h
	skipnz
	subwf	((_count5s)),w
	skipc
	goto	u2661
	goto	u2660
u2661:
	goto	l2759
u2660:
	line	552
	
l2751:	
;main.c: 551: {
;main.c: 552: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	553
	
l2753:	
;main.c: 553: overWorkTime = 180;
	movlw	low(0B4h)
	movwf	(_overWorkTime)
	line	554
	
l2755:	
;main.c: 554: preLedStep = workStep;
	movf	(_workStep),w
	movwf	(_preLedStep)
	line	555
;main.c: 555: workStep = 0;
	clrf	(_workStep)
	goto	l2759
	line	561
	
l2757:	
;main.c: 559: else
;main.c: 560: {
;main.c: 561: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	563
	
l2759:	
;main.c: 562: }
;main.c: 563: if(count1s == 0 && ++count900s >= 900)
	movf	((_count1s)),w
	btfss	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l789
u2670:
	
l2761:	
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	movlw	03h
	subwf	((_count900s+1)),w
	movlw	084h
	skipnz
	subwf	((_count900s)),w
	skipc
	goto	u2681
	goto	u2680
u2681:
	goto	l789
u2680:
	line	565
	
l2763:	
;main.c: 564: {
;main.c: 565: workStep = 0;
	clrf	(_workStep)
	goto	l789
	line	570
	
l2765:	
;main.c: 568: else
;main.c: 569: {
;main.c: 570: pwmStop();
	fcall	_pwmStop
	line	571
	
l2767:	
;main.c: 571: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	573
	
l789:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 920 in file "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
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
	line	920
global __ptext2
__ptext2:	;psect for function _pwmStop
psect	text2
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
	line	920
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: []
	line	922
	
l2199:	
;main.c: 922: PWMCON0 &= 0XFD;
	bcf	(21)+(1/8),(1)&7	;volatile
	line	923
;main.c: 923: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	924
	
l866:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 905 in file "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
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
	line	905
global __ptext3
__ptext3:	;psect for function _pwmInit
psect	text3
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
	line	905
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2]
	line	907
	
l2189:	
;main.c: 907: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	908
;main.c: 908: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	909
	
l2191:	
;main.c: 909: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	912
	
l2193:	
;main.c: 912: PWMD01H = 0;
	clrf	(30)	;volatile
	line	913
;main.c: 913: PWMD1L = 50;
	movlw	low(032h)
	movwf	(26)	;volatile
	line	914
	
l2195:	
;main.c: 914: PWM01DT = 0X00;
	clrf	(31)	;volatile
	line	916
	
l2197:	
;main.c: 916: PWMCON0 = 0X62;
	movlw	low(062h)
	movwf	(21)	;volatile
	line	917
;main.c: 917: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	918
	
l863:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    5[COMMON] unsigned char 
;;  product         1    4[COMMON] unsigned char 
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
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\Umul8.c"
	line	4
global __ptext4
__ptext4:	;psect for function ___bmul
psect	text4
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	6
	
l2273:	
	clrf	(___bmul@product)
	line	43
	
l2275:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1691
	goto	u1690
u1691:
	goto	l2279
u1690:
	line	44
	
l2277:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	45
	
l2279:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	46
	
l2281:	
	clrc
	rrf	(___bmul@multiplier),f
	line	47
	movf	((___bmul@multiplier)),w
	btfss	status,2
	goto	u1701
	goto	u1700
u1701:
	goto	l2275
u1700:
	line	50
	
l2283:	
	movf	(___bmul@product),w
	line	51
	
l915:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_ledCtr

;; *************** function _ledCtr *****************
;; Defined at:
;;		line 231 in file "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
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
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
	line	231
global __ptext5
__ptext5:	;psect for function _ledCtr
psect	text5
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
	line	231
	global	__size_of_ledCtr
	__size_of_ledCtr	equ	__end_of_ledCtr-_ledCtr
	
_ledCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _ledCtr: [wreg+status,2+status,0+pclath+cstack]
	line	233
	
l3371:	
;main.c: 233: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u3851
	goto	u3850
u3851:
	goto	l3381
u3850:
	line	235
	
l3373:	
;main.c: 234: {
;main.c: 235: firstTime--;
	decf	(_firstTime),f
	line	236
	
l3375:	
;main.c: 236: ledStep = 6;
	movlw	low(06h)
	movwf	(_ledStep)
	line	237
	
l3377:	
;main.c: 237: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u3861
	goto	u3860
u3861:
	goto	l714
u3860:
	line	239
	
l3379:	
;main.c: 238: {
;main.c: 239: prePwStep = pwStep;
	movf	(_pwStep),w
	movwf	(_prePwStep)
	goto	l714
	line	242
	
l3381:	
;main.c: 242: else if(overWorkTime > 0)
	movf	((_overWorkTime)),w
	btfsc	status,2
	goto	u3871
	goto	u3870
u3871:
	goto	l3391
u3870:
	line	244
	
l3383:	
;main.c: 243: {
;main.c: 244: overWorkTime--;
	decf	(_overWorkTime),f
	line	245
	
l3385:	
;main.c: 245: if(overWorkTime % 60 < 30)
	movlw	low(03Ch)
	movwf	(___lbmod@divisor)
	movf	(_overWorkTime),w
	fcall	___lbmod
	movwf	(??_ledCtr+0)+0
	movlw	01Eh
	subwf	(??_ledCtr+0)+0,w
	skipnc
	goto	u3881
	goto	u3880
u3881:
	goto	l3389
u3880:
	line	247
	
l3387:	
;main.c: 246: {
;main.c: 247: ledStep = preLedStep;
	movf	(_preLedStep),w
	movwf	(_ledStep)
	line	248
;main.c: 248: }
	goto	l714
	line	251
	
l3389:	
;main.c: 249: else
;main.c: 250: {
;main.c: 251: ledStep = 0;
	clrf	(_ledStep)
	goto	l714
	line	254
	
l3391:	
;main.c: 254: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u3891
	goto	u3890
u3891:
	goto	l3409
u3890:
	line	256
	
l3393:	
;main.c: 255: {
;main.c: 256: showBatTime--;
	decf	(_showBatTime),f
	line	257
	
l3395:	
;main.c: 257: if(prePwStep >= 14)
	movlw	low(0Eh)
	subwf	(_prePwStep),w
	skipc
	goto	u3901
	goto	u3900
u3901:
	goto	l3399
u3900:
	line	259
	
l3397:	
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
	
l3399:	
;main.c: 261: else if(prePwStep > 5)
	movlw	low(06h)
	subwf	(_prePwStep),w
	skipc
	goto	u3911
	goto	u3910
u3911:
	goto	l3403
u3910:
	line	263
	
l3401:	
;main.c: 262: {
;main.c: 263: ledStep = 1;
	clrf	(_ledStep)
	incf	(_ledStep),f
	line	264
;main.c: 264: }
	goto	l714
	line	267
	
l3403:	
;main.c: 265: else
;main.c: 266: {
;main.c: 267: if(count1s < 50)
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u3921
	goto	u3920
u3921:
	goto	l3389
u3920:
	goto	l3401
	line	275
	
l702:	
	line	276
;main.c: 274: }
;main.c: 275: }
;main.c: 276: }
	goto	l714
	line	277
	
l3409:	
;main.c: 277: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3931
	goto	u3930
u3931:
	goto	l3413
u3930:
	line	279
	
l3411:	
;main.c: 278: {
;main.c: 279: ledStep = workStep;
	movf	(_workStep),w
	movwf	(_ledStep)
	line	280
;main.c: 280: }
	goto	l714
	line	281
	
l3413:	
;main.c: 281: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3941
	goto	u3940
u3941:
	goto	l3389
u3940:
	line	283
	
l3415:	
;main.c: 282: {
;main.c: 283: if(count1s % 50 == 0)
	movlw	low(032h)
	movwf	(___lbmod@divisor)
	movf	(_count1s),w
	fcall	___lbmod
	xorlw	0
	skipz
	goto	u3951
	goto	u3950
u3951:
	goto	l714
u3950:
	line	285
	
l3417:	
;main.c: 284: {
;main.c: 285: if(++ledStep > 6)
	movlw	low(07h)
	incf	(_ledStep),f
	subwf	((_ledStep)),w
	skipc
	goto	u3961
	goto	u3960
u3961:
	goto	l702
u3960:
	line	287
	
l3419:	
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
	
l3029:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l3031:	
	clrf	(___lbmod@rem)
	line	12
	
l3033:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u3125:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u3125
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l3035:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l3037:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u3131
	goto	u3130
u3131:
	goto	l3041
u3130:
	line	15
	
l3039:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l3041:	
	decfsz	(___lbmod@counter),f
	goto	u3141
	goto	u3140
u3141:
	goto	l3033
u3140:
	line	17
	
l3043:	
	movf	(___lbmod@rem),w
	line	18
	
l1166:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 497 in file "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
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
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
	line	497
global __ptext7
__ptext7:	;psect for function _keyCtr
psect	text7
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
	line	497
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	499
	
l2709:	
;main.c: 499: char kclick = keyRead(0x04 & (~PORTB));
	comf	(6),w	;volatile
	andlw	04h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	500
	
l2711:	
;main.c: 500: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l2727
u2560:
	line	502
	
l2713:	
;main.c: 501: {
;main.c: 502: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l2719
u2570:
	line	504
	
l2715:	
;main.c: 503: {
;main.c: 504: if(++workStep > 6)
	movlw	low(07h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l778
u2580:
	line	506
	
l2717:	
;main.c: 505: {
;main.c: 506: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l778
	line	509
	
l2719:	
;main.c: 509: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l2723
u2590:
	line	511
	
l2721:	
;main.c: 510: {
;main.c: 511: showBatTime = 0;
	clrf	(_showBatTime)
	line	512
;main.c: 512: }
	goto	l778
	line	515
	
l2723:	
;main.c: 513: else
;main.c: 514: {
;main.c: 515: showBatTime = 200;
	movlw	low(0C8h)
	movwf	(_showBatTime)
	line	516
	
l2725:	
;main.c: 516: count1s = 0;
	clrf	(_count1s)
	goto	l778
	line	519
	
l2727:	
;main.c: 519: else if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l778
u2600:
	line	521
	
l2729:	
;main.c: 520: {
;main.c: 521: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l776
u2610:
	line	523
	
l2731:	
;main.c: 522: {
;main.c: 523: workStep = 0;
	clrf	(_workStep)
	line	524
;main.c: 524: }
	goto	l778
	line	525
	
l776:	
	line	527
;main.c: 525: else
;main.c: 526: {
;main.c: 527: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	528
	
l2733:	
;main.c: 528: startTime = 30;
	movlw	low(01Eh)
	movwf	(_startTime)
	goto	l2721
	line	532
	
l778:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 464 in file "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
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
	line	464
global __ptext8
__ptext8:	;psect for function _keyRead
psect	text8
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
	line	464
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	466
	
l2149:	
;main.c: 466: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1491
	goto	u1490
u1491:
	goto	l2165
u1490:
	line	468
	
l2151:	
;main.c: 467: {
;main.c: 468: keyCount++;
	incf	(_keyCount),f
	line	469
	
l2153:	
;main.c: 469: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1501
	goto	u1500
u1501:
	goto	l2169
u1500:
	line	471
	
l2155:	
;main.c: 470: {
;main.c: 471: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	line	472
	
l2157:	
;main.c: 472: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1511
	goto	u1510
u1511:
	goto	l2169
u1510:
	line	474
	
l2159:	
;main.c: 473: {
;main.c: 474: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	475
	
l2161:	
;main.c: 475: return 2;
	movlw	low(02h)
	goto	l761
	line	481
	
l2165:	
;main.c: 479: else
;main.c: 480: {
;main.c: 481: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1521
	goto	u1520
u1521:
	goto	l2175
u1520:
	line	483
	
l2167:	
;main.c: 482: {
;main.c: 483: keyCount = 0;
	clrf	(_keyCount)
	line	484
;main.c: 484: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	485
	
l2169:	
;main.c: 485: return 0;
	movlw	low(0)
	goto	l761
	line	487
	
l2175:	
;main.c: 487: else if(keyCount >= 6)
	movlw	low(06h)
	subwf	(_keyCount),w
	skipc
	goto	u1531
	goto	u1530
u1531:
	goto	l2183
u1530:
	line	489
	
l2177:	
;main.c: 488: {
;main.c: 489: keyCount = 0;
	clrf	(_keyCount)
	line	490
	
l2179:	
;main.c: 490: return 1;
	movlw	low(01h)
	goto	l761
	line	492
	
l2183:	
;main.c: 491: }
;main.c: 492: keyCount = 0;
	clrf	(_keyCount)
	goto	l2169
	line	495
	
l761:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 299 in file "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
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
	line	299
global __ptext9
__ptext9:	;psect for function _chrgCtr
psect	text9
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
	line	299
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	301
	
l3151:	
;main.c: 301: if(PORTA & 0x02)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(134)^080h,(1)&7	;volatile
	goto	u3401
	goto	u3400
u3401:
	goto	l3285
u3400:
	line	303
	
l3153:	
;main.c: 302: {
;main.c: 303: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3411
	goto	u3410
u3411:
	goto	l3161
u3410:
	line	305
	
l3155:	
;main.c: 304: {
;main.c: 305: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	306
	
l3157:	
;main.c: 306: ledStep = 0;
	clrf	(_ledStep)
	line	307
;main.c: 307: chrgMaxDuty = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgMaxDuty)
	line	308
	
l3159:	
;main.c: 308: chrgPwmStop();
	fcall	_chrgPwmStop
	line	310
	
l3161:	
;main.c: 309: }
;main.c: 310: workStep = 0;
	clrf	(_workStep)
	line	311
	
l3163:	
;main.c: 311: lowBatFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_lowBatFlag)
	line	312
	
l3165:	
;main.c: 312: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u3421
	goto	u3420
u3421:
	goto	l3173
u3420:
	line	314
	
l3167:	
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
	goto	u3431
	goto	u3430
u3431:
	goto	l3175
u3430:
	line	316
	
l3169:	
;main.c: 315: {
;main.c: 316: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	317
	
l3171:	
;main.c: 317: prePwStep++;
	incf	(_prePwStep),f
	goto	l3175
	line	322
	
l3173:	
;main.c: 320: else
;main.c: 321: {
;main.c: 322: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	324
	
l3175:	
;main.c: 323: }
;main.c: 324: if(protectFlag)
	movf	((_protectFlag)),w
	btfsc	status,2
	goto	u3441
	goto	u3440
u3441:
	goto	l3199
u3440:
	line	326
	
l3177:	
;main.c: 325: {
;main.c: 326: chrgPwmStop();
	fcall	_chrgPwmStop
	line	327
	
l3179:	
;main.c: 327: ledStep = 6;
	movlw	low(06h)
	movwf	(_ledStep)
	line	328
	
l3181:	
;main.c: 328: if(prePwStep < 99 && protectFlag == 1)
	movlw	low(063h)
	subwf	(_prePwStep),w
	skipnc
	goto	u3451
	goto	u3450
u3451:
	goto	l3195
u3450:
	
l3183:	
		decf	((_protectFlag)),w
	btfss	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l3195
u3460:
	line	330
	
l3185:	
;main.c: 329: {
;main.c: 330: if(++reChrgCount > 250)
	movlw	low(0FBh)
	incf	(_reChrgCount),f
	subwf	((_reChrgCount)),w
	skipc
	goto	u3471
	goto	u3470
u3471:
	goto	l728
u3470:
	line	332
	
l3187:	
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
	
l3189:	
;main.c: 335: if(prePwStep > 14)
	movlw	low(0Fh)
	subwf	(_prePwStep),w
	skipc
	goto	u3481
	goto	u3480
u3481:
	goto	l3193
u3480:
	line	337
	
l3191:	
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
	
l3193:	
;main.c: 339: else
;main.c: 340: {
;main.c: 341: lockLedStep = 0;
	clrf	(_lockLedStep)
	goto	l728
	line	347
	
l3195:	
;main.c: 345: else
;main.c: 346: {
;main.c: 347: reChrgCount = 0;
	clrf	(_reChrgCount)
	goto	l728
	line	351
	
l3199:	
;main.c: 350: }
;main.c: 351: if(batADValue < 1118)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Eh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3491
	goto	u3490
u3491:
	goto	l3205
u3490:
	line	353
	
l3201:	
;main.c: 352: {
;main.c: 353: chrgMode = 0;
	clrf	(_chrgMode)
	line	354
	
l3203:	
;main.c: 354: chrgMaxAD = 15;
	movlw	low(0Fh)
	movwf	(_chrgMaxAD)
	line	355
;main.c: 355: }
	goto	l3223
	line	356
	
l3205:	
;main.c: 356: else if(batADValue < 1530)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	0FAh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3501
	goto	u3500
u3501:
	goto	l3213
u3500:
	line	358
	
l3207:	
;main.c: 357: {
;main.c: 358: chrgMode = 1;
	clrf	(_chrgMode)
	incf	(_chrgMode),f
	line	359
	
l3209:	
;main.c: 359: chrgMaxAD = 40;
	movlw	low(028h)
	movwf	(_chrgMaxAD)
	line	360
	
l3211:	
;main.c: 360: lockCount = 0;
	clrf	(_lockCount)
	line	361
;main.c: 361: }
	goto	l3223
	line	362
	
l3213:	
;main.c: 362: else if(count1s == 0)
	movf	((_count1s)),w
	btfss	status,2
	goto	u3511
	goto	u3510
u3511:
	goto	l3223
u3510:
	line	364
	
l3215:	
;main.c: 363: {
;main.c: 364: if(++lockCount > 200)
	movlw	low(0C9h)
	incf	(_lockCount),f
	subwf	((_lockCount)),w
	skipc
	goto	u3521
	goto	u3520
u3521:
	goto	l3221
u3520:
	line	366
	
l3217:	
;main.c: 365: {
;main.c: 366: lockCount = 0;
	clrf	(_lockCount)
	line	367
	
l3219:	
;main.c: 367: chrgMode = 2;
	movlw	low(02h)
	movwf	(_chrgMode)
	line	370
	
l3221:	
;main.c: 368: }
;main.c: 370: chrgMaxAD = 40;
	movlw	low(028h)
	movwf	(_chrgMaxAD)
	line	372
	
l3223:	
;main.c: 371: }
;main.c: 372: if(chrgMode == 2 && outADValue < 5)
		movlw	2
	xorwf	((_chrgMode)),w
	btfss	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l3233
u3530:
	
l3225:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	05h
	skipnz
	subwf	(_outADValue),w
	skipnc
	goto	u3541
	goto	u3540
u3541:
	goto	l3233
u3540:
	line	374
	
l3227:	
;main.c: 373: {
;main.c: 374: if(++fullCount >= 200)
	incf	(_fullCount),f
	skipnz
	incf	(_fullCount+1),f
	movlw	0
	subwf	((_fullCount+1)),w
	movlw	0C8h
	skipnz
	subwf	((_fullCount)),w
	skipc
	goto	u3551
	goto	u3550
u3551:
	goto	l3235
u3550:
	line	376
	
l3229:	
;main.c: 375: {
;main.c: 376: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	377
	
l3231:	
;main.c: 377: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l3235
	line	382
	
l3233:	
;main.c: 380: else
;main.c: 381: {
;main.c: 382: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	384
	
l3235:	
;main.c: 383: }
;main.c: 384: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u3561
	goto	u3560
u3561:
	goto	l3241
u3560:
	line	386
	
l3237:	
;main.c: 385: {
;main.c: 386: lockLedStep = 6;
	movlw	low(06h)
	movwf	(_lockLedStep)
	line	387
	
l3239:	
;main.c: 387: chrgPwmStop();
	fcall	_chrgPwmStop
	line	388
;main.c: 388: }
	goto	l728
	line	391
	
l3241:	
;main.c: 389: else
;main.c: 390: {
;main.c: 391: if(prePwStep < 15)
	movlw	low(0Fh)
	subwf	(_prePwStep),w
	skipnc
	goto	u3571
	goto	u3570
u3571:
	goto	l3245
u3570:
	line	393
	
l3243:	
;main.c: 392: {
;main.c: 393: lockLedStep = 0;
	clrf	(_lockLedStep)
	line	394
;main.c: 394: }
	goto	l3247
	line	397
	
l3245:	
;main.c: 395: else
;main.c: 396: {
;main.c: 397: lockLedStep = (prePwStep/14) - 1;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	0FFh
	movwf	(_lockLedStep)
	line	399
	
l3247:	
;main.c: 398: }
;main.c: 399: if(batADValue > 1545 || outADValue > (chrgMaxAD + 2))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	0Ah
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3581
	goto	u3580
u3581:
	goto	l3251
u3580:
	
l3249:	
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
	goto	u3595
	movf	(_outADValue),w
	subwf	0+(??_chrgCtr+0)+0,w
u3595:
	skipnc
	goto	u3591
	goto	u3590
u3591:
	goto	l3263
u3590:
	line	401
	
l3251:	
;main.c: 400: {
;main.c: 401: if(++subTime > chrgWaitTime)
	incf	(_subTime),f
	movf	((_subTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u3601
	goto	u3600
u3601:
	goto	l3261
u3600:
	line	403
	
l3253:	
;main.c: 402: {
;main.c: 403: if(chrgMaxDuty > 1)
	movlw	low(02h)
	subwf	(_chrgMaxDuty),w
	skipc
	goto	u3611
	goto	u3610
u3611:
	goto	l3257
u3610:
	line	405
	
l3255:	
;main.c: 404: {
;main.c: 405: chrgMaxDuty--;
	decf	(_chrgMaxDuty),f
	line	407
	
l3257:	
;main.c: 406: }
;main.c: 407: subTime = 0;
	clrf	(_subTime)
	line	408
	
l3259:	
;main.c: 408: chrgWaitTime = 50;
	movlw	low(032h)
	movwf	(_chrgWaitTime)
	line	410
	
l3261:	
;main.c: 409: }
;main.c: 410: addTime = 0;
	clrf	(_addTime)
	line	411
;main.c: 411: }
	goto	l3277
	line	412
	
l3263:	
;main.c: 412: else if(batADValue < 1545 && outADValue < (chrgMaxAD - 4))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	09h
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3621
	goto	u3620
u3621:
	goto	l3277
u3620:
	
l3265:	
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
	goto	u3635
	movf	0+(??_chrgCtr+0)+0,w
	subwf	(_outADValue),w
u3635:
	skipnc
	goto	u3631
	goto	u3630
u3631:
	goto	l3277
u3630:
	line	414
	
l3267:	
;main.c: 413: {
;main.c: 414: if(++addTime > chrgWaitTime)
	incf	(_addTime),f
	movf	((_addTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u3641
	goto	u3640
u3641:
	goto	l3275
u3640:
	line	416
	
l3269:	
;main.c: 415: {
;main.c: 416: addTime = 0;
	clrf	(_addTime)
	line	417
	
l3271:	
;main.c: 417: if(chrgMaxDuty < 75)
	movlw	low(04Bh)
	subwf	(_chrgMaxDuty),w
	skipnc
	goto	u3651
	goto	u3650
u3651:
	goto	l3275
u3650:
	line	419
	
l3273:	
;main.c: 418: {
;main.c: 419: chrgMaxDuty++;
	incf	(_chrgMaxDuty),f
	line	422
	
l3275:	
;main.c: 420: }
;main.c: 421: }
;main.c: 422: subTime = 0;
	clrf	(_subTime)
	line	426
	
l3277:	
;main.c: 423: }
;main.c: 426: if((PWMCON0 & 0x01) == 0)
	btfsc	(21),(0)&7	;volatile
	goto	u3661
	goto	u3660
u3661:
	goto	l3281
u3660:
	line	428
	
l3279:	
;main.c: 427: {
;main.c: 428: chrgPwmInit();
	fcall	_chrgPwmInit
	line	430
	
l3281:	
;main.c: 429: }
;main.c: 430: PWMD01H = 0X00;
	clrf	(30)	;volatile
	line	431
	
l3283:	
;main.c: 431: PWMD0L = chrgMaxDuty;
	movf	(_chrgMaxDuty),w
	movwf	(25)	;volatile
	goto	l728
	line	437
	
l3285:	
;main.c: 437: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	438
;main.c: 438: chrgFullFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgFullFlag)
	line	439
;main.c: 439: protectFlag = 0;
	clrf	(_protectFlag)
	line	440
;main.c: 440: chrgMode = 0;
	clrf	(_chrgMode)
	line	441
;main.c: 441: chrgMaxAD = 0;
	clrf	(_chrgMaxAD)
	line	442
;main.c: 442: chrgMaxDuty = 0;
	clrf	(_chrgMaxDuty)
	line	443
;main.c: 443: lockCount = 0;
	clrf	(_lockCount)
	line	444
;main.c: 444: lockLedStep = 0;
	clrf	(_lockLedStep)
	line	445
	
l3287:	
;main.c: 445: chrgWaitTime = 20;
	movlw	low(014h)
	movwf	(_chrgWaitTime)
	line	446
	
l3289:	
;main.c: 446: chrgPwmStop();
	fcall	_chrgPwmStop
	line	447
	
l3291:	
;main.c: 447: if(prePwStep > 0 && prePwStep > pwStep)
	movf	((_prePwStep)),w
	btfsc	status,2
	goto	u3671
	goto	u3670
u3671:
	goto	l3301
u3670:
	
l3293:	
	movf	(_prePwStep),w
	subwf	(_pwStep),w
	skipnc
	goto	u3681
	goto	u3680
u3681:
	goto	l3301
u3680:
	line	449
	
l3295:	
;main.c: 448: {
;main.c: 449: if(++count50s > 2000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	07h
	subwf	((_count50s+1)),w
	movlw	0D1h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u3691
	goto	u3690
u3691:
	goto	l728
u3690:
	line	451
	
l3297:	
;main.c: 450: {
;main.c: 451: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	452
	
l3299:	
;main.c: 452: prePwStep--;
	decf	(_prePwStep),f
	goto	l728
	line	457
	
l3301:	
;main.c: 455: else
;main.c: 456: {
;main.c: 457: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	460
	
l728:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_chrgPwmStop

;; *************** function _chrgPwmStop *****************
;; Defined at:
;;		line 899 in file "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
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
	line	899
global __ptext10
__ptext10:	;psect for function _chrgPwmStop
psect	text10
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
	line	899
	global	__size_of_chrgPwmStop
	__size_of_chrgPwmStop	equ	__end_of_chrgPwmStop-_chrgPwmStop
	
_chrgPwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmStop: []
	line	901
	
l2137:	
;main.c: 901: PWMCON0 &= 0xFE;
	bcf	(21)+(0/8),(0)&7	;volatile
	line	902
;main.c: 902: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	line	903
	
l860:	
	return
	opt stack 0
GLOBAL	__end_of_chrgPwmStop
	__end_of_chrgPwmStop:
	signat	_chrgPwmStop,89
	global	_chrgPwmInit

;; *************** function _chrgPwmInit *****************
;; Defined at:
;;		line 882 in file "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
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
	line	882
global __ptext11
__ptext11:	;psect for function _chrgPwmInit
psect	text11
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
	line	882
	global	__size_of_chrgPwmInit
	__size_of_chrgPwmInit	equ	__end_of_chrgPwmInit-_chrgPwmInit
	
_chrgPwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmInit: [wreg+status,2]
	line	884
	
l2139:	
;main.c: 884: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	886
;main.c: 886: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	887
	
l2141:	
;main.c: 887: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	891
	
l2143:	
;main.c: 891: PWMD01H = 0;
	clrf	(30)	;volatile
	line	892
;main.c: 892: PWMD0L = 1;
	movlw	low(01h)
	movwf	(25)	;volatile
	line	893
	
l2145:	
;main.c: 893: PWM01DT = 0X00;
	clrf	(31)	;volatile
	line	895
	
l2147:	
;main.c: 895: PWMCON0 = 0X01;
	movlw	low(01h)
	movwf	(21)	;volatile
	line	896
;main.c: 896: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	897
	
l857:	
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
	
l2287:	
	clrf	(___lbdiv@quotient)
	line	10
	
l2289:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1711
	goto	u1710
u1711:
	goto	l2307
u1710:
	line	11
	
l2291:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2295
	
l1155:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l2293:	
	incf	(___lbdiv@counter),f
	line	12
	
l2295:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1721
	goto	u1720
u1721:
	goto	l1155
u1720:
	line	16
	
l1157:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l2297:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1731
	goto	u1730
u1731:
	goto	l2303
u1730:
	line	19
	
l2299:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2301:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2303:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l2305:	
	decfsz	(___lbdiv@counter),f
	goto	u1741
	goto	u1740
u1741:
	goto	l1157
u1740:
	line	25
	
l2307:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1160:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_checkOutA

;; *************** function _checkOutA *****************
;; Defined at:
;;		line 575 in file "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
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
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
	line	575
global __ptext13
__ptext13:	;psect for function _checkOutA
psect	text13
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
	line	575
	global	__size_of_checkOutA
	__size_of_checkOutA	equ	__end_of_checkOutA-_checkOutA
	
_checkOutA:	
;incstack = 0
	opt	stack 4
; Regs used in _checkOutA: [wreg+status,2+status,0+pclath+cstack]
	line	577
	
l3047:	
;main.c: 577: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l3051
u3150:
	line	579
	
l3049:	
;main.c: 578: {
;main.c: 579: test_adc = ADC_Sample(4, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(04h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	580
;main.c: 580: }
	goto	l3053
	line	583
	
l3051:	
;main.c: 581: else
;main.c: 582: {
;main.c: 583: test_adc = ADC_Sample(0, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	585
	
l3053:	
;main.c: 584: }
;main.c: 585: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3161
	goto	u3160
u3161:
	goto	l3147
u3160:
	line	587
	
l3055:	
;main.c: 586: {
;main.c: 587: if(chrgFlag && adresult > 210)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l3065
u3170:
	
l3057:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	0D3h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u3181
	goto	u3180
u3181:
	goto	l3065
u3180:
	line	589
	
l3059:	
;main.c: 588: {
;main.c: 589: if(++overChrgTime > 10)
	movlw	low(0Bh)
	incf	(_overChrgTime),f
	subwf	((_overChrgTime)),w
	skipc
	goto	u3191
	goto	u3190
u3191:
	goto	l3067
u3190:
	line	591
	
l3061:	
;main.c: 590: {
;main.c: 591: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	592
	
l3063:	
;main.c: 592: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l3067
	line	598
	
l3065:	
;main.c: 596: else
;main.c: 597: {
;main.c: 598: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	600
	
l3067:	
;main.c: 599: }
;main.c: 600: outADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_outADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_outADValue)
	line	602
	
l3069:	
;main.c: 602: if(workStep && (outADValue > 220))
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3201
	goto	u3200
u3201:
	goto	l3077
u3200:
	
l3071:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	0DDh
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3211
	goto	u3210
u3211:
	goto	l3077
u3210:
	line	604
	
l3073:	
;main.c: 603: {
;main.c: 604: if(++workOverOutTime > 50)
	movlw	low(033h)
	incf	(_workOverOutTime),f
	subwf	((_workOverOutTime)),w
	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l3079
u3220:
	line	606
	
l3075:	
;main.c: 605: {
;main.c: 606: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	607
;main.c: 607: workStep = 0;
	clrf	(_workStep)
	goto	l3079
	line	612
	
l3077:	
;main.c: 610: else
;main.c: 611: {
;main.c: 612: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	614
	
l3079:	
	line	615
	
l3081:	
;main.c: 615: if(workStep < 6 && outADValue > maxtempV)
	movlw	low(06h)
	subwf	(_workStep),w
	skipnc
	goto	u3231
	goto	u3230
u3231:
	goto	l3089
u3230:
	
l3083:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	029h
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3241
	goto	u3240
u3241:
	goto	l3089
u3240:
	line	617
	
l3085:	
;main.c: 616: {
;main.c: 617: if(++overCount > 5)
	movlw	low(06h)
	incf	(_overCount),f
	subwf	((_overCount)),w
	skipc
	goto	u3251
	goto	u3250
u3251:
	goto	l3143
u3250:
	line	619
	
l3087:	
;main.c: 618: {
;main.c: 619: overCount = 5;
	movlw	low(05h)
	movwf	(_overCount)
	goto	l3143
	line	622
	
l3089:	
;main.c: 622: else if(outADValue > (maxtempV+3))
	movlw	0
	subwf	(_outADValue+1),w
	movlw	02Ch
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3261
	goto	u3260
u3261:
	goto	l3095
u3260:
	line	624
	
l3091:	
;main.c: 623: {
;main.c: 624: if(++overCount > 5)
	movlw	low(06h)
	incf	(_overCount),f
	subwf	((_overCount)),w
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l3143
u3270:
	goto	l3087
	line	631
	
l3095:	
;main.c: 629: else
;main.c: 630: {
;main.c: 631: unsigned char maxAout = 11;
	movlw	low(0Bh)
	movwf	(checkOutA@maxAout)
	line	632
	
l3097:	
;main.c: 632: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l3101
u3280:
	line	634
	
l3099:	
;main.c: 633: {
;main.c: 634: maxAout = maxAout + 5;
	movlw	low(05h)
	addwf	(checkOutA@maxAout),f
	line	635
;main.c: 635: }
	goto	l808
	line	636
	
l3101:	
;main.c: 636: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l3105
u3290:
	line	638
	
l3103:	
;main.c: 637: {
;main.c: 638: maxAout = maxAout + 6;
	movlw	low(06h)
	addwf	(checkOutA@maxAout),f
	line	639
;main.c: 639: }
	goto	l808
	line	640
	
l3105:	
;main.c: 640: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3301
	goto	u3300
u3301:
	goto	l3109
u3300:
	line	642
	
l3107:	
;main.c: 641: {
;main.c: 642: maxAout = maxAout + 7;
	movlw	low(07h)
	addwf	(checkOutA@maxAout),f
	line	643
;main.c: 643: }
	goto	l808
	line	644
	
l3109:	
;main.c: 644: else if(workStep == 4)
		movlw	4
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3311
	goto	u3310
u3311:
	goto	l3113
u3310:
	line	646
	
l3111:	
;main.c: 645: {
;main.c: 646: maxAout = maxAout + 8;
	movlw	low(08h)
	addwf	(checkOutA@maxAout),f
	line	647
;main.c: 647: }
	goto	l808
	line	648
	
l3113:	
;main.c: 648: else if(workStep == 5)
		movlw	5
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3321
	goto	u3320
u3321:
	goto	l3117
u3320:
	line	650
	
l3115:	
;main.c: 649: {
;main.c: 650: maxAout = maxAout + 9;
	movlw	low(09h)
	addwf	(checkOutA@maxAout),f
	line	651
;main.c: 651: }
	goto	l808
	line	652
	
l3117:	
;main.c: 652: else if(workStep == 6)
		movlw	6
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3331
	goto	u3330
u3331:
	goto	l812
u3330:
	line	654
	
l3119:	
;main.c: 653: {
;main.c: 654: maxAout = maxAout + 10;
	movlw	low(0Ah)
	addwf	(checkOutA@maxAout),f
	goto	l808
	line	656
	
l812:	
	
l808:	
;main.c: 655: }
;main.c: 656: if(overCount > 0)
	movf	((_overCount)),w
	btfsc	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l3123
u3340:
	line	658
	
l3121:	
;main.c: 657: {
;main.c: 658: overCount--;
	decf	(_overCount),f
	line	660
	
l3123:	
;main.c: 659: }
;main.c: 660: if(outADValue > maxAout)
	movf	(checkOutA@maxAout),w
	movwf	(??_checkOutA+0)+0
	clrf	(??_checkOutA+0)+0+1
	movf	(_outADValue+1),w
	subwf	1+(??_checkOutA+0)+0,w
	skipz
	goto	u3355
	movf	(_outADValue),w
	subwf	0+(??_checkOutA+0)+0,w
u3355:
	skipnc
	goto	u3351
	goto	u3350
u3351:
	goto	l3135
u3350:
	line	662
	
l3125:	
;main.c: 661: {
;main.c: 662: if(++addPowerCount > 3)
	movlw	low(04h)
	incf	(_addPowerCount),f
	subwf	((_addPowerCount)),w
	skipc
	goto	u3361
	goto	u3360
u3361:
	goto	l3143
u3360:
	line	664
	
l3127:	
;main.c: 663: {
;main.c: 664: addPowerCount = 3;
	movlw	low(03h)
	movwf	(_addPowerCount)
	line	665
	
l3129:	
;main.c: 665: if(startTime == 0)
	movf	((_startTime)),w
	btfss	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l3133
u3370:
	line	667
	
l3131:	
;main.c: 666: {
;main.c: 667: tempDuty = 72 + (workStep*4);
	movf	(_workStep),w
	movwf	(??_checkOutA+0)+0
	movlw	(02h)-1
u3385:
	clrc
	rlf	(??_checkOutA+0)+0,f
	addlw	-1
	skipz
	goto	u3385
	clrc
	rlf	(??_checkOutA+0)+0,w
	addlw	048h
	movwf	(_tempDuty)
	line	669
;main.c: 669: }
	goto	l3143
	line	672
	
l3133:	
;main.c: 670: else
;main.c: 671: {
;main.c: 672: tempDuty = maxDuty;
	movf	(_maxDuty),w
	movwf	(_tempDuty)
	goto	l3143
	line	679
	
l3135:	
;main.c: 677: else
;main.c: 678: {
;main.c: 679: addPowerCount = 0;
	clrf	(_addPowerCount)
	line	680
	
l3137:	
;main.c: 680: if(tempDuty > maxDuty)
	movf	(_tempDuty),w
	subwf	(_maxDuty),w
	skipnc
	goto	u3391
	goto	u3390
u3391:
	goto	l3133
u3390:
	line	682
	
l3139:	
;main.c: 681: {
;main.c: 682: tempDuty--;
	decf	(_tempDuty),f
	line	692
;main.c: 683: }
	
l3143:	
;main.c: 687: }
;main.c: 689: }
;main.c: 691: }
;main.c: 692: PWMD01H = 0X00;
	clrf	(30)	;volatile
	line	693
	
l3145:	
;main.c: 693: PWMD1L = maxDuty;
	movf	(_maxDuty),w
	movwf	(26)	;volatile
	line	694
;main.c: 694: }
	goto	l827
	line	697
	
l3147:	
;main.c: 695: else
;main.c: 696: {
;main.c: 697: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	698
;main.c: 698: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	699
	
l3149:	
;main.c: 699: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkOutA+0)+0),f
	u4077:
decfsz	(??_checkOutA+0)+0,f
	goto	u4077
opt asmopt_pop

	line	701
	
l827:	
	return
	opt stack 0
GLOBAL	__end_of_checkOutA
	__end_of_checkOutA:
	signat	_checkOutA,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 703 in file "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
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
	line	703
global __ptext14
__ptext14:	;psect for function _checkBatAD
psect	text14
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
	line	703
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	705
	
l3303:	
;main.c: 705: test_adc = ADC_Sample(2, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(02h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	706
	
l3305:	
;main.c: 706: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3701
	goto	u3700
u3701:
	goto	l3343
u3700:
	line	708
	
l3307:	
;main.c: 707: {
;main.c: 708: batADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_batADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_batADValue)
	line	709
;main.c: 709: if(batADValue < 1117)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Dh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3711
	goto	u3710
u3711:
	goto	l3325
u3710:
	line	711
	
l3309:	
;main.c: 710: {
;main.c: 711: pwStep = 0;
	clrf	(_pwStep)
	line	712
	
l3311:	
;main.c: 712: if(++count8s > 800)
	incf	(_count8s),f
	skipnz
	incf	(_count8s+1),f
	movlw	03h
	subwf	((_count8s+1)),w
	movlw	021h
	skipnz
	subwf	((_count8s)),w
	skipc
	goto	u3721
	goto	u3720
u3721:
	goto	l3337
u3720:
	line	714
	
l3313:	
;main.c: 713: {
;main.c: 714: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	715
	
l3315:	
;main.c: 715: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	716
	
l3317:	
;main.c: 716: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3731
	goto	u3730
u3731:
	goto	l3321
u3730:
	line	718
	
l3319:	
;main.c: 717: {
;main.c: 718: overWorkTime = 180;
	movlw	low(0B4h)
	movwf	(_overWorkTime)
	line	719
;main.c: 719: preLedStep = workStep;
	movf	(_workStep),w
	movwf	(_preLedStep)
	line	721
	
l3321:	
;main.c: 720: }
;main.c: 721: prePwStep = 0;
	clrf	(_prePwStep)
	line	722
	
l3323:	
;main.c: 722: workStep = 0;
	clrf	(_workStep)
	goto	l3337
	line	727
	
l3325:	
;main.c: 725: else
;main.c: 726: {
;main.c: 727: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	728
	
l3327:	
;main.c: 728: if(batADValue >= 1340)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	03Ch
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3741
	goto	u3740
u3741:
	goto	l3331
u3740:
	line	730
	
l3329:	
;main.c: 729: {
;main.c: 730: pwStep = ((batADValue - 1340) /2) + 13;
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
	line	731
;main.c: 731: }
	goto	l3333
	line	734
	
l3331:	
;main.c: 732: else
;main.c: 733: {
;main.c: 734: pwStep = (batADValue - 1117) / 16;
	movf	(_batADValue),w
	addlw	low(0FBA3h)
	movwf	(??_checkBatAD+0)+0
	movf	(_batADValue+1),w
	skipnc
	addlw	1
	addlw	high(0FBA3h)
	movwf	1+(??_checkBatAD+0)+0
	movlw	04h
u3755:
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	addlw	-1
	skipz
	goto	u3755
	movf	0+(??_checkBatAD+0)+0,w
	movwf	(_pwStep)
	line	736
	
l3333:	
;main.c: 735: }
;main.c: 736: if(pwStep > 99)
	movlw	low(064h)
	subwf	(_pwStep),w
	skipc
	goto	u3761
	goto	u3760
u3761:
	goto	l3337
u3760:
	line	738
	
l3335:	
;main.c: 737: {
;main.c: 738: pwStep = 99;
	movlw	low(063h)
	movwf	(_pwStep)
	line	741
	
l3337:	
;main.c: 739: }
;main.c: 740: }
;main.c: 741: if(chrgFlag && batADValue > 1861)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3771
	goto	u3770
u3771:
	goto	l3347
u3770:
	
l3339:	
	movlw	07h
	subwf	(_batADValue+1),w
	movlw	046h
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3781
	goto	u3780
u3781:
	goto	l3347
u3780:
	line	743
	
l3341:	
;main.c: 742: {
;main.c: 743: protectFlag = 1;
	clrf	(_protectFlag)
	incf	(_protectFlag),f
	goto	l3347
	line	748
	
l3343:	
;main.c: 746: else
;main.c: 747: {
;main.c: 748: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	749
;main.c: 749: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	750
	
l3345:	
;main.c: 750: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u4087:
decfsz	(??_checkBatAD+0)+0,f
	goto	u4087
opt asmopt_pop

	line	752
	
l3347:	
;main.c: 751: }
;main.c: 752: test_adc = ADC_Sample(3, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(03h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	753
	
l3349:	
;main.c: 753: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3791
	goto	u3790
u3791:
	goto	l3367
u3790:
	line	755
	
l3351:	
;main.c: 754: {
;main.c: 755: if(chrgFlag && adresult > 100)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3801
	goto	u3800
u3801:
	goto	l848
u3800:
	
l3353:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	065h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u3811
	goto	u3810
u3811:
	goto	l848
u3810:
	line	758
	
l3355:	
;main.c: 756: {
;main.c: 758: if(adresult > 810 || (batADValue - adresult) > 810)
	movlw	03h
	subwf	(_adresult+1),w	;volatile
	movlw	02Bh
	skipnz
	subwf	(_adresult),w	;volatile
	skipnc
	goto	u3821
	goto	u3820
u3821:
	goto	l3359
u3820:
	
l3357:	
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
	goto	u3831
	goto	u3830
u3831:
	goto	l3365
u3830:
	line	761
	
l3359:	
;main.c: 759: {
;main.c: 761: if(++countHalfFull > 250)
	movlw	low(0FBh)
	incf	(_countHalfFull),f
	subwf	((_countHalfFull)),w
	skipc
	goto	u3841
	goto	u3840
u3841:
	goto	l841
u3840:
	line	763
	
l3361:	
;main.c: 762: {
;main.c: 763: countHalfFull = 0;
	clrf	(_countHalfFull)
	line	764
	
l3363:	
;main.c: 764: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l848
	line	769
	
l3365:	
;main.c: 767: else
;main.c: 768: {
;main.c: 769: countHalfFull = 0;
	clrf	(_countHalfFull)
	goto	l848
	line	771
	
l841:	
	line	772
;main.c: 770: }
;main.c: 771: }
;main.c: 772: }
	goto	l848
	line	775
	
l3367:	
;main.c: 773: else
;main.c: 774: {
;main.c: 775: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	776
;main.c: 776: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	777
	
l3369:	
;main.c: 777: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u4097:
decfsz	(??_checkBatAD+0)+0,f
	goto	u4097
opt asmopt_pop

	line	779
	
l848:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 1010 in file "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
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
	line	1010
global __ptext15
__ptext15:	;psect for function _ADC_Sample
psect	text15
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
	line	1010
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	1012
	
l2957:	
;main.c: 1012: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1013
	
l2959:	
;main.c: 1013: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1014
;main.c: 1014: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	1016
	
l2961:	
;main.c: 1016: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u2971
	goto	u2970
u2971:
	goto	l2967
u2970:
	
l2963:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l2967
u2980:
	line	1019
	
l2965:	
;main.c: 1017: {
;main.c: 1019: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1020
;main.c: 1020: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_ADC_Sample+0)+0),f
	u4107:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u4107
	nop2
opt asmopt_pop

	line	1021
;main.c: 1021: }
	goto	l2969
	line	1023
	
l2967:	
;main.c: 1022: else
;main.c: 1023: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1025
	
l2969:	
;main.c: 1025: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l2975
u2990:
	line	1027
	
l2971:	
;main.c: 1026: {
;main.c: 1027: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	1028
	
l2973:	
;main.c: 1028: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	1030
	
l2975:	
	line	1031
	
l2977:	
;main.c: 1031: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	1033
	
l2983:	
;main.c: 1032: {
;main.c: 1033: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u3005:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u3005
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	1034
# 1034 "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
nop ;# 
	line	1035
# 1035 "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
nop ;# 
	line	1036
# 1036 "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
nop ;# 
	line	1037
# 1037 "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
nop ;# 
psect	text15
	line	1038
	
l2985:	
;main.c: 1038: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	1040
	
l2987:	
;main.c: 1040: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	1041
;main.c: 1041: while (GODONE)
	goto	l880
	
l881:	
	line	1043
;main.c: 1042: {
;main.c: 1043: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	1045
;main.c: 1045: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u3011
	goto	u3010
u3011:
	goto	l880
u3010:
	line	1046
	
l2989:	
;main.c: 1046: return 0;
	movlw	low(0)
	goto	l883
	line	1047
	
l880:	
	line	1041
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u3021
	goto	u3020
u3021:
	goto	l881
u3020:
	line	1049
	
l2993:	
;main.c: 1047: }
;main.c: 1049: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l2995:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	1051
	
l2997:	
;main.c: 1051: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l3001
u3030:
	line	1053
	
l2999:	
;main.c: 1052: {
;main.c: 1053: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	1054
;main.c: 1054: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1055
;main.c: 1055: }
	goto	l886
	line	1056
	
l3001:	
;main.c: 1056: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u3045
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u3045:
	skipnc
	goto	u3041
	goto	u3040
u3041:
	goto	l3005
u3040:
	line	1057
	
l3003:	
;main.c: 1057: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l886
	line	1058
	
l3005:	
;main.c: 1058: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u3055
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u3055:
	skipnc
	goto	u3051
	goto	u3050
u3051:
	goto	l886
u3050:
	line	1059
	
l3007:	
;main.c: 1059: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1061
	
l886:	
;main.c: 1061: adsum += ad_temp;
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
	goto	u3061
	addwf	(ADC_Sample@adsum+1),f	;volatile
u3061:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3062
	addwf	(ADC_Sample@adsum+2),f	;volatile
u3062:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3063
	addwf	(ADC_Sample@adsum+3),f	;volatile
u3063:

	line	1031
	
l3009:	
	incf	(ADC_Sample@i),f
	
l3011:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u3071
	goto	u3070
u3071:
	goto	l2983
u3070:
	line	1063
	
l3013:	
;main.c: 1062: }
;main.c: 1063: adsum -= admax;
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

	line	1064
;main.c: 1064: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u3095
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u3095
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u3095
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u3095:
	skipc
	goto	u3091
	goto	u3090
u3091:
	goto	l890
u3090:
	line	1065
	
l3015:	
;main.c: 1065: adsum -= admin;
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
	goto	u3105
	goto	u3106
u3105:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3106:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3107
	goto	u3108
u3107:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3108:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3109
	goto	u3100
u3109:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3100:

	goto	l3017
	line	1066
	
l890:	
	line	1067
;main.c: 1066: else
;main.c: 1067: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1069
	
l3017:	
;main.c: 1069: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u3115:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u3110:
	addlw	-1
	skipz
	goto	u3115
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	1071
	
l3019:	
;main.c: 1071: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1072
	
l3021:	
;main.c: 1072: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	1073
	
l3023:	
;main.c: 1073: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1074
	
l3025:	
;main.c: 1074: return 0xA5;
	movlw	low(0A5h)
	line	1076
	
l883:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 934 in file "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
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
	line	934
global __ptext16
__ptext16:	;psect for function _Sleep_Mode
psect	text16
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
	line	934
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 4
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	936
	
l2821:	
;main.c: 936: INTCON = 0;
	clrf	(11)	;volatile
	line	938
;main.c: 938: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	940
	
l2823:	
;main.c: 940: TRISA = 0x1F;
	movlw	low(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	941
	
l2825:	
;main.c: 941: WPUA = 0B00000000;
	clrf	(136)^080h	;volatile
	line	942
	
l2827:	
;main.c: 942: PORTA = 0x00;
	clrf	(134)^080h	;volatile
	line	943
	
l2829:	
;main.c: 943: TRISB = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	944
;main.c: 944: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	945
	
l2831:	
;main.c: 945: WPUB = 0B00000100;
	movlw	low(04h)
	movwf	(8)	;volatile
	line	947
	
l2833:	
;main.c: 947: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	948
	
l2835:	
;main.c: 948: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	950
	
l2837:	
;main.c: 950: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	952
;main.c: 952: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	954
;main.c: 954: IOCA = 0B00000010;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(137)^080h	;volatile
	line	955
;main.c: 955: IOCB = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	957
	
l2839:	
;main.c: 957: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	958
	
l2841:	
;main.c: 958: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	959
	
l2843:	
;main.c: 959: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	960
	
l2845:	
;main.c: 960: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	962
	
l2847:	
;main.c: 962: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	963
	
l2849:	
;main.c: 963: PIR1 = 0;
	clrf	(13)	;volatile
	line	964
	
l2851:	
;main.c: 964: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	966
	
l2853:	
;main.c: 966: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	967
	
l2855:	
;main.c: 967: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	968
	
l2857:	
;main.c: 968: PORTB;
	movf	(6),w	;volatile
	line	969
	
l2859:	
;main.c: 969: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	970
# 970 "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
clrwdt ;# 
	line	972
# 972 "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
sleep ;# 
	line	974
# 974 "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
nop ;# 
	line	975
# 975 "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
clrwdt ;# 
	line	976
# 976 "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
nop ;# 
	line	977
# 977 "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
nop ;# 
	line	978
# 978 "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
nop ;# 
	line	979
# 979 "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
nop ;# 
	line	980
# 980 "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
nop ;# 
psect	text16
	line	981
	
l2861:	
;main.c: 981: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u2811
	goto	u2810
u2811:
	goto	l869
u2810:
	
l2863:	
	bcf	(107/8),(107)&7	;volatile
	
l869:	
	line	982
;main.c: 982: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u2821
	goto	u2820
u2821:
	goto	l870
u2820:
	
l2865:	
	bcf	(88/8),(88)&7	;volatile
	
l870:	
	line	983
;main.c: 983: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u2831
	goto	u2830
u2831:
	goto	l2869
u2830:
	
l2867:	
	bcf	(105/8),(105)&7	;volatile
	line	984
	
l2869:	
;main.c: 984: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	985
;main.c: 985: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	986
	
l2871:	
;main.c: 986: Init_System();
	fcall	_Init_System
	line	987
	
l2873:	
;main.c: 987: AD_Init();
	fcall	_AD_Init
	line	988
	
l872:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 790 in file "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
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
	line	790
global __ptext17
__ptext17:	;psect for function _Init_System
psect	text17
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
	line	790
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	792
	
l2115:	
# 792 "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
nop ;# 
	line	793
# 793 "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
clrwdt ;# 
psect	text17
	line	794
	
l2117:	
;main.c: 794: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	795
# 795 "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
clrwdt ;# 
psect	text17
	line	796
	
l2119:	
;main.c: 796: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	798
	
l2121:	
;main.c: 798: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	799
;main.c: 799: WPDA = 0x02;
	movlw	low(02h)
	movwf	(135)^080h	;volatile
	line	800
;main.c: 800: WPUB = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	802
;main.c: 802: TRISA = 0x1F;
	movlw	low(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	803
;main.c: 803: TRISB = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	805
	
l2123:	
;main.c: 805: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	806
	
l2125:	
;main.c: 806: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	810
;main.c: 810: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	811
	
l2127:	
;main.c: 811: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	812
	
l2129:	
;main.c: 812: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	814
;main.c: 814: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	815
;main.c: 815: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	816
	
l851:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 827 in file "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
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
	line	827
global __ptext18
__ptext18:	;psect for function _AD_Init
psect	text18
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
	line	827
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _AD_Init: [wreg+status,2]
	line	860
	
l2131:	
;main.c: 860: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	877
	
l2133:	
;main.c: 877: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	878
	
l2135:	
;main.c: 878: ANSEL0 = 0X1D;
	movlw	low(01Dh)
	movwf	(147)^080h	;volatile
	line	879
	
l854:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 100 in file "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
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
	line	100
global __ptext19
__ptext19:	;psect for function _Isr_Timer
psect	text19
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
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
psect	text19
	line	102
	
i1l2875:	
;main.c: 102: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u284_21
	goto	u284_20
u284_21:
	goto	i1l656
u284_20:
	line	104
	
i1l2877:	
;main.c: 103: {
;main.c: 104: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	105
	
i1l2879:	
;main.c: 105: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u285_21
	goto	u285_20
u285_21:
	goto	i1l2889
u285_20:
	line	107
	
i1l2881:	
;main.c: 106: {
;main.c: 107: intCount = 0;
	clrf	(_intCount)
	line	108
	
i1l2883:	
;main.c: 108: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	109
	
i1l2885:	
;main.c: 109: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u286_21
	goto	u286_20
u286_21:
	goto	i1l2889
u286_20:
	line	111
	
i1l2887:	
;main.c: 110: {
;main.c: 111: count1s = 0;
	clrf	(_count1s)
	line	114
	
i1l2889:	
;main.c: 112: }
;main.c: 113: }
;main.c: 114: ledShow();
	fcall	_ledShow
	line	115
	
i1l2891:	
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
;;		line 163 in file "C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
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
	line	163
global __ptext20
__ptext20:	;psect for function _ledShow
psect	text20
	file	"C:\mcuproject\scm\zdt\C212-FS_062B_SOP14\main.c"
	line	163
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 4
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	165
	
i1l2329:	
;main.c: 165: if(++ledCntTime > 30)
	movlw	low(01Fh)
	incf	(_ledCntTime),f
	subwf	((_ledCntTime)),w
	skipc
	goto	u178_21
	goto	u178_20
u178_21:
	goto	i1l690
u178_20:
	line	167
	
i1l2331:	
;main.c: 166: {
;main.c: 167: ledCntTime = 0;
	clrf	(_ledCntTime)
	line	168
	
i1l2333:	
;main.c: 168: if(++ledCnt > 5)
	movlw	low(06h)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u179_21
	goto	u179_20
u179_21:
	goto	i1l2337
u179_20:
	line	170
	
i1l2335:	
;main.c: 169: {
;main.c: 170: ledCnt = 0;
	clrf	(_ledCnt)
	line	172
	
i1l2337:	
;main.c: 171: }
;main.c: 172: PORTA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(5/8),(5)&7	;volatile
	line	173
	
i1l2339:	
;main.c: 173: PORTB &= 0xC7;
	movlw	low(0C7h)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(6),f	;volatile
	line	174
	
i1l2341:	
;main.c: 174: TRISA |= 0x20;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(133)^080h+(5/8),(5)&7	;volatile
	line	175
	
i1l2343:	
;main.c: 175: TRISB |= 0x38;
	movlw	low(038h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(5),f	;volatile
	line	176
;main.c: 176: switch(ledCnt)
	goto	i1l2379
	line	179
	
i1l2345:	
;main.c: 179: if(ledStep > 0)
	movf	((_ledStep)),w
	btfsc	status,2
	goto	u180_21
	goto	u180_20
u180_21:
	goto	i1l690
u180_20:
	line	181
	
i1l2347:	
;main.c: 180: {
;main.c: 181: TRISB &= 0xE7;
	movlw	low(0E7h)
	andwf	(5),f	;volatile
	line	182
	
i1l2349:	
;main.c: 182: PORTB |= 0x10;
	bsf	(6)+(4/8),(4)&7	;volatile
	goto	i1l690
	line	186
	
i1l2351:	
;main.c: 186: if(ledStep > 1)
	movlw	low(02h)
	subwf	(_ledStep),w
	skipc
	goto	u181_21
	goto	u181_20
u181_21:
	goto	i1l690
u181_20:
	line	188
	
i1l2353:	
;main.c: 187: {
;main.c: 188: TRISB &= 0xCF;
	movlw	low(0CFh)
	andwf	(5),f	;volatile
	line	189
	
i1l2355:	
;main.c: 189: PORTB |= 0x20;
	bsf	(6)+(5/8),(5)&7	;volatile
	goto	i1l690
	line	193
	
i1l2357:	
;main.c: 193: if(ledStep > 2)
	movlw	low(03h)
	subwf	(_ledStep),w
	skipc
	goto	u182_21
	goto	u182_20
u182_21:
	goto	i1l690
u182_20:
	line	195
	
i1l2359:	
;main.c: 194: {
;main.c: 195: TRISB &= 0xE7;
	movlw	low(0E7h)
	andwf	(5),f	;volatile
	line	196
	
i1l2361:	
;main.c: 196: PORTB |= 0x08;
	bsf	(6)+(3/8),(3)&7	;volatile
	goto	i1l690
	line	200
	
i1l2363:	
;main.c: 200: if(ledStep > 3)
	movlw	low(04h)
	subwf	(_ledStep),w
	skipc
	goto	u183_21
	goto	u183_20
u183_21:
	goto	i1l690
u183_20:
	line	202
	
i1l2365:	
;main.c: 201: {
;main.c: 202: TRISB &= 0xCF;
	movlw	low(0CFh)
	andwf	(5),f	;volatile
	goto	i1l2349
	line	207
	
i1l2369:	
;main.c: 207: if(ledStep > 4)
	movlw	low(05h)
	subwf	(_ledStep),w
	skipc
	goto	u184_21
	goto	u184_20
u184_21:
	goto	i1l690
u184_20:
	line	209
	
i1l2371:	
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
	
i1l2373:	
;main.c: 215: if(ledStep > 5)
	movlw	low(06h)
	subwf	(_ledStep),w
	skipc
	goto	u185_21
	goto	u185_20
u185_21:
	goto	i1l690
u185_20:
	line	217
	
i1l2375:	
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
	
i1l2379:	
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
movlw high(i1S3487)
movwf pclath
	movlw low(i1S3487)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S3487:
	ljmp	i1l2373
	ljmp	i1l2345
	ljmp	i1l2351
	ljmp	i1l2357
	ljmp	i1l2363
	ljmp	i1l2369
psect	text20

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
