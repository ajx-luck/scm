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
	FNCALL	_ledCtr,___lwmod
	FNCALL	_keyCtr,_keyRead
	FNCALL	_chrgCtr,___lbdiv
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
	global	_prePwStep
	global	_ledStep
	global	_workStep
	global	_chrgFlag
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
	global	_motorPwmFlag
	global	_chrgPwmFlag
	global	_preWorkStep
	global	_jrStep
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
	global	_lockLedStep
	global	_reChrgCount
	global	_pwStep
	global	_overChrgTime
	global	_startTime
	global	_tempDuty
	global	_overCount
	global	_maxDuty
	global	_longPressFlag
	global	_keyCount
	global	_ledCnt
	global	_workOverOutTime
	global	_protectFlag
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
	global	_RA4
_RA4	set	1076
	global	_RA5
_RA5	set	1077
; #config settings
	file	"D225_062B_SOP14.as"
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

_motorPwmFlag:
       ds      1

_chrgPwmFlag:
       ds      1

_preWorkStep:
       ds      1

_jrStep:
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

	file	"D225_062B_SOP14.as"
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
	movlw	low((__pbssBANK0)+038h)
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
??_workCtr:	; 1 bytes @ 0x3
??_Sleep_Mode:	; 1 bytes @ 0x3
??_chrgPwmStop:	; 1 bytes @ 0x3
??_pwmStop:	; 1 bytes @ 0x3
??_chrgPwmInit:	; 1 bytes @ 0x3
??_pwmInit:	; 1 bytes @ 0x3
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
??_checkOutA:	; 1 bytes @ 0x11
	ds	2
	global	checkOutA@maxtempV
checkOutA@maxtempV:	; 1 bytes @ 0x13
	ds	1
	global	checkOutA@maxAout
checkOutA@maxAout:	; 1 bytes @ 0x14
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         60
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      11
;!    BANK0            80     21      78
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _ledCtr->___lbdiv
;!    _ledCtr->___lwmod
;!    _keyCtr->_keyRead
;!    _chrgCtr->___lbdiv
;!    _checkOutA->___bmul
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
;! (0) _main                                                 0     0      0    3432
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
;! (1) _ledCtr                                               0     0      0     980
;!                            ___lbdiv
;!                            ___lbmod
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     362
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
;!                            _pwmStop
;! ---------------------------------------------------------------------------------
;! (2) _pwmStop                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _chrgPwmStop                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _chrgPwmInit                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___lbdiv                                              4     3      1     321
;!                                              3 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _checkOutA                                            4     4      0    1152
;!                                             17 BANK0      4     4      0
;!                         _ADC_Sample
;!                             ___bmul
;! ---------------------------------------------------------------------------------
;! (2) ___bmul                                               3     2      1     145
;!                                              3 COMMON     3     2      1
;! ---------------------------------------------------------------------------------
;! (1) _checkBatAD                                           2     2      0     912
;!                                              4 COMMON     2     2      0
;!                         _ADC_Sample
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Sample                                          18    17      1     912
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
;!     ___bmul
;!   _chrgCtr
;!     ___lbdiv
;!     _chrgPwmInit
;!     _chrgPwmStop
;!     _pwmStop
;!   _keyCtr
;!     _keyRead
;!   _ledCtr
;!     ___lbdiv
;!     ___lbmod
;!     ___lwmod
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
;!BANK0               50     15      4E       4       97.5%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      59       7        0.0%
;!DATA                 0      0      59       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 152 in file "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
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
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	152
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	152
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	154
	
l3472:	
;main.c: 154: Init_System();
	fcall	_Init_System
	line	155
;main.c: 155: AD_Init();
	fcall	_AD_Init
	line	156
	
l3474:	
;main.c: 156: firstTime = 200;
	movlw	low(0C8h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_firstTime)
	line	157
;main.c: 157: while (1)
	
l691:	
	line	159
# 159 "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
clrwdt ;# 
psect	maintext
	line	160
	
l3476:	
;main.c: 160: if(intCount10 > 10)
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_intCount10),w
	skipc
	goto	u3901
	goto	u3900
u3901:
	goto	l3482
u3900:
	line	162
	
l3478:	
;main.c: 161: {
;main.c: 162: intCount10 = 0;
	clrf	(_intCount10)
	line	163
	
l3480:	
;main.c: 163: checkOutA();
	fcall	_checkOutA
	line	165
	
l3482:	
;main.c: 164: }
;main.c: 165: if(!IntFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u3911
	goto	u3910
u3911:
	goto	l3486
u3910:
	goto	l691
	line	167
	
l3486:	
;main.c: 167: IntFlag = 0;
	clrf	(_IntFlag)
	line	168
	
l3488:	
;main.c: 168: chrgCtr();
	fcall	_chrgCtr
	line	169
	
l3490:	
;main.c: 169: checkBatAD();
	fcall	_checkBatAD
	line	170
	
l3492:	
;main.c: 170: if(chrgFlag == 0 && lowBatFlag == 0 && firstTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3921
	goto	u3920
u3921:
	goto	l695
u3920:
	
l3494:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u3931
	goto	u3930
u3931:
	goto	l695
u3930:
	
l3496:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3941
	goto	u3940
u3941:
	goto	l695
u3940:
	line	172
	
l3498:	
;main.c: 171: {
;main.c: 172: keyCtr();
	fcall	_keyCtr
	line	173
	
l695:	
	line	174
;main.c: 173: }
;main.c: 174: workCtr();
	fcall	_workCtr
	line	175
;main.c: 175: ledCtr();
	fcall	_ledCtr
	line	176
	
l3500:	
;main.c: 176: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && showBatTime == 0 && overWorkTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3951
	goto	u3950
u3951:
	goto	l3518
u3950:
	
l3502:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u3961
	goto	u3960
u3961:
	goto	l3518
u3960:
	
l3504:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u3971
	goto	u3970
u3971:
	goto	l3518
u3970:
	
l3506:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3981
	goto	u3980
u3981:
	goto	l3518
u3980:
	
l3508:	
	movf	((_showBatTime)),w
	btfss	status,2
	goto	u3991
	goto	u3990
u3991:
	goto	l3518
u3990:
	
l3510:	
;main.c: 177: {
;main.c: 178: shiweiNum = geweiNum = 0;
	movf	((_overWorkTime)),w
iorwf	((_overWorkTime+1)),w
	btfss	status,2
	goto	u4001
	goto	u4000
u4001:
	goto	l3518
u4000:
	line	179
	
l3512:	
;main.c: 179: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u4011
	goto	u4010
u4011:
	goto	l691
u4010:
	line	181
	
l3514:	
;main.c: 180: {
;main.c: 181: sleepTime = 0;
	clrf	(_sleepTime)
	line	182
	
l3516:	
;main.c: 182: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l691
	line	187
	
l3518:	
;main.c: 185: else
;main.c: 186: {
;main.c: 187: sleepTime = 0;
	clrf	(_sleepTime)
	goto	l691
	global	start
	ljmp	start
	opt stack 0
	line	190
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 611 in file "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
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
	line	611
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	611
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	614
	
l2796:	
;main.c: 614: if(startTime > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_startTime)),w
	btfsc	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l2800
u2580:
	line	616
	
l2798:	
;main.c: 615: {
;main.c: 616: startTime--;
	decf	(_startTime),f
	line	618
	
l2800:	
;main.c: 617: }
;main.c: 618: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l2826
u2590:
	line	620
	
l2802:	
;main.c: 619: {
;main.c: 620: if(motorPwmFlag == 0)
	movf	((_motorPwmFlag)),w
	btfss	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l2806
u2600:
	line	622
	
l2804:	
;main.c: 621: {
;main.c: 622: pwmInit();
	fcall	_pwmInit
	line	625
	
l2806:	
;main.c: 624: }
;main.c: 625: maxDuty = 36 + (workStep*2);
	clrc
	rlf	(_workStep),w
	addlw	024h
	movwf	(_maxDuty)
	line	626
	
l2808:	
;main.c: 626: if(overCount >= 5)
	movlw	low(05h)
	subwf	(_overCount),w
	skipc
	goto	u2611
	goto	u2610
u2611:
	goto	l2818
u2610:
	line	628
	
l2810:	
;main.c: 627: {
;main.c: 628: if(++count5s > 600)
	incf	(_count5s),f
	skipnz
	incf	(_count5s+1),f
	movlw	02h
	subwf	((_count5s+1)),w
	movlw	059h
	skipnz
	subwf	((_count5s)),w
	skipc
	goto	u2621
	goto	u2620
u2621:
	goto	l2820
u2620:
	line	630
	
l2812:	
;main.c: 629: {
;main.c: 630: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	631
	
l2814:	
;main.c: 631: overWorkTime = 300;
	movlw	02Ch
	movwf	(_overWorkTime)
	movlw	01h
	movwf	((_overWorkTime))+1
	line	632
	
l2816:	
;main.c: 633: prejrStep = jrStep;
	movf	(_workStep),w
	movwf	(_preWorkStep)
	line	634
;main.c: 634: workStep = 0;
	clrf	(_workStep)
	line	635
;main.c: 635: jrStep = 0;
	clrf	(_jrStep)
	goto	l2820
	line	640
	
l2818:	
;main.c: 638: else
;main.c: 639: {
;main.c: 640: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	642
	
l2820:	
;main.c: 641: }
;main.c: 642: if(count1s == 0 && ++count900s >= 900)
	movf	((_count1s)),w
	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l829
u2630:
	
l2822:	
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
	goto	l829
u2640:
	line	644
	
l2824:	
;main.c: 643: {
;main.c: 644: workStep = 0;
	clrf	(_workStep)
	line	645
;main.c: 645: jrStep = 0;
	clrf	(_jrStep)
	goto	l829
	line	650
	
l2826:	
;main.c: 648: else
;main.c: 649: {
;main.c: 650: pwmStop();
	fcall	_pwmStop
	line	651
	
l2828:	
;main.c: 651: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	654
	
l829:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 990 in file "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
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
	line	990
global __ptext2
__ptext2:	;psect for function _pwmInit
psect	text2
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	990
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2]
	line	992
	
l2266:	
;main.c: 992: motorPwmFlag = 1;
	clrf	(_motorPwmFlag)
	incf	(_motorPwmFlag),f
	line	993
	
l2268:	
;main.c: 993: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	994
;main.c: 994: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	995
	
l2270:	
;main.c: 995: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	998
	
l2272:	
;main.c: 998: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	999
;main.c: 999: PWMD3L = 43;
	movlw	low(02Bh)
	movwf	(156)^080h	;volatile
	line	1000
	
l2274:	
;main.c: 1000: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	1002
	
l2276:	
;main.c: 1002: PWMCON0 = 0X68;
	movlw	low(068h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	1003
;main.c: 1003: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	1004
	
l893:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_ledCtr

;; *************** function _ledCtr *****************
;; Defined at:
;;		line 270 in file "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
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
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	270
global __ptext3
__ptext3:	;psect for function _ledCtr
psect	text3
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	270
	global	__size_of_ledCtr
	__size_of_ledCtr	equ	__end_of_ledCtr-_ledCtr
	
_ledCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _ledCtr: [wreg+status,2+status,0+pclath+cstack]
	line	272
	
l3420:	
;main.c: 272: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u3781
	goto	u3780
u3781:
	goto	l3430
u3780:
	line	274
	
l3422:	
;main.c: 273: {
;main.c: 274: firstTime--;
	decf	(_firstTime),f
	line	275
	
l3424:	
;main.c: 275: ledStep = 6;
	movlw	low(06h)
	movwf	(_ledStep)
	line	276
	
l3426:	
;main.c: 276: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u3791
	goto	u3790
u3791:
	goto	l744
u3790:
	line	278
	
l3428:	
;main.c: 277: {
;main.c: 278: prePwStep = pwStep;
	movf	(_pwStep),w
	movwf	(_prePwStep)
	goto	l744
	line	281
	
l3430:	
;main.c: 281: else if(overWorkTime > 0)
	movf	((_overWorkTime)),w
iorwf	((_overWorkTime+1)),w
	btfsc	status,2
	goto	u3801
	goto	u3800
u3801:
	goto	l3440
u3800:
	line	283
	
l3432:	
;main.c: 282: {
;main.c: 283: overWorkTime--;
	movlw	01h
	subwf	(_overWorkTime),f
	movlw	0
	skipc
	decf	(_overWorkTime+1),f
	subwf	(_overWorkTime+1),f
	line	284
	
l3434:	
;main.c: 284: if(overWorkTime % 60 < 30)
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
	goto	u3811
	goto	u3810
u3811:
	goto	l3438
u3810:
	line	286
	
l3436:	
;main.c: 285: {
;main.c: 286: ledStep = preWorkStep;
	movf	(_preWorkStep),w
	movwf	(_ledStep)
	line	287
;main.c: 287: }
	goto	l744
	line	290
	
l3438:	
;main.c: 288: else
;main.c: 289: {
;main.c: 290: ledStep = 0;
	clrf	(_ledStep)
	goto	l744
	line	293
	
l3440:	
;main.c: 293: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u3821
	goto	u3820
u3821:
	goto	l3458
u3820:
	line	295
	
l3442:	
;main.c: 294: {
;main.c: 295: showBatTime--;
	decf	(_showBatTime),f
	line	296
	
l3444:	
;main.c: 296: if(prePwStep >= 14)
	movlw	low(0Eh)
	subwf	(_prePwStep),w
	skipc
	goto	u3831
	goto	u3830
u3831:
	goto	l3448
u3830:
	line	298
	
l3446:	
;main.c: 297: {
;main.c: 298: ledStep = prePwStep/14;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	movwf	(_ledStep)
	line	299
;main.c: 299: }
	goto	l744
	line	300
	
l3448:	
;main.c: 300: else if(prePwStep > 5)
	movlw	low(06h)
	subwf	(_prePwStep),w
	skipc
	goto	u3841
	goto	u3840
u3841:
	goto	l3452
u3840:
	line	302
	
l3450:	
;main.c: 301: {
;main.c: 302: ledStep = 1;
	clrf	(_ledStep)
	incf	(_ledStep),f
	line	303
;main.c: 303: }
	goto	l744
	line	306
	
l3452:	
;main.c: 304: else
;main.c: 305: {
;main.c: 306: if(count1s < 50)
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u3851
	goto	u3850
u3851:
	goto	l3438
u3850:
	goto	l3450
	line	314
	
l732:	
	line	315
;main.c: 313: }
;main.c: 314: }
;main.c: 315: }
	goto	l744
	line	316
	
l3458:	
;main.c: 316: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3861
	goto	u3860
u3861:
	goto	l3462
u3860:
	line	318
	
l3460:	
;main.c: 317: {
;main.c: 318: ledStep = workStep;
	movf	(_workStep),w
	movwf	(_ledStep)
	line	319
;main.c: 319: }
	goto	l744
	line	320
	
l3462:	
;main.c: 320: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3871
	goto	u3870
u3871:
	goto	l3438
u3870:
	line	322
	
l3464:	
;main.c: 321: {
;main.c: 322: if(count1s % 50 == 0)
	movlw	low(032h)
	movwf	(___lbmod@divisor)
	movf	(_count1s),w
	fcall	___lbmod
	xorlw	0
	skipz
	goto	u3881
	goto	u3880
u3881:
	goto	l744
u3880:
	line	324
	
l3466:	
;main.c: 323: {
;main.c: 324: if(++ledStep > 6)
	movlw	low(07h)
	incf	(_ledStep),f
	subwf	((_ledStep)),w
	skipc
	goto	u3891
	goto	u3890
u3891:
	goto	l732
u3890:
	line	326
	
l3468:	
;main.c: 325: {
;main.c: 326: ledStep = lockLedStep;
	movf	(_lockLedStep),w
	movwf	(_ledStep)
	line	334
	
l744:	
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
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___lwmod
psect	text4
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l3108:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l3124
u3130:
	line	14
	
l3110:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l3114
	line	16
	
l3112:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l3114:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3141
	goto	u3140
u3141:
	goto	l3112
u3140:
	line	20
	
l3116:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3155
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3155:
	skipc
	goto	u3151
	goto	u3150
u3151:
	goto	l3120
u3150:
	line	21
	
l3118:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l3120:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l3122:	
	decfsz	(___lwmod@counter),f
	goto	u3161
	goto	u3160
u3161:
	goto	l3116
u3160:
	line	25
	
l3124:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l1275:	
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
	
l3090:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l3092:	
	clrf	(___lbmod@rem)
	line	12
	
l3094:	
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
	
l3096:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l3098:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u3111
	goto	u3110
u3111:
	goto	l3102
u3110:
	line	15
	
l3100:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l3102:	
	decfsz	(___lbmod@counter),f
	goto	u3121
	goto	u3120
u3121:
	goto	l3094
u3120:
	line	17
	
l3104:	
	movf	(___lbmod@rem),w
	line	18
	
l1197:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 573 in file "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
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
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	573
global __ptext6
__ptext6:	;psect for function _keyCtr
psect	text6
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	573
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	575
	
l2766:	
;main.c: 575: char kclick = keyRead(0x04 & (~PORTB));
	comf	(6),w	;volatile
	andlw	04h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	576
	
l2768:	
;main.c: 576: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2521
	goto	u2520
u2521:
	goto	l2784
u2520:
	line	578
	
l2770:	
;main.c: 577: {
;main.c: 578: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2531
	goto	u2530
u2531:
	goto	l2776
u2530:
	line	580
	
l2772:	
;main.c: 579: {
;main.c: 580: if(++workStep > 6)
	movlw	low(07h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l818
u2540:
	line	582
	
l2774:	
;main.c: 581: {
;main.c: 582: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l818
	line	585
	
l2776:	
;main.c: 585: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l2780
u2550:
	line	587
	
l2778:	
;main.c: 586: {
;main.c: 587: showBatTime = 0;
	clrf	(_showBatTime)
	line	588
;main.c: 588: }
	goto	l818
	line	591
	
l2780:	
;main.c: 589: else
;main.c: 590: {
;main.c: 591: showBatTime = 200;
	movlw	low(0C8h)
	movwf	(_showBatTime)
	line	592
	
l2782:	
;main.c: 592: count1s = 0;
	clrf	(_count1s)
	goto	l818
	line	595
	
l2784:	
;main.c: 595: else if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l818
u2560:
	line	597
	
l2786:	
;main.c: 596: {
;main.c: 597: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l816
u2570:
	line	599
	
l2788:	
;main.c: 598: {
;main.c: 599: workStep = 0;
	clrf	(_workStep)
	line	600
;main.c: 600: }
	goto	l818
	line	601
	
l816:	
	line	603
;main.c: 601: else
;main.c: 602: {
;main.c: 603: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	604
	
l2790:	
;main.c: 604: startTime = 30;
	movlw	low(01Eh)
	movwf	(_startTime)
	line	605
	
l2792:	
;main.c: 605: showBatTime = 0;
	clrf	(_showBatTime)
	line	606
	
l2794:	
;main.c: 606: overWorkTime = 0;
	clrf	(_overWorkTime)
	clrf	(_overWorkTime+1)
	line	609
	
l818:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 505 in file "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
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
	line	505
global __ptext7
__ptext7:	;psect for function _keyRead
psect	text7
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	505
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	507
	
l2226:	
;main.c: 507: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1501
	goto	u1500
u1501:
	goto	l2242
u1500:
	line	509
	
l2228:	
;main.c: 508: {
;main.c: 509: keyCount++;
	incf	(_keyCount),f
	line	510
	
l2230:	
;main.c: 510: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1511
	goto	u1510
u1511:
	goto	l2246
u1510:
	line	512
	
l2232:	
;main.c: 511: {
;main.c: 512: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	line	513
	
l2234:	
;main.c: 513: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1521
	goto	u1520
u1521:
	goto	l2246
u1520:
	line	515
	
l2236:	
;main.c: 514: {
;main.c: 515: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	516
	
l2238:	
;main.c: 516: return 2;
	movlw	low(02h)
	goto	l791
	line	522
	
l2242:	
;main.c: 520: else
;main.c: 521: {
;main.c: 522: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1531
	goto	u1530
u1531:
	goto	l2252
u1530:
	line	524
	
l2244:	
;main.c: 523: {
;main.c: 524: keyCount = 0;
	clrf	(_keyCount)
	line	525
;main.c: 525: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	526
	
l2246:	
;main.c: 526: return 0;
	movlw	low(0)
	goto	l791
	line	528
	
l2252:	
;main.c: 528: else if(keyCount >= 6)
	movlw	low(06h)
	subwf	(_keyCount),w
	skipc
	goto	u1541
	goto	u1540
u1541:
	goto	l2260
u1540:
	line	530
	
l2254:	
;main.c: 529: {
;main.c: 530: keyCount = 0;
	clrf	(_keyCount)
	line	531
	
l2256:	
;main.c: 531: return 1;
	movlw	low(01h)
	goto	l791
	line	533
	
l2260:	
;main.c: 532: }
;main.c: 533: keyCount = 0;
	clrf	(_keyCount)
	goto	l2246
	line	536
	
l791:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 338 in file "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
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
;;      Temps:          0       2       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lbdiv
;;		_chrgPwmInit
;;		_chrgPwmStop
;;		_pwmStop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	338
global __ptext8
__ptext8:	;psect for function _chrgCtr
psect	text8
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	338
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	340
	
l3230:	
;main.c: 340: if(PORTA & 0x02)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(134)^080h,(1)&7	;volatile
	goto	u3401
	goto	u3400
u3401:
	goto	l747
u3400:
	line	342
	
l3232:	
;main.c: 341: {
;main.c: 342: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3411
	goto	u3410
u3411:
	goto	l3240
u3410:
	line	344
	
l3234:	
;main.c: 343: {
;main.c: 344: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	345
	
l3236:	
;main.c: 345: chrgMaxDuty = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgMaxDuty)
	line	346
	
l3238:	
;main.c: 346: chrgPwmStop();
	fcall	_chrgPwmStop
	line	348
	
l3240:	
;main.c: 347: }
;main.c: 348: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(49/8),(49)&7	;volatile
	line	349
	
l3242:	
;main.c: 349: jrStep = 0;
	clrf	(_jrStep)
	line	350
	
l3244:	
;main.c: 350: workStep = 0;
	clrf	(_workStep)
	line	351
	
l3246:	
;main.c: 351: pwmStop();
	fcall	_pwmStop
	line	352
;main.c: 352: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	353
	
l3248:	
;main.c: 353: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u3421
	goto	u3420
u3421:
	goto	l3256
u3420:
	line	355
	
l3250:	
;main.c: 354: {
;main.c: 355: if(++count50s > 3000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	0Bh
	subwf	((_count50s+1)),w
	movlw	0B9h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u3431
	goto	u3430
u3431:
	goto	l3258
u3430:
	line	357
	
l3252:	
;main.c: 356: {
;main.c: 357: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	358
	
l3254:	
;main.c: 358: prePwStep++;
	incf	(_prePwStep),f
	goto	l3258
	line	363
	
l3256:	
;main.c: 361: else
;main.c: 362: {
;main.c: 363: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	365
	
l3258:	
;main.c: 364: }
;main.c: 365: if(protectFlag)
	movf	((_protectFlag)),w
	btfsc	status,2
	goto	u3441
	goto	u3440
u3441:
	goto	l3280
u3440:
	line	367
	
l3260:	
;main.c: 366: {
;main.c: 367: chrgPwmStop();
	fcall	_chrgPwmStop
	line	368
	
l3262:	
;main.c: 368: if(prePwStep < 99 && protectFlag == 1)
	movlw	low(063h)
	subwf	(_prePwStep),w
	skipnc
	goto	u3451
	goto	u3450
u3451:
	goto	l3276
u3450:
	
l3264:	
		decf	((_protectFlag)),w
	btfss	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l3276
u3460:
	line	370
	
l3266:	
;main.c: 369: {
;main.c: 370: if(++reChrgCount > 250)
	movlw	low(0FBh)
	incf	(_reChrgCount),f
	subwf	((_reChrgCount)),w
	skipc
	goto	u3471
	goto	u3470
u3471:
	goto	l758
u3470:
	line	372
	
l3268:	
;main.c: 371: {
;main.c: 372: reChrgCount = 0;
	clrf	(_reChrgCount)
	line	373
;main.c: 373: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	374
;main.c: 374: protectFlag = 0;
	clrf	(_protectFlag)
	line	375
	
l3270:	
;main.c: 375: if(prePwStep > 14)
	movlw	low(0Fh)
	subwf	(_prePwStep),w
	skipc
	goto	u3481
	goto	u3480
u3481:
	goto	l3274
u3480:
	line	377
	
l3272:	
;main.c: 376: {
;main.c: 377: lockLedStep = (prePwStep/14) - 1;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	0FFh
	movwf	(_lockLedStep)
	line	378
;main.c: 378: }
	goto	l758
	line	381
	
l3274:	
;main.c: 379: else
;main.c: 380: {
;main.c: 381: lockLedStep = 0;
	clrf	(_lockLedStep)
	goto	l758
	line	387
	
l3276:	
;main.c: 385: else
;main.c: 386: {
;main.c: 387: reChrgCount = 0;
	clrf	(_reChrgCount)
	goto	l758
	line	391
	
l3280:	
;main.c: 390: }
;main.c: 391: if(batADValue < 1118)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Eh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3491
	goto	u3490
u3491:
	goto	l3286
u3490:
	line	393
	
l3282:	
;main.c: 392: {
;main.c: 393: chrgMode = 0;
	clrf	(_chrgMode)
	line	394
	
l3284:	
;main.c: 394: chrgMaxAD = 8;
	movlw	low(08h)
	movwf	(_chrgMaxAD)
	line	395
;main.c: 395: }
	goto	l3304
	line	396
	
l3286:	
;main.c: 396: else if(batADValue < 1530)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	0FAh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3501
	goto	u3500
u3501:
	goto	l3294
u3500:
	line	398
	
l3288:	
;main.c: 397: {
;main.c: 398: chrgMode = 1;
	clrf	(_chrgMode)
	incf	(_chrgMode),f
	line	399
	
l3290:	
;main.c: 399: chrgMaxAD = 29;
	movlw	low(01Dh)
	movwf	(_chrgMaxAD)
	line	400
	
l3292:	
;main.c: 400: lockCount = 0;
	clrf	(_lockCount)
	line	401
;main.c: 401: }
	goto	l3304
	line	402
	
l3294:	
;main.c: 402: else if(count1s == 0)
	movf	((_count1s)),w
	btfss	status,2
	goto	u3511
	goto	u3510
u3511:
	goto	l3304
u3510:
	line	404
	
l3296:	
;main.c: 403: {
;main.c: 404: if(++lockCount > 200)
	movlw	low(0C9h)
	incf	(_lockCount),f
	subwf	((_lockCount)),w
	skipc
	goto	u3521
	goto	u3520
u3521:
	goto	l3302
u3520:
	line	406
	
l3298:	
;main.c: 405: {
;main.c: 406: lockCount = 0;
	clrf	(_lockCount)
	line	407
	
l3300:	
;main.c: 407: chrgMode = 2;
	movlw	low(02h)
	movwf	(_chrgMode)
	line	410
	
l3302:	
;main.c: 408: }
;main.c: 410: chrgMaxAD = 60;
	movlw	low(03Ch)
	movwf	(_chrgMaxAD)
	line	412
	
l3304:	
;main.c: 411: }
;main.c: 412: if(chrgMode == 2 && outADValue < 5)
		movlw	2
	xorwf	((_chrgMode)),w
	btfss	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l3314
u3530:
	
l3306:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	05h
	skipnz
	subwf	(_outADValue),w
	skipnc
	goto	u3541
	goto	u3540
u3541:
	goto	l3314
u3540:
	line	414
	
l3308:	
;main.c: 413: {
;main.c: 414: if(++fullCount >= 200)
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
	goto	l3316
u3550:
	line	416
	
l3310:	
;main.c: 415: {
;main.c: 416: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	417
	
l3312:	
;main.c: 417: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l3316
	line	422
	
l3314:	
;main.c: 420: else
;main.c: 421: {
;main.c: 422: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	424
	
l3316:	
;main.c: 423: }
;main.c: 424: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u3561
	goto	u3560
u3561:
	goto	l3322
u3560:
	line	426
	
l3318:	
;main.c: 425: {
;main.c: 426: lockLedStep = 6;
	movlw	low(06h)
	movwf	(_lockLedStep)
	line	427
	
l3320:	
;main.c: 427: chrgPwmStop();
	fcall	_chrgPwmStop
	line	428
;main.c: 428: }
	goto	l758
	line	431
	
l3322:	
;main.c: 429: else
;main.c: 430: {
;main.c: 431: if(prePwStep < 15)
	movlw	low(0Fh)
	subwf	(_prePwStep),w
	skipnc
	goto	u3571
	goto	u3570
u3571:
	goto	l3326
u3570:
	line	433
	
l3324:	
;main.c: 432: {
;main.c: 433: lockLedStep = 0;
	clrf	(_lockLedStep)
	line	434
;main.c: 434: }
	goto	l3328
	line	437
	
l3326:	
;main.c: 435: else
;main.c: 436: {
;main.c: 437: lockLedStep = (prePwStep/14) - 1;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	0FFh
	movwf	(_lockLedStep)
	line	439
	
l3328:	
;main.c: 438: }
;main.c: 439: if(batADValue > 1550 || outADValue > chrgMaxAD)
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	0Fh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3581
	goto	u3580
u3581:
	goto	l3332
u3580:
	
l3330:	
	movf	(_chrgMaxAD),w
	movwf	(??_chrgCtr+0)+0
	clrf	(??_chrgCtr+0)+0+1
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
	goto	l3344
u3590:
	line	441
	
l3332:	
;main.c: 440: {
;main.c: 441: if(++subTime > chrgWaitTime)
	incf	(_subTime),f
	movf	((_subTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u3601
	goto	u3600
u3601:
	goto	l3342
u3600:
	line	443
	
l3334:	
;main.c: 442: {
;main.c: 443: if(chrgMaxDuty > 1)
	movlw	low(02h)
	subwf	(_chrgMaxDuty),w
	skipc
	goto	u3611
	goto	u3610
u3611:
	goto	l3338
u3610:
	line	445
	
l3336:	
;main.c: 444: {
;main.c: 445: chrgMaxDuty--;
	decf	(_chrgMaxDuty),f
	line	447
	
l3338:	
;main.c: 446: }
;main.c: 447: subTime = 0;
	clrf	(_subTime)
	line	448
	
l3340:	
;main.c: 448: chrgWaitTime = 50;
	movlw	low(032h)
	movwf	(_chrgWaitTime)
	line	450
	
l3342:	
;main.c: 449: }
;main.c: 450: addTime = 0;
	clrf	(_addTime)
	line	451
;main.c: 451: }
	goto	l3358
	line	452
	
l3344:	
;main.c: 452: else if(batADValue < 1550 && outADValue < (chrgMaxAD - 4))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	0Eh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3621
	goto	u3620
u3621:
	goto	l3358
u3620:
	
l3346:	
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
	goto	l3358
u3630:
	line	454
	
l3348:	
;main.c: 453: {
;main.c: 454: if(++addTime > chrgWaitTime)
	incf	(_addTime),f
	movf	((_addTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u3641
	goto	u3640
u3641:
	goto	l3356
u3640:
	line	456
	
l3350:	
;main.c: 455: {
;main.c: 456: addTime = 0;
	clrf	(_addTime)
	line	457
	
l3352:	
;main.c: 457: if(chrgMaxDuty < 75)
	movlw	low(04Bh)
	subwf	(_chrgMaxDuty),w
	skipnc
	goto	u3651
	goto	u3650
u3651:
	goto	l3356
u3650:
	line	459
	
l3354:	
;main.c: 458: {
;main.c: 459: chrgMaxDuty++;
	incf	(_chrgMaxDuty),f
	line	462
	
l3356:	
;main.c: 460: }
;main.c: 461: }
;main.c: 462: subTime = 0;
	clrf	(_subTime)
	line	466
	
l3358:	
;main.c: 463: }
;main.c: 466: if(chrgPwmFlag == 0)
	movf	((_chrgPwmFlag)),w
	btfss	status,2
	goto	u3661
	goto	u3660
u3661:
	goto	l3362
u3660:
	line	468
	
l3360:	
;main.c: 467: {
;main.c: 468: chrgPwmInit();
	fcall	_chrgPwmInit
	line	470
	
l3362:	
;main.c: 469: }
;main.c: 470: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	471
	
l3364:	
;main.c: 471: PWMD2L = chrgMaxDuty;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_chrgMaxDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	goto	l758
	line	474
	
l747:	
	line	476
;main.c: 477: startChrgTime = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	line	478
	
l3366:	
;main.c: 478: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	479
;main.c: 479: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	480
;main.c: 480: protectFlag = 0;
	clrf	(_protectFlag)
	line	481
;main.c: 481: chrgMode = 0;
	clrf	(_chrgMode)
	line	482
;main.c: 482: chrgMaxAD = 0;
	clrf	(_chrgMaxAD)
	line	483
;main.c: 483: chrgMaxDuty = 0;
	clrf	(_chrgMaxDuty)
	line	484
;main.c: 484: lockCount = 0;
	clrf	(_lockCount)
	line	485
;main.c: 485: lockLedStep = 0;
	clrf	(_lockLedStep)
	line	486
	
l3368:	
;main.c: 486: chrgWaitTime = 20;
	movlw	low(014h)
	movwf	(_chrgWaitTime)
	line	487
	
l3370:	
;main.c: 487: chrgPwmStop();
	fcall	_chrgPwmStop
	line	488
	
l3372:	
;main.c: 488: if(prePwStep > 0 && prePwStep > pwStep)
	movf	((_prePwStep)),w
	btfsc	status,2
	goto	u3671
	goto	u3670
u3671:
	goto	l3382
u3670:
	
l3374:	
	movf	(_prePwStep),w
	subwf	(_pwStep),w
	skipnc
	goto	u3681
	goto	u3680
u3681:
	goto	l3382
u3680:
	line	490
	
l3376:	
;main.c: 489: {
;main.c: 490: if(++count50s > 3000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	0Bh
	subwf	((_count50s+1)),w
	movlw	0B9h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u3691
	goto	u3690
u3691:
	goto	l758
u3690:
	line	492
	
l3378:	
;main.c: 491: {
;main.c: 492: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	493
	
l3380:	
;main.c: 493: prePwStep--;
	decf	(_prePwStep),f
	goto	l758
	line	498
	
l3382:	
;main.c: 496: else
;main.c: 497: {
;main.c: 498: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	501
	
l758:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 1006 in file "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
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
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	1006
global __ptext9
__ptext9:	;psect for function _pwmStop
psect	text9
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	1006
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: [wreg+status,2+status,0]
	line	1008
	
l2206:	
;main.c: 1008: if(motorPwmFlag)
	movf	((_motorPwmFlag)),w
	btfsc	status,2
	goto	u1491
	goto	u1490
u1491:
	goto	l897
u1490:
	line	1010
	
l2208:	
;main.c: 1009: {
;main.c: 1010: motorPwmFlag = 0;
	clrf	(_motorPwmFlag)
	line	1011
	
l2210:	
;main.c: 1011: PWMCON0 &= 0XF7;
	bcf	(21)+(3/8),(3)&7	;volatile
	line	1012
	
l2212:	
;main.c: 1012: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	1014
	
l897:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_chrgPwmStop

;; *************** function _chrgPwmStop *****************
;; Defined at:
;;		line 980 in file "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
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
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	980
global __ptext10
__ptext10:	;psect for function _chrgPwmStop
psect	text10
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	980
	global	__size_of_chrgPwmStop
	__size_of_chrgPwmStop	equ	__end_of_chrgPwmStop-_chrgPwmStop
	
_chrgPwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmStop: [wreg+status,2+status,0]
	line	982
	
l2198:	
;main.c: 982: if(chrgPwmFlag)
	movf	((_chrgPwmFlag)),w
	btfsc	status,2
	goto	u1481
	goto	u1480
u1481:
	goto	l890
u1480:
	line	984
	
l2200:	
;main.c: 983: {
;main.c: 984: chrgPwmFlag = 0;
	clrf	(_chrgPwmFlag)
	line	985
	
l2202:	
;main.c: 985: PWMCON0 &= 0xFB;
	bcf	(21)+(2/8),(2)&7	;volatile
	line	986
	
l2204:	
;main.c: 986: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	988
	
l890:	
	return
	opt stack 0
GLOBAL	__end_of_chrgPwmStop
	__end_of_chrgPwmStop:
	signat	_chrgPwmStop,89
	global	_chrgPwmInit

;; *************** function _chrgPwmInit *****************
;; Defined at:
;;		line 962 in file "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
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
	line	962
global __ptext11
__ptext11:	;psect for function _chrgPwmInit
psect	text11
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	962
	global	__size_of_chrgPwmInit
	__size_of_chrgPwmInit	equ	__end_of_chrgPwmInit-_chrgPwmInit
	
_chrgPwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmInit: [wreg+status,2]
	line	964
	
l2214:	
;main.c: 964: chrgPwmFlag = 1;
	clrf	(_chrgPwmFlag)
	incf	(_chrgPwmFlag),f
	line	965
	
l2216:	
;main.c: 965: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	967
;main.c: 967: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	968
	
l2218:	
;main.c: 968: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	972
	
l2220:	
;main.c: 972: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	973
;main.c: 973: PWMD2L = 10;
	movlw	low(0Ah)
	movwf	(155)^080h	;volatile
	line	974
	
l2222:	
;main.c: 974: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	976
	
l2224:	
;main.c: 976: PWMCON0 = 0X04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	977
;main.c: 977: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	978
	
l886:	
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
	
l2364:	
	clrf	(___lbdiv@quotient)
	line	10
	
l2366:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1721
	goto	u1720
u1721:
	goto	l2384
u1720:
	line	11
	
l2368:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2372
	
l1186:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l2370:	
	incf	(___lbdiv@counter),f
	line	12
	
l2372:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1731
	goto	u1730
u1731:
	goto	l1186
u1730:
	line	16
	
l1188:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l2374:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1741
	goto	u1740
u1741:
	goto	l2380
u1740:
	line	19
	
l2376:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2378:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2380:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l2382:	
	decfsz	(___lbdiv@counter),f
	goto	u1751
	goto	u1750
u1751:
	goto	l1188
u1750:
	line	25
	
l2384:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1191:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_checkOutA

;; *************** function _checkOutA *****************
;; Defined at:
;;		line 656 in file "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  maxAout         1   20[BANK0 ] unsigned char 
;;  maxtempV        1   19[BANK0 ] unsigned char 
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
;;      Temps:          0       2       0
;;      Totals:         0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ADC_Sample
;;		___bmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	656
global __ptext13
__ptext13:	;psect for function _checkOutA
psect	text13
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	656
	global	__size_of_checkOutA
	__size_of_checkOutA	equ	__end_of_checkOutA-_checkOutA
	
_checkOutA:	
;incstack = 0
	opt	stack 4
; Regs used in _checkOutA: [wreg+status,2+status,0+pclath+cstack]
	line	658
	
l3128:	
;main.c: 658: test_adc = ADC_Sample(0, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	659
	
l3130:	
;main.c: 659: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l3226
u3170:
	line	661
	
l3132:	
;main.c: 660: {
;main.c: 661: if(chrgFlag && adresult > 100)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3181
	goto	u3180
u3181:
	goto	l3142
u3180:
	
l3134:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	065h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u3191
	goto	u3190
u3191:
	goto	l3142
u3190:
	line	663
	
l3136:	
;main.c: 662: {
;main.c: 663: if(++overChrgTime > 10)
	movlw	low(0Bh)
	incf	(_overChrgTime),f
	subwf	((_overChrgTime)),w
	skipc
	goto	u3201
	goto	u3200
u3201:
	goto	l3144
u3200:
	line	665
	
l3138:	
;main.c: 664: {
;main.c: 665: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	666
	
l3140:	
;main.c: 666: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l3144
	line	672
	
l3142:	
;main.c: 670: else
;main.c: 671: {
;main.c: 672: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	674
	
l3144:	
;main.c: 673: }
;main.c: 674: outADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_outADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_outADValue)
	line	676
	
l3146:	
;main.c: 676: if(workStep && (outADValue > 600))
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l3154
u3210:
	
l3148:	
	movlw	02h
	subwf	(_outADValue+1),w
	movlw	059h
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l3154
u3220:
	line	678
	
l3150:	
;main.c: 677: {
;main.c: 678: if(++workOverOutTime > 50)
	movlw	low(033h)
	incf	(_workOverOutTime),f
	subwf	((_workOverOutTime)),w
	skipc
	goto	u3231
	goto	u3230
u3231:
	goto	l3156
u3230:
	line	680
	
l3152:	
;main.c: 679: {
;main.c: 680: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	681
;main.c: 681: workStep = 0;
	clrf	(_workStep)
	goto	l3156
	line	686
	
l3154:	
;main.c: 684: else
;main.c: 685: {
;main.c: 686: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	688
	
l3156:	
;main.c: 687: }
;main.c: 688: unsigned char maxtempV = 130 + (workStep * 10);
	movlw	low(0Ah)
	movwf	(___bmul@multiplicand)
	movf	(_workStep),w
	fcall	___bmul
	addlw	082h
	movwf	(checkOutA@maxtempV)
	line	689
	
l3158:	
;main.c: 689: if(jrStep > 0)
	movf	((_jrStep)),w
	btfsc	status,2
	goto	u3241
	goto	u3240
u3241:
	goto	l3166
u3240:
	line	691
	
l3160:	
;main.c: 690: {
;main.c: 691: maxtempV = maxtempV - 40;
	movlw	low(0D8h)
	addwf	(checkOutA@maxtempV),f
	line	692
	
l3162:	
;main.c: 692: if(workStep < 5)
	movlw	low(05h)
	subwf	(_workStep),w
	skipnc
	goto	u3251
	goto	u3250
u3251:
	goto	l3166
u3250:
	line	694
	
l3164:	
;main.c: 693: {
;main.c: 694: maxtempV = maxtempV - 30;
	movlw	low(0E2h)
	addwf	(checkOutA@maxtempV),f
	line	697
	
l3166:	
;main.c: 695: }
;main.c: 696: }
;main.c: 697: if(outADValue > maxtempV)
	movf	(checkOutA@maxtempV),w
	movwf	(??_checkOutA+0)+0
	clrf	(??_checkOutA+0)+0+1
	movf	(_outADValue+1),w
	subwf	1+(??_checkOutA+0)+0,w
	skipz
	goto	u3265
	movf	(_outADValue),w
	subwf	0+(??_checkOutA+0)+0,w
u3265:
	skipnc
	goto	u3261
	goto	u3260
u3261:
	goto	l3172
u3260:
	line	699
	
l3168:	
;main.c: 698: {
;main.c: 699: if(++overCount > 5)
	movlw	low(06h)
	incf	(_overCount),f
	subwf	((_overCount)),w
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l3222
u3270:
	line	701
	
l3170:	
;main.c: 700: {
;main.c: 701: overCount = 5;
	movlw	low(05h)
	movwf	(_overCount)
	goto	l3222
	line	707
	
l3172:	
;main.c: 704: else
;main.c: 705: {
;main.c: 707: if(overCount > 0)
	movf	((_overCount)),w
	btfsc	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l3176
u3280:
	line	709
	
l3174:	
;main.c: 708: {
;main.c: 709: overCount--;
	decf	(_overCount),f
	line	711
	
l3176:	
;main.c: 710: }
;main.c: 711: unsigned char maxAout = 32;
	movlw	low(020h)
	movwf	(checkOutA@maxAout)
	line	712
	
l3178:	
;main.c: 712: if(pwStep < 40)
	movlw	low(028h)
	subwf	(_pwStep),w
	skipnc
	goto	u3291
	goto	u3290
u3291:
	goto	l3182
u3290:
	line	714
	
l3180:	
;main.c: 713: {
;main.c: 714: maxAout = 30;
	movlw	low(01Eh)
	movwf	(checkOutA@maxAout)
	line	716
	
l3182:	
;main.c: 715: }
;main.c: 716: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u3301
	goto	u3300
u3301:
	goto	l3186
u3300:
	line	718
	
l3184:	
;main.c: 717: {
;main.c: 718: maxAout = maxAout + 1;
	incf	(checkOutA@maxAout),f
	line	719
;main.c: 719: }
	goto	l847
	line	720
	
l3186:	
;main.c: 720: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3311
	goto	u3310
u3311:
	goto	l3190
u3310:
	line	722
	
l3188:	
;main.c: 721: {
;main.c: 722: maxAout = maxAout + 3;
	movlw	low(03h)
	addwf	(checkOutA@maxAout),f
	line	723
;main.c: 723: }
	goto	l847
	line	724
	
l3190:	
;main.c: 724: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3321
	goto	u3320
u3321:
	goto	l3194
u3320:
	line	726
	
l3192:	
;main.c: 725: {
;main.c: 726: maxAout = maxAout + 5;
	movlw	low(05h)
	addwf	(checkOutA@maxAout),f
	line	727
;main.c: 727: }
	goto	l847
	line	728
	
l3194:	
;main.c: 728: else if(workStep == 4)
		movlw	4
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3331
	goto	u3330
u3331:
	goto	l3198
u3330:
	line	730
	
l3196:	
;main.c: 729: {
;main.c: 730: maxAout = maxAout + 7;
	movlw	low(07h)
	addwf	(checkOutA@maxAout),f
	line	731
;main.c: 731: }
	goto	l847
	line	732
	
l3198:	
;main.c: 732: else if(workStep == 5)
		movlw	5
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l3202
u3340:
	line	734
	
l3200:	
;main.c: 733: {
;main.c: 734: maxAout = maxAout + 9;
	movlw	low(09h)
	addwf	(checkOutA@maxAout),f
	line	735
;main.c: 735: }
	goto	l847
	line	736
	
l3202:	
;main.c: 736: else if(workStep == 6)
		movlw	6
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l851
u3350:
	line	738
	
l3204:	
;main.c: 737: {
;main.c: 738: maxAout = maxAout + 12;
	movlw	low(0Ch)
	addwf	(checkOutA@maxAout),f
	goto	l847
	line	740
	
l851:	
	
l847:	
;main.c: 739: }
;main.c: 740: if(overCount > 0)
	movf	((_overCount)),w
	btfsc	status,2
	goto	u3361
	goto	u3360
u3361:
	goto	l3208
u3360:
	line	742
	
l3206:	
;main.c: 741: {
;main.c: 742: overCount--;
	decf	(_overCount),f
	line	744
	
l3208:	
;main.c: 743: }
;main.c: 744: if(outADValue > maxAout)
	movf	(checkOutA@maxAout),w
	movwf	(??_checkOutA+0)+0
	clrf	(??_checkOutA+0)+0+1
	movf	(_outADValue+1),w
	subwf	1+(??_checkOutA+0)+0,w
	skipz
	goto	u3375
	movf	(_outADValue),w
	subwf	0+(??_checkOutA+0)+0,w
u3375:
	skipnc
	goto	u3371
	goto	u3370
u3371:
	goto	l3216
u3370:
	line	747
	
l3210:	
;main.c: 745: {
;main.c: 747: if(startTime == 0)
	movf	((_startTime)),w
	btfss	status,2
	goto	u3381
	goto	u3380
u3381:
	goto	l3214
u3380:
	line	749
	
l3212:	
;main.c: 748: {
;main.c: 749: tempDuty = 81 + (workStep*3);
	movf	(_workStep),w
	addwf	(_workStep),w
	addwf	(_workStep),w
	addlw	051h
	movwf	(_tempDuty)
	line	750
;main.c: 750: }
	goto	l3222
	line	753
	
l3214:	
;main.c: 751: else
;main.c: 752: {
;main.c: 753: tempDuty = maxDuty;
	movf	(_maxDuty),w
	movwf	(_tempDuty)
	goto	l3222
	line	761
	
l3216:	
;main.c: 761: if(tempDuty > maxDuty)
	movf	(_tempDuty),w
	subwf	(_maxDuty),w
	skipnc
	goto	u3391
	goto	u3390
u3391:
	goto	l3214
u3390:
	line	763
	
l3218:	
;main.c: 762: {
;main.c: 763: tempDuty--;
	decf	(_tempDuty),f
	line	773
;main.c: 764: }
	
l3222:	
;main.c: 768: }
;main.c: 770: }
;main.c: 772: }
;main.c: 773: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	774
	
l3224:	
;main.c: 774: PWMD3L = tempDuty;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_tempDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	775
;main.c: 775: }
	goto	l865
	line	778
	
l3226:	
;main.c: 776: else
;main.c: 777: {
;main.c: 778: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	779
;main.c: 779: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	780
	
l3228:	
;main.c: 780: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_checkOutA+0)+0),f
	u4027:
decfsz	(??_checkOutA+0)+0,f
	goto	u4027
	nop2
opt asmopt_pop

	line	782
	
l865:	
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
psect	text14,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\Umul8.c"
	line	4
global __ptext14
__ptext14:	;psect for function ___bmul
psect	text14
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
	
l2350:	
	clrf	(___bmul@product)
	line	43
	
l2352:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1701
	goto	u1700
u1701:
	goto	l2356
u1700:
	line	44
	
l2354:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	45
	
l2356:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	46
	
l2358:	
	clrc
	rrf	(___bmul@multiplier),f
	line	47
	movf	((___bmul@multiplier)),w
	btfss	status,2
	goto	u1711
	goto	u1710
u1711:
	goto	l2352
u1710:
	line	50
	
l2360:	
	movf	(___bmul@product),w
	line	51
	
l946:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 784 in file "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
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
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	784
global __ptext15
__ptext15:	;psect for function _checkBatAD
psect	text15
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	784
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	786
	
l3384:	
;main.c: 786: test_adc = ADC_Sample(2, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(02h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	787
	
l3386:	
;main.c: 787: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3701
	goto	u3700
u3701:
	goto	l3416
u3700:
	line	789
	
l3388:	
;main.c: 788: {
;main.c: 789: batADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_batADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_batADValue)
	line	790
;main.c: 790: if(batADValue < 1117)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Dh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3711
	goto	u3710
u3711:
	goto	l3398
u3710:
	line	792
	
l3390:	
;main.c: 791: {
;main.c: 792: pwStep = 0;
	clrf	(_pwStep)
	line	793
	
l3392:	
;main.c: 793: if(++count8s > 800)
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
	goto	l3410
u3720:
	line	795
	
l3394:	
;main.c: 794: {
;main.c: 795: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	796
	
l3396:	
;main.c: 796: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	797
;main.c: 797: prePwStep = 0;
	clrf	(_prePwStep)
	line	798
;main.c: 798: workStep = 0;
	clrf	(_workStep)
	line	799
;main.c: 799: jrStep = 0;
	clrf	(_jrStep)
	goto	l3410
	line	804
	
l3398:	
;main.c: 802: else
;main.c: 803: {
;main.c: 804: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	805
	
l3400:	
;main.c: 805: if(batADValue >= 1340)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	03Ch
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3731
	goto	u3730
u3731:
	goto	l3404
u3730:
	line	807
	
l3402:	
;main.c: 806: {
;main.c: 807: pwStep = ((batADValue - 1340) /2) + 13;
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
	line	808
;main.c: 808: }
	goto	l3406
	line	811
	
l3404:	
;main.c: 809: else
;main.c: 810: {
;main.c: 811: pwStep = (batADValue - 1117) / 16;
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
	line	813
	
l3406:	
;main.c: 812: }
;main.c: 813: if(pwStep > 99)
	movlw	low(064h)
	subwf	(_pwStep),w
	skipc
	goto	u3751
	goto	u3750
u3751:
	goto	l3410
u3750:
	line	815
	
l3408:	
;main.c: 814: {
;main.c: 815: pwStep = 99;
	movlw	low(063h)
	movwf	(_pwStep)
	line	818
	
l3410:	
;main.c: 816: }
;main.c: 817: }
;main.c: 818: if(chrgFlag && batADValue > 1861)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3761
	goto	u3760
u3761:
	goto	l877
u3760:
	
l3412:	
	movlw	07h
	subwf	(_batADValue+1),w
	movlw	046h
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3771
	goto	u3770
u3771:
	goto	l877
u3770:
	line	820
	
l3414:	
;main.c: 819: {
;main.c: 820: protectFlag = 1;
	clrf	(_protectFlag)
	incf	(_protectFlag),f
	goto	l877
	line	825
	
l3416:	
;main.c: 823: else
;main.c: 824: {
;main.c: 825: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	826
;main.c: 826: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	827
	
l3418:	
;main.c: 827: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u4037:
decfsz	(??_checkBatAD+0)+0,f
	goto	u4037
opt asmopt_pop

	line	858
	
l877:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 1101 in file "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
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
	line	1101
global __ptext16
__ptext16:	;psect for function _ADC_Sample
psect	text16
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	1101
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	1103
	
l3018:	
;main.c: 1103: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1104
	
l3020:	
;main.c: 1104: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1105
;main.c: 1105: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	1107
	
l3022:	
;main.c: 1107: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u2951
	goto	u2950
u2951:
	goto	l3028
u2950:
	
l3024:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u2961
	goto	u2960
u2961:
	goto	l3028
u2960:
	line	1110
	
l3026:	
;main.c: 1108: {
;main.c: 1110: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1111
;main.c: 1111: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_ADC_Sample+0)+0),f
	u4047:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u4047
	nop2
opt asmopt_pop

	line	1112
;main.c: 1112: }
	goto	l3030
	line	1114
	
l3028:	
;main.c: 1113: else
;main.c: 1114: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1116
	
l3030:	
;main.c: 1116: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l3036
u2970:
	line	1118
	
l3032:	
;main.c: 1117: {
;main.c: 1118: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	1119
	
l3034:	
;main.c: 1119: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	1121
	
l3036:	
	line	1122
	
l3038:	
;main.c: 1122: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	1124
	
l3044:	
;main.c: 1123: {
;main.c: 1124: ADCON0 = (unsigned char)(0X41 | (adch << 2));
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
	line	1125
# 1125 "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
nop ;# 
	line	1126
# 1126 "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
nop ;# 
	line	1127
# 1127 "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
nop ;# 
	line	1128
# 1128 "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
nop ;# 
psect	text16
	line	1129
	
l3046:	
;main.c: 1129: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	1131
	
l3048:	
;main.c: 1131: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	1132
;main.c: 1132: while (GODONE)
	goto	l911
	
l912:	
	line	1134
;main.c: 1133: {
;main.c: 1134: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	1136
;main.c: 1136: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u2991
	goto	u2990
u2991:
	goto	l911
u2990:
	line	1137
	
l3050:	
;main.c: 1137: return 0;
	movlw	low(0)
	goto	l914
	line	1138
	
l911:	
	line	1132
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u3001
	goto	u3000
u3001:
	goto	l912
u3000:
	line	1140
	
l3054:	
;main.c: 1138: }
;main.c: 1140: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l3056:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	1142
	
l3058:	
;main.c: 1142: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l3062
u3010:
	line	1144
	
l3060:	
;main.c: 1143: {
;main.c: 1144: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	1145
;main.c: 1145: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1146
;main.c: 1146: }
	goto	l917
	line	1147
	
l3062:	
;main.c: 1147: else if (ad_temp > admax)
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
	goto	l3066
u3020:
	line	1148
	
l3064:	
;main.c: 1148: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l917
	line	1149
	
l3066:	
;main.c: 1149: else if (ad_temp < admin)
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
	goto	l917
u3030:
	line	1150
	
l3068:	
;main.c: 1150: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1152
	
l917:	
;main.c: 1152: adsum += ad_temp;
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

	line	1122
	
l3070:	
	incf	(ADC_Sample@i),f
	
l3072:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l3044
u3050:
	line	1154
	
l3074:	
;main.c: 1153: }
;main.c: 1154: adsum -= admax;
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

	line	1155
;main.c: 1155: if (adsum >= admin)
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
	goto	l921
u3070:
	line	1156
	
l3076:	
;main.c: 1156: adsum -= admin;
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

	goto	l3078
	line	1157
	
l921:	
	line	1158
;main.c: 1157: else
;main.c: 1158: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1160
	
l3078:	
;main.c: 1160: adresult = adsum >> 3;
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
	line	1162
	
l3080:	
;main.c: 1162: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1163
	
l3082:	
;main.c: 1163: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	1164
	
l3084:	
;main.c: 1164: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1165
	
l3086:	
;main.c: 1165: return 0xA5;
	movlw	low(0A5h)
	line	1167
	
l914:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 1024 in file "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
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
	line	1024
global __ptext17
__ptext17:	;psect for function _Sleep_Mode
psect	text17
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	1024
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 4
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	1026
	
l2882:	
;main.c: 1026: INTCON = 0;
	clrf	(11)	;volatile
	line	1028
;main.c: 1028: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	1030
;main.c: 1030: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	1031
	
l2884:	
;main.c: 1031: TRISA = 0x07;
	movlw	low(07h)
	movwf	(133)^080h	;volatile
	line	1032
	
l2886:	
;main.c: 1032: TRISB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	1034
;main.c: 1034: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	1035
;main.c: 1035: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	1036
	
l2888:	
;main.c: 1036: WPUB = 0x04;
	movlw	low(04h)
	movwf	(8)	;volatile
	line	1038
	
l2890:	
;main.c: 1038: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	1039
	
l2892:	
;main.c: 1039: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	1041
	
l2894:	
;main.c: 1041: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	1043
;main.c: 1043: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	1045
;main.c: 1045: IOCA = 0x02;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(137)^080h	;volatile
	line	1046
;main.c: 1046: IOCB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	1048
	
l2896:	
;main.c: 1048: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	1049
	
l2898:	
;main.c: 1049: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	1050
	
l2900:	
;main.c: 1050: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	1051
	
l2902:	
;main.c: 1051: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	1053
	
l2904:	
;main.c: 1053: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	1054
	
l2906:	
;main.c: 1054: PIR1 = 0;
	clrf	(13)	;volatile
	line	1055
	
l2908:	
;main.c: 1055: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	1057
	
l2910:	
;main.c: 1057: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	1058
	
l2912:	
;main.c: 1058: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	1059
	
l2914:	
;main.c: 1059: PORTB;
	movf	(6),w	;volatile
	line	1060
	
l2916:	
;main.c: 1060: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	1061
# 1061 "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
clrwdt ;# 
	line	1063
# 1063 "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
sleep ;# 
	line	1065
# 1065 "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
nop ;# 
	line	1066
# 1066 "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
clrwdt ;# 
	line	1067
# 1067 "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
nop ;# 
	line	1068
# 1068 "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
nop ;# 
	line	1069
# 1069 "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
nop ;# 
	line	1070
# 1070 "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
nop ;# 
	line	1071
# 1071 "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
nop ;# 
psect	text17
	line	1072
	
l2918:	
;main.c: 1072: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u2771
	goto	u2770
u2771:
	goto	l900
u2770:
	
l2920:	
	bcf	(107/8),(107)&7	;volatile
	
l900:	
	line	1073
;main.c: 1073: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u2781
	goto	u2780
u2781:
	goto	l901
u2780:
	
l2922:	
	bcf	(88/8),(88)&7	;volatile
	
l901:	
	line	1074
;main.c: 1074: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u2791
	goto	u2790
u2791:
	goto	l2926
u2790:
	
l2924:	
	bcf	(105/8),(105)&7	;volatile
	line	1075
	
l2926:	
;main.c: 1075: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	1076
;main.c: 1076: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	1077
	
l2928:	
;main.c: 1077: Init_System();
	fcall	_Init_System
	line	1078
	
l2930:	
;main.c: 1078: AD_Init();
	fcall	_AD_Init
	line	1079
	
l903:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 869 in file "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
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
	line	869
global __ptext18
__ptext18:	;psect for function _Init_System
psect	text18
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	869
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	871
	
l2166:	
# 871 "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
nop ;# 
	line	872
# 872 "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
clrwdt ;# 
psect	text18
	line	873
	
l2168:	
;main.c: 873: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	874
# 874 "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
clrwdt ;# 
psect	text18
	line	875
	
l2170:	
;main.c: 875: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	877
	
l2172:	
;main.c: 877: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	878
	
l2174:	
;main.c: 878: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	879
	
l2176:	
;main.c: 879: WPUB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	881
	
l2178:	
;main.c: 881: TRISA = 0x07;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	882
	
l2180:	
;main.c: 882: TRISB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	884
;main.c: 884: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	885
;main.c: 885: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	889
	
l2182:	
;main.c: 889: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	890
	
l2184:	
;main.c: 890: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	891
	
l2186:	
;main.c: 891: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	893
	
l2188:	
;main.c: 893: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	894
	
l2190:	
;main.c: 894: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	895
	
l880:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 906 in file "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
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
	line	906
global __ptext19
__ptext19:	;psect for function _AD_Init
psect	text19
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	906
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _AD_Init: [wreg+status,2]
	line	939
	
l2192:	
;main.c: 939: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	956
	
l2194:	
;main.c: 956: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	957
	
l2196:	
;main.c: 957: ANSEL0 = 0X05;
	movlw	low(05h)
	movwf	(147)^080h	;volatile
	line	958
;main.c: 958: ANSEL1 = 0x00;
	clrf	(148)^080h	;volatile
	line	959
	
l883:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 128 in file "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
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
	line	128
global __ptext20
__ptext20:	;psect for function _Isr_Timer
psect	text20
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	128
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
	line	130
	
i1l2932:	
;main.c: 130: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u280_21
	goto	u280_20
u280_21:
	goto	i1l686
u280_20:
	line	132
	
i1l2934:	
;main.c: 131: {
;main.c: 132: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	133
	
i1l2936:	
;main.c: 133: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u281_21
	goto	u281_20
u281_21:
	goto	i1l2946
u281_20:
	line	135
	
i1l2938:	
;main.c: 134: {
;main.c: 135: intCount = 0;
	clrf	(_intCount)
	line	136
	
i1l2940:	
;main.c: 136: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	137
	
i1l2942:	
;main.c: 137: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u282_21
	goto	u282_20
u282_21:
	goto	i1l2946
u282_20:
	line	139
	
i1l2944:	
;main.c: 138: {
;main.c: 139: count1s = 0;
	clrf	(_count1s)
	line	142
	
i1l2946:	
;main.c: 140: }
;main.c: 141: }
;main.c: 142: ledShow();
	fcall	_ledShow
	line	143
	
i1l2948:	
;main.c: 143: intCount10++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_intCount10),f
	line	146
	
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
;;		line 192 in file "C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
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
	line	192
global __ptext21
__ptext21:	;psect for function _ledShow
psect	text21
	file	"C:\mcuproject\scm\zdt\D225_062B_SOP14\main.c"
	line	192
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 4
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	194
	
i1l2426:	
;main.c: 194: if(++ledCntTime > 5)
	movlw	low(06h)
	incf	(_ledCntTime),f
	subwf	((_ledCntTime)),w
	skipc
	goto	u183_21
	goto	u183_20
u183_21:
	goto	i1l720
u183_20:
	line	196
	
i1l2428:	
;main.c: 195: {
;main.c: 196: ledCntTime = 0;
	clrf	(_ledCntTime)
	line	197
	
i1l2430:	
;main.c: 197: if(++ledCnt > 5)
	movlw	low(06h)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u184_21
	goto	u184_20
u184_21:
	goto	i1l2434
u184_20:
	line	199
	
i1l2432:	
;main.c: 198: {
;main.c: 199: ledCnt = 0;
	clrf	(_ledCnt)
	line	201
	
i1l2434:	
;main.c: 200: }
;main.c: 201: PORTB &= 0xDE;
	movlw	low(0DEh)
	andwf	(6),f	;volatile
	line	202
	
i1l2436:	
;main.c: 202: TRISB |= 0x21;
	movlw	low(021h)
	iorwf	(5),f	;volatile
	line	203
	
i1l2438:	
;main.c: 203: PORTA &= 0xCF;
	movlw	low(0CFh)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	204
	
i1l2440:	
;main.c: 204: TRISA |= 0x30;
	movlw	low(030h)
	iorwf	(133)^080h,f	;volatile
	line	205
;main.c: 205: switch(ledCnt)
	goto	i1l2468
	line	208
	
i1l2442:	
;main.c: 208: if(ledStep > 1)
	movlw	low(02h)
	subwf	(_ledStep),w
	skipc
	goto	u185_21
	goto	u185_20
u185_21:
	goto	i1l720
u185_20:
	line	210
	
i1l2444:	
;main.c: 209: {
;main.c: 210: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	211
;main.c: 211: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	212
;main.c: 212: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	213
;main.c: 213: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	goto	i1l720
	line	217
	
i1l2446:	
;main.c: 217: if(ledStep > 2)
	movlw	low(03h)
	subwf	(_ledStep),w
	skipc
	goto	u186_21
	goto	u186_20
u186_21:
	goto	i1l720
u186_20:
	line	219
	
i1l2448:	
;main.c: 218: {
;main.c: 219: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	220
;main.c: 220: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	221
;main.c: 221: RA5 = 1;
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	222
;main.c: 222: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l720
	line	226
	
i1l2450:	
;main.c: 226: if(ledStep > 3)
	movlw	low(04h)
	subwf	(_ledStep),w
	skipc
	goto	u187_21
	goto	u187_20
u187_21:
	goto	i1l720
u187_20:
	line	228
	
i1l2452:	
;main.c: 227: {
;main.c: 228: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	229
;main.c: 229: TRISB &= 0xFE;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(0/8),(0)&7	;volatile
	line	230
;main.c: 230: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	231
;main.c: 231: RA5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	goto	i1l720
	line	235
	
i1l2454:	
;main.c: 235: if(ledStep > 4)
	movlw	low(05h)
	subwf	(_ledStep),w
	skipc
	goto	u188_21
	goto	u188_20
u188_21:
	goto	i1l720
u188_20:
	line	237
	
i1l2456:	
;main.c: 236: {
;main.c: 237: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	238
;main.c: 238: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	239
;main.c: 239: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	240
;main.c: 240: RA5 = 0;
	bcf	(1077/8)^080h,(1077)&7	;volatile
	goto	i1l720
	line	244
	
i1l2458:	
;main.c: 244: if(ledStep > 5)
	movlw	low(06h)
	subwf	(_ledStep),w
	skipc
	goto	u189_21
	goto	u189_20
u189_21:
	goto	i1l720
u189_20:
	line	246
	
i1l2460:	
;main.c: 245: {
;main.c: 246: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	247
;main.c: 247: TRISB &= 0xFE;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(0/8),(0)&7	;volatile
	line	248
;main.c: 248: RA5 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	249
;main.c: 249: RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	goto	i1l720
	line	253
	
i1l2462:	
;main.c: 253: if(ledStep > 0)
	movf	((_ledStep)),w
	btfsc	status,2
	goto	u190_21
	goto	u190_20
u190_21:
	goto	i1l720
u190_20:
	line	255
	
i1l2464:	
;main.c: 254: {
;main.c: 255: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	256
;main.c: 256: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	257
;main.c: 257: RB5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	line	258
;main.c: 258: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l720
	line	205
	
i1l2468:	
	bcf	status, 5	;RP0=0, select bank0
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
goto i1l720
movlw high(i1S3540)
movwf pclath
	movlw low(i1S3540)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S3540:
	ljmp	i1l2462
	ljmp	i1l2442
	ljmp	i1l2446
	ljmp	i1l2450
	ljmp	i1l2454
	ljmp	i1l2458
psect	text21

	line	267
	
i1l720:	
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
