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
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	retlw	038h
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
	global	_chrgFullTime
	global	_intCount10
	global	_chrgFullFlag
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
	global	_RB3
_RB3	set	51
	global	_RB5
_RB5	set	53
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
	file	"D107_062B_SOP14.as"
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

_chrgFullTime:
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

_adresult:
       ds      2

	file	"D107_062B_SOP14.as"
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
	movlw	low((__pbssBANK0)+01Dh)
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
;!    Constant    12
;!    Data        0
;!    BSS         32
;!    Persistent  4
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      11
;!    BANK0            80     39      72
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
;!BANK0               50     27      48       4       90.0%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      53       7        0.0%
;!DATA                 0      0      53       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 117 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	117
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	117
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	119
	
l2927:	
;main.c: 119: Init_System();
	fcall	_Init_System
	line	120
;main.c: 120: AD_Init();
	fcall	_AD_Init
	line	121
	
l2929:	
;main.c: 121: shiweiNum = geweiNum = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_geweiNum)
	movwf	(_shiweiNum)
	line	122
	
l2931:	
;main.c: 122: baiweiNum = 1;
	clrf	(_baiweiNum)
	incf	(_baiweiNum),f
	line	123
	
l2933:	
;main.c: 123: firstTime = 200;
	movlw	low(0C8h)
	movwf	(_firstTime)
	line	124
;main.c: 124: while (1)
	
l617:	
	line	126
# 126 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
clrwdt ;# 
psect	maintext
	line	127
	
l2935:	
;main.c: 127: if(intCount10 > 10)
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_intCount10),w
	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l2939
u3220:
	line	129
	
l2937:	
;main.c: 128: {
;main.c: 129: intCount10 = 0;
	clrf	(_intCount10)
	line	131
	
l2939:	
;main.c: 130: }
;main.c: 131: if(!IntFlag)
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u3231
	goto	u3230
u3231:
	goto	l2943
u3230:
	goto	l617
	line	133
	
l2943:	
;main.c: 133: IntFlag = 0;
	clrf	(_IntFlag)
	line	134
	
l2945:	
;main.c: 134: chrgCtr();
	fcall	_chrgCtr
	line	135
	
l2947:	
;main.c: 135: checkBatAD();
	fcall	_checkBatAD
	line	136
	
l2949:	
;main.c: 136: setBatStep();
	fcall	_setBatStep
	line	137
	
l2951:	
;main.c: 137: if(lowBatFlag == 0 && firstTime == 0)
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u3241
	goto	u3240
u3241:
	goto	l2957
u3240:
	
l2953:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3251
	goto	u3250
u3251:
	goto	l2957
u3250:
	line	139
	
l2955:	
;main.c: 138: {
;main.c: 139: keyCtr();
	fcall	_keyCtr
	line	141
	
l2957:	
;main.c: 140: }
;main.c: 141: workCtr();
	fcall	_workCtr
	line	142
	
l2959:	
;main.c: 142: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && showBatTime == 0 )
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3261
	goto	u3260
u3261:
	goto	l2977
u3260:
	
l2961:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u3271
	goto	u3270
u3271:
	goto	l2977
u3270:
	
l2963:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l2977
u3280:
	
l2965:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l2977
u3290:
	
l2967:	
	movf	((_showBatTime)),w
	btfss	status,2
	goto	u3301
	goto	u3300
u3301:
	goto	l2977
u3300:
	line	144
	
l2969:	
;main.c: 143: {
;main.c: 144: baiweiNum = 0;
	clrf	(_baiweiNum)
	line	145
;main.c: 145: shiweiNum = geweiNum = 0;
	clrf	(_geweiNum)
	clrf	(_shiweiNum)
	line	146
	
l2971:	
;main.c: 146: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u3311
	goto	u3310
u3311:
	goto	l617
u3310:
	line	148
	
l2973:	
;main.c: 147: {
;main.c: 148: sleepTime = 0;
	clrf	(_sleepTime)
	line	149
	
l2975:	
;main.c: 149: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l617
	line	154
	
l2977:	
;main.c: 152: else
;main.c: 153: {
;main.c: 154: sleepTime = 0;
	clrf	(_sleepTime)
	goto	l617
	global	start
	ljmp	start
	opt stack 0
	line	157
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 446 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
;;		_pwmInit
;;		_pwmStop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	446
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	446
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	448
	
l2501:	
;main.c: 448: if(workStep > 0 && count1s == 0 && ++count900s >= 900)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l2509
u2440:
	
l2503:	
	movf	((_count1s)),w
	btfss	status,2
	goto	u2451
	goto	u2450
u2451:
	goto	l2509
u2450:
	
l2505:	
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	movlw	03h
	subwf	((_count900s+1)),w
	movlw	084h
	skipnz
	subwf	((_count900s)),w
	skipc
	goto	u2461
	goto	u2460
u2461:
	goto	l2509
u2460:
	line	450
	
l2507:	
;main.c: 449: {
;main.c: 450: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	451
;main.c: 451: workStep = 0;
	clrf	(_workStep)
	line	453
	
l2509:	
;main.c: 452: }
;main.c: 453: if(lowShanTime > 0)
	movf	((_lowShanTime)),w
iorwf	((_lowShanTime+1)),w
	btfsc	status,2
	goto	u2471
	goto	u2470
u2471:
	goto	l2515
u2470:
	line	455
	
l2511:	
;main.c: 454: {
;main.c: 455: if(--lowShanTime == 0)
	movlw	01h
	subwf	(_lowShanTime),f
	movlw	0
	skipc
	decf	(_lowShanTime+1),f
	subwf	(_lowShanTime+1),f
	movf	(((_lowShanTime))),w
iorwf	(((_lowShanTime+1))),w
	btfss	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l2515
u2480:
	line	457
	
l2513:	
;main.c: 456: {
;main.c: 457: workStep = 0;
	clrf	(_workStep)
	line	460
	
l2515:	
;main.c: 458: }
;main.c: 459: }
;main.c: 460: if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l2519
u2490:
	line	462
	
l2517:	
;main.c: 461: {
;main.c: 462: showBatTime--;
	decf	(_showBatTime),f
	line	464
	
l2519:	
;main.c: 463: }
;main.c: 464: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u2501
	goto	u2500
u2501:
	goto	l2533
u2500:
	line	466
	
l2521:	
;main.c: 465: {
;main.c: 466: firstTime--;
	decf	(_firstTime),f
	line	467
	
l2523:	
;main.c: 467: if(showBatStep < curBatStep)
	movf	(_curBatStep),w
	subwf	(_showBatStep),w
	skipnc
	goto	u2511
	goto	u2510
u2511:
	goto	l2527
u2510:
	line	469
	
l2525:	
;main.c: 468: {
;main.c: 469: showBatStep = curBatStep;
	movf	(_curBatStep),w
	movwf	(_showBatStep)
	line	471
	
l2527:	
;main.c: 470: }
;main.c: 471: shiweiNum = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	472
	
l2529:	
;main.c: 472: geweiNum = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	473
	
l2531:	
;main.c: 473: baiweiNum = 1;
	clrf	(_baiweiNum)
	incf	(_baiweiNum),f
	line	474
;main.c: 474: }
	goto	l2581
	line	475
	
l2533:	
;main.c: 475: else if(workStep == 0 || (lowShanTime > 0 && count1s < 50))
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2521
	goto	u2520
u2521:
	goto	l712
u2520:
	
l2535:	
	movf	((_lowShanTime)),w
iorwf	((_lowShanTime+1)),w
	btfsc	status,2
	goto	u2531
	goto	u2530
u2531:
	goto	l2545
u2530:
	
l2537:	
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u2541
	goto	u2540
u2541:
	goto	l2545
u2540:
	
l712:	
	line	477
;main.c: 476: {
;main.c: 477: PORTB |= 0x10;
	bsf	(6)+(4/8),(4)&7	;volatile
	line	478
	
l2539:	
;main.c: 478: shiweiNum = 0;
	clrf	(_shiweiNum)
	line	479
;main.c: 479: geweiNum = 0;
	clrf	(_geweiNum)
	line	480
;main.c: 480: baiweiNum = 0;
	clrf	(_baiweiNum)
	line	481
	
l2541:	
;main.c: 481: pwmStop();
	fcall	_pwmStop
	line	482
	
l2543:	
;main.c: 482: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	483
;main.c: 483: }
	goto	l2581
	line	484
	
l2545:	
;main.c: 484: else if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l2563
u2550:
	line	486
	
l2547:	
;main.c: 485: {
;main.c: 486: PORTB &= 0xEF;
	bcf	(6)+(4/8),(4)&7	;volatile
	line	487
	
l2549:	
;main.c: 487: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l2555
u2560:
	line	489
	
l2551:	
;main.c: 488: {
;main.c: 489: shiweiNum = numArray[10];
	movlw	low((((_numArray+0Ah)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	490
;main.c: 490: geweiNum = numArray[10];
	movlw	low((((_numArray+0Ah)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	491
	
l2553:	
;main.c: 491: baiweiNum = 0;
	clrf	(_baiweiNum)
	line	493
	
l2555:	
;main.c: 492: }
;main.c: 493: if(motorPwmFlag == 0)
	movf	((_motorPwmFlag)),w
	btfss	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l2559
u2570:
	line	495
	
l2557:	
;main.c: 494: {
;main.c: 495: pwmInit();
	fcall	_pwmInit
	line	497
	
l2559:	
;main.c: 496: }
;main.c: 497: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	498
	
l2561:	
;main.c: 498: PWMD2L = 60;
	movlw	low(03Ch)
	movwf	(155)^080h	;volatile
	line	499
;main.c: 499: }
	goto	l2581
	line	500
	
l2563:	
;main.c: 500: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l713
u2580:
	line	502
	
l2565:	
;main.c: 501: {
;main.c: 502: PORTB &= 0xEF;
	bcf	(6)+(4/8),(4)&7	;volatile
	line	503
	
l2567:	
;main.c: 503: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l2573
u2590:
	line	505
	
l2569:	
;main.c: 504: {
;main.c: 505: shiweiNum = numArray[11];
	movlw	low((((_numArray+0Bh)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	506
;main.c: 506: geweiNum = numArray[11];
	movlw	low((((_numArray+0Bh)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	507
	
l2571:	
;main.c: 507: baiweiNum = 0;
	clrf	(_baiweiNum)
	line	509
	
l2573:	
;main.c: 508: }
;main.c: 509: if(motorPwmFlag == 0)
	movf	((_motorPwmFlag)),w
	btfss	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l2577
u2600:
	line	511
	
l2575:	
;main.c: 510: {
;main.c: 511: pwmInit();
	fcall	_pwmInit
	line	513
	
l2577:	
;main.c: 512: }
;main.c: 513: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	514
	
l2579:	
;main.c: 514: PWMD2L = 99;
	movlw	low(063h)
	movwf	(155)^080h	;volatile
	goto	l2581
	line	517
	
l713:	
	
l2581:	
;main.c: 516: }
;main.c: 517: if(chrgFlag || showBatTime > 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l2585
u2610:
	
l2583:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l732
u2620:
	line	519
	
l2585:	
;main.c: 518: {
;main.c: 519: if(showBatStep > 99)
	movlw	low(064h)
	subwf	(_showBatStep),w
	skipc
	goto	u2631
	goto	u2630
u2631:
	goto	l2589
u2630:
	line	521
	
l2587:	
;main.c: 520: {
;main.c: 521: baiweiNum = numArray[1];
	movlw	low((((_numArray+01h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_baiweiNum)
	line	522
;main.c: 522: shiweiNum = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	523
;main.c: 523: geweiNum = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	524
;main.c: 524: }
	goto	l732
	line	525
	
l2589:	
;main.c: 525: else if(showBatStep > 9)
	movlw	low(0Ah)
	subwf	(_showBatStep),w
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l2603
u2640:
	line	527
	
l2591:	
;main.c: 526: {
;main.c: 527: baiweiNum = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_baiweiNum)
	line	528
	
l2593:	
;main.c: 528: shiweiNum = numArray[showBatStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_showBatStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	529
	
l2595:	
;main.c: 529: if(chrgFlag && count1s < 50)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l2601
u2650:
	
l2597:	
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u2661
	goto	u2660
u2661:
	goto	l2601
u2660:
	line	531
	
l2599:	
;main.c: 530: {
;main.c: 531: geweiNum = 0;
	clrf	(_geweiNum)
	line	532
;main.c: 532: }
	goto	l732
	line	535
	
l2601:	
;main.c: 533: else
;main.c: 534: {
;main.c: 535: geweiNum = numArray[showBatStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_showBatStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	goto	l732
	line	540
	
l2603:	
;main.c: 538: else
;main.c: 539: {
;main.c: 540: baiweiNum = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_baiweiNum)
	line	541
;main.c: 541: shiweiNum = 0;
	clrf	(_shiweiNum)
	line	542
	
l2605:	
;main.c: 542: if(chrgFlag && count1s < 50)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l2611
u2670:
	
l2607:	
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u2681
	goto	u2680
u2681:
	goto	l2611
u2680:
	goto	l2599
	line	548
	
l2611:	
;main.c: 546: else
;main.c: 547: {
;main.c: 548: geweiNum = numArray[showBatStep];
	movf	(_showBatStep),w
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	554
	
l732:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 777 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
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
	line	777
global __ptext2
__ptext2:	;psect for function _pwmStop
psect	text2
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	777
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: [status,2]
	line	779
	
l2067:	
;main.c: 779: PWMCON0 &= 0XFB;
	bcf	(21)+(2/8),(2)&7	;volatile
	line	780
;main.c: 780: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	781
	
l2069:	
;main.c: 781: motorPwmFlag = 0;
	clrf	(_motorPwmFlag)
	line	782
	
l774:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 761 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	761
global __ptext3
__ptext3:	;psect for function _pwmInit
psect	text3
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	761
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2]
	line	763
	
l2071:	
;main.c: 763: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	764
;main.c: 764: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	765
	
l2073:	
;main.c: 765: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	768
	
l2075:	
;main.c: 768: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	769
;main.c: 769: PWMD2L = 60;
	movlw	low(03Ch)
	movwf	(155)^080h	;volatile
	line	770
	
l2077:	
;main.c: 770: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	772
	
l2079:	
;main.c: 772: PWMCON0 = 0X64;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	773
;main.c: 773: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	774
	
l2081:	
;main.c: 774: motorPwmFlag = 1;
	clrf	(_motorPwmFlag)
	incf	(_motorPwmFlag),f
	line	775
	
l771:	
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
	
l2259:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l2261:	
	clrf	(___lbmod@rem)
	line	12
	
l2263:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u1875:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u1875
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l2265:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l2267:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u1881
	goto	u1880
u1881:
	goto	l2271
u1880:
	line	15
	
l2269:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l2271:	
	decfsz	(___lbmod@counter),f
	goto	u1891
	goto	u1890
u1891:
	goto	l2263
u1890:
	line	17
	
l2273:	
	movf	(___lbmod@rem),w
	line	18
	
l1074:	
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
	
l2235:	
	clrf	(___lbdiv@quotient)
	line	10
	
l2237:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1831
	goto	u1830
u1831:
	goto	l2255
u1830:
	line	11
	
l2239:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2243
	
l1063:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l2241:	
	incf	(___lbdiv@counter),f
	line	12
	
l2243:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1841
	goto	u1840
u1841:
	goto	l1063
u1840:
	line	16
	
l1065:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l2245:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1851
	goto	u1850
u1851:
	goto	l2251
u1850:
	line	19
	
l2247:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2249:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2251:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l2253:	
	decfsz	(___lbdiv@counter),f
	goto	u1861
	goto	u1860
u1861:
	goto	l1065
u1860:
	line	25
	
l2255:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1068:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_setBatStep

;; *************** function _setBatStep *****************
;; Defined at:
;;		line 556 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	556
global __ptext6
__ptext6:	;psect for function _setBatStep
psect	text6
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	556
	global	__size_of_setBatStep
	__size_of_setBatStep	equ	__end_of_setBatStep-_setBatStep
	
_setBatStep:	
;incstack = 0
	opt	stack 4
; Regs used in _setBatStep: [wreg+status,2+status,0+pclath+cstack]
	line	558
	
l2859:	
;main.c: 558: if(lowBatFlag == 1 && lowShanTime == 0 && workStep > 0)
	bcf	status, 5	;RP0=0, select bank0
		decf	((_lowBatFlag)),w
	btfss	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l2869
u3020:
	
l2861:	
	movf	((_lowShanTime)),w
iorwf	((_lowShanTime+1)),w
	btfss	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l2869
u3030:
	
l2863:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l2869
u3040:
	line	560
	
l2865:	
;main.c: 559: {
;main.c: 560: showBatStep = 0;
	clrf	(_showBatStep)
	line	561
;main.c: 561: curBatStep = 0;
	clrf	(_curBatStep)
	line	562
	
l2867:	
;main.c: 562: lowShanTime = 300;
	movlw	02Ch
	movwf	(_lowShanTime)
	movlw	01h
	movwf	((_lowShanTime))+1
	line	563
;main.c: 563: }
	goto	l757
	line	564
	
l2869:	
;main.c: 564: else if(power_ad < 2800)
	movlw	0Ah
	subwf	(_power_ad+1),w	;volatile
	movlw	0F0h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u3051
	goto	u3050
u3051:
	goto	l2879
u3050:
	line	566
	
l2871:	
;main.c: 565: {
;main.c: 566: if(count1s == 0)
	movf	((_count1s)),w
	btfss	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l738
u3060:
	line	568
	
l2873:	
;main.c: 567: {
;main.c: 568: if(showBatStep > 1)
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u3071
	goto	u3070
u3071:
	goto	l739
u3070:
	line	570
	
l2875:	
;main.c: 569: {
;main.c: 570: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l741
u3080:
	line	571
	
l2877:	
;main.c: 571: showBatStep--;
	decf	(_showBatStep),f
	goto	l741
	line	573
	
l739:	
	line	575
;main.c: 573: else
;main.c: 574: {
;main.c: 575: showBatStep = 1;
	clrf	(_showBatStep)
	incf	(_showBatStep),f
	line	576
	
l741:	
	line	577
;main.c: 576: }
;main.c: 577: curBatStep = 1;
	clrf	(_curBatStep)
	incf	(_curBatStep),f
	line	578
	
l738:	
	line	579
;main.c: 578: }
;main.c: 579: curBatStep = 1;
	clrf	(_curBatStep)
	incf	(_curBatStep),f
	line	580
;main.c: 580: }
	goto	l757
	line	583
	
l2879:	
;main.c: 581: else
;main.c: 582: {
;main.c: 583: if(power_ad < 3600)
	movlw	0Eh
	subwf	(_power_ad+1),w	;volatile
	movlw	010h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u3091
	goto	u3090
u3091:
	goto	l2883
u3090:
	line	585
	
l2881:	
;main.c: 584: {
;main.c: 585: curBatStep = (power_ad - 2800)/40;
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
	line	586
;main.c: 586: }
	goto	l2885
	line	589
	
l2883:	
;main.c: 587: else
;main.c: 588: {
;main.c: 589: curBatStep = 20 + ((power_ad - 3600)/6);
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
	line	591
	
l2885:	
;main.c: 590: }
;main.c: 591: if(curBatStep > 100)
	movlw	low(065h)
	subwf	(_curBatStep),w
	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l2889
u3100:
	line	593
	
l2887:	
;main.c: 592: {
;main.c: 593: curBatStep = 100;
	movlw	low(064h)
	movwf	(_curBatStep)
	line	596
	
l2889:	
;main.c: 594: }
;main.c: 596: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3111
	goto	u3110
u3111:
	goto	l2913
u3110:
	line	598
	
l2891:	
;main.c: 597: {
;main.c: 598: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l2901
u3120:
	line	600
	
l2893:	
;main.c: 599: {
;main.c: 600: if(++count30s >= 3000 && showBatStep < 100)
	incf	(_count30s),f
	skipnz
	incf	(_count30s+1),f
	movlw	0Bh
	subwf	((_count30s+1)),w
	movlw	0B8h
	skipnz
	subwf	((_count30s)),w
	skipc
	goto	u3131
	goto	u3130
u3131:
	goto	l757
u3130:
	
l2895:	
	movlw	low(064h)
	subwf	(_showBatStep),w
	skipnc
	goto	u3141
	goto	u3140
u3141:
	goto	l757
u3140:
	line	602
	
l2897:	
;main.c: 601: {
;main.c: 602: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	line	603
	
l2899:	
;main.c: 603: showBatStep++;
	incf	(_showBatStep),f
	goto	l757
	line	606
	
l2901:	
;main.c: 606: else if(curBatStep > showBatStep)
	movf	(_curBatStep),w
	subwf	(_showBatStep),w
	skipnc
	goto	u3151
	goto	u3150
u3151:
	goto	l2911
u3150:
	line	608
	
l2903:	
;main.c: 607: {
;main.c: 608: if(++count30s >= 30000 && showBatStep < 100)
	incf	(_count30s),f
	skipnz
	incf	(_count30s+1),f
	movlw	075h
	subwf	((_count30s+1)),w
	movlw	030h
	skipnz
	subwf	((_count30s)),w
	skipc
	goto	u3161
	goto	u3160
u3161:
	goto	l753
u3160:
	
l2905:	
	movlw	low(064h)
	subwf	(_showBatStep),w
	skipnc
	goto	u3171
	goto	u3170
u3171:
	goto	l753
u3170:
	goto	l2897
	line	617
	
l2911:	
;main.c: 615: else
;main.c: 616: {
;main.c: 617: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	goto	l757
	line	622
	
l2913:	
;main.c: 620: else
;main.c: 621: {
;main.c: 622: if(curBatStep < showBatStep && showBatStep > 1)
	movf	(_showBatStep),w
	subwf	(_curBatStep),w
	skipnc
	goto	u3181
	goto	u3180
u3181:
	goto	l2911
u3180:
	
l2915:	
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u3191
	goto	u3190
u3191:
	goto	l2911
u3190:
	line	624
	
l2917:	
;main.c: 623: {
;main.c: 624: if(++count30s >= 1500 && showBatStep > 1)
	incf	(_count30s),f
	skipnz
	incf	(_count30s+1),f
	movlw	05h
	subwf	((_count30s+1)),w
	movlw	0DCh
	skipnz
	subwf	((_count30s)),w
	skipc
	goto	u3201
	goto	u3200
u3201:
	goto	l753
u3200:
	
l2919:	
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u3211
	goto	u3210
u3211:
	goto	l753
u3210:
	line	626
	
l2921:	
;main.c: 625: {
;main.c: 626: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	line	627
	
l2923:	
;main.c: 627: showBatStep--;
	decf	(_showBatStep),f
	goto	l757
	line	634
	
l753:	
	line	637
	
l757:	
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
	
l2817:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l2819:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u2971
	goto	u2970
u2971:
	goto	l2839
u2970:
	line	16
	
l2821:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l2825
	line	18
	
l2823:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l2825:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l2823
u2980:
	line	22
	
l2827:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l2829:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2995
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2995:
	skipc
	goto	u2991
	goto	u2990
u2991:
	goto	l2835
u2990:
	line	24
	
l2831:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l2833:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l2835:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l2837:	
	decfsz	(___lwdiv@counter),f
	goto	u3001
	goto	u3000
u3001:
	goto	l2827
u3000:
	line	30
	
l2839:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l1142:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 407 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	407
global __ptext8
__ptext8:	;psect for function _keyCtr
psect	text8
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	407
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	409
	
l2475:	
;main.c: 409: char kclick = keyRead(0x04 & (~PORTB));
	comf	(6),w	;volatile
	andlw	04h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	410
	
l2477:	
;main.c: 410: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2381
	goto	u2380
u2381:
	goto	l2493
u2380:
	line	412
	
l2479:	
;main.c: 411: {
;main.c: 412: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2391
	goto	u2390
u2391:
	goto	l2485
u2390:
	line	414
	
l2481:	
;main.c: 413: {
;main.c: 414: if(++workStep > 2)
	movlw	low(03h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u2401
	goto	u2400
u2401:
	goto	l700
u2400:
	line	416
	
l2483:	
;main.c: 415: {
;main.c: 416: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l700
	line	419
	
l2485:	
;main.c: 419: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2411
	goto	u2410
u2411:
	goto	l2489
u2410:
	line	421
	
l2487:	
;main.c: 420: {
;main.c: 421: showBatTime = 0;
	clrf	(_showBatTime)
	line	422
;main.c: 422: }
	goto	l700
	line	425
	
l2489:	
;main.c: 423: else
;main.c: 424: {
;main.c: 425: showBatTime = 200;
	movlw	low(0C8h)
	movwf	(_showBatTime)
	line	426
	
l2491:	
;main.c: 426: count1s = 0;
	clrf	(_count1s)
	goto	l700
	line	429
	
l2493:	
;main.c: 429: else if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2421
	goto	u2420
u2421:
	goto	l700
u2420:
	line	431
	
l2495:	
;main.c: 430: {
;main.c: 431: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2431
	goto	u2430
u2431:
	goto	l698
u2430:
	line	433
	
l2497:	
;main.c: 432: {
;main.c: 433: workStep = 0;
	clrf	(_workStep)
	line	434
;main.c: 434: }
	goto	l700
	line	435
	
l698:	
	line	437
;main.c: 435: else
;main.c: 436: {
;main.c: 437: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	438
	
l2499:	
;main.c: 438: showBatTime = 0;
	clrf	(_showBatTime)
	line	439
;main.c: 439: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	443
	
l700:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 372 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	372
global __ptext9
__ptext9:	;psect for function _keyRead
psect	text9
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	372
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	374
	
l2027:	
;main.c: 374: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1511
	goto	u1510
u1511:
	goto	l2043
u1510:
	line	376
	
l2029:	
;main.c: 375: {
;main.c: 376: keyCount++;
	incf	(_keyCount),f
	line	377
	
l2031:	
;main.c: 377: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1521
	goto	u1520
u1521:
	goto	l2047
u1520:
	line	379
	
l2033:	
;main.c: 378: {
;main.c: 379: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	line	380
	
l2035:	
;main.c: 380: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1531
	goto	u1530
u1531:
	goto	l2047
u1530:
	line	382
	
l2037:	
;main.c: 381: {
;main.c: 382: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	383
	
l2039:	
;main.c: 383: return 2;
	movlw	low(02h)
	goto	l683
	line	389
	
l2043:	
;main.c: 387: else
;main.c: 388: {
;main.c: 389: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1541
	goto	u1540
u1541:
	goto	l2053
u1540:
	line	391
	
l2045:	
;main.c: 390: {
;main.c: 391: keyCount = 0;
	clrf	(_keyCount)
	line	392
;main.c: 392: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	393
	
l2047:	
;main.c: 393: return 0;
	movlw	low(0)
	goto	l683
	line	395
	
l2053:	
;main.c: 395: else if(keyCount >= 6)
	movlw	low(06h)
	subwf	(_keyCount),w
	skipc
	goto	u1551
	goto	u1550
u1551:
	goto	l2061
u1550:
	line	397
	
l2055:	
;main.c: 396: {
;main.c: 397: keyCount = 0;
	clrf	(_keyCount)
	line	398
	
l2057:	
;main.c: 398: return 1;
	movlw	low(01h)
	goto	l683
	line	400
	
l2061:	
;main.c: 399: }
;main.c: 400: keyCount = 0;
	clrf	(_keyCount)
	goto	l2047
	line	403
	
l683:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 331 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	331
global __ptext10
__ptext10:	;psect for function _chrgCtr
psect	text10
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	331
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _chrgCtr: [wreg+status,2+status,0]
	line	333
	
l2367:	
;main.c: 333: if(PORTB & 0x02)
	btfss	(6),(1)&7	;volatile
	goto	u2121
	goto	u2120
u2121:
	goto	l2383
u2120:
	line	335
	
l2369:	
;main.c: 334: {
;main.c: 335: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	336
	
l2371:	
;main.c: 336: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	337
	
l2373:	
;main.c: 337: if(PORTB & 0x01)
	btfss	(6),(0)&7	;volatile
	goto	u2131
	goto	u2130
u2131:
	goto	l2381
u2130:
	line	339
	
l2375:	
;main.c: 338: {
;main.c: 339: if(++chrgFullTime >= 200)
	movlw	low(0C8h)
	incf	(_chrgFullTime),f
	subwf	((_chrgFullTime)),w
	skipc
	goto	u2141
	goto	u2140
u2141:
	goto	l677
u2140:
	line	341
	
l2377:	
;main.c: 340: {
;main.c: 341: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	line	342
	
l2379:	
;main.c: 342: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l677
	line	347
	
l2381:	
;main.c: 345: else
;main.c: 346: {
;main.c: 347: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	goto	l677
	line	352
	
l2383:	
;main.c: 350: else
;main.c: 351: {
;main.c: 352: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	353
;main.c: 353: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	354
;main.c: 354: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	line	355
	
l2385:	
;main.c: 355: if(power_ad < 2500)
	movlw	09h
	subwf	(_power_ad+1),w	;volatile
	movlw	0C4h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u2151
	goto	u2150
u2151:
	goto	l2393
u2150:
	line	357
	
l2387:	
;main.c: 356: {
;main.c: 357: if(++lowBatTime > 200)
	movlw	low(0C9h)
	incf	(_lowBatTime),f
	subwf	((_lowBatTime)),w
	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l677
u2160:
	line	359
	
l2389:	
;main.c: 358: {
;main.c: 359: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	360
	
l2391:	
;main.c: 360: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	goto	l677
	line	365
	
l2393:	
;main.c: 363: else
;main.c: 364: {
;main.c: 365: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	368
	
l677:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 640 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	640
global __ptext11
__ptext11:	;psect for function _checkBatAD
psect	text11
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	640
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 3
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	642
	
l2847:	
;main.c: 642: test_adc = ADC_Sample(31, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(01Fh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	643
	
l2849:	
;main.c: 643: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l2855
u3010:
	line	647
	
l2851:	
;main.c: 644: {
;main.c: 645: volatile unsigned long power_temp;
;main.c: 647: power_temp = (unsigned long)(((4096UL*1.2*1000))/adresult);
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

	line	648
	
l2853:	
;main.c: 648: power_ad = (unsigned int)(power_temp);
	movf	(checkBatAD@power_temp+1),w	;volatile
	movwf	(_power_ad+1)	;volatile
	movf	(checkBatAD@power_temp),w	;volatile
	movwf	(_power_ad)	;volatile
	line	649
;main.c: 649: }
	goto	l762
	line	652
	
l2855:	
;main.c: 650: else
;main.c: 651: {
;main.c: 652: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	653
;main.c: 653: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	654
	
l2857:	
;main.c: 654: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_checkBatAD+0)+0),f
	u3327:
decfsz	(??_checkBatAD+0)+0,f
	goto	u3327
	nop2
opt asmopt_pop

	line	657
	
l762:	
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
	
l2843:	
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
	
l1157:	
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
	
l2195:	
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
	goto	u1751
	goto	u1750
u1751:
	goto	l2199
u1750:
	line	50
	
l2197:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l1048
	line	51
	
l2199:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u1765:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u1760:
	addlw	-1
	skipz
	goto	u1765
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2201:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2203:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2205:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2207:	
	movlw	08Eh
	subwf	(___fttol@exp1),f
	line	56
	
l2209:	
	btfss	(___fttol@exp1),7
	goto	u1771
	goto	u1770
u1771:
	goto	l2219
u1770:
	line	57
	
l2211:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u1781
	goto	u1780
u1781:
	goto	l2215
u1780:
	goto	l2197
	line	60
	
l2215:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l2217:	
	incfsz	(___fttol@exp1),f
	goto	u1791
	goto	u1790
u1791:
	goto	l2215
u1790:
	goto	l2227
	line	63
	
l2219:	
	movlw	low(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u1801
	goto	u1800
u1801:
	goto	l2225
u1800:
	goto	l2197
	line	66
	
l2223:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	65
	
l2225:	
	movf	((___fttol@exp1)),w
	btfss	status,2
	goto	u1811
	goto	u1810
u1811:
	goto	l2223
u1810:
	line	70
	
l2227:	
	movf	((___fttol@sign1)),w
	btfsc	status,2
	goto	u1821
	goto	u1820
u1821:
	goto	l2231
u1820:
	line	71
	
l2229:	
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
	
l2231:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l1048:	
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
	
l2777:	
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
	goto	u2931
	goto	u2930
u2931:
	goto	l2781
u2930:
	line	64
	
l2779:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1012
	line	65
	
l2781:	
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
	goto	u2941
	goto	u2940
u2941:
	goto	l1013
u2940:
	line	66
	
l2783:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1012
	
l1013:	
	line	67
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	68
	
l2785:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l2787:	
	movf	0+(___ftdiv@f1)+02h,w
	movwf	(___ftdiv@sign)
	line	70
	
l2789:	
	movf	0+(___ftdiv@f2)+02h,w
	xorwf	(___ftdiv@sign),f
	line	71
	
l2791:	
	movlw	low(080h)
	andwf	(___ftdiv@sign),f
	line	72
	
l2793:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	
l2795:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l2797:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	
l2799:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	
l2801:	
	movlw	low(018h)
	movwf	(___ftdiv@cntr)
	line	78
	
l2803:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	79
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u2955
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u2955
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u2955:
	skipc
	goto	u2951
	goto	u2950
u2951:
	goto	l2809
u2950:
	line	80
	
l2805:	
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
	
l2807:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	83
	
l2809:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	84
	
l2811:	
	decfsz	(___ftdiv@cntr),f
	goto	u2961
	goto	u2960
u2961:
	goto	l2803
u2960:
	line	85
	
l2813:	
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
	
l1012:	
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
	
l2753:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l959
u2850:
	
l2755:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2861
	goto	u2860
u2861:
	goto	l2759
u2860:
	
l959:	
	line	65
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l960
	line	67
	
l2757:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l2759:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2871
	goto	u2870
u2871:
	goto	l2757
u2870:
	goto	l2763
	line	71
	
l2761:	
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
	
l2763:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l2761
u2880:
	goto	l2767
	line	76
	
l2765:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l2767:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l971
u2890:
	
l2769:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u2901
	goto	u2900
u2901:
	goto	l2765
u2900:
	
l971:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l972
u2910:
	line	80
	
l2771:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l972:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l2773:	
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
	goto	u2921
	goto	u2920
u2921:
	goto	l973
u2920:
	line	84
	
l2775:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l973:	
	line	85
	line	86
	
l960:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 869 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	869
global __ptext16
__ptext16:	;psect for function _ADC_Sample
psect	text16
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	869
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	871
	
l2083:	
;main.c: 871: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	872
	
l2085:	
;main.c: 872: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	873
;main.c: 873: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	875
	
l2087:	
;main.c: 875: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u1561
	goto	u1560
u1561:
	goto	l2093
u1560:
	
l2089:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u1571
	goto	u1570
u1571:
	goto	l2093
u1570:
	line	878
	
l2091:	
;main.c: 876: {
;main.c: 878: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	879
;main.c: 879: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_ADC_Sample+0)+0),f
	u3337:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u3337
opt asmopt_pop

	line	880
;main.c: 880: }
	goto	l2095
	line	882
	
l2093:	
;main.c: 881: else
;main.c: 882: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	884
	
l2095:	
;main.c: 884: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u1581
	goto	u1580
u1581:
	goto	l2101
u1580:
	line	886
	
l2097:	
;main.c: 885: {
;main.c: 886: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	887
	
l2099:	
;main.c: 887: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	889
	
l2101:	
	line	890
	
l2103:	
;main.c: 890: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	892
	
l2109:	
;main.c: 891: {
;main.c: 892: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u1595:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u1595
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	893
# 893 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	894
# 894 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	895
# 895 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	896
# 896 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
psect	text16
	line	897
	
l2111:	
;main.c: 897: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	899
	
l2113:	
;main.c: 899: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	900
;main.c: 900: while (GODONE)
	goto	l788
	
l789:	
	line	902
;main.c: 901: {
;main.c: 902: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	904
;main.c: 904: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u1601
	goto	u1600
u1601:
	goto	l788
u1600:
	line	905
	
l2115:	
;main.c: 905: return 0;
	movlw	low(0)
	goto	l791
	line	906
	
l788:	
	line	900
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u1611
	goto	u1610
u1611:
	goto	l789
u1610:
	line	908
	
l2119:	
;main.c: 906: }
;main.c: 908: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l2121:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	910
	
l2123:	
;main.c: 910: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u1621
	goto	u1620
u1621:
	goto	l2127
u1620:
	line	912
	
l2125:	
;main.c: 911: {
;main.c: 912: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	913
;main.c: 913: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	914
;main.c: 914: }
	goto	l794
	line	915
	
l2127:	
;main.c: 915: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u1635
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u1635:
	skipnc
	goto	u1631
	goto	u1630
u1631:
	goto	l2131
u1630:
	line	916
	
l2129:	
;main.c: 916: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l794
	line	917
	
l2131:	
;main.c: 917: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u1645
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u1645:
	skipnc
	goto	u1641
	goto	u1640
u1641:
	goto	l794
u1640:
	line	918
	
l2133:	
;main.c: 918: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	920
	
l794:	
;main.c: 920: adsum += ad_temp;
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
	goto	u1651
	addwf	(ADC_Sample@adsum+1),f	;volatile
u1651:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1652
	addwf	(ADC_Sample@adsum+2),f	;volatile
u1652:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1653
	addwf	(ADC_Sample@adsum+3),f	;volatile
u1653:

	line	890
	
l2135:	
	incf	(ADC_Sample@i),f
	
l2137:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u1661
	goto	u1660
u1661:
	goto	l2109
u1660:
	line	922
	
l2139:	
;main.c: 921: }
;main.c: 922: adsum -= admax;
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
	goto	u1675
	goto	u1676
u1675:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u1676:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1677
	goto	u1678
u1677:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u1678:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1679
	goto	u1670
u1679:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u1670:

	line	923
;main.c: 923: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u1685
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u1685
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u1685
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u1685:
	skipc
	goto	u1681
	goto	u1680
u1681:
	goto	l798
u1680:
	line	924
	
l2141:	
;main.c: 924: adsum -= admin;
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
	goto	u1695
	goto	u1696
u1695:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u1696:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1697
	goto	u1698
u1697:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u1698:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1699
	goto	u1690
u1699:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u1690:

	goto	l2143
	line	925
	
l798:	
	line	926
;main.c: 925: else
;main.c: 926: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	928
	
l2143:	
;main.c: 928: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u1705:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u1700:
	addlw	-1
	skipz
	goto	u1705
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	930
	
l2145:	
;main.c: 930: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	931
	
l2147:	
;main.c: 931: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	932
	
l2149:	
;main.c: 932: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	933
	
l2151:	
;main.c: 933: return 0xA5;
	movlw	low(0A5h)
	line	935
	
l791:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 792 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	792
global __ptext17
__ptext17:	;psect for function _Sleep_Mode
psect	text17
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	792
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 4
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	794
	
l2613:	
;main.c: 794: INTCON = 0;
	clrf	(11)	;volatile
	line	796
;main.c: 796: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	798
;main.c: 798: WPUA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	799
	
l2615:	
;main.c: 799: TRISA = 0x01;
	movlw	low(01h)
	movwf	(133)^080h	;volatile
	line	800
	
l2617:	
;main.c: 800: TRISB = 0x07;
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	802
;main.c: 802: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	803
	
l2619:	
;main.c: 803: PORTB = 0X10;
	movlw	low(010h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	804
	
l2621:	
;main.c: 804: WPUB = 0x05;
	movlw	low(05h)
	movwf	(8)	;volatile
	line	806
;main.c: 806: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	807
;main.c: 807: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	809
;main.c: 809: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	811
	
l2623:	
;main.c: 811: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	813
	
l2625:	
;main.c: 813: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	814
;main.c: 814: IOCB = 0x06;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	816
	
l2627:	
;main.c: 816: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	817
	
l2629:	
;main.c: 817: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	818
	
l2631:	
;main.c: 818: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	819
	
l2633:	
;main.c: 819: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	821
	
l2635:	
;main.c: 821: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	822
	
l2637:	
;main.c: 822: PIR1 = 0;
	clrf	(13)	;volatile
	line	823
	
l2639:	
;main.c: 823: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	825
	
l2641:	
;main.c: 825: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	826
	
l2643:	
;main.c: 826: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	827
	
l2645:	
;main.c: 827: PORTB;
	movf	(6),w	;volatile
	line	828
	
l2647:	
;main.c: 828: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	829
# 829 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
clrwdt ;# 
	line	831
# 831 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
sleep ;# 
	line	833
# 833 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	834
# 834 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
clrwdt ;# 
	line	835
# 835 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	836
# 836 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	837
# 837 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	838
# 838 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	839
# 839 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
psect	text17
	line	840
	
l2649:	
;main.c: 840: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u2691
	goto	u2690
u2691:
	goto	l777
u2690:
	
l2651:	
	bcf	(107/8),(107)&7	;volatile
	
l777:	
	line	841
;main.c: 841: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u2701
	goto	u2700
u2701:
	goto	l778
u2700:
	
l2653:	
	bcf	(88/8),(88)&7	;volatile
	
l778:	
	line	842
;main.c: 842: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u2711
	goto	u2710
u2711:
	goto	l2657
u2710:
	
l2655:	
	bcf	(105/8),(105)&7	;volatile
	line	843
	
l2657:	
;main.c: 843: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	844
;main.c: 844: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	845
	
l2659:	
;main.c: 845: Init_System();
	fcall	_Init_System
	line	846
	
l2661:	
;main.c: 846: AD_Init();
	fcall	_AD_Init
	line	847
	
l780:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 668 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	668
global __ptext18
__ptext18:	;psect for function _Init_System
psect	text18
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	668
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	670
	
l1991:	
# 670 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	671
# 671 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
clrwdt ;# 
psect	text18
	line	672
	
l1993:	
;main.c: 672: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	673
# 673 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
clrwdt ;# 
psect	text18
	line	674
	
l1995:	
;main.c: 674: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	676
	
l1997:	
;main.c: 676: WPUA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	677
	
l1999:	
;main.c: 677: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	678
	
l2001:	
;main.c: 678: WPUB = 0x05;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	680
	
l2003:	
;main.c: 680: TRISA = 0x01;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	681
	
l2005:	
;main.c: 681: TRISB = 0x07;
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	683
;main.c: 683: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	684
	
l2007:	
;main.c: 684: PORTB = 0X10;
	movlw	low(010h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	688
	
l2009:	
;main.c: 688: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	689
	
l2011:	
;main.c: 689: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	690
	
l2013:	
;main.c: 690: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	692
	
l2015:	
;main.c: 692: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	693
	
l2017:	
;main.c: 693: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	694
	
l765:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 705 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	705
global __ptext19
__ptext19:	;psect for function _AD_Init
psect	text19
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	705
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _AD_Init: [wreg+status,2]
	line	738
	
l2019:	
;main.c: 738: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	755
	
l2021:	
;main.c: 755: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	756
	
l2023:	
;main.c: 756: ANSEL0 = 0X00;
	clrf	(147)^080h	;volatile
	line	757
	
l2025:	
;main.c: 757: ANSEL1 = 0x00;
	clrf	(148)^080h	;volatile
	line	758
	
l768:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 93 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	93
global __ptext20
__ptext20:	;psect for function _Isr_Timer
psect	text20
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	93
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
	line	95
	
i1l2663:	
;main.c: 95: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u272_21
	goto	u272_20
u272_21:
	goto	i1l612
u272_20:
	line	97
	
i1l2665:	
;main.c: 96: {
;main.c: 97: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	98
	
i1l2667:	
;main.c: 98: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u273_21
	goto	u273_20
u273_21:
	goto	i1l2677
u273_20:
	line	100
	
i1l2669:	
;main.c: 99: {
;main.c: 100: intCount = 0;
	clrf	(_intCount)
	line	101
	
i1l2671:	
;main.c: 101: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	102
	
i1l2673:	
;main.c: 102: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u274_21
	goto	u274_20
u274_21:
	goto	i1l2677
u274_20:
	line	104
	
i1l2675:	
;main.c: 103: {
;main.c: 104: count1s = 0;
	clrf	(_count1s)
	line	107
	
i1l2677:	
;main.c: 105: }
;main.c: 106: }
;main.c: 107: ledShow();
	fcall	_ledShow
	line	108
	
i1l2679:	
;main.c: 108: intCount10++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_intCount10),f
	line	111
	
i1l612:	
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
;;		line 159 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	159
global __ptext21
__ptext21:	;psect for function _ledShow
psect	text21
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	159
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 3
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	161
	
i1l2307:	
;main.c: 161: if(++ledCntTime > 5)
	movlw	low(06h)
	incf	(_ledCntTime),f
	subwf	((_ledCntTime)),w
	skipc
	goto	u194_21
	goto	u194_20
u194_21:
	goto	i1l666
u194_20:
	line	163
	
i1l2309:	
;main.c: 162: {
;main.c: 163: ledCntTime = 0;
	clrf	(_ledCntTime)
	line	164
	
i1l2311:	
;main.c: 164: if(++ledCnt > 15)
	movlw	low(010h)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u195_21
	goto	u195_20
u195_21:
	goto	i1l2315
u195_20:
	line	166
	
i1l2313:	
;main.c: 165: {
;main.c: 166: ledCnt = 0;
	clrf	(_ledCnt)
	line	168
	
i1l2315:	
;main.c: 167: }
;main.c: 168: PORTA &= 0xC3;
	movlw	low(0C3h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	169
	
i1l2317:	
;main.c: 169: PORTB &= 0xDF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(6)+(5/8),(5)&7	;volatile
	line	170
	
i1l2319:	
;main.c: 170: TRISA |= 0x3C;
	movlw	low(03Ch)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	171
	
i1l2321:	
;main.c: 171: TRISB |= 0x20;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(5/8),(5)&7	;volatile
	line	172
;main.c: 172: switch(ledCnt)
	goto	i1l2361
	line	174
;main.c: 173: {
;main.c: 174: case 1:
	
i1l632:	
	line	175
;main.c: 175: if(shiweiNum & 0x01)
	btfss	(_shiweiNum),(0)&7
	goto	u196_21
	goto	u196_20
u196_21:
	goto	i1l666
u196_20:
	line	177
	
i1l2323:	
;main.c: 176: {
;main.c: 177: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	178
;main.c: 178: TRISA &= 0xDF;
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	179
;main.c: 179: RA5 = 1;
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	180
;main.c: 180: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l666
	line	183
;main.c: 183: case 2:
	
i1l635:	
	line	184
;main.c: 184: if(shiweiNum & 0x02)
	btfss	(_shiweiNum),(1)&7
	goto	u197_21
	goto	u197_20
u197_21:
	goto	i1l666
u197_20:
	line	186
	
i1l2325:	
;main.c: 185: {
;main.c: 186: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	187
;main.c: 187: TRISA &= 0xDF;
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	188
;main.c: 188: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	189
;main.c: 189: RA5 = 0;
	bcf	(1077/8)^080h,(1077)&7	;volatile
	goto	i1l666
	line	192
;main.c: 192: case 3:
	
i1l637:	
	line	193
;main.c: 193: if(shiweiNum & 0x04)
	btfss	(_shiweiNum),(2)&7
	goto	u198_21
	goto	u198_20
u198_21:
	goto	i1l666
u198_20:
	line	195
	
i1l2327:	
;main.c: 194: {
;main.c: 195: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	196
;main.c: 196: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	197
;main.c: 197: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	198
;main.c: 198: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l666
	line	201
;main.c: 201: case 4:
	
i1l639:	
	line	202
;main.c: 202: if(shiweiNum & 0x08)
	btfss	(_shiweiNum),(3)&7
	goto	u199_21
	goto	u199_20
u199_21:
	goto	i1l666
u199_20:
	line	204
	
i1l2329:	
;main.c: 203: {
;main.c: 204: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	205
;main.c: 205: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	206
;main.c: 206: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	207
;main.c: 207: RA5 = 0;
	bcf	(1077/8)^080h,(1077)&7	;volatile
	goto	i1l666
	line	210
;main.c: 210: case 5:
	
i1l641:	
	line	211
;main.c: 211: if(shiweiNum & 0x10)
	btfss	(_shiweiNum),(4)&7
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l666
u200_20:
	line	213
	
i1l2331:	
;main.c: 212: {
;main.c: 213: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	214
;main.c: 214: TRISA &= 0xFB;
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	215
;main.c: 215: RA2 = 1;
	bsf	(1074/8)^080h,(1074)&7	;volatile
	line	216
;main.c: 216: RA5 = 0;
	bcf	(1077/8)^080h,(1077)&7	;volatile
	goto	i1l666
	line	219
;main.c: 219: case 6:
	
i1l643:	
	line	220
;main.c: 220: if(shiweiNum & 0x20)
	btfss	(_shiweiNum),(5)&7
	goto	u201_21
	goto	u201_20
u201_21:
	goto	i1l666
u201_20:
	line	222
	
i1l2333:	
;main.c: 221: {
;main.c: 222: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	223
;main.c: 223: TRISA &= 0xFB;
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	224
;main.c: 224: RA2 = 1;
	bsf	(1074/8)^080h,(1074)&7	;volatile
	line	225
;main.c: 225: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l666
	line	228
;main.c: 228: case 7:
	
i1l645:	
	line	229
;main.c: 229: if(shiweiNum & 0x40)
	btfss	(_shiweiNum),(6)&7
	goto	u202_21
	goto	u202_20
u202_21:
	goto	i1l666
u202_20:
	line	231
	
i1l2335:	
;main.c: 230: {
;main.c: 231: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	232
;main.c: 232: TRISA &= 0xFB;
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	233
;main.c: 233: RA2 = 1;
	bsf	(1074/8)^080h,(1074)&7	;volatile
	line	234
;main.c: 234: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l666
	line	237
;main.c: 237: case 8:
	
i1l647:	
	line	238
;main.c: 238: if(geweiNum & 0x01)
	btfss	(_geweiNum),(0)&7
	goto	u203_21
	goto	u203_20
u203_21:
	goto	i1l666
u203_20:
	line	240
	
i1l2337:	
;main.c: 239: {
;main.c: 240: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	241
;main.c: 241: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	242
;main.c: 242: RB5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	line	243
;main.c: 243: RA5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	goto	i1l666
	line	246
;main.c: 246: case 9:
	
i1l649:	
	line	247
;main.c: 247: if(geweiNum & 0x02)
	btfss	(_geweiNum),(1)&7
	goto	u204_21
	goto	u204_20
u204_21:
	goto	i1l666
u204_20:
	line	249
	
i1l2339:	
;main.c: 248: {
;main.c: 249: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	250
;main.c: 250: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	251
;main.c: 251: RA5 = 1;
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	252
;main.c: 252: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	goto	i1l666
	line	255
;main.c: 255: case 10:
	
i1l651:	
	line	256
;main.c: 256: if(geweiNum & 0x04)
	btfss	(_geweiNum),(2)&7
	goto	u205_21
	goto	u205_20
u205_21:
	goto	i1l666
u205_20:
	line	258
	
i1l2341:	
;main.c: 257: {
;main.c: 258: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	259
;main.c: 259: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	260
;main.c: 260: RB5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	line	261
;main.c: 261: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l666
	line	264
;main.c: 264: case 11:
	
i1l653:	
	line	265
;main.c: 265: if(geweiNum & 0x08)
	btfss	(_geweiNum),(3)&7
	goto	u206_21
	goto	u206_20
u206_21:
	goto	i1l666
u206_20:
	line	267
	
i1l2343:	
;main.c: 266: {
;main.c: 267: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	268
;main.c: 268: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	269
;main.c: 269: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	270
;main.c: 270: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	goto	i1l666
	line	273
;main.c: 273: case 12:
	
i1l655:	
	line	274
;main.c: 274: if(geweiNum & 0x10)
	btfss	(_geweiNum),(4)&7
	goto	u207_21
	goto	u207_20
u207_21:
	goto	i1l666
u207_20:
	line	276
	
i1l2345:	
;main.c: 275: {
;main.c: 276: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	277
;main.c: 277: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	278
;main.c: 278: RB5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	line	279
;main.c: 279: RA3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l666
	line	282
;main.c: 282: case 13:
	
i1l657:	
	line	283
;main.c: 283: if(geweiNum & 0x20)
	btfss	(_geweiNum),(5)&7
	goto	u208_21
	goto	u208_20
u208_21:
	goto	i1l666
u208_20:
	line	285
	
i1l2347:	
;main.c: 284: {
;main.c: 285: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	286
;main.c: 286: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	287
;main.c: 287: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	288
;main.c: 288: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	goto	i1l666
	line	291
;main.c: 291: case 14:
	
i1l659:	
	line	292
;main.c: 292: if(geweiNum & 0x40)
	btfss	(_geweiNum),(6)&7
	goto	u209_21
	goto	u209_20
u209_21:
	goto	i1l666
u209_20:
	line	294
	
i1l2349:	
;main.c: 293: {
;main.c: 294: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	295
;main.c: 295: TRISA &= 0xFB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	296
;main.c: 296: RA2 = 1;
	bsf	(1074/8)^080h,(1074)&7	;volatile
	line	297
;main.c: 297: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	goto	i1l666
	line	301
	
i1l2351:	
;main.c: 301: if(baiweiNum > 0)
	movf	((_baiweiNum)),w
	btfsc	status,2
	goto	u210_21
	goto	u210_20
u210_21:
	goto	i1l666
u210_20:
	line	303
	
i1l2353:	
;main.c: 302: {
;main.c: 303: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	304
;main.c: 304: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	305
;main.c: 305: RA5 = 1;
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	306
;main.c: 306: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l666
	line	310
	
i1l2355:	
;main.c: 310: if(baiweiNum > 0)
	movf	((_baiweiNum)),w
	btfsc	status,2
	goto	u211_21
	goto	u211_20
u211_21:
	goto	i1l666
u211_20:
	line	312
	
i1l2357:	
;main.c: 311: {
;main.c: 312: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	313
;main.c: 313: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	314
;main.c: 314: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	315
;main.c: 315: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l666
	line	172
	
i1l2361:	
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
goto i1l666
movlw high(i1S2999)
movwf pclath
	movlw low(i1S2999)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S2999:
	ljmp	i1l2355
	ljmp	i1l632
	ljmp	i1l635
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
	ljmp	i1l2351
psect	text21

	line	324
	
i1l666:	
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
