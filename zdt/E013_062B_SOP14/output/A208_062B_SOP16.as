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
	FNCALL	_main,_jrPwm
	FNCALL	_main,_keyCtr
	FNCALL	_main,_ledCtr
	FNCALL	_main,_workCtr
	FNCALL	_workCtr,_pwmInit
	FNCALL	_workCtr,_pwmStop
	FNCALL	_ledCtr,___lbdiv
	FNCALL	_ledCtr,___lbmod
	FNCALL	_keyCtr,_keyRead
	FNCALL	_keyCtr,_keyRead2
	FNCALL	_chrgCtr,_chrgPwmInit
	FNCALL	_chrgCtr,_chrgPwmStop
	FNCALL	_chrgCtr,_pwmStop
	FNCALL	_checkOutA,_ADC_Sample
	FNCALL	_checkOutA,___bmul
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
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
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
	global	_jrStep
	global	_prePwStep
	global	_workStep
	global	_jrStartTime
	global	_count900s
	global	_count8s
	global	_overWorkTime
	global	_count5s
	global	_fullCount
	global	_count50s
	global	_batADValue
	global	_outADValue
	global	_power_ad
	global	_result
	global	_adresult
	global	_jrWaitTime
	global	_jrDutyFX
	global	_jrDuty
	global	_jrPwmTime
	global	_jrShowTime
	global	_motorPwmFlag
	global	_chrgPwmFlag
	global	_prejrStep
	global	_preWorkStep
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
	global	_overCount
	global	_maxDuty
	global	_longPressFlag2
	global	_longPressFlag
	global	_keyCount2
	global	_keyCount
	global	_ledCnt
	global	_workOverOutTime
	global	_protectFlag
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
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
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
	global	_RA2
_RA2	set	1074
	global	_RA3
_RA3	set	1075
	global	_RA4
_RA4	set	1076
	global	_RA5
_RA5	set	1077
; #config settings
	file	"A208_062B_SOP16.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_jrStep:
       ds      1

_prePwStep:
       ds      1

_workStep:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_jrStartTime:
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

_jrWaitTime:
       ds      1

_jrDutyFX:
       ds      1

_jrDuty:
       ds      1

_jrPwmTime:
       ds      1

_jrShowTime:
       ds      1

_motorPwmFlag:
       ds      1

_chrgPwmFlag:
       ds      1

_prejrStep:
       ds      1

_preWorkStep:
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

_overCount:
       ds      1

_maxDuty:
       ds      1

_longPressFlag2:
       ds      1

_longPressFlag:
       ds      1

_keyCount2:
       ds      1

_keyCount:
       ds      1

_ledCnt:
       ds      1

_workOverOutTime:
       ds      1

_protectFlag:
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

	file	"A208_062B_SOP16.as"
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
	movlw	low((__pbssBANK0)+040h)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
??_checkOutA:	; 1 bytes @ 0x0
??_checkBatAD:	; 1 bytes @ 0x0
	ds	2
	global	checkOutA@maxtempV
checkOutA@maxtempV:	; 1 bytes @ 0x2
	ds	1
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_ledShow:	; 1 bytes @ 0x0
??_ledShow:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_AD_Init:	; 1 bytes @ 0x0
?_checkOutA:	; 1 bytes @ 0x0
?_jrPwm:	; 1 bytes @ 0x0
?_chrgCtr:	; 1 bytes @ 0x0
?_checkBatAD:	; 1 bytes @ 0x0
?_keyCtr:	; 1 bytes @ 0x0
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
?_keyRead2:	; 1 bytes @ 0x0
	ds	3
??_Init_System:	; 1 bytes @ 0x3
??_AD_Init:	; 1 bytes @ 0x3
??_jrPwm:	; 1 bytes @ 0x3
??_chrgCtr:	; 1 bytes @ 0x3
??_workCtr:	; 1 bytes @ 0x3
??_Sleep_Mode:	; 1 bytes @ 0x3
??_chrgPwmStop:	; 1 bytes @ 0x3
??_pwmStop:	; 1 bytes @ 0x3
??_chrgPwmInit:	; 1 bytes @ 0x3
??_pwmInit:	; 1 bytes @ 0x3
?_ADC_Sample:	; 1 bytes @ 0x3
??_keyRead:	; 1 bytes @ 0x3
??_keyRead2:	; 1 bytes @ 0x3
?___bmul:	; 1 bytes @ 0x3
?___lbdiv:	; 1 bytes @ 0x3
?___lbmod:	; 1 bytes @ 0x3
	global	keyRead@keyStatus
keyRead@keyStatus:	; 1 bytes @ 0x3
	global	keyRead2@keyStatus
keyRead2@keyStatus:	; 1 bytes @ 0x3
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x3
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x3
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x3
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x3
	ds	1
??_keyCtr:	; 1 bytes @ 0x4
??_ADC_Sample:	; 1 bytes @ 0x4
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
	global	keyCtr@kclick2
keyCtr@kclick2:	; 1 bytes @ 0x5
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x5
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x5
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x5
	ds	1
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x6
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x6
	ds	1
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x7
	ds	1
??_ledCtr:	; 1 bytes @ 0x8
??_main:	; 1 bytes @ 0x8
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
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    14
;!    Data        0
;!    BSS         67
;!    Persistent  3
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      11
;!    BANK0            80     13      80
;!    BANK1            80      3       3

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _ledCtr->___lbmod
;!    _keyCtr->_keyRead
;!    _keyCtr->_keyRead2
;!    _checkOutA->_ADC_Sample
;!    _checkBatAD->_ADC_Sample
;!
;!Critical Paths under _Isr_Timer in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _checkOutA->_ADC_Sample
;!    _checkBatAD->_ADC_Sample
;!
;!Critical Paths under _Isr_Timer in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_checkOutA
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
;! (0) _main                                                 0     0      0    2732
;!                            _AD_Init
;!                        _Init_System
;!                         _Sleep_Mode
;!                         _checkBatAD
;!                          _checkOutA
;!                            _chrgCtr
;!                              _jrPwm
;!                             _keyCtr
;!                             _ledCtr
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              1     1      0       0
;!                                              3 COMMON     1     1      0
;!                            _pwmInit
;!                            _pwmStop
;! ---------------------------------------------------------------------------------
;! (2) _pwmInit                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _ledCtr                                               0     0      0     533
;!                            ___lbdiv
;!                            ___lbmod
;! ---------------------------------------------------------------------------------
;! (2) ___lbmod                                              5     4      1     265
;!                                              3 COMMON     5     4      1
;! ---------------------------------------------------------------------------------
;! (2) ___lbdiv                                              4     3      1     268
;!                                              3 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _keyCtr                                               2     2      0     134
;!                                              4 COMMON     2     2      0
;!                            _keyRead
;!                           _keyRead2
;! ---------------------------------------------------------------------------------
;! (2) _keyRead2                                             1     1      0      22
;!                                              3 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _keyRead                                              1     1      0      22
;!                                              3 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _jrPwm                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              2     2      0       0
;!                                              3 COMMON     2     2      0
;!                        _chrgPwmInit
;!                        _chrgPwmStop
;!                            _pwmStop
;! ---------------------------------------------------------------------------------
;! (2) _pwmStop                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _chrgPwmStop                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _chrgPwmInit                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkOutA                                            3     3      0    1153
;!                                              0 BANK1      3     3      0
;!                         _ADC_Sample
;!                             ___bmul
;! ---------------------------------------------------------------------------------
;! (2) ___bmul                                               3     2      1     201
;!                                              3 COMMON     3     2      1
;! ---------------------------------------------------------------------------------
;! (1) _checkBatAD                                           2     2      0     912
;!                                              0 BANK1      2     2      0
;!                         _ADC_Sample
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Sample                                          18    17      1     912
;!                                              3 COMMON     5     4      1
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
;!     ___bmul
;!   _chrgCtr
;!     _chrgPwmInit
;!     _chrgPwmStop
;!     _pwmStop
;!   _jrPwm
;!   _keyCtr
;!     _keyRead
;!     _keyRead2
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
;!COMMON               E      8       B       1       78.6%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50      D      50       4      100.0%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      3       3       6        3.8%
;!ABS                  0      0      5E       7        0.0%
;!DATA                 0      0      5E       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 155 in file "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
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
;;		_jrPwm
;;		_keyCtr
;;		_ledCtr
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	155
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	155
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	157
	
l3296:	
;main.c: 157: Init_System();
	fcall	_Init_System
	line	158
;main.c: 158: AD_Init();
	fcall	_AD_Init
	line	159
	
l3298:	
;main.c: 159: shiweiNum = geweiNum = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_geweiNum)
	movwf	(_shiweiNum)
	line	160
	
l3300:	
;main.c: 160: firstTime = 200;
	movlw	low(0C8h)
	movwf	(_firstTime)
	line	161
;main.c: 161: while (1)
	
l695:	
	line	163
# 163 "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
clrwdt ;# 
psect	maintext
	line	164
	
l3302:	
;main.c: 164: if(intCount10 > 10)
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_intCount10),w
	skipc
	goto	u3601
	goto	u3600
u3601:
	goto	l3308
u3600:
	line	166
	
l3304:	
;main.c: 165: {
;main.c: 166: intCount10 = 0;
	clrf	(_intCount10)
	line	167
	
l3306:	
;main.c: 167: checkOutA();
	fcall	_checkOutA
	line	169
	
l3308:	
;main.c: 168: }
;main.c: 169: if(jrStartTime == 0 && jrStep > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_jrStartTime)),w
iorwf	((_jrStartTime+1)),w
	btfss	status,2
	goto	u3611
	goto	u3610
u3611:
	goto	l3314
u3610:
	
l3310:	
	movf	((_jrStep)),w
	btfsc	status,2
	goto	u3621
	goto	u3620
u3621:
	goto	l3314
u3620:
	line	171
	
l3312:	
;main.c: 170: {
;main.c: 171: jrPwm();
	fcall	_jrPwm
	line	173
	
l3314:	
;main.c: 172: }
;main.c: 173: if(!IntFlag)
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u3631
	goto	u3630
u3631:
	goto	l3318
u3630:
	goto	l695
	line	175
	
l3318:	
;main.c: 175: IntFlag = 0;
	clrf	(_IntFlag)
	line	176
	
l3320:	
;main.c: 176: chrgCtr();
	fcall	_chrgCtr
	line	177
	
l3322:	
;main.c: 177: checkBatAD();
	fcall	_checkBatAD
	line	178
	
l3324:	
;main.c: 178: if(chrgFlag == 0 && lowBatFlag == 0 && firstTime == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3641
	goto	u3640
u3641:
	goto	l700
u3640:
	
l3326:	
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u3651
	goto	u3650
u3651:
	goto	l700
u3650:
	
l3328:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3661
	goto	u3660
u3661:
	goto	l700
u3660:
	line	180
	
l3330:	
;main.c: 179: {
;main.c: 180: keyCtr();
	fcall	_keyCtr
	line	181
	
l700:	
	line	182
;main.c: 181: }
;main.c: 182: workCtr();
	fcall	_workCtr
	line	183
	
l3332:	
;main.c: 183: ledCtr();
	fcall	_ledCtr
	line	184
	
l3334:	
;main.c: 184: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && showBatTime == 0 && overWorkTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3671
	goto	u3670
u3671:
	goto	l3354
u3670:
	
l3336:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u3681
	goto	u3680
u3681:
	goto	l3354
u3680:
	
l3338:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u3691
	goto	u3690
u3691:
	goto	l3354
u3690:
	
l3340:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3701
	goto	u3700
u3701:
	goto	l3354
u3700:
	
l3342:	
	movf	((_showBatTime)),w
	btfss	status,2
	goto	u3711
	goto	u3710
u3711:
	goto	l3354
u3710:
	
l3344:	
	movf	((_overWorkTime)),w
iorwf	((_overWorkTime+1)),w
	btfss	status,2
	goto	u3721
	goto	u3720
u3721:
	goto	l3354
u3720:
	line	186
	
l3346:	
;main.c: 185: {
;main.c: 186: shiweiNum = geweiNum = 0;
	clrf	(_geweiNum)
	clrf	(_shiweiNum)
	line	187
	
l3348:	
;main.c: 187: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u3731
	goto	u3730
u3731:
	goto	l695
u3730:
	line	189
	
l3350:	
;main.c: 188: {
;main.c: 189: sleepTime = 0;
	clrf	(_sleepTime)
	line	190
	
l3352:	
;main.c: 190: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l695
	line	195
	
l3354:	
;main.c: 193: else
;main.c: 194: {
;main.c: 195: sleepTime = 0;
	clrf	(_sleepTime)
	goto	l695
	global	start
	ljmp	start
	opt stack 0
	line	198
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 720 in file "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
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
;;      Temps:          1       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
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
	line	720
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	720
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	723
	
l2854:	
;main.c: 723: if(startTime > 0)
	movf	((_startTime)),w
	btfsc	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l2858
u2790:
	line	725
	
l2856:	
;main.c: 724: {
;main.c: 725: startTime--;
	decf	(_startTime),f
	line	727
	
l2858:	
;main.c: 726: }
;main.c: 727: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l2894
u2800:
	line	729
	
l2860:	
;main.c: 728: {
;main.c: 729: if(motorPwmFlag == 0)
	movf	((_motorPwmFlag)),w
	btfss	status,2
	goto	u2811
	goto	u2810
u2811:
	goto	l2864
u2810:
	line	731
	
l2862:	
;main.c: 730: {
;main.c: 731: pwmInit();
	fcall	_pwmInit
	line	734
	
l2864:	
;main.c: 733: }
;main.c: 734: maxDuty = 69 + (workStep*4);
	movf	(_workStep),w
	movwf	(??_workCtr+0)+0
	movlw	(02h)-1
u2825:
	clrc
	rlf	(??_workCtr+0)+0,f
	addlw	-1
	skipz
	goto	u2825
	clrc
	rlf	(??_workCtr+0)+0,w
	addlw	045h
	movwf	(_maxDuty)
	line	735
	
l2866:	
;main.c: 735: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	736
	
l2868:	
;main.c: 736: PWMD2L = maxDuty;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_maxDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	line	737
	
l2870:	
;main.c: 737: if(overCount >= 5)
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_overCount),w
	skipc
	goto	u2831
	goto	u2830
u2831:
	goto	l2886
u2830:
	line	739
	
l2872:	
;main.c: 738: {
;main.c: 739: if(++count5s > 300)
	incf	(_count5s),f
	skipnz
	incf	(_count5s+1),f
	movlw	01h
	subwf	((_count5s+1)),w
	movlw	02Dh
	skipnz
	subwf	((_count5s)),w
	skipc
	goto	u2841
	goto	u2840
u2841:
	goto	l2888
u2840:
	line	741
	
l2874:	
;main.c: 740: {
;main.c: 741: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	742
	
l2876:	
;main.c: 742: overWorkTime = 1000;
	movlw	0E8h
	movwf	(_overWorkTime)
	movlw	03h
	movwf	((_overWorkTime))+1
	line	743
	
l2878:	
;main.c: 743: preWorkStep = workStep;
	movf	(_workStep),w
	movwf	(_preWorkStep)
	line	744
	
l2880:	
;main.c: 744: prejrStep = jrStep;
	movf	(_jrStep),w
	movwf	(_prejrStep)
	line	745
	
l2882:	
;main.c: 745: workStep = 0;
	clrf	(_workStep)
	line	746
	
l2884:	
;main.c: 746: jrStep = 0;
	clrf	(_jrStep)
	goto	l2888
	line	751
	
l2886:	
;main.c: 749: else
;main.c: 750: {
;main.c: 751: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	753
	
l2888:	
;main.c: 752: }
;main.c: 753: if(count1s == 0 && ++count900s >= 900)
	movf	((_count1s)),w
	btfss	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l2898
u2850:
	
l2890:	
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	movlw	03h
	subwf	((_count900s+1)),w
	movlw	084h
	skipnz
	subwf	((_count900s)),w
	skipc
	goto	u2861
	goto	u2860
u2861:
	goto	l2898
u2860:
	line	755
	
l2892:	
;main.c: 754: {
;main.c: 755: workStep = 0;
	clrf	(_workStep)
	line	756
;main.c: 756: jrStep = 0;
	clrf	(_jrStep)
	goto	l2898
	line	761
	
l2894:	
;main.c: 759: else
;main.c: 760: {
;main.c: 761: pwmStop();
	fcall	_pwmStop
	line	762
	
l2896:	
;main.c: 762: count900s = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	764
	
l2898:	
;main.c: 763: }
;main.c: 764: if(jrStep == 0)
	movf	((_jrStep)),w
	btfss	status,2
	goto	u2871
	goto	u2870
u2871:
	goto	l2904
u2870:
	line	766
	
l2900:	
;main.c: 765: {
;main.c: 766: jrDuty = 0;
	clrf	(_jrDuty)
	line	767
	
l2902:	
;main.c: 767: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	768
;main.c: 768: }
	goto	l870
	line	769
	
l2904:	
;main.c: 769: else if(jrStartTime > 0)
	movf	((_jrStartTime)),w
iorwf	((_jrStartTime+1)),w
	btfsc	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l2908
u2880:
	line	771
	
l2906:	
;main.c: 770: {
;main.c: 771: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	772
;main.c: 772: }
	goto	l870
	line	773
	
l2908:	
;main.c: 773: else if(jrStep > 0)
	movf	((_jrStep)),w
	btfsc	status,2
	goto	u2891
	goto	u2890
u2891:
	goto	l870
u2890:
	line	775
	
l2910:	
;main.c: 774: {
;main.c: 775: if(jrDutyFX)
	movf	((_jrDutyFX)),w
	btfsc	status,2
	goto	u2901
	goto	u2900
u2901:
	goto	l2920
u2900:
	line	777
	
l2912:	
;main.c: 776: {
;main.c: 777: if(jrDuty > 30)
	movlw	low(01Fh)
	subwf	(_jrDuty),w
	skipc
	goto	u2911
	goto	u2910
u2911:
	goto	l2916
u2910:
	line	779
	
l2914:	
;main.c: 778: {
;main.c: 779: jrDuty--;
	decf	(_jrDuty),f
	line	780
;main.c: 780: }
	goto	l870
	line	783
	
l2916:	
;main.c: 781: else
;main.c: 782: {
;main.c: 783: if(++jrWaitTime > 21)
	movlw	low(016h)
	incf	(_jrWaitTime),f
	subwf	((_jrWaitTime)),w
	skipc
	goto	u2921
	goto	u2920
u2921:
	goto	l861
u2920:
	line	785
	
l2918:	
;main.c: 784: {
;main.c: 785: jrWaitTime = 0;
	clrf	(_jrWaitTime)
	line	786
;main.c: 786: jrDutyFX = 0;
	clrf	(_jrDutyFX)
	goto	l870
	line	792
	
l2920:	
;main.c: 790: else
;main.c: 791: {
;main.c: 792: if(jrDuty < 100)
	movlw	low(064h)
	subwf	(_jrDuty),w
	skipnc
	goto	u2931
	goto	u2930
u2931:
	goto	l2924
u2930:
	line	794
	
l2922:	
;main.c: 793: {
;main.c: 794: jrDuty++;
	incf	(_jrDuty),f
	line	795
;main.c: 795: }
	goto	l870
	line	798
	
l2924:	
;main.c: 796: else
;main.c: 797: {
;main.c: 798: if(++jrWaitTime > 3)
	movlw	low(04h)
	incf	(_jrWaitTime),f
	subwf	((_jrWaitTime)),w
	skipc
	goto	u2941
	goto	u2940
u2941:
	goto	l861
u2940:
	line	800
	
l2926:	
;main.c: 799: {
;main.c: 800: jrWaitTime = 0;
	clrf	(_jrWaitTime)
	line	801
	
l2928:	
;main.c: 801: jrDutyFX = 1;
	clrf	(_jrDutyFX)
	incf	(_jrDutyFX),f
	goto	l870
	line	805
	
l861:	
	line	806
	
l870:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 1081 in file "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
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
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	1081
global __ptext2
__ptext2:	;psect for function _pwmInit
psect	text2
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	1081
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2]
	line	1083
	
l2360:	
;main.c: 1083: motorPwmFlag = 1;
	clrf	(_motorPwmFlag)
	incf	(_motorPwmFlag),f
	line	1084
	
l2362:	
;main.c: 1084: PWMCON1 = 0B11000000;
	movlw	low(0C0h)
	movwf	(22)	;volatile
	line	1085
	
l2364:	
;main.c: 1085: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	1086
	
l2366:	
;main.c: 1086: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	1089
;main.c: 1089: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	1090
	
l2368:	
;main.c: 1090: PWMD2L = 50;
	movlw	low(032h)
	movwf	(155)^080h	;volatile
	line	1091
	
l2370:	
;main.c: 1091: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	1093
;main.c: 1093: PWMCON0 = 0X64;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	1094
	
l2372:	
;main.c: 1094: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	1095
	
l915:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_ledCtr

;; *************** function _ledCtr *****************
;; Defined at:
;;		line 368 in file "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
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
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	368
global __ptext3
__ptext3:	;psect for function _ledCtr
psect	text3
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	368
	global	__size_of_ledCtr
	__size_of_ledCtr	equ	__end_of_ledCtr-_ledCtr
	
_ledCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _ledCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	370
	
l2930:	
;main.c: 370: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u2951
	goto	u2950
u2951:
	goto	l2938
u2950:
	line	372
	
l2932:	
;main.c: 371: {
;main.c: 372: firstTime--;
	decf	(_firstTime),f
	line	373
	
l2934:	
;main.c: 373: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u2961
	goto	u2960
u2961:
	goto	l763
u2960:
	line	375
	
l2936:	
;main.c: 374: {
;main.c: 375: prePwStep = pwStep;
	movf	(_pwStep),w
	movwf	(_prePwStep)
	goto	l763
	line	378
	
l2938:	
;main.c: 378: else if(overWorkTime > 0)
	movf	((_overWorkTime)),w
iorwf	((_overWorkTime+1)),w
	btfsc	status,2
	goto	u2971
	goto	u2970
u2971:
	goto	l2946
u2970:
	line	380
	
l2940:	
;main.c: 379: {
;main.c: 380: overWorkTime--;
	movlw	01h
	subwf	(_overWorkTime),f
	movlw	0
	skipc
	decf	(_overWorkTime+1),f
	subwf	(_overWorkTime+1),f
	line	381
	
l2942:	
;main.c: 381: shiweiNum = numArray[11];
	movlw	low((((_numArray+0Bh)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	382
	
l2944:	
;main.c: 382: geweiNum = numArray[12];
	movlw	low((((_numArray+0Ch)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	383
;main.c: 383: }
	goto	l763
	line	384
	
l2946:	
;main.c: 384: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2981
	goto	u2980
u2981:
	goto	l2954
u2980:
	line	386
	
l2948:	
;main.c: 385: {
;main.c: 386: showBatTime--;
	decf	(_showBatTime),f
	line	387
	
l2950:	
;main.c: 387: shiweiNum = numArray[prePwStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	388
	
l2952:	
;main.c: 388: geweiNum = numArray[prePwStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_prePwStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	389
;main.c: 389: }
	goto	l763
	line	390
	
l2954:	
;main.c: 390: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2991
	goto	u2990
u2991:
	goto	l2972
u2990:
	line	392
	
l2956:	
;main.c: 391: {
;main.c: 392: if(jrShowTime > 0)
	movf	((_jrShowTime)),w
	btfsc	status,2
	goto	u3001
	goto	u3000
u3001:
	goto	l2968
u3000:
	line	394
	
l2958:	
;main.c: 393: {
;main.c: 394: jrShowTime--;
	decf	(_jrShowTime),f
	line	395
	
l2960:	
;main.c: 395: shiweiNum = numArray[13];
	movlw	low((((_numArray+0Dh)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	396
	
l2962:	
;main.c: 396: if(jrStep > 0)
	movf	((_jrStep)),w
	btfsc	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l2966
u3010:
	line	398
	
l2964:	
;main.c: 397: {
;main.c: 398: geweiNum = numArray[13];
	movlw	low((((_numArray+0Dh)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	399
;main.c: 399: }
	goto	l763
	line	402
	
l2966:	
;main.c: 400: else
;main.c: 401: {
;main.c: 402: geweiNum = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	goto	l763
	line	407
	
l2968:	
;main.c: 405: else
;main.c: 406: {
;main.c: 407: shiweiNum = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	408
	
l2970:	
;main.c: 408: geweiNum = numArray[workStep];
	movf	(_workStep),w
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	goto	l763
	line	411
	
l2972:	
;main.c: 411: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l2976
u3020:
	line	413
	
l2974:	
;main.c: 412: {
;main.c: 413: shiweiNum = numArray[prePwStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	414
;main.c: 414: geweiNum = numArray[prePwStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_prePwStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	415
;main.c: 415: }
	goto	l763
	line	418
	
l2976:	
;main.c: 416: else
;main.c: 417: {
;main.c: 418: shiweiNum = 0;
	clrf	(_shiweiNum)
	line	419
;main.c: 419: geweiNum = 0;
	clrf	(_geweiNum)
	line	421
	
l763:	
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
;;  dividend        1    5[COMMON] unsigned char 
;;  rem             1    7[COMMON] unsigned char 
;;  counter         1    6[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ledCtr
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
	line	4
global __ptext4
__ptext4:	;psect for function ___lbmod
psect	text4
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
	
l2484:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l2486:	
	clrf	(___lbmod@rem)
	line	12
	
l2488:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u1955:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u1955
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l2490:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l2492:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u1961
	goto	u1960
u1961:
	goto	l2496
u1960:
	line	15
	
l2494:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l2496:	
	decfsz	(___lbmod@counter),f
	goto	u1971
	goto	u1970
u1971:
	goto	l2488
u1970:
	line	17
	
l2498:	
	movf	(___lbmod@rem),w
	line	18
	
l1219:	
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
psect	text5,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
	line	4
global __ptext5
__ptext5:	;psect for function ___lbdiv
psect	text5
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
	
l2460:	
	clrf	(___lbdiv@quotient)
	line	10
	
l2462:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1911
	goto	u1910
u1911:
	goto	l2480
u1910:
	line	11
	
l2464:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2468
	
l1208:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l2466:	
	incf	(___lbdiv@counter),f
	line	12
	
l2468:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1921
	goto	u1920
u1921:
	goto	l1208
u1920:
	line	16
	
l1210:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l2470:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1931
	goto	u1930
u1931:
	goto	l2476
u1930:
	line	19
	
l2472:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2474:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2476:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l2478:	
	decfsz	(___lbdiv@counter),f
	goto	u1941
	goto	u1940
u1941:
	goto	l1210
u1940:
	line	25
	
l2480:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1213:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 641 in file "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  kclick2         1    5[COMMON] unsigned char 
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
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_keyRead
;;		_keyRead2
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	641
global __ptext6
__ptext6:	;psect for function _keyCtr
psect	text6
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	641
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	643
	
l2798:	
;main.c: 643: char kclick = keyRead(0x01 & (~PORTB));
	comf	(6),w	;volatile
	andlw	01h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	644
	
l2800:	
;main.c: 644: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l2822
u2670:
	line	646
	
l2802:	
;main.c: 645: {
;main.c: 646: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l2808
u2680:
	line	648
	
l2804:	
;main.c: 647: {
;main.c: 648: if(++workStep > 6)
	movlw	low(07h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u2691
	goto	u2690
u2691:
	goto	l2834
u2690:
	line	650
	
l2806:	
;main.c: 649: {
;main.c: 650: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l2834
	line	653
	
l2808:	
;main.c: 653: else if(overWorkTime > 0)
	movf	((_overWorkTime)),w
iorwf	((_overWorkTime+1)),w
	btfsc	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l2814
u2700:
	line	655
	
l2810:	
;main.c: 654: {
;main.c: 655: workStep = preWorkStep;
	movf	(_preWorkStep),w
	movwf	(_workStep)
	line	656
;main.c: 656: jrStep = prejrStep;
	movf	(_prejrStep),w
	movwf	(_jrStep)
	line	657
	
l2812:	
;main.c: 657: overWorkTime = 0;
	clrf	(_overWorkTime)
	clrf	(_overWorkTime+1)
	line	658
;main.c: 658: }
	goto	l2834
	line	659
	
l2814:	
;main.c: 659: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2711
	goto	u2710
u2711:
	goto	l2818
u2710:
	line	661
	
l2816:	
;main.c: 660: {
;main.c: 661: showBatTime = 0;
	clrf	(_showBatTime)
	line	662
;main.c: 662: }
	goto	l2834
	line	665
	
l2818:	
;main.c: 663: else
;main.c: 664: {
;main.c: 665: showBatTime = 200;
	movlw	low(0C8h)
	movwf	(_showBatTime)
	line	666
	
l2820:	
;main.c: 666: count1s = 0;
	clrf	(_count1s)
	goto	l2834
	line	669
	
l2822:	
;main.c: 669: else if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2721
	goto	u2720
u2721:
	goto	l2834
u2720:
	line	671
	
l2824:	
;main.c: 670: {
;main.c: 671: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l833
u2730:
	line	673
	
l2826:	
;main.c: 672: {
;main.c: 673: workStep = 0;
	clrf	(_workStep)
	line	674
;main.c: 674: jrStep = 0;
	clrf	(_jrStep)
	line	675
;main.c: 675: }
	goto	l2834
	line	676
	
l833:	
	line	678
;main.c: 676: else
;main.c: 677: {
;main.c: 678: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	679
	
l2828:	
;main.c: 679: startTime = 30;
	movlw	low(01Eh)
	movwf	(_startTime)
	line	680
	
l2830:	
;main.c: 680: showBatTime = 0;
	clrf	(_showBatTime)
	goto	l2812
	line	684
	
l2834:	
;main.c: 682: }
;main.c: 683: }
;main.c: 684: char kclick2 = keyRead2(0x04 & (~PORTB));
	comf	(6),w	;volatile
	andlw	04h
	fcall	_keyRead2
	movwf	(keyCtr@kclick2)
	line	685
	
l2836:	
;main.c: 685: if(kclick2 == 2 && workStep > 0)
		movlw	2
	xorwf	((keyCtr@kclick2)),w
	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l2848
u2740:
	
l2838:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l2848
u2750:
	line	687
	
l2840:	
;main.c: 686: {
;main.c: 687: jrShowTime = 100;
	movlw	low(064h)
	movwf	(_jrShowTime)
	line	688
	
l2842:	
;main.c: 688: if(jrStep > 0)
	movf	((_jrStep)),w
	btfsc	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l836
u2760:
	line	690
	
l2844:	
;main.c: 689: {
;main.c: 690: jrStep = 0;
	clrf	(_jrStep)
	line	691
;main.c: 691: }
	goto	l840
	line	692
	
l836:	
	line	694
;main.c: 692: else
;main.c: 693: {
;main.c: 694: jrStep = 1;
	clrf	(_jrStep)
	incf	(_jrStep),f
	line	695
	
l2846:	
;main.c: 695: jrStartTime = 2000;
	movlw	0D0h
	movwf	(_jrStartTime)
	movlw	07h
	movwf	((_jrStartTime))+1
	goto	l840
	line	698
	
l2848:	
;main.c: 698: else if(kclick2 == 1 && jrStep > 0)
		decf	((keyCtr@kclick2)),w
	btfss	status,2
	goto	u2771
	goto	u2770
u2771:
	goto	l840
u2770:
	
l2850:	
	movf	((_jrStep)),w
	btfsc	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l840
u2780:
	line	700
	
l2852:	
;main.c: 699: {
;main.c: 700: jrShowTime = 100;
	movlw	low(064h)
	movwf	(_jrShowTime)
	line	702
	
l840:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead2

;; *************** function _keyRead2 *****************
;; Defined at:
;;		line 607 in file "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
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
	line	607
global __ptext7
__ptext7:	;psect for function _keyRead2
psect	text7
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	607
	global	__size_of_keyRead2
	__size_of_keyRead2	equ	__end_of_keyRead2-_keyRead2
	
_keyRead2:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead2: [wreg+status,2+status,0]
;keyRead2@keyStatus stored from wreg
	movwf	(keyRead2@keyStatus)
	line	609
	
l2320:	
;main.c: 609: if(keyStatus)
	movf	((keyRead2@keyStatus)),w
	btfsc	status,2
	goto	u1691
	goto	u1690
u1691:
	goto	l2336
u1690:
	line	611
	
l2322:	
;main.c: 610: {
;main.c: 611: keyCount2++;
	incf	(_keyCount2),f
	line	612
	
l2324:	
;main.c: 612: if(keyCount2 >= 100)
	movlw	low(064h)
	subwf	(_keyCount2),w
	skipc
	goto	u1701
	goto	u1700
u1701:
	goto	l2340
u1700:
	line	614
	
l2326:	
;main.c: 613: {
;main.c: 614: keyCount2 = 100;
	movlw	low(064h)
	movwf	(_keyCount2)
	line	615
	
l2328:	
;main.c: 615: if(!longPressFlag2)
	movf	((_longPressFlag2)),w
	btfss	status,2
	goto	u1711
	goto	u1710
u1711:
	goto	l2340
u1710:
	line	617
	
l2330:	
;main.c: 616: {
;main.c: 617: longPressFlag2 = 1;
	clrf	(_longPressFlag2)
	incf	(_longPressFlag2),f
	line	618
	
l2332:	
;main.c: 618: return 2;
	movlw	low(02h)
	goto	l816
	line	624
	
l2336:	
;main.c: 622: else
;main.c: 623: {
;main.c: 624: if(keyCount2 >= 100)
	movlw	low(064h)
	subwf	(_keyCount2),w
	skipc
	goto	u1721
	goto	u1720
u1721:
	goto	l2346
u1720:
	line	626
	
l2338:	
;main.c: 625: {
;main.c: 626: keyCount2 = 0;
	clrf	(_keyCount2)
	line	627
;main.c: 627: longPressFlag2 = 0;
	clrf	(_longPressFlag2)
	line	628
	
l2340:	
;main.c: 628: return 0;
	movlw	low(0)
	goto	l816
	line	630
	
l2346:	
;main.c: 630: else if(keyCount2 >= 5)
	movlw	low(05h)
	subwf	(_keyCount2),w
	skipc
	goto	u1731
	goto	u1730
u1731:
	goto	l2354
u1730:
	line	632
	
l2348:	
;main.c: 631: {
;main.c: 632: keyCount2 = 0;
	clrf	(_keyCount2)
	line	633
	
l2350:	
;main.c: 633: return 1;
	movlw	low(01h)
	goto	l816
	line	635
	
l2354:	
;main.c: 634: }
;main.c: 635: keyCount2 = 0;
	clrf	(_keyCount2)
	goto	l2340
	line	638
	
l816:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead2
	__end_of_keyRead2:
	signat	_keyRead2,4217
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 573 in file "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
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
	line	573
global __ptext8
__ptext8:	;psect for function _keyRead
psect	text8
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	573
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	575
	
l2280:	
;main.c: 575: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1641
	goto	u1640
u1641:
	goto	l2296
u1640:
	line	577
	
l2282:	
;main.c: 576: {
;main.c: 577: keyCount++;
	incf	(_keyCount),f
	line	578
	
l2284:	
;main.c: 578: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1651
	goto	u1650
u1651:
	goto	l2300
u1650:
	line	580
	
l2286:	
;main.c: 579: {
;main.c: 580: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	line	581
	
l2288:	
;main.c: 581: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1661
	goto	u1660
u1661:
	goto	l2300
u1660:
	line	583
	
l2290:	
;main.c: 582: {
;main.c: 583: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	584
	
l2292:	
;main.c: 584: return 2;
	movlw	low(02h)
	goto	l806
	line	590
	
l2296:	
;main.c: 588: else
;main.c: 589: {
;main.c: 590: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1671
	goto	u1670
u1671:
	goto	l2306
u1670:
	line	592
	
l2298:	
;main.c: 591: {
;main.c: 592: keyCount = 0;
	clrf	(_keyCount)
	line	593
;main.c: 593: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	594
	
l2300:	
;main.c: 594: return 0;
	movlw	low(0)
	goto	l806
	line	596
	
l2306:	
;main.c: 596: else if(keyCount >= 6)
	movlw	low(06h)
	subwf	(_keyCount),w
	skipc
	goto	u1681
	goto	u1680
u1681:
	goto	l2314
u1680:
	line	598
	
l2308:	
;main.c: 597: {
;main.c: 598: keyCount = 0;
	clrf	(_keyCount)
	line	599
	
l2310:	
;main.c: 599: return 1;
	movlw	low(01h)
	goto	l806
	line	601
	
l2314:	
;main.c: 600: }
;main.c: 601: keyCount = 0;
	clrf	(_keyCount)
	goto	l2300
	line	604
	
l806:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_jrPwm

;; *************** function _jrPwm *****************
;; Defined at:
;;		line 704 in file "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	704
global __ptext9
__ptext9:	;psect for function _jrPwm
psect	text9
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	704
	global	__size_of_jrPwm
	__size_of_jrPwm	equ	__end_of_jrPwm-_jrPwm
	
_jrPwm:	
;incstack = 0
	opt	stack 5
; Regs used in _jrPwm: [wreg+status,2+status,0]
	line	706
	
l2614:	
;main.c: 706: if(++jrPwmTime >= 100)
	movlw	low(064h)
	incf	(_jrPwmTime),f
	subwf	((_jrPwmTime)),w
	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l2618
u2280:
	line	708
	
l2616:	
;main.c: 707: {
;main.c: 708: jrPwmTime = 0;
	clrf	(_jrPwmTime)
	line	710
	
l2618:	
;main.c: 709: }
;main.c: 710: if(jrDuty > jrPwmTime && jrStep > 0)
	movf	(_jrDuty),w
	subwf	(_jrPwmTime),w
	skipnc
	goto	u2291
	goto	u2290
u2291:
	goto	l844
u2290:
	
l2620:	
	movf	((_jrStep)),w
	btfsc	status,2
	goto	u2301
	goto	u2300
u2301:
	goto	l844
u2300:
	line	712
	
l2622:	
;main.c: 711: {
;main.c: 712: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	713
;main.c: 713: }
	goto	l846
	line	714
	
l844:	
	line	716
;main.c: 714: else
;main.c: 715: {
;main.c: 716: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	718
	
l846:	
	return
	opt stack 0
GLOBAL	__end_of_jrPwm
	__end_of_jrPwm:
	signat	_jrPwm,89
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 425 in file "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
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
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	425
global __ptext10
__ptext10:	;psect for function _chrgCtr
psect	text10
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	425
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	427
	
l2624:	
;main.c: 427: if(PORTB & 0x02)
	btfss	(6),(1)&7	;volatile
	goto	u2311
	goto	u2310
u2311:
	goto	l2744
u2310:
	line	429
	
l2626:	
;main.c: 428: {
;main.c: 429: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2321
	goto	u2320
u2321:
	goto	l2634
u2320:
	line	431
	
l2628:	
;main.c: 430: {
;main.c: 431: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	432
	
l2630:	
;main.c: 432: chrgMaxDuty = 0;
	clrf	(_chrgMaxDuty)
	line	433
	
l2632:	
;main.c: 433: chrgPwmStop();
	fcall	_chrgPwmStop
	line	435
	
l2634:	
;main.c: 434: }
;main.c: 435: jrStep = 0;
	clrf	(_jrStep)
	line	436
	
l2636:	
;main.c: 436: workStep = 0;
	clrf	(_workStep)
	line	437
	
l2638:	
;main.c: 437: pwmStop();
	fcall	_pwmStop
	line	438
;main.c: 438: lowBatFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_lowBatFlag)
	line	439
	
l2640:	
;main.c: 439: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u2331
	goto	u2330
u2331:
	goto	l2648
u2330:
	line	441
	
l2642:	
;main.c: 440: {
;main.c: 441: if(++count50s > 3000)
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
	goto	l2650
u2340:
	line	443
	
l2644:	
;main.c: 442: {
;main.c: 443: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	444
	
l2646:	
;main.c: 444: prePwStep++;
	incf	(_prePwStep),f
	goto	l2650
	line	449
	
l2648:	
;main.c: 447: else
;main.c: 448: {
;main.c: 449: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	451
	
l2650:	
;main.c: 450: }
;main.c: 451: if(protectFlag)
	movf	((_protectFlag)),w
	btfsc	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l2666
u2350:
	line	453
	
l2652:	
;main.c: 452: {
;main.c: 453: chrgPwmStop();
	fcall	_chrgPwmStop
	line	454
	
l2654:	
;main.c: 454: if(prePwStep < 99 && protectFlag == 1)
	movlw	low(063h)
	subwf	(_prePwStep),w
	skipnc
	goto	u2361
	goto	u2360
u2361:
	goto	l2662
u2360:
	
l2656:	
		decf	((_protectFlag)),w
	btfss	status,2
	goto	u2371
	goto	u2370
u2371:
	goto	l2662
u2370:
	line	456
	
l2658:	
;main.c: 455: {
;main.c: 456: if(++reChrgCount > 250)
	movlw	low(0FBh)
	incf	(_reChrgCount),f
	subwf	((_reChrgCount)),w
	skipc
	goto	u2381
	goto	u2380
u2381:
	goto	l775
u2380:
	line	458
	
l2660:	
;main.c: 457: {
;main.c: 458: reChrgCount = 0;
	clrf	(_reChrgCount)
	line	459
;main.c: 459: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	460
;main.c: 460: protectFlag = 0;
	clrf	(_protectFlag)
	goto	l775
	line	465
	
l2662:	
;main.c: 463: else
;main.c: 464: {
;main.c: 465: reChrgCount = 0;
	clrf	(_reChrgCount)
	goto	l775
	line	469
	
l2666:	
;main.c: 468: }
;main.c: 469: if(batADValue < 1118)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Eh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2391
	goto	u2390
u2391:
	goto	l2672
u2390:
	line	471
	
l2668:	
;main.c: 470: {
;main.c: 471: chrgMode = 0;
	clrf	(_chrgMode)
	line	472
	
l2670:	
;main.c: 472: chrgMaxAD = 15;
	movlw	low(0Fh)
	movwf	(_chrgMaxAD)
	line	473
;main.c: 473: }
	goto	l2690
	line	474
	
l2672:	
;main.c: 474: else if(batADValue < 1530)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	0FAh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2401
	goto	u2400
u2401:
	goto	l2680
u2400:
	line	476
	
l2674:	
;main.c: 475: {
;main.c: 476: chrgMode = 1;
	clrf	(_chrgMode)
	incf	(_chrgMode),f
	line	477
	
l2676:	
;main.c: 477: chrgMaxAD = 60;
	movlw	low(03Ch)
	movwf	(_chrgMaxAD)
	line	478
	
l2678:	
;main.c: 478: lockCount = 0;
	clrf	(_lockCount)
	line	479
;main.c: 479: }
	goto	l2690
	line	480
	
l2680:	
;main.c: 480: else if(count1s == 0)
	movf	((_count1s)),w
	btfss	status,2
	goto	u2411
	goto	u2410
u2411:
	goto	l2690
u2410:
	line	482
	
l2682:	
;main.c: 481: {
;main.c: 482: if(++lockCount > 200)
	movlw	low(0C9h)
	incf	(_lockCount),f
	subwf	((_lockCount)),w
	skipc
	goto	u2421
	goto	u2420
u2421:
	goto	l2688
u2420:
	line	484
	
l2684:	
;main.c: 483: {
;main.c: 484: lockCount = 0;
	clrf	(_lockCount)
	line	485
	
l2686:	
;main.c: 485: chrgMode = 2;
	movlw	low(02h)
	movwf	(_chrgMode)
	line	488
	
l2688:	
;main.c: 486: }
;main.c: 488: chrgMaxAD = 60;
	movlw	low(03Ch)
	movwf	(_chrgMaxAD)
	line	490
	
l2690:	
;main.c: 489: }
;main.c: 490: if(chrgMode == 2 && outADValue < 8)
		movlw	2
	xorwf	((_chrgMode)),w
	btfss	status,2
	goto	u2431
	goto	u2430
u2431:
	goto	l2700
u2430:
	
l2692:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	08h
	skipnz
	subwf	(_outADValue),w
	skipnc
	goto	u2441
	goto	u2440
u2441:
	goto	l2700
u2440:
	line	492
	
l2694:	
;main.c: 491: {
;main.c: 492: if(++fullCount >= 200)
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
	goto	l2702
u2450:
	line	494
	
l2696:	
;main.c: 493: {
;main.c: 494: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	495
	
l2698:	
;main.c: 495: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l2702
	line	500
	
l2700:	
;main.c: 498: else
;main.c: 499: {
;main.c: 500: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	502
	
l2702:	
;main.c: 501: }
;main.c: 502: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u2461
	goto	u2460
u2461:
	goto	l2706
u2460:
	line	504
	
l2704:	
;main.c: 503: {
;main.c: 504: chrgPwmStop();
	fcall	_chrgPwmStop
	line	505
;main.c: 505: }
	goto	l775
	line	508
	
l2706:	
;main.c: 506: else
;main.c: 507: {
;main.c: 508: if(batADValue > 1550 || outADValue > (chrgMaxAD + 2))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	0Fh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2471
	goto	u2470
u2471:
	goto	l2710
u2470:
	
l2708:	
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
	goto	l2722
u2480:
	line	510
	
l2710:	
;main.c: 509: {
;main.c: 510: if(++subTime > chrgWaitTime)
	incf	(_subTime),f
	movf	((_subTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u2491
	goto	u2490
u2491:
	goto	l2720
u2490:
	line	512
	
l2712:	
;main.c: 511: {
;main.c: 512: if(chrgMaxDuty > 1)
	movlw	low(02h)
	subwf	(_chrgMaxDuty),w
	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l2716
u2500:
	line	514
	
l2714:	
;main.c: 513: {
;main.c: 514: chrgMaxDuty--;
	decf	(_chrgMaxDuty),f
	line	516
	
l2716:	
;main.c: 515: }
;main.c: 516: subTime = 0;
	clrf	(_subTime)
	line	517
	
l2718:	
;main.c: 517: chrgWaitTime = 50;
	movlw	low(032h)
	movwf	(_chrgWaitTime)
	line	519
	
l2720:	
;main.c: 518: }
;main.c: 519: addTime = 0;
	clrf	(_addTime)
	line	520
;main.c: 520: }
	goto	l2736
	line	521
	
l2722:	
;main.c: 521: else if(batADValue < 1550 && outADValue < (chrgMaxAD - 4))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	0Eh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2511
	goto	u2510
u2511:
	goto	l2736
u2510:
	
l2724:	
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
	goto	l2736
u2520:
	line	523
	
l2726:	
;main.c: 522: {
;main.c: 523: if(++addTime > chrgWaitTime)
	incf	(_addTime),f
	movf	((_addTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u2531
	goto	u2530
u2531:
	goto	l2734
u2530:
	line	525
	
l2728:	
;main.c: 524: {
;main.c: 525: addTime = 0;
	clrf	(_addTime)
	line	526
	
l2730:	
;main.c: 526: if(chrgMaxDuty < 75)
	movlw	low(04Bh)
	subwf	(_chrgMaxDuty),w
	skipnc
	goto	u2541
	goto	u2540
u2541:
	goto	l2734
u2540:
	line	528
	
l2732:	
;main.c: 527: {
;main.c: 528: chrgMaxDuty++;
	incf	(_chrgMaxDuty),f
	line	531
	
l2734:	
;main.c: 529: }
;main.c: 530: }
;main.c: 531: subTime = 0;
	clrf	(_subTime)
	line	535
	
l2736:	
;main.c: 532: }
;main.c: 535: if(chrgPwmFlag == 0)
	movf	((_chrgPwmFlag)),w
	btfss	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l2740
u2550:
	line	537
	
l2738:	
;main.c: 536: {
;main.c: 537: chrgPwmInit();
	fcall	_chrgPwmInit
	line	539
	
l2740:	
;main.c: 538: }
;main.c: 539: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	540
	
l2742:	
;main.c: 540: PWMD2L = chrgMaxDuty;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_chrgMaxDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	goto	l775
	line	546
	
l2744:	
;main.c: 546: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	547
;main.c: 547: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	548
;main.c: 548: protectFlag = 0;
	clrf	(_protectFlag)
	line	549
;main.c: 549: chrgMode = 0;
	clrf	(_chrgMode)
	line	550
;main.c: 550: chrgMaxAD = 0;
	clrf	(_chrgMaxAD)
	line	551
;main.c: 551: chrgMaxDuty = 0;
	clrf	(_chrgMaxDuty)
	line	552
;main.c: 553: lockLedStep = 0;
	clrf	(_lockCount)
	line	554
	
l2746:	
;main.c: 554: chrgWaitTime = 20;
	movlw	low(014h)
	movwf	(_chrgWaitTime)
	line	555
	
l2748:	
;main.c: 555: chrgPwmStop();
	fcall	_chrgPwmStop
	line	556
	
l2750:	
;main.c: 556: if(prePwStep > 0 && prePwStep > pwStep)
	movf	((_prePwStep)),w
	btfsc	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l2760
u2560:
	
l2752:	
	movf	(_prePwStep),w
	subwf	(_pwStep),w
	skipnc
	goto	u2571
	goto	u2570
u2571:
	goto	l2760
u2570:
	line	558
	
l2754:	
;main.c: 557: {
;main.c: 558: if(++count50s > 3000)
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
	goto	l775
u2580:
	line	560
	
l2756:	
;main.c: 559: {
;main.c: 560: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	561
	
l2758:	
;main.c: 561: prePwStep--;
	decf	(_prePwStep),f
	goto	l775
	line	566
	
l2760:	
;main.c: 564: else
;main.c: 565: {
;main.c: 566: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	569
	
l775:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 1097 in file "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
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
;;		_chrgCtr
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	1097
global __ptext11
__ptext11:	;psect for function _pwmStop
psect	text11
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	1097
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: [wreg+status,2+status,0]
	line	1099
	
l2260:	
;main.c: 1099: if(motorPwmFlag)
	movf	((_motorPwmFlag)),w
	btfsc	status,2
	goto	u1631
	goto	u1630
u1631:
	goto	l919
u1630:
	line	1101
	
l2262:	
;main.c: 1100: {
;main.c: 1101: motorPwmFlag = 0;
	clrf	(_motorPwmFlag)
	line	1102
	
l2264:	
;main.c: 1102: PWMCON0 &= 0XFB;
	bcf	(21)+(2/8),(2)&7	;volatile
	line	1103
	
l2266:	
;main.c: 1103: RA2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1074/8)^080h,(1074)&7	;volatile
	line	1105
	
l919:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_chrgPwmStop

;; *************** function _chrgPwmStop *****************
;; Defined at:
;;		line 1071 in file "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
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
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	1071
global __ptext12
__ptext12:	;psect for function _chrgPwmStop
psect	text12
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	1071
	global	__size_of_chrgPwmStop
	__size_of_chrgPwmStop	equ	__end_of_chrgPwmStop-_chrgPwmStop
	
_chrgPwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmStop: [wreg+status,2+status,0]
	line	1073
	
l2252:	
;main.c: 1073: if(chrgPwmFlag)
	movf	((_chrgPwmFlag)),w
	btfsc	status,2
	goto	u1621
	goto	u1620
u1621:
	goto	l912
u1620:
	line	1075
	
l2254:	
;main.c: 1074: {
;main.c: 1075: chrgPwmFlag = 0;
	clrf	(_chrgPwmFlag)
	line	1076
	
l2256:	
;main.c: 1076: PWMCON0 &= 0xFB;
	bcf	(21)+(2/8),(2)&7	;volatile
	line	1077
	
l2258:	
;main.c: 1077: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	1079
	
l912:	
	return
	opt stack 0
GLOBAL	__end_of_chrgPwmStop
	__end_of_chrgPwmStop:
	signat	_chrgPwmStop,89
	global	_chrgPwmInit

;; *************** function _chrgPwmInit *****************
;; Defined at:
;;		line 1053 in file "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
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
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	1053
global __ptext13
__ptext13:	;psect for function _chrgPwmInit
psect	text13
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	1053
	global	__size_of_chrgPwmInit
	__size_of_chrgPwmInit	equ	__end_of_chrgPwmInit-_chrgPwmInit
	
_chrgPwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmInit: [wreg+status,2]
	line	1055
	
l2268:	
;main.c: 1055: chrgPwmFlag = 1;
	clrf	(_chrgPwmFlag)
	incf	(_chrgPwmFlag),f
	line	1056
	
l2270:	
;main.c: 1056: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	1058
;main.c: 1058: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	1059
	
l2272:	
;main.c: 1059: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	1063
	
l2274:	
;main.c: 1063: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	1064
;main.c: 1064: PWMD2L = 10;
	movlw	low(0Ah)
	movwf	(155)^080h	;volatile
	line	1065
	
l2276:	
;main.c: 1065: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	1067
	
l2278:	
;main.c: 1067: PWMCON0 = 0X04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	1068
;main.c: 1068: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	1069
	
l908:	
	return
	opt stack 0
GLOBAL	__end_of_chrgPwmInit
	__end_of_chrgPwmInit:
	signat	_chrgPwmInit,89
	global	_checkOutA

;; *************** function _checkOutA *****************
;; Defined at:
;;		line 808 in file "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  maxtempV        1    2[BANK1 ] unsigned char 
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
;;      Locals:         0       0       1
;;      Temps:          0       0       2
;;      Totals:         0       0       3
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ADC_Sample
;;		___bmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	808
global __ptext14
__ptext14:	;psect for function _checkOutA
psect	text14
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	808
	global	__size_of_checkOutA
	__size_of_checkOutA	equ	__end_of_checkOutA-_checkOutA
	
_checkOutA:	
;incstack = 0
	opt	stack 4
; Regs used in _checkOutA: [wreg+status,2+status,0+pclath+cstack]
	line	810
	
l3208:	
;main.c: 810: test_adc = ADC_Sample(0, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	811
	
l3210:	
;main.c: 811: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3401
	goto	u3400
u3401:
	goto	l3256
u3400:
	line	813
	
l3212:	
;main.c: 812: {
;main.c: 813: if(chrgFlag && adresult > 210)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3411
	goto	u3410
u3411:
	goto	l3222
u3410:
	
l3214:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	0D3h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u3421
	goto	u3420
u3421:
	goto	l3222
u3420:
	line	815
	
l3216:	
;main.c: 814: {
;main.c: 815: if(++overChrgTime > 10)
	movlw	low(0Bh)
	incf	(_overChrgTime),f
	subwf	((_overChrgTime)),w
	skipc
	goto	u3431
	goto	u3430
u3431:
	goto	l3224
u3430:
	line	817
	
l3218:	
;main.c: 816: {
;main.c: 817: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	818
	
l3220:	
;main.c: 818: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l3224
	line	824
	
l3222:	
;main.c: 822: else
;main.c: 823: {
;main.c: 824: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	826
	
l3224:	
;main.c: 825: }
;main.c: 826: outADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_outADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_outADValue)
	line	828
	
l3226:	
;main.c: 828: if(workStep && (outADValue > 600))
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3441
	goto	u3440
u3441:
	goto	l3234
u3440:
	
l3228:	
	movlw	02h
	subwf	(_outADValue+1),w
	movlw	059h
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3451
	goto	u3450
u3451:
	goto	l3234
u3450:
	line	830
	
l3230:	
;main.c: 829: {
;main.c: 830: if(++workOverOutTime > 50)
	movlw	low(033h)
	incf	(_workOverOutTime),f
	subwf	((_workOverOutTime)),w
	skipc
	goto	u3461
	goto	u3460
u3461:
	goto	l3236
u3460:
	line	832
	
l3232:	
;main.c: 831: {
;main.c: 832: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	833
;main.c: 833: workStep = 0;
	clrf	(_workStep)
	goto	l3236
	line	838
	
l3234:	
;main.c: 836: else
;main.c: 837: {
;main.c: 838: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	840
	
l3236:	
;main.c: 839: }
;main.c: 840: unsigned char maxtempV = 130 + (workStep * 10);
	movlw	low(0Ah)
	movwf	(___bmul@multiplicand)
	movf	(_workStep),w
	fcall	___bmul
	addlw	082h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(checkOutA@maxtempV)^080h
	line	841
	
l3238:	
;main.c: 841: if(jrStep > 0)
	movf	((_jrStep)),w
	btfsc	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l3246
u3470:
	line	843
	
l3240:	
;main.c: 842: {
;main.c: 843: maxtempV = maxtempV - 40;
	movlw	low(0D8h)
	addwf	(checkOutA@maxtempV)^080h,f
	line	844
	
l3242:	
;main.c: 844: if(workStep < 5)
	movlw	low(05h)
	subwf	(_workStep),w
	skipnc
	goto	u3481
	goto	u3480
u3481:
	goto	l3246
u3480:
	line	846
	
l3244:	
;main.c: 845: {
;main.c: 846: maxtempV = maxtempV - 30;
	movlw	low(0E2h)
	addwf	(checkOutA@maxtempV)^080h,f
	line	849
	
l3246:	
;main.c: 847: }
;main.c: 848: }
;main.c: 849: if(outADValue > maxtempV)
	movf	(checkOutA@maxtempV)^080h,w
	movwf	(??_checkOutA+0)^080h+0
	clrf	(??_checkOutA+0)^080h+0+1
	bcf	status, 5	;RP0=0, select bank0
	movf	(_outADValue+1),w
	bsf	status, 5	;RP0=1, select bank1
	subwf	1+(??_checkOutA+0)^080h+0,w
	skipz
	goto	u3495
	bcf	status, 5	;RP0=0, select bank0
	movf	(_outADValue),w
	bsf	status, 5	;RP0=1, select bank1
	subwf	0+(??_checkOutA+0)^080h+0,w
u3495:
	skipnc
	goto	u3491
	goto	u3490
u3491:
	goto	l3252
u3490:
	line	851
	
l3248:	
;main.c: 850: {
;main.c: 851: if(++overCount > 5)
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_overCount),f
	subwf	((_overCount)),w
	skipc
	goto	u3501
	goto	u3500
u3501:
	goto	l887
u3500:
	line	853
	
l3250:	
;main.c: 852: {
;main.c: 853: overCount = 5;
	movlw	low(05h)
	movwf	(_overCount)
	goto	l887
	line	859
	
l3252:	
;main.c: 856: else
;main.c: 857: {
;main.c: 859: if(overCount > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_overCount)),w
	btfsc	status,2
	goto	u3511
	goto	u3510
u3511:
	goto	l887
u3510:
	line	861
	
l3254:	
;main.c: 860: {
;main.c: 861: overCount--;
	decf	(_overCount),f
	goto	l887
	line	869
	
l3256:	
;main.c: 867: else
;main.c: 868: {
;main.c: 869: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	870
;main.c: 870: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	871
	
l3258:	
;main.c: 871: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bsf	status, 5	;RP0=1, select bank1
movwf	((??_checkOutA+0)^080h+0),f
	u3747:
decfsz	(??_checkOutA+0)^080h+0,f
	goto	u3747
	nop2
opt asmopt_pop

	line	873
	
l887:	
	return
	opt stack 0
GLOBAL	__end_of_checkOutA
	__end_of_checkOutA:
	signat	_checkOutA,89
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
;;		_checkOutA
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\Umul8.c"
	line	4
global __ptext15
__ptext15:	;psect for function ___bmul
psect	text15
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
	
l3194:	
	clrf	(___bmul@product)
	line	43
	
l3196:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u3381
	goto	u3380
u3381:
	goto	l3200
u3380:
	line	44
	
l3198:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	45
	
l3200:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	46
	
l3202:	
	clrc
	rrf	(___bmul@multiplier),f
	line	47
	movf	((___bmul@multiplier)),w
	btfss	status,2
	goto	u3391
	goto	u3390
u3391:
	goto	l3196
u3390:
	line	50
	
l3204:	
	movf	(___bmul@product),w
	line	51
	
l968:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 875 in file "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
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
;;      Temps:          0       0       2
;;      Totals:         0       0       2
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ADC_Sample
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	875
global __ptext16
__ptext16:	;psect for function _checkBatAD
psect	text16
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	875
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	877
	
l3260:	
;main.c: 877: test_adc = ADC_Sample(1, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(01h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	878
	
l3262:	
;main.c: 878: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l3292
u3520:
	line	880
	
l3264:	
;main.c: 879: {
;main.c: 880: batADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_batADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_batADValue)
	line	881
;main.c: 881: if(batADValue < 1117)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Dh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3531
	goto	u3530
u3531:
	goto	l3274
u3530:
	line	883
	
l3266:	
;main.c: 882: {
;main.c: 883: pwStep = 0;
	clrf	(_pwStep)
	line	884
	
l3268:	
;main.c: 884: if(++count8s > 800)
	incf	(_count8s),f
	skipnz
	incf	(_count8s+1),f
	movlw	03h
	subwf	((_count8s+1)),w
	movlw	021h
	skipnz
	subwf	((_count8s)),w
	skipc
	goto	u3541
	goto	u3540
u3541:
	goto	l3286
u3540:
	line	886
	
l3270:	
;main.c: 885: {
;main.c: 886: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	887
	
l3272:	
;main.c: 887: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	888
;main.c: 888: prePwStep = 0;
	clrf	(_prePwStep)
	line	889
;main.c: 889: workStep = 0;
	clrf	(_workStep)
	line	890
;main.c: 890: jrStep = 0;
	clrf	(_jrStep)
	goto	l3286
	line	895
	
l3274:	
;main.c: 893: else
;main.c: 894: {
;main.c: 895: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	896
	
l3276:	
;main.c: 896: if(batADValue >= 1340)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	03Ch
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3551
	goto	u3550
u3551:
	goto	l3280
u3550:
	line	898
	
l3278:	
;main.c: 897: {
;main.c: 898: pwStep = ((batADValue - 1340) /2) + 13;
	movf	(_batADValue),w
	addlw	low(0FAC4h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_checkBatAD+0)^080h+0
	bcf	status, 5	;RP0=0, select bank0
	movf	(_batADValue+1),w
	skipnc
	addlw	1
	addlw	high(0FAC4h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(??_checkBatAD+0)^080h+0
	clrc
	rrf	(??_checkBatAD+0)^080h+1,f
	rrf	(??_checkBatAD+0)^080h+0,f
	movf	0+(??_checkBatAD+0)^080h+0,w
	addlw	0Dh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_pwStep)
	line	899
;main.c: 899: }
	goto	l3282
	line	902
	
l3280:	
;main.c: 900: else
;main.c: 901: {
;main.c: 902: pwStep = (batADValue - 1117) / 16;
	movf	(_batADValue),w
	addlw	low(0FBA3h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_checkBatAD+0)^080h+0
	bcf	status, 5	;RP0=0, select bank0
	movf	(_batADValue+1),w
	skipnc
	addlw	1
	addlw	high(0FBA3h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(??_checkBatAD+0)^080h+0
	movlw	04h
u3565:
	clrc
	rrf	(??_checkBatAD+0)^080h+1,f
	rrf	(??_checkBatAD+0)^080h+0,f
	addlw	-1
	skipz
	goto	u3565
	movf	0+(??_checkBatAD+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_pwStep)
	line	904
	
l3282:	
;main.c: 903: }
;main.c: 904: if(pwStep > 99)
	movlw	low(064h)
	subwf	(_pwStep),w
	skipc
	goto	u3571
	goto	u3570
u3571:
	goto	l3286
u3570:
	line	906
	
l3284:	
;main.c: 905: {
;main.c: 906: pwStep = 99;
	movlw	low(063h)
	movwf	(_pwStep)
	line	909
	
l3286:	
;main.c: 907: }
;main.c: 908: }
;main.c: 909: if(chrgFlag && batADValue > 1861)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3581
	goto	u3580
u3581:
	goto	l899
u3580:
	
l3288:	
	movlw	07h
	subwf	(_batADValue+1),w
	movlw	046h
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3591
	goto	u3590
u3591:
	goto	l899
u3590:
	line	911
	
l3290:	
;main.c: 910: {
;main.c: 911: protectFlag = 1;
	clrf	(_protectFlag)
	incf	(_protectFlag),f
	goto	l899
	line	916
	
l3292:	
;main.c: 914: else
;main.c: 915: {
;main.c: 916: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	917
;main.c: 917: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	918
	
l3294:	
;main.c: 918: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bsf	status, 5	;RP0=1, select bank1
movwf	((??_checkBatAD+0)^080h+0),f
	u3757:
decfsz	(??_checkBatAD+0)^080h+0,f
	goto	u3757
	nop2
opt asmopt_pop

	line	949
	
l899:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 1192 in file "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;;  adldo           1    3[COMMON] unsigned char 
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
;;		On entry : 0/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         0      13       0
;;      Temps:          4       0       0
;;      Totals:         5      13       0
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
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	1192
global __ptext17
__ptext17:	;psect for function _ADC_Sample
psect	text17
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	1192
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	1194
	
l3122:	
;main.c: 1194: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1195
	
l3124:	
;main.c: 1195: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1196
;main.c: 1196: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	1198
	
l3126:	
;main.c: 1198: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u3231
	goto	u3230
u3231:
	goto	l3132
u3230:
	
l3128:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l3132
u3240:
	line	1201
	
l3130:	
;main.c: 1199: {
;main.c: 1201: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1202
;main.c: 1202: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_ADC_Sample+0)+0),f
	u3767:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u3767
opt asmopt_pop

	line	1203
;main.c: 1203: }
	goto	l3134
	line	1205
	
l3132:	
;main.c: 1204: else
;main.c: 1205: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1207
	
l3134:	
;main.c: 1207: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u3251
	goto	u3250
u3251:
	goto	l3140
u3250:
	line	1209
	
l3136:	
;main.c: 1208: {
;main.c: 1209: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	1210
	
l3138:	
;main.c: 1210: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	1212
	
l3140:	
	line	1213
	
l3142:	
;main.c: 1213: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	1215
	
l3148:	
;main.c: 1214: {
;main.c: 1215: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u3265:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u3265
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	1216
# 1216 "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
nop ;# 
	line	1217
# 1217 "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
nop ;# 
	line	1218
# 1218 "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
nop ;# 
	line	1219
# 1219 "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
nop ;# 
psect	text17
	line	1220
	
l3150:	
;main.c: 1220: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	1222
	
l3152:	
;main.c: 1222: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	1223
;main.c: 1223: while (GODONE)
	goto	l933
	
l934:	
	line	1225
;main.c: 1224: {
;main.c: 1225: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	1227
;main.c: 1227: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u3271
	goto	u3270
u3271:
	goto	l933
u3270:
	line	1228
	
l3154:	
;main.c: 1228: return 0;
	movlw	low(0)
	goto	l936
	line	1229
	
l933:	
	line	1223
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u3281
	goto	u3280
u3281:
	goto	l934
u3280:
	line	1231
	
l3158:	
;main.c: 1229: }
;main.c: 1231: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	line	1233
	
l3162:	
;main.c: 1233: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l3166
u3290:
	line	1235
	
l3164:	
;main.c: 1234: {
;main.c: 1235: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	1236
;main.c: 1236: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1237
;main.c: 1237: }
	goto	l939
	line	1238
	
l3166:	
;main.c: 1238: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u3305
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u3305:
	skipnc
	goto	u3301
	goto	u3300
u3301:
	goto	l3170
u3300:
	line	1239
	
l3168:	
;main.c: 1239: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l939
	line	1240
	
l3170:	
;main.c: 1240: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u3315
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u3315:
	skipnc
	goto	u3311
	goto	u3310
u3311:
	goto	l939
u3310:
	line	1241
	
l3172:	
;main.c: 1241: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1243
	
l939:	
;main.c: 1243: adsum += ad_temp;
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
	goto	u3321
	addwf	(ADC_Sample@adsum+1),f	;volatile
u3321:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3322
	addwf	(ADC_Sample@adsum+2),f	;volatile
u3322:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3323
	addwf	(ADC_Sample@adsum+3),f	;volatile
u3323:

	line	1213
	
l3174:	
	incf	(ADC_Sample@i),f
	
l3176:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u3331
	goto	u3330
u3331:
	goto	l3148
u3330:
	line	1245
	
l3178:	
;main.c: 1244: }
;main.c: 1245: adsum -= admax;
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
	goto	u3345
	goto	u3346
u3345:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3346:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3347
	goto	u3348
u3347:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3348:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3349
	goto	u3340
u3349:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3340:

	line	1246
;main.c: 1246: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u3355
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u3355
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u3355
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u3355:
	skipc
	goto	u3351
	goto	u3350
u3351:
	goto	l943
u3350:
	line	1247
	
l3180:	
;main.c: 1247: adsum -= admin;
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
	goto	u3365
	goto	u3366
u3365:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3366:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3367
	goto	u3368
u3367:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3368:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3369
	goto	u3360
u3369:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3360:

	goto	l3182
	line	1248
	
l943:	
	line	1249
;main.c: 1248: else
;main.c: 1249: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1251
	
l3182:	
;main.c: 1251: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u3375:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u3370:
	addlw	-1
	skipz
	goto	u3375
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	1253
	
l3184:	
;main.c: 1253: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1254
	
l3186:	
;main.c: 1254: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	1255
	
l3188:	
;main.c: 1255: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1256
	
l3190:	
;main.c: 1256: return 0xA5;
	movlw	low(0A5h)
	line	1258
	
l936:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 1115 in file "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
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
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	1115
global __ptext18
__ptext18:	;psect for function _Sleep_Mode
psect	text18
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	1115
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 4
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	1117
	
l2978:	
;main.c: 1117: INTCON = 0;
	clrf	(11)	;volatile
	line	1119
;main.c: 1119: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	1121
;main.c: 1121: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	1122
	
l2980:	
;main.c: 1122: TRISA = 0x03;
	movlw	low(03h)
	movwf	(133)^080h	;volatile
	line	1123
	
l2982:	
;main.c: 1123: TRISB = 0x87;
	movlw	low(087h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	1125
;main.c: 1125: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	1126
;main.c: 1126: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	1127
;main.c: 1127: WPUB = 0B00000000;
	clrf	(8)	;volatile
	line	1129
;main.c: 1129: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	1130
;main.c: 1130: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	1132
;main.c: 1132: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	1134
	
l2984:	
;main.c: 1134: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	1136
	
l2986:	
;main.c: 1136: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	1137
;main.c: 1137: IOCB = 0B00000111;
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	1139
	
l2988:	
;main.c: 1139: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	1140
	
l2990:	
;main.c: 1140: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	1141
	
l2992:	
;main.c: 1141: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	1142
	
l2994:	
;main.c: 1142: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	1144
	
l2996:	
;main.c: 1144: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	1145
	
l2998:	
;main.c: 1145: PIR1 = 0;
	clrf	(13)	;volatile
	line	1146
	
l3000:	
;main.c: 1146: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	1148
	
l3002:	
;main.c: 1148: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	1149
	
l3004:	
;main.c: 1149: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	1150
	
l3006:	
;main.c: 1150: PORTB;
	movf	(6),w	;volatile
	line	1151
	
l3008:	
;main.c: 1151: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	1152
# 1152 "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
clrwdt ;# 
	line	1154
# 1154 "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
sleep ;# 
	line	1156
# 1156 "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
nop ;# 
	line	1157
# 1157 "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
clrwdt ;# 
	line	1158
# 1158 "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
nop ;# 
	line	1159
# 1159 "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
nop ;# 
	line	1160
# 1160 "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
nop ;# 
	line	1161
# 1161 "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
nop ;# 
	line	1162
# 1162 "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
nop ;# 
psect	text18
	line	1163
	
l3010:	
;main.c: 1163: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u3031
	goto	u3030
u3031:
	goto	l922
u3030:
	
l3012:	
	bcf	(107/8),(107)&7	;volatile
	
l922:	
	line	1164
;main.c: 1164: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u3041
	goto	u3040
u3041:
	goto	l923
u3040:
	
l3014:	
	bcf	(88/8),(88)&7	;volatile
	
l923:	
	line	1165
;main.c: 1165: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u3051
	goto	u3050
u3051:
	goto	l3018
u3050:
	
l3016:	
	bcf	(105/8),(105)&7	;volatile
	line	1166
	
l3018:	
;main.c: 1166: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	1167
;main.c: 1167: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	1168
	
l3020:	
;main.c: 1168: Init_System();
	fcall	_Init_System
	line	1169
	
l3022:	
;main.c: 1169: AD_Init();
	fcall	_AD_Init
	line	1170
	
l925:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 960 in file "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
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
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	960
global __ptext19
__ptext19:	;psect for function _Init_System
psect	text19
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	960
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	962
	
l2224:	
# 962 "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
nop ;# 
	line	963
# 963 "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
clrwdt ;# 
psect	text19
	line	964
	
l2226:	
;main.c: 964: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	965
# 965 "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
clrwdt ;# 
psect	text19
	line	966
	
l2228:	
;main.c: 966: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	968
	
l2230:	
;main.c: 968: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	969
	
l2232:	
;main.c: 969: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	970
	
l2234:	
;main.c: 970: WPUB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(8)	;volatile
	line	972
;main.c: 972: TRISA = 0x03;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	973
;main.c: 973: TRISB = 0x87;
	movlw	low(087h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	975
	
l2236:	
;main.c: 975: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	976
	
l2238:	
;main.c: 976: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	980
;main.c: 980: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	981
	
l2240:	
;main.c: 981: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	982
	
l2242:	
;main.c: 982: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	984
;main.c: 984: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	985
;main.c: 985: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	986
	
l902:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 997 in file "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
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
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	997
global __ptext20
__ptext20:	;psect for function _AD_Init
psect	text20
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	997
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _AD_Init: [wreg+status,2]
	line	1030
	
l2244:	
;main.c: 1030: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	1047
	
l2246:	
;main.c: 1047: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	1048
	
l2248:	
;main.c: 1048: ANSEL0 = 0X03;
	movlw	low(03h)
	movwf	(147)^080h	;volatile
	line	1049
	
l2250:	
;main.c: 1049: ANSEL1 = 0x80;
	movlw	low(080h)
	movwf	(148)^080h	;volatile
	line	1050
	
l905:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 131 in file "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
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
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	131
global __ptext21
__ptext21:	;psect for function _Isr_Timer
psect	text21
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	131
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
psect	text21
	line	133
	
i1l3024:	
;main.c: 133: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u306_21
	goto	u306_20
u306_21:
	goto	i1l690
u306_20:
	line	135
	
i1l3026:	
;main.c: 134: {
;main.c: 135: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	136
	
i1l3028:	
;main.c: 136: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u307_21
	goto	u307_20
u307_21:
	goto	i1l3038
u307_20:
	line	138
	
i1l3030:	
;main.c: 137: {
;main.c: 138: intCount = 0;
	clrf	(_intCount)
	line	139
	
i1l3032:	
;main.c: 139: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	140
	
i1l3034:	
;main.c: 140: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u308_21
	goto	u308_20
u308_21:
	goto	i1l3038
u308_20:
	line	142
	
i1l3036:	
;main.c: 141: {
;main.c: 142: count1s = 0;
	clrf	(_count1s)
	line	145
	
i1l3038:	
;main.c: 143: }
;main.c: 144: }
;main.c: 145: ledShow();
	fcall	_ledShow
	line	146
	
i1l3040:	
;main.c: 146: intCount10++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_intCount10),f
	line	149
	
i1l690:	
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
;;		line 200 in file "C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
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
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	200
global __ptext22
__ptext22:	;psect for function _ledShow
psect	text22
	file	"C:\mcuproject\scm\zdt\A208_062B_SOP16\main.c"
	line	200
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 4
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	202
	
i1l2502:	
;main.c: 202: if(++ledCntTime > 5)
	movlw	low(06h)
	incf	(_ledCntTime),f
	subwf	((_ledCntTime)),w
	skipc
	goto	u198_21
	goto	u198_20
u198_21:
	goto	i1l745
u198_20:
	line	204
	
i1l2504:	
;main.c: 203: {
;main.c: 204: ledCntTime = 0;
	clrf	(_ledCntTime)
	line	205
	
i1l2506:	
;main.c: 205: if(++ledCnt > 15)
	movlw	low(010h)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u199_21
	goto	u199_20
u199_21:
	goto	i1l2510
u199_20:
	line	207
	
i1l2508:	
;main.c: 206: {
;main.c: 207: ledCnt = 0;
	clrf	(_ledCnt)
	line	209
	
i1l2510:	
;main.c: 208: }
;main.c: 209: PORTA &= 0xC7;
	movlw	low(0C7h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	210
	
i1l2512:	
;main.c: 210: PORTB &= 0x9F;
	movlw	low(09Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(6),f	;volatile
	line	211
	
i1l2514:	
;main.c: 211: TRISA |= 0x38;
	movlw	low(038h)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	212
	
i1l2516:	
;main.c: 212: TRISB |= 0x60;
	movlw	low(060h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(5),f	;volatile
	line	213
;main.c: 213: switch(ledCnt)
	goto	i1l2556
	line	215
;main.c: 214: {
;main.c: 215: case 1:
	
i1l711:	
	line	216
;main.c: 216: if(shiweiNum & 0x01)
	btfss	(_shiweiNum),(0)&7
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l745
u200_20:
	line	218
	
i1l2518:	
;main.c: 217: {
;main.c: 218: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	219
;main.c: 219: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	220
;main.c: 220: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	221
;main.c: 221: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l745
	line	224
;main.c: 224: case 2:
	
i1l714:	
	line	225
;main.c: 225: if(shiweiNum & 0x02)
	btfss	(_shiweiNum),(1)&7
	goto	u201_21
	goto	u201_20
u201_21:
	goto	i1l745
u201_20:
	line	227
	
i1l2520:	
;main.c: 226: {
;main.c: 227: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	228
;main.c: 228: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	229
;main.c: 229: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	230
;main.c: 230: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l745
	line	233
;main.c: 233: case 3:
	
i1l716:	
	line	234
;main.c: 234: if(shiweiNum & 0x04)
	btfss	(_shiweiNum),(2)&7
	goto	u202_21
	goto	u202_20
u202_21:
	goto	i1l745
u202_20:
	line	236
	
i1l2522:	
;main.c: 235: {
;main.c: 236: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	237
;main.c: 237: TRISB &= 0xBF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(6/8),(6)&7	;volatile
	line	238
;main.c: 238: RA3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	239
;main.c: 239: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(54/8),(54)&7	;volatile
	goto	i1l745
	line	242
;main.c: 242: case 4:
	
i1l718:	
	line	243
;main.c: 243: if(shiweiNum & 0x08)
	btfss	(_shiweiNum),(3)&7
	goto	u203_21
	goto	u203_20
u203_21:
	goto	i1l745
u203_20:
	line	245
	
i1l2524:	
;main.c: 244: {
;main.c: 245: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	246
;main.c: 246: TRISB &= 0xBF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(6/8),(6)&7	;volatile
	line	247
;main.c: 247: RA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	248
;main.c: 248: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(54/8),(54)&7	;volatile
	goto	i1l745
	line	251
;main.c: 251: case 5:
	
i1l720:	
	line	252
;main.c: 252: if(shiweiNum & 0x10)
	btfss	(_shiweiNum),(4)&7
	goto	u204_21
	goto	u204_20
u204_21:
	goto	i1l745
u204_20:
	line	254
	
i1l2526:	
;main.c: 253: {
;main.c: 254: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	255
;main.c: 255: TRISB &= 0xDF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(5/8),(5)&7	;volatile
	line	256
;main.c: 256: RA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	257
;main.c: 257: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	goto	i1l745
	line	260
;main.c: 260: case 6:
	
i1l722:	
	line	261
;main.c: 261: if(shiweiNum & 0x20)
	btfss	(_shiweiNum),(5)&7
	goto	u205_21
	goto	u205_20
u205_21:
	goto	i1l745
u205_20:
	line	263
	
i1l2528:	
;main.c: 262: {
;main.c: 263: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	264
;main.c: 264: TRISB &= 0xDF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(5/8),(5)&7	;volatile
	line	265
;main.c: 265: RA3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	266
;main.c: 266: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	goto	i1l745
	line	269
;main.c: 269: case 7:
	
i1l724:	
	line	270
;main.c: 270: if(shiweiNum & 0x40)
	btfss	(_shiweiNum),(6)&7
	goto	u206_21
	goto	u206_20
u206_21:
	goto	i1l745
u206_20:
	line	272
	
i1l2530:	
;main.c: 271: {
;main.c: 272: TRISB &= 0xBF;
	bcf	(5)+(6/8),(6)&7	;volatile
	line	273
;main.c: 273: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	274
;main.c: 274: RB6 = 1;
	bsf	(54/8),(54)&7	;volatile
	line	275
;main.c: 275: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	goto	i1l745
	line	278
;main.c: 278: case 8:
	
i1l726:	
	line	279
;main.c: 279: if(geweiNum & 0x01)
	btfss	(_geweiNum),(0)&7
	goto	u207_21
	goto	u207_20
u207_21:
	goto	i1l745
u207_20:
	line	281
	
i1l2532:	
;main.c: 280: {
;main.c: 281: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	282
;main.c: 282: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	283
;main.c: 283: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	284
;main.c: 284: RA5 = 0;
	bcf	(1077/8)^080h,(1077)&7	;volatile
	goto	i1l745
	line	287
;main.c: 287: case 9:
	
i1l728:	
	line	288
;main.c: 288: if(geweiNum & 0x02)
	btfss	(_geweiNum),(1)&7
	goto	u208_21
	goto	u208_20
u208_21:
	goto	i1l745
u208_20:
	line	290
	
i1l2534:	
;main.c: 289: {
;main.c: 290: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	291
;main.c: 291: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	292
;main.c: 292: RA5 = 1;
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	293
;main.c: 293: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l745
	line	296
;main.c: 296: case 10:
	
i1l730:	
	line	297
;main.c: 297: if(geweiNum & 0x04)
	btfss	(_geweiNum),(2)&7
	goto	u209_21
	goto	u209_20
u209_21:
	goto	i1l745
u209_20:
	line	299
	
i1l2536:	
;main.c: 298: {
;main.c: 299: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	300
;main.c: 300: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	301
;main.c: 301: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	302
;main.c: 302: RA5 = 0;
	bcf	(1077/8)^080h,(1077)&7	;volatile
	goto	i1l745
	line	305
;main.c: 305: case 11:
	
i1l732:	
	line	306
;main.c: 306: if(geweiNum & 0x08)
	btfss	(_geweiNum),(3)&7
	goto	u210_21
	goto	u210_20
u210_21:
	goto	i1l745
u210_20:
	line	308
	
i1l2538:	
;main.c: 307: {
;main.c: 308: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	309
;main.c: 309: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	310
;main.c: 310: RA5 = 1;
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	311
;main.c: 311: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l745
	line	314
;main.c: 314: case 12:
	
i1l734:	
	line	315
;main.c: 315: if(geweiNum & 0x10)
	btfss	(_geweiNum),(4)&7
	goto	u211_21
	goto	u211_20
u211_21:
	goto	i1l745
u211_20:
	line	317
	
i1l2540:	
;main.c: 316: {
;main.c: 317: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	318
;main.c: 318: TRISB &= 0xBF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(6/8),(6)&7	;volatile
	line	319
;main.c: 319: RB6 = 1;
	bsf	(54/8),(54)&7	;volatile
	line	320
;main.c: 320: RA5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	goto	i1l745
	line	323
;main.c: 323: case 13:
	
i1l736:	
	line	324
;main.c: 324: if(geweiNum & 0x20)
	btfss	(_geweiNum),(5)&7
	goto	u212_21
	goto	u212_20
u212_21:
	goto	i1l745
u212_20:
	line	326
	
i1l2542:	
;main.c: 325: {
;main.c: 326: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	327
;main.c: 327: TRISB &= 0xBF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(6/8),(6)&7	;volatile
	line	328
;main.c: 328: RA5 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	329
;main.c: 329: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(54/8),(54)&7	;volatile
	goto	i1l745
	line	332
;main.c: 332: case 14:
	
i1l738:	
	line	333
;main.c: 333: if(geweiNum & 0x40)
	btfss	(_geweiNum),(6)&7
	goto	u213_21
	goto	u213_20
u213_21:
	goto	i1l745
u213_20:
	line	335
	
i1l2544:	
;main.c: 334: {
;main.c: 335: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	336
;main.c: 336: TRISB &= 0xDF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(5/8),(5)&7	;volatile
	line	337
;main.c: 337: RA5 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	338
;main.c: 338: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	goto	i1l745
	line	342
	
i1l2546:	
;main.c: 342: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u214_21
	goto	u214_20
u214_21:
	goto	i1l745
u214_20:
	line	344
	
i1l2548:	
;main.c: 343: {
;main.c: 344: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	345
;main.c: 345: TRISB &= 0xDF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(5/8),(5)&7	;volatile
	line	346
;main.c: 346: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	347
;main.c: 347: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l745
	line	351
	
i1l2550:	
;main.c: 351: if(jrStep > 0)
	movf	((_jrStep)),w
	btfsc	status,2
	goto	u215_21
	goto	u215_20
u215_21:
	goto	i1l745
u215_20:
	line	353
	
i1l2552:	
;main.c: 352: {
;main.c: 353: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	354
;main.c: 354: TRISB &= 0xDF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(5/8),(5)&7	;volatile
	line	355
;main.c: 355: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	356
;main.c: 356: RA5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	goto	i1l745
	line	213
	
i1l2556:	
	movf	(_ledCnt),w
	; Switch size 1, requested type "space"
; Number of cases is 16, Range of values is 0 to 15
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           22     6 (fixed)
; simple_byte           49    25 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	16
	subwf	fsr,w
skipnc
goto i1l745
movlw high(i1S3376)
movwf pclath
	movlw low(i1S3376)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S3376:
	ljmp	i1l2550
	ljmp	i1l711
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
	ljmp	i1l736
	ljmp	i1l738
	ljmp	i1l2546
psect	text22

	line	365
	
i1l745:	
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
