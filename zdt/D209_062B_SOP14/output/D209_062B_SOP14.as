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
	FNCALL	_main,_setBatStep
	FNCALL	_main,_workCtr
	FNCALL	_workCtr,___bmul
	FNCALL	_workCtr,_pwmInit
	FNCALL	_workCtr,_pwmStop
	FNCALL	_setBatStep,___lwdiv
	FNCALL	_ledCtr,___lwmod
	FNCALL	_keyCtr,_keyRead
	FNCALL	_chrgCtr,_pwmStop
	FNCALL	_checkOutA,_ADC_Sample
	FNCALL	_checkBatAD,_ADC_Sample
	FNCALL	_checkBatAD,___ftdiv
	FNCALL	_checkBatAD,___fttol
	FNCALL	_checkBatAD,___lwtoft
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	_Sleep_Mode,_AD_Init
	FNCALL	_Sleep_Mode,_Init_System
	FNROOT	_main
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_prePwStep
	global	_workStep
	global	_chrgFlag
	global	_count15s
	global	_count30s
	global	_overWorkTime
	global	_power_ad
	global	_result
	global	_lowBatTime
	global	_lowBatLock
	global	_motorPwmFlag
	global	_fanOverTime
	global	_sleepTime
	global	_lowBatFlag
	global	_fanDuty
	global	_pwStep
	global	_maxDuty
	global	_longPressFlag
	global	_keyCount
	global	_ledStep
	global	_intCount10
	global	_chrgFullFlag
	global	_IntFlag
	global	_count1s
	global	_intCount
	global	_test_adc
	global	_adresult
	global	_firstTime
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
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
	global	_PWMD23H
_PWMD23H	set	158
	global	_PWM23DT
_PWM23DT	set	157
	global	_PWMD3L
_PWMD3L	set	156
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
; #config settings
	file	"D209_062B_SOP14.as"
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

_workStep:
       ds      1

_chrgFlag:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_count15s:
       ds      2

_count30s:
       ds      2

_overWorkTime:
       ds      2

_power_ad:
       ds      2

_result:
       ds      2

_lowBatTime:
       ds      1

_lowBatLock:
       ds      1

_motorPwmFlag:
       ds      1

_fanOverTime:
       ds      1

_sleepTime:
       ds      1

_lowBatFlag:
       ds      1

_fanDuty:
       ds      1

_pwStep:
       ds      1

_maxDuty:
       ds      1

_longPressFlag:
       ds      1

_keyCount:
       ds      1

_ledStep:
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

	file	"D209_062B_SOP14.as"
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
	movlw	low((__pbssBANK0)+01Eh)
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
?_Init_System:	; 1 bytes @ 0x0
?_AD_Init:	; 1 bytes @ 0x0
?_checkOutA:	; 1 bytes @ 0x0
?_chrgCtr:	; 1 bytes @ 0x0
?_checkBatAD:	; 1 bytes @ 0x0
?_setBatStep:	; 1 bytes @ 0x0
?_keyCtr:	; 1 bytes @ 0x0
?_workCtr:	; 1 bytes @ 0x0
?_ledCtr:	; 1 bytes @ 0x0
?_Sleep_Mode:	; 1 bytes @ 0x0
?_pwmStop:	; 1 bytes @ 0x0
?_pwmInit:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_keyRead:	; 1 bytes @ 0x0
	ds	2
??_Init_System:	; 1 bytes @ 0x2
??_AD_Init:	; 1 bytes @ 0x2
??_chrgCtr:	; 1 bytes @ 0x2
??_Sleep_Mode:	; 1 bytes @ 0x2
??_pwmStop:	; 1 bytes @ 0x2
??_pwmInit:	; 1 bytes @ 0x2
?_ADC_Sample:	; 1 bytes @ 0x2
??_keyRead:	; 1 bytes @ 0x2
?___bmul:	; 1 bytes @ 0x2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x2
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x2
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x2
	global	keyRead@keyStatus
keyRead@keyStatus:	; 1 bytes @ 0x2
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x2
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x2
	ds	1
??_keyCtr:	; 1 bytes @ 0x3
??_ADC_Sample:	; 1 bytes @ 0x3
??___bmul:	; 1 bytes @ 0x3
	global	keyCtr@kclick
keyCtr@kclick:	; 1 bytes @ 0x3
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x3
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x4
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x4
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x4
	ds	1
??_workCtr:	; 1 bytes @ 0x5
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x5
	ds	1
??___lwdiv:	; 1 bytes @ 0x6
??___lwmod:	; 1 bytes @ 0x6
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x6
	ds	1
??_checkOutA:	; 1 bytes @ 0x7
??_checkBatAD:	; 1 bytes @ 0x7
??_ledCtr:	; 1 bytes @ 0x7
??___lwtoft:	; 1 bytes @ 0x7
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x7
	ds	2
??_setBatStep:	; 1 bytes @ 0x9
??_main:	; 1 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??___ftpack:	; 1 bytes @ 0x0
	global	ADC_Sample@j
ADC_Sample@j:	; 1 bytes @ 0x0
	global	setBatStep@tempSubBatTime
setBatStep@tempSubBatTime:	; 2 bytes @ 0x0
	ds	1
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x1
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
	global	checkBatAD@power_temp
checkBatAD@power_temp:	; 4 bytes @ 0x22
	ds	4
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         33
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      12
;!    BANK0            80     38      69
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _workCtr->___bmul
;!    _setBatStep->___lwdiv
;!    _ledCtr->___lwmod
;!    _keyCtr->_keyRead
;!    _checkOutA->_ADC_Sample
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
;!    _checkOutA->_ADC_Sample
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
;! (0) _main                                                 0     0      0    7172
;!                            _AD_Init
;!                        _Init_System
;!                         _Sleep_Mode
;!                         _checkBatAD
;!                          _checkOutA
;!                            _chrgCtr
;!                             _keyCtr
;!                             _ledCtr
;!                         _setBatStep
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              0     0      0     145
;!                             ___bmul
;!                            _pwmInit
;!                            _pwmStop
;! ---------------------------------------------------------------------------------
;! (2) _pwmInit                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___bmul                                               3     2      1     145
;!                                              2 COMMON     3     2      1
;! ---------------------------------------------------------------------------------
;! (1) _setBatStep                                           2     2      0     538
;!                                              0 BANK0      2     2      0
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     501
;!                                              2 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _ledCtr                                               0     0      0     265
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     265
;!                                              2 COMMON     5     1      4
;! ---------------------------------------------------------------------------------
;! (1) _keyCtr                                               1     1      0      67
;!                                              3 COMMON     1     1      0
;!                            _keyRead
;! ---------------------------------------------------------------------------------
;! (2) _keyRead                                              1     1      0      22
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              0     0      0       0
;!                            _pwmStop
;! ---------------------------------------------------------------------------------
;! (2) _pwmStop                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkOutA                                            1     1      0     635
;!                                              7 COMMON     1     1      0
;!                         _ADC_Sample
;! ---------------------------------------------------------------------------------
;! (1) _checkBatAD                                           5     5      0    5522
;!                                              7 COMMON     1     1      0
;!                                             34 BANK0      4     4      0
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
;!                                              2 COMMON     5     0      5
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Sample                                          18    17      1     635
;!                                              2 COMMON     5     4      1
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
;! (4) _Isr_Timer                                            2     2      0       0
;!                                              0 COMMON     2     2      0
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
;!   _checkOutA
;!     _ADC_Sample
;!   _chrgCtr
;!     _pwmStop
;!   _keyCtr
;!     _keyRead
;!   _ledCtr
;!     ___lwmod
;!   _setBatStep
;!     ___lwdiv
;!   _workCtr
;!     ___bmul
;!     _pwmInit
;!     _pwmStop
;!
;! _Isr_Timer (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      9       C       1       85.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50     26      45       4       86.3%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      51       7        0.0%
;!DATA                 0      0      51       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 148 in file "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
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
;;		_setBatStep
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
	line	148
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
	line	148
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	150
	
l2721:	
;main.c: 150: Init_System();
	fcall	_Init_System
	line	151
;main.c: 151: AD_Init();
	fcall	_AD_Init
	line	152
	
l2723:	
;main.c: 152: firstTime = 200;
	movlw	low(0C8h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_firstTime)
	line	153
;main.c: 153: while (1)
	
l681:	
	line	155
# 155 "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
clrwdt ;# 
psect	maintext
	line	156
	
l2725:	
;main.c: 156: if(workStep > 0 && intCount10 > 10)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2711
	goto	u2710
u2711:
	goto	l2733
u2710:
	
l2727:	
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_intCount10),w
	skipc
	goto	u2721
	goto	u2720
u2721:
	goto	l2733
u2720:
	line	158
	
l2729:	
;main.c: 157: {
;main.c: 158: intCount10 = 0;
	clrf	(_intCount10)
	line	159
	
l2731:	
;main.c: 159: checkOutA();
	fcall	_checkOutA
	line	161
	
l2733:	
;main.c: 160: }
;main.c: 161: if(!IntFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l2737
u2730:
	goto	l681
	line	163
	
l2737:	
;main.c: 163: IntFlag = 0;
	clrf	(_IntFlag)
	line	164
	
l2739:	
;main.c: 164: chrgCtr();
	fcall	_chrgCtr
	line	165
	
l2741:	
;main.c: 165: checkBatAD();
	fcall	_checkBatAD
	line	166
	
l2743:	
;main.c: 166: setBatStep();
	fcall	_setBatStep
	line	167
	
l2745:	
;main.c: 167: if(chrgFlag == 0 && lowBatFlag == 0 && firstTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l685
u2740:
	
l2747:	
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l685
u2750:
	
l2749:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l685
u2760:
	line	169
	
l2751:	
;main.c: 168: {
;main.c: 169: keyCtr();
	fcall	_keyCtr
	line	170
	
l685:	
	line	171
;main.c: 170: }
;main.c: 171: workCtr();
	fcall	_workCtr
	line	172
;main.c: 172: ledCtr();
	fcall	_ledCtr
	line	173
	
l2753:	
;main.c: 173: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && overWorkTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2771
	goto	u2770
u2771:
	goto	l2769
u2770:
	
l2755:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l2769
u2780:
	
l2757:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_keyCount)),w
	btfss	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l2769
u2790:
	
l2759:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l2769
u2800:
	
l2761:	
;main.c: 174: {
;main.c: 175: shiweiNum = geweiNum = 0;
	movf	((_overWorkTime)),w
iorwf	((_overWorkTime+1)),w
	btfss	status,2
	goto	u2811
	goto	u2810
u2811:
	goto	l2769
u2810:
	line	176
	
l2763:	
;main.c: 176: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u2821
	goto	u2820
u2821:
	goto	l681
u2820:
	line	178
	
l2765:	
;main.c: 177: {
;main.c: 178: sleepTime = 0;
	clrf	(_sleepTime)
	line	179
	
l2767:	
;main.c: 179: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l681
	line	184
	
l2769:	
;main.c: 182: else
;main.c: 183: {
;main.c: 184: sleepTime = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_sleepTime)
	goto	l681
	global	start
	ljmp	start
	opt stack 0
	line	187
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 465 in file "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___bmul
;;		_pwmInit
;;		_pwmStop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	465
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
	line	465
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	468
	
l2343:	
;main.c: 468: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1991
	goto	u1990
u1991:
	goto	l2363
u1990:
	line	470
	
l2345:	
;main.c: 469: {
;main.c: 470: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	471
	
l2347:	
;main.c: 471: if(motorPwmFlag == 0)
	movf	((_motorPwmFlag)),w
	btfss	status,2
	goto	u2001
	goto	u2000
u2001:
	goto	l2351
u2000:
	line	473
	
l2349:	
;main.c: 472: {
;main.c: 473: pwmInit();
	fcall	_pwmInit
	line	476
	
l2351:	
;main.c: 475: }
;main.c: 476: if(fanDuty < maxDuty)
	movf	(_maxDuty),w
	subwf	(_fanDuty),w
	skipnc
	goto	u2011
	goto	u2010
u2011:
	goto	l2355
u2010:
	line	478
	
l2353:	
;main.c: 477: {
;main.c: 478: fanDuty++;
	incf	(_fanDuty),f
	line	479
;main.c: 479: }
	goto	l2359
	line	480
	
l2355:	
;main.c: 480: else if(fanDuty > maxDuty)
	movf	(_fanDuty),w
	subwf	(_maxDuty),w
	skipnc
	goto	u2021
	goto	u2020
u2021:
	goto	l2359
u2020:
	line	482
	
l2357:	
;main.c: 481: {
;main.c: 482: fanDuty--;
	decf	(_fanDuty),f
	line	484
	
l2359:	
;main.c: 483: }
;main.c: 484: maxDuty = 34 + (workStep*6);
	movlw	low(06h)
	movwf	(___bmul@multiplicand)
	movf	(_workStep),w
	fcall	___bmul
	addlw	022h
	movwf	(_maxDuty)
	line	485
	
l2361:	
;main.c: 485: PWMD3L = fanDuty;
	movf	(_fanDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	486
;main.c: 486: }
	goto	l785
	line	489
	
l2363:	
;main.c: 487: else
;main.c: 488: {
;main.c: 489: if(fanDuty > 0)
	movf	((_fanDuty)),w
	btfsc	status,2
	goto	u2031
	goto	u2030
u2031:
	goto	l2367
u2030:
	line	491
	
l2365:	
;main.c: 490: {
;main.c: 491: fanDuty--;
	decf	(_fanDuty),f
	line	492
;main.c: 492: }
	goto	l785
	line	495
	
l2367:	
;main.c: 493: else
;main.c: 494: {
;main.c: 495: pwmStop();
	fcall	_pwmStop
	line	496
	
l2369:	
;main.c: 496: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	500
	
l785:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 665 in file "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	665
global __ptext2
__ptext2:	;psect for function _pwmInit
psect	text2
	file	"C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
	line	665
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 5
; Regs used in _pwmInit: [wreg+status,2]
	line	667
	
l1979:	
;main.c: 667: motorPwmFlag = 1;
	clrf	(_motorPwmFlag)
	incf	(_motorPwmFlag),f
	line	668
	
l1981:	
;main.c: 668: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	669
;main.c: 669: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	670
	
l1983:	
;main.c: 670: PWMTL = 73;
	movlw	low(049h)
	movwf	(23)	;volatile
	line	673
	
l1985:	
;main.c: 673: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	674
;main.c: 674: PWMD3L = fanDuty;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_fanDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	675
	
l1987:	
;main.c: 675: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	677
	
l1989:	
;main.c: 677: PWMCON0 = 0X08;
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	678
;main.c: 678: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	679
	
l810:	
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
;;  multiplicand    1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    4[COMMON] unsigned char 
;;  product         1    3[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\Umul8.c"
	line	4
global __ptext3
__ptext3:	;psect for function ___bmul
psect	text3
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 5
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	6
	
l2063:	
	clrf	(___bmul@product)
	line	43
	
l2065:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1461
	goto	u1460
u1461:
	goto	l2069
u1460:
	line	44
	
l2067:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	45
	
l2069:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	46
	
l2071:	
	clrc
	rrf	(___bmul@multiplier),f
	line	47
	movf	((___bmul@multiplier)),w
	btfss	status,2
	goto	u1471
	goto	u1470
u1471:
	goto	l2065
u1470:
	line	50
	
l2073:	
	movf	(___bmul@product),w
	line	51
	
l863:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_setBatStep

;; *************** function _setBatStep *****************
;; Defined at:
;;		line 258 in file "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempSubBatTi    2    0[BANK0 ] unsigned int 
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
;;      Locals:         0       2       0
;;      Temps:          0       0       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
	line	258
global __ptext4
__ptext4:	;psect for function _setBatStep
psect	text4
	file	"C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
	line	258
	global	__size_of_setBatStep
	__size_of_setBatStep	equ	__end_of_setBatStep-_setBatStep
	
_setBatStep:	
;incstack = 0
	opt	stack 5
; Regs used in _setBatStep: [wreg+status,2+status,0+pclath+cstack]
	line	260
	
l2655:	
;main.c: 260: if(lowBatLock == 1)
		decf	((_lowBatLock)),w
	btfss	status,2
	goto	u2521
	goto	u2520
u2521:
	goto	l2659
u2520:
	line	262
	
l2657:	
;main.c: 261: {
;main.c: 262: prePwStep = 0;
	clrf	(_prePwStep)
	line	263
;main.c: 263: pwStep = 0;
	clrf	(_pwStep)
	line	264
;main.c: 264: }
	goto	l739
	line	265
	
l2659:	
;main.c: 265: else if(power_ad < 2800)
	movlw	0Ah
	subwf	(_power_ad+1),w	;volatile
	movlw	0F0h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u2531
	goto	u2530
u2531:
	goto	l2669
u2530:
	line	267
	
l2661:	
;main.c: 266: {
;main.c: 267: if(count1s == 0)
	movf	((_count1s)),w
	btfss	status,2
	goto	u2541
	goto	u2540
u2541:
	goto	l719
u2540:
	line	269
	
l2663:	
;main.c: 268: {
;main.c: 269: if(prePwStep > 1)
	movlw	low(02h)
	subwf	(_prePwStep),w
	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l720
u2550:
	line	271
	
l2665:	
;main.c: 270: {
;main.c: 271: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l722
u2560:
	line	272
	
l2667:	
;main.c: 272: prePwStep--;
	decf	(_prePwStep),f
	goto	l722
	line	274
	
l720:	
	line	276
;main.c: 274: else
;main.c: 275: {
;main.c: 276: prePwStep = 1;
	clrf	(_prePwStep)
	incf	(_prePwStep),f
	line	277
	
l722:	
	line	278
;main.c: 277: }
;main.c: 278: pwStep = 1;
	clrf	(_pwStep)
	incf	(_pwStep),f
	line	279
	
l719:	
	line	280
;main.c: 279: }
;main.c: 280: pwStep = 1;
	clrf	(_pwStep)
	incf	(_pwStep),f
	line	281
;main.c: 281: }
	goto	l739
	line	284
	
l2669:	
;main.c: 282: else
;main.c: 283: {
;main.c: 284: if(power_ad < 3600)
	movlw	0Eh
	subwf	(_power_ad+1),w	;volatile
	movlw	010h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u2571
	goto	u2570
u2571:
	goto	l2673
u2570:
	line	286
	
l2671:	
;main.c: 285: {
;main.c: 286: pwStep = (power_ad - 2800)/80;
	movlw	050h
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
	movwf	(_pwStep)
	line	287
;main.c: 287: }
	goto	l2675
	line	290
	
l2673:	
;main.c: 288: else
;main.c: 289: {
;main.c: 290: pwStep = 20 + ((power_ad - 3600)/6);
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
	movwf	(_pwStep)
	line	292
	
l2675:	
;main.c: 291: }
;main.c: 292: if(pwStep > 99)
	movlw	low(064h)
	subwf	(_pwStep),w
	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l2679
u2580:
	line	294
	
l2677:	
;main.c: 293: {
;main.c: 294: pwStep = 99;
	movlw	low(063h)
	movwf	(_pwStep)
	line	297
	
l2679:	
;main.c: 295: }
;main.c: 297: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l2705
u2590:
	line	299
	
l2681:	
;main.c: 298: {
;main.c: 299: if(chrgFullFlag && prePwStep < 99)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l2691
u2600:
	
l2683:	
	movlw	low(063h)
	subwf	(_prePwStep),w
	skipnc
	goto	u2611
	goto	u2610
u2611:
	goto	l2691
u2610:
	line	301
	
l2685:	
;main.c: 300: {
;main.c: 301: if(++count15s >= 7500)
	incf	(_count15s),f
	skipnz
	incf	(_count15s+1),f
	movlw	01Dh
	subwf	((_count15s+1)),w
	movlw	04Ch
	skipnz
	subwf	((_count15s)),w
	skipc
	goto	u2621
	goto	u2620
u2621:
	goto	l2693
u2620:
	line	303
	
l2687:	
;main.c: 302: {
;main.c: 303: count15s = 0;
	clrf	(_count15s)
	clrf	(_count15s+1)
	line	304
	
l2689:	
;main.c: 304: prePwStep++;
	incf	(_prePwStep),f
	goto	l2693
	line	309
	
l2691:	
;main.c: 307: else
;main.c: 308: {
;main.c: 309: count15s = 0;
	clrf	(_count15s)
	clrf	(_count15s+1)
	line	311
	
l2693:	
;main.c: 310: }
;main.c: 311: if(pwStep > prePwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u2631
	goto	u2630
u2631:
	goto	l2703
u2630:
	line	313
	
l2695:	
;main.c: 312: {
;main.c: 313: if(++count30s >= 15000 && prePwStep < 99)
	incf	(_count30s),f
	skipnz
	incf	(_count30s+1),f
	movlw	03Ah
	subwf	((_count30s+1)),w
	movlw	098h
	skipnz
	subwf	((_count30s)),w
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l723
u2640:
	
l2697:	
	movlw	low(063h)
	subwf	(_prePwStep),w
	skipnc
	goto	u2651
	goto	u2650
u2651:
	goto	l723
u2650:
	line	315
	
l2699:	
;main.c: 314: {
;main.c: 315: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	line	316
	
l2701:	
;main.c: 316: prePwStep++;
	incf	(_prePwStep),f
	goto	l739
	line	322
	
l2703:	
;main.c: 320: else
;main.c: 321: {
;main.c: 322: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	goto	l739
	line	327
	
l2705:	
;main.c: 325: else
;main.c: 326: {
;main.c: 327: unsigned int tempSubBatTime = 15000;
	movlw	098h
	movwf	(setBatStep@tempSubBatTime)
	movlw	03Ah
	movwf	((setBatStep@tempSubBatTime))+1
	line	328
;main.c: 328: if(prePwStep < 40)
	movlw	low(028h)
	subwf	(_prePwStep),w
	skipnc
	goto	u2661
	goto	u2660
u2661:
	goto	l735
u2660:
	line	330
	
l2707:	
;main.c: 329: {
;main.c: 330: tempSubBatTime = 8000;
	movlw	040h
	movwf	(setBatStep@tempSubBatTime)
	movlw	01Fh
	movwf	((setBatStep@tempSubBatTime))+1
	line	331
	
l735:	
	line	332
;main.c: 331: }
;main.c: 332: if(pwStep < prePwStep && prePwStep > 1)
	movf	(_prePwStep),w
	subwf	(_pwStep),w
	skipnc
	goto	u2671
	goto	u2670
u2671:
	goto	l2703
u2670:
	
l2709:	
	movlw	low(02h)
	subwf	(_prePwStep),w
	skipc
	goto	u2681
	goto	u2680
u2681:
	goto	l2703
u2680:
	line	334
	
l2711:	
;main.c: 333: {
;main.c: 334: if(++count30s >= tempSubBatTime && prePwStep > 1)
	incf	(_count30s),f
	skipnz
	incf	(_count30s+1),f
	movf	(setBatStep@tempSubBatTime+1),w
	subwf	((_count30s+1)),w
	skipz
	goto	u2695
	movf	(setBatStep@tempSubBatTime),w
	subwf	((_count30s)),w
u2695:
	skipc
	goto	u2691
	goto	u2690
u2691:
	goto	l723
u2690:
	
l2713:	
	movlw	low(02h)
	subwf	(_prePwStep),w
	skipc
	goto	u2701
	goto	u2700
u2701:
	goto	l723
u2700:
	line	336
	
l2715:	
;main.c: 335: {
;main.c: 336: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	line	337
	
l2717:	
;main.c: 337: prePwStep--;
	decf	(_prePwStep),f
	goto	l739
	line	346
	
l723:	
	line	347
	
l739:	
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
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] unsigned int 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 100/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         3       0       0
;;      Temps:          0       0       0
;;      Totals:         7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setBatStep
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwdiv.c"
	line	6
global __ptext5
__ptext5:	;psect for function ___lwdiv
psect	text5
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l2603:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l2605:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u2451
	goto	u2450
u2451:
	goto	l2625
u2450:
	line	16
	
l2607:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l2611
	line	18
	
l2609:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l2611:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l2609
u2460:
	line	22
	
l2613:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l2615:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2475
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2475:
	skipc
	goto	u2471
	goto	u2470
u2471:
	goto	l2621
u2470:
	line	24
	
l2617:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l2619:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l2621:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l2623:	
	decfsz	(___lwdiv@counter),f
	goto	u2481
	goto	u2480
u2481:
	goto	l2613
u2480:
	line	30
	
l2625:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l1182:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_ledCtr

;; *************** function _ledCtr *****************
;; Defined at:
;;		line 191 in file "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
	line	191
global __ptext6
__ptext6:	;psect for function _ledCtr
psect	text6
	file	"C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
	line	191
	global	__size_of_ledCtr
	__size_of_ledCtr	equ	__end_of_ledCtr-_ledCtr
	
_ledCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _ledCtr: [wreg+status,2+status,0+pclath+cstack]
	line	193
	
l2371:	
;main.c: 193: if(firstTime > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u2041
	goto	u2040
u2041:
	goto	l2381
u2040:
	line	195
	
l2373:	
;main.c: 194: {
;main.c: 195: firstTime--;
	decf	(_firstTime),f
	line	196
	
l2375:	
;main.c: 196: ledStep = 0;
	clrf	(_ledStep)
	line	197
	
l2377:	
;main.c: 197: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u2051
	goto	u2050
u2051:
	goto	l2403
u2050:
	line	199
	
l2379:	
;main.c: 198: {
;main.c: 199: prePwStep = pwStep;
	movf	(_pwStep),w
	movwf	(_prePwStep)
	goto	l2403
	line	202
	
l2381:	
;main.c: 202: else if(overWorkTime > 0)
	movf	((_overWorkTime)),w
iorwf	((_overWorkTime+1)),w
	btfsc	status,2
	goto	u2061
	goto	u2060
u2061:
	goto	l2391
u2060:
	line	204
	
l2383:	
;main.c: 203: {
;main.c: 204: overWorkTime--;
	movlw	01h
	subwf	(_overWorkTime),f
	movlw	0
	skipc
	decf	(_overWorkTime+1),f
	subwf	(_overWorkTime+1),f
	line	205
	
l2385:	
;main.c: 205: if(overWorkTime % 60 < 30)
	movlw	03Ch
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(_overWorkTime+1),w
	movwf	(___lwmod@dividend+1)
	movf	(_overWorkTime),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movlw	0
	subwf	(1+(?___lwmod)),w
	movlw	01Eh
	skipnz
	subwf	(0+(?___lwmod)),w
	skipnc
	goto	u2071
	goto	u2070
u2071:
	goto	l2389
u2070:
	line	207
	
l2387:	
;main.c: 206: {
;main.c: 207: ledStep = 1;
	clrf	(_ledStep)
	incf	(_ledStep),f
	line	208
;main.c: 208: }
	goto	l2403
	line	211
	
l2389:	
;main.c: 209: else
;main.c: 210: {
;main.c: 211: ledStep = 0;
	clrf	(_ledStep)
	goto	l2403
	line	214
	
l2391:	
;main.c: 214: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2081
	goto	u2080
u2081:
	goto	l2395
u2080:
	line	216
	
l2393:	
;main.c: 215: {
;main.c: 216: ledStep = 3;
	movlw	low(03h)
	movwf	(_ledStep)
	line	217
;main.c: 217: }
	goto	l2403
	line	218
	
l2395:	
;main.c: 218: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2091
	goto	u2090
u2091:
	goto	l2389
u2090:
	line	220
	
l2397:	
;main.c: 219: {
;main.c: 220: if(prePwStep >= 99)
	movlw	low(063h)
	subwf	(_prePwStep),w
	skipc
	goto	u2101
	goto	u2100
u2101:
	goto	l2387
u2100:
	line	222
	
l2399:	
;main.c: 221: {
;main.c: 222: ledStep = 2;
	movlw	low(02h)
	movwf	(_ledStep)
	line	233
;main.c: 223: }
	
l2403:	
;main.c: 232: }
;main.c: 233: if(ledStep == 0)
	movf	((_ledStep)),w
	btfss	status,2
	goto	u2111
	goto	u2110
u2111:
	goto	l2407
u2110:
	line	235
	
l2405:	
;main.c: 234: {
;main.c: 235: PORTA &= 0xE3;
	movlw	low(0E3h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	236
;main.c: 236: }
	goto	l713
	line	237
	
l2407:	
;main.c: 237: else if(ledStep == 1)
		decf	((_ledStep)),w
	btfss	status,2
	goto	u2121
	goto	u2120
u2121:
	goto	l2411
u2120:
	line	239
	
l2409:	
;main.c: 238: {
;main.c: 239: RA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	240
;main.c: 240: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	line	241
;main.c: 241: RA2 = 0;
	bcf	(1074/8)^080h,(1074)&7	;volatile
	line	242
;main.c: 242: }
	goto	l713
	line	243
	
l2411:	
;main.c: 243: else if(ledStep == 2)
		movlw	2
	xorwf	((_ledStep)),w
	btfss	status,2
	goto	u2131
	goto	u2130
u2131:
	goto	l2415
u2130:
	line	245
	
l2413:	
;main.c: 244: {
;main.c: 245: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	line	246
;main.c: 246: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	247
;main.c: 247: RA2 = 0;
	bcf	(1074/8)^080h,(1074)&7	;volatile
	line	248
;main.c: 248: }
	goto	l713
	line	249
	
l2415:	
;main.c: 249: else if(ledStep == 3)
		movlw	3
	xorwf	((_ledStep)),w
	btfss	status,2
	goto	u2141
	goto	u2140
u2141:
	goto	l709
u2140:
	line	251
	
l2417:	
;main.c: 250: {
;main.c: 251: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	line	252
;main.c: 252: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	line	253
;main.c: 253: RA2 = 1;
	bsf	(1074/8)^080h,(1074)&7	;volatile
	goto	l713
	line	255
	
l709:	
	
l713:	
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
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/0
;;		On exit  : 100/0
;;		Unchanged: 100/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ledCtr
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
	line	6
global __ptext7
__ptext7:	;psect for function ___lwmod
psect	text7
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l2183:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u1641
	goto	u1640
u1641:
	goto	l2199
u1640:
	line	14
	
l2185:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l2189
	line	16
	
l2187:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l2189:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u1651
	goto	u1650
u1651:
	goto	l2187
u1650:
	line	20
	
l2191:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u1665
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u1665:
	skipc
	goto	u1661
	goto	u1660
u1661:
	goto	l2195
u1660:
	line	21
	
l2193:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l2195:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l2197:	
	decfsz	(___lwmod@counter),f
	goto	u1671
	goto	u1670
u1671:
	goto	l2191
u1670:
	line	25
	
l2199:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l1192:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 438 in file "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  kclick          1    3[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_keyRead
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
	line	438
global __ptext8
__ptext8:	;psect for function _keyCtr
psect	text8
	file	"C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
	line	438
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	440
	
l2325:	
;main.c: 440: char kclick = keyRead(0x02 & (~PORTA));
	bsf	status, 5	;RP0=1, select bank1
	comf	(134)^080h,w	;volatile
	andlw	02h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	441
	
l2327:	
;main.c: 441: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u1941
	goto	u1940
u1941:
	goto	l2335
u1940:
	line	443
	
l2329:	
;main.c: 442: {
;main.c: 443: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1951
	goto	u1950
u1951:
	goto	l774
u1950:
	line	445
	
l2331:	
;main.c: 444: {
;main.c: 445: if(++workStep > 3)
	movlw	low(04h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u1961
	goto	u1960
u1961:
	goto	l774
u1960:
	line	447
	
l2333:	
;main.c: 446: {
;main.c: 447: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l774
	line	451
	
l2335:	
;main.c: 451: else if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u1971
	goto	u1970
u1971:
	goto	l774
u1970:
	line	453
	
l2337:	
;main.c: 452: {
;main.c: 453: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1981
	goto	u1980
u1981:
	goto	l772
u1980:
	line	455
	
l2339:	
;main.c: 454: {
;main.c: 455: workStep = 0;
	clrf	(_workStep)
	line	456
;main.c: 456: }
	goto	l774
	line	457
	
l772:	
	line	459
;main.c: 457: else
;main.c: 458: {
;main.c: 459: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	460
	
l2341:	
;main.c: 460: overWorkTime = 0;
	clrf	(_overWorkTime)
	clrf	(_overWorkTime+1)
	line	463
	
l774:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 370 in file "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;  keyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyStatus       1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/100
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	370
global __ptext9
__ptext9:	;psect for function _keyRead
psect	text9
	file	"C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
	line	370
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	372
	
l1939:	
;main.c: 372: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1261
	goto	u1260
u1261:
	goto	l1955
u1260:
	line	374
	
l1941:	
;main.c: 373: {
;main.c: 374: keyCount++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_keyCount),f
	line	375
	
l1943:	
;main.c: 375: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1271
	goto	u1270
u1271:
	goto	l1959
u1270:
	line	377
	
l1945:	
;main.c: 376: {
;main.c: 377: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	line	378
	
l1947:	
;main.c: 378: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1281
	goto	u1280
u1281:
	goto	l1959
u1280:
	line	380
	
l1949:	
;main.c: 379: {
;main.c: 380: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	381
	
l1951:	
;main.c: 381: return 2;
	movlw	low(02h)
	goto	l750
	line	387
	
l1955:	
;main.c: 385: else
;main.c: 386: {
;main.c: 387: if(keyCount >= 100)
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_keyCount),w
	skipc
	goto	u1291
	goto	u1290
u1291:
	goto	l1965
u1290:
	line	389
	
l1957:	
;main.c: 388: {
;main.c: 389: keyCount = 0;
	clrf	(_keyCount)
	line	390
;main.c: 390: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	391
	
l1959:	
;main.c: 391: return 0;
	movlw	low(0)
	goto	l750
	line	393
	
l1965:	
;main.c: 393: else if(keyCount >= 6)
	movlw	low(06h)
	subwf	(_keyCount),w
	skipc
	goto	u1301
	goto	u1300
u1301:
	goto	l1973
u1300:
	line	395
	
l1967:	
;main.c: 394: {
;main.c: 395: keyCount = 0;
	clrf	(_keyCount)
	line	396
	
l1969:	
;main.c: 396: return 1;
	movlw	low(01h)
	goto	l750
	line	398
	
l1973:	
;main.c: 397: }
;main.c: 398: keyCount = 0;
	clrf	(_keyCount)
	goto	l1959
	line	401
	
l750:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 350 in file "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pwmStop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	350
global __ptext10
__ptext10:	;psect for function _chrgCtr
psect	text10
	file	"C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
	line	350
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	352
	
l2225:	
;main.c: 352: if(PORTB & 0x01)
	btfss	(6),(0)&7	;volatile
	goto	u1711
	goto	u1710
u1711:
	goto	l2235
u1710:
	line	354
	
l2227:	
;main.c: 353: {
;main.c: 354: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	355
	
l2229:	
;main.c: 355: workStep = 0;
	clrf	(_workStep)
	line	356
	
l2231:	
;main.c: 356: pwmStop();
	fcall	_pwmStop
	line	357
	
l2233:	
;main.c: 357: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	359
;main.c: 359: }
	goto	l744
	line	362
	
l2235:	
;main.c: 360: else
;main.c: 361: {
;main.c: 362: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	363
;main.c: 363: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	366
	
l744:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 681 in file "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_chrgCtr
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	681
global __ptext11
__ptext11:	;psect for function _pwmStop
psect	text11
	file	"C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
	line	681
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 5
; Regs used in _pwmStop: [wreg+status,2+status,0]
	line	683
	
l1931:	
;main.c: 683: if(motorPwmFlag)
	movf	((_motorPwmFlag)),w
	btfsc	status,2
	goto	u1251
	goto	u1250
u1251:
	goto	l814
u1250:
	line	685
	
l1933:	
;main.c: 684: {
;main.c: 685: motorPwmFlag = 0;
	clrf	(_motorPwmFlag)
	line	686
	
l1935:	
;main.c: 686: PWMCON0 &= 0XF7;
	bcf	(21)+(3/8),(3)&7	;volatile
	line	687
	
l1937:	
;main.c: 687: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	689
	
l814:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_checkOutA

;; *************** function _checkOutA *****************
;; Defined at:
;;		line 502 in file "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ADC_Sample
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	502
global __ptext12
__ptext12:	;psect for function _checkOutA
psect	text12
	file	"C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
	line	502
	global	__size_of_checkOutA
	__size_of_checkOutA	equ	__end_of_checkOutA-_checkOutA
	
_checkOutA:	
;incstack = 0
	opt	stack 5
; Regs used in _checkOutA: [wreg+status,2+status,0+pclath+cstack]
	line	504
	
l2207:	
;main.c: 504: test_adc = ADC_Sample(0, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	505
	
l2209:	
;main.c: 505: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u1681
	goto	u1680
u1681:
	goto	l2221
u1680:
	line	507
	
l2211:	
;main.c: 506: {
;main.c: 507: if(adresult > 2662)
	movlw	0Ah
	subwf	(_adresult+1),w	;volatile
	movlw	067h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u1691
	goto	u1690
u1691:
	goto	l2219
u1690:
	line	509
	
l2213:	
;main.c: 508: {
;main.c: 509: if(++fanOverTime > 50)
	movlw	low(033h)
	incf	(_fanOverTime),f
	subwf	((_fanOverTime)),w
	skipc
	goto	u1701
	goto	u1700
u1701:
	goto	l793
u1700:
	line	511
	
l2215:	
;main.c: 512: preWorkStep = workStep;
	clrf	(_fanOverTime)
	line	513
;main.c: 513: workStep = 0;
	clrf	(_workStep)
	line	514
	
l2217:	
;main.c: 514: overWorkTime = 300;
	movlw	02Ch
	movwf	(_overWorkTime)
	movlw	01h
	movwf	((_overWorkTime))+1
	goto	l793
	line	519
	
l2219:	
;main.c: 517: else
;main.c: 518: {
;main.c: 519: fanOverTime = 0;
	clrf	(_fanOverTime)
	goto	l793
	line	524
	
l2221:	
;main.c: 522: else
;main.c: 523: {
;main.c: 524: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	525
;main.c: 525: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	526
	
l2223:	
;main.c: 526: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkOutA+0)+0),f
	u2837:
decfsz	(??_checkOutA+0)+0,f
	goto	u2837
opt asmopt_pop

	line	528
	
l793:	
	return
	opt stack 0
GLOBAL	__end_of_checkOutA
	__end_of_checkOutA:
	signat	_checkOutA,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 530 in file "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  power_temp      4   34[BANK0 ] volatile unsigned long 
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
;;      Locals:         0       4       0
;;      Temps:          1       0       0
;;      Totals:         1       4       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ADC_Sample
;;		___ftdiv
;;		___fttol
;;		___lwtoft
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	530
global __ptext13
__ptext13:	;psect for function _checkBatAD
psect	text13
	file	"C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
	line	530
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	532
	
l2633:	
;main.c: 532: test_adc = ADC_Sample(31, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(01Fh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	533
	
l2635:	
;main.c: 533: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l2641
u2490:
	line	537
	
l2637:	
;main.c: 534: {
;main.c: 535: volatile unsigned long power_temp;
;main.c: 537: power_temp = (unsigned long)(((4096UL*1.2*1000))/adresult);
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

	line	538
	
l2639:	
;main.c: 538: power_ad = (unsigned int)(power_temp);
	movf	(checkBatAD@power_temp+1),w	;volatile
	movwf	(_power_ad+1)	;volatile
	movf	(checkBatAD@power_temp),w	;volatile
	movwf	(_power_ad)	;volatile
	line	539
;main.c: 539: }
	goto	l2645
	line	542
	
l2641:	
;main.c: 540: else
;main.c: 541: {
;main.c: 542: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	543
;main.c: 543: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	544
	
l2643:	
;main.c: 544: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u2847:
decfsz	(??_checkBatAD+0)+0,f
	goto	u2847
opt asmopt_pop

	line	547
	
l2645:	
;main.c: 545: }
;main.c: 547: if(power_ad < 2800)
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_power_ad+1),w	;volatile
	movlw	0F0h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u2501
	goto	u2500
u2501:
	goto	l2653
u2500:
	line	549
	
l2647:	
;main.c: 548: {
;main.c: 549: if(++lowBatTime > 200)
	movlw	low(0C9h)
	incf	(_lowBatTime),f
	subwf	((_lowBatTime)),w
	skipc
	goto	u2511
	goto	u2510
u2511:
	goto	l801
u2510:
	line	551
	
l2649:	
;main.c: 550: {
;main.c: 551: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	552
	
l2651:	
;main.c: 552: lowBatLock = 1;
	clrf	(_lowBatLock)
	incf	(_lowBatLock),f
	line	553
;main.c: 553: workStep = 0;
	clrf	(_workStep)
	goto	l801
	line	558
	
l2653:	
;main.c: 556: else
;main.c: 557: {
;main.c: 558: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	561
	
l801:	
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_checkBatAD
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwtoft.c"
	line	28
global __ptext14
__ptext14:	;psect for function ___lwtoft
psect	text14
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l2629:	
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
	
l1197:	
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkBatAD
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\fttol.c"
	line	44
global __ptext15
__ptext15:	;psect for function ___fttol
psect	text15
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2117:	
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
	goto	u1521
	goto	u1520
u1521:
	goto	l2121
u1520:
	line	50
	
l2119:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l1088
	line	51
	
l2121:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u1535:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u1530:
	addlw	-1
	skipz
	goto	u1535
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2123:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2125:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2127:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2129:	
	movlw	08Eh
	subwf	(___fttol@exp1),f
	line	56
	
l2131:	
	btfss	(___fttol@exp1),7
	goto	u1541
	goto	u1540
u1541:
	goto	l2141
u1540:
	line	57
	
l2133:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u1551
	goto	u1550
u1551:
	goto	l2137
u1550:
	goto	l2119
	line	60
	
l2137:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l2139:	
	incfsz	(___fttol@exp1),f
	goto	u1561
	goto	u1560
u1561:
	goto	l2137
u1560:
	goto	l2149
	line	63
	
l2141:	
	movlw	low(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u1571
	goto	u1570
u1571:
	goto	l2147
u1570:
	goto	l2119
	line	66
	
l2145:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	65
	
l2147:	
	movf	((___fttol@exp1)),w
	btfss	status,2
	goto	u1581
	goto	u1580
u1581:
	goto	l2145
u1580:
	line	70
	
l2149:	
	movf	((___fttol@sign1)),w
	btfsc	status,2
	goto	u1591
	goto	u1590
u1591:
	goto	l2153
u1590:
	line	71
	
l2151:	
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
	
l2153:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l1088:	
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_checkBatAD
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\ftdiv.c"
	line	56
global __ptext16
__ptext16:	;psect for function ___ftdiv
psect	text16
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\ftdiv.c"
	line	56
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l2563:	
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
	goto	u2411
	goto	u2410
u2411:
	goto	l2567
u2410:
	line	64
	
l2565:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1052
	line	65
	
l2567:	
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
	goto	u2421
	goto	u2420
u2421:
	goto	l1053
u2420:
	line	66
	
l2569:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l1052
	
l1053:	
	line	67
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	68
	
l2571:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l2573:	
	movf	0+(___ftdiv@f1)+02h,w
	movwf	(___ftdiv@sign)
	line	70
	
l2575:	
	movf	0+(___ftdiv@f2)+02h,w
	xorwf	(___ftdiv@sign),f
	line	71
	
l2577:	
	movlw	low(080h)
	andwf	(___ftdiv@sign),f
	line	72
	
l2579:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	
l2581:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l2583:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	
l2585:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	
l2587:	
	movlw	low(018h)
	movwf	(___ftdiv@cntr)
	line	78
	
l2589:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	79
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u2435
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u2435
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u2435:
	skipc
	goto	u2431
	goto	u2430
u2431:
	goto	l2595
u2430:
	line	80
	
l2591:	
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
	
l2593:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	83
	
l2595:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	84
	
l2597:	
	decfsz	(___ftdiv@cntr),f
	goto	u2441
	goto	u2440
u2441:
	goto	l2589
u2440:
	line	85
	
l2599:	
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
	
l1052:	
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
;;  arg             3    2[COMMON] unsigned um
;;  exp             1    5[COMMON] unsigned char 
;;  sign            1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    2[COMMON] float 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftdiv
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\float.c"
	line	62
global __ptext17
__ptext17:	;psect for function ___ftpack
psect	text17
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l2539:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u2331
	goto	u2330
u2331:
	goto	l999
u2330:
	
l2541:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2341
	goto	u2340
u2341:
	goto	l2545
u2340:
	
l999:	
	line	65
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l1000
	line	67
	
l2543:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l2545:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l2543
u2350:
	goto	l2549
	line	71
	
l2547:	
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
	
l2549:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l2547
u2360:
	goto	l2553
	line	76
	
l2551:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l2553:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l1011
u2370:
	
l2555:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u2381
	goto	u2380
u2381:
	goto	l2551
u2380:
	
l1011:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l1012
u2390:
	line	80
	
l2557:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l1012:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l2559:	
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
	goto	u2401
	goto	u2400
u2401:
	goto	l1013
u2400:
	line	84
	
l2561:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l1013:	
	line	85
	line	86
	
l1000:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 776 in file "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;;  adldo           1    2[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkOutA
;;		_checkBatAD
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
	line	776
global __ptext18
__ptext18:	;psect for function _ADC_Sample
psect	text18
	file	"C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
	line	776
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 5
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	778
	
l1991:	
;main.c: 778: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	779
	
l1993:	
;main.c: 779: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	780
;main.c: 780: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	782
	
l1995:	
;main.c: 782: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u1311
	goto	u1310
u1311:
	goto	l2001
u1310:
	
l1997:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u1321
	goto	u1320
u1321:
	goto	l2001
u1320:
	line	785
	
l1999:	
;main.c: 783: {
;main.c: 785: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	786
;main.c: 786: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_ADC_Sample+0)+0),f
	u2857:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u2857
opt asmopt_pop

	line	787
;main.c: 787: }
	goto	l2003
	line	789
	
l2001:	
;main.c: 788: else
;main.c: 789: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	791
	
l2003:	
;main.c: 791: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u1331
	goto	u1330
u1331:
	goto	l2009
u1330:
	line	793
	
l2005:	
;main.c: 792: {
;main.c: 793: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	794
	
l2007:	
;main.c: 794: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	796
	
l2009:	
	line	797
	
l2011:	
;main.c: 797: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	799
	
l2017:	
;main.c: 798: {
;main.c: 799: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u1345:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u1345
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	800
# 800 "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
nop ;# 
	line	801
# 801 "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
nop ;# 
	line	802
# 802 "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
nop ;# 
	line	803
# 803 "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
nop ;# 
psect	text18
	line	804
	
l2019:	
;main.c: 804: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	806
	
l2021:	
;main.c: 806: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	807
;main.c: 807: while (GODONE)
	goto	l828
	
l829:	
	line	809
;main.c: 808: {
;main.c: 809: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	811
;main.c: 811: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u1351
	goto	u1350
u1351:
	goto	l828
u1350:
	line	812
	
l2023:	
;main.c: 812: return 0;
	movlw	low(0)
	goto	l831
	line	813
	
l828:	
	line	807
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u1361
	goto	u1360
u1361:
	goto	l829
u1360:
	line	815
	
l2027:	
;main.c: 813: }
;main.c: 815: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l2029:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	817
	
l2031:	
;main.c: 817: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u1371
	goto	u1370
u1371:
	goto	l2035
u1370:
	line	819
	
l2033:	
;main.c: 818: {
;main.c: 819: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	820
;main.c: 820: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	821
;main.c: 821: }
	goto	l834
	line	822
	
l2035:	
;main.c: 822: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u1385
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u1385:
	skipnc
	goto	u1381
	goto	u1380
u1381:
	goto	l2039
u1380:
	line	823
	
l2037:	
;main.c: 823: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l834
	line	824
	
l2039:	
;main.c: 824: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u1395
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u1395:
	skipnc
	goto	u1391
	goto	u1390
u1391:
	goto	l834
u1390:
	line	825
	
l2041:	
;main.c: 825: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	827
	
l834:	
;main.c: 827: adsum += ad_temp;
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
	goto	u1401
	addwf	(ADC_Sample@adsum+1),f	;volatile
u1401:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1402
	addwf	(ADC_Sample@adsum+2),f	;volatile
u1402:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1403
	addwf	(ADC_Sample@adsum+3),f	;volatile
u1403:

	line	797
	
l2043:	
	incf	(ADC_Sample@i),f
	
l2045:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u1411
	goto	u1410
u1411:
	goto	l2017
u1410:
	line	829
	
l2047:	
;main.c: 828: }
;main.c: 829: adsum -= admax;
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
	goto	u1425
	goto	u1426
u1425:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u1426:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1427
	goto	u1428
u1427:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u1428:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1429
	goto	u1420
u1429:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u1420:

	line	830
;main.c: 830: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u1435
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u1435
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u1435
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u1435:
	skipc
	goto	u1431
	goto	u1430
u1431:
	goto	l838
u1430:
	line	831
	
l2049:	
;main.c: 831: adsum -= admin;
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
	goto	u1445
	goto	u1446
u1445:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u1446:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1447
	goto	u1448
u1447:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u1448:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1449
	goto	u1440
u1449:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u1440:

	goto	l2051
	line	832
	
l838:	
	line	833
;main.c: 832: else
;main.c: 833: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	835
	
l2051:	
;main.c: 835: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u1455:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u1450:
	addlw	-1
	skipz
	goto	u1455
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	837
	
l2053:	
;main.c: 837: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	838
	
l2055:	
;main.c: 838: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	839
	
l2057:	
;main.c: 839: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	840
	
l2059:	
;main.c: 840: return 0xA5;
	movlw	low(0A5h)
	line	842
	
l831:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 699 in file "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_AD_Init
;;		_Init_System
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	699
global __ptext19
__ptext19:	;psect for function _Sleep_Mode
psect	text19
	file	"C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
	line	699
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 5
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	701
	
l2419:	
;main.c: 701: INTCON = 0;
	clrf	(11)	;volatile
	line	703
;main.c: 703: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	705
	
l2421:	
;main.c: 705: WPUA = 0x02;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(136)^080h	;volatile
	line	706
	
l2423:	
;main.c: 706: TRISA = 0x03;
	movlw	low(03h)
	movwf	(133)^080h	;volatile
	line	707
	
l2425:	
;main.c: 707: TRISB = 0x01;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	709
	
l2427:	
;main.c: 709: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	710
	
l2429:	
;main.c: 710: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	713
	
l2431:	
;main.c: 713: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	714
	
l2433:	
;main.c: 714: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	716
	
l2435:	
;main.c: 716: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	718
;main.c: 718: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	720
;main.c: 720: IOCA = 0x02;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(137)^080h	;volatile
	line	721
;main.c: 721: IOCB = 0x01;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	723
	
l2437:	
;main.c: 723: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	724
	
l2439:	
;main.c: 724: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	725
	
l2441:	
;main.c: 725: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	726
	
l2443:	
;main.c: 726: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	728
	
l2445:	
;main.c: 728: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	729
	
l2447:	
;main.c: 729: PIR1 = 0;
	clrf	(13)	;volatile
	line	730
	
l2449:	
;main.c: 730: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	732
	
l2451:	
;main.c: 732: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	733
	
l2453:	
;main.c: 733: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	734
	
l2455:	
;main.c: 734: PORTB;
	movf	(6),w	;volatile
	line	735
	
l2457:	
;main.c: 735: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	736
# 736 "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
clrwdt ;# 
	line	738
# 738 "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
sleep ;# 
	line	740
# 740 "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
nop ;# 
	line	741
# 741 "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
clrwdt ;# 
	line	742
# 742 "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
nop ;# 
	line	743
# 743 "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
nop ;# 
	line	744
# 744 "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
nop ;# 
	line	745
# 745 "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
nop ;# 
	line	746
# 746 "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
nop ;# 
psect	text19
	line	747
	
l2459:	
;main.c: 747: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u2151
	goto	u2150
u2151:
	goto	l817
u2150:
	
l2461:	
	bcf	(107/8),(107)&7	;volatile
	
l817:	
	line	748
;main.c: 748: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u2161
	goto	u2160
u2161:
	goto	l818
u2160:
	
l2463:	
	bcf	(88/8),(88)&7	;volatile
	
l818:	
	line	749
;main.c: 749: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u2171
	goto	u2170
u2171:
	goto	l2467
u2170:
	
l2465:	
	bcf	(105/8),(105)&7	;volatile
	line	750
	
l2467:	
;main.c: 750: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	751
;main.c: 751: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	752
	
l2469:	
;main.c: 752: Init_System();
	fcall	_Init_System
	line	753
	
l2471:	
;main.c: 753: AD_Init();
	fcall	_AD_Init
	line	754
	
l820:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 572 in file "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Sleep_Mode
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	572
global __ptext20
__ptext20:	;psect for function _Init_System
psect	text20
	file	"C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
	line	572
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_System: [wreg+status,2]
	line	574
	
l1903:	
# 574 "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
nop ;# 
	line	575
# 575 "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
clrwdt ;# 
psect	text20
	line	576
	
l1905:	
;main.c: 576: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	577
# 577 "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
clrwdt ;# 
psect	text20
	line	578
	
l1907:	
;main.c: 578: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	580
	
l1909:	
;main.c: 580: WPUA = 0x02;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(136)^080h	;volatile
	line	581
;main.c: 581: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	582
;main.c: 582: WPUB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(8)	;volatile
	line	584
	
l1911:	
;main.c: 584: TRISA = 0x03;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	585
	
l1913:	
;main.c: 585: TRISB = 0x01;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	587
;main.c: 587: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	588
;main.c: 588: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	592
	
l1915:	
;main.c: 592: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	593
	
l1917:	
;main.c: 593: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	594
	
l1919:	
;main.c: 594: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	596
	
l1921:	
;main.c: 596: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	597
	
l1923:	
;main.c: 597: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	598
	
l804:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 609 in file "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Sleep_Mode
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	609
global __ptext21
__ptext21:	;psect for function _AD_Init
psect	text21
	file	"C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
	line	609
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 5
; Regs used in _AD_Init: [wreg+status,2]
	line	642
	
l1925:	
;main.c: 642: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	659
	
l1927:	
;main.c: 659: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	660
	
l1929:	
;main.c: 660: ANSEL0 = 0X01;
	movlw	low(01h)
	movwf	(147)^080h	;volatile
	line	661
;main.c: 661: ANSEL1 = 0x00;
	clrf	(148)^080h	;volatile
	line	662
	
l807:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 125 in file "C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
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
;;      Temps:          2       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	125
global __ptext22
__ptext22:	;psect for function _Isr_Timer
psect	text22
	file	"C:\mcuproject\scm\zdt\D209_062B_SOP14\main.c"
	line	125
	global	__size_of_Isr_Timer
	__size_of_Isr_Timer	equ	__end_of_Isr_Timer-_Isr_Timer
	
_Isr_Timer:	
;incstack = 0
	opt	stack 4
; Regs used in _Isr_Timer: [wreg+status,2+status,0]
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
	movf	pclath,w
	movwf	(??_Isr_Timer+1)
	ljmp	_Isr_Timer
psect	text22
	line	127
	
i1l2473:	
;main.c: 127: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u218_21
	goto	u218_20
u218_21:
	goto	i1l676
u218_20:
	line	129
	
i1l2475:	
;main.c: 128: {
;main.c: 129: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	130
	
i1l2477:	
;main.c: 130: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u219_21
	goto	u219_20
u219_21:
	goto	i1l2487
u219_20:
	line	132
	
i1l2479:	
;main.c: 131: {
;main.c: 132: intCount = 0;
	clrf	(_intCount)
	line	133
	
i1l2481:	
;main.c: 133: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	134
	
i1l2483:	
;main.c: 134: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u220_21
	goto	u220_20
u220_21:
	goto	i1l2487
u220_20:
	line	136
	
i1l2485:	
;main.c: 135: {
;main.c: 136: count1s = 0;
	clrf	(_count1s)
	line	139
	
i1l2487:	
;main.c: 137: }
;main.c: 138: }
;main.c: 139: intCount10++;
	incf	(_intCount10),f
	line	142
	
i1l676:	
	movf	(??_Isr_Timer+1),w
	movwf	pclath
	swapf	(??_Isr_Timer+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Isr_Timer
	__end_of_Isr_Timer:
	signat	_Isr_Timer,89
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
