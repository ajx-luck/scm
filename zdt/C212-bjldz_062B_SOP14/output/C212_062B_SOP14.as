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
	FNCALL	_workCtr,___lwmod
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
	global	_stopTimes
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	17
_stopTimes:
	retlw	046h
	retlw	031h
	retlw	01Bh
	retlw	013h
	retlw	012h
	retlw	0Ch
	global __end_of_stopTimes
__end_of_stopTimes:
	global	_startTimes
psect	strings
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	16
_startTimes:
	retlw	0A0h
	retlw	064h
	retlw	03Ch
	retlw	02Bh
	retlw	01Fh
	global __end_of_startTimes
__end_of_startTimes:
	global	_stopTimes
	global	_startTimes
	global	_batADValue
	global	_prePwStep
	global	_ledStep
	global	_modelTime
	global	_workTime
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
	global	_ledCnt
	global	_workStep
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

_ledStep:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_modelTime:
       ds      2

_workTime:
       ds      2

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

_ledCnt:
       ds      1

_workStep:
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
	movlw	low((__pbssBANK0)+03Bh)
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
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x3
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
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x3
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
??_workCtr:	; 1 bytes @ 0x1
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x1
	ds	1
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x2
	ds	1
	global	workCtr@tempStopTime
workCtr@tempStopTime:	; 2 bytes @ 0x3
	ds	1
	global	ADC_Sample@j
ADC_Sample@j:	; 1 bytes @ 0x4
	ds	1
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x5
	global	workCtr@tempStartTime
workCtr@tempStartTime:	; 2 bytes @ 0x5
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
;!    Constant    11
;!    Data        0
;!    BSS         63
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      11
;!    BANK0            80     19      79
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _workCtr->___lwmod
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
;!    _workCtr->___lwmod
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
;! (0) _main                                                 0     0      0    4435
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
;! (1) _workCtr                                              6     6      0     736
;!                                              1 BANK0      6     6      0
;!                             ___bmul
;!                            ___lwmod
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
;! (1) _ledCtr                                               0     0      0    1110
;!                            ___lbdiv
;!                            ___lbmod
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     492
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
;!     ___bmul
;!     ___lwmod
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
;!BANK0               50     13      4F       4       98.8%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      5A       7        0.0%
;!DATA                 0      0      5A       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 128 in file "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	128
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	128
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	130
	
l3674:	
;main.c: 130: Init_System();
	fcall	_Init_System
	line	131
;main.c: 131: AD_Init();
	fcall	_AD_Init
	line	132
	
l3676:	
;main.c: 132: firstTime = 100;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_firstTime)
	line	133
;main.c: 133: while (1)
	
l669:	
	line	135
# 135 "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
clrwdt ;# 
psect	maintext
	line	136
	
l3678:	
;main.c: 136: if(intCount10 > 10)
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_intCount10),w
	skipc
	goto	u4491
	goto	u4490
u4491:
	goto	l3684
u4490:
	line	138
	
l3680:	
;main.c: 137: {
;main.c: 138: intCount10 = 0;
	clrf	(_intCount10)
	line	139
	
l3682:	
;main.c: 139: checkOutA();
	fcall	_checkOutA
	line	141
	
l3684:	
;main.c: 140: }
;main.c: 141: if(!IntFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u4501
	goto	u4500
u4501:
	goto	l3688
u4500:
	goto	l669
	line	143
	
l3688:	
;main.c: 143: IntFlag = 0;
	clrf	(_IntFlag)
	line	144
	
l3690:	
;main.c: 144: chrgCtr();
	fcall	_chrgCtr
	line	145
	
l3692:	
;main.c: 145: checkBatAD();
	fcall	_checkBatAD
	line	146
	
l3694:	
;main.c: 146: if(chrgFlag == 0 && lowBatFlag == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u4511
	goto	u4510
u4511:
	goto	l3700
u4510:
	
l3696:	
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u4521
	goto	u4520
u4521:
	goto	l3700
u4520:
	line	148
	
l3698:	
;main.c: 147: {
;main.c: 148: keyCtr();
	fcall	_keyCtr
	line	150
	
l3700:	
;main.c: 149: }
;main.c: 150: workCtr();
	fcall	_workCtr
	line	151
	
l3702:	
;main.c: 151: ledCtr();
	fcall	_ledCtr
	line	152
	
l3704:	
;main.c: 152: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && showBatTime == 0 && overWorkTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u4531
	goto	u4530
u4531:
	goto	l3722
u4530:
	
l3706:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u4541
	goto	u4540
u4541:
	goto	l3722
u4540:
	
l3708:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u4551
	goto	u4550
u4551:
	goto	l3722
u4550:
	
l3710:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u4561
	goto	u4560
u4561:
	goto	l3722
u4560:
	
l3712:	
	movf	((_showBatTime)),w
	btfss	status,2
	goto	u4571
	goto	u4570
u4571:
	goto	l3722
u4570:
	
l3714:	
	movf	((_overWorkTime)),w
iorwf	((_overWorkTime+1)),w
	btfss	status,2
	goto	u4581
	goto	u4580
u4581:
	goto	l3722
u4580:
	line	154
	
l3716:	
;main.c: 153: {
;main.c: 154: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u4591
	goto	u4590
u4591:
	goto	l669
u4590:
	line	156
	
l3718:	
;main.c: 155: {
;main.c: 156: sleepTime = 0;
	clrf	(_sleepTime)
	line	157
	
l3720:	
;main.c: 157: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l669
	line	162
	
l3722:	
;main.c: 160: else
;main.c: 161: {
;main.c: 162: sleepTime = 0;
	clrf	(_sleepTime)
	goto	l669
	global	start
	ljmp	start
	opt stack 0
	line	165
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 548 in file "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempStartTim    2    5[BANK0 ] unsigned int 
;;  tempStopTime    2    3[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       4       0
;;      Temps:          0       2       0
;;      Totals:         0       6       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___bmul
;;		___lwmod
;;		_pwmInit
;;		_pwmStop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	548
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	548
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	551
	
l3556:	
;main.c: 551: if(startTime > 0)
	movf	((_startTime)),w
	btfsc	status,2
	goto	u4201
	goto	u4200
u4201:
	goto	l3560
u4200:
	line	553
	
l3558:	
;main.c: 552: {
;main.c: 553: startTime--;
	decf	(_startTime),f
	line	555
	
l3560:	
;main.c: 554: }
;main.c: 555: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u4211
	goto	u4210
u4211:
	goto	l3618
u4210:
	line	557
	
l3562:	
;main.c: 556: {
;main.c: 557: if(workStep == 6)
		movlw	6
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u4221
	goto	u4220
u4221:
	goto	l3586
u4220:
	line	559
	
l3564:	
;main.c: 558: {
;main.c: 559: if((PWMCON0 & 0x02) == 0)
	btfsc	(21),(1)&7	;volatile
	goto	u4231
	goto	u4230
u4231:
	goto	l3568
u4230:
	line	561
	
l3566:	
;main.c: 560: {
;main.c: 561: pwmInit();
	fcall	_pwmInit
	line	563
	
l3568:	
;main.c: 562: }
;main.c: 563: if(++modelTime >= 600)
	incf	(_modelTime),f
	skipnz
	incf	(_modelTime+1),f
	movlw	02h
	subwf	((_modelTime+1)),w
	movlw	058h
	skipnz
	subwf	((_modelTime)),w
	skipc
	goto	u4241
	goto	u4240
u4241:
	goto	l3572
u4240:
	line	565
	
l3570:	
;main.c: 564: {
;main.c: 565: modelTime = 0;
	clrf	(_modelTime)
	clrf	(_modelTime+1)
	line	567
	
l3572:	
;main.c: 566: }
;main.c: 567: if(modelTime % 5 == 0)
	movlw	05h
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(_modelTime+1),w
	movwf	(___lwmod@dividend+1)
	movf	(_modelTime),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	((0+(?___lwmod))),w
iorwf	((1+(?___lwmod))),w
	btfss	status,2
	goto	u4251
	goto	u4250
u4251:
	goto	l3600
u4250:
	line	569
	
l3574:	
;main.c: 568: {
;main.c: 569: if(modelTime < 300 && maxDuty < 99)
	movlw	01h
	subwf	(_modelTime+1),w
	movlw	02Ch
	skipnz
	subwf	(_modelTime),w
	skipnc
	goto	u4261
	goto	u4260
u4261:
	goto	l3580
u4260:
	
l3576:	
	movlw	low(063h)
	subwf	(_maxDuty),w
	skipnc
	goto	u4271
	goto	u4270
u4271:
	goto	l3580
u4270:
	line	571
	
l3578:	
;main.c: 570: {
;main.c: 571: maxDuty++;
	incf	(_maxDuty),f
	line	573
	
l3580:	
;main.c: 572: }
;main.c: 573: if(modelTime > 300 && maxDuty > 39)
	movlw	01h
	subwf	(_modelTime+1),w
	movlw	02Dh
	skipnz
	subwf	(_modelTime),w
	skipc
	goto	u4281
	goto	u4280
u4281:
	goto	l3600
u4280:
	
l3582:	
	movlw	low(028h)
	subwf	(_maxDuty),w
	skipc
	goto	u4291
	goto	u4290
u4291:
	goto	l3600
u4290:
	line	575
	
l3584:	
;main.c: 574: {
;main.c: 575: maxDuty--;
	decf	(_maxDuty),f
	goto	l3600
	line	581
	
l3586:	
;main.c: 579: else
;main.c: 580: {
;main.c: 581: unsigned int tempStartTime = startTimes[workStep - 1];
	movf	(_workStep),w
	addlw	low((((_startTimes)-__stringbase)|8000h)+0FFh)
	movwf	fsr0
	fcall	stringdir
	movwf	(workCtr@tempStartTime)
	clrf	(workCtr@tempStartTime+1)
	line	582
;main.c: 582: unsigned int tempStopTime = stopTimes[workStep - 1];
	movf	(_workStep),w
	addlw	low((((_stopTimes)-__stringbase)|8000h)+0FFh)
	movwf	fsr0
	fcall	stringdir
	movwf	(workCtr@tempStopTime)
	clrf	(workCtr@tempStopTime+1)
	line	583
	
l3588:	
;main.c: 583: if(++workTime > (tempStartTime + tempStopTime))
	incf	(_workTime),f
	skipnz
	incf	(_workTime+1),f
	movf	(workCtr@tempStopTime),w
	addwf	(workCtr@tempStartTime),w
	movwf	(??_workCtr+0)+0
	movf	(workCtr@tempStopTime+1),w
	skipnc
	incf	(workCtr@tempStopTime+1),w
	addwf	(workCtr@tempStartTime+1),w
	movwf	1+(??_workCtr+0)+0
	movf	((_workTime+1)),w
	subwf	1+(??_workCtr+0)+0,w
	skipz
	goto	u4305
	movf	((_workTime)),w
	subwf	0+(??_workCtr+0)+0,w
u4305:
	skipnc
	goto	u4301
	goto	u4300
u4301:
	goto	l3592
u4300:
	line	585
	
l3590:	
;main.c: 584: {
;main.c: 585: workTime = 0;
	clrf	(_workTime)
	clrf	(_workTime+1)
	line	587
	
l3592:	
;main.c: 586: }
;main.c: 587: if(workTime < tempStartTime)
	movf	(workCtr@tempStartTime+1),w
	subwf	(_workTime+1),w
	skipz
	goto	u4315
	movf	(workCtr@tempStartTime),w
	subwf	(_workTime),w
u4315:
	skipnc
	goto	u4311
	goto	u4310
u4311:
	goto	l3598
u4310:
	line	589
	
l3594:	
;main.c: 588: {
;main.c: 589: if((PWMCON0 & 0x02) == 0)
	btfsc	(21),(1)&7	;volatile
	goto	u4321
	goto	u4320
u4321:
	goto	l803
u4320:
	line	591
	
l3596:	
;main.c: 590: {
;main.c: 591: pwmInit();
	fcall	_pwmInit
	line	592
	
l803:	
	line	593
;main.c: 592: }
;main.c: 593: maxDuty = 63 + (workStep*6);
	movlw	low(06h)
	movwf	(___bmul@multiplicand)
	movf	(_workStep),w
	fcall	___bmul
	addlw	03Fh
	movwf	(_maxDuty)
	line	594
;main.c: 594: }
	goto	l3600
	line	597
	
l3598:	
;main.c: 595: else
;main.c: 596: {
;main.c: 597: pwmStop();
	fcall	_pwmStop
	line	600
	
l3600:	
;main.c: 598: }
;main.c: 599: }
;main.c: 600: if(overCount >= 5)
	movlw	low(05h)
	subwf	(_overCount),w
	skipc
	goto	u4331
	goto	u4330
u4331:
	goto	l3610
u4330:
	line	602
	
l3602:	
;main.c: 601: {
;main.c: 602: if(++count5s > 500)
	incf	(_count5s),f
	skipnz
	incf	(_count5s+1),f
	movlw	01h
	subwf	((_count5s+1)),w
	movlw	0F5h
	skipnz
	subwf	((_count5s)),w
	skipc
	goto	u4341
	goto	u4340
u4341:
	goto	l3612
u4340:
	line	604
	
l3604:	
;main.c: 603: {
;main.c: 604: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	605
	
l3606:	
;main.c: 605: overWorkTime = 1000;
	movlw	0E8h
	movwf	(_overWorkTime)
	movlw	03h
	movwf	((_overWorkTime))+1
	line	606
	
l3608:	
;main.c: 606: preLedStep = workStep;
	movf	(_workStep),w
	movwf	(_preLedStep)
	line	607
;main.c: 607: workStep = 0;
	clrf	(_workStep)
	goto	l3612
	line	613
	
l3610:	
;main.c: 611: else
;main.c: 612: {
;main.c: 613: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	615
	
l3612:	
;main.c: 614: }
;main.c: 615: if(count1s == 0 && ++count900s >= 900)
	movf	((_count1s)),w
	btfss	status,2
	goto	u4351
	goto	u4350
u4351:
	goto	l810
u4350:
	
l3614:	
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	movlw	03h
	subwf	((_count900s+1)),w
	movlw	084h
	skipnz
	subwf	((_count900s)),w
	skipc
	goto	u4361
	goto	u4360
u4361:
	goto	l810
u4360:
	line	617
	
l3616:	
;main.c: 616: {
;main.c: 617: workStep = 0;
	clrf	(_workStep)
	goto	l810
	line	622
	
l3618:	
;main.c: 620: else
;main.c: 621: {
;main.c: 622: pwmStop();
	fcall	_pwmStop
	line	623
	
l3620:	
;main.c: 623: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	625
	
l810:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 972 in file "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
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
	line	972
global __ptext2
__ptext2:	;psect for function _pwmStop
psect	text2
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	972
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: []
	line	974
	
l2292:	
;main.c: 974: PWMCON0 &= 0XFD;
	bcf	(21)+(1/8),(1)&7	;volatile
	line	975
;main.c: 975: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	976
	
l887:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 957 in file "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
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
	line	957
global __ptext3
__ptext3:	;psect for function _pwmInit
psect	text3
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	957
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2]
	line	959
	
l2282:	
;main.c: 959: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	960
;main.c: 960: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	961
	
l2284:	
;main.c: 961: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	964
	
l2286:	
;main.c: 964: PWMD01H = 0;
	clrf	(30)	;volatile
	line	965
;main.c: 965: PWMD1L = 50;
	movlw	low(032h)
	movwf	(26)	;volatile
	line	966
	
l2288:	
;main.c: 966: PWM01DT = 0X00;
	clrf	(31)	;volatile
	line	968
	
l2290:	
;main.c: 968: PWMCON0 = 0X62;
	movlw	low(062h)
	movwf	(21)	;volatile
	line	969
;main.c: 969: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	970
	
l884:	
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
	
l2366:	
	clrf	(___bmul@product)
	line	43
	
l2368:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1851
	goto	u1850
u1851:
	goto	l2372
u1850:
	line	44
	
l2370:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	45
	
l2372:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	46
	
l2374:	
	clrc
	rrf	(___bmul@multiplier),f
	line	47
	movf	((___bmul@multiplier)),w
	btfss	status,2
	goto	u1861
	goto	u1860
u1861:
	goto	l2368
u1860:
	line	50
	
l2376:	
	movf	(___bmul@product),w
	line	51
	
l936:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_ledCtr

;; *************** function _ledCtr *****************
;; Defined at:
;;		line 235 in file "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
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
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	235
global __ptext5
__ptext5:	;psect for function _ledCtr
psect	text5
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	235
	global	__size_of_ledCtr
	__size_of_ledCtr	equ	__end_of_ledCtr-_ledCtr
	
_ledCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _ledCtr: [wreg+status,2+status,0+pclath+cstack]
	line	237
	
l3622:	
;main.c: 237: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u4371
	goto	u4370
u4371:
	goto	l3632
u4370:
	line	239
	
l3624:	
;main.c: 238: {
;main.c: 239: firstTime--;
	decf	(_firstTime),f
	line	240
	
l3626:	
;main.c: 240: ledStep = 6;
	movlw	low(06h)
	movwf	(_ledStep)
	line	241
	
l3628:	
;main.c: 241: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u4381
	goto	u4380
u4381:
	goto	l722
u4380:
	line	243
	
l3630:	
;main.c: 242: {
;main.c: 243: prePwStep = pwStep;
	movf	(_pwStep),w
	movwf	(_prePwStep)
	goto	l722
	line	246
	
l3632:	
;main.c: 246: else if(overWorkTime > 0)
	movf	((_overWorkTime)),w
iorwf	((_overWorkTime+1)),w
	btfsc	status,2
	goto	u4391
	goto	u4390
u4391:
	goto	l3642
u4390:
	line	248
	
l3634:	
;main.c: 247: {
;main.c: 248: overWorkTime--;
	movlw	01h
	subwf	(_overWorkTime),f
	movlw	0
	skipc
	decf	(_overWorkTime+1),f
	subwf	(_overWorkTime+1),f
	line	249
	
l3636:	
;main.c: 249: if(overWorkTime % 40 < 20)
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
	goto	u4401
	goto	u4400
u4401:
	goto	l3640
u4400:
	line	251
	
l3638:	
;main.c: 250: {
;main.c: 251: ledStep = preLedStep;
	movf	(_preLedStep),w
	movwf	(_ledStep)
	line	252
;main.c: 252: }
	goto	l722
	line	255
	
l3640:	
;main.c: 253: else
;main.c: 254: {
;main.c: 255: ledStep = 0;
	clrf	(_ledStep)
	goto	l722
	line	258
	
l3642:	
;main.c: 258: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u4411
	goto	u4410
u4411:
	goto	l3660
u4410:
	line	260
	
l3644:	
;main.c: 259: {
;main.c: 260: showBatTime--;
	decf	(_showBatTime),f
	line	261
	
l3646:	
;main.c: 261: if(prePwStep >= 14)
	movlw	low(0Eh)
	subwf	(_prePwStep),w
	skipc
	goto	u4421
	goto	u4420
u4421:
	goto	l3650
u4420:
	line	263
	
l3648:	
;main.c: 262: {
;main.c: 263: ledStep = prePwStep/14;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	movwf	(_ledStep)
	line	264
;main.c: 264: }
	goto	l722
	line	265
	
l3650:	
;main.c: 265: else if(prePwStep > 5)
	movlw	low(06h)
	subwf	(_prePwStep),w
	skipc
	goto	u4431
	goto	u4430
u4431:
	goto	l3654
u4430:
	line	267
	
l3652:	
;main.c: 266: {
;main.c: 267: ledStep = 1;
	clrf	(_ledStep)
	incf	(_ledStep),f
	line	268
;main.c: 268: }
	goto	l722
	line	271
	
l3654:	
;main.c: 269: else
;main.c: 270: {
;main.c: 271: if(count1s < 50)
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u4441
	goto	u4440
u4441:
	goto	l3640
u4440:
	goto	l3652
	line	279
	
l710:	
	line	280
;main.c: 278: }
;main.c: 279: }
;main.c: 280: }
	goto	l722
	line	281
	
l3660:	
;main.c: 281: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u4451
	goto	u4450
u4451:
	goto	l3664
u4450:
	line	283
	
l3662:	
;main.c: 282: {
;main.c: 283: ledStep = workStep;
	movf	(_workStep),w
	movwf	(_ledStep)
	line	284
;main.c: 284: }
	goto	l722
	line	285
	
l3664:	
;main.c: 285: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u4461
	goto	u4460
u4461:
	goto	l3640
u4460:
	line	287
	
l3666:	
;main.c: 286: {
;main.c: 287: if(count1s % 50 == 0)
	movlw	low(032h)
	movwf	(___lbmod@divisor)
	movf	(_count1s),w
	fcall	___lbmod
	xorlw	0
	skipz
	goto	u4471
	goto	u4470
u4471:
	goto	l722
u4470:
	line	289
	
l3668:	
;main.c: 288: {
;main.c: 289: if(++ledStep > 6)
	movlw	low(07h)
	incf	(_ledStep),f
	subwf	((_ledStep)),w
	skipc
	goto	u4481
	goto	u4480
u4481:
	goto	l710
u4480:
	line	291
	
l3670:	
;main.c: 290: {
;main.c: 291: ledStep = lockLedStep;
	movf	(_lockLedStep),w
	movwf	(_ledStep)
	line	299
	
l722:	
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
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
	line	6
global __ptext6
__ptext6:	;psect for function ___lwmod
psect	text6
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l3212:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l3228
u3470:
	line	14
	
l3214:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l3218
	line	16
	
l3216:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l3218:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3481
	goto	u3480
u3481:
	goto	l3216
u3480:
	line	20
	
l3220:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3495
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3495:
	skipc
	goto	u3491
	goto	u3490
u3491:
	goto	l3224
u3490:
	line	21
	
l3222:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l3224:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l3226:	
	decfsz	(___lwmod@counter),f
	goto	u3501
	goto	u3500
u3501:
	goto	l3220
u3500:
	line	25
	
l3228:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l1265:	
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
psect	text7,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
	line	4
global __ptext7
__ptext7:	;psect for function ___lbmod
psect	text7
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
	
l3194:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l3196:	
	clrf	(___lbmod@rem)
	line	12
	
l3198:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u3445:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u3445
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l3200:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l3202:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u3451
	goto	u3450
u3451:
	goto	l3206
u3450:
	line	15
	
l3204:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l3206:	
	decfsz	(___lbmod@counter),f
	goto	u3461
	goto	u3460
u3461:
	goto	l3198
u3460:
	line	17
	
l3208:	
	movf	(___lbmod@rem),w
	line	18
	
l1187:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 501 in file "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
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
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	501
global __ptext8
__ptext8:	;psect for function _keyCtr
psect	text8
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	501
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	503
	
l2822:	
;main.c: 503: char kclick = keyRead(0x04 & (~PORTB));
	comf	(6),w	;volatile
	andlw	04h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	504
	
l2824:	
;main.c: 504: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l2852
u2750:
	line	506
	
l2826:	
;main.c: 505: {
;main.c: 506: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l2838
u2760:
	line	508
	
l2828:	
;main.c: 507: {
;main.c: 508: if(++workStep > 6)
	movlw	low(07h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u2771
	goto	u2770
u2771:
	goto	l2832
u2770:
	line	510
	
l2830:	
;main.c: 509: {
;main.c: 510: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	512
	
l2832:	
;main.c: 511: }
;main.c: 512: if(workStep == 6)
		movlw	6
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l789
u2780:
	line	514
	
l2834:	
;main.c: 513: {
;main.c: 514: maxDuty = 39;
	movlw	low(027h)
	movwf	(_maxDuty)
	line	515
	
l2836:	
;main.c: 515: modelTime = 0;
	clrf	(_modelTime)
	clrf	(_modelTime+1)
	goto	l789
	line	518
	
l2838:	
;main.c: 518: else if(overWorkTime > 0)
	movf	((_overWorkTime)),w
iorwf	((_overWorkTime+1)),w
	btfsc	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l2844
u2790:
	line	520
	
l2840:	
;main.c: 519: {
;main.c: 520: overWorkTime = 0;
	clrf	(_overWorkTime)
	clrf	(_overWorkTime+1)
	line	521
	
l2842:	
;main.c: 521: workStep = preLedStep;
	movf	(_preLedStep),w
	movwf	(_workStep)
	line	522
;main.c: 522: }
	goto	l789
	line	523
	
l2844:	
;main.c: 523: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l2848
u2800:
	line	525
	
l2846:	
;main.c: 524: {
;main.c: 525: showBatTime = 0;
	clrf	(_showBatTime)
	line	526
;main.c: 526: }
	goto	l789
	line	529
	
l2848:	
;main.c: 527: else
;main.c: 528: {
;main.c: 529: showBatTime = 200;
	movlw	low(0C8h)
	movwf	(_showBatTime)
	line	530
	
l2850:	
;main.c: 530: count1s = 0;
	clrf	(_count1s)
	goto	l789
	line	533
	
l2852:	
;main.c: 533: else if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2811
	goto	u2810
u2811:
	goto	l789
u2810:
	line	535
	
l2854:	
;main.c: 534: {
;main.c: 535: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2821
	goto	u2820
u2821:
	goto	l787
u2820:
	line	537
	
l2856:	
;main.c: 536: {
;main.c: 537: workStep = 0;
	clrf	(_workStep)
	line	538
;main.c: 538: }
	goto	l789
	line	539
	
l787:	
	line	541
;main.c: 539: else
;main.c: 540: {
;main.c: 541: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	542
	
l2858:	
;main.c: 542: startTime = 30;
	movlw	low(01Eh)
	movwf	(_startTime)
	goto	l2846
	line	546
	
l789:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 468 in file "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
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
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	468
global __ptext9
__ptext9:	;psect for function _keyRead
psect	text9
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	468
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	470
	
l2242:	
;main.c: 470: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1651
	goto	u1650
u1651:
	goto	l2258
u1650:
	line	472
	
l2244:	
;main.c: 471: {
;main.c: 472: keyCount++;
	incf	(_keyCount),f
	line	473
	
l2246:	
;main.c: 473: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1661
	goto	u1660
u1661:
	goto	l2262
u1660:
	line	475
	
l2248:	
;main.c: 474: {
;main.c: 475: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	line	476
	
l2250:	
;main.c: 476: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1671
	goto	u1670
u1671:
	goto	l2262
u1670:
	line	478
	
l2252:	
;main.c: 477: {
;main.c: 478: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	479
	
l2254:	
;main.c: 479: return 2;
	movlw	low(02h)
	goto	l769
	line	485
	
l2258:	
;main.c: 483: else
;main.c: 484: {
;main.c: 485: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1681
	goto	u1680
u1681:
	goto	l2268
u1680:
	line	487
	
l2260:	
;main.c: 486: {
;main.c: 487: keyCount = 0;
	clrf	(_keyCount)
	line	488
;main.c: 488: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	489
	
l2262:	
;main.c: 489: return 0;
	movlw	low(0)
	goto	l769
	line	491
	
l2268:	
;main.c: 491: else if(keyCount >= 6)
	movlw	low(06h)
	subwf	(_keyCount),w
	skipc
	goto	u1691
	goto	u1690
u1691:
	goto	l2276
u1690:
	line	493
	
l2270:	
;main.c: 492: {
;main.c: 493: keyCount = 0;
	clrf	(_keyCount)
	line	494
	
l2272:	
;main.c: 494: return 1;
	movlw	low(01h)
	goto	l769
	line	496
	
l2276:	
;main.c: 495: }
;main.c: 496: keyCount = 0;
	clrf	(_keyCount)
	goto	l2262
	line	499
	
l769:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 303 in file "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
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
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	303
global __ptext10
__ptext10:	;psect for function _chrgCtr
psect	text10
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	303
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	305
	
l3336:	
;main.c: 305: if(PORTA & 0x02)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(134)^080h,(1)&7	;volatile
	goto	u3751
	goto	u3750
u3751:
	goto	l3470
u3750:
	line	307
	
l3338:	
;main.c: 306: {
;main.c: 307: if(chrgFlag == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3761
	goto	u3760
u3761:
	goto	l3346
u3760:
	line	309
	
l3340:	
;main.c: 308: {
;main.c: 309: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	310
	
l3342:	
;main.c: 310: ledStep = 0;
	clrf	(_ledStep)
	line	311
;main.c: 311: chrgMaxDuty = 0;
	clrf	(_chrgMaxDuty)
	line	312
	
l3344:	
;main.c: 312: chrgPwmStop();
	fcall	_chrgPwmStop
	line	314
	
l3346:	
;main.c: 313: }
;main.c: 314: workStep = 0;
	clrf	(_workStep)
	line	315
	
l3348:	
;main.c: 315: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	316
	
l3350:	
;main.c: 316: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u3771
	goto	u3770
u3771:
	goto	l3358
u3770:
	line	318
	
l3352:	
;main.c: 317: {
;main.c: 318: if(++count50s > 2000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	07h
	subwf	((_count50s+1)),w
	movlw	0D1h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u3781
	goto	u3780
u3781:
	goto	l3360
u3780:
	line	320
	
l3354:	
;main.c: 319: {
;main.c: 320: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	321
	
l3356:	
;main.c: 321: prePwStep++;
	incf	(_prePwStep),f
	goto	l3360
	line	326
	
l3358:	
;main.c: 324: else
;main.c: 325: {
;main.c: 326: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	328
	
l3360:	
;main.c: 327: }
;main.c: 328: if(protectFlag)
	movf	((_protectFlag)),w
	btfsc	status,2
	goto	u3791
	goto	u3790
u3791:
	goto	l3384
u3790:
	line	330
	
l3362:	
;main.c: 329: {
;main.c: 330: chrgPwmStop();
	fcall	_chrgPwmStop
	line	331
	
l3364:	
;main.c: 331: ledStep = 6;
	movlw	low(06h)
	movwf	(_ledStep)
	line	332
	
l3366:	
;main.c: 332: if(prePwStep < 99 && protectFlag == 1)
	movlw	low(063h)
	subwf	(_prePwStep),w
	skipnc
	goto	u3801
	goto	u3800
u3801:
	goto	l3380
u3800:
	
l3368:	
		decf	((_protectFlag)),w
	btfss	status,2
	goto	u3811
	goto	u3810
u3811:
	goto	l3380
u3810:
	line	334
	
l3370:	
;main.c: 333: {
;main.c: 334: if(++reChrgCount > 250)
	movlw	low(0FBh)
	incf	(_reChrgCount),f
	subwf	((_reChrgCount)),w
	skipc
	goto	u3821
	goto	u3820
u3821:
	goto	l736
u3820:
	line	336
	
l3372:	
;main.c: 335: {
;main.c: 336: reChrgCount = 0;
	clrf	(_reChrgCount)
	line	337
;main.c: 337: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	338
;main.c: 338: protectFlag = 0;
	clrf	(_protectFlag)
	line	339
	
l3374:	
;main.c: 339: if(prePwStep > 14)
	movlw	low(0Fh)
	subwf	(_prePwStep),w
	skipc
	goto	u3831
	goto	u3830
u3831:
	goto	l3378
u3830:
	line	341
	
l3376:	
;main.c: 340: {
;main.c: 341: lockLedStep = (prePwStep/14) - 1;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	0FFh
	movwf	(_lockLedStep)
	line	342
;main.c: 342: }
	goto	l736
	line	345
	
l3378:	
;main.c: 343: else
;main.c: 344: {
;main.c: 345: lockLedStep = 0;
	clrf	(_lockLedStep)
	goto	l736
	line	351
	
l3380:	
;main.c: 349: else
;main.c: 350: {
;main.c: 351: reChrgCount = 0;
	clrf	(_reChrgCount)
	goto	l736
	line	355
	
l3384:	
;main.c: 354: }
;main.c: 355: if(batADValue < 1118)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Eh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3841
	goto	u3840
u3841:
	goto	l3390
u3840:
	line	357
	
l3386:	
;main.c: 356: {
;main.c: 357: chrgMode = 0;
	clrf	(_chrgMode)
	line	358
	
l3388:	
;main.c: 358: chrgMaxAD = 15;
	movlw	low(0Fh)
	movwf	(_chrgMaxAD)
	line	359
;main.c: 359: }
	goto	l3408
	line	360
	
l3390:	
;main.c: 360: else if(batADValue < 1530)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	0FAh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3851
	goto	u3850
u3851:
	goto	l3398
u3850:
	line	362
	
l3392:	
;main.c: 361: {
;main.c: 362: chrgMode = 1;
	clrf	(_chrgMode)
	incf	(_chrgMode),f
	line	363
	
l3394:	
;main.c: 363: chrgMaxAD = 40;
	movlw	low(028h)
	movwf	(_chrgMaxAD)
	line	364
	
l3396:	
;main.c: 364: lockCount = 0;
	clrf	(_lockCount)
	line	365
;main.c: 365: }
	goto	l3408
	line	366
	
l3398:	
;main.c: 366: else if(count1s == 0)
	movf	((_count1s)),w
	btfss	status,2
	goto	u3861
	goto	u3860
u3861:
	goto	l3408
u3860:
	line	368
	
l3400:	
;main.c: 367: {
;main.c: 368: if(++lockCount > 200)
	movlw	low(0C9h)
	incf	(_lockCount),f
	subwf	((_lockCount)),w
	skipc
	goto	u3871
	goto	u3870
u3871:
	goto	l3406
u3870:
	line	370
	
l3402:	
;main.c: 369: {
;main.c: 370: lockCount = 0;
	clrf	(_lockCount)
	line	371
	
l3404:	
;main.c: 371: chrgMode = 2;
	movlw	low(02h)
	movwf	(_chrgMode)
	line	374
	
l3406:	
;main.c: 372: }
;main.c: 374: chrgMaxAD = 40;
	movlw	low(028h)
	movwf	(_chrgMaxAD)
	line	376
	
l3408:	
;main.c: 375: }
;main.c: 376: if(chrgMode == 2 && outADValue < 5)
		movlw	2
	xorwf	((_chrgMode)),w
	btfss	status,2
	goto	u3881
	goto	u3880
u3881:
	goto	l3418
u3880:
	
l3410:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	05h
	skipnz
	subwf	(_outADValue),w
	skipnc
	goto	u3891
	goto	u3890
u3891:
	goto	l3418
u3890:
	line	378
	
l3412:	
;main.c: 377: {
;main.c: 378: if(++fullCount >= 200)
	incf	(_fullCount),f
	skipnz
	incf	(_fullCount+1),f
	movlw	0
	subwf	((_fullCount+1)),w
	movlw	0C8h
	skipnz
	subwf	((_fullCount)),w
	skipc
	goto	u3901
	goto	u3900
u3901:
	goto	l3420
u3900:
	line	380
	
l3414:	
;main.c: 379: {
;main.c: 380: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	381
	
l3416:	
;main.c: 381: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l3420
	line	386
	
l3418:	
;main.c: 384: else
;main.c: 385: {
;main.c: 386: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	388
	
l3420:	
;main.c: 387: }
;main.c: 388: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u3911
	goto	u3910
u3911:
	goto	l3426
u3910:
	line	390
	
l3422:	
;main.c: 389: {
;main.c: 390: lockLedStep = 6;
	movlw	low(06h)
	movwf	(_lockLedStep)
	line	391
	
l3424:	
;main.c: 391: chrgPwmStop();
	fcall	_chrgPwmStop
	line	392
;main.c: 392: }
	goto	l736
	line	395
	
l3426:	
;main.c: 393: else
;main.c: 394: {
;main.c: 395: if(prePwStep < 15)
	movlw	low(0Fh)
	subwf	(_prePwStep),w
	skipnc
	goto	u3921
	goto	u3920
u3921:
	goto	l3430
u3920:
	line	397
	
l3428:	
;main.c: 396: {
;main.c: 397: lockLedStep = 0;
	clrf	(_lockLedStep)
	line	398
;main.c: 398: }
	goto	l3432
	line	401
	
l3430:	
;main.c: 399: else
;main.c: 400: {
;main.c: 401: lockLedStep = (prePwStep/14) - 1;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	0FFh
	movwf	(_lockLedStep)
	line	403
	
l3432:	
;main.c: 402: }
;main.c: 403: if(batADValue > 1545 || outADValue > (chrgMaxAD + 2))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	0Ah
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3931
	goto	u3930
u3931:
	goto	l3436
u3930:
	
l3434:	
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
	goto	u3945
	movf	(_outADValue),w
	subwf	0+(??_chrgCtr+0)+0,w
u3945:
	skipnc
	goto	u3941
	goto	u3940
u3941:
	goto	l3448
u3940:
	line	405
	
l3436:	
;main.c: 404: {
;main.c: 405: if(++subTime > chrgWaitTime)
	incf	(_subTime),f
	movf	((_subTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u3951
	goto	u3950
u3951:
	goto	l3446
u3950:
	line	407
	
l3438:	
;main.c: 406: {
;main.c: 407: if(chrgMaxDuty > 1)
	movlw	low(02h)
	subwf	(_chrgMaxDuty),w
	skipc
	goto	u3961
	goto	u3960
u3961:
	goto	l3442
u3960:
	line	409
	
l3440:	
;main.c: 408: {
;main.c: 409: chrgMaxDuty--;
	decf	(_chrgMaxDuty),f
	line	411
	
l3442:	
;main.c: 410: }
;main.c: 411: subTime = 0;
	clrf	(_subTime)
	line	412
	
l3444:	
;main.c: 412: chrgWaitTime = 50;
	movlw	low(032h)
	movwf	(_chrgWaitTime)
	line	414
	
l3446:	
;main.c: 413: }
;main.c: 414: addTime = 0;
	clrf	(_addTime)
	line	415
;main.c: 415: }
	goto	l3462
	line	416
	
l3448:	
;main.c: 416: else if(batADValue < 1545 && outADValue < (chrgMaxAD - 4))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	09h
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3971
	goto	u3970
u3971:
	goto	l3462
u3970:
	
l3450:	
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
	goto	u3985
	movf	0+(??_chrgCtr+0)+0,w
	subwf	(_outADValue),w
u3985:
	skipnc
	goto	u3981
	goto	u3980
u3981:
	goto	l3462
u3980:
	line	418
	
l3452:	
;main.c: 417: {
;main.c: 418: if(++addTime > chrgWaitTime)
	incf	(_addTime),f
	movf	((_addTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u3991
	goto	u3990
u3991:
	goto	l3460
u3990:
	line	420
	
l3454:	
;main.c: 419: {
;main.c: 420: addTime = 0;
	clrf	(_addTime)
	line	421
	
l3456:	
;main.c: 421: if(chrgMaxDuty < 75)
	movlw	low(04Bh)
	subwf	(_chrgMaxDuty),w
	skipnc
	goto	u4001
	goto	u4000
u4001:
	goto	l3460
u4000:
	line	423
	
l3458:	
;main.c: 422: {
;main.c: 423: chrgMaxDuty++;
	incf	(_chrgMaxDuty),f
	line	426
	
l3460:	
;main.c: 424: }
;main.c: 425: }
;main.c: 426: subTime = 0;
	clrf	(_subTime)
	line	430
	
l3462:	
;main.c: 427: }
;main.c: 430: if((PWMCON0 & 0x01) == 0)
	btfsc	(21),(0)&7	;volatile
	goto	u4011
	goto	u4010
u4011:
	goto	l3466
u4010:
	line	432
	
l3464:	
;main.c: 431: {
;main.c: 432: chrgPwmInit();
	fcall	_chrgPwmInit
	line	434
	
l3466:	
;main.c: 433: }
;main.c: 434: PWMD01H = 0X00;
	clrf	(30)	;volatile
	line	435
	
l3468:	
;main.c: 435: PWMD0L = chrgMaxDuty;
	movf	(_chrgMaxDuty),w
	movwf	(25)	;volatile
	goto	l736
	line	441
	
l3470:	
;main.c: 441: chrgFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgFlag)
	line	442
;main.c: 442: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	443
;main.c: 443: protectFlag = 0;
	clrf	(_protectFlag)
	line	444
;main.c: 444: chrgMode = 0;
	clrf	(_chrgMode)
	line	445
;main.c: 445: chrgMaxAD = 0;
	clrf	(_chrgMaxAD)
	line	446
;main.c: 446: chrgMaxDuty = 0;
	clrf	(_chrgMaxDuty)
	line	447
;main.c: 447: lockCount = 0;
	clrf	(_lockCount)
	line	448
;main.c: 448: lockLedStep = 0;
	clrf	(_lockLedStep)
	line	449
	
l3472:	
;main.c: 449: chrgWaitTime = 20;
	movlw	low(014h)
	movwf	(_chrgWaitTime)
	line	450
	
l3474:	
;main.c: 450: chrgPwmStop();
	fcall	_chrgPwmStop
	line	451
	
l3476:	
;main.c: 451: if(prePwStep > 0 && prePwStep > pwStep)
	movf	((_prePwStep)),w
	btfsc	status,2
	goto	u4021
	goto	u4020
u4021:
	goto	l3486
u4020:
	
l3478:	
	movf	(_prePwStep),w
	subwf	(_pwStep),w
	skipnc
	goto	u4031
	goto	u4030
u4031:
	goto	l3486
u4030:
	line	453
	
l3480:	
;main.c: 452: {
;main.c: 453: if(++count50s > 2000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	07h
	subwf	((_count50s+1)),w
	movlw	0D1h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u4041
	goto	u4040
u4041:
	goto	l736
u4040:
	line	455
	
l3482:	
;main.c: 454: {
;main.c: 455: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	456
	
l3484:	
;main.c: 456: prePwStep--;
	decf	(_prePwStep),f
	goto	l736
	line	461
	
l3486:	
;main.c: 459: else
;main.c: 460: {
;main.c: 461: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	464
	
l736:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_chrgPwmStop

;; *************** function _chrgPwmStop *****************
;; Defined at:
;;		line 951 in file "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
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
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	951
global __ptext11
__ptext11:	;psect for function _chrgPwmStop
psect	text11
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	951
	global	__size_of_chrgPwmStop
	__size_of_chrgPwmStop	equ	__end_of_chrgPwmStop-_chrgPwmStop
	
_chrgPwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmStop: []
	line	953
	
l2230:	
;main.c: 953: PWMCON0 &= 0xFE;
	bcf	(21)+(0/8),(0)&7	;volatile
	line	954
;main.c: 954: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	line	955
	
l881:	
	return
	opt stack 0
GLOBAL	__end_of_chrgPwmStop
	__end_of_chrgPwmStop:
	signat	_chrgPwmStop,89
	global	_chrgPwmInit

;; *************** function _chrgPwmInit *****************
;; Defined at:
;;		line 934 in file "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
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
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	934
global __ptext12
__ptext12:	;psect for function _chrgPwmInit
psect	text12
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	934
	global	__size_of_chrgPwmInit
	__size_of_chrgPwmInit	equ	__end_of_chrgPwmInit-_chrgPwmInit
	
_chrgPwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmInit: [wreg+status,2]
	line	936
	
l2232:	
;main.c: 936: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	938
;main.c: 938: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	939
	
l2234:	
;main.c: 939: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	943
	
l2236:	
;main.c: 943: PWMD01H = 0;
	clrf	(30)	;volatile
	line	944
;main.c: 944: PWMD0L = 1;
	movlw	low(01h)
	movwf	(25)	;volatile
	line	945
	
l2238:	
;main.c: 945: PWM01DT = 0X00;
	clrf	(31)	;volatile
	line	947
	
l2240:	
;main.c: 947: PWMCON0 = 0X01;
	movlw	low(01h)
	movwf	(21)	;volatile
	line	948
;main.c: 948: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	949
	
l878:	
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
psect	text13,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
	line	4
global __ptext13
__ptext13:	;psect for function ___lbdiv
psect	text13
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
	
l2380:	
	clrf	(___lbdiv@quotient)
	line	10
	
l2382:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1871
	goto	u1870
u1871:
	goto	l2400
u1870:
	line	11
	
l2384:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2388
	
l1176:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l2386:	
	incf	(___lbdiv@counter),f
	line	12
	
l2388:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1881
	goto	u1880
u1881:
	goto	l1176
u1880:
	line	16
	
l1178:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l2390:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1891
	goto	u1890
u1891:
	goto	l2396
u1890:
	line	19
	
l2392:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2394:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2396:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l2398:	
	decfsz	(___lbdiv@counter),f
	goto	u1901
	goto	u1900
u1901:
	goto	l1178
u1900:
	line	25
	
l2400:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1181:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_checkOutA

;; *************** function _checkOutA *****************
;; Defined at:
;;		line 627 in file "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
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
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	627
global __ptext14
__ptext14:	;psect for function _checkOutA
psect	text14
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	627
	global	__size_of_checkOutA
	__size_of_checkOutA	equ	__end_of_checkOutA-_checkOutA
	
_checkOutA:	
;incstack = 0
	opt	stack 4
; Regs used in _checkOutA: [wreg+status,2+status,0+pclath+cstack]
	line	629
	
l3232:	
;main.c: 629: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3511
	goto	u3510
u3511:
	goto	l3236
u3510:
	line	631
	
l3234:	
;main.c: 630: {
;main.c: 631: test_adc = ADC_Sample(4, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(04h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	632
;main.c: 632: }
	goto	l3238
	line	635
	
l3236:	
;main.c: 633: else
;main.c: 634: {
;main.c: 635: test_adc = ADC_Sample(0, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	637
	
l3238:	
;main.c: 636: }
;main.c: 637: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l3332
u3520:
	line	639
	
l3240:	
;main.c: 638: {
;main.c: 639: if(chrgFlag && adresult > 210)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l3250
u3530:
	
l3242:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	0D3h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u3541
	goto	u3540
u3541:
	goto	l3250
u3540:
	line	641
	
l3244:	
;main.c: 640: {
;main.c: 641: if(++overChrgTime > 10)
	movlw	low(0Bh)
	incf	(_overChrgTime),f
	subwf	((_overChrgTime)),w
	skipc
	goto	u3551
	goto	u3550
u3551:
	goto	l3252
u3550:
	line	643
	
l3246:	
;main.c: 642: {
;main.c: 643: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	644
	
l3248:	
;main.c: 644: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l3252
	line	650
	
l3250:	
;main.c: 648: else
;main.c: 649: {
;main.c: 650: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	652
	
l3252:	
;main.c: 651: }
;main.c: 652: outADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_outADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_outADValue)
	line	654
	
l3254:	
;main.c: 654: if(workStep && (outADValue > 220))
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3561
	goto	u3560
u3561:
	goto	l3262
u3560:
	
l3256:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	0DDh
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3571
	goto	u3570
u3571:
	goto	l3262
u3570:
	line	656
	
l3258:	
;main.c: 655: {
;main.c: 656: if(++workOverOutTime > 50)
	movlw	low(033h)
	incf	(_workOverOutTime),f
	subwf	((_workOverOutTime)),w
	skipc
	goto	u3581
	goto	u3580
u3581:
	goto	l3264
u3580:
	line	658
	
l3260:	
;main.c: 657: {
;main.c: 658: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	659
;main.c: 659: workStep = 0;
	clrf	(_workStep)
	goto	l3264
	line	664
	
l3262:	
;main.c: 662: else
;main.c: 663: {
;main.c: 664: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	666
	
l3264:	
	line	667
	
l3266:	
;main.c: 667: if(workStep < 6 && outADValue > maxtempV)
	movlw	low(06h)
	subwf	(_workStep),w
	skipnc
	goto	u3591
	goto	u3590
u3591:
	goto	l3274
u3590:
	
l3268:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	029h
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3601
	goto	u3600
u3601:
	goto	l3274
u3600:
	line	669
	
l3270:	
;main.c: 668: {
;main.c: 669: if(++overCount > 5)
	movlw	low(06h)
	incf	(_overCount),f
	subwf	((_overCount)),w
	skipc
	goto	u3611
	goto	u3610
u3611:
	goto	l3328
u3610:
	line	671
	
l3272:	
;main.c: 670: {
;main.c: 671: overCount = 5;
	movlw	low(05h)
	movwf	(_overCount)
	goto	l3328
	line	674
	
l3274:	
;main.c: 674: else if(outADValue > (maxtempV+3))
	movlw	0
	subwf	(_outADValue+1),w
	movlw	02Ch
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3621
	goto	u3620
u3621:
	goto	l3280
u3620:
	line	676
	
l3276:	
;main.c: 675: {
;main.c: 676: if(++overCount > 5)
	movlw	low(06h)
	incf	(_overCount),f
	subwf	((_overCount)),w
	skipc
	goto	u3631
	goto	u3630
u3631:
	goto	l3328
u3630:
	goto	l3272
	line	683
	
l3280:	
;main.c: 681: else
;main.c: 682: {
;main.c: 683: unsigned char maxAout = 11;
	movlw	low(0Bh)
	movwf	(checkOutA@maxAout)
	line	684
	
l3282:	
;main.c: 684: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u3641
	goto	u3640
u3641:
	goto	l3286
u3640:
	line	686
	
l3284:	
;main.c: 685: {
;main.c: 686: maxAout = maxAout + 5;
	movlw	low(05h)
	addwf	(checkOutA@maxAout),f
	line	687
;main.c: 687: }
	goto	l829
	line	688
	
l3286:	
;main.c: 688: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3651
	goto	u3650
u3651:
	goto	l3290
u3650:
	line	690
	
l3288:	
;main.c: 689: {
;main.c: 690: maxAout = maxAout + 6;
	movlw	low(06h)
	addwf	(checkOutA@maxAout),f
	line	691
;main.c: 691: }
	goto	l829
	line	692
	
l3290:	
;main.c: 692: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3661
	goto	u3660
u3661:
	goto	l3294
u3660:
	line	694
	
l3292:	
;main.c: 693: {
;main.c: 694: maxAout = maxAout + 7;
	movlw	low(07h)
	addwf	(checkOutA@maxAout),f
	line	695
;main.c: 695: }
	goto	l829
	line	696
	
l3294:	
;main.c: 696: else if(workStep == 4)
		movlw	4
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3671
	goto	u3670
u3671:
	goto	l3298
u3670:
	line	698
	
l3296:	
;main.c: 697: {
;main.c: 698: maxAout = maxAout + 8;
	movlw	low(08h)
	addwf	(checkOutA@maxAout),f
	line	699
;main.c: 699: }
	goto	l829
	line	700
	
l3298:	
;main.c: 700: else if(workStep == 5)
		movlw	5
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3681
	goto	u3680
u3681:
	goto	l3302
u3680:
	line	702
	
l3300:	
;main.c: 701: {
;main.c: 702: maxAout = maxAout + 9;
	movlw	low(09h)
	addwf	(checkOutA@maxAout),f
	line	703
;main.c: 703: }
	goto	l829
	line	704
	
l3302:	
;main.c: 704: else if(workStep == 6)
		movlw	6
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3691
	goto	u3690
u3691:
	goto	l833
u3690:
	line	706
	
l3304:	
;main.c: 705: {
;main.c: 706: maxAout = maxAout + 10;
	movlw	low(0Ah)
	addwf	(checkOutA@maxAout),f
	goto	l829
	line	708
	
l833:	
	
l829:	
;main.c: 707: }
;main.c: 708: if(overCount > 0)
	movf	((_overCount)),w
	btfsc	status,2
	goto	u3701
	goto	u3700
u3701:
	goto	l3308
u3700:
	line	710
	
l3306:	
;main.c: 709: {
;main.c: 710: overCount--;
	decf	(_overCount),f
	line	712
	
l3308:	
;main.c: 711: }
;main.c: 712: if(outADValue > maxAout)
	movf	(checkOutA@maxAout),w
	movwf	(??_checkOutA+0)+0
	clrf	(??_checkOutA+0)+0+1
	movf	(_outADValue+1),w
	subwf	1+(??_checkOutA+0)+0,w
	skipz
	goto	u3715
	movf	(_outADValue),w
	subwf	0+(??_checkOutA+0)+0,w
u3715:
	skipnc
	goto	u3711
	goto	u3710
u3711:
	goto	l3320
u3710:
	line	714
	
l3310:	
;main.c: 713: {
;main.c: 714: if(++addPowerCount > 3)
	movlw	low(04h)
	incf	(_addPowerCount),f
	subwf	((_addPowerCount)),w
	skipc
	goto	u3721
	goto	u3720
u3721:
	goto	l3328
u3720:
	line	716
	
l3312:	
;main.c: 715: {
;main.c: 716: addPowerCount = 3;
	movlw	low(03h)
	movwf	(_addPowerCount)
	line	717
	
l3314:	
;main.c: 717: if(startTime == 0)
	movf	((_startTime)),w
	btfss	status,2
	goto	u3731
	goto	u3730
u3731:
	goto	l3318
u3730:
	line	719
	
l3316:	
;main.c: 718: {
;main.c: 719: tempDuty = 87 + (workStep*2);
	clrc
	rlf	(_workStep),w
	addlw	057h
	movwf	(_tempDuty)
	line	721
;main.c: 721: }
	goto	l3328
	line	724
	
l3318:	
;main.c: 722: else
;main.c: 723: {
;main.c: 724: tempDuty = maxDuty;
	movf	(_maxDuty),w
	movwf	(_tempDuty)
	goto	l3328
	line	731
	
l3320:	
;main.c: 729: else
;main.c: 730: {
;main.c: 731: addPowerCount = 0;
	clrf	(_addPowerCount)
	line	732
	
l3322:	
;main.c: 732: if(tempDuty > maxDuty)
	movf	(_tempDuty),w
	subwf	(_maxDuty),w
	skipnc
	goto	u3741
	goto	u3740
u3741:
	goto	l3318
u3740:
	line	734
	
l3324:	
;main.c: 733: {
;main.c: 734: tempDuty--;
	decf	(_tempDuty),f
	line	744
;main.c: 735: }
	
l3328:	
;main.c: 739: }
;main.c: 741: }
;main.c: 743: }
;main.c: 744: PWMD01H = 0X00;
	clrf	(30)	;volatile
	line	745
	
l3330:	
;main.c: 745: PWMD1L = maxDuty;
	movf	(_maxDuty),w
	movwf	(26)	;volatile
	line	746
;main.c: 746: }
	goto	l848
	line	749
	
l3332:	
;main.c: 747: else
;main.c: 748: {
;main.c: 749: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	750
;main.c: 750: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	751
	
l3334:	
;main.c: 751: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkOutA+0)+0),f
	u4607:
decfsz	(??_checkOutA+0)+0,f
	goto	u4607
opt asmopt_pop

	line	753
	
l848:	
	return
	opt stack 0
GLOBAL	__end_of_checkOutA
	__end_of_checkOutA:
	signat	_checkOutA,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 755 in file "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
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
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	755
global __ptext15
__ptext15:	;psect for function _checkBatAD
psect	text15
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	755
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	757
	
l3488:	
;main.c: 757: test_adc = ADC_Sample(2, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(02h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	758
	
l3490:	
;main.c: 758: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u4051
	goto	u4050
u4051:
	goto	l3528
u4050:
	line	760
	
l3492:	
;main.c: 759: {
;main.c: 760: batADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_batADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_batADValue)
	line	761
;main.c: 761: if(batADValue < 1117)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Dh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u4061
	goto	u4060
u4061:
	goto	l3510
u4060:
	line	763
	
l3494:	
;main.c: 762: {
;main.c: 763: pwStep = 0;
	clrf	(_pwStep)
	line	764
	
l3496:	
;main.c: 764: if(++count8s > 800)
	incf	(_count8s),f
	skipnz
	incf	(_count8s+1),f
	movlw	03h
	subwf	((_count8s+1)),w
	movlw	021h
	skipnz
	subwf	((_count8s)),w
	skipc
	goto	u4071
	goto	u4070
u4071:
	goto	l3522
u4070:
	line	766
	
l3498:	
;main.c: 765: {
;main.c: 766: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	767
	
l3500:	
;main.c: 767: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	768
	
l3502:	
;main.c: 768: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u4081
	goto	u4080
u4081:
	goto	l3506
u4080:
	line	770
	
l3504:	
;main.c: 769: {
;main.c: 770: overWorkTime = 120;
	movlw	078h
	movwf	(_overWorkTime)
	clrf	(_overWorkTime+1)
	line	771
;main.c: 771: preLedStep = workStep;
	movf	(_workStep),w
	movwf	(_preLedStep)
	line	773
	
l3506:	
;main.c: 772: }
;main.c: 773: prePwStep = 0;
	clrf	(_prePwStep)
	line	774
	
l3508:	
;main.c: 774: workStep = 0;
	clrf	(_workStep)
	goto	l3522
	line	779
	
l3510:	
;main.c: 777: else
;main.c: 778: {
;main.c: 779: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	780
	
l3512:	
;main.c: 780: if(batADValue >= 1340)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	03Ch
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u4091
	goto	u4090
u4091:
	goto	l3516
u4090:
	line	782
	
l3514:	
;main.c: 781: {
;main.c: 782: pwStep = ((batADValue - 1340) /2) + 13;
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
	line	783
;main.c: 783: }
	goto	l3518
	line	786
	
l3516:	
;main.c: 784: else
;main.c: 785: {
;main.c: 786: pwStep = (batADValue - 1117) / 16;
	movf	(_batADValue),w
	addlw	low(0FBA3h)
	movwf	(??_checkBatAD+0)+0
	movf	(_batADValue+1),w
	skipnc
	addlw	1
	addlw	high(0FBA3h)
	movwf	1+(??_checkBatAD+0)+0
	movlw	04h
u4105:
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	addlw	-1
	skipz
	goto	u4105
	movf	0+(??_checkBatAD+0)+0,w
	movwf	(_pwStep)
	line	788
	
l3518:	
;main.c: 787: }
;main.c: 788: if(pwStep > 99)
	movlw	low(064h)
	subwf	(_pwStep),w
	skipc
	goto	u4111
	goto	u4110
u4111:
	goto	l3522
u4110:
	line	790
	
l3520:	
;main.c: 789: {
;main.c: 790: pwStep = 99;
	movlw	low(063h)
	movwf	(_pwStep)
	line	793
	
l3522:	
;main.c: 791: }
;main.c: 792: }
;main.c: 793: if(chrgFlag && batADValue > 1861)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u4121
	goto	u4120
u4121:
	goto	l3532
u4120:
	
l3524:	
	movlw	07h
	subwf	(_batADValue+1),w
	movlw	046h
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u4131
	goto	u4130
u4131:
	goto	l3532
u4130:
	line	795
	
l3526:	
;main.c: 794: {
;main.c: 795: protectFlag = 1;
	clrf	(_protectFlag)
	incf	(_protectFlag),f
	goto	l3532
	line	800
	
l3528:	
;main.c: 798: else
;main.c: 799: {
;main.c: 800: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	801
;main.c: 801: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	802
	
l3530:	
;main.c: 802: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u4617:
decfsz	(??_checkBatAD+0)+0,f
	goto	u4617
opt asmopt_pop

	line	804
	
l3532:	
;main.c: 803: }
;main.c: 804: test_adc = ADC_Sample(3, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(03h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	805
	
l3534:	
;main.c: 805: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u4141
	goto	u4140
u4141:
	goto	l3552
u4140:
	line	807
	
l3536:	
;main.c: 806: {
;main.c: 807: if(chrgFlag && adresult > 100)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u4151
	goto	u4150
u4151:
	goto	l869
u4150:
	
l3538:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	065h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u4161
	goto	u4160
u4161:
	goto	l869
u4160:
	line	810
	
l3540:	
;main.c: 808: {
;main.c: 810: if(adresult > 810 || (batADValue - adresult) > 810)
	movlw	03h
	subwf	(_adresult+1),w	;volatile
	movlw	02Bh
	skipnz
	subwf	(_adresult),w	;volatile
	skipnc
	goto	u4171
	goto	u4170
u4171:
	goto	l3544
u4170:
	
l3542:	
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
	goto	u4181
	goto	u4180
u4181:
	goto	l3550
u4180:
	line	813
	
l3544:	
;main.c: 811: {
;main.c: 813: if(++countHalfFull > 250)
	movlw	low(0FBh)
	incf	(_countHalfFull),f
	subwf	((_countHalfFull)),w
	skipc
	goto	u4191
	goto	u4190
u4191:
	goto	l862
u4190:
	line	815
	
l3546:	
;main.c: 814: {
;main.c: 815: countHalfFull = 0;
	clrf	(_countHalfFull)
	line	816
	
l3548:	
;main.c: 816: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l869
	line	821
	
l3550:	
;main.c: 819: else
;main.c: 820: {
;main.c: 821: countHalfFull = 0;
	clrf	(_countHalfFull)
	goto	l869
	line	823
	
l862:	
	line	824
;main.c: 822: }
;main.c: 823: }
;main.c: 824: }
	goto	l869
	line	827
	
l3552:	
;main.c: 825: else
;main.c: 826: {
;main.c: 827: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	828
;main.c: 828: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	829
	
l3554:	
;main.c: 829: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u4627:
decfsz	(??_checkBatAD+0)+0,f
	goto	u4627
opt asmopt_pop

	line	831
	
l869:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 1062 in file "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
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
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	1062
global __ptext16
__ptext16:	;psect for function _ADC_Sample
psect	text16
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	1062
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	1064
	
l3122:	
;main.c: 1064: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1065
	
l3124:	
;main.c: 1065: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1066
;main.c: 1066: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	1068
	
l3126:	
;main.c: 1068: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u3291
	goto	u3290
u3291:
	goto	l3132
u3290:
	
l3128:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l3132
u3300:
	line	1071
	
l3130:	
;main.c: 1069: {
;main.c: 1071: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1072
;main.c: 1072: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_ADC_Sample+0)+0),f
	u4637:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u4637
	nop2
opt asmopt_pop

	line	1073
;main.c: 1073: }
	goto	l3134
	line	1075
	
l3132:	
;main.c: 1074: else
;main.c: 1075: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1077
	
l3134:	
;main.c: 1077: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u3311
	goto	u3310
u3311:
	goto	l3140
u3310:
	line	1079
	
l3136:	
;main.c: 1078: {
;main.c: 1079: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	1080
	
l3138:	
;main.c: 1080: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	1082
	
l3140:	
	line	1083
	
l3142:	
;main.c: 1083: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	1085
	
l3148:	
;main.c: 1084: {
;main.c: 1085: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u3325:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u3325
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	1086
# 1086 "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
nop ;# 
	line	1087
# 1087 "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
nop ;# 
	line	1088
# 1088 "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
nop ;# 
	line	1089
# 1089 "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
nop ;# 
psect	text16
	line	1090
	
l3150:	
;main.c: 1090: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	1092
	
l3152:	
;main.c: 1092: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	1093
;main.c: 1093: while (GODONE)
	goto	l901
	
l902:	
	line	1095
;main.c: 1094: {
;main.c: 1095: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	1097
;main.c: 1097: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u3331
	goto	u3330
u3331:
	goto	l901
u3330:
	line	1098
	
l3154:	
;main.c: 1098: return 0;
	movlw	low(0)
	goto	l904
	line	1099
	
l901:	
	line	1093
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u3341
	goto	u3340
u3341:
	goto	l902
u3340:
	line	1101
	
l3158:	
;main.c: 1099: }
;main.c: 1101: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l3160:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	1103
	
l3162:	
;main.c: 1103: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l3166
u3350:
	line	1105
	
l3164:	
;main.c: 1104: {
;main.c: 1105: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	1106
;main.c: 1106: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1107
;main.c: 1107: }
	goto	l907
	line	1108
	
l3166:	
;main.c: 1108: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u3365
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u3365:
	skipnc
	goto	u3361
	goto	u3360
u3361:
	goto	l3170
u3360:
	line	1109
	
l3168:	
;main.c: 1109: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l907
	line	1110
	
l3170:	
;main.c: 1110: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u3375
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u3375:
	skipnc
	goto	u3371
	goto	u3370
u3371:
	goto	l907
u3370:
	line	1111
	
l3172:	
;main.c: 1111: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1113
	
l907:	
;main.c: 1113: adsum += ad_temp;
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
	goto	u3381
	addwf	(ADC_Sample@adsum+1),f	;volatile
u3381:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3382
	addwf	(ADC_Sample@adsum+2),f	;volatile
u3382:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3383
	addwf	(ADC_Sample@adsum+3),f	;volatile
u3383:

	line	1083
	
l3174:	
	incf	(ADC_Sample@i),f
	
l3176:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l3148
u3390:
	line	1115
	
l3178:	
;main.c: 1114: }
;main.c: 1115: adsum -= admax;
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
	goto	u3405
	goto	u3406
u3405:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3406:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3407
	goto	u3408
u3407:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3408:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3409
	goto	u3400
u3409:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3400:

	line	1116
;main.c: 1116: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u3415
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u3415
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u3415
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u3415:
	skipc
	goto	u3411
	goto	u3410
u3411:
	goto	l911
u3410:
	line	1117
	
l3180:	
;main.c: 1117: adsum -= admin;
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
	goto	u3425
	goto	u3426
u3425:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3426:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3427
	goto	u3428
u3427:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3428:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3429
	goto	u3420
u3429:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3420:

	goto	l3182
	line	1118
	
l911:	
	line	1119
;main.c: 1118: else
;main.c: 1119: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1121
	
l3182:	
;main.c: 1121: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u3435:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u3430:
	addlw	-1
	skipz
	goto	u3435
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	1123
	
l3184:	
;main.c: 1123: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1124
	
l3186:	
;main.c: 1124: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	1125
	
l3188:	
;main.c: 1125: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1126
	
l3190:	
;main.c: 1126: return 0xA5;
	movlw	low(0A5h)
	line	1128
	
l904:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 986 in file "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
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
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	986
global __ptext17
__ptext17:	;psect for function _Sleep_Mode
psect	text17
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	986
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 4
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	988
	
l2980:	
;main.c: 988: INTCON = 0;
	clrf	(11)	;volatile
	line	990
;main.c: 990: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	992
	
l2982:	
;main.c: 992: TRISA = 0x1F;
	movlw	low(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	993
	
l2984:	
;main.c: 993: WPUA = 0B00000000;
	clrf	(136)^080h	;volatile
	line	994
	
l2986:	
;main.c: 994: PORTA = 0x00;
	clrf	(134)^080h	;volatile
	line	995
	
l2988:	
;main.c: 995: TRISB = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	996
;main.c: 996: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	997
	
l2990:	
;main.c: 997: WPUB = 0B00000100;
	movlw	low(04h)
	movwf	(8)	;volatile
	line	999
	
l2992:	
;main.c: 999: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	1000
	
l2994:	
;main.c: 1000: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	1002
	
l2996:	
;main.c: 1002: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	1004
;main.c: 1004: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	1006
;main.c: 1006: IOCA = 0B00000010;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(137)^080h	;volatile
	line	1007
;main.c: 1007: IOCB = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	1009
	
l2998:	
;main.c: 1009: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	1010
	
l3000:	
;main.c: 1010: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	1011
	
l3002:	
;main.c: 1011: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	1012
	
l3004:	
;main.c: 1012: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	1014
	
l3006:	
;main.c: 1014: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	1015
	
l3008:	
;main.c: 1015: PIR1 = 0;
	clrf	(13)	;volatile
	line	1016
	
l3010:	
;main.c: 1016: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	1018
	
l3012:	
;main.c: 1018: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	1019
	
l3014:	
;main.c: 1019: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	1020
	
l3016:	
;main.c: 1020: PORTB;
	movf	(6),w	;volatile
	line	1021
	
l3018:	
;main.c: 1021: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	1022
# 1022 "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
clrwdt ;# 
	line	1024
# 1024 "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
sleep ;# 
	line	1026
# 1026 "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
nop ;# 
	line	1027
# 1027 "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
clrwdt ;# 
	line	1028
# 1028 "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
nop ;# 
	line	1029
# 1029 "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
nop ;# 
	line	1030
# 1030 "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
nop ;# 
	line	1031
# 1031 "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
nop ;# 
	line	1032
# 1032 "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
nop ;# 
psect	text17
	line	1033
	
l3020:	
;main.c: 1033: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u3121
	goto	u3120
u3121:
	goto	l890
u3120:
	
l3022:	
	bcf	(107/8),(107)&7	;volatile
	
l890:	
	line	1034
;main.c: 1034: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u3131
	goto	u3130
u3131:
	goto	l891
u3130:
	
l3024:	
	bcf	(88/8),(88)&7	;volatile
	
l891:	
	line	1035
;main.c: 1035: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u3141
	goto	u3140
u3141:
	goto	l3028
u3140:
	
l3026:	
	bcf	(105/8),(105)&7	;volatile
	line	1036
	
l3028:	
;main.c: 1036: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	1037
;main.c: 1037: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	1038
	
l3030:	
;main.c: 1038: Init_System();
	fcall	_Init_System
	line	1039
	
l3032:	
;main.c: 1039: AD_Init();
	fcall	_AD_Init
	line	1040
	
l893:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 842 in file "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
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
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	842
global __ptext18
__ptext18:	;psect for function _Init_System
psect	text18
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	842
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	844
	
l2208:	
# 844 "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
nop ;# 
	line	845
# 845 "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
clrwdt ;# 
psect	text18
	line	846
	
l2210:	
;main.c: 846: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	847
# 847 "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
clrwdt ;# 
psect	text18
	line	848
	
l2212:	
;main.c: 848: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	850
	
l2214:	
;main.c: 850: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	851
;main.c: 851: WPDA = 0x02;
	movlw	low(02h)
	movwf	(135)^080h	;volatile
	line	852
;main.c: 852: WPUB = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	854
;main.c: 854: TRISA = 0x1F;
	movlw	low(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	855
;main.c: 855: TRISB = 0B00000100;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	857
	
l2216:	
;main.c: 857: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	858
	
l2218:	
;main.c: 858: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	862
;main.c: 862: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	863
	
l2220:	
;main.c: 863: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	864
	
l2222:	
;main.c: 864: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	866
;main.c: 866: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	867
;main.c: 867: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	868
	
l872:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 879 in file "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
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
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	879
global __ptext19
__ptext19:	;psect for function _AD_Init
psect	text19
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	879
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _AD_Init: [wreg+status,2]
	line	912
	
l2224:	
;main.c: 912: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	929
	
l2226:	
;main.c: 929: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	930
	
l2228:	
;main.c: 930: ANSEL0 = 0X1D;
	movlw	low(01Dh)
	movwf	(147)^080h	;volatile
	line	931
	
l875:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 104 in file "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
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
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	104
global __ptext20
__ptext20:	;psect for function _Isr_Timer
psect	text20
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	104
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
psect	text20
	line	106
	
i1l3034:	
;main.c: 106: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u315_21
	goto	u315_20
u315_21:
	goto	i1l664
u315_20:
	line	108
	
i1l3036:	
;main.c: 107: {
;main.c: 108: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	109
	
i1l3038:	
;main.c: 109: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u316_21
	goto	u316_20
u316_21:
	goto	i1l3048
u316_20:
	line	111
	
i1l3040:	
;main.c: 110: {
;main.c: 111: intCount = 0;
	clrf	(_intCount)
	line	112
	
i1l3042:	
;main.c: 112: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	113
	
i1l3044:	
;main.c: 113: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u317_21
	goto	u317_20
u317_21:
	goto	i1l3048
u317_20:
	line	115
	
i1l3046:	
;main.c: 114: {
;main.c: 115: count1s = 0;
	clrf	(_count1s)
	line	118
	
i1l3048:	
;main.c: 116: }
;main.c: 117: }
;main.c: 118: ledShow();
	fcall	_ledShow
	line	119
	
i1l3050:	
;main.c: 119: intCount10++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_intCount10),f
	line	122
	
i1l664:	
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
;;		line 167 in file "C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
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
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	167
global __ptext21
__ptext21:	;psect for function _ledShow
psect	text21
	file	"C:\mcuproject\scm\zdt\C212-bjldz_062B_SOP14\main.c"
	line	167
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 4
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	169
	
i1l2442:	
;main.c: 169: if(++ledCntTime > 30)
	movlw	low(01Fh)
	incf	(_ledCntTime),f
	subwf	((_ledCntTime)),w
	skipc
	goto	u198_21
	goto	u198_20
u198_21:
	goto	i1l698
u198_20:
	line	171
	
i1l2444:	
;main.c: 170: {
;main.c: 171: ledCntTime = 0;
	clrf	(_ledCntTime)
	line	172
	
i1l2446:	
;main.c: 172: if(++ledCnt > 5)
	movlw	low(06h)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u199_21
	goto	u199_20
u199_21:
	goto	i1l2450
u199_20:
	line	174
	
i1l2448:	
;main.c: 173: {
;main.c: 174: ledCnt = 0;
	clrf	(_ledCnt)
	line	176
	
i1l2450:	
;main.c: 175: }
;main.c: 176: PORTA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(5/8),(5)&7	;volatile
	line	177
	
i1l2452:	
;main.c: 177: PORTB &= 0xC7;
	movlw	low(0C7h)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(6),f	;volatile
	line	178
	
i1l2454:	
;main.c: 178: TRISA |= 0x20;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(133)^080h+(5/8),(5)&7	;volatile
	line	179
	
i1l2456:	
;main.c: 179: TRISB |= 0x38;
	movlw	low(038h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(5),f	;volatile
	line	180
;main.c: 180: switch(ledCnt)
	goto	i1l2492
	line	183
	
i1l2458:	
;main.c: 183: if(ledStep > 0)
	movf	((_ledStep)),w
	btfsc	status,2
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l698
u200_20:
	line	185
	
i1l2460:	
;main.c: 184: {
;main.c: 185: TRISB &= 0xE7;
	movlw	low(0E7h)
	andwf	(5),f	;volatile
	line	186
	
i1l2462:	
;main.c: 186: PORTB |= 0x10;
	bsf	(6)+(4/8),(4)&7	;volatile
	goto	i1l698
	line	190
	
i1l2464:	
;main.c: 190: if(ledStep > 1)
	movlw	low(02h)
	subwf	(_ledStep),w
	skipc
	goto	u201_21
	goto	u201_20
u201_21:
	goto	i1l698
u201_20:
	line	192
	
i1l2466:	
;main.c: 191: {
;main.c: 192: TRISB &= 0xCF;
	movlw	low(0CFh)
	andwf	(5),f	;volatile
	line	193
	
i1l2468:	
;main.c: 193: PORTB |= 0x20;
	bsf	(6)+(5/8),(5)&7	;volatile
	goto	i1l698
	line	197
	
i1l2470:	
;main.c: 197: if(ledStep > 2)
	movlw	low(03h)
	subwf	(_ledStep),w
	skipc
	goto	u202_21
	goto	u202_20
u202_21:
	goto	i1l698
u202_20:
	line	199
	
i1l2472:	
;main.c: 198: {
;main.c: 199: TRISB &= 0xE7;
	movlw	low(0E7h)
	andwf	(5),f	;volatile
	line	200
	
i1l2474:	
;main.c: 200: PORTB |= 0x08;
	bsf	(6)+(3/8),(3)&7	;volatile
	goto	i1l698
	line	204
	
i1l2476:	
;main.c: 204: if(ledStep > 3)
	movlw	low(04h)
	subwf	(_ledStep),w
	skipc
	goto	u203_21
	goto	u203_20
u203_21:
	goto	i1l698
u203_20:
	line	206
	
i1l2478:	
;main.c: 205: {
;main.c: 206: TRISB &= 0xCF;
	movlw	low(0CFh)
	andwf	(5),f	;volatile
	goto	i1l2462
	line	211
	
i1l2482:	
;main.c: 211: if(ledStep > 4)
	movlw	low(05h)
	subwf	(_ledStep),w
	skipc
	goto	u204_21
	goto	u204_20
u204_21:
	goto	i1l698
u204_20:
	line	213
	
i1l2484:	
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
	goto	i1l698
	line	219
	
i1l2486:	
;main.c: 219: if(ledStep > 5)
	movlw	low(06h)
	subwf	(_ledStep),w
	skipc
	goto	u205_21
	goto	u205_20
u205_21:
	goto	i1l698
u205_20:
	line	221
	
i1l2488:	
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
	goto	i1l698
	line	180
	
i1l2492:	
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
goto i1l698
movlw high(i1S3744)
movwf pclath
	movlw low(i1S3744)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S3744:
	ljmp	i1l2486
	ljmp	i1l2458
	ljmp	i1l2464
	ljmp	i1l2470
	ljmp	i1l2476
	ljmp	i1l2482
psect	text21

	line	232
	
i1l698:	
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
