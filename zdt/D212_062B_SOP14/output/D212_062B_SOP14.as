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
	FNCALL	_ledCtr,___lwdiv
	FNCALL	_keyCtr,_keyRead
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
	global	_workStep
	global	_chrgFlag
	global	_sumBatValue
	global	_count900s
	global	_count8s
	global	_fullCount
	global	_count50s
	global	_batADValue
	global	_outADValue
	global	_power_ad
	global	_result
	global	_firstCheckTime
	global	_motorPwmFlag
	global	_chrgPwmFlag
	global	_sleepTime
	global	_lowBatFlag
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
	global	_reChrgCount
	global	_prePwStep
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
	global	_RB2
_RB2	set	50
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

_workStep:
       ds      1

_chrgFlag:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_sumBatValue:
       ds      2

_count900s:
       ds      2

_count8s:
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

_firstCheckTime:
       ds      1

_motorPwmFlag:
       ds      1

_chrgPwmFlag:
       ds      1

_sleepTime:
       ds      1

_lowBatFlag:
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

_reChrgCount:
       ds      1

_prePwStep:
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
	movlw	low((__pbssBANK0)+033h)
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
?_pwmStop:	; 1 bytes @ 0x0
?_chrgPwmInit:	; 1 bytes @ 0x0
?_pwmInit:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_keyRead:	; 1 bytes @ 0x0
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
?___lbdiv:	; 1 bytes @ 0x3
?___lbmod:	; 1 bytes @ 0x3
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x3
	global	keyRead@keyStatus
keyRead@keyStatus:	; 1 bytes @ 0x3
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x3
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x3
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x3
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x3
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
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x5
	ds	1
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x6
	ds	1
??_ledCtr:	; 1 bytes @ 0x7
??_main:	; 1 bytes @ 0x7
??___lwdiv:	; 1 bytes @ 0x7
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_ADC_Sample:	; 1 bytes @ 0x0
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x0
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x0
	ds	1
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1
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
;!    BSS         55
;!    Persistent  3
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      11
;!    BANK0            80     17      71
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _ledCtr->___lbdiv
;!    _ledCtr->___lwdiv
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
;!    _ledCtr->___lbmod
;!    _ledCtr->___lwdiv
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
;! (0) _main                                                 0     0      0    3022
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
;! (2) _pwmInit                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _ledCtr                                               0     0      0    1001
;!                            ___lbdiv
;!                            ___lbmod
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     371
;!                                              3 COMMON     4     0      4
;!                                              0 BANK0      3     3      0
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
;! (2) _pwmStop                                              0     0      0       0
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
;!     _chrgPwmInit
;!     _chrgPwmStop
;!     _pwmStop
;!   _keyCtr
;!     _keyRead
;!   _ledCtr
;!     ___lbdiv
;!     ___lbmod
;!     ___lwdiv
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
;!BANK0               50     11      47       4       88.8%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      52       7        0.0%
;!DATA                 0      0      52       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 156 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	156
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	156
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	158
	
l3282:	
;main.c: 158: Init_System();
	fcall	_Init_System
	line	159
;main.c: 159: AD_Init();
	fcall	_AD_Init
	line	160
	
l3284:	
;main.c: 160: shiweiNum = geweiNum = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_geweiNum)
	movwf	(_shiweiNum)
	line	161
	
l3286:	
;main.c: 161: firstTime = 200;
	movlw	low(0C8h)
	movwf	(_firstTime)
	line	162
;main.c: 162: while (1)
	
l693:	
	line	164
# 164 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
clrwdt ;# 
psect	maintext
	line	165
	
l3288:	
;main.c: 165: if(intCount10 > 10)
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_intCount10),w
	skipc
	goto	u3691
	goto	u3690
u3691:
	goto	l3294
u3690:
	line	167
	
l3290:	
;main.c: 166: {
;main.c: 167: intCount10 = 0;
	clrf	(_intCount10)
	line	168
	
l3292:	
;main.c: 168: checkOutA();
	fcall	_checkOutA
	line	170
	
l3294:	
;main.c: 169: }
;main.c: 170: if(!IntFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u3701
	goto	u3700
u3701:
	goto	l3298
u3700:
	goto	l693
	line	172
	
l3298:	
;main.c: 172: IntFlag = 0;
	clrf	(_IntFlag)
	line	173
	
l3300:	
;main.c: 173: chrgCtr();
	fcall	_chrgCtr
	line	174
	
l3302:	
;main.c: 174: checkBatAD();
	fcall	_checkBatAD
	line	175
	
l3304:	
;main.c: 175: if(chrgFlag == 0 && lowBatFlag == 0 && firstTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3711
	goto	u3710
u3711:
	goto	l697
u3710:
	
l3306:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u3721
	goto	u3720
u3721:
	goto	l697
u3720:
	
l3308:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3731
	goto	u3730
u3731:
	goto	l697
u3730:
	line	177
	
l3310:	
;main.c: 176: {
;main.c: 177: keyCtr();
	fcall	_keyCtr
	line	178
	
l697:	
	line	179
;main.c: 178: }
;main.c: 179: workCtr();
	fcall	_workCtr
	line	180
	
l3312:	
;main.c: 180: if(count1s == 0 && ++count900s >= 900)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_count1s)),w
	btfss	status,2
	goto	u3741
	goto	u3740
u3741:
	goto	l3318
u3740:
	
l3314:	
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	movlw	03h
	subwf	((_count900s+1)),w
	movlw	084h
	skipnz
	subwf	((_count900s)),w
	skipc
	goto	u3751
	goto	u3750
u3751:
	goto	l3318
u3750:
	line	182
	
l3316:	
;main.c: 181: {
;main.c: 182: workStep = 0;
	clrf	(_workStep)
	line	184
	
l3318:	
;main.c: 183: }
;main.c: 184: ledCtr();
	fcall	_ledCtr
	line	185
	
l3320:	
;main.c: 185: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && showBatTime == 0 && overWorkTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3761
	goto	u3760
u3761:
	goto	l3340
u3760:
	
l3322:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u3771
	goto	u3770
u3771:
	goto	l3340
u3770:
	
l3324:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u3781
	goto	u3780
u3781:
	goto	l3340
u3780:
	
l3326:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3791
	goto	u3790
u3791:
	goto	l3340
u3790:
	
l3328:	
	movf	((_showBatTime)),w
	btfss	status,2
	goto	u3801
	goto	u3800
u3801:
	goto	l3340
u3800:
	
l3330:	
	movf	((_overWorkTime)),w
	btfss	status,2
	goto	u3811
	goto	u3810
u3811:
	goto	l3340
u3810:
	line	187
	
l3332:	
;main.c: 186: {
;main.c: 187: shiweiNum = geweiNum = 0;
	clrf	(_geweiNum)
	clrf	(_shiweiNum)
	line	188
	
l3334:	
;main.c: 188: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u3821
	goto	u3820
u3821:
	goto	l693
u3820:
	line	190
	
l3336:	
;main.c: 189: {
;main.c: 190: sleepTime = 0;
	clrf	(_sleepTime)
	line	191
	
l3338:	
;main.c: 191: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l693
	line	196
	
l3340:	
;main.c: 194: else
;main.c: 195: {
;main.c: 196: sleepTime = 0;
	clrf	(_sleepTime)
	goto	l693
	global	start
	ljmp	start
	opt stack 0
	line	199
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 661 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
	line	661
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	661
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	664
	
l2746:	
;main.c: 664: if(startTime > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_startTime)),w
	btfsc	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l2750
u2700:
	line	666
	
l2748:	
;main.c: 665: {
;main.c: 666: startTime--;
	decf	(_startTime),f
	line	668
	
l2750:	
;main.c: 667: }
;main.c: 668: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2711
	goto	u2710
u2711:
	goto	l2806
u2710:
	line	670
	
l2752:	
;main.c: 669: {
;main.c: 670: if(motorPwmFlag == 0)
	movf	((_motorPwmFlag)),w
	btfss	status,2
	goto	u2721
	goto	u2720
u2721:
	goto	l2756
u2720:
	line	672
	
l2754:	
;main.c: 671: {
;main.c: 672: pwmInit();
	fcall	_pwmInit
	line	675
	
l2756:	
;main.c: 674: }
;main.c: 675: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l2760
u2730:
	line	677
	
l2758:	
;main.c: 676: {
;main.c: 677: maxDuty = 158;
	movlw	low(09Eh)
	movwf	(_maxDuty)
	line	678
;main.c: 678: }
	goto	l2802
	line	679
	
l2760:	
;main.c: 679: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l2764
u2740:
	line	680
	
l2762:	
;main.c: 680: maxDuty = 163;
	movlw	low(0A3h)
	movwf	(_maxDuty)
	goto	l2802
	line	681
	
l2764:	
;main.c: 681: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l2768
u2750:
	line	682
	
l2766:	
;main.c: 682: maxDuty = 167;
	movlw	low(0A7h)
	movwf	(_maxDuty)
	goto	l2802
	line	683
	
l2768:	
;main.c: 683: else if(workStep == 4)
		movlw	4
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l2772
u2760:
	line	684
	
l2770:	
;main.c: 684: maxDuty = 170;
	movlw	low(0AAh)
	movwf	(_maxDuty)
	goto	l2802
	line	685
	
l2772:	
;main.c: 685: else if(workStep == 5)
		movlw	5
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2771
	goto	u2770
u2771:
	goto	l2776
u2770:
	line	686
	
l2774:	
;main.c: 686: maxDuty = 173;
	movlw	low(0ADh)
	movwf	(_maxDuty)
	goto	l2802
	line	687
	
l2776:	
;main.c: 687: else if(workStep == 6)
		movlw	6
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l2780
u2780:
	line	688
	
l2778:	
;main.c: 688: maxDuty = 177;
	movlw	low(0B1h)
	movwf	(_maxDuty)
	goto	l2802
	line	689
	
l2780:	
;main.c: 689: else if(workStep == 7)
		movlw	7
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l2784
u2790:
	line	690
	
l2782:	
;main.c: 690: maxDuty = 180;
	movlw	low(0B4h)
	movwf	(_maxDuty)
	goto	l2802
	line	691
	
l2784:	
;main.c: 691: else if(workStep == 8)
		movlw	8
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l2788
u2800:
	line	692
	
l2786:	
;main.c: 692: maxDuty = 184;
	movlw	low(0B8h)
	movwf	(_maxDuty)
	goto	l2802
	line	693
	
l2788:	
;main.c: 693: else if(workStep == 9)
		movlw	9
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2811
	goto	u2810
u2811:
	goto	l2792
u2810:
	line	694
	
l2790:	
;main.c: 694: maxDuty = 188;
	movlw	low(0BCh)
	movwf	(_maxDuty)
	goto	l2802
	line	695
	
l2792:	
;main.c: 695: else if(workStep == 10)
		movlw	10
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2821
	goto	u2820
u2821:
	goto	l2796
u2820:
	line	696
	
l2794:	
;main.c: 696: maxDuty = 192;
	movlw	low(0C0h)
	movwf	(_maxDuty)
	goto	l2802
	line	697
	
l2796:	
;main.c: 697: else if(workStep == 11)
		movlw	11
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2831
	goto	u2830
u2831:
	goto	l2800
u2830:
	line	698
	
l2798:	
;main.c: 698: maxDuty = 196;
	movlw	low(0C4h)
	movwf	(_maxDuty)
	goto	l2802
	line	701
	
l2800:	
;main.c: 699: else
;main.c: 700: {
;main.c: 701: maxDuty = 200;
	movlw	low(0C8h)
	movwf	(_maxDuty)
	line	703
	
l2802:	
;main.c: 702: }
;main.c: 703: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	704
	
l2804:	
;main.c: 704: PWMD3L = maxDuty;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_maxDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	707
;main.c: 707: }
	goto	l853
	line	710
	
l2806:	
;main.c: 708: else
;main.c: 709: {
;main.c: 710: pwmStop();
	fcall	_pwmStop
	line	711
	
l2808:	
;main.c: 711: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	714
	
l853:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 965 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	965
global __ptext2
__ptext2:	;psect for function _pwmInit
psect	text2
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	965
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2+status,0]
	line	967
	
l2270:	
;main.c: 967: if(motorPwmFlag > 0)
	movf	((_motorPwmFlag)),w
	btfsc	status,2
	goto	u1671
	goto	u1670
u1671:
	goto	l900
u1670:
	goto	l901
	line	968
	
l900:	
	line	969
;main.c: 969: motorPwmFlag = 1;
	clrf	(_motorPwmFlag)
	incf	(_motorPwmFlag),f
	line	970
	
l2274:	
;main.c: 970: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	971
;main.c: 971: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	972
	
l2276:	
;main.c: 972: PWMTL = 200;
	movlw	low(0C8h)
	movwf	(23)	;volatile
	line	975
	
l2278:	
;main.c: 975: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	976
;main.c: 976: PWMD3L = 80;
	movlw	low(050h)
	movwf	(156)^080h	;volatile
	line	977
	
l2280:	
;main.c: 977: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	979
	
l2282:	
;main.c: 979: PWMCON0 = 0X48;
	movlw	low(048h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	980
;main.c: 980: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	981
	
l901:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_ledCtr

;; *************** function _ledCtr *****************
;; Defined at:
;;		line 378 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
;;		___lwdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	378
global __ptext3
__ptext3:	;psect for function _ledCtr
psect	text3
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	378
	global	__size_of_ledCtr
	__size_of_ledCtr	equ	__end_of_ledCtr-_ledCtr
	
_ledCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _ledCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	380
	
l3224:	
;main.c: 380: if(firstTime > 0 && firstTime < 150)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u3581
	goto	u3580
u3581:
	goto	l3232
u3580:
	
l3226:	
	movlw	low(096h)
	subwf	(_firstTime),w
	skipnc
	goto	u3591
	goto	u3590
u3591:
	goto	l3232
u3590:
	line	382
	
l3228:	
;main.c: 381: {
;main.c: 382: sumBatValue += pwStep;
	movf	(_pwStep),w
	addwf	(_sumBatValue),f
	skipnc
	incf	(_sumBatValue+1),f
	line	383
	
l3230:	
;main.c: 383: firstCheckTime++;
	incf	(_firstCheckTime),f
	line	384
;main.c: 384: }
	goto	l3240
	line	387
	
l3232:	
;main.c: 385: else
;main.c: 386: {
;main.c: 387: if(sumBatValue > 0)
	movf	((_sumBatValue)),w
iorwf	((_sumBatValue+1)),w
	btfsc	status,2
	goto	u3601
	goto	u3600
u3601:
	goto	l3236
u3600:
	line	389
	
l3234:	
;main.c: 388: {
;main.c: 389: prePwStep = sumBatValue/firstCheckTime;
	movf	(_firstCheckTime),w
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(_sumBatValue+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(_sumBatValue),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(_prePwStep)
	line	391
	
l3236:	
;main.c: 390: }
;main.c: 391: firstCheckTime = 0;
	clrf	(_firstCheckTime)
	line	392
	
l3238:	
;main.c: 392: sumBatValue = 0;
	clrf	(_sumBatValue)
	clrf	(_sumBatValue+1)
	line	394
	
l3240:	
;main.c: 393: }
;main.c: 394: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u3611
	goto	u3610
u3611:
	goto	l3244
u3610:
	line	396
	
l3242:	
;main.c: 395: {
;main.c: 396: firstTime--;
	decf	(_firstTime),f
	line	397
;main.c: 397: }
	goto	l765
	line	398
	
l3244:	
;main.c: 398: else if(overWorkTime > 0)
	movf	((_overWorkTime)),w
	btfsc	status,2
	goto	u3621
	goto	u3620
u3621:
	goto	l3252
u3620:
	line	400
	
l3246:	
;main.c: 399: {
;main.c: 400: overWorkTime--;
	decf	(_overWorkTime),f
	line	401
	
l3248:	
;main.c: 401: shiweiNum = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	402
	
l3250:	
;main.c: 402: geweiNum = 0x71;
	movlw	low(071h)
	movwf	(_geweiNum)
	line	403
;main.c: 403: }
	goto	l765
	line	404
	
l3252:	
;main.c: 404: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u3631
	goto	u3630
u3631:
	goto	l3260
u3630:
	line	406
	
l3254:	
;main.c: 405: {
;main.c: 406: showBatTime--;
	decf	(_showBatTime),f
	line	407
	
l3256:	
;main.c: 407: shiweiNum = numArray[prePwStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	408
	
l3258:	
;main.c: 408: geweiNum = numArray[prePwStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_prePwStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	409
;main.c: 409: }
	goto	l765
	line	410
	
l3260:	
;main.c: 410: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3641
	goto	u3640
u3641:
	goto	l3272
u3640:
	line	413
	
l3262:	
;main.c: 411: {
;main.c: 413: if(workStep < 10)
	movlw	low(0Ah)
	subwf	(_workStep),w
	skipnc
	goto	u3651
	goto	u3650
u3651:
	goto	l3268
u3650:
	line	415
	
l3264:	
;main.c: 414: {
;main.c: 415: shiweiNum = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	416
	
l3266:	
;main.c: 416: geweiNum = numArray[workStep];
	movf	(_workStep),w
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	417
;main.c: 417: }
	goto	l765
	line	420
	
l3268:	
;main.c: 418: else
;main.c: 419: {
;main.c: 420: shiweiNum = numArray[1];
	movlw	low((((_numArray+01h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	421
	
l3270:	
;main.c: 421: geweiNum = numArray[workStep - 10];
	movf	(_workStep),w
	addlw	low((((_numArray)-__stringbase)|8000h)+0F6h)
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	goto	l765
	line	425
	
l3272:	
;main.c: 425: else if(chrgFullFlag || (chrgFlag && count1s < 50))
	movf	((_chrgFullFlag)),w
	btfss	status,2
	goto	u3661
	goto	u3660
u3661:
	goto	l3278
u3660:
	
l3274:	
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3671
	goto	u3670
u3671:
	goto	l3280
u3670:
	
l3276:	
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u3681
	goto	u3680
u3681:
	goto	l3280
u3680:
	line	427
	
l3278:	
;main.c: 426: {
;main.c: 427: shiweiNum = numArray[prePwStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	428
;main.c: 428: geweiNum = numArray[prePwStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_prePwStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	429
;main.c: 429: }
	goto	l765
	line	432
	
l3280:	
;main.c: 430: else
;main.c: 431: {
;main.c: 432: shiweiNum = 0;
	clrf	(_shiweiNum)
	line	433
;main.c: 433: geweiNum = 0;
	clrf	(_geweiNum)
	line	435
	
l765:	
	return
	opt stack 0
GLOBAL	__end_of_ledCtr
	__end_of_ledCtr:
	signat	_ledCtr,89
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    3[COMMON] unsigned int 
;;  dividend        2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    1[BANK0 ] unsigned int 
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
;;      Locals:         0       3       0
;;      Temps:          0       0       0
;;      Totals:         4       3       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ledCtr
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwdiv.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___lwdiv
psect	text4
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l3106:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l3108:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u3331
	goto	u3330
u3331:
	goto	l3128
u3330:
	line	16
	
l3110:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l3114
	line	18
	
l3112:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l3114:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3341
	goto	u3340
u3341:
	goto	l3112
u3340:
	line	22
	
l3116:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l3118:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3355
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3355:
	skipc
	goto	u3351
	goto	u3350
u3351:
	goto	l3124
u3350:
	line	24
	
l3120:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l3122:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l3124:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l3126:	
	decfsz	(___lwdiv@counter),f
	goto	u3361
	goto	u3360
u3361:
	goto	l3116
u3360:
	line	30
	
l3128:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l1273:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
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
	
l3088:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l3090:	
	clrf	(___lbmod@rem)
	line	12
	
l3092:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u3305:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u3305
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l3094:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l3096:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u3311
	goto	u3310
u3311:
	goto	l3100
u3310:
	line	15
	
l3098:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l3100:	
	decfsz	(___lbmod@counter),f
	goto	u3321
	goto	u3320
u3321:
	goto	l3092
u3320:
	line	17
	
l3102:	
	movf	(___lbmod@rem),w
	line	18
	
l1205:	
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
psect	text6,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
	line	4
global __ptext6
__ptext6:	;psect for function ___lbdiv
psect	text6
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
	
l2356:	
	clrf	(___lbdiv@quotient)
	line	10
	
l2358:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1831
	goto	u1830
u1831:
	goto	l2376
u1830:
	line	11
	
l2360:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2364
	
l1194:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l2362:	
	incf	(___lbdiv@counter),f
	line	12
	
l2364:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1841
	goto	u1840
u1841:
	goto	l1194
u1840:
	line	16
	
l1196:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l2366:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1851
	goto	u1850
u1851:
	goto	l2372
u1850:
	line	19
	
l2368:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2370:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2372:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l2374:	
	decfsz	(___lbdiv@counter),f
	goto	u1861
	goto	u1860
u1861:
	goto	l1196
u1860:
	line	25
	
l2376:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1199:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 628 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	628
global __ptext7
__ptext7:	;psect for function _keyCtr
psect	text7
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	628
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	630
	
l2722:	
;main.c: 630: char kclick = keyRead(0x04 & (~PORTB));
	comf	(6),w	;volatile
	andlw	04h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	631
	
l2724:	
;main.c: 631: if(kclick == 1 && workStep > 0)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l2732
u2650:
	
l2726:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l2732
u2660:
	line	634
	
l2728:	
;main.c: 632: {
;main.c: 634: if(++workStep > 12)
	movlw	low(0Dh)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u2671
	goto	u2670
u2671:
	goto	l824
u2670:
	line	636
	
l2730:	
;main.c: 635: {
;main.c: 636: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l824
	line	641
	
l2732:	
;main.c: 641: else if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l824
u2680:
	line	643
	
l2734:	
;main.c: 642: {
;main.c: 643: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l822
u2690:
	line	645
	
l2736:	
;main.c: 644: {
;main.c: 645: workStep = 0;
	clrf	(_workStep)
	line	646
	
l2738:	
;main.c: 646: overWorkTime = 200;
	movlw	low(0C8h)
	movwf	(_overWorkTime)
	line	647
;main.c: 647: }
	goto	l824
	line	648
	
l822:	
	line	650
;main.c: 648: else
;main.c: 649: {
;main.c: 650: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	651
	
l2740:	
;main.c: 651: startTime = 30;
	movlw	low(01Eh)
	movwf	(_startTime)
	line	652
	
l2742:	
;main.c: 652: showBatTime = 0;
	clrf	(_showBatTime)
	line	653
	
l2744:	
;main.c: 653: overWorkTime = 0;
	clrf	(_overWorkTime)
	line	656
	
l824:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 586 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
	line	586
global __ptext8
__ptext8:	;psect for function _keyRead
psect	text8
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	586
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	588
	
l2224:	
;main.c: 588: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1601
	goto	u1600
u1601:
	goto	l2246
u1600:
	line	590
	
l2226:	
;main.c: 589: {
;main.c: 590: keyCount++;
	incf	(_keyCount),f
	line	591
	
l2228:	
;main.c: 591: if(overWorkTime > 0)
	movf	((_overWorkTime)),w
	btfsc	status,2
	goto	u1611
	goto	u1610
u1611:
	goto	l2232
u1610:
	line	593
	
l2230:	
;main.c: 592: {
;main.c: 593: overWorkTime = 200;
	movlw	low(0C8h)
	movwf	(_overWorkTime)
	line	594
;main.c: 594: }
	goto	l807
	line	595
	
l2232:	
;main.c: 595: else if(workStep == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u1621
	goto	u1620
u1621:
	goto	l807
u1620:
	line	597
	
l2234:	
;main.c: 596: {
;main.c: 597: showBatTime = 200;
	movlw	low(0C8h)
	movwf	(_showBatTime)
	line	599
	
l807:	
;main.c: 598: }
;main.c: 599: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1631
	goto	u1630
u1631:
	goto	l2250
u1630:
	line	601
	
l2236:	
;main.c: 600: {
;main.c: 601: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	line	602
	
l2238:	
;main.c: 602: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1641
	goto	u1640
u1641:
	goto	l2250
u1640:
	line	604
	
l2240:	
;main.c: 603: {
;main.c: 604: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	605
	
l2242:	
;main.c: 605: return 2;
	movlw	low(02h)
	goto	l811
	line	611
	
l2246:	
;main.c: 609: else
;main.c: 610: {
;main.c: 611: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1651
	goto	u1650
u1651:
	goto	l2256
u1650:
	line	613
	
l2248:	
;main.c: 612: {
;main.c: 613: keyCount = 0;
	clrf	(_keyCount)
	line	614
;main.c: 614: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	615
	
l2250:	
;main.c: 615: return 0;
	movlw	low(0)
	goto	l811
	line	617
	
l2256:	
;main.c: 617: else if(keyCount >= 6)
	movlw	low(06h)
	subwf	(_keyCount),w
	skipc
	goto	u1661
	goto	u1660
u1661:
	goto	l2264
u1660:
	line	619
	
l2258:	
;main.c: 618: {
;main.c: 619: keyCount = 0;
	clrf	(_keyCount)
	line	620
	
l2260:	
;main.c: 620: return 1;
	movlw	low(01h)
	goto	l811
	line	622
	
l2264:	
;main.c: 621: }
;main.c: 622: keyCount = 0;
	clrf	(_keyCount)
	goto	l2250
	line	625
	
l811:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 439 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	439
global __ptext9
__ptext9:	;psect for function _chrgCtr
psect	text9
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	439
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	441
	
l2526:	
;main.c: 441: if(PORTA & 0x20)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(134)^080h,(5)&7	;volatile
	goto	u2231
	goto	u2230
u2231:
	goto	l2644
u2230:
	line	443
	
l2528:	
;main.c: 442: {
;main.c: 443: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2241
	goto	u2240
u2241:
	goto	l2536
u2240:
	line	445
	
l2530:	
;main.c: 444: {
;main.c: 445: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	446
	
l2532:	
;main.c: 446: chrgMaxDuty = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgMaxDuty)
	line	447
	
l2534:	
;main.c: 447: chrgPwmStop();
	fcall	_chrgPwmStop
	line	449
	
l2536:	
;main.c: 448: }
;main.c: 449: workStep = 0;
	clrf	(_workStep)
	line	450
;main.c: 450: pwmStop();
	fcall	_pwmStop
	line	451
	
l2538:	
;main.c: 451: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	452
	
l2540:	
;main.c: 452: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u2251
	goto	u2250
u2251:
	goto	l2548
u2250:
	line	454
	
l2542:	
;main.c: 453: {
;main.c: 454: if(++count50s > 3000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	0Bh
	subwf	((_count50s+1)),w
	movlw	0B9h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u2261
	goto	u2260
u2261:
	goto	l2550
u2260:
	line	456
	
l2544:	
;main.c: 455: {
;main.c: 456: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	457
	
l2546:	
;main.c: 457: prePwStep++;
	incf	(_prePwStep),f
	goto	l2550
	line	462
	
l2548:	
;main.c: 460: else
;main.c: 461: {
;main.c: 462: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	464
	
l2550:	
;main.c: 463: }
;main.c: 464: if(protectFlag)
	movf	((_protectFlag)),w
	btfsc	status,2
	goto	u2271
	goto	u2270
u2271:
	goto	l2566
u2270:
	line	466
	
l2552:	
;main.c: 465: {
;main.c: 466: chrgPwmStop();
	fcall	_chrgPwmStop
	line	467
	
l2554:	
;main.c: 467: if(prePwStep < 99 && protectFlag == 1)
	movlw	low(063h)
	subwf	(_prePwStep),w
	skipnc
	goto	u2281
	goto	u2280
u2281:
	goto	l2562
u2280:
	
l2556:	
		decf	((_protectFlag)),w
	btfss	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l2562
u2290:
	line	469
	
l2558:	
;main.c: 468: {
;main.c: 469: if(++reChrgCount > 250)
	movlw	low(0FBh)
	incf	(_reChrgCount),f
	subwf	((_reChrgCount)),w
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l777
u2300:
	line	471
	
l2560:	
;main.c: 470: {
;main.c: 471: reChrgCount = 0;
	clrf	(_reChrgCount)
	line	472
;main.c: 472: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	473
;main.c: 473: protectFlag = 0;
	clrf	(_protectFlag)
	goto	l777
	line	478
	
l2562:	
;main.c: 476: else
;main.c: 477: {
;main.c: 478: reChrgCount = 0;
	clrf	(_reChrgCount)
	goto	l777
	line	482
	
l2566:	
;main.c: 481: }
;main.c: 482: if(batADValue < 1118)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Eh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2311
	goto	u2310
u2311:
	goto	l2572
u2310:
	line	484
	
l2568:	
;main.c: 483: {
;main.c: 484: chrgMode = 0;
	clrf	(_chrgMode)
	line	485
	
l2570:	
;main.c: 485: chrgMaxAD = 15;
	movlw	low(0Fh)
	movwf	(_chrgMaxAD)
	line	486
;main.c: 486: }
	goto	l2590
	line	487
	
l2572:	
;main.c: 487: else if(batADValue < 1530)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	0FAh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2321
	goto	u2320
u2321:
	goto	l2580
u2320:
	line	489
	
l2574:	
;main.c: 488: {
;main.c: 489: chrgMode = 1;
	clrf	(_chrgMode)
	incf	(_chrgMode),f
	line	490
	
l2576:	
;main.c: 490: chrgMaxAD = 77;
	movlw	low(04Dh)
	movwf	(_chrgMaxAD)
	line	491
	
l2578:	
;main.c: 491: lockCount = 0;
	clrf	(_lockCount)
	line	492
;main.c: 492: }
	goto	l2590
	line	493
	
l2580:	
;main.c: 493: else if(count1s == 0)
	movf	((_count1s)),w
	btfss	status,2
	goto	u2331
	goto	u2330
u2331:
	goto	l2590
u2330:
	line	495
	
l2582:	
;main.c: 494: {
;main.c: 495: if(++lockCount > 200)
	movlw	low(0C9h)
	incf	(_lockCount),f
	subwf	((_lockCount)),w
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l2588
u2340:
	line	497
	
l2584:	
;main.c: 496: {
;main.c: 497: lockCount = 0;
	clrf	(_lockCount)
	line	498
	
l2586:	
;main.c: 498: chrgMode = 2;
	movlw	low(02h)
	movwf	(_chrgMode)
	line	501
	
l2588:	
;main.c: 499: }
;main.c: 501: chrgMaxAD = 77;
	movlw	low(04Dh)
	movwf	(_chrgMaxAD)
	line	503
	
l2590:	
;main.c: 502: }
;main.c: 503: if(chrgMode == 2 && outADValue < 8)
		movlw	2
	xorwf	((_chrgMode)),w
	btfss	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l2600
u2350:
	
l2592:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	08h
	skipnz
	subwf	(_outADValue),w
	skipnc
	goto	u2361
	goto	u2360
u2361:
	goto	l2600
u2360:
	line	505
	
l2594:	
;main.c: 504: {
;main.c: 505: if(++fullCount >= 200)
	incf	(_fullCount),f
	skipnz
	incf	(_fullCount+1),f
	movlw	0
	subwf	((_fullCount+1)),w
	movlw	0C8h
	skipnz
	subwf	((_fullCount)),w
	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l2602
u2370:
	line	507
	
l2596:	
;main.c: 506: {
;main.c: 507: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	508
	
l2598:	
;main.c: 508: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l2602
	line	513
	
l2600:	
;main.c: 511: else
;main.c: 512: {
;main.c: 513: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	515
	
l2602:	
;main.c: 514: }
;main.c: 515: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u2381
	goto	u2380
u2381:
	goto	l2606
u2380:
	line	517
	
l2604:	
;main.c: 516: {
;main.c: 517: chrgPwmStop();
	fcall	_chrgPwmStop
	line	518
;main.c: 518: }
	goto	l777
	line	521
	
l2606:	
;main.c: 519: else
;main.c: 520: {
;main.c: 521: if(batADValue > 1550 || outADValue > (chrgMaxAD + 2))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	0Fh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2391
	goto	u2390
u2391:
	goto	l2610
u2390:
	
l2608:	
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
	goto	u2405
	movf	(_outADValue),w
	subwf	0+(??_chrgCtr+0)+0,w
u2405:
	skipnc
	goto	u2401
	goto	u2400
u2401:
	goto	l2622
u2400:
	line	523
	
l2610:	
;main.c: 522: {
;main.c: 523: if(++subTime > chrgWaitTime)
	incf	(_subTime),f
	movf	((_subTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u2411
	goto	u2410
u2411:
	goto	l2620
u2410:
	line	525
	
l2612:	
;main.c: 524: {
;main.c: 525: if(chrgMaxDuty > 1)
	movlw	low(02h)
	subwf	(_chrgMaxDuty),w
	skipc
	goto	u2421
	goto	u2420
u2421:
	goto	l2616
u2420:
	line	527
	
l2614:	
;main.c: 526: {
;main.c: 527: chrgMaxDuty--;
	decf	(_chrgMaxDuty),f
	line	529
	
l2616:	
;main.c: 528: }
;main.c: 529: subTime = 0;
	clrf	(_subTime)
	line	530
	
l2618:	
;main.c: 530: chrgWaitTime = 250;
	movlw	low(0FAh)
	movwf	(_chrgWaitTime)
	line	532
	
l2620:	
;main.c: 531: }
;main.c: 532: addTime = 0;
	clrf	(_addTime)
	line	533
;main.c: 533: }
	goto	l2636
	line	534
	
l2622:	
;main.c: 534: else if(batADValue < 1550 && outADValue < (chrgMaxAD - 4))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	0Eh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2431
	goto	u2430
u2431:
	goto	l2636
u2430:
	
l2624:	
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
	goto	u2445
	movf	0+(??_chrgCtr+0)+0,w
	subwf	(_outADValue),w
u2445:
	skipnc
	goto	u2441
	goto	u2440
u2441:
	goto	l2636
u2440:
	line	536
	
l2626:	
;main.c: 535: {
;main.c: 536: if(++addTime > chrgWaitTime)
	incf	(_addTime),f
	movf	((_addTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u2451
	goto	u2450
u2451:
	goto	l2634
u2450:
	line	538
	
l2628:	
;main.c: 537: {
;main.c: 538: addTime = 0;
	clrf	(_addTime)
	line	539
	
l2630:	
;main.c: 539: if(chrgMaxDuty < 75)
	movlw	low(04Bh)
	subwf	(_chrgMaxDuty),w
	skipnc
	goto	u2461
	goto	u2460
u2461:
	goto	l2634
u2460:
	line	541
	
l2632:	
;main.c: 540: {
;main.c: 541: chrgMaxDuty++;
	incf	(_chrgMaxDuty),f
	line	544
	
l2634:	
;main.c: 542: }
;main.c: 543: }
;main.c: 544: subTime = 0;
	clrf	(_subTime)
	line	548
	
l2636:	
;main.c: 545: }
;main.c: 548: if(chrgPwmFlag == 0)
	movf	((_chrgPwmFlag)),w
	btfss	status,2
	goto	u2471
	goto	u2470
u2471:
	goto	l2640
u2470:
	line	550
	
l2638:	
;main.c: 549: {
;main.c: 550: chrgPwmInit();
	fcall	_chrgPwmInit
	line	552
	
l2640:	
;main.c: 551: }
;main.c: 552: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	553
	
l2642:	
;main.c: 553: PWMD2L = chrgMaxDuty;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_chrgMaxDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	goto	l777
	line	559
	
l2644:	
;main.c: 559: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	560
;main.c: 560: chrgFullFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgFullFlag)
	line	561
;main.c: 561: protectFlag = 0;
	clrf	(_protectFlag)
	line	562
;main.c: 562: chrgMode = 0;
	clrf	(_chrgMode)
	line	563
;main.c: 563: chrgMaxAD = 0;
	clrf	(_chrgMaxAD)
	line	564
;main.c: 564: chrgMaxDuty = 0;
	clrf	(_chrgMaxDuty)
	line	565
;main.c: 566: lockLedStep = 0;
	clrf	(_lockCount)
	line	567
	
l2646:	
;main.c: 567: chrgWaitTime = 20;
	movlw	low(014h)
	movwf	(_chrgWaitTime)
	line	568
	
l2648:	
;main.c: 568: chrgPwmStop();
	fcall	_chrgPwmStop
	line	569
	
l2650:	
;main.c: 569: if(prePwStep > 0 && prePwStep > pwStep)
	movf	((_prePwStep)),w
	btfsc	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l2660
u2480:
	
l2652:	
	movf	(_prePwStep),w
	subwf	(_pwStep),w
	skipnc
	goto	u2491
	goto	u2490
u2491:
	goto	l2660
u2490:
	line	571
	
l2654:	
;main.c: 570: {
;main.c: 571: if(++count50s > 3000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	0Bh
	subwf	((_count50s+1)),w
	movlw	0B9h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l777
u2500:
	line	573
	
l2656:	
;main.c: 572: {
;main.c: 573: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	574
	
l2658:	
;main.c: 574: prePwStep--;
	decf	(_prePwStep),f
	goto	l777
	line	579
	
l2660:	
;main.c: 577: else
;main.c: 578: {
;main.c: 579: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	582
	
l777:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 983 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	983
global __ptext10
__ptext10:	;psect for function _pwmStop
psect	text10
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	983
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: [wreg+status,2+status,0]
	line	985
	
l2204:	
;main.c: 985: if(motorPwmFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_motorPwmFlag)),w
	btfsc	status,2
	goto	u1591
	goto	u1590
u1591:
	goto	l905
u1590:
	line	987
	
l2206:	
;main.c: 986: {
;main.c: 987: motorPwmFlag = 0;
	clrf	(_motorPwmFlag)
	line	988
	
l2208:	
;main.c: 988: PWMCON0 &= 0XF7;
	bcf	(21)+(3/8),(3)&7	;volatile
	line	989
	
l2210:	
;main.c: 989: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	991
	
l905:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_chrgPwmStop

;; *************** function _chrgPwmStop *****************
;; Defined at:
;;		line 955 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	955
global __ptext11
__ptext11:	;psect for function _chrgPwmStop
psect	text11
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	955
	global	__size_of_chrgPwmStop
	__size_of_chrgPwmStop	equ	__end_of_chrgPwmStop-_chrgPwmStop
	
_chrgPwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmStop: [wreg+status,2+status,0]
	line	957
	
l2196:	
;main.c: 957: if(chrgPwmFlag)
	movf	((_chrgPwmFlag)),w
	btfsc	status,2
	goto	u1581
	goto	u1580
u1581:
	goto	l897
u1580:
	line	959
	
l2198:	
;main.c: 958: {
;main.c: 959: chrgPwmFlag = 0;
	clrf	(_chrgPwmFlag)
	line	960
	
l2200:	
;main.c: 960: PWMCON0 &= 0xFB;
	bcf	(21)+(2/8),(2)&7	;volatile
	line	961
	
l2202:	
;main.c: 961: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	963
	
l897:	
	return
	opt stack 0
GLOBAL	__end_of_chrgPwmStop
	__end_of_chrgPwmStop:
	signat	_chrgPwmStop,89
	global	_chrgPwmInit

;; *************** function _chrgPwmInit *****************
;; Defined at:
;;		line 936 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
	line	936
global __ptext12
__ptext12:	;psect for function _chrgPwmInit
psect	text12
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	936
	global	__size_of_chrgPwmInit
	__size_of_chrgPwmInit	equ	__end_of_chrgPwmInit-_chrgPwmInit
	
_chrgPwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmInit: [wreg+status,2]
	line	938
	
l2212:	
;main.c: 938: chrgPwmFlag = 1;
	clrf	(_chrgPwmFlag)
	incf	(_chrgPwmFlag),f
	line	939
	
l2214:	
;main.c: 939: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	941
;main.c: 941: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	942
	
l2216:	
;main.c: 942: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	946
	
l2218:	
;main.c: 946: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	947
;main.c: 947: PWMD2L = 10;
	movlw	low(0Ah)
	movwf	(155)^080h	;volatile
	line	948
	
l2220:	
;main.c: 948: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	950
	
l2222:	
;main.c: 950: PWMCON0 = 0X04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	951
;main.c: 951: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	952
	
l893:	
	return
	opt stack 0
GLOBAL	__end_of_chrgPwmInit
	__end_of_chrgPwmInit:
	signat	_chrgPwmInit,89
	global	_checkOutA

;; *************** function _checkOutA *****************
;; Defined at:
;;		line 716 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	716
global __ptext13
__ptext13:	;psect for function _checkOutA
psect	text13
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	716
	global	__size_of_checkOutA
	__size_of_checkOutA	equ	__end_of_checkOutA-_checkOutA
	
_checkOutA:	
;incstack = 0
	opt	stack 4
; Regs used in _checkOutA: [wreg+status,2+status,0+pclath+cstack]
	line	718
	
l3132:	
;main.c: 718: test_adc = ADC_Sample(0, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	719
	
l3134:	
;main.c: 719: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l3160
u3370:
	line	721
	
l3136:	
;main.c: 720: {
;main.c: 721: if(chrgFlag && adresult > 210)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3381
	goto	u3380
u3381:
	goto	l3146
u3380:
	
l3138:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	0D3h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l3146
u3390:
	line	723
	
l3140:	
;main.c: 722: {
;main.c: 723: if(++overChrgTime > 10)
	movlw	low(0Bh)
	incf	(_overChrgTime),f
	subwf	((_overChrgTime)),w
	skipc
	goto	u3401
	goto	u3400
u3401:
	goto	l3148
u3400:
	line	725
	
l3142:	
;main.c: 724: {
;main.c: 725: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	726
	
l3144:	
;main.c: 726: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l3148
	line	732
	
l3146:	
;main.c: 730: else
;main.c: 731: {
;main.c: 732: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	734
	
l3148:	
;main.c: 733: }
;main.c: 734: outADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_outADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_outADValue)
	line	736
	
l3150:	
;main.c: 736: if(workStep && (outADValue > 600))
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3411
	goto	u3410
u3411:
	goto	l3158
u3410:
	
l3152:	
	movlw	02h
	subwf	(_outADValue+1),w
	movlw	059h
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3421
	goto	u3420
u3421:
	goto	l3158
u3420:
	line	738
	
l3154:	
;main.c: 737: {
;main.c: 738: if(++workOverOutTime > 50)
	movlw	low(033h)
	incf	(_workOverOutTime),f
	subwf	((_workOverOutTime)),w
	skipc
	goto	u3431
	goto	u3430
u3431:
	goto	l864
u3430:
	line	740
	
l3156:	
;main.c: 739: {
;main.c: 740: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	741
;main.c: 741: workStep = 0;
	clrf	(_workStep)
	goto	l864
	line	746
	
l3158:	
;main.c: 744: else
;main.c: 745: {
;main.c: 746: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	goto	l864
	line	753
	
l3160:	
;main.c: 751: else
;main.c: 752: {
;main.c: 753: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	754
;main.c: 754: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	755
	
l3162:	
;main.c: 755: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkOutA+0)+0),f
	u3837:
decfsz	(??_checkOutA+0)+0,f
	goto	u3837
opt asmopt_pop

	line	757
	
l864:	
	return
	opt stack 0
GLOBAL	__end_of_checkOutA
	__end_of_checkOutA:
	signat	_checkOutA,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 759 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	759
global __ptext14
__ptext14:	;psect for function _checkBatAD
psect	text14
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	759
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	761
	
l3164:	
;main.c: 761: test_adc = ADC_Sample(2, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(02h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	762
	
l3166:	
;main.c: 762: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3441
	goto	u3440
u3441:
	goto	l3196
u3440:
	line	764
	
l3168:	
;main.c: 763: {
;main.c: 764: batADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_batADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_batADValue)
	line	765
;main.c: 765: if(batADValue < 1117)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Dh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3451
	goto	u3450
u3451:
	goto	l3178
u3450:
	line	767
	
l3170:	
;main.c: 766: {
;main.c: 767: pwStep = 0;
	clrf	(_pwStep)
	line	768
	
l3172:	
;main.c: 768: if(++count8s > 800)
	incf	(_count8s),f
	skipnz
	incf	(_count8s+1),f
	movlw	03h
	subwf	((_count8s+1)),w
	movlw	021h
	skipnz
	subwf	((_count8s)),w
	skipc
	goto	u3461
	goto	u3460
u3461:
	goto	l3190
u3460:
	line	770
	
l3174:	
;main.c: 769: {
;main.c: 770: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	771
	
l3176:	
;main.c: 771: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	772
;main.c: 772: prePwStep = 0;
	clrf	(_prePwStep)
	line	773
;main.c: 773: workStep = 0;
	clrf	(_workStep)
	goto	l3190
	line	778
	
l3178:	
;main.c: 776: else
;main.c: 777: {
;main.c: 778: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	779
	
l3180:	
;main.c: 779: if(batADValue >= 1340)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	03Ch
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3471
	goto	u3470
u3471:
	goto	l3184
u3470:
	line	781
	
l3182:	
;main.c: 780: {
;main.c: 781: pwStep = ((batADValue - 1340) /2) + 13;
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
	line	782
;main.c: 782: }
	goto	l3186
	line	785
	
l3184:	
;main.c: 783: else
;main.c: 784: {
;main.c: 785: pwStep = (batADValue - 1117) / 16;
	movf	(_batADValue),w
	addlw	low(0FBA3h)
	movwf	(??_checkBatAD+0)+0
	movf	(_batADValue+1),w
	skipnc
	addlw	1
	addlw	high(0FBA3h)
	movwf	1+(??_checkBatAD+0)+0
	movlw	04h
u3485:
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	addlw	-1
	skipz
	goto	u3485
	movf	0+(??_checkBatAD+0)+0,w
	movwf	(_pwStep)
	line	787
	
l3186:	
;main.c: 786: }
;main.c: 787: if(pwStep > 99)
	movlw	low(064h)
	subwf	(_pwStep),w
	skipc
	goto	u3491
	goto	u3490
u3491:
	goto	l3190
u3490:
	line	789
	
l3188:	
;main.c: 788: {
;main.c: 789: pwStep = 99;
	movlw	low(063h)
	movwf	(_pwStep)
	line	792
	
l3190:	
;main.c: 790: }
;main.c: 791: }
;main.c: 792: if(chrgFlag && batADValue > 1861)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3501
	goto	u3500
u3501:
	goto	l3200
u3500:
	
l3192:	
	movlw	07h
	subwf	(_batADValue+1),w
	movlw	046h
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3511
	goto	u3510
u3511:
	goto	l3200
u3510:
	line	794
	
l3194:	
;main.c: 793: {
;main.c: 794: protectFlag = 1;
	clrf	(_protectFlag)
	incf	(_protectFlag),f
	goto	l3200
	line	799
	
l3196:	
;main.c: 797: else
;main.c: 798: {
;main.c: 799: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	800
;main.c: 800: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	801
	
l3198:	
;main.c: 801: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u3847:
decfsz	(??_checkBatAD+0)+0,f
	goto	u3847
opt asmopt_pop

	line	804
	
l3200:	
;main.c: 802: }
;main.c: 804: test_adc = ADC_Sample(1, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(01h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	805
	
l3202:	
;main.c: 805: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l3220
u3520:
	line	807
	
l3204:	
;main.c: 806: {
;main.c: 807: if(chrgFlag && adresult > 100)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l884
u3530:
	
l3206:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	065h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u3541
	goto	u3540
u3541:
	goto	l884
u3540:
	line	810
	
l3208:	
;main.c: 808: {
;main.c: 810: if(adresult > 810 || (batADValue - adresult) > 810)
	movlw	03h
	subwf	(_adresult+1),w	;volatile
	movlw	02Bh
	skipnz
	subwf	(_adresult),w	;volatile
	skipnc
	goto	u3551
	goto	u3550
u3551:
	goto	l3212
u3550:
	
l3210:	
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
	goto	u3561
	goto	u3560
u3561:
	goto	l3218
u3560:
	line	813
	
l3212:	
;main.c: 811: {
;main.c: 813: if(++countHalfFull > 250)
	movlw	low(0FBh)
	incf	(_countHalfFull),f
	subwf	((_countHalfFull)),w
	skipc
	goto	u3571
	goto	u3570
u3571:
	goto	l877
u3570:
	line	815
	
l3214:	
;main.c: 814: {
;main.c: 815: countHalfFull = 0;
	clrf	(_countHalfFull)
	line	816
	
l3216:	
;main.c: 816: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l884
	line	821
	
l3218:	
;main.c: 819: else
;main.c: 820: {
;main.c: 821: countHalfFull = 0;
	clrf	(_countHalfFull)
	goto	l884
	line	823
	
l877:	
	line	824
;main.c: 822: }
;main.c: 823: }
;main.c: 824: }
	goto	l884
	line	827
	
l3220:	
;main.c: 825: else
;main.c: 826: {
;main.c: 827: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	828
;main.c: 828: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	829
	
l3222:	
;main.c: 829: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u3857:
decfsz	(??_checkBatAD+0)+0,f
	goto	u3857
opt asmopt_pop

	line	832
	
l884:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 1078 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
	line	1078
global __ptext15
__ptext15:	;psect for function _ADC_Sample
psect	text15
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	1078
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	1080
	
l3016:	
;main.c: 1080: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1081
	
l3018:	
;main.c: 1081: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1082
;main.c: 1082: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	1084
	
l3020:	
;main.c: 1084: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u3151
	goto	u3150
u3151:
	goto	l3026
u3150:
	
l3022:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u3161
	goto	u3160
u3161:
	goto	l3026
u3160:
	line	1087
	
l3024:	
;main.c: 1085: {
;main.c: 1087: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1088
;main.c: 1088: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_ADC_Sample+0)+0),f
	u3867:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u3867
	nop2
opt asmopt_pop

	line	1089
;main.c: 1089: }
	goto	l3028
	line	1091
	
l3026:	
;main.c: 1090: else
;main.c: 1091: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1093
	
l3028:	
;main.c: 1093: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l3034
u3170:
	line	1095
	
l3030:	
;main.c: 1094: {
;main.c: 1095: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	1096
	
l3032:	
;main.c: 1096: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	1098
	
l3034:	
	line	1099
	
l3036:	
;main.c: 1099: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	1101
	
l3042:	
;main.c: 1100: {
;main.c: 1101: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u3185:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u3185
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	1102
# 1102 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1103
# 1103 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1104
# 1104 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1105
# 1105 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
psect	text15
	line	1106
	
l3044:	
;main.c: 1106: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	1108
	
l3046:	
;main.c: 1108: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	1109
;main.c: 1109: while (GODONE)
	goto	l919
	
l920:	
	line	1111
;main.c: 1110: {
;main.c: 1111: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	1113
;main.c: 1113: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u3191
	goto	u3190
u3191:
	goto	l919
u3190:
	line	1114
	
l3048:	
;main.c: 1114: return 0;
	movlw	low(0)
	goto	l922
	line	1115
	
l919:	
	line	1109
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u3201
	goto	u3200
u3201:
	goto	l920
u3200:
	line	1117
	
l3052:	
;main.c: 1115: }
;main.c: 1117: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l3054:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	1119
	
l3056:	
;main.c: 1119: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l3060
u3210:
	line	1121
	
l3058:	
;main.c: 1120: {
;main.c: 1121: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	1122
;main.c: 1122: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1123
;main.c: 1123: }
	goto	l925
	line	1124
	
l3060:	
;main.c: 1124: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u3225
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u3225:
	skipnc
	goto	u3221
	goto	u3220
u3221:
	goto	l3064
u3220:
	line	1125
	
l3062:	
;main.c: 1125: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l925
	line	1126
	
l3064:	
;main.c: 1126: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u3235
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u3235:
	skipnc
	goto	u3231
	goto	u3230
u3231:
	goto	l925
u3230:
	line	1127
	
l3066:	
;main.c: 1127: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1129
	
l925:	
;main.c: 1129: adsum += ad_temp;
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
	goto	u3241
	addwf	(ADC_Sample@adsum+1),f	;volatile
u3241:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3242
	addwf	(ADC_Sample@adsum+2),f	;volatile
u3242:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3243
	addwf	(ADC_Sample@adsum+3),f	;volatile
u3243:

	line	1099
	
l3068:	
	incf	(ADC_Sample@i),f
	
l3070:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u3251
	goto	u3250
u3251:
	goto	l3042
u3250:
	line	1131
	
l3072:	
;main.c: 1130: }
;main.c: 1131: adsum -= admax;
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
	goto	u3265
	goto	u3266
u3265:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3266:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3267
	goto	u3268
u3267:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3268:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3269
	goto	u3260
u3269:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3260:

	line	1132
;main.c: 1132: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u3275
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u3275
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u3275
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u3275:
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l929
u3270:
	line	1133
	
l3074:	
;main.c: 1133: adsum -= admin;
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
	goto	u3285
	goto	u3286
u3285:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3286:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3287
	goto	u3288
u3287:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3288:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3289
	goto	u3280
u3289:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3280:

	goto	l3076
	line	1134
	
l929:	
	line	1135
;main.c: 1134: else
;main.c: 1135: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1137
	
l3076:	
;main.c: 1137: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u3295:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u3290:
	addlw	-1
	skipz
	goto	u3295
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	1139
	
l3078:	
;main.c: 1139: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1140
	
l3080:	
;main.c: 1140: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	1141
	
l3082:	
;main.c: 1141: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1142
	
l3084:	
;main.c: 1142: return 0xA5;
	movlw	low(0A5h)
	line	1144
	
l922:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 1001 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
	line	1001
global __ptext16
__ptext16:	;psect for function _Sleep_Mode
psect	text16
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	1001
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 4
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	1003
	
l2868:	
;main.c: 1003: INTCON = 0;
	clrf	(11)	;volatile
	line	1005
;main.c: 1005: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	1007
;main.c: 1007: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	1008
	
l2870:	
;main.c: 1008: TRISA = 0x27;
	movlw	low(027h)
	movwf	(133)^080h	;volatile
	line	1009
	
l2872:	
;main.c: 1009: TRISB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	1011
;main.c: 1011: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	1012
;main.c: 1012: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	1013
	
l2874:	
;main.c: 1013: WPUB = 0x04;
	movlw	low(04h)
	movwf	(8)	;volatile
	line	1015
	
l2876:	
;main.c: 1015: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	1016
	
l2878:	
;main.c: 1016: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	1018
	
l2880:	
;main.c: 1018: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	1020
;main.c: 1020: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	1022
;main.c: 1022: IOCA = 0x20;
	movlw	low(020h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(137)^080h	;volatile
	line	1023
;main.c: 1023: IOCB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	1025
	
l2882:	
;main.c: 1025: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	1026
	
l2884:	
;main.c: 1026: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	1027
	
l2886:	
;main.c: 1027: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	1028
	
l2888:	
;main.c: 1028: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	1030
	
l2890:	
;main.c: 1030: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	1031
	
l2892:	
;main.c: 1031: PIR1 = 0;
	clrf	(13)	;volatile
	line	1032
	
l2894:	
;main.c: 1032: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	1034
	
l2896:	
;main.c: 1034: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	1035
	
l2898:	
;main.c: 1035: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	1036
	
l2900:	
;main.c: 1036: PORTB;
	movf	(6),w	;volatile
	line	1037
	
l2902:	
;main.c: 1037: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	1038
# 1038 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
clrwdt ;# 
	line	1040
# 1040 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
sleep ;# 
	line	1042
# 1042 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1043
# 1043 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
clrwdt ;# 
	line	1044
# 1044 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1045
# 1045 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1046
# 1046 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1047
# 1047 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1048
# 1048 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
psect	text16
	line	1049
	
l2904:	
;main.c: 1049: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u2951
	goto	u2950
u2951:
	goto	l908
u2950:
	
l2906:	
	bcf	(107/8),(107)&7	;volatile
	
l908:	
	line	1050
;main.c: 1050: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u2961
	goto	u2960
u2961:
	goto	l909
u2960:
	
l2908:	
	bcf	(88/8),(88)&7	;volatile
	
l909:	
	line	1051
;main.c: 1051: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u2971
	goto	u2970
u2971:
	goto	l2912
u2970:
	
l2910:	
	bcf	(105/8),(105)&7	;volatile
	line	1052
	
l2912:	
;main.c: 1052: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	1053
;main.c: 1053: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	1054
	
l2914:	
;main.c: 1054: Init_System();
	fcall	_Init_System
	line	1055
	
l2916:	
;main.c: 1055: AD_Init();
	fcall	_AD_Init
	line	1056
	
l911:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 843 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
	line	843
global __ptext17
__ptext17:	;psect for function _Init_System
psect	text17
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	843
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	845
	
l2164:	
# 845 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	846
# 846 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
clrwdt ;# 
psect	text17
	line	847
	
l2166:	
;main.c: 847: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	848
# 848 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
clrwdt ;# 
psect	text17
	line	849
	
l2168:	
;main.c: 849: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	851
	
l2170:	
;main.c: 851: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	852
	
l2172:	
;main.c: 852: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	853
	
l2174:	
;main.c: 853: WPUB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	855
	
l2176:	
;main.c: 855: TRISA = 0x27;
	movlw	low(027h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	856
	
l2178:	
;main.c: 856: TRISB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	858
;main.c: 858: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	859
;main.c: 859: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	863
	
l2180:	
;main.c: 863: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	864
	
l2182:	
;main.c: 864: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	865
	
l2184:	
;main.c: 865: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	867
	
l2186:	
;main.c: 867: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	868
	
l2188:	
;main.c: 868: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	869
	
l887:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 880 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
	line	880
global __ptext18
__ptext18:	;psect for function _AD_Init
psect	text18
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	880
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _AD_Init: [wreg+status,2]
	line	913
	
l2190:	
;main.c: 913: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	930
	
l2192:	
;main.c: 930: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	931
	
l2194:	
;main.c: 931: ANSEL0 = 0X07;
	movlw	low(07h)
	movwf	(147)^080h	;volatile
	line	932
;main.c: 932: ANSEL1 = 0x00;
	clrf	(148)^080h	;volatile
	line	933
	
l890:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 132 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
	line	132
global __ptext19
__ptext19:	;psect for function _Isr_Timer
psect	text19
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	132
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
	line	134
	
i1l2918:	
;main.c: 134: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u298_21
	goto	u298_20
u298_21:
	goto	i1l688
u298_20:
	line	136
	
i1l2920:	
;main.c: 135: {
;main.c: 136: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	137
	
i1l2922:	
;main.c: 137: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u299_21
	goto	u299_20
u299_21:
	goto	i1l2932
u299_20:
	line	139
	
i1l2924:	
;main.c: 138: {
;main.c: 139: intCount = 0;
	clrf	(_intCount)
	line	140
	
i1l2926:	
;main.c: 140: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	141
	
i1l2928:	
;main.c: 141: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u300_21
	goto	u300_20
u300_21:
	goto	i1l2932
u300_20:
	line	143
	
i1l2930:	
;main.c: 142: {
;main.c: 143: count1s = 0;
	clrf	(_count1s)
	line	146
	
i1l2932:	
;main.c: 144: }
;main.c: 145: }
;main.c: 146: ledShow();
	fcall	_ledShow
	line	147
	
i1l2934:	
;main.c: 147: intCount10++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_intCount10),f
	line	150
	
i1l688:	
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
;;		line 201 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
	line	201
global __ptext20
__ptext20:	;psect for function _ledShow
psect	text20
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	201
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 4
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	203
	
i1l2424:	
;main.c: 203: if(++ledCntTime > 5)
	movlw	low(06h)
	incf	(_ledCntTime),f
	subwf	((_ledCntTime)),w
	skipc
	goto	u194_21
	goto	u194_20
u194_21:
	goto	i1l745
u194_20:
	line	205
	
i1l2426:	
;main.c: 204: {
;main.c: 205: ledCntTime = 0;
	clrf	(_ledCntTime)
	line	206
	
i1l2428:	
;main.c: 206: if(++ledCnt > 16)
	movlw	low(011h)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u195_21
	goto	u195_20
u195_21:
	goto	i1l2432
u195_20:
	line	208
	
i1l2430:	
;main.c: 207: {
;main.c: 208: ledCnt = 0;
	clrf	(_ledCnt)
	line	210
	
i1l2432:	
;main.c: 209: }
;main.c: 210: PORTA &= 0xE7;
	movlw	low(0E7h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	211
	
i1l2434:	
;main.c: 211: PORTB &= 0xDC;
	movlw	low(0DCh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(6),f	;volatile
	line	212
	
i1l2436:	
;main.c: 212: TRISA |= 0x18;
	movlw	low(018h)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	213
	
i1l2438:	
;main.c: 213: TRISB |= 0x23;
	movlw	low(023h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(5),f	;volatile
	line	214
;main.c: 214: switch(ledCnt)
	goto	i1l2488
	line	216
;main.c: 215: {
;main.c: 216: case 1:
	
i1l709:	
	line	217
;main.c: 217: if(shiweiNum & 0x01)
	btfss	(_shiweiNum),(0)&7
	goto	u196_21
	goto	u196_20
u196_21:
	goto	i1l745
u196_20:
	line	219
	
i1l2440:	
;main.c: 218: {
;main.c: 219: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	220
;main.c: 220: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	221
;main.c: 221: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	222
;main.c: 222: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	goto	i1l745
	line	225
;main.c: 225: case 2:
	
i1l712:	
	line	226
;main.c: 226: if(shiweiNum & 0x02)
	btfss	(_shiweiNum),(1)&7
	goto	u197_21
	goto	u197_20
u197_21:
	goto	i1l745
u197_20:
	line	228
	
i1l2442:	
;main.c: 227: {
;main.c: 228: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	229
;main.c: 229: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	230
;main.c: 230: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	231
;main.c: 231: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	goto	i1l745
	line	234
;main.c: 234: case 3:
	
i1l714:	
	line	235
;main.c: 235: if(shiweiNum & 0x04)
	btfss	(_shiweiNum),(2)&7
	goto	u198_21
	goto	u198_20
u198_21:
	goto	i1l745
u198_20:
	line	237
	
i1l2444:	
;main.c: 236: {
;main.c: 237: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	238
;main.c: 238: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	239
;main.c: 239: RB5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	line	240
;main.c: 240: RA3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l745
	line	243
;main.c: 243: case 4:
	
i1l716:	
	line	244
;main.c: 244: if(shiweiNum & 0x08)
	btfss	(_shiweiNum),(3)&7
	goto	u199_21
	goto	u199_20
u199_21:
	goto	i1l745
u199_20:
	line	246
	
i1l2446:	
;main.c: 245: {
;main.c: 246: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	247
;main.c: 247: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	248
;main.c: 248: RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	249
;main.c: 249: RA3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l745
	line	252
;main.c: 252: case 5:
	
i1l718:	
	line	253
;main.c: 253: if(shiweiNum & 0x10)
	btfss	(_shiweiNum),(4)&7
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l745
u200_20:
	line	255
	
i1l2448:	
;main.c: 254: {
;main.c: 255: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	256
;main.c: 256: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	257
;main.c: 257: RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	258
;main.c: 258: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l745
	line	261
;main.c: 261: case 6:
	
i1l720:	
	line	262
;main.c: 262: if(shiweiNum & 0x20)
	btfss	(_shiweiNum),(5)&7
	goto	u201_21
	goto	u201_20
u201_21:
	goto	i1l745
u201_20:
	line	264
	
i1l2450:	
;main.c: 263: {
;main.c: 264: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	265
;main.c: 265: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	266
;main.c: 266: RB5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	line	267
;main.c: 267: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l745
	line	270
;main.c: 270: case 7:
	
i1l722:	
	line	271
;main.c: 271: if(shiweiNum & 0x40)
	btfss	(_shiweiNum),(6)&7
	goto	u202_21
	goto	u202_20
u202_21:
	goto	i1l745
u202_20:
	line	273
	
i1l2452:	
;main.c: 272: {
;main.c: 273: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	274
;main.c: 274: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	275
;main.c: 275: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	276
;main.c: 276: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l745
	line	279
;main.c: 279: case 8:
	
i1l724:	
	line	280
;main.c: 280: if(geweiNum & 0x01)
	btfss	(_geweiNum),(0)&7
	goto	u203_21
	goto	u203_20
u203_21:
	goto	i1l745
u203_20:
	line	282
	
i1l2454:	
;main.c: 281: {
;main.c: 282: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	283
;main.c: 283: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	284
;main.c: 284: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	285
;main.c: 285: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	goto	i1l745
	line	288
;main.c: 288: case 9:
	
i1l726:	
	line	289
;main.c: 289: if(geweiNum & 0x02)
	btfss	(_geweiNum),(1)&7
	goto	u204_21
	goto	u204_20
u204_21:
	goto	i1l745
u204_20:
	line	291
	
i1l2456:	
;main.c: 290: {
;main.c: 291: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	292
;main.c: 292: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	293
;main.c: 293: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	294
;main.c: 294: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	goto	i1l745
	line	297
;main.c: 297: case 10:
	
i1l728:	
	line	298
;main.c: 298: if(geweiNum & 0x04)
	btfss	(_geweiNum),(2)&7
	goto	u205_21
	goto	u205_20
u205_21:
	goto	i1l745
u205_20:
	line	300
	
i1l2458:	
;main.c: 299: {
;main.c: 300: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	301
;main.c: 301: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	302
;main.c: 302: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	303
;main.c: 303: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	goto	i1l745
	line	306
;main.c: 306: case 11:
	
i1l730:	
	line	307
;main.c: 307: if(geweiNum & 0x08)
	btfss	(_geweiNum),(3)&7
	goto	u206_21
	goto	u206_20
u206_21:
	goto	i1l745
u206_20:
	line	309
	
i1l2460:	
;main.c: 308: {
;main.c: 309: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	310
;main.c: 310: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	311
;main.c: 311: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	312
;main.c: 312: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	goto	i1l745
	line	315
;main.c: 315: case 12:
	
i1l732:	
	line	316
;main.c: 316: if(geweiNum & 0x10)
	btfss	(_geweiNum),(4)&7
	goto	u207_21
	goto	u207_20
u207_21:
	goto	i1l745
u207_20:
	line	318
	
i1l2462:	
;main.c: 317: {
;main.c: 318: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	319
;main.c: 319: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	320
;main.c: 320: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	321
;main.c: 321: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	goto	i1l745
	line	324
;main.c: 324: case 13:
	
i1l734:	
	line	325
;main.c: 325: if(geweiNum & 0x20)
	btfss	(_geweiNum),(5)&7
	goto	u208_21
	goto	u208_20
u208_21:
	goto	i1l745
u208_20:
	line	327
	
i1l2464:	
;main.c: 326: {
;main.c: 327: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	328
;main.c: 328: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	329
;main.c: 329: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(49/8),(49)&7	;volatile
	line	330
;main.c: 330: RA3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l745
	line	333
;main.c: 333: case 0:
	
i1l736:	
	line	334
;main.c: 334: if(geweiNum & 0x40)
	btfss	(_geweiNum),(6)&7
	goto	u209_21
	goto	u209_20
u209_21:
	goto	i1l745
u209_20:
	line	336
	
i1l2466:	
;main.c: 335: {
;main.c: 336: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	337
;main.c: 337: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	338
;main.c: 338: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(49/8),(49)&7	;volatile
	line	339
;main.c: 339: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l745
	line	343
	
i1l2468:	
;main.c: 343: if(chrgFlag == 0 && RB2 == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u210_21
	goto	u210_20
u210_21:
	goto	i1l745
u210_20:
	
i1l2470:	
	btfsc	(50/8),(50)&7	;volatile
	goto	u211_21
	goto	u211_20
u211_21:
	goto	i1l745
u211_20:
	line	345
	
i1l2472:	
;main.c: 344: {
;main.c: 345: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	346
;main.c: 346: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	347
;main.c: 347: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	348
;main.c: 348: RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	goto	i1l745
	line	352
	
i1l2474:	
;main.c: 352: if(chrgFlag == 0 && RB2 == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u212_21
	goto	u212_20
u212_21:
	goto	i1l745
u212_20:
	
i1l2476:	
	btfsc	(50/8),(50)&7	;volatile
	goto	u213_21
	goto	u213_20
u213_21:
	goto	i1l745
u213_20:
	goto	i1l2472
	line	361
	
i1l2480:	
;main.c: 361: if(chrgFlag == 0 && RB2 == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u214_21
	goto	u214_20
u214_21:
	goto	i1l745
u214_20:
	
i1l2482:	
	btfsc	(50/8),(50)&7	;volatile
	goto	u215_21
	goto	u215_20
u215_21:
	goto	i1l745
u215_20:
	goto	i1l2472
	line	214
	
i1l2488:	
	movf	(_ledCnt),w
	; Switch size 1, requested type "space"
; Number of cases is 17, Range of values is 0 to 16
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           23     6 (fixed)
; simple_byte           52    27 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	17
	subwf	fsr,w
skipnc
goto i1l745
movlw high(i1S3362)
movwf pclath
	movlw low(i1S3362)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S3362:
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
	ljmp	i1l2468
	ljmp	i1l2474
	ljmp	i1l2480
psect	text20

	line	375
	
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
