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
	FNCALL	_main,_chrgCtr
	FNCALL	_main,_keyCtr
	FNCALL	_main,_setBatStep
	FNCALL	_main,_workCtr
	FNCALL	_workCtr,___lbdiv
	FNCALL	_workCtr,___lbmod
	FNCALL	_workCtr,_pwmInit
	FNCALL	_workCtr,_pwmStop
	FNCALL	_setBatStep,___lwdiv
	FNCALL	_keyCtr,_keyRead
	FNCALL	_checkBatAD,_ADC_Sample
	FNCALL	_checkBatAD,___ftdiv
	FNCALL	_checkBatAD,___fttol
	FNCALL	_checkBatAD,___lwtoft
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftdiv,___ftpack
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
	file	"C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
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
	global	_showBatStep
	global	_workStep
	global	_chrgFlag
	global	_count30s
	global	_count900s
	global	_lowShanTime
	global	_power_ad
	global	_result
	global	_lowBatTime
	global	_curBatStep
	global	_motorPwmFlag
	global	_sleepTime
	global	_lowBatFlag
	global	_ledCntTime
	global	_showBatTime
	global	_longPressFlag
	global	_keyCount
	global	_ledCnt
	global	_intCount10
	global	_IntFlag
	global	_count1s
	global	_intCount
	global	_test_adc
	global	_adresult
	global	_baiweiNum
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_baiweiNum:
       ds      1

	global	_geweiNum
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
	file	"D30_062B_SOP14.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_showBatStep:
       ds      1

_workStep:
       ds      1

_chrgFlag:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_count30s:
       ds      2

_count900s:
       ds      2

_lowShanTime:
       ds      2

_power_ad:
       ds      2

_result:
       ds      2

_lowBatTime:
       ds      1

_curBatStep:
       ds      1

_motorPwmFlag:
       ds      1

_sleepTime:
       ds      1

_lowBatFlag:
       ds      1

_ledCntTime:
       ds      1

_showBatTime:
       ds      1

_longPressFlag:
       ds      1

_keyCount:
       ds      1

_ledCnt:
       ds      1

_intCount10:
       ds      1

_IntFlag:
       ds      1

_count1s:
       ds      1

_intCount:
       ds      1

_test_adc:
       ds      1

_adresult:
       ds      2

	file	"D30_062B_SOP14.as"
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
	movlw	low((__pbssBANK0)+01Bh)
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
?_chrgCtr:	; 1 bytes @ 0x0
?_checkBatAD:	; 1 bytes @ 0x0
?_setBatStep:	; 1 bytes @ 0x0
?_keyCtr:	; 1 bytes @ 0x0
?_workCtr:	; 1 bytes @ 0x0
?_Sleep_Mode:	; 1 bytes @ 0x0
?_pwmStop:	; 1 bytes @ 0x0
?_pwmInit:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_keyRead:	; 1 bytes @ 0x0
	ds	3
??_Init_System:	; 1 bytes @ 0x3
??_AD_Init:	; 1 bytes @ 0x3
??_chrgCtr:	; 1 bytes @ 0x3
??_Sleep_Mode:	; 1 bytes @ 0x3
??_pwmStop:	; 1 bytes @ 0x3
??_pwmInit:	; 1 bytes @ 0x3
?_ADC_Sample:	; 1 bytes @ 0x3
??_keyRead:	; 1 bytes @ 0x3
?___lbdiv:	; 1 bytes @ 0x3
?___lbmod:	; 1 bytes @ 0x3
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x3
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x3
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
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x3
	ds	1
??_keyCtr:	; 1 bytes @ 0x4
??_ADC_Sample:	; 1 bytes @ 0x4
??___lbdiv:	; 1 bytes @ 0x4
??___lbmod:	; 1 bytes @ 0x4
	global	keyCtr@kclick
keyCtr@kclick:	; 1 bytes @ 0x4
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x4
	ds	1
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x5
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x5
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x5
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x6
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x6
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x6
	ds	1
??_setBatStep:	; 1 bytes @ 0x7
??___lwdiv:	; 1 bytes @ 0x7
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x7
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x7
	ds	1
??_workCtr:	; 1 bytes @ 0x8
??_main:	; 1 bytes @ 0x8
??___lwtoft:	; 1 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??___ftpack:	; 1 bytes @ 0x0
	global	ADC_Sample@j
ADC_Sample@j:	; 1 bytes @ 0x0
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x0
	ds	1
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1
	ds	1
	global	ADC_Sample@i
ADC_Sample@i:	; 1 bytes @ 0x2
	ds	1
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x3
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x3
	global	ADC_Sample@adsum
ADC_Sample@adsum:	; 4 bytes @ 0x3
	ds	3
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x6
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x6
	ds	1
	global	ADC_Sample@admin
ADC_Sample@admin:	; 2 bytes @ 0x7
	ds	2
	global	ADC_Sample@admax
ADC_Sample@admax:	; 2 bytes @ 0x9
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x9
	ds	2
	global	ADC_Sample@ad_temp
ADC_Sample@ad_temp:	; 2 bytes @ 0xB
	ds	1
??___ftdiv:	; 1 bytes @ 0xC
	ds	3
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0xF
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x10
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x13
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x14
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x15
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x15
	ds	4
??___fttol:	; 1 bytes @ 0x19
	ds	3
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x1C
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x1D
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x21
	ds	1
??_checkBatAD:	; 1 bytes @ 0x22
	ds	1
	global	checkBatAD@power_temp
checkBatAD@power_temp:	; 4 bytes @ 0x23
	ds	4
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    14
;!    Data        0
;!    BSS         30
;!    Persistent  4
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      11
;!    BANK0            80     39      70
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _workCtr->___lbmod
;!    _setBatStep->___lwdiv
;!    _keyCtr->_keyRead
;!    _checkBatAD->_ADC_Sample
;!    ___lwtoft->___ftpack
;!    ___ftdiv->___ftpack
;!
;!Critical Paths under _Isr_Timer in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_checkBatAD
;!    _setBatStep->___lwdiv
;!    _checkBatAD->___fttol
;!    ___lwtoft->___ftpack
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

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    6464
;!                            _AD_Init
;!                        _Init_System
;!                         _Sleep_Mode
;!                         _checkBatAD
;!                            _chrgCtr
;!                             _keyCtr
;!                         _setBatStep
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              0     0      0     427
;!                            ___lbdiv
;!                            ___lbmod
;!                            _pwmInit
;!                            _pwmStop
;! ---------------------------------------------------------------------------------
;! (2) _pwmStop                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _pwmInit                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___lbmod                                              5     4      1     212
;!                                              3 COMMON     5     4      1
;! ---------------------------------------------------------------------------------
;! (2) ___lbdiv                                              4     3      1     215
;!                                              3 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _setBatStep                                           0     0      0     501
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     501
;!                                              3 COMMON     4     0      4
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _keyCtr                                               1     1      0      67
;!                                              4 COMMON     1     1      0
;!                            _keyRead
;! ---------------------------------------------------------------------------------
;! (2) _keyRead                                              1     1      0      22
;!                                              3 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkBatAD                                           5     5      0    5469
;!                                             34 BANK0      5     5      0
;!                         _ADC_Sample
;!                            ___ftdiv
;!                            ___fttol
;!                           ___lwtoft
;! ---------------------------------------------------------------------------------
;! (2) ___lwtoft                                             3     0      3    2044
;!                                              3 BANK0      3     0      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             13     9      4     305
;!                                             21 BANK0     13     9      4
;!                            ___ftdiv (ARG)
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftdiv                                             15     9      6    2504
;!                                              6 BANK0     15     9      6
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftpack                                             8     3      5    1948
;!                                              3 COMMON     5     0      5
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Sample                                          18    17      1     582
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
;!     ___ftdiv
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___fttol
;!       ___ftdiv (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___lwtoft
;!       ___ftpack
;!   _chrgCtr
;!   _keyCtr
;!     _keyRead
;!   _setBatStep
;!     ___lwdiv
;!   _workCtr
;!     ___lbdiv
;!     ___lbmod
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
;!BANK0               50     27      46       4       87.5%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      51       7        0.0%
;!DATA                 0      0      51       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 118 in file "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
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
;;		_chrgCtr
;;		_keyCtr
;;		_setBatStep
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
	line	118
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
	line	118
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	120
	
l2866:	
;main.c: 120: Init_System();
	fcall	_Init_System
	line	121
;main.c: 121: AD_Init();
	fcall	_AD_Init
	line	122
	
l2868:	
;main.c: 122: shiweiNum = geweiNum = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_geweiNum)
	movwf	(_shiweiNum)
	line	123
	
l2870:	
;main.c: 123: baiweiNum = 1;
	clrf	(_baiweiNum)
	incf	(_baiweiNum),f
	line	124
	
l2872:	
;main.c: 124: firstTime = 200;
	movlw	low(0C8h)
	movwf	(_firstTime)
	line	125
;main.c: 125: while (1)
	
l619:	
	line	127
# 127 "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
clrwdt ;# 
psect	maintext
	line	128
	
l2874:	
;main.c: 128: if(intCount10 > 10)
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_intCount10),w
	skipc
	goto	u3011
	goto	u3010
u3011:
	goto	l2878
u3010:
	line	130
	
l2876:	
;main.c: 129: {
;main.c: 130: intCount10 = 0;
	clrf	(_intCount10)
	line	132
	
l2878:	
;main.c: 131: }
;main.c: 132: if(!IntFlag)
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l2882
u3020:
	goto	l619
	line	134
	
l2882:	
;main.c: 134: IntFlag = 0;
	clrf	(_IntFlag)
	line	135
	
l2884:	
;main.c: 135: chrgCtr();
	fcall	_chrgCtr
	line	136
	
l2886:	
;main.c: 136: checkBatAD();
	fcall	_checkBatAD
	line	137
	
l2888:	
;main.c: 137: setBatStep();
	fcall	_setBatStep
	line	138
	
l2890:	
;main.c: 138: if(chrgFlag == 0 && lowBatFlag == 0 && firstTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l2898
u3030:
	
l2892:	
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l2898
u3040:
	
l2894:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3051
	goto	u3050
u3051:
	goto	l2898
u3050:
	line	140
	
l2896:	
;main.c: 139: {
;main.c: 140: keyCtr();
	fcall	_keyCtr
	line	142
	
l2898:	
;main.c: 141: }
;main.c: 142: workCtr();
	fcall	_workCtr
	line	143
	
l2900:	
;main.c: 143: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && showBatTime == 0 )
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l2918
u3060:
	
l2902:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u3071
	goto	u3070
u3071:
	goto	l2918
u3070:
	
l2904:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_keyCount)),w
	btfss	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l2918
u3080:
	
l2906:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3091
	goto	u3090
u3091:
	goto	l2918
u3090:
	
l2908:	
	movf	((_showBatTime)),w
	btfss	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l2918
u3100:
	line	145
	
l2910:	
;main.c: 144: {
;main.c: 145: baiweiNum = 0;
	clrf	(_baiweiNum)
	line	146
;main.c: 146: shiweiNum = geweiNum = 0;
	clrf	(_geweiNum)
	clrf	(_shiweiNum)
	line	147
	
l2912:	
;main.c: 147: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u3111
	goto	u3110
u3111:
	goto	l619
u3110:
	line	149
	
l2914:	
;main.c: 148: {
;main.c: 149: sleepTime = 0;
	clrf	(_sleepTime)
	line	150
	
l2916:	
;main.c: 150: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l619
	line	155
	
l2918:	
;main.c: 153: else
;main.c: 154: {
;main.c: 155: sleepTime = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_sleepTime)
	goto	l619
	global	start
	ljmp	start
	opt stack 0
	line	158
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 447 in file "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
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
;;		___lbdiv
;;		___lbmod
;;		_pwmInit
;;		_pwmStop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	447
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
	line	447
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	449
	
l2456:	
;main.c: 449: if(workStep > 0 && count1s == 0 && ++count900s >= 900)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2311
	goto	u2310
u2311:
	goto	l2464
u2310:
	
l2458:	
	movf	((_count1s)),w
	btfss	status,2
	goto	u2321
	goto	u2320
u2321:
	goto	l2464
u2320:
	
l2460:	
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	movlw	03h
	subwf	((_count900s+1)),w
	movlw	084h
	skipnz
	subwf	((_count900s)),w
	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l2464
u2330:
	line	451
	
l2462:	
;main.c: 450: {
;main.c: 451: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	452
;main.c: 452: workStep = 0;
	clrf	(_workStep)
	line	454
	
l2464:	
;main.c: 453: }
;main.c: 454: if(lowShanTime > 0)
	movf	((_lowShanTime)),w
iorwf	((_lowShanTime+1)),w
	btfsc	status,2
	goto	u2341
	goto	u2340
u2341:
	goto	l2470
u2340:
	line	456
	
l2466:	
;main.c: 455: {
;main.c: 456: if(--lowShanTime == 0)
	movlw	01h
	subwf	(_lowShanTime),f
	movlw	0
	skipc
	decf	(_lowShanTime+1),f
	subwf	(_lowShanTime+1),f
	movf	(((_lowShanTime))),w
iorwf	(((_lowShanTime+1))),w
	btfss	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l2470
u2350:
	line	458
	
l2468:	
;main.c: 457: {
;main.c: 458: workStep = 0;
	clrf	(_workStep)
	line	461
	
l2470:	
;main.c: 459: }
;main.c: 460: }
;main.c: 461: if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l2474
u2360:
	line	463
	
l2472:	
;main.c: 462: {
;main.c: 463: showBatTime--;
	decf	(_showBatTime),f
	line	465
	
l2474:	
;main.c: 464: }
;main.c: 465: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u2371
	goto	u2370
u2371:
	goto	l2488
u2370:
	line	467
	
l2476:	
;main.c: 466: {
;main.c: 467: firstTime--;
	decf	(_firstTime),f
	line	468
	
l2478:	
;main.c: 468: if(showBatStep < curBatStep)
	movf	(_curBatStep),w
	subwf	(_showBatStep),w
	skipnc
	goto	u2381
	goto	u2380
u2381:
	goto	l2482
u2380:
	line	470
	
l2480:	
;main.c: 469: {
;main.c: 470: showBatStep = curBatStep;
	movf	(_curBatStep),w
	movwf	(_showBatStep)
	line	472
	
l2482:	
;main.c: 471: }
;main.c: 472: shiweiNum = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	473
	
l2484:	
;main.c: 473: geweiNum = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	474
	
l2486:	
;main.c: 474: baiweiNum = 1;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_baiweiNum)
	incf	(_baiweiNum),f
	line	475
;main.c: 475: }
	goto	l731
	line	476
	
l2488:	
;main.c: 476: else if(chrgFlag || showBatTime > 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2391
	goto	u2390
u2391:
	goto	l2492
u2390:
	
l2490:	
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2401
	goto	u2400
u2401:
	goto	l2508
u2400:
	line	478
	
l2492:	
;main.c: 477: {
;main.c: 478: if(showBatStep > 99)
	movlw	low(064h)
	subwf	(_showBatStep),w
	skipc
	goto	u2411
	goto	u2410
u2411:
	goto	l2496
u2410:
	line	480
	
l2494:	
;main.c: 479: {
;main.c: 480: baiweiNum = numArray[1];
	movlw	low((((_numArray+01h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_baiweiNum)
	line	481
;main.c: 481: shiweiNum = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	482
;main.c: 482: geweiNum = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	483
;main.c: 483: }
	goto	l731
	line	484
	
l2496:	
;main.c: 484: else if(showBatStep > 9)
	movlw	low(0Ah)
	subwf	(_showBatStep),w
	skipc
	goto	u2421
	goto	u2420
u2421:
	goto	l2504
u2420:
	line	486
	
l2498:	
;main.c: 485: {
;main.c: 486: baiweiNum = 0;
	clrf	(_baiweiNum)
	line	487
	
l2500:	
;main.c: 487: shiweiNum = numArray[showBatStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_showBatStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	488
	
l2502:	
;main.c: 488: geweiNum = numArray[showBatStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_showBatStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	489
;main.c: 489: }
	goto	l731
	line	492
	
l2504:	
;main.c: 490: else
;main.c: 491: {
;main.c: 492: baiweiNum = 0;
	clrf	(_baiweiNum)
	line	493
;main.c: 493: shiweiNum = 0;
	clrf	(_shiweiNum)
	line	494
	
l2506:	
;main.c: 494: geweiNum = numArray[showBatStep];
	movf	(_showBatStep),w
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	goto	l731
	line	495
	
l715:	
	line	496
;main.c: 495: }
;main.c: 496: }
	goto	l731
	line	497
	
l2508:	
;main.c: 497: else if(workStep == 0 || (lowShanTime > 0 && count1s < 50))
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2431
	goto	u2430
u2431:
	goto	l2514
u2430:
	
l2510:	
	movf	((_lowShanTime)),w
iorwf	((_lowShanTime+1)),w
	btfsc	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l2520
u2440:
	
l2512:	
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u2451
	goto	u2450
u2451:
	goto	l2520
u2450:
	line	499
	
l2514:	
;main.c: 498: {
;main.c: 499: shiweiNum = 0;
	clrf	(_shiweiNum)
	line	500
;main.c: 500: geweiNum = 0;
	clrf	(_geweiNum)
	line	501
;main.c: 501: baiweiNum = 0;
	clrf	(_baiweiNum)
	line	502
	
l2516:	
;main.c: 502: pwmStop();
	fcall	_pwmStop
	line	503
	
l2518:	
;main.c: 503: count900s = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	504
;main.c: 504: }
	goto	l731
	line	505
	
l2520:	
;main.c: 505: else if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u2461
	goto	u2460
u2461:
	goto	l2534
u2460:
	line	507
	
l2522:	
;main.c: 506: {
;main.c: 507: shiweiNum = numArray[4];
	movlw	low((((_numArray+04h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	508
;main.c: 508: geweiNum = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	509
	
l2524:	
;main.c: 509: baiweiNum = 1;
	clrf	(_baiweiNum)
	incf	(_baiweiNum),f
	line	510
	
l2526:	
;main.c: 510: if(motorPwmFlag == 0)
	movf	((_motorPwmFlag)),w
	btfss	status,2
	goto	u2471
	goto	u2470
u2471:
	goto	l2530
u2470:
	line	512
	
l2528:	
;main.c: 511: {
;main.c: 512: pwmInit();
	fcall	_pwmInit
	line	514
	
l2530:	
;main.c: 513: }
;main.c: 514: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	515
	
l2532:	
;main.c: 515: PWMD2L = 95;
	movlw	low(05Fh)
	movwf	(155)^080h	;volatile
	line	516
;main.c: 516: }
	goto	l731
	line	517
	
l2534:	
;main.c: 517: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l2548
u2480:
	line	519
	
l2536:	
;main.c: 518: {
;main.c: 519: shiweiNum = numArray[6];
	movlw	low((((_numArray+06h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	520
;main.c: 520: geweiNum = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	521
	
l2538:	
;main.c: 521: if(motorPwmFlag == 0)
	movf	((_motorPwmFlag)),w
	btfss	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l2542
u2490:
	line	523
	
l2540:	
;main.c: 522: {
;main.c: 523: pwmInit();
	fcall	_pwmInit
	line	525
	
l2542:	
;main.c: 524: }
;main.c: 525: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	526
	
l2544:	
;main.c: 526: PWMD2L = 97;
	movlw	low(061h)
	movwf	(155)^080h	;volatile
	goto	l2486
	line	529
	
l2548:	
;main.c: 529: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2501
	goto	u2500
u2501:
	goto	l715
u2500:
	line	531
	
l2550:	
;main.c: 530: {
;main.c: 531: baiweiNum = 1;
	clrf	(_baiweiNum)
	incf	(_baiweiNum),f
	line	532
	
l2552:	
;main.c: 532: shiweiNum = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	533
;main.c: 533: geweiNum = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	534
	
l2554:	
;main.c: 534: if(motorPwmFlag == 0)
	movf	((_motorPwmFlag)),w
	btfss	status,2
	goto	u2511
	goto	u2510
u2511:
	goto	l2558
u2510:
	line	536
	
l2556:	
;main.c: 535: {
;main.c: 536: pwmInit();
	fcall	_pwmInit
	line	538
	
l2558:	
;main.c: 537: }
;main.c: 538: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	539
	
l2560:	
;main.c: 539: PWMD2L = 99;
	movlw	low(063h)
	movwf	(155)^080h	;volatile
	line	543
	
l731:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 758 in file "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
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
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	758
global __ptext2
__ptext2:	;psect for function _pwmStop
psect	text2
	file	"C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
	line	758
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: [wreg+status,2+status,0]
	line	760
	
l2034:	
;main.c: 760: if(motorPwmFlag)
	movf	((_motorPwmFlag)),w
	btfsc	status,2
	goto	u1481
	goto	u1480
u1481:
	goto	l771
u1480:
	line	762
	
l2036:	
;main.c: 761: {
;main.c: 762: motorPwmFlag = 0;
	clrf	(_motorPwmFlag)
	line	763
	
l2038:	
;main.c: 763: PWMCON0 &= 0XFB;
	bcf	(21)+(2/8),(2)&7	;volatile
	line	764
	
l2040:	
;main.c: 764: RA2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1074/8)^080h,(1074)&7	;volatile
	line	766
	
l771:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 742 in file "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
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
	line	742
global __ptext3
__ptext3:	;psect for function _pwmInit
psect	text3
	file	"C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
	line	742
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2]
	line	744
	
l2042:	
;main.c: 744: motorPwmFlag = 1;
	clrf	(_motorPwmFlag)
	incf	(_motorPwmFlag),f
	line	745
	
l2044:	
;main.c: 745: PWMCON1 = 0B11000000;
	movlw	low(0C0h)
	movwf	(22)	;volatile
	line	746
	
l2046:	
;main.c: 746: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	747
	
l2048:	
;main.c: 747: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	750
;main.c: 750: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	751
	
l2050:	
;main.c: 751: PWMD2L = 50;
	movlw	low(032h)
	movwf	(155)^080h	;volatile
	line	752
	
l2052:	
;main.c: 752: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	754
;main.c: 754: PWMCON0 = 0X44;
	movlw	low(044h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	755
	
l2054:	
;main.c: 755: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	756
	
l767:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
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
;;		_workCtr
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
	
l2232:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l2234:	
	clrf	(___lbmod@rem)
	line	12
	
l2236:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u1805:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u1805
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l2238:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l2240:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u1811
	goto	u1810
u1811:
	goto	l2244
u1810:
	line	15
	
l2242:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l2244:	
	decfsz	(___lbmod@counter),f
	goto	u1821
	goto	u1820
u1821:
	goto	l2236
u1820:
	line	17
	
l2246:	
	movf	(___lbmod@rem),w
	line	18
	
l1071:	
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
;;		_workCtr
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
	
l2208:	
	clrf	(___lbdiv@quotient)
	line	10
	
l2210:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1761
	goto	u1760
u1761:
	goto	l2228
u1760:
	line	11
	
l2212:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2216
	
l1060:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l2214:	
	incf	(___lbdiv@counter),f
	line	12
	
l2216:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1771
	goto	u1770
u1771:
	goto	l1060
u1770:
	line	16
	
l1062:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l2218:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1781
	goto	u1780
u1781:
	goto	l2224
u1780:
	line	19
	
l2220:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2222:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2224:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l2226:	
	decfsz	(___lbdiv@counter),f
	goto	u1791
	goto	u1790
u1791:
	goto	l1062
u1790:
	line	25
	
l2228:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1065:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_setBatStep

;; *************** function _setBatStep *****************
;; Defined at:
;;		line 545 in file "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
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
;;		___lwdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
	line	545
global __ptext6
__ptext6:	;psect for function _setBatStep
psect	text6
	file	"C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
	line	545
	global	__size_of_setBatStep
	__size_of_setBatStep	equ	__end_of_setBatStep-_setBatStep
	
_setBatStep:	
;incstack = 0
	opt	stack 4
; Regs used in _setBatStep: [wreg+status,2+status,0+pclath+cstack]
	line	547
	
l2812:	
;main.c: 547: if(lowBatFlag == 1)
	bcf	status, 5	;RP0=0, select bank0
		decf	((_lowBatFlag)),w
	btfss	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l2818
u2860:
	line	549
	
l2814:	
;main.c: 548: {
;main.c: 549: showBatStep = 0;
	clrf	(_showBatStep)
	line	550
;main.c: 550: curBatStep = 0;
	clrf	(_curBatStep)
	line	551
	
l2816:	
;main.c: 551: lowShanTime = 300;
	movlw	02Ch
	movwf	(_lowShanTime)
	movlw	01h
	movwf	((_lowShanTime))+1
	line	552
;main.c: 552: }
	goto	l753
	line	553
	
l2818:	
;main.c: 553: else if(power_ad < 2800)
	movlw	0Ah
	subwf	(_power_ad+1),w	;volatile
	movlw	0F0h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u2871
	goto	u2870
u2871:
	goto	l2828
u2870:
	line	555
	
l2820:	
;main.c: 554: {
;main.c: 555: if(count1s == 0)
	movf	((_count1s)),w
	btfss	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l737
u2880:
	line	557
	
l2822:	
;main.c: 556: {
;main.c: 557: if(showBatStep > 1)
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u2891
	goto	u2890
u2891:
	goto	l738
u2890:
	line	559
	
l2824:	
;main.c: 558: {
;main.c: 559: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2901
	goto	u2900
u2901:
	goto	l740
u2900:
	line	560
	
l2826:	
;main.c: 560: showBatStep--;
	decf	(_showBatStep),f
	goto	l740
	line	562
	
l738:	
	line	564
;main.c: 562: else
;main.c: 563: {
;main.c: 564: showBatStep = 1;
	clrf	(_showBatStep)
	incf	(_showBatStep),f
	line	565
	
l740:	
	line	566
;main.c: 565: }
;main.c: 566: curBatStep = 1;
	clrf	(_curBatStep)
	incf	(_curBatStep),f
	line	567
	
l737:	
	line	568
;main.c: 567: }
;main.c: 568: curBatStep = 1;
	clrf	(_curBatStep)
	incf	(_curBatStep),f
	line	569
;main.c: 569: }
	goto	l753
	line	572
	
l2828:	
;main.c: 570: else
;main.c: 571: {
;main.c: 572: if(power_ad < 3600)
	movlw	0Eh
	subwf	(_power_ad+1),w	;volatile
	movlw	010h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u2911
	goto	u2910
u2911:
	goto	l2832
u2910:
	line	574
	
l2830:	
;main.c: 573: {
;main.c: 574: curBatStep = (power_ad - 2800)/40;
	movlw	028h
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(_power_ad),w	;volatile
	addlw	low(0F510h)
	movwf	(___lwdiv@dividend)
	movf	(_power_ad+1),w	;volatile
	skipnc
	addlw	1
	addlw	high(0F510h)
	movwf	1+(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(_curBatStep)
	line	575
;main.c: 575: }
	goto	l2834
	line	578
	
l2832:	
;main.c: 576: else
;main.c: 577: {
;main.c: 578: curBatStep = 20 + ((power_ad - 3600)/6);
	movlw	06h
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(_power_ad),w	;volatile
	addlw	low(0F1F0h)
	movwf	(___lwdiv@dividend)
	movf	(_power_ad+1),w	;volatile
	skipnc
	addlw	1
	addlw	high(0F1F0h)
	movwf	1+(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	014h
	movwf	(_curBatStep)
	line	580
	
l2834:	
;main.c: 579: }
;main.c: 580: if(curBatStep > 100)
	movlw	low(065h)
	subwf	(_curBatStep),w
	skipc
	goto	u2921
	goto	u2920
u2921:
	goto	l2838
u2920:
	line	582
	
l2836:	
;main.c: 581: {
;main.c: 582: curBatStep = 100;
	movlw	low(064h)
	movwf	(_curBatStep)
	line	585
	
l2838:	
;main.c: 583: }
;main.c: 585: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l2852
u2930:
	line	587
	
l2840:	
;main.c: 586: {
;main.c: 587: if(curBatStep > showBatStep)
	movf	(_curBatStep),w
	subwf	(_showBatStep),w
	skipnc
	goto	u2941
	goto	u2940
u2941:
	goto	l2850
u2940:
	line	589
	
l2842:	
;main.c: 588: {
;main.c: 589: if(++count30s >= 10000 && showBatStep < 100)
	incf	(_count30s),f
	skipnz
	incf	(_count30s+1),f
	movlw	027h
	subwf	((_count30s+1)),w
	movlw	010h
	skipnz
	subwf	((_count30s)),w
	skipc
	goto	u2951
	goto	u2950
u2951:
	goto	l741
u2950:
	
l2844:	
	movlw	low(064h)
	subwf	(_showBatStep),w
	skipnc
	goto	u2961
	goto	u2960
u2961:
	goto	l741
u2960:
	line	591
	
l2846:	
;main.c: 590: {
;main.c: 591: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	line	592
	
l2848:	
;main.c: 592: showBatStep++;
	incf	(_showBatStep),f
	goto	l753
	line	598
	
l2850:	
;main.c: 596: else
;main.c: 597: {
;main.c: 598: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	goto	l753
	line	603
	
l2852:	
;main.c: 601: else
;main.c: 602: {
;main.c: 603: if(curBatStep < showBatStep && showBatStep > 1)
	movf	(_showBatStep),w
	subwf	(_curBatStep),w
	skipnc
	goto	u2971
	goto	u2970
u2971:
	goto	l2850
u2970:
	
l2854:	
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u2981
	goto	u2980
u2981:
	goto	l2850
u2980:
	line	605
	
l2856:	
;main.c: 604: {
;main.c: 605: if(++count30s >= 1500 && showBatStep > 1)
	incf	(_count30s),f
	skipnz
	incf	(_count30s+1),f
	movlw	05h
	subwf	((_count30s+1)),w
	movlw	0DCh
	skipnz
	subwf	((_count30s)),w
	skipc
	goto	u2991
	goto	u2990
u2991:
	goto	l741
u2990:
	
l2858:	
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u3001
	goto	u3000
u3001:
	goto	l741
u3000:
	line	607
	
l2860:	
;main.c: 606: {
;main.c: 607: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	line	608
	
l2862:	
;main.c: 608: showBatStep--;
	decf	(_showBatStep),f
	goto	l753
	line	617
	
l741:	
	line	618
	
l753:	
	return
	opt stack 0
GLOBAL	__end_of_setBatStep
	__end_of_setBatStep:
	signat	_setBatStep,89
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
;;		_setBatStep
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwdiv.c"
	line	6
global __ptext7
__ptext7:	;psect for function ___lwdiv
psect	text7
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l2770:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l2772:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u2811
	goto	u2810
u2811:
	goto	l2792
u2810:
	line	16
	
l2774:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l2778
	line	18
	
l2776:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l2778:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l2776
u2820:
	line	22
	
l2780:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l2782:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2835
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2835:
	skipc
	goto	u2831
	goto	u2830
u2831:
	goto	l2788
u2830:
	line	24
	
l2784:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l2786:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l2788:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l2790:	
	decfsz	(___lwdiv@counter),f
	goto	u2841
	goto	u2840
u2841:
	goto	l2780
u2840:
	line	30
	
l2792:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l1139:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 408 in file "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
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
	file	"C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
	line	408
global __ptext8
__ptext8:	;psect for function _keyCtr
psect	text8
	file	"C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
	line	408
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	410
	
l2430:	
;main.c: 410: char kclick = keyRead(0x20 & (~PORTB));
	comf	(6),w	;volatile
	andlw	020h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	411
	
l2432:	
;main.c: 411: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2251
	goto	u2250
u2251:
	goto	l2448
u2250:
	line	413
	
l2434:	
;main.c: 412: {
;main.c: 413: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2261
	goto	u2260
u2261:
	goto	l2440
u2260:
	line	415
	
l2436:	
;main.c: 414: {
;main.c: 415: if(++workStep > 3)
	movlw	low(04h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l701
u2270:
	line	417
	
l2438:	
;main.c: 416: {
;main.c: 417: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l701
	line	420
	
l2440:	
;main.c: 420: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2281
	goto	u2280
u2281:
	goto	l2444
u2280:
	line	422
	
l2442:	
;main.c: 421: {
;main.c: 422: showBatTime = 0;
	clrf	(_showBatTime)
	line	423
;main.c: 423: }
	goto	l701
	line	426
	
l2444:	
;main.c: 424: else
;main.c: 425: {
;main.c: 426: showBatTime = 200;
	movlw	low(0C8h)
	movwf	(_showBatTime)
	line	427
	
l2446:	
;main.c: 427: count1s = 0;
	clrf	(_count1s)
	goto	l701
	line	430
	
l2448:	
;main.c: 430: else if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l701
u2290:
	line	432
	
l2450:	
;main.c: 431: {
;main.c: 432: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2301
	goto	u2300
u2301:
	goto	l699
u2300:
	line	434
	
l2452:	
;main.c: 433: {
;main.c: 434: workStep = 0;
	clrf	(_workStep)
	line	435
;main.c: 435: }
	goto	l701
	line	436
	
l699:	
	line	438
;main.c: 436: else
;main.c: 437: {
;main.c: 438: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	439
	
l2454:	
;main.c: 439: showBatTime = 0;
	clrf	(_showBatTime)
	line	440
;main.c: 440: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	444
	
l701:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 373 in file "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
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
	line	373
global __ptext9
__ptext9:	;psect for function _keyRead
psect	text9
	file	"C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
	line	373
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	375
	
l1994:	
;main.c: 375: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1431
	goto	u1430
u1431:
	goto	l2010
u1430:
	line	377
	
l1996:	
;main.c: 376: {
;main.c: 377: keyCount++;
	incf	(_keyCount),f
	line	378
	
l1998:	
;main.c: 378: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1441
	goto	u1440
u1441:
	goto	l2014
u1440:
	line	380
	
l2000:	
;main.c: 379: {
;main.c: 380: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	line	381
	
l2002:	
;main.c: 381: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1451
	goto	u1450
u1451:
	goto	l2014
u1450:
	line	383
	
l2004:	
;main.c: 382: {
;main.c: 383: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	384
	
l2006:	
;main.c: 384: return 2;
	movlw	low(02h)
	goto	l684
	line	390
	
l2010:	
;main.c: 388: else
;main.c: 389: {
;main.c: 390: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1461
	goto	u1460
u1461:
	goto	l2020
u1460:
	line	392
	
l2012:	
;main.c: 391: {
;main.c: 392: keyCount = 0;
	clrf	(_keyCount)
	line	393
;main.c: 393: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	394
	
l2014:	
;main.c: 394: return 0;
	movlw	low(0)
	goto	l684
	line	396
	
l2020:	
;main.c: 396: else if(keyCount >= 6)
	movlw	low(06h)
	subwf	(_keyCount),w
	skipc
	goto	u1471
	goto	u1470
u1471:
	goto	l2028
u1470:
	line	398
	
l2022:	
;main.c: 397: {
;main.c: 398: keyCount = 0;
	clrf	(_keyCount)
	line	399
	
l2024:	
;main.c: 399: return 1;
	movlw	low(01h)
	goto	l684
	line	401
	
l2028:	
;main.c: 400: }
;main.c: 401: keyCount = 0;
	clrf	(_keyCount)
	goto	l2014
	line	404
	
l684:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 332 in file "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
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
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	332
global __ptext10
__ptext10:	;psect for function _chrgCtr
psect	text10
	file	"C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
	line	332
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _chrgCtr: [wreg+status,2+status,0]
	line	334
	
l2340:	
;main.c: 334: if(PORTB & 0x04)
	btfss	(6),(2)&7	;volatile
	goto	u2051
	goto	u2050
u2051:
	goto	l2350
u2050:
	line	336
	
l2342:	
;main.c: 335: {
;main.c: 336: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	337
	
l2344:	
;main.c: 337: workStep = 0;
	clrf	(_workStep)
	line	338
;main.c: 338: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	339
	
l2346:	
;main.c: 339: if(showBatStep >= 100)
	movlw	low(064h)
	subwf	(_showBatStep),w
	skipc
	goto	u2061
	goto	u2060
u2061:
	goto	l672
u2060:
	line	341
	
l2348:	
;main.c: 340: {
;main.c: 341: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	342
;main.c: 342: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	343
;main.c: 343: }
	goto	l678
	line	344
	
l672:	
	line	346
;main.c: 344: else
;main.c: 345: {
;main.c: 346: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	line	347
;main.c: 347: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	goto	l678
	line	352
	
l2350:	
;main.c: 354: chrgFullTime = 0;
	clrf	(_chrgFlag)
	line	355
	
l2352:	
;main.c: 355: PORTB |= 0x03;
	movlw	low(03h)
	iorwf	(6),f	;volatile
	line	356
	
l2354:	
;main.c: 356: if(power_ad < 2500)
	movlw	09h
	subwf	(_power_ad+1),w	;volatile
	movlw	0C4h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u2071
	goto	u2070
u2071:
	goto	l2362
u2070:
	line	358
	
l2356:	
;main.c: 357: {
;main.c: 358: if(++lowBatTime > 200)
	movlw	low(0C9h)
	incf	(_lowBatTime),f
	subwf	((_lowBatTime)),w
	skipc
	goto	u2081
	goto	u2080
u2081:
	goto	l678
u2080:
	line	360
	
l2358:	
;main.c: 359: {
;main.c: 360: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	361
	
l2360:	
;main.c: 361: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	goto	l678
	line	366
	
l2362:	
;main.c: 364: else
;main.c: 365: {
;main.c: 366: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	369
	
l678:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 621 in file "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  power_temp      4   35[BANK0 ] volatile unsigned long 
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
;;      Locals:         0       4       0
;;      Temps:          0       1       0
;;      Totals:         0       5       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ADC_Sample
;;		___ftdiv
;;		___fttol
;;		___lwtoft
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	621
global __ptext11
__ptext11:	;psect for function _checkBatAD
psect	text11
	file	"C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
	line	621
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 3
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	623
	
l2800:	
;main.c: 623: test_adc = ADC_Sample(31, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(01Fh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	624
	
l2802:	
;main.c: 624: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l2808
u2850:
	line	628
	
l2804:	
;main.c: 625: {
;main.c: 626: volatile unsigned long power_temp;
;main.c: 628: power_temp = (unsigned long)(((4096UL*1.2*1000))/adresult);
	movlw	0x0
	movwf	(___ftdiv@f1)
	movlw	0x96
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
	movwf	(checkBatAD@power_temp+3)	;volatile
	movf	(2+(?___fttol)),w
	movwf	(checkBatAD@power_temp+2)	;volatile
	movf	(1+(?___fttol)),w
	movwf	(checkBatAD@power_temp+1)	;volatile
	movf	(0+(?___fttol)),w
	movwf	(checkBatAD@power_temp)	;volatile

	line	629
	
l2806:	
;main.c: 629: power_ad = (unsigned int)(power_temp);
	movf	(checkBatAD@power_temp+1),w	;volatile
	movwf	(_power_ad+1)	;volatile
	movf	(checkBatAD@power_temp),w	;volatile
	movwf	(_power_ad)	;volatile
	line	630
;main.c: 630: }
	goto	l758
	line	633
	
l2808:	
;main.c: 631: else
;main.c: 632: {
;main.c: 633: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	634
;main.c: 634: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	635
	
l2810:	
;main.c: 635: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_checkBatAD+0)+0),f
	u3127:
decfsz	(??_checkBatAD+0)+0,f
	goto	u3127
	nop2
opt asmopt_pop

	line	638
	
l758:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    3[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    3[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       3       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_checkBatAD
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwtoft.c"
	line	28
global __ptext12
__ptext12:	;psect for function ___lwtoft
psect	text12
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l2796:	
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
	
l1154:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   21[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   29[BANK0 ] unsigned long 
;;  exp1            1   33[BANK0 ] unsigned char 
;;  sign1           1   28[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   21[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       4       0
;;      Locals:         0       6       0
;;      Temps:          0       3       0
;;      Totals:         0      13       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkBatAD
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\fttol.c"
	line	44
global __ptext13
__ptext13:	;psect for function ___fttol
psect	text13
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 4
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2168:	
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
	goto	u1681
	goto	u1680
u1681:
	goto	l2172
u1680:
	line	50
	
l2170:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l1045
	line	51
	
l2172:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u1695:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u1690:
	addlw	-1
	skipz
	goto	u1695
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2174:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2176:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2178:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2180:	
	movlw	08Eh
	subwf	(___fttol@exp1),f
	line	56
	
l2182:	
	btfss	(___fttol@exp1),7
	goto	u1701
	goto	u1700
u1701:
	goto	l2192
u1700:
	line	57
	
l2184:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u1711
	goto	u1710
u1711:
	goto	l2188
u1710:
	goto	l2170
	line	60
	
l2188:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l2190:	
	incfsz	(___fttol@exp1),f
	goto	u1721
	goto	u1720
u1721:
	goto	l2188
u1720:
	goto	l2200
	line	63
	
l2192:	
	movlw	low(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u1731
	goto	u1730
u1731:
	goto	l2198
u1730:
	goto	l2170
	line	66
	
l2196:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	65
	
l2198:	
	movf	((___fttol@exp1)),w
	btfss	status,2
	goto	u1741
	goto	u1740
u1741:
	goto	l2196
u1740:
	line	70
	
l2200:	
	movf	((___fttol@sign1)),w
	btfsc	status,2
	goto	u1751
	goto	u1750
u1751:
	goto	l2204
u1750:
	line	71
	
l2202:	
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
	
l2204:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l1045:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 56 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    6[BANK0 ] float 
;;  f1              3    9[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   16[BANK0 ] float 
;;  sign            1   20[BANK0 ] unsigned char 
;;  exp             1   19[BANK0 ] unsigned char 
;;  cntr            1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    6[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       6       0
;;      Locals:         0       6       0
;;      Temps:          0       3       0
;;      Totals:         0      15       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_checkBatAD
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\ftdiv.c"
	line	56
global __ptext14
__ptext14:	;psect for function ___ftdiv
psect	text14
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\ftdiv.c"
	line	56
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l2730:	
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
	goto	u2771
	goto	u2770
u2771:
	goto	l2734
u2770:
	line	64
	
l2732:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1009
	line	65
	
l2734:	
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
	goto	u2781
	goto	u2780
u2781:
	goto	l1010
u2780:
	line	66
	
l2736:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1009
	
l1010:	
	line	67
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	68
	
l2738:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l2740:	
	movf	0+(___ftdiv@f1)+02h,w
	movwf	(___ftdiv@sign)
	line	70
	
l2742:	
	movf	0+(___ftdiv@f2)+02h,w
	xorwf	(___ftdiv@sign),f
	line	71
	
l2744:	
	movlw	low(080h)
	andwf	(___ftdiv@sign),f
	line	72
	
l2746:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	
l2748:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l2750:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	
l2752:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	
l2754:	
	movlw	low(018h)
	movwf	(___ftdiv@cntr)
	line	78
	
l2756:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	79
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u2795
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u2795
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u2795:
	skipc
	goto	u2791
	goto	u2790
u2791:
	goto	l2762
u2790:
	line	80
	
l2758:	
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
	
l2760:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	83
	
l2762:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	84
	
l2764:	
	decfsz	(___ftdiv@cntr),f
	goto	u2801
	goto	u2800
u2801:
	goto	l2756
u2800:
	line	85
	
l2766:	
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
	
l1009:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    3[COMMON] unsigned um
;;  exp             1    6[COMMON] unsigned char 
;;  sign            1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    3[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         5       0       0
;;      Locals:         0       0       0
;;      Temps:          0       3       0
;;      Totals:         5       3       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftdiv
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\float.c"
	line	62
global __ptext15
__ptext15:	;psect for function ___ftpack
psect	text15
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l2706:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l956
u2690:
	
l2708:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2701
	goto	u2700
u2701:
	goto	l2712
u2700:
	
l956:	
	line	65
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l957
	line	67
	
l2710:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l2712:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2711
	goto	u2710
u2711:
	goto	l2710
u2710:
	goto	l2716
	line	71
	
l2714:	
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
	
l2716:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2721
	goto	u2720
u2721:
	goto	l2714
u2720:
	goto	l2720
	line	76
	
l2718:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l2720:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l968
u2730:
	
l2722:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u2741
	goto	u2740
u2741:
	goto	l2718
u2740:
	
l968:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l969
u2750:
	line	80
	
l2724:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l969:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l2726:	
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
	goto	u2761
	goto	u2760
u2761:
	goto	l970
u2760:
	line	84
	
l2728:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l970:	
	line	85
	line	86
	
l957:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 853 in file "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkBatAD
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
	line	853
global __ptext16
__ptext16:	;psect for function _ADC_Sample
psect	text16
	file	"C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
	line	853
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	855
	
l2056:	
;main.c: 855: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	856
	
l2058:	
;main.c: 856: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	857
;main.c: 857: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	859
	
l2060:	
;main.c: 859: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u1491
	goto	u1490
u1491:
	goto	l2066
u1490:
	
l2062:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u1501
	goto	u1500
u1501:
	goto	l2066
u1500:
	line	862
	
l2064:	
;main.c: 860: {
;main.c: 862: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	863
;main.c: 863: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_ADC_Sample+0)+0),f
	u3137:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u3137
opt asmopt_pop

	line	864
;main.c: 864: }
	goto	l2068
	line	866
	
l2066:	
;main.c: 865: else
;main.c: 866: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	868
	
l2068:	
;main.c: 868: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u1511
	goto	u1510
u1511:
	goto	l2074
u1510:
	line	870
	
l2070:	
;main.c: 869: {
;main.c: 870: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	871
	
l2072:	
;main.c: 871: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	873
	
l2074:	
	line	874
	
l2076:	
;main.c: 874: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	876
	
l2082:	
;main.c: 875: {
;main.c: 876: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u1525:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u1525
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	877
# 877 "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
nop ;# 
	line	878
# 878 "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
nop ;# 
	line	879
# 879 "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
nop ;# 
	line	880
# 880 "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
nop ;# 
psect	text16
	line	881
	
l2084:	
;main.c: 881: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	883
	
l2086:	
;main.c: 883: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	884
;main.c: 884: while (GODONE)
	goto	l785
	
l786:	
	line	886
;main.c: 885: {
;main.c: 886: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	888
;main.c: 888: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u1531
	goto	u1530
u1531:
	goto	l785
u1530:
	line	889
	
l2088:	
;main.c: 889: return 0;
	movlw	low(0)
	goto	l788
	line	890
	
l785:	
	line	884
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u1541
	goto	u1540
u1541:
	goto	l786
u1540:
	line	892
	
l2092:	
;main.c: 890: }
;main.c: 892: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l2094:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	894
	
l2096:	
;main.c: 894: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u1551
	goto	u1550
u1551:
	goto	l2100
u1550:
	line	896
	
l2098:	
;main.c: 895: {
;main.c: 896: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	897
;main.c: 897: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	898
;main.c: 898: }
	goto	l791
	line	899
	
l2100:	
;main.c: 899: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u1565
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u1565:
	skipnc
	goto	u1561
	goto	u1560
u1561:
	goto	l2104
u1560:
	line	900
	
l2102:	
;main.c: 900: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l791
	line	901
	
l2104:	
;main.c: 901: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u1575
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u1575:
	skipnc
	goto	u1571
	goto	u1570
u1571:
	goto	l791
u1570:
	line	902
	
l2106:	
;main.c: 902: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	904
	
l791:	
;main.c: 904: adsum += ad_temp;
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
	goto	u1581
	addwf	(ADC_Sample@adsum+1),f	;volatile
u1581:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1582
	addwf	(ADC_Sample@adsum+2),f	;volatile
u1582:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1583
	addwf	(ADC_Sample@adsum+3),f	;volatile
u1583:

	line	874
	
l2108:	
	incf	(ADC_Sample@i),f
	
l2110:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u1591
	goto	u1590
u1591:
	goto	l2082
u1590:
	line	906
	
l2112:	
;main.c: 905: }
;main.c: 906: adsum -= admax;
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
	goto	u1605
	goto	u1606
u1605:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u1606:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1607
	goto	u1608
u1607:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u1608:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1609
	goto	u1600
u1609:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u1600:

	line	907
;main.c: 907: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u1615
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u1615
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u1615
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u1615:
	skipc
	goto	u1611
	goto	u1610
u1611:
	goto	l795
u1610:
	line	908
	
l2114:	
;main.c: 908: adsum -= admin;
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
	goto	u1625
	goto	u1626
u1625:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u1626:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1627
	goto	u1628
u1627:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u1628:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1629
	goto	u1620
u1629:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u1620:

	goto	l2116
	line	909
	
l795:	
	line	910
;main.c: 909: else
;main.c: 910: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	912
	
l2116:	
;main.c: 912: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u1635:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u1630:
	addlw	-1
	skipz
	goto	u1635
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	914
	
l2118:	
;main.c: 914: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	915
	
l2120:	
;main.c: 915: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	916
	
l2122:	
;main.c: 916: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	917
	
l2124:	
;main.c: 917: return 0xA5;
	movlw	low(0A5h)
	line	919
	
l788:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 776 in file "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
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
	line	776
global __ptext17
__ptext17:	;psect for function _Sleep_Mode
psect	text17
	file	"C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
	line	776
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 4
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	778
	
l2562:	
;main.c: 778: INTCON = 0;
	clrf	(11)	;volatile
	line	780
;main.c: 780: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	782
	
l2564:	
;main.c: 782: WPUA = 0x01;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(136)^080h	;volatile
	line	783
	
l2566:	
;main.c: 783: TRISA = 0x01;
	movlw	low(01h)
	movwf	(133)^080h	;volatile
	line	784
	
l2568:	
;main.c: 784: TRISB = 0x24;
	movlw	low(024h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	786
	
l2570:	
;main.c: 786: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	787
;main.c: 787: PORTB = 0X03;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	788
;main.c: 788: WPUB = 0x20;
	movlw	low(020h)
	movwf	(8)	;volatile
	line	790
	
l2572:	
;main.c: 790: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	791
	
l2574:	
;main.c: 791: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	793
	
l2576:	
;main.c: 793: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	795
	
l2578:	
;main.c: 795: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	797
;main.c: 797: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	798
	
l2580:	
;main.c: 798: IOCB = 0B00100100;
	movlw	low(024h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	800
	
l2582:	
;main.c: 800: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	801
	
l2584:	
;main.c: 801: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	802
	
l2586:	
;main.c: 802: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	803
	
l2588:	
;main.c: 803: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	805
	
l2590:	
;main.c: 805: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	806
	
l2592:	
;main.c: 806: PIR1 = 0;
	clrf	(13)	;volatile
	line	807
	
l2594:	
;main.c: 807: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	809
;main.c: 809: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	810
	
l2596:	
;main.c: 810: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	811
;main.c: 811: PORTB;
	movf	(6),w	;volatile
	line	812
	
l2598:	
;main.c: 812: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	813
# 813 "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
clrwdt ;# 
	line	815
# 815 "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
sleep ;# 
	line	817
# 817 "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
nop ;# 
	line	818
# 818 "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
clrwdt ;# 
	line	819
# 819 "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
nop ;# 
	line	820
# 820 "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
nop ;# 
	line	821
# 821 "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
nop ;# 
	line	822
# 822 "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
nop ;# 
	line	823
# 823 "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
nop ;# 
psect	text17
	line	824
	
l2600:	
;main.c: 824: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u2521
	goto	u2520
u2521:
	goto	l774
u2520:
	
l2602:	
	bcf	(107/8),(107)&7	;volatile
	
l774:	
	line	825
;main.c: 825: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u2531
	goto	u2530
u2531:
	goto	l775
u2530:
	
l2604:	
	bcf	(88/8),(88)&7	;volatile
	
l775:	
	line	826
;main.c: 826: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u2541
	goto	u2540
u2541:
	goto	l2608
u2540:
	
l2606:	
	bcf	(105/8),(105)&7	;volatile
	line	827
	
l2608:	
;main.c: 827: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	828
;main.c: 828: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	829
	
l2610:	
;main.c: 829: Init_System();
	fcall	_Init_System
	line	830
	
l2612:	
;main.c: 830: AD_Init();
	fcall	_AD_Init
	line	831
	
l777:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 649 in file "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
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
	line	649
global __ptext18
__ptext18:	;psect for function _Init_System
psect	text18
	file	"C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
	line	649
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	651
	
l1966:	
# 651 "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
nop ;# 
	line	652
# 652 "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
clrwdt ;# 
psect	text18
	line	653
	
l1968:	
;main.c: 653: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	654
# 654 "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
clrwdt ;# 
psect	text18
	line	655
	
l1970:	
;main.c: 655: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	657
	
l1972:	
;main.c: 657: WPUA = 0x01;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(136)^080h	;volatile
	line	658
;main.c: 658: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	659
	
l1974:	
;main.c: 659: WPUB = 0x20;
	movlw	low(020h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	661
	
l1976:	
;main.c: 661: TRISA = 0x01;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	662
	
l1978:	
;main.c: 662: TRISB = 0x24;
	movlw	low(024h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	664
	
l1980:	
;main.c: 664: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	665
;main.c: 665: PORTB = 0X03;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	669
;main.c: 669: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	670
	
l1982:	
;main.c: 670: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	671
	
l1984:	
;main.c: 671: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	673
;main.c: 673: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	674
;main.c: 674: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	675
	
l761:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 686 in file "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
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
	line	686
global __ptext19
__ptext19:	;psect for function _AD_Init
psect	text19
	file	"C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
	line	686
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _AD_Init: [wreg+status,2]
	line	719
	
l1986:	
;main.c: 719: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	736
	
l1988:	
;main.c: 736: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	737
	
l1990:	
;main.c: 737: ANSEL0 = 0X00;
	clrf	(147)^080h	;volatile
	line	738
	
l1992:	
;main.c: 738: ANSEL1 = 0x00;
	clrf	(148)^080h	;volatile
	line	739
	
l764:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 94 in file "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
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
	line	94
global __ptext20
__ptext20:	;psect for function _Isr_Timer
psect	text20
	file	"C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
	line	94
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
psect	text20
	line	96
	
i1l2614:	
;main.c: 96: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u255_21
	goto	u255_20
u255_21:
	goto	i1l614
u255_20:
	line	98
	
i1l2616:	
;main.c: 97: {
;main.c: 98: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	99
	
i1l2618:	
;main.c: 99: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u256_21
	goto	u256_20
u256_21:
	goto	i1l2628
u256_20:
	line	101
	
i1l2620:	
;main.c: 100: {
;main.c: 101: intCount = 0;
	clrf	(_intCount)
	line	102
	
i1l2622:	
;main.c: 102: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	103
	
i1l2624:	
;main.c: 103: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u257_21
	goto	u257_20
u257_21:
	goto	i1l2628
u257_20:
	line	105
	
i1l2626:	
;main.c: 104: {
;main.c: 105: count1s = 0;
	clrf	(_count1s)
	line	108
	
i1l2628:	
;main.c: 106: }
;main.c: 107: }
;main.c: 108: ledShow();
	fcall	_ledShow
	line	109
	
i1l2630:	
;main.c: 109: intCount10++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_intCount10),f
	line	112
	
i1l614:	
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
;;		line 160 in file "C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
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
	line	160
global __ptext21
__ptext21:	;psect for function _ledShow
psect	text21
	file	"C:\mcuproject\scm\zdt\D30_062B_SOP14\main.c"
	line	160
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 3
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	162
	
i1l2280:	
;main.c: 162: if(++ledCntTime > 5)
	movlw	low(06h)
	incf	(_ledCntTime),f
	subwf	((_ledCntTime)),w
	skipc
	goto	u187_21
	goto	u187_20
u187_21:
	goto	i1l668
u187_20:
	line	164
	
i1l2282:	
;main.c: 163: {
;main.c: 164: ledCntTime = 0;
	clrf	(_ledCntTime)
	line	165
	
i1l2284:	
;main.c: 165: if(++ledCnt > 15)
	movlw	low(010h)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u188_21
	goto	u188_20
u188_21:
	goto	i1l2288
u188_20:
	line	167
	
i1l2286:	
;main.c: 166: {
;main.c: 167: ledCnt = 0;
	clrf	(_ledCnt)
	line	169
	
i1l2288:	
;main.c: 168: }
;main.c: 169: PORTA &= 0xC7;
	movlw	low(0C7h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	170
	
i1l2290:	
;main.c: 170: PORTB &= 0xE7;
	movlw	low(0E7h)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(6),f	;volatile
	line	171
	
i1l2292:	
;main.c: 171: TRISA |= 0x38;
	movlw	low(038h)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	172
	
i1l2294:	
;main.c: 172: TRISB |= 0x18;
	movlw	low(018h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(5),f	;volatile
	line	173
;main.c: 173: switch(ledCnt)
	goto	i1l2334
	line	175
;main.c: 174: {
;main.c: 175: case 1:
	
i1l634:	
	line	176
;main.c: 176: if(shiweiNum & 0x01)
	btfss	(_shiweiNum),(0)&7
	goto	u189_21
	goto	u189_20
u189_21:
	goto	i1l668
u189_20:
	line	178
	
i1l2296:	
;main.c: 177: {
;main.c: 178: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	179
;main.c: 179: TRISB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(4/8),(4)&7	;volatile
	line	180
;main.c: 180: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	181
;main.c: 181: RA3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l668
	line	184
;main.c: 184: case 2:
	
i1l637:	
	line	185
;main.c: 185: if(shiweiNum & 0x02)
	btfss	(_shiweiNum),(1)&7
	goto	u190_21
	goto	u190_20
u190_21:
	goto	i1l668
u190_20:
	line	187
	
i1l2298:	
;main.c: 186: {
;main.c: 187: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	188
;main.c: 188: TRISB &= 0xEF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(4/8),(4)&7	;volatile
	line	189
;main.c: 189: RA3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	190
;main.c: 190: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	goto	i1l668
	line	193
;main.c: 193: case 3:
	
i1l639:	
	line	194
;main.c: 194: if(shiweiNum & 0x04)
	btfss	(_shiweiNum),(2)&7
	goto	u191_21
	goto	u191_20
u191_21:
	goto	i1l668
u191_20:
	line	196
	
i1l2300:	
;main.c: 195: {
;main.c: 196: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	197
;main.c: 197: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	198
;main.c: 198: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	199
;main.c: 199: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l668
	line	202
;main.c: 202: case 4:
	
i1l641:	
	line	203
;main.c: 203: if(shiweiNum & 0x08)
	btfss	(_shiweiNum),(3)&7
	goto	u192_21
	goto	u192_20
u192_21:
	goto	i1l668
u192_20:
	line	205
	
i1l2302:	
;main.c: 204: {
;main.c: 205: TRISB &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	206
;main.c: 206: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	207
;main.c: 207: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	208
;main.c: 208: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	goto	i1l668
	line	211
;main.c: 211: case 5:
	
i1l643:	
	line	212
;main.c: 212: if(shiweiNum & 0x10)
	btfss	(_shiweiNum),(4)&7
	goto	u193_21
	goto	u193_20
u193_21:
	goto	i1l668
u193_20:
	line	214
	
i1l2304:	
;main.c: 213: {
;main.c: 214: TRISB &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	215
;main.c: 215: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	216
;main.c: 216: RA5 = 1;
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	217
;main.c: 217: RB4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	goto	i1l668
	line	220
;main.c: 220: case 6:
	
i1l645:	
	line	221
;main.c: 221: if(shiweiNum & 0x20)
	btfss	(_shiweiNum),(5)&7
	goto	u194_21
	goto	u194_20
u194_21:
	goto	i1l668
u194_20:
	line	223
	
i1l2306:	
;main.c: 222: {
;main.c: 223: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	224
;main.c: 224: TRISA &= 0xDF;
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	225
;main.c: 225: RA5 = 1;
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	226
;main.c: 226: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l668
	line	229
;main.c: 229: case 7:
	
i1l647:	
	line	230
;main.c: 230: if(shiweiNum & 0x40)
	btfss	(_shiweiNum),(6)&7
	goto	u195_21
	goto	u195_20
u195_21:
	goto	i1l668
u195_20:
	line	232
	
i1l2308:	
;main.c: 231: {
;main.c: 232: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	233
;main.c: 233: TRISA &= 0xDF;
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	234
;main.c: 234: RA5 = 1;
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	235
;main.c: 235: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l668
	line	238
;main.c: 238: case 8:
	
i1l649:	
	line	239
;main.c: 239: if(geweiNum & 0x01)
	btfss	(_geweiNum),(0)&7
	goto	u196_21
	goto	u196_20
u196_21:
	goto	i1l668
u196_20:
	line	241
	
i1l2310:	
;main.c: 240: {
;main.c: 241: TRISB &= 0xF7;
	bcf	(5)+(3/8),(3)&7	;volatile
	line	242
;main.c: 242: TRISB &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	243
;main.c: 243: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	244
;main.c: 244: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	goto	i1l668
	line	247
;main.c: 247: case 9:
	
i1l651:	
	line	248
;main.c: 248: if(geweiNum & 0x02)
	btfss	(_geweiNum),(1)&7
	goto	u197_21
	goto	u197_20
u197_21:
	goto	i1l668
u197_20:
	line	250
	
i1l2312:	
;main.c: 249: {
;main.c: 250: TRISB &= 0xF7;
	bcf	(5)+(3/8),(3)&7	;volatile
	line	251
;main.c: 251: TRISB &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	252
;main.c: 252: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	253
;main.c: 253: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	goto	i1l668
	line	256
;main.c: 256: case 10:
	
i1l653:	
	line	257
;main.c: 257: if(geweiNum & 0x04)
	btfss	(_geweiNum),(2)&7
	goto	u198_21
	goto	u198_20
u198_21:
	goto	i1l668
u198_20:
	line	259
	
i1l2314:	
;main.c: 258: {
;main.c: 259: TRISB &= 0xF7;
	bcf	(5)+(3/8),(3)&7	;volatile
	line	260
;main.c: 260: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	261
;main.c: 261: RB3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(51/8),(51)&7	;volatile
	line	262
;main.c: 262: RA3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l668
	line	265
;main.c: 265: case 11:
	
i1l655:	
	line	266
;main.c: 266: if(geweiNum & 0x08)
	btfss	(_geweiNum),(3)&7
	goto	u199_21
	goto	u199_20
u199_21:
	goto	i1l668
u199_20:
	line	268
	
i1l2316:	
;main.c: 267: {
;main.c: 268: TRISB &= 0xF7;
	bcf	(5)+(3/8),(3)&7	;volatile
	line	269
;main.c: 269: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	270
;main.c: 270: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	271
;main.c: 271: RB3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(51/8),(51)&7	;volatile
	goto	i1l668
	line	274
;main.c: 274: case 12:
	
i1l657:	
	line	275
;main.c: 275: if(geweiNum & 0x10)
	btfss	(_geweiNum),(4)&7
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l668
u200_20:
	line	277
	
i1l2318:	
;main.c: 276: {
;main.c: 277: TRISB &= 0xF7;
	bcf	(5)+(3/8),(3)&7	;volatile
	line	278
;main.c: 278: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	279
;main.c: 279: RB3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(51/8),(51)&7	;volatile
	line	280
;main.c: 280: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l668
	line	283
;main.c: 283: case 13:
	
i1l659:	
	line	284
;main.c: 284: if(geweiNum & 0x20)
	btfss	(_geweiNum),(5)&7
	goto	u201_21
	goto	u201_20
u201_21:
	goto	i1l668
u201_20:
	line	286
	
i1l2320:	
;main.c: 285: {
;main.c: 286: TRISB &= 0xF7;
	bcf	(5)+(3/8),(3)&7	;volatile
	line	287
;main.c: 287: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	288
;main.c: 288: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	289
;main.c: 289: RB3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(51/8),(51)&7	;volatile
	goto	i1l668
	line	292
;main.c: 292: case 14:
	
i1l661:	
	line	293
;main.c: 293: if(geweiNum & 0x40)
	btfss	(_geweiNum),(6)&7
	goto	u202_21
	goto	u202_20
u202_21:
	goto	i1l668
u202_20:
	line	295
	
i1l2322:	
;main.c: 294: {
;main.c: 295: TRISB &= 0xF7;
	bcf	(5)+(3/8),(3)&7	;volatile
	line	296
;main.c: 296: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	297
;main.c: 297: RA5 = 1;
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	298
;main.c: 298: RB3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(51/8),(51)&7	;volatile
	goto	i1l668
	line	302
	
i1l2324:	
;main.c: 302: if(baiweiNum > 0)
	movf	((_baiweiNum)),w
	btfsc	status,2
	goto	u203_21
	goto	u203_20
u203_21:
	goto	i1l668
u203_20:
	line	304
	
i1l2326:	
;main.c: 303: {
;main.c: 304: TRISB &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	305
;main.c: 305: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	306
;main.c: 306: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	line	307
;main.c: 307: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l668
	line	311
	
i1l2328:	
;main.c: 311: if(baiweiNum > 0)
	movf	((_baiweiNum)),w
	btfsc	status,2
	goto	u204_21
	goto	u204_20
u204_21:
	goto	i1l668
u204_20:
	line	313
	
i1l2330:	
;main.c: 312: {
;main.c: 313: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	314
;main.c: 314: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	315
;main.c: 315: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	316
;main.c: 316: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l668
	line	173
	
i1l2334:	
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
goto i1l668
movlw high(i1S2940)
movwf pclath
	movlw low(i1S2940)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S2940:
	ljmp	i1l2328
	ljmp	i1l634
	ljmp	i1l637
	ljmp	i1l639
	ljmp	i1l641
	ljmp	i1l643
	ljmp	i1l645
	ljmp	i1l647
	ljmp	i1l649
	ljmp	i1l651
	ljmp	i1l653
	ljmp	i1l655
	ljmp	i1l657
	ljmp	i1l659
	ljmp	i1l661
	ljmp	i1l2324
psect	text21

	line	325
	
i1l668:	
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
