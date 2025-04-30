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
	FNCALL	_main,_workCtr2
	FNCALL	_workCtr2,_ctr7
	FNCALL	_workCtr2,_ctr8
	FNCALL	_workCtr2,_ctr9
	FNCALL	_ctr8,___lwmod
	FNCALL	_ctr8,_pwmInit
	FNCALL	_ctr8,_pwmStop
	FNCALL	_ctr7,___lwmod
	FNCALL	_ctr7,_pwmInit
	FNCALL	_ctr7,_pwmStop
	FNCALL	_workCtr,_pwmInit
	FNCALL	_workCtr,_pwmStop
	FNCALL	_ledCtr,___lbdiv
	FNCALL	_ledCtr,___lbmod
	FNCALL	_keyCtr,_keyRead
	FNCALL	_keyCtr,_pwmInit
	FNCALL	_chrgCtr,_chrgPwmInit
	FNCALL	_chrgCtr,_chrgPwmStop
	FNCALL	_chrgCtr,_pwmStop
	FNCALL	_checkOutA,_ADC_Sample
	FNCALL	_checkBatAD,_ADC_Sample
	FNCALL	_Sleep_Mode,_AD_Init
	FNCALL	_Sleep_Mode,_Init_System
	FNROOT	_main
	FNCALL	_Isr_Timer,_ledShow
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_numArray
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
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	30
_numArray:
	retlw	03Fh
	retlw	06h
	retlw	05Bh
	retlw	04Fh
	retlw	066h
	retlw	06Dh
	retlw	07Dh
	retlw	07h
	retlw	07Fh
	retlw	06Fh
	retlw	071h
	retlw	079h
	retlw	050h
	retlw	076h
	global __end_of_numArray
__end_of_numArray:
	global	_numArray
	global	_adresult
	global	_prePwStep
	global	_workStep
	global	_maxWorkTime
	global	_workTime
	global	_count900s
	global	_count8s
	global	_overWorkTime
	global	_fullCount
	global	_count50s
	global	_batADValue
	global	_outADValue
	global	_power_ad
	global	_result
	global	_curDuty
	global	_motorPwmFlag
	global	_chrgPwmFlag
	global	_sleepTime
	global	_lowBatFlag
	global	_ledCntTime
	global	_chrgMaxDuty
	global	_chrgWaitTime
	global	_subTime
	global	_addTime
	global	_lockCount
	global	_chrgMaxAD
	global	_chrgMode
	global	_showBatTime
	global	_reChrgCount
	global	_pwStep
	global	_overChrgTime
	global	_startTime
	global	_maxDuty
	global	_longPressFlag
	global	_keyCount
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
	global	_geweiNum
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_geweiNum:
       ds      1

	global	_shiweiNum
_shiweiNum:
       ds      1

	global	_firstTime
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
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_PWMD23H
_PWMD23H	set	158
	global	_PWM23DT
_PWM23DT	set	157
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
	global	_RA3
_RA3	set	1075
	global	_RA4
_RA4	set	1076
; #config settings
	file	"D212_062B_SOP14.as"
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

_prePwStep:
       ds      1

_workStep:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_maxWorkTime:
       ds      2

_workTime:
       ds      2

_count900s:
       ds      2

_count8s:
       ds      2

_overWorkTime:
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

_curDuty:
       ds      1

_motorPwmFlag:
       ds      1

_chrgPwmFlag:
       ds      1

_sleepTime:
       ds      1

_lowBatFlag:
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

_reChrgCount:
       ds      1

_pwStep:
       ds      1

_overChrgTime:
       ds      1

_startTime:
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

	file	"D212_062B_SOP14.as"
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
?_workCtr2:	; 1 bytes @ 0x0
?_workCtr:	; 1 bytes @ 0x0
?_ledCtr:	; 1 bytes @ 0x0
?_Sleep_Mode:	; 1 bytes @ 0x0
?_chrgPwmStop:	; 1 bytes @ 0x0
?_pwmStop:	; 1 bytes @ 0x0
?_chrgPwmInit:	; 1 bytes @ 0x0
?_pwmInit:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_keyRead:	; 1 bytes @ 0x0
?_ctr7:	; 1 bytes @ 0x0
?_ctr8:	; 1 bytes @ 0x0
?_ctr9:	; 1 bytes @ 0x0
	ds	3
??_Init_System:	; 1 bytes @ 0x3
??_AD_Init:	; 1 bytes @ 0x3
??_chrgCtr:	; 1 bytes @ 0x3
??_workCtr:	; 1 bytes @ 0x3
??_Sleep_Mode:	; 1 bytes @ 0x3
??_chrgPwmStop:	; 1 bytes @ 0x3
??_pwmStop:	; 1 bytes @ 0x3
??_chrgPwmInit:	; 1 bytes @ 0x3
??_pwmInit:	; 1 bytes @ 0x3
?_ADC_Sample:	; 1 bytes @ 0x3
??_keyRead:	; 1 bytes @ 0x3
??_ctr9:	; 1 bytes @ 0x3
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
??_workCtr2:	; 1 bytes @ 0x7
??_ledCtr:	; 1 bytes @ 0x7
??_main:	; 1 bytes @ 0x7
??_ctr7:	; 1 bytes @ 0x7
??_ctr8:	; 1 bytes @ 0x7
??___lwmod:	; 1 bytes @ 0x7
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
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
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    14
;!    Data        0
;!    BSS         58
;!    Persistent  3
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      11
;!    BANK0            80     17      74
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _ctr8->___lwmod
;!    _ctr7->___lwmod
;!    _ledCtr->___lbdiv
;!    _keyCtr->_keyRead
;!    _checkOutA->_ADC_Sample
;!    _checkBatAD->_ADC_Sample
;!
;!Critical Paths under _Isr_Timer in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _ctr8->___lwmod
;!    _ctr7->___lwmod
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
;! (0) _main                                                 0     0      0    3895
;!                            _AD_Init
;!                        _Init_System
;!                         _Sleep_Mode
;!                         _checkBatAD
;!                          _checkOutA
;!                            _chrgCtr
;!                             _keyCtr
;!                             _ledCtr
;!                            _workCtr
;!                           _workCtr2
;! ---------------------------------------------------------------------------------
;! (1) _workCtr2                                             0     0      0    1244
;!                               _ctr7
;!                               _ctr8
;!                               _ctr9
;! ---------------------------------------------------------------------------------
;! (2) _ctr9                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _ctr8                                                 0     0      0     622
;!                            ___lwmod
;!                            _pwmInit
;!                            _pwmStop
;! ---------------------------------------------------------------------------------
;! (2) _ctr7                                                 0     0      0     622
;!                            ___lwmod
;!                            _pwmInit
;!                            _pwmStop
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              5     1      4     622
;!                                              3 COMMON     4     0      4
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              0     0      0       0
;!                            _pwmInit
;!                            _pwmStop
;! ---------------------------------------------------------------------------------
;! (1) _ledCtr                                               0     0      0     630
;!                            ___lbdiv
;!                            ___lbmod
;! ---------------------------------------------------------------------------------
;! (2) ___lbmod                                              5     4      1     362
;!                                              3 COMMON     2     1      1
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) ___lbdiv                                              4     3      1     268
;!                                              3 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _keyCtr                                               1     1      0      67
;!                                              4 COMMON     1     1      0
;!                            _keyRead
;!                            _pwmInit
;! ---------------------------------------------------------------------------------
;! (3) _pwmInit                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _keyRead                                              1     1      0      22
;!                                              3 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              2     2      0       0
;!                                              3 COMMON     2     2      0
;!                        _chrgPwmInit
;!                        _chrgPwmStop
;!                            _pwmStop
;! ---------------------------------------------------------------------------------
;! (3) _pwmStop                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _chrgPwmStop                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _chrgPwmInit                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkOutA                                            1     1      0     977
;!                                              4 COMMON     1     1      0
;!                         _ADC_Sample
;! ---------------------------------------------------------------------------------
;! (1) _checkBatAD                                           2     2      0     977
;!                                              4 COMMON     2     2      0
;!                         _ADC_Sample
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Sample                                          18    17      1     977
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
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _Isr_Timer                                            3     3      0       0
;!                                              0 COMMON     3     3      0
;!                            _ledShow
;! ---------------------------------------------------------------------------------
;! (5) _ledShow                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
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
;!     _chrgPwmInit
;!     _chrgPwmStop
;!     _pwmStop
;!   _keyCtr
;!     _keyRead
;!     _pwmInit
;!   _ledCtr
;!     ___lbdiv
;!     ___lbmod
;!   _workCtr
;!     _pwmInit
;!     _pwmStop
;!   _workCtr2
;!     _ctr7
;!       ___lwmod
;!       _pwmInit
;!       _pwmStop
;!     _ctr8
;!       ___lwmod
;!       _pwmInit
;!       _pwmStop
;!     _ctr9
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
;!BANK0               50     11      4A       4       92.5%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      55       7        0.0%
;!DATA                 0      0      55       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 154 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
;; Hardware stack levels required when called:    5
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
;;		_workCtr2
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	154
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	154
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	156
	
l3418:	
;main.c: 156: Init_System();
	fcall	_Init_System
	line	157
;main.c: 157: AD_Init();
	fcall	_AD_Init
	line	158
	
l3420:	
;main.c: 158: shiweiNum = geweiNum = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_geweiNum)
	movwf	(_shiweiNum)
	line	159
	
l3422:	
;main.c: 159: firstTime = 200;
	movlw	low(0C8h)
	movwf	(_firstTime)
	line	160
;main.c: 160: while (1)
	
l691:	
	line	162
# 162 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
clrwdt ;# 
psect	maintext
	line	163
	
l3424:	
;main.c: 163: if(intCount10 > 10)
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_intCount10),w
	skipc
	goto	u3811
	goto	u3810
u3811:
	goto	l3430
u3810:
	line	165
	
l3426:	
;main.c: 164: {
;main.c: 165: intCount10 = 0;
	clrf	(_intCount10)
	line	166
	
l3428:	
;main.c: 166: checkOutA();
	fcall	_checkOutA
	line	168
	
l3430:	
;main.c: 167: }
;main.c: 168: if(!IntFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u3821
	goto	u3820
u3821:
	goto	l3434
u3820:
	goto	l691
	line	170
	
l3434:	
;main.c: 170: IntFlag = 0;
	clrf	(_IntFlag)
	line	171
	
l3436:	
;main.c: 171: chrgCtr();
	fcall	_chrgCtr
	line	172
	
l3438:	
;main.c: 172: checkBatAD();
	fcall	_checkBatAD
	line	173
	
l3440:	
;main.c: 173: if(chrgFlag == 0 && lowBatFlag == 0 && firstTime == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3831
	goto	u3830
u3831:
	goto	l3448
u3830:
	
l3442:	
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u3841
	goto	u3840
u3841:
	goto	l3448
u3840:
	
l3444:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3851
	goto	u3850
u3851:
	goto	l3448
u3850:
	line	175
	
l3446:	
;main.c: 174: {
;main.c: 175: keyCtr();
	fcall	_keyCtr
	line	177
	
l3448:	
;main.c: 176: }
;main.c: 177: if(workStep > 6)
	movlw	low(07h)
	subwf	(_workStep),w
	skipc
	goto	u3861
	goto	u3860
u3861:
	goto	l3452
u3860:
	line	179
	
l3450:	
;main.c: 178: {
;main.c: 179: workCtr2();
	fcall	_workCtr2
	line	180
;main.c: 180: }
	goto	l3454
	line	183
	
l3452:	
;main.c: 181: else
;main.c: 182: {
;main.c: 183: workCtr();
	fcall	_workCtr
	line	185
	
l3454:	
;main.c: 184: }
;main.c: 185: if(count1s == 0 && ++count900s >= 900)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_count1s)),w
	btfss	status,2
	goto	u3871
	goto	u3870
u3871:
	goto	l3460
u3870:
	
l3456:	
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	movlw	03h
	subwf	((_count900s+1)),w
	movlw	084h
	skipnz
	subwf	((_count900s)),w
	skipc
	goto	u3881
	goto	u3880
u3881:
	goto	l3460
u3880:
	line	187
	
l3458:	
;main.c: 186: {
;main.c: 187: workStep = 0;
	clrf	(_workStep)
	line	189
	
l3460:	
;main.c: 188: }
;main.c: 189: ledCtr();
	fcall	_ledCtr
	line	190
	
l3462:	
;main.c: 190: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && showBatTime == 0 && overWorkTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3891
	goto	u3890
u3891:
	goto	l3482
u3890:
	
l3464:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u3901
	goto	u3900
u3901:
	goto	l3482
u3900:
	
l3466:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u3911
	goto	u3910
u3911:
	goto	l3482
u3910:
	
l3468:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3921
	goto	u3920
u3921:
	goto	l3482
u3920:
	
l3470:	
	movf	((_showBatTime)),w
	btfss	status,2
	goto	u3931
	goto	u3930
u3931:
	goto	l3482
u3930:
	
l3472:	
	movf	((_overWorkTime)),w
iorwf	((_overWorkTime+1)),w
	btfss	status,2
	goto	u3941
	goto	u3940
u3941:
	goto	l3482
u3940:
	line	192
	
l3474:	
;main.c: 191: {
;main.c: 192: shiweiNum = geweiNum = 0;
	clrf	(_geweiNum)
	clrf	(_shiweiNum)
	line	193
	
l3476:	
;main.c: 193: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u3951
	goto	u3950
u3951:
	goto	l691
u3950:
	line	195
	
l3478:	
;main.c: 194: {
;main.c: 195: sleepTime = 0;
	clrf	(_sleepTime)
	line	196
	
l3480:	
;main.c: 196: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l691
	line	201
	
l3482:	
;main.c: 199: else
;main.c: 200: {
;main.c: 201: sleepTime = 0;
	clrf	(_sleepTime)
	goto	l691
	global	start
	ljmp	start
	opt stack 0
	line	204
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr2

;; *************** function _workCtr2 *****************
;; Defined at:
;;		line 753 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ctr7
;;		_ctr8
;;		_ctr9
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	753
global __ptext1
__ptext1:	;psect for function _workCtr2
psect	text1
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	753
	global	__size_of_workCtr2
	__size_of_workCtr2	equ	__end_of_workCtr2-_workCtr2
	
_workCtr2:	
;incstack = 0
	opt	stack 3
; Regs used in _workCtr2: [wreg+status,2+status,0+pclath+cstack]
	line	756
	
l3360:	
;main.c: 756: if(++workTime > maxWorkTime)
	incf	(_workTime),f
	skipnz
	incf	(_workTime+1),f
	movf	((_workTime+1)),w
	subwf	(_maxWorkTime+1),w
	skipz
	goto	u3705
	movf	((_workTime)),w
	subwf	(_maxWorkTime),w
u3705:
	skipnc
	goto	u3701
	goto	u3700
u3701:
	goto	l3364
u3700:
	line	758
	
l3362:	
;main.c: 757: {
;main.c: 758: workTime = 0;
	clrf	(_workTime)
	clrf	(_workTime+1)
	line	760
	
l3364:	
;main.c: 759: }
;main.c: 760: if(workStep == 7)
		movlw	7
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3711
	goto	u3710
u3711:
	goto	l3368
u3710:
	line	762
	
l3366:	
;main.c: 761: {
;main.c: 762: ctr7();
	fcall	_ctr7
	line	763
;main.c: 763: }
	goto	l864
	line	764
	
l3368:	
;main.c: 764: else if(workStep == 8)
		movlw	8
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3721
	goto	u3720
u3721:
	goto	l3372
u3720:
	line	766
	
l3370:	
;main.c: 765: {
;main.c: 766: ctr8();
	fcall	_ctr8
	line	767
;main.c: 767: }
	goto	l864
	line	768
	
l3372:	
;main.c: 768: else if(workStep == 9)
		movlw	9
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3731
	goto	u3730
u3731:
	goto	l864
u3730:
	line	770
	
l3374:	
;main.c: 769: {
;main.c: 770: ctr9();
	fcall	_ctr9
	line	772
	
l864:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr2
	__end_of_workCtr2:
	signat	_workCtr2,89
	global	_ctr9

;; *************** function _ctr9 *****************
;; Defined at:
;;		line 730 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_workCtr2
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	730
global __ptext2
__ptext2:	;psect for function _ctr9
psect	text2
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	730
	global	__size_of_ctr9
	__size_of_ctr9	equ	__end_of_ctr9-_ctr9
	
_ctr9:	
;incstack = 0
	opt	stack 4
; Regs used in _ctr9: [wreg+status,2+status,0]
	line	732
	
l2402:	
;main.c: 732: maxWorkTime = 600;
	movlw	058h
	movwf	(_maxWorkTime)
	movlw	02h
	movwf	((_maxWorkTime))+1
	line	733
	
l2404:	
;main.c: 733: if(workTime % 2 == 0)
	btfsc	(_workTime),(0)&7
	goto	u1791
	goto	u1790
u1791:
	goto	l855
u1790:
	line	735
	
l2406:	
;main.c: 734: {
;main.c: 735: if(workTime < 260 && curDuty < 199)
	movlw	01h
	subwf	(_workTime+1),w
	movlw	04h
	skipnz
	subwf	(_workTime),w
	skipnc
	goto	u1801
	goto	u1800
u1801:
	goto	l2412
u1800:
	
l2408:	
	movlw	low(0C7h)
	subwf	(_curDuty),w
	skipnc
	goto	u1811
	goto	u1810
u1811:
	goto	l2412
u1810:
	line	737
	
l2410:	
;main.c: 736: {
;main.c: 737: curDuty++;
	incf	(_curDuty),f
	line	738
;main.c: 738: }
	goto	l2422
	line	739
	
l2412:	
;main.c: 739: else if(workTime < 340)
	movlw	01h
	subwf	(_workTime+1),w
	movlw	054h
	skipnz
	subwf	(_workTime),w
	skipnc
	goto	u1821
	goto	u1820
u1821:
	goto	l2416
u1820:
	line	741
	
l2414:	
;main.c: 740: {
;main.c: 741: curDuty = 199;
	movlw	low(0C7h)
	movwf	(_curDuty)
	line	742
;main.c: 742: }
	goto	l2422
	line	743
	
l2416:	
;main.c: 743: else if(workTime >= 340 && curDuty > 70)
	movlw	01h
	subwf	(_workTime+1),w
	movlw	054h
	skipnz
	subwf	(_workTime),w
	skipc
	goto	u1831
	goto	u1830
u1831:
	goto	l2422
u1830:
	
l2418:	
	movlw	low(047h)
	subwf	(_curDuty),w
	skipc
	goto	u1841
	goto	u1840
u1841:
	goto	l2422
u1840:
	line	745
	
l2420:	
;main.c: 744: {
;main.c: 745: curDuty--;
	decf	(_curDuty),f
	line	747
	
l2422:	
;main.c: 746: }
;main.c: 747: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	748
	
l2424:	
;main.c: 748: PWMD3L = curDuty;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_curDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	750
	
l855:	
	return
	opt stack 0
GLOBAL	__end_of_ctr9
	__end_of_ctr9:
	signat	_ctr9,89
	global	_ctr8

;; *************** function _ctr8 *****************
;; Defined at:
;;		line 696 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwmod
;;		_pwmInit
;;		_pwmStop
;; This function is called by:
;;		_workCtr2
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	696
global __ptext3
__ptext3:	;psect for function _ctr8
psect	text3
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	696
	global	__size_of_ctr8
	__size_of_ctr8	equ	__end_of_ctr8-_ctr8
	
_ctr8:	
;incstack = 0
	opt	stack 3
; Regs used in _ctr8: [wreg+status,2+status,0+pclath+cstack]
	line	698
	
l3156:	
;main.c: 698: maxWorkTime = 494;
	movlw	0EEh
	movwf	(_maxWorkTime)
	movlw	01h
	movwf	((_maxWorkTime))+1
	line	699
;main.c: 699: if(workTime < 338)
	movlw	01h
	subwf	(_workTime+1),w
	movlw	052h
	skipnz
	subwf	(_workTime),w
	skipnc
	goto	u3281
	goto	u3280
u3281:
	goto	l3168
u3280:
	line	701
	
l3158:	
;main.c: 700: {
;main.c: 701: if(workTime % 26 < 13)
	movlw	01Ah
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(_workTime+1),w
	movwf	(___lwmod@dividend+1)
	movf	(_workTime),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movlw	0
	subwf	(1+(?___lwmod)),w
	movlw	0Dh
	skipnz
	subwf	(0+(?___lwmod)),w
	skipnc
	goto	u3291
	goto	u3290
u3291:
	goto	l3166
u3290:
	line	703
	
l3160:	
;main.c: 702: {
;main.c: 703: pwmInit();
	fcall	_pwmInit
	line	704
	
l3162:	
;main.c: 704: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	705
	
l3164:	
;main.c: 705: PWMD3L = 172;
	movlw	low(0ACh)
	movwf	(156)^080h	;volatile
	line	706
;main.c: 706: }
	goto	l846
	line	709
	
l3166:	
;main.c: 707: else
;main.c: 708: {
;main.c: 709: pwmStop();
	fcall	_pwmStop
	goto	l846
	line	714
	
l3168:	
;main.c: 712: else
;main.c: 713: {
;main.c: 714: if(workTime % 12 < 6)
	movlw	0Ch
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(_workTime+1),w
	movwf	(___lwmod@dividend+1)
	movf	(_workTime),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movlw	0
	subwf	(1+(?___lwmod)),w
	movlw	06h
	skipnz
	subwf	(0+(?___lwmod)),w
	skipnc
	goto	u3301
	goto	u3300
u3301:
	goto	l3166
u3300:
	goto	l3160
	line	725
	
l846:	
	return
	opt stack 0
GLOBAL	__end_of_ctr8
	__end_of_ctr8:
	signat	_ctr8,89
	global	_ctr7

;; *************** function _ctr7 *****************
;; Defined at:
;;		line 681 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwmod
;;		_pwmInit
;;		_pwmStop
;; This function is called by:
;;		_workCtr2
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	681
global __ptext4
__ptext4:	;psect for function _ctr7
psect	text4
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	681
	global	__size_of_ctr7
	__size_of_ctr7	equ	__end_of_ctr7-_ctr7
	
_ctr7:	
;incstack = 0
	opt	stack 3
; Regs used in _ctr7: [wreg+status,2+status,0+pclath+cstack]
	line	683
	
l3142:	
;main.c: 683: maxWorkTime = 450;
	movlw	0C2h
	movwf	(_maxWorkTime)
	movlw	01h
	movwf	((_maxWorkTime))+1
	line	684
;main.c: 684: if(workTime > 390 || workTime % 100 > 90)
	movlw	01h
	subwf	(_workTime+1),w
	movlw	087h
	skipnz
	subwf	(_workTime),w
	skipnc
	goto	u3251
	goto	u3250
u3251:
	goto	l3146
u3250:
	
l3144:	
	movlw	064h
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(_workTime+1),w
	movwf	(___lwmod@dividend+1)
	movf	(_workTime),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movlw	0
	subwf	(1+(?___lwmod)),w
	movlw	05Bh
	skipnz
	subwf	(0+(?___lwmod)),w
	skipc
	goto	u3261
	goto	u3260
u3261:
	goto	l3148
u3260:
	line	686
	
l3146:	
;main.c: 685: {
;main.c: 686: pwmStop();
	fcall	_pwmStop
	line	687
;main.c: 687: }
	goto	l837
	line	688
	
l3148:	
;main.c: 688: else if(motorPwmFlag == 0)
	movf	((_motorPwmFlag)),w
	btfss	status,2
	goto	u3271
	goto	u3270
u3271:
	goto	l837
u3270:
	line	690
	
l3150:	
;main.c: 689: {
;main.c: 690: pwmInit();
	fcall	_pwmInit
	line	691
	
l3152:	
;main.c: 691: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	692
	
l3154:	
;main.c: 692: PWMD3L = 172;
	movlw	low(0ACh)
	movwf	(156)^080h	;volatile
	line	694
	
l837:	
	return
	opt stack 0
GLOBAL	__end_of_ctr7
	__end_of_ctr7:
	signat	_ctr7,89
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
;;		_ctr7
;;		_ctr8
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
	opt	stack 3
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l3122:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l3138
u3210:
	line	14
	
l3124:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l3128
	line	16
	
l3126:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l3128:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3221
	goto	u3220
u3221:
	goto	l3126
u3220:
	line	20
	
l3130:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3235
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3235:
	skipc
	goto	u3231
	goto	u3230
u3231:
	goto	l3134
u3230:
	line	21
	
l3132:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l3134:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l3136:	
	decfsz	(___lwmod@counter),f
	goto	u3241
	goto	u3240
u3241:
	goto	l3130
u3240:
	line	25
	
l3138:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l1313:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 775 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	775
global __ptext6
__ptext6:	;psect for function _workCtr
psect	text6
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	775
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	778
	
l2882:	
;main.c: 778: if(startTime > 0)
	movf	((_startTime)),w
	btfsc	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l2886
u2850:
	line	780
	
l2884:	
;main.c: 779: {
;main.c: 780: startTime--;
	decf	(_startTime),f
	line	782
	
l2886:	
;main.c: 781: }
;main.c: 782: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l2922
u2860:
	line	784
	
l2888:	
;main.c: 783: {
;main.c: 784: if(motorPwmFlag == 0)
	movf	((_motorPwmFlag)),w
	btfss	status,2
	goto	u2871
	goto	u2870
u2871:
	goto	l2892
u2870:
	line	786
	
l2890:	
;main.c: 785: {
;main.c: 786: pwmInit();
	fcall	_pwmInit
	line	789
	
l2892:	
;main.c: 788: }
;main.c: 789: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l2896
u2880:
	line	791
	
l2894:	
;main.c: 790: {
;main.c: 791: maxDuty = 76;
	movlw	low(04Ch)
	movwf	(_maxDuty)
	line	792
;main.c: 792: }
	goto	l2918
	line	793
	
l2896:	
;main.c: 793: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2891
	goto	u2890
u2891:
	goto	l2900
u2890:
	line	794
	
l2898:	
;main.c: 794: maxDuty = 100;
	movlw	low(064h)
	movwf	(_maxDuty)
	goto	l2918
	line	795
	
l2900:	
;main.c: 795: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2901
	goto	u2900
u2901:
	goto	l2904
u2900:
	line	796
	
l2902:	
;main.c: 796: maxDuty = 124;
	movlw	low(07Ch)
	movwf	(_maxDuty)
	goto	l2918
	line	797
	
l2904:	
;main.c: 797: else if(workStep == 4)
		movlw	4
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2911
	goto	u2910
u2911:
	goto	l2908
u2910:
	line	798
	
l2906:	
;main.c: 798: maxDuty = 150;
	movlw	low(096h)
	movwf	(_maxDuty)
	goto	l2918
	line	799
	
l2908:	
;main.c: 799: else if(workStep == 5)
		movlw	5
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l2912
u2920:
	line	800
	
l2910:	
;main.c: 800: maxDuty = 160;
	movlw	low(0A0h)
	movwf	(_maxDuty)
	goto	l2918
	line	801
	
l2912:	
	line	802
	
l2914:	
;main.c: 802: maxDuty = 172;
	movlw	low(0ACh)
	movwf	(_maxDuty)
	line	807
	
l2918:	
;main.c: 806: }
;main.c: 807: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	808
	
l2920:	
;main.c: 808: PWMD3L = maxDuty;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_maxDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	811
;main.c: 811: }
	goto	l883
	line	814
	
l2922:	
;main.c: 812: else
;main.c: 813: {
;main.c: 814: pwmStop();
	fcall	_pwmStop
	line	815
	
l2924:	
;main.c: 815: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	818
	
l883:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_ledCtr

;; *************** function _ledCtr *****************
;; Defined at:
;;		line 365 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lbdiv
;;		___lbmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	365
global __ptext7
__ptext7:	;psect for function _ledCtr
psect	text7
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	365
	global	__size_of_ledCtr
	__size_of_ledCtr	equ	__end_of_ledCtr-_ledCtr
	
_ledCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _ledCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	367
	
l3376:	
;main.c: 367: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u3741
	goto	u3740
u3741:
	goto	l3384
u3740:
	line	369
	
l3378:	
;main.c: 368: {
;main.c: 369: firstTime--;
	decf	(_firstTime),f
	line	370
	
l3380:	
;main.c: 370: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u3751
	goto	u3750
u3751:
	goto	l757
u3750:
	line	372
	
l3382:	
;main.c: 371: {
;main.c: 372: prePwStep = pwStep;
	movf	(_pwStep),w
	movwf	(_prePwStep)
	goto	l757
	line	375
	
l3384:	
;main.c: 375: else if(overWorkTime > 0)
	movf	((_overWorkTime)),w
iorwf	((_overWorkTime+1)),w
	btfsc	status,2
	goto	u3761
	goto	u3760
u3761:
	goto	l3392
u3760:
	line	377
	
l3386:	
;main.c: 376: {
;main.c: 377: overWorkTime--;
	movlw	01h
	subwf	(_overWorkTime),f
	movlw	0
	skipc
	decf	(_overWorkTime+1),f
	subwf	(_overWorkTime+1),f
	line	378
	
l3388:	
;main.c: 378: shiweiNum = numArray[11];
	movlw	low((((_numArray+0Bh)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	379
	
l3390:	
;main.c: 379: geweiNum = numArray[12];
	movlw	low((((_numArray+0Ch)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	380
;main.c: 380: }
	goto	l757
	line	381
	
l3392:	
;main.c: 381: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u3771
	goto	u3770
u3771:
	goto	l3400
u3770:
	line	383
	
l3394:	
;main.c: 382: {
;main.c: 383: showBatTime--;
	decf	(_showBatTime),f
	line	384
	
l3396:	
;main.c: 384: shiweiNum = numArray[prePwStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	385
	
l3398:	
;main.c: 385: geweiNum = numArray[prePwStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_prePwStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	386
;main.c: 386: }
	goto	l757
	line	387
	
l3400:	
;main.c: 387: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3781
	goto	u3780
u3781:
	goto	l3412
u3780:
	line	390
	
l3402:	
;main.c: 388: {
;main.c: 390: if(workStep < 7)
	movlw	low(07h)
	subwf	(_workStep),w
	skipnc
	goto	u3791
	goto	u3790
u3791:
	goto	l3408
u3790:
	line	392
	
l3404:	
;main.c: 391: {
;main.c: 392: shiweiNum = 0x73;
	movlw	low(073h)
	movwf	(_shiweiNum)
	line	393
	
l3406:	
;main.c: 393: geweiNum = numArray[workStep];
	movf	(_workStep),w
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	394
;main.c: 394: }
	goto	l757
	line	397
	
l3408:	
;main.c: 395: else
;main.c: 396: {
;main.c: 397: shiweiNum = 0x71;
	movlw	low(071h)
	movwf	(_shiweiNum)
	line	398
	
l3410:	
;main.c: 398: geweiNum = numArray[workStep - 6];
	movf	(_workStep),w
	addlw	low((((_numArray)-__stringbase)|8000h)+0FAh)
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	goto	l757
	line	402
	
l3412:	
;main.c: 402: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3801
	goto	u3800
u3801:
	goto	l3416
u3800:
	line	404
	
l3414:	
;main.c: 403: {
;main.c: 404: shiweiNum = numArray[prePwStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	405
;main.c: 405: geweiNum = numArray[prePwStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_prePwStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	406
;main.c: 406: }
	goto	l757
	line	409
	
l3416:	
;main.c: 407: else
;main.c: 408: {
;main.c: 409: shiweiNum = 0;
	clrf	(_shiweiNum)
	line	410
;main.c: 410: geweiNum = 0;
	clrf	(_geweiNum)
	line	412
	
l757:	
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
psect	text8,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
	line	4
global __ptext8
__ptext8:	;psect for function ___lbmod
psect	text8
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
	
l3250:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l3252:	
	clrf	(___lbmod@rem)
	line	12
	
l3254:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u3465:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u3465
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l3256:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l3258:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u3471
	goto	u3470
u3471:
	goto	l3262
u3470:
	line	15
	
l3260:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l3262:	
	decfsz	(___lbmod@counter),f
	goto	u3481
	goto	u3480
u3481:
	goto	l3254
u3480:
	line	17
	
l3264:	
	movf	(___lbmod@rem),w
	line	18
	
l1235:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
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
	opt	stack 4
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	movwf	(___lbdiv@dividend)
	line	9
	
l2498:	
	clrf	(___lbdiv@quotient)
	line	10
	
l2500:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u2001
	goto	u2000
u2001:
	goto	l2518
u2000:
	line	11
	
l2502:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2506
	
l1224:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l2504:	
	incf	(___lbdiv@counter),f
	line	12
	
l2506:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u2011
	goto	u2010
u2011:
	goto	l1224
u2010:
	line	16
	
l1226:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l2508:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u2021
	goto	u2020
u2021:
	goto	l2514
u2020:
	line	19
	
l2510:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2512:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2514:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l2516:	
	decfsz	(___lbdiv@counter),f
	goto	u2031
	goto	u2030
u2031:
	goto	l1226
u2030:
	line	25
	
l2518:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1229:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 631 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
;;		_pwmInit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	631
global __ptext10
__ptext10:	;psect for function _keyCtr
psect	text10
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	631
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	633
	
l2824:	
;main.c: 633: char kclick = keyRead(0x04 & (~PORTB));
	comf	(6),w	;volatile
	andlw	04h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	634
	
l2826:	
;main.c: 634: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l2854
u2730:
	line	636
	
l2828:	
;main.c: 635: {
;main.c: 636: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l2846
u2740:
	line	638
	
l2830:	
;main.c: 637: {
;main.c: 638: if(++workStep > 9)
	movlw	low(0Ah)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u2751
	goto	u2750
u2751:
	goto	l2834
u2750:
	line	640
	
l2832:	
;main.c: 639: {
;main.c: 640: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	642
	
l2834:	
;main.c: 641: }
;main.c: 642: if(workStep == 9)
		movlw	9
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l2840
u2760:
	line	644
	
l2836:	
;main.c: 643: {
;main.c: 644: pwmInit();
	fcall	_pwmInit
	line	645
	
l2838:	
;main.c: 645: maxDuty = 70;
	movlw	low(046h)
	movwf	(_maxDuty)
	line	647
	
l2840:	
;main.c: 646: }
;main.c: 647: workTime = 0;
	clrf	(_workTime)
	clrf	(_workTime+1)
	line	648
	
l2842:	
;main.c: 648: if(workStep == 7)
		movlw	7
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2771
	goto	u2770
u2771:
	goto	l821
u2770:
	line	650
	
l2844:	
;main.c: 649: {
;main.c: 650: workTime = 100;
	movlw	064h
	movwf	(_workTime)
	clrf	(_workTime+1)
	line	651
	
l821:	
	line	652
;main.c: 651: }
;main.c: 652: curDuty = 76;
	movlw	low(04Ch)
	movwf	(_curDuty)
	line	653
;main.c: 653: }
	goto	l829
	line	654
	
l2846:	
;main.c: 654: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l2850
u2780:
	line	656
	
l2848:	
;main.c: 655: {
;main.c: 656: showBatTime = 0;
	clrf	(_showBatTime)
	line	657
;main.c: 657: }
	goto	l829
	line	660
	
l2850:	
;main.c: 658: else
;main.c: 659: {
;main.c: 660: showBatTime = 200;
	movlw	low(0C8h)
	movwf	(_showBatTime)
	line	661
	
l2852:	
;main.c: 661: count1s = 0;
	clrf	(_count1s)
	goto	l829
	line	664
	
l2854:	
;main.c: 664: else if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l829
u2790:
	line	666
	
l2856:	
;main.c: 665: {
;main.c: 666: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l827
u2800:
	line	668
	
l2858:	
;main.c: 667: {
;main.c: 668: workStep = 0;
	clrf	(_workStep)
	line	669
;main.c: 669: }
	goto	l829
	line	670
	
l827:	
	line	672
;main.c: 670: else
;main.c: 671: {
;main.c: 672: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	673
	
l2860:	
;main.c: 673: startTime = 30;
	movlw	low(01Eh)
	movwf	(_startTime)
	line	674
	
l2862:	
;main.c: 674: showBatTime = 0;
	clrf	(_showBatTime)
	line	675
	
l2864:	
;main.c: 675: overWorkTime = 0;
	clrf	(_overWorkTime)
	clrf	(_overWorkTime+1)
	line	678
	
l829:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 1069 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
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
;;		_keyCtr
;;		_ctr7
;;		_ctr8
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	1069
global __ptext11
__ptext11:	;psect for function _pwmInit
psect	text11
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	1069
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 3
; Regs used in _pwmInit: [wreg+status,2+status,0]
	line	1071
	
l2240:	
;main.c: 1071: if(motorPwmFlag > 0)
	movf	((_motorPwmFlag)),w
	btfsc	status,2
	goto	u1621
	goto	u1620
u1621:
	goto	l930
u1620:
	goto	l931
	line	1072
	
l930:	
	line	1073
;main.c: 1073: motorPwmFlag = 1;
	clrf	(_motorPwmFlag)
	incf	(_motorPwmFlag),f
	line	1074
	
l2244:	
;main.c: 1074: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	1075
;main.c: 1075: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	1076
	
l2246:	
;main.c: 1076: PWMTL = 200;
	movlw	low(0C8h)
	movwf	(23)	;volatile
	line	1079
	
l2248:	
;main.c: 1079: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	1080
;main.c: 1080: PWMD3L = 80;
	movlw	low(050h)
	movwf	(156)^080h	;volatile
	line	1081
	
l2250:	
;main.c: 1081: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	1083
	
l2252:	
;main.c: 1083: PWMCON0 = 0X48;
	movlw	low(048h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	1084
;main.c: 1084: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	1085
	
l931:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 563 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	563
global __ptext12
__ptext12:	;psect for function _keyRead
psect	text12
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	563
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	565
	
l2326:	
;main.c: 565: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1681
	goto	u1680
u1681:
	goto	l2342
u1680:
	line	567
	
l2328:	
;main.c: 566: {
;main.c: 567: keyCount++;
	incf	(_keyCount),f
	line	568
	
l2330:	
;main.c: 568: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1691
	goto	u1690
u1691:
	goto	l2346
u1690:
	line	570
	
l2332:	
;main.c: 569: {
;main.c: 570: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	line	571
	
l2334:	
;main.c: 571: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1701
	goto	u1700
u1701:
	goto	l2346
u1700:
	line	573
	
l2336:	
;main.c: 572: {
;main.c: 573: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	574
	
l2338:	
;main.c: 574: return 2;
	movlw	low(02h)
	goto	l800
	line	580
	
l2342:	
;main.c: 578: else
;main.c: 579: {
;main.c: 580: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1711
	goto	u1710
u1711:
	goto	l2352
u1710:
	line	582
	
l2344:	
;main.c: 581: {
;main.c: 582: keyCount = 0;
	clrf	(_keyCount)
	line	583
;main.c: 583: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	584
	
l2346:	
;main.c: 584: return 0;
	movlw	low(0)
	goto	l800
	line	586
	
l2352:	
;main.c: 586: else if(keyCount >= 6)
	movlw	low(06h)
	subwf	(_keyCount),w
	skipc
	goto	u1721
	goto	u1720
u1721:
	goto	l2360
u1720:
	line	588
	
l2354:	
;main.c: 587: {
;main.c: 588: keyCount = 0;
	clrf	(_keyCount)
	line	589
	
l2356:	
;main.c: 589: return 1;
	movlw	low(01h)
	goto	l800
	line	591
	
l2360:	
;main.c: 590: }
;main.c: 591: keyCount = 0;
	clrf	(_keyCount)
	goto	l2346
	line	594
	
l800:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 416 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
;;		_chrgPwmInit
;;		_chrgPwmStop
;;		_pwmStop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	416
global __ptext13
__ptext13:	;psect for function _chrgCtr
psect	text13
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	416
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	418
	
l2628:	
;main.c: 418: if(PORTA & 0x20)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(134)^080h,(5)&7	;volatile
	goto	u2311
	goto	u2310
u2311:
	goto	l2746
u2310:
	line	420
	
l2630:	
;main.c: 419: {
;main.c: 420: if(chrgFlag == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2321
	goto	u2320
u2321:
	goto	l2638
u2320:
	line	422
	
l2632:	
;main.c: 421: {
;main.c: 422: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	423
	
l2634:	
;main.c: 423: chrgMaxDuty = 0;
	clrf	(_chrgMaxDuty)
	line	424
	
l2636:	
;main.c: 424: chrgPwmStop();
	fcall	_chrgPwmStop
	line	426
	
l2638:	
;main.c: 425: }
;main.c: 426: workStep = 0;
	clrf	(_workStep)
	line	427
;main.c: 427: pwmStop();
	fcall	_pwmStop
	line	428
	
l2640:	
;main.c: 428: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	429
	
l2642:	
;main.c: 429: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u2331
	goto	u2330
u2331:
	goto	l2650
u2330:
	line	431
	
l2644:	
;main.c: 430: {
;main.c: 431: if(++count50s > 3000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	0Bh
	subwf	((_count50s+1)),w
	movlw	0B9h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l2652
u2340:
	line	433
	
l2646:	
;main.c: 432: {
;main.c: 433: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	434
	
l2648:	
;main.c: 434: prePwStep++;
	incf	(_prePwStep),f
	goto	l2652
	line	439
	
l2650:	
;main.c: 437: else
;main.c: 438: {
;main.c: 439: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	441
	
l2652:	
;main.c: 440: }
;main.c: 441: if(protectFlag)
	movf	((_protectFlag)),w
	btfsc	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l2668
u2350:
	line	443
	
l2654:	
;main.c: 442: {
;main.c: 443: chrgPwmStop();
	fcall	_chrgPwmStop
	line	444
	
l2656:	
;main.c: 444: if(prePwStep < 99 && protectFlag == 1)
	movlw	low(063h)
	subwf	(_prePwStep),w
	skipnc
	goto	u2361
	goto	u2360
u2361:
	goto	l2664
u2360:
	
l2658:	
		decf	((_protectFlag)),w
	btfss	status,2
	goto	u2371
	goto	u2370
u2371:
	goto	l2664
u2370:
	line	446
	
l2660:	
;main.c: 445: {
;main.c: 446: if(++reChrgCount > 250)
	movlw	low(0FBh)
	incf	(_reChrgCount),f
	subwf	((_reChrgCount)),w
	skipc
	goto	u2381
	goto	u2380
u2381:
	goto	l769
u2380:
	line	448
	
l2662:	
;main.c: 447: {
;main.c: 448: reChrgCount = 0;
	clrf	(_reChrgCount)
	line	449
;main.c: 449: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	450
;main.c: 450: protectFlag = 0;
	clrf	(_protectFlag)
	goto	l769
	line	455
	
l2664:	
;main.c: 453: else
;main.c: 454: {
;main.c: 455: reChrgCount = 0;
	clrf	(_reChrgCount)
	goto	l769
	line	459
	
l2668:	
;main.c: 458: }
;main.c: 459: if(batADValue < 1118)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Eh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2391
	goto	u2390
u2391:
	goto	l2674
u2390:
	line	461
	
l2670:	
;main.c: 460: {
;main.c: 461: chrgMode = 0;
	clrf	(_chrgMode)
	line	462
	
l2672:	
;main.c: 462: chrgMaxAD = 15;
	movlw	low(0Fh)
	movwf	(_chrgMaxAD)
	line	463
;main.c: 463: }
	goto	l2692
	line	464
	
l2674:	
;main.c: 464: else if(batADValue < 1530)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	0FAh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2401
	goto	u2400
u2401:
	goto	l2682
u2400:
	line	466
	
l2676:	
;main.c: 465: {
;main.c: 466: chrgMode = 1;
	clrf	(_chrgMode)
	incf	(_chrgMode),f
	line	467
	
l2678:	
;main.c: 467: chrgMaxAD = 77;
	movlw	low(04Dh)
	movwf	(_chrgMaxAD)
	line	468
	
l2680:	
;main.c: 468: lockCount = 0;
	clrf	(_lockCount)
	line	469
;main.c: 469: }
	goto	l2692
	line	470
	
l2682:	
;main.c: 470: else if(count1s == 0)
	movf	((_count1s)),w
	btfss	status,2
	goto	u2411
	goto	u2410
u2411:
	goto	l2692
u2410:
	line	472
	
l2684:	
;main.c: 471: {
;main.c: 472: if(++lockCount > 200)
	movlw	low(0C9h)
	incf	(_lockCount),f
	subwf	((_lockCount)),w
	skipc
	goto	u2421
	goto	u2420
u2421:
	goto	l2690
u2420:
	line	474
	
l2686:	
;main.c: 473: {
;main.c: 474: lockCount = 0;
	clrf	(_lockCount)
	line	475
	
l2688:	
;main.c: 475: chrgMode = 2;
	movlw	low(02h)
	movwf	(_chrgMode)
	line	478
	
l2690:	
;main.c: 476: }
;main.c: 478: chrgMaxAD = 77;
	movlw	low(04Dh)
	movwf	(_chrgMaxAD)
	line	480
	
l2692:	
;main.c: 479: }
;main.c: 480: if(chrgMode == 2 && outADValue < 8)
		movlw	2
	xorwf	((_chrgMode)),w
	btfss	status,2
	goto	u2431
	goto	u2430
u2431:
	goto	l2702
u2430:
	
l2694:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	08h
	skipnz
	subwf	(_outADValue),w
	skipnc
	goto	u2441
	goto	u2440
u2441:
	goto	l2702
u2440:
	line	482
	
l2696:	
;main.c: 481: {
;main.c: 482: if(++fullCount >= 200)
	incf	(_fullCount),f
	skipnz
	incf	(_fullCount+1),f
	movlw	0
	subwf	((_fullCount+1)),w
	movlw	0C8h
	skipnz
	subwf	((_fullCount)),w
	skipc
	goto	u2451
	goto	u2450
u2451:
	goto	l2704
u2450:
	line	484
	
l2698:	
;main.c: 483: {
;main.c: 484: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	485
	
l2700:	
;main.c: 485: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l2704
	line	490
	
l2702:	
;main.c: 488: else
;main.c: 489: {
;main.c: 490: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	492
	
l2704:	
;main.c: 491: }
;main.c: 492: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u2461
	goto	u2460
u2461:
	goto	l2708
u2460:
	line	494
	
l2706:	
;main.c: 493: {
;main.c: 494: chrgPwmStop();
	fcall	_chrgPwmStop
	line	495
;main.c: 495: }
	goto	l769
	line	498
	
l2708:	
;main.c: 496: else
;main.c: 497: {
;main.c: 498: if(batADValue > 1550 || outADValue > (chrgMaxAD + 2))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	0Fh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2471
	goto	u2470
u2471:
	goto	l2712
u2470:
	
l2710:	
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
	goto	u2485
	movf	(_outADValue),w
	subwf	0+(??_chrgCtr+0)+0,w
u2485:
	skipnc
	goto	u2481
	goto	u2480
u2481:
	goto	l2724
u2480:
	line	500
	
l2712:	
;main.c: 499: {
;main.c: 500: if(++subTime > chrgWaitTime)
	incf	(_subTime),f
	movf	((_subTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u2491
	goto	u2490
u2491:
	goto	l2722
u2490:
	line	502
	
l2714:	
;main.c: 501: {
;main.c: 502: if(chrgMaxDuty > 1)
	movlw	low(02h)
	subwf	(_chrgMaxDuty),w
	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l2718
u2500:
	line	504
	
l2716:	
;main.c: 503: {
;main.c: 504: chrgMaxDuty--;
	decf	(_chrgMaxDuty),f
	line	506
	
l2718:	
;main.c: 505: }
;main.c: 506: subTime = 0;
	clrf	(_subTime)
	line	507
	
l2720:	
;main.c: 507: chrgWaitTime = 250;
	movlw	low(0FAh)
	movwf	(_chrgWaitTime)
	line	509
	
l2722:	
;main.c: 508: }
;main.c: 509: addTime = 0;
	clrf	(_addTime)
	line	510
;main.c: 510: }
	goto	l2738
	line	511
	
l2724:	
;main.c: 511: else if(batADValue < 1550 && outADValue < (chrgMaxAD - 4))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	0Eh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2511
	goto	u2510
u2511:
	goto	l2738
u2510:
	
l2726:	
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
	goto	u2525
	movf	0+(??_chrgCtr+0)+0,w
	subwf	(_outADValue),w
u2525:
	skipnc
	goto	u2521
	goto	u2520
u2521:
	goto	l2738
u2520:
	line	513
	
l2728:	
;main.c: 512: {
;main.c: 513: if(++addTime > chrgWaitTime)
	incf	(_addTime),f
	movf	((_addTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u2531
	goto	u2530
u2531:
	goto	l2736
u2530:
	line	515
	
l2730:	
;main.c: 514: {
;main.c: 515: addTime = 0;
	clrf	(_addTime)
	line	516
	
l2732:	
;main.c: 516: if(chrgMaxDuty < 75)
	movlw	low(04Bh)
	subwf	(_chrgMaxDuty),w
	skipnc
	goto	u2541
	goto	u2540
u2541:
	goto	l2736
u2540:
	line	518
	
l2734:	
;main.c: 517: {
;main.c: 518: chrgMaxDuty++;
	incf	(_chrgMaxDuty),f
	line	521
	
l2736:	
;main.c: 519: }
;main.c: 520: }
;main.c: 521: subTime = 0;
	clrf	(_subTime)
	line	525
	
l2738:	
;main.c: 522: }
;main.c: 525: if(chrgPwmFlag == 0)
	movf	((_chrgPwmFlag)),w
	btfss	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l2742
u2550:
	line	527
	
l2740:	
;main.c: 526: {
;main.c: 527: chrgPwmInit();
	fcall	_chrgPwmInit
	line	529
	
l2742:	
;main.c: 528: }
;main.c: 529: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	530
	
l2744:	
;main.c: 530: PWMD2L = chrgMaxDuty;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_chrgMaxDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	goto	l769
	line	536
	
l2746:	
;main.c: 536: chrgFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgFlag)
	line	537
;main.c: 537: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	538
;main.c: 538: protectFlag = 0;
	clrf	(_protectFlag)
	line	539
;main.c: 539: chrgMode = 0;
	clrf	(_chrgMode)
	line	540
;main.c: 540: chrgMaxAD = 0;
	clrf	(_chrgMaxAD)
	line	541
;main.c: 541: chrgMaxDuty = 0;
	clrf	(_chrgMaxDuty)
	line	542
;main.c: 543: lockLedStep = 0;
	clrf	(_lockCount)
	line	544
	
l2748:	
;main.c: 544: chrgWaitTime = 20;
	movlw	low(014h)
	movwf	(_chrgWaitTime)
	line	545
	
l2750:	
;main.c: 545: chrgPwmStop();
	fcall	_chrgPwmStop
	line	546
	
l2752:	
;main.c: 546: if(prePwStep > 0 && prePwStep > pwStep)
	movf	((_prePwStep)),w
	btfsc	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l2762
u2560:
	
l2754:	
	movf	(_prePwStep),w
	subwf	(_pwStep),w
	skipnc
	goto	u2571
	goto	u2570
u2571:
	goto	l2762
u2570:
	line	548
	
l2756:	
;main.c: 547: {
;main.c: 548: if(++count50s > 3000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	0Bh
	subwf	((_count50s+1)),w
	movlw	0B9h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l769
u2580:
	line	550
	
l2758:	
;main.c: 549: {
;main.c: 550: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	551
	
l2760:	
;main.c: 551: prePwStep--;
	decf	(_prePwStep),f
	goto	l769
	line	556
	
l2762:	
;main.c: 554: else
;main.c: 555: {
;main.c: 556: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	559
	
l769:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 1087 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
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
;;		_ctr7
;;		_ctr8
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	1087
global __ptext14
__ptext14:	;psect for function _pwmStop
psect	text14
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	1087
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 3
; Regs used in _pwmStop: [wreg+status,2+status,0]
	line	1089
	
l2232:	
;main.c: 1089: if(motorPwmFlag)
	movf	((_motorPwmFlag)),w
	btfsc	status,2
	goto	u1611
	goto	u1610
u1611:
	goto	l935
u1610:
	line	1091
	
l2234:	
;main.c: 1090: {
;main.c: 1091: motorPwmFlag = 0;
	clrf	(_motorPwmFlag)
	line	1092
	
l2236:	
;main.c: 1092: PWMCON0 &= 0XF7;
	bcf	(21)+(3/8),(3)&7	;volatile
	line	1093
	
l2238:	
;main.c: 1093: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	1095
	
l935:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_chrgPwmStop

;; *************** function _chrgPwmStop *****************
;; Defined at:
;;		line 1059 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
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
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	1059
global __ptext15
__ptext15:	;psect for function _chrgPwmStop
psect	text15
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	1059
	global	__size_of_chrgPwmStop
	__size_of_chrgPwmStop	equ	__end_of_chrgPwmStop-_chrgPwmStop
	
_chrgPwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmStop: [wreg+status,2+status,0]
	line	1061
	
l2306:	
;main.c: 1061: if(chrgPwmFlag)
	movf	((_chrgPwmFlag)),w
	btfsc	status,2
	goto	u1671
	goto	u1670
u1671:
	goto	l927
u1670:
	line	1063
	
l2308:	
;main.c: 1062: {
;main.c: 1063: chrgPwmFlag = 0;
	clrf	(_chrgPwmFlag)
	line	1064
	
l2310:	
;main.c: 1064: PWMCON0 &= 0xFB;
	bcf	(21)+(2/8),(2)&7	;volatile
	line	1065
	
l2312:	
;main.c: 1065: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	1067
	
l927:	
	return
	opt stack 0
GLOBAL	__end_of_chrgPwmStop
	__end_of_chrgPwmStop:
	signat	_chrgPwmStop,89
	global	_chrgPwmInit

;; *************** function _chrgPwmInit *****************
;; Defined at:
;;		line 1040 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	1040
global __ptext16
__ptext16:	;psect for function _chrgPwmInit
psect	text16
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	1040
	global	__size_of_chrgPwmInit
	__size_of_chrgPwmInit	equ	__end_of_chrgPwmInit-_chrgPwmInit
	
_chrgPwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmInit: [wreg+status,2]
	line	1042
	
l2314:	
;main.c: 1042: chrgPwmFlag = 1;
	clrf	(_chrgPwmFlag)
	incf	(_chrgPwmFlag),f
	line	1043
	
l2316:	
;main.c: 1043: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	1045
;main.c: 1045: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	1046
	
l2318:	
;main.c: 1046: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	1050
	
l2320:	
;main.c: 1050: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	1051
;main.c: 1051: PWMD2L = 10;
	movlw	low(0Ah)
	movwf	(155)^080h	;volatile
	line	1052
	
l2322:	
;main.c: 1052: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	1054
	
l2324:	
;main.c: 1054: PWMCON0 = 0X04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	1055
;main.c: 1055: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	1056
	
l923:	
	return
	opt stack 0
GLOBAL	__end_of_chrgPwmInit
	__end_of_chrgPwmInit:
	signat	_chrgPwmInit,89
	global	_checkOutA

;; *************** function _checkOutA *****************
;; Defined at:
;;		line 820 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ADC_Sample
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	820
global __ptext17
__ptext17:	;psect for function _checkOutA
psect	text17
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	820
	global	__size_of_checkOutA
	__size_of_checkOutA	equ	__end_of_checkOutA-_checkOutA
	
_checkOutA:	
;incstack = 0
	opt	stack 4
; Regs used in _checkOutA: [wreg+status,2+status,0+pclath+cstack]
	line	822
	
l3268:	
;main.c: 822: test_adc = ADC_Sample(0, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	823
	
l3270:	
;main.c: 823: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3491
	goto	u3490
u3491:
	goto	l3296
u3490:
	line	825
	
l3272:	
;main.c: 824: {
;main.c: 825: if(chrgFlag && adresult > 210)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3501
	goto	u3500
u3501:
	goto	l3282
u3500:
	
l3274:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	0D3h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u3511
	goto	u3510
u3511:
	goto	l3282
u3510:
	line	827
	
l3276:	
;main.c: 826: {
;main.c: 827: if(++overChrgTime > 10)
	movlw	low(0Bh)
	incf	(_overChrgTime),f
	subwf	((_overChrgTime)),w
	skipc
	goto	u3521
	goto	u3520
u3521:
	goto	l3284
u3520:
	line	829
	
l3278:	
;main.c: 828: {
;main.c: 829: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	830
	
l3280:	
;main.c: 830: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l3284
	line	836
	
l3282:	
;main.c: 834: else
;main.c: 835: {
;main.c: 836: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	838
	
l3284:	
;main.c: 837: }
;main.c: 838: outADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_outADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_outADValue)
	line	840
	
l3286:	
;main.c: 840: if(workStep && (outADValue > 600))
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l3294
u3530:
	
l3288:	
	movlw	02h
	subwf	(_outADValue+1),w
	movlw	059h
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3541
	goto	u3540
u3541:
	goto	l3294
u3540:
	line	842
	
l3290:	
;main.c: 841: {
;main.c: 842: if(++workOverOutTime > 50)
	movlw	low(033h)
	incf	(_workOverOutTime),f
	subwf	((_workOverOutTime)),w
	skipc
	goto	u3551
	goto	u3550
u3551:
	goto	l894
u3550:
	line	844
	
l3292:	
;main.c: 843: {
;main.c: 844: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	845
;main.c: 845: workStep = 0;
	clrf	(_workStep)
	goto	l894
	line	850
	
l3294:	
;main.c: 848: else
;main.c: 849: {
;main.c: 850: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	goto	l894
	line	857
	
l3296:	
;main.c: 855: else
;main.c: 856: {
;main.c: 857: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	858
;main.c: 858: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	859
	
l3298:	
;main.c: 859: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkOutA+0)+0),f
	u3967:
decfsz	(??_checkOutA+0)+0,f
	goto	u3967
opt asmopt_pop

	line	861
	
l894:	
	return
	opt stack 0
GLOBAL	__end_of_checkOutA
	__end_of_checkOutA:
	signat	_checkOutA,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 863 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	863
global __ptext18
__ptext18:	;psect for function _checkBatAD
psect	text18
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	863
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	865
	
l3300:	
;main.c: 865: test_adc = ADC_Sample(2, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(02h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	866
	
l3302:	
;main.c: 866: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3561
	goto	u3560
u3561:
	goto	l3332
u3560:
	line	868
	
l3304:	
;main.c: 867: {
;main.c: 868: batADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_batADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_batADValue)
	line	869
;main.c: 869: if(batADValue < 1117)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Dh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3571
	goto	u3570
u3571:
	goto	l3314
u3570:
	line	871
	
l3306:	
;main.c: 870: {
;main.c: 871: pwStep = 0;
	clrf	(_pwStep)
	line	872
	
l3308:	
;main.c: 872: if(++count8s > 800)
	incf	(_count8s),f
	skipnz
	incf	(_count8s+1),f
	movlw	03h
	subwf	((_count8s+1)),w
	movlw	021h
	skipnz
	subwf	((_count8s)),w
	skipc
	goto	u3581
	goto	u3580
u3581:
	goto	l3326
u3580:
	line	874
	
l3310:	
;main.c: 873: {
;main.c: 874: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	875
	
l3312:	
;main.c: 875: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	876
;main.c: 876: prePwStep = 0;
	clrf	(_prePwStep)
	line	877
;main.c: 877: workStep = 0;
	clrf	(_workStep)
	goto	l3326
	line	882
	
l3314:	
;main.c: 880: else
;main.c: 881: {
;main.c: 882: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	883
	
l3316:	
;main.c: 883: if(batADValue >= 1340)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	03Ch
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3591
	goto	u3590
u3591:
	goto	l3320
u3590:
	line	885
	
l3318:	
;main.c: 884: {
;main.c: 885: pwStep = ((batADValue - 1340) /2) + 13;
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
	line	886
;main.c: 886: }
	goto	l3322
	line	889
	
l3320:	
;main.c: 887: else
;main.c: 888: {
;main.c: 889: pwStep = (batADValue - 1117) / 16;
	movf	(_batADValue),w
	addlw	low(0FBA3h)
	movwf	(??_checkBatAD+0)+0
	movf	(_batADValue+1),w
	skipnc
	addlw	1
	addlw	high(0FBA3h)
	movwf	1+(??_checkBatAD+0)+0
	movlw	04h
u3605:
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	addlw	-1
	skipz
	goto	u3605
	movf	0+(??_checkBatAD+0)+0,w
	movwf	(_pwStep)
	line	891
	
l3322:	
;main.c: 890: }
;main.c: 891: if(pwStep > 99)
	movlw	low(064h)
	subwf	(_pwStep),w
	skipc
	goto	u3611
	goto	u3610
u3611:
	goto	l3326
u3610:
	line	893
	
l3324:	
;main.c: 892: {
;main.c: 893: pwStep = 99;
	movlw	low(063h)
	movwf	(_pwStep)
	line	896
	
l3326:	
;main.c: 894: }
;main.c: 895: }
;main.c: 896: if(chrgFlag && batADValue > 1861)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3621
	goto	u3620
u3621:
	goto	l3336
u3620:
	
l3328:	
	movlw	07h
	subwf	(_batADValue+1),w
	movlw	046h
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3631
	goto	u3630
u3631:
	goto	l3336
u3630:
	line	898
	
l3330:	
;main.c: 897: {
;main.c: 898: protectFlag = 1;
	clrf	(_protectFlag)
	incf	(_protectFlag),f
	goto	l3336
	line	903
	
l3332:	
;main.c: 901: else
;main.c: 902: {
;main.c: 903: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	904
;main.c: 904: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	905
	
l3334:	
;main.c: 905: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u3977:
decfsz	(??_checkBatAD+0)+0,f
	goto	u3977
opt asmopt_pop

	line	908
	
l3336:	
;main.c: 906: }
;main.c: 908: test_adc = ADC_Sample(1, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(01h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	909
	
l3338:	
;main.c: 909: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3641
	goto	u3640
u3641:
	goto	l3356
u3640:
	line	911
	
l3340:	
;main.c: 910: {
;main.c: 911: if(chrgFlag && adresult > 100)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3651
	goto	u3650
u3651:
	goto	l914
u3650:
	
l3342:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	065h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u3661
	goto	u3660
u3661:
	goto	l914
u3660:
	line	914
	
l3344:	
;main.c: 912: {
;main.c: 914: if(adresult > 810 || (batADValue - adresult) > 810)
	movlw	03h
	subwf	(_adresult+1),w	;volatile
	movlw	02Bh
	skipnz
	subwf	(_adresult),w	;volatile
	skipnc
	goto	u3671
	goto	u3670
u3671:
	goto	l3348
u3670:
	
l3346:	
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
	goto	u3681
	goto	u3680
u3681:
	goto	l3354
u3680:
	line	917
	
l3348:	
;main.c: 915: {
;main.c: 917: if(++countHalfFull > 250)
	movlw	low(0FBh)
	incf	(_countHalfFull),f
	subwf	((_countHalfFull)),w
	skipc
	goto	u3691
	goto	u3690
u3691:
	goto	l907
u3690:
	line	919
	
l3350:	
;main.c: 918: {
;main.c: 919: countHalfFull = 0;
	clrf	(_countHalfFull)
	line	920
	
l3352:	
;main.c: 920: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l914
	line	925
	
l3354:	
;main.c: 923: else
;main.c: 924: {
;main.c: 925: countHalfFull = 0;
	clrf	(_countHalfFull)
	goto	l914
	line	927
	
l907:	
	line	928
;main.c: 926: }
;main.c: 927: }
;main.c: 928: }
	goto	l914
	line	931
	
l3356:	
;main.c: 929: else
;main.c: 930: {
;main.c: 931: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	932
;main.c: 932: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	933
	
l3358:	
;main.c: 933: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u3987:
decfsz	(??_checkBatAD+0)+0,f
	goto	u3987
opt asmopt_pop

	line	936
	
l914:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 1182 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	1182
global __ptext19
__ptext19:	;psect for function _ADC_Sample
psect	text19
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	1182
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	1184
	
l3178:	
;main.c: 1184: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1185
	
l3180:	
;main.c: 1185: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1186
;main.c: 1186: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	1188
	
l3182:	
;main.c: 1188: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u3311
	goto	u3310
u3311:
	goto	l3188
u3310:
	
l3184:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u3321
	goto	u3320
u3321:
	goto	l3188
u3320:
	line	1191
	
l3186:	
;main.c: 1189: {
;main.c: 1191: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1192
;main.c: 1192: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_ADC_Sample+0)+0),f
	u3997:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u3997
	nop2
opt asmopt_pop

	line	1193
;main.c: 1193: }
	goto	l3190
	line	1195
	
l3188:	
;main.c: 1194: else
;main.c: 1195: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1197
	
l3190:	
;main.c: 1197: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u3331
	goto	u3330
u3331:
	goto	l3196
u3330:
	line	1199
	
l3192:	
;main.c: 1198: {
;main.c: 1199: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	1200
	
l3194:	
;main.c: 1200: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	1202
	
l3196:	
	line	1203
	
l3198:	
;main.c: 1203: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	1205
	
l3204:	
;main.c: 1204: {
;main.c: 1205: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u3345:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u3345
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	1206
# 1206 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1207
# 1207 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1208
# 1208 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1209
# 1209 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
psect	text19
	line	1210
	
l3206:	
;main.c: 1210: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	1212
	
l3208:	
;main.c: 1212: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	1213
;main.c: 1213: while (GODONE)
	goto	l949
	
l950:	
	line	1215
;main.c: 1214: {
;main.c: 1215: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	1217
;main.c: 1217: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u3351
	goto	u3350
u3351:
	goto	l949
u3350:
	line	1218
	
l3210:	
;main.c: 1218: return 0;
	movlw	low(0)
	goto	l952
	line	1219
	
l949:	
	line	1213
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u3361
	goto	u3360
u3361:
	goto	l950
u3360:
	line	1221
	
l3214:	
;main.c: 1219: }
;main.c: 1221: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l3216:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	1223
	
l3218:	
;main.c: 1223: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l3222
u3370:
	line	1225
	
l3220:	
;main.c: 1224: {
;main.c: 1225: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	1226
;main.c: 1226: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1227
;main.c: 1227: }
	goto	l955
	line	1228
	
l3222:	
;main.c: 1228: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u3385
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u3385:
	skipnc
	goto	u3381
	goto	u3380
u3381:
	goto	l3226
u3380:
	line	1229
	
l3224:	
;main.c: 1229: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l955
	line	1230
	
l3226:	
;main.c: 1230: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u3395
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u3395:
	skipnc
	goto	u3391
	goto	u3390
u3391:
	goto	l955
u3390:
	line	1231
	
l3228:	
;main.c: 1231: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1233
	
l955:	
;main.c: 1233: adsum += ad_temp;
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
	goto	u3401
	addwf	(ADC_Sample@adsum+1),f	;volatile
u3401:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3402
	addwf	(ADC_Sample@adsum+2),f	;volatile
u3402:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3403
	addwf	(ADC_Sample@adsum+3),f	;volatile
u3403:

	line	1203
	
l3230:	
	incf	(ADC_Sample@i),f
	
l3232:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u3411
	goto	u3410
u3411:
	goto	l3204
u3410:
	line	1235
	
l3234:	
;main.c: 1234: }
;main.c: 1235: adsum -= admax;
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

	line	1236
;main.c: 1236: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u3435
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u3435
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u3435
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u3435:
	skipc
	goto	u3431
	goto	u3430
u3431:
	goto	l959
u3430:
	line	1237
	
l3236:	
;main.c: 1237: adsum -= admin;
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
	goto	u3445
	goto	u3446
u3445:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3446:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3447
	goto	u3448
u3447:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3448:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3449
	goto	u3440
u3449:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3440:

	goto	l3238
	line	1238
	
l959:	
	line	1239
;main.c: 1238: else
;main.c: 1239: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1241
	
l3238:	
;main.c: 1241: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u3455:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u3450:
	addlw	-1
	skipz
	goto	u3455
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	1243
	
l3240:	
;main.c: 1243: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1244
	
l3242:	
;main.c: 1244: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	1245
	
l3244:	
;main.c: 1245: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1246
	
l3246:	
;main.c: 1246: return 0xA5;
	movlw	low(0A5h)
	line	1248
	
l952:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 1105 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	1105
global __ptext20
__ptext20:	;psect for function _Sleep_Mode
psect	text20
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	1105
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 4
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	1107
	
l2968:	
;main.c: 1107: INTCON = 0;
	clrf	(11)	;volatile
	line	1109
;main.c: 1109: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	1111
;main.c: 1111: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	1112
	
l2970:	
;main.c: 1112: TRISA = 0x27;
	movlw	low(027h)
	movwf	(133)^080h	;volatile
	line	1113
	
l2972:	
;main.c: 1113: TRISB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	1115
;main.c: 1115: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	1116
;main.c: 1116: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	1117
	
l2974:	
;main.c: 1117: WPUB = 0x04;
	movlw	low(04h)
	movwf	(8)	;volatile
	line	1119
	
l2976:	
;main.c: 1119: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	1120
	
l2978:	
;main.c: 1120: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	1122
	
l2980:	
;main.c: 1122: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	1124
;main.c: 1124: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	1126
;main.c: 1126: IOCA = 0x20;
	movlw	low(020h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(137)^080h	;volatile
	line	1127
;main.c: 1127: IOCB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	1129
	
l2982:	
;main.c: 1129: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	1130
	
l2984:	
;main.c: 1130: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	1131
	
l2986:	
;main.c: 1131: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	1132
	
l2988:	
;main.c: 1132: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	1134
	
l2990:	
;main.c: 1134: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	1135
	
l2992:	
;main.c: 1135: PIR1 = 0;
	clrf	(13)	;volatile
	line	1136
	
l2994:	
;main.c: 1136: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	1138
	
l2996:	
;main.c: 1138: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	1139
	
l2998:	
;main.c: 1139: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	1140
	
l3000:	
;main.c: 1140: PORTB;
	movf	(6),w	;volatile
	line	1141
	
l3002:	
;main.c: 1141: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	1142
# 1142 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
clrwdt ;# 
	line	1144
# 1144 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
sleep ;# 
	line	1146
# 1146 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1147
# 1147 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
clrwdt ;# 
	line	1148
# 1148 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1149
# 1149 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1150
# 1150 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1151
# 1151 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1152
# 1152 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
psect	text20
	line	1153
	
l3004:	
;main.c: 1153: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u3001
	goto	u3000
u3001:
	goto	l938
u3000:
	
l3006:	
	bcf	(107/8),(107)&7	;volatile
	
l938:	
	line	1154
;main.c: 1154: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u3011
	goto	u3010
u3011:
	goto	l939
u3010:
	
l3008:	
	bcf	(88/8),(88)&7	;volatile
	
l939:	
	line	1155
;main.c: 1155: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u3021
	goto	u3020
u3021:
	goto	l3012
u3020:
	
l3010:	
	bcf	(105/8),(105)&7	;volatile
	line	1156
	
l3012:	
;main.c: 1156: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	1157
;main.c: 1157: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	1158
	
l3014:	
;main.c: 1158: Init_System();
	fcall	_Init_System
	line	1159
	
l3016:	
;main.c: 1159: AD_Init();
	fcall	_AD_Init
	line	1160
	
l941:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 947 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	947
global __ptext21
__ptext21:	;psect for function _Init_System
psect	text21
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	947
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	949
	
l2274:	
# 949 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	950
# 950 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
clrwdt ;# 
psect	text21
	line	951
	
l2276:	
;main.c: 951: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	952
# 952 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
clrwdt ;# 
psect	text21
	line	953
	
l2278:	
;main.c: 953: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	955
	
l2280:	
;main.c: 955: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	956
	
l2282:	
;main.c: 956: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	957
	
l2284:	
;main.c: 957: WPUB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	959
	
l2286:	
;main.c: 959: TRISA = 0x27;
	movlw	low(027h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	960
	
l2288:	
;main.c: 960: TRISB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	962
;main.c: 962: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	963
;main.c: 963: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	967
	
l2290:	
;main.c: 967: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	968
	
l2292:	
;main.c: 968: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	969
	
l2294:	
;main.c: 969: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	971
	
l2296:	
;main.c: 971: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	972
	
l2298:	
;main.c: 972: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	973
	
l917:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 984 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	984
global __ptext22
__ptext22:	;psect for function _AD_Init
psect	text22
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	984
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _AD_Init: [wreg+status,2]
	line	1017
	
l2300:	
;main.c: 1017: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	1034
	
l2302:	
;main.c: 1034: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	1035
	
l2304:	
;main.c: 1035: ANSEL0 = 0X07;
	movlw	low(07h)
	movwf	(147)^080h	;volatile
	line	1036
;main.c: 1036: ANSEL1 = 0x00;
	clrf	(148)^080h	;volatile
	line	1037
	
l920:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 130 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	line	130
global __ptext23
__ptext23:	;psect for function _Isr_Timer
psect	text23
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	130
	global	__size_of_Isr_Timer
	__size_of_Isr_Timer	equ	__end_of_Isr_Timer-_Isr_Timer
	
_Isr_Timer:	
;incstack = 0
	opt	stack 3
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
psect	text23
	line	132
	
i1l3018:	
;main.c: 132: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u303_21
	goto	u303_20
u303_21:
	goto	i1l686
u303_20:
	line	134
	
i1l3020:	
;main.c: 133: {
;main.c: 134: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	135
	
i1l3022:	
;main.c: 135: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u304_21
	goto	u304_20
u304_21:
	goto	i1l3032
u304_20:
	line	137
	
i1l3024:	
;main.c: 136: {
;main.c: 137: intCount = 0;
	clrf	(_intCount)
	line	138
	
i1l3026:	
;main.c: 138: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	139
	
i1l3028:	
;main.c: 139: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u305_21
	goto	u305_20
u305_21:
	goto	i1l3032
u305_20:
	line	141
	
i1l3030:	
;main.c: 140: {
;main.c: 141: count1s = 0;
	clrf	(_count1s)
	line	144
	
i1l3032:	
;main.c: 142: }
;main.c: 143: }
;main.c: 144: ledShow();
	fcall	_ledShow
	line	145
	
i1l3034:	
;main.c: 145: intCount10++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_intCount10),f
	line	148
	
i1l686:	
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
;;		line 206 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	206
global __ptext24
__ptext24:	;psect for function _ledShow
psect	text24
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	206
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 3
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	208
	
i1l2540:	
;main.c: 208: if(++ledCntTime > 5)
	movlw	low(06h)
	incf	(_ledCntTime),f
	subwf	((_ledCntTime)),w
	skipc
	goto	u207_21
	goto	u207_20
u207_21:
	goto	i1l741
u207_20:
	line	210
	
i1l2542:	
;main.c: 209: {
;main.c: 210: ledCntTime = 0;
	clrf	(_ledCntTime)
	line	211
	
i1l2544:	
;main.c: 211: if(++ledCnt > 14)
	movlw	low(0Fh)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u208_21
	goto	u208_20
u208_21:
	goto	i1l2548
u208_20:
	line	213
	
i1l2546:	
;main.c: 212: {
;main.c: 213: ledCnt = 0;
	clrf	(_ledCnt)
	line	215
	
i1l2548:	
;main.c: 214: }
;main.c: 215: PORTA &= 0xE7;
	movlw	low(0E7h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	216
	
i1l2550:	
;main.c: 216: PORTB &= 0xDC;
	movlw	low(0DCh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(6),f	;volatile
	line	217
	
i1l2552:	
;main.c: 217: TRISA |= 0x18;
	movlw	low(018h)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	218
	
i1l2554:	
;main.c: 218: TRISB |= 0x23;
	movlw	low(023h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(5),f	;volatile
	line	219
;main.c: 219: switch(ledCnt)
	goto	i1l2590
	line	221
;main.c: 220: {
;main.c: 221: case 1:
	
i1l709:	
	line	222
;main.c: 222: if(shiweiNum & 0x01)
	btfss	(_shiweiNum),(0)&7
	goto	u209_21
	goto	u209_20
u209_21:
	goto	i1l741
u209_20:
	line	224
	
i1l2556:	
;main.c: 223: {
;main.c: 224: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	225
;main.c: 225: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	226
;main.c: 226: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	227
;main.c: 227: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	goto	i1l741
	line	230
;main.c: 230: case 2:
	
i1l712:	
	line	231
;main.c: 231: if(shiweiNum & 0x02)
	btfss	(_shiweiNum),(1)&7
	goto	u210_21
	goto	u210_20
u210_21:
	goto	i1l741
u210_20:
	line	233
	
i1l2558:	
;main.c: 232: {
;main.c: 233: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	234
;main.c: 234: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	235
;main.c: 235: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	236
;main.c: 236: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	goto	i1l741
	line	239
;main.c: 239: case 3:
	
i1l714:	
	line	240
;main.c: 240: if(shiweiNum & 0x04)
	btfss	(_shiweiNum),(2)&7
	goto	u211_21
	goto	u211_20
u211_21:
	goto	i1l741
u211_20:
	line	242
	
i1l2560:	
;main.c: 241: {
;main.c: 242: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	243
;main.c: 243: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	244
;main.c: 244: RB5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	line	245
;main.c: 245: RA3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l741
	line	248
;main.c: 248: case 4:
	
i1l716:	
	line	249
;main.c: 249: if(shiweiNum & 0x08)
	btfss	(_shiweiNum),(3)&7
	goto	u212_21
	goto	u212_20
u212_21:
	goto	i1l741
u212_20:
	line	251
	
i1l2562:	
;main.c: 250: {
;main.c: 251: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	252
;main.c: 252: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	253
;main.c: 253: RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	254
;main.c: 254: RA3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l741
	line	257
;main.c: 257: case 5:
	
i1l718:	
	line	258
;main.c: 258: if(shiweiNum & 0x10)
	btfss	(_shiweiNum),(4)&7
	goto	u213_21
	goto	u213_20
u213_21:
	goto	i1l741
u213_20:
	line	260
	
i1l2564:	
;main.c: 259: {
;main.c: 260: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	261
;main.c: 261: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	262
;main.c: 262: RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	263
;main.c: 263: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l741
	line	266
;main.c: 266: case 6:
	
i1l720:	
	line	267
;main.c: 267: if(shiweiNum & 0x20)
	btfss	(_shiweiNum),(5)&7
	goto	u214_21
	goto	u214_20
u214_21:
	goto	i1l741
u214_20:
	line	269
	
i1l2566:	
;main.c: 268: {
;main.c: 269: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	270
;main.c: 270: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	271
;main.c: 271: RB5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	line	272
;main.c: 272: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l741
	line	275
;main.c: 275: case 7:
	
i1l722:	
	line	276
;main.c: 276: if(shiweiNum & 0x40)
	btfss	(_shiweiNum),(6)&7
	goto	u215_21
	goto	u215_20
u215_21:
	goto	i1l741
u215_20:
	line	278
	
i1l2568:	
;main.c: 277: {
;main.c: 278: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	279
;main.c: 279: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	280
;main.c: 280: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	281
;main.c: 281: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l741
	line	284
;main.c: 284: case 8:
	
i1l724:	
	line	285
;main.c: 285: if(geweiNum & 0x01)
	btfss	(_geweiNum),(0)&7
	goto	u216_21
	goto	u216_20
u216_21:
	goto	i1l741
u216_20:
	line	287
	
i1l2570:	
;main.c: 286: {
;main.c: 287: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	288
;main.c: 288: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	289
;main.c: 289: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	290
;main.c: 290: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	goto	i1l741
	line	293
;main.c: 293: case 9:
	
i1l726:	
	line	294
;main.c: 294: if(geweiNum & 0x02)
	btfss	(_geweiNum),(1)&7
	goto	u217_21
	goto	u217_20
u217_21:
	goto	i1l741
u217_20:
	line	296
	
i1l2572:	
;main.c: 295: {
;main.c: 296: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	297
;main.c: 297: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	298
;main.c: 298: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	299
;main.c: 299: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	goto	i1l741
	line	302
;main.c: 302: case 10:
	
i1l728:	
	line	303
;main.c: 303: if(geweiNum & 0x04)
	btfss	(_geweiNum),(2)&7
	goto	u218_21
	goto	u218_20
u218_21:
	goto	i1l741
u218_20:
	line	305
	
i1l2574:	
;main.c: 304: {
;main.c: 305: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	306
;main.c: 306: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	307
;main.c: 307: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	308
;main.c: 308: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	goto	i1l741
	line	311
;main.c: 311: case 11:
	
i1l730:	
	line	312
;main.c: 312: if(geweiNum & 0x08)
	btfss	(_geweiNum),(3)&7
	goto	u219_21
	goto	u219_20
u219_21:
	goto	i1l741
u219_20:
	line	314
	
i1l2576:	
;main.c: 313: {
;main.c: 314: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	315
;main.c: 315: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	316
;main.c: 316: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	317
;main.c: 317: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	goto	i1l741
	line	320
;main.c: 320: case 12:
	
i1l732:	
	line	321
;main.c: 321: if(geweiNum & 0x10)
	btfss	(_geweiNum),(4)&7
	goto	u220_21
	goto	u220_20
u220_21:
	goto	i1l741
u220_20:
	line	323
	
i1l2578:	
;main.c: 322: {
;main.c: 323: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	324
;main.c: 324: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	325
;main.c: 325: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	326
;main.c: 326: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	goto	i1l741
	line	329
;main.c: 329: case 13:
	
i1l734:	
	line	330
;main.c: 330: if(geweiNum & 0x20)
	btfss	(_geweiNum),(5)&7
	goto	u221_21
	goto	u221_20
u221_21:
	goto	i1l741
u221_20:
	line	332
	
i1l2580:	
;main.c: 331: {
;main.c: 332: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	333
;main.c: 333: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	334
;main.c: 334: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(49/8),(49)&7	;volatile
	line	335
;main.c: 335: RA3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l741
	line	338
;main.c: 338: case 0:
	
i1l736:	
	line	339
;main.c: 339: if(geweiNum & 0x40)
	btfss	(_geweiNum),(6)&7
	goto	u222_21
	goto	u222_20
u222_21:
	goto	i1l741
u222_20:
	line	341
	
i1l2582:	
;main.c: 340: {
;main.c: 341: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	342
;main.c: 342: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	343
;main.c: 343: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(49/8),(49)&7	;volatile
	line	344
;main.c: 344: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l741
	line	348
	
i1l2584:	
;main.c: 348: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u223_21
	goto	u223_20
u223_21:
	goto	i1l741
u223_20:
	line	350
	
i1l2586:	
;main.c: 349: {
;main.c: 350: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	351
;main.c: 351: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	352
;main.c: 352: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	353
;main.c: 353: RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	goto	i1l741
	line	219
	
i1l2590:	
	movf	(_ledCnt),w
	; Switch size 1, requested type "space"
; Number of cases is 15, Range of values is 0 to 14
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           21     6 (fixed)
; simple_byte           46    24 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	15
	subwf	fsr,w
skipnc
goto i1l741
movlw high(i1S3504)
movwf pclath
	movlw low(i1S3504)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S3504:
	ljmp	i1l736
	ljmp	i1l709
	ljmp	i1l712
	ljmp	i1l714
	ljmp	i1l716
	ljmp	i1l718
	ljmp	i1l720
	ljmp	i1l722
	ljmp	i1l724
	ljmp	i1l726
	ljmp	i1l728
	ljmp	i1l730
	ljmp	i1l732
	ljmp	i1l734
	ljmp	i1l2584
psect	text24

	line	362
	
i1l741:	
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
