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
	global	_batADValue
	global	_prePwStep
	global	_workStep
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
; #config settings
	file	"D206_062B_SOP14.as"
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

	file	"D206_062B_SOP14.as"
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
	movlw	low((__pbssBANK0)+039h)
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
;!    BSS         61
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      11
;!    BANK0            80     21      79
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
;! (0) _main                                                 0     0      0    3562
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
;! (1) _checkOutA                                            4     4      0    1217
;!                                             17 BANK0      4     4      0
;!                         _ADC_Sample
;!                             ___bmul
;! ---------------------------------------------------------------------------------
;! (2) ___bmul                                               3     2      1     145
;!                                              3 COMMON     3     2      1
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
;!BANK0               50     15      4F       4       98.8%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      5A       7        0.0%
;!DATA                 0      0      5A       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 152 in file "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
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
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
	line	152
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
	line	152
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	154
	
l3528:	
;main.c: 154: Init_System();
	fcall	_Init_System
	line	155
;main.c: 155: AD_Init();
	fcall	_AD_Init
	line	156
	
l3530:	
;main.c: 156: firstTime = 200;
	movlw	low(0C8h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_firstTime)
	line	157
;main.c: 157: while (1)
	
l691:	
	line	159
# 159 "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
clrwdt ;# 
psect	maintext
	line	160
	
l3532:	
;main.c: 160: if(intCount10 > 10)
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_intCount10),w
	skipc
	goto	u4081
	goto	u4080
u4081:
	goto	l3538
u4080:
	line	162
	
l3534:	
;main.c: 161: {
;main.c: 162: intCount10 = 0;
	clrf	(_intCount10)
	line	163
	
l3536:	
;main.c: 163: checkOutA();
	fcall	_checkOutA
	line	165
	
l3538:	
;main.c: 164: }
;main.c: 165: if(!IntFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u4091
	goto	u4090
u4091:
	goto	l3542
u4090:
	goto	l691
	line	167
	
l3542:	
;main.c: 167: IntFlag = 0;
	clrf	(_IntFlag)
	line	168
	
l3544:	
;main.c: 168: chrgCtr();
	fcall	_chrgCtr
	line	169
	
l3546:	
;main.c: 169: checkBatAD();
	fcall	_checkBatAD
	line	170
	
l3548:	
;main.c: 170: if(chrgFlag == 0 && lowBatFlag == 0 && firstTime == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u4101
	goto	u4100
u4101:
	goto	l695
u4100:
	
l3550:	
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u4111
	goto	u4110
u4111:
	goto	l695
u4110:
	
l3552:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u4121
	goto	u4120
u4121:
	goto	l695
u4120:
	line	172
	
l3554:	
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
	
l3556:	
;main.c: 176: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && showBatTime == 0 && overWorkTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u4131
	goto	u4130
u4131:
	goto	l3574
u4130:
	
l3558:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u4141
	goto	u4140
u4141:
	goto	l3574
u4140:
	
l3560:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u4151
	goto	u4150
u4151:
	goto	l3574
u4150:
	
l3562:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u4161
	goto	u4160
u4161:
	goto	l3574
u4160:
	
l3564:	
	movf	((_showBatTime)),w
	btfss	status,2
	goto	u4171
	goto	u4170
u4171:
	goto	l3574
u4170:
	
l3566:	
;main.c: 177: {
;main.c: 178: shiweiNum = geweiNum = 0;
	movf	((_overWorkTime)),w
iorwf	((_overWorkTime+1)),w
	btfss	status,2
	goto	u4181
	goto	u4180
u4181:
	goto	l3574
u4180:
	line	179
	
l3568:	
;main.c: 179: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u4191
	goto	u4190
u4191:
	goto	l691
u4190:
	line	181
	
l3570:	
;main.c: 180: {
;main.c: 181: sleepTime = 0;
	clrf	(_sleepTime)
	line	182
	
l3572:	
;main.c: 182: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l691
	line	187
	
l3574:	
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
;;		line 607 in file "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
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
	line	607
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
	line	607
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	610
	
l2830:	
;main.c: 610: if(startTime > 0)
	movf	((_startTime)),w
	btfsc	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l2834
u2700:
	line	612
	
l2832:	
;main.c: 611: {
;main.c: 612: startTime--;
	decf	(_startTime),f
	line	614
	
l2834:	
;main.c: 613: }
;main.c: 614: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2711
	goto	u2710
u2711:
	goto	l2860
u2710:
	line	616
	
l2836:	
;main.c: 615: {
;main.c: 616: if(motorPwmFlag == 0)
	movf	((_motorPwmFlag)),w
	btfss	status,2
	goto	u2721
	goto	u2720
u2721:
	goto	l2840
u2720:
	line	618
	
l2838:	
;main.c: 617: {
;main.c: 618: pwmInit();
	fcall	_pwmInit
	line	621
	
l2840:	
;main.c: 620: }
;main.c: 621: maxDuty = 36 + (workStep*2);
	clrc
	rlf	(_workStep),w
	addlw	024h
	movwf	(_maxDuty)
	line	622
	
l2842:	
;main.c: 622: if(overCount >= 5)
	movlw	low(05h)
	subwf	(_overCount),w
	skipc
	goto	u2731
	goto	u2730
u2731:
	goto	l2852
u2730:
	line	624
	
l2844:	
;main.c: 623: {
;main.c: 624: if(++count5s > 600)
	incf	(_count5s),f
	skipnz
	incf	(_count5s+1),f
	movlw	02h
	subwf	((_count5s+1)),w
	movlw	059h
	skipnz
	subwf	((_count5s)),w
	skipc
	goto	u2741
	goto	u2740
u2741:
	goto	l2854
u2740:
	line	626
	
l2846:	
;main.c: 625: {
;main.c: 626: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	627
	
l2848:	
;main.c: 627: overWorkTime = 300;
	movlw	02Ch
	movwf	(_overWorkTime)
	movlw	01h
	movwf	((_overWorkTime))+1
	line	628
	
l2850:	
;main.c: 629: prejrStep = jrStep;
	movf	(_workStep),w
	movwf	(_preWorkStep)
	line	630
;main.c: 630: workStep = 0;
	clrf	(_workStep)
	line	631
;main.c: 631: jrStep = 0;
	clrf	(_jrStep)
	goto	l2854
	line	636
	
l2852:	
;main.c: 634: else
;main.c: 635: {
;main.c: 636: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	638
	
l2854:	
;main.c: 637: }
;main.c: 638: if(count1s == 0 && ++count900s >= 900)
	movf	((_count1s)),w
	btfss	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l829
u2750:
	
l2856:	
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	movlw	03h
	subwf	((_count900s+1)),w
	movlw	084h
	skipnz
	subwf	((_count900s)),w
	skipc
	goto	u2761
	goto	u2760
u2761:
	goto	l829
u2760:
	line	640
	
l2858:	
;main.c: 639: {
;main.c: 640: workStep = 0;
	clrf	(_workStep)
	line	641
;main.c: 641: jrStep = 0;
	clrf	(_jrStep)
	goto	l829
	line	646
	
l2860:	
;main.c: 644: else
;main.c: 645: {
;main.c: 646: pwmStop();
	fcall	_pwmStop
	line	647
	
l2862:	
;main.c: 647: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	650
	
l829:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 986 in file "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
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
	line	986
global __ptext2
__ptext2:	;psect for function _pwmInit
psect	text2
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
	line	986
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2]
	line	988
	
l2282:	
;main.c: 988: motorPwmFlag = 1;
	clrf	(_motorPwmFlag)
	incf	(_motorPwmFlag),f
	line	989
	
l2284:	
;main.c: 989: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	990
;main.c: 990: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	991
	
l2286:	
;main.c: 991: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	994
	
l2288:	
;main.c: 994: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	995
;main.c: 995: PWMD3L = 43;
	movlw	low(02Bh)
	movwf	(156)^080h	;volatile
	line	996
	
l2290:	
;main.c: 996: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	998
	
l2292:	
;main.c: 998: PWMCON0 = 0X68;
	movlw	low(068h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	999
;main.c: 999: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	1000
	
l901:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_ledCtr

;; *************** function _ledCtr *****************
;; Defined at:
;;		line 268 in file "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
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
	line	268
global __ptext3
__ptext3:	;psect for function _ledCtr
psect	text3
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
	line	268
	global	__size_of_ledCtr
	__size_of_ledCtr	equ	__end_of_ledCtr-_ledCtr
	
_ledCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _ledCtr: [wreg+status,2+status,0+pclath+cstack]
	line	270
	
l3476:	
;main.c: 270: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u3961
	goto	u3960
u3961:
	goto	l3486
u3960:
	line	272
	
l3478:	
;main.c: 271: {
;main.c: 272: firstTime--;
	decf	(_firstTime),f
	line	273
	
l3480:	
;main.c: 273: ledStep = 6;
	movlw	low(06h)
	movwf	(_ledStep)
	line	274
	
l3482:	
;main.c: 274: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u3971
	goto	u3970
u3971:
	goto	l744
u3970:
	line	276
	
l3484:	
;main.c: 275: {
;main.c: 276: prePwStep = pwStep;
	movf	(_pwStep),w
	movwf	(_prePwStep)
	goto	l744
	line	279
	
l3486:	
;main.c: 279: else if(overWorkTime > 0)
	movf	((_overWorkTime)),w
iorwf	((_overWorkTime+1)),w
	btfsc	status,2
	goto	u3981
	goto	u3980
u3981:
	goto	l3496
u3980:
	line	281
	
l3488:	
;main.c: 280: {
;main.c: 281: overWorkTime--;
	movlw	01h
	subwf	(_overWorkTime),f
	movlw	0
	skipc
	decf	(_overWorkTime+1),f
	subwf	(_overWorkTime+1),f
	line	282
	
l3490:	
;main.c: 282: if(overWorkTime % 60 < 30)
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
	goto	u3991
	goto	u3990
u3991:
	goto	l3494
u3990:
	line	284
	
l3492:	
;main.c: 283: {
;main.c: 284: ledStep = preWorkStep;
	movf	(_preWorkStep),w
	movwf	(_ledStep)
	line	285
;main.c: 285: }
	goto	l744
	line	288
	
l3494:	
;main.c: 286: else
;main.c: 287: {
;main.c: 288: ledStep = 0;
	clrf	(_ledStep)
	goto	l744
	line	291
	
l3496:	
;main.c: 291: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u4001
	goto	u4000
u4001:
	goto	l3514
u4000:
	line	293
	
l3498:	
;main.c: 292: {
;main.c: 293: showBatTime--;
	decf	(_showBatTime),f
	line	294
	
l3500:	
;main.c: 294: if(prePwStep >= 14)
	movlw	low(0Eh)
	subwf	(_prePwStep),w
	skipc
	goto	u4011
	goto	u4010
u4011:
	goto	l3504
u4010:
	line	296
	
l3502:	
;main.c: 295: {
;main.c: 296: ledStep = prePwStep/14;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	movwf	(_ledStep)
	line	297
;main.c: 297: }
	goto	l744
	line	298
	
l3504:	
;main.c: 298: else if(prePwStep > 5)
	movlw	low(06h)
	subwf	(_prePwStep),w
	skipc
	goto	u4021
	goto	u4020
u4021:
	goto	l3508
u4020:
	line	300
	
l3506:	
;main.c: 299: {
;main.c: 300: ledStep = 1;
	clrf	(_ledStep)
	incf	(_ledStep),f
	line	301
;main.c: 301: }
	goto	l744
	line	304
	
l3508:	
;main.c: 302: else
;main.c: 303: {
;main.c: 304: if(count1s < 50)
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u4031
	goto	u4030
u4031:
	goto	l3494
u4030:
	goto	l3506
	line	312
	
l732:	
	line	313
;main.c: 311: }
;main.c: 312: }
;main.c: 313: }
	goto	l744
	line	314
	
l3514:	
;main.c: 314: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u4041
	goto	u4040
u4041:
	goto	l3518
u4040:
	line	316
	
l3516:	
;main.c: 315: {
;main.c: 316: ledStep = workStep;
	movf	(_workStep),w
	movwf	(_ledStep)
	line	317
;main.c: 317: }
	goto	l744
	line	318
	
l3518:	
;main.c: 318: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u4051
	goto	u4050
u4051:
	goto	l3494
u4050:
	line	320
	
l3520:	
;main.c: 319: {
;main.c: 320: if(count1s % 50 == 0)
	movlw	low(032h)
	movwf	(___lbmod@divisor)
	movf	(_count1s),w
	fcall	___lbmod
	xorlw	0
	skipz
	goto	u4061
	goto	u4060
u4061:
	goto	l744
u4060:
	line	322
	
l3522:	
;main.c: 321: {
;main.c: 322: if(++ledStep > 6)
	movlw	low(07h)
	incf	(_ledStep),f
	subwf	((_ledStep)),w
	skipc
	goto	u4071
	goto	u4070
u4071:
	goto	l732
u4070:
	line	324
	
l3524:	
;main.c: 323: {
;main.c: 324: ledStep = lockLedStep;
	movf	(_lockLedStep),w
	movwf	(_ledStep)
	line	332
	
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
	
l3142:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u3251
	goto	u3250
u3251:
	goto	l3158
u3250:
	line	14
	
l3144:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l3148
	line	16
	
l3146:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l3148:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l3146
u3260:
	line	20
	
l3150:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3275
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3275:
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l3154
u3270:
	line	21
	
l3152:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l3154:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l3156:	
	decfsz	(___lwmod@counter),f
	goto	u3281
	goto	u3280
u3281:
	goto	l3150
u3280:
	line	25
	
l3158:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l1283:	
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
	
l3124:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l3126:	
	clrf	(___lbmod@rem)
	line	12
	
l3128:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u3225:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u3225
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l3130:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l3132:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u3231
	goto	u3230
u3231:
	goto	l3136
u3230:
	line	15
	
l3134:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l3136:	
	decfsz	(___lbmod@counter),f
	goto	u3241
	goto	u3240
u3241:
	goto	l3128
u3240:
	line	17
	
l3138:	
	movf	(___lbmod@rem),w
	line	18
	
l1205:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 569 in file "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
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
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
	line	569
global __ptext6
__ptext6:	;psect for function _keyCtr
psect	text6
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
	line	569
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	571
	
l2800:	
;main.c: 571: char kclick = keyRead(0x04 & (~PORTB));
	comf	(6),w	;volatile
	andlw	04h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	572
	
l2802:	
;main.c: 572: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l2818
u2640:
	line	574
	
l2804:	
;main.c: 573: {
;main.c: 574: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l2810
u2650:
	line	576
	
l2806:	
;main.c: 575: {
;main.c: 576: if(++workStep > 6)
	movlw	low(07h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u2661
	goto	u2660
u2661:
	goto	l818
u2660:
	line	578
	
l2808:	
;main.c: 577: {
;main.c: 578: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l818
	line	581
	
l2810:	
;main.c: 581: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l2814
u2670:
	line	583
	
l2812:	
;main.c: 582: {
;main.c: 583: showBatTime = 0;
	clrf	(_showBatTime)
	line	584
;main.c: 584: }
	goto	l818
	line	587
	
l2814:	
;main.c: 585: else
;main.c: 586: {
;main.c: 587: showBatTime = 200;
	movlw	low(0C8h)
	movwf	(_showBatTime)
	line	588
	
l2816:	
;main.c: 588: count1s = 0;
	clrf	(_count1s)
	goto	l818
	line	591
	
l2818:	
;main.c: 591: else if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l818
u2680:
	line	593
	
l2820:	
;main.c: 592: {
;main.c: 593: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l816
u2690:
	line	595
	
l2822:	
;main.c: 594: {
;main.c: 595: workStep = 0;
	clrf	(_workStep)
	line	596
;main.c: 596: }
	goto	l818
	line	597
	
l816:	
	line	599
;main.c: 597: else
;main.c: 598: {
;main.c: 599: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	600
	
l2824:	
;main.c: 600: startTime = 30;
	movlw	low(01Eh)
	movwf	(_startTime)
	line	601
	
l2826:	
;main.c: 601: showBatTime = 0;
	clrf	(_showBatTime)
	line	602
	
l2828:	
;main.c: 602: overWorkTime = 0;
	clrf	(_overWorkTime)
	clrf	(_overWorkTime+1)
	line	605
	
l818:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 501 in file "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
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
	line	501
global __ptext7
__ptext7:	;psect for function _keyRead
psect	text7
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
	line	501
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	503
	
l2242:	
;main.c: 503: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1561
	goto	u1560
u1561:
	goto	l2258
u1560:
	line	505
	
l2244:	
;main.c: 504: {
;main.c: 505: keyCount++;
	incf	(_keyCount),f
	line	506
	
l2246:	
;main.c: 506: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1571
	goto	u1570
u1571:
	goto	l2262
u1570:
	line	508
	
l2248:	
;main.c: 507: {
;main.c: 508: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	line	509
	
l2250:	
;main.c: 509: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1581
	goto	u1580
u1581:
	goto	l2262
u1580:
	line	511
	
l2252:	
;main.c: 510: {
;main.c: 511: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	512
	
l2254:	
;main.c: 512: return 2;
	movlw	low(02h)
	goto	l791
	line	518
	
l2258:	
;main.c: 516: else
;main.c: 517: {
;main.c: 518: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1591
	goto	u1590
u1591:
	goto	l2268
u1590:
	line	520
	
l2260:	
;main.c: 519: {
;main.c: 520: keyCount = 0;
	clrf	(_keyCount)
	line	521
;main.c: 521: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	522
	
l2262:	
;main.c: 522: return 0;
	movlw	low(0)
	goto	l791
	line	524
	
l2268:	
;main.c: 524: else if(keyCount >= 6)
	movlw	low(06h)
	subwf	(_keyCount),w
	skipc
	goto	u1601
	goto	u1600
u1601:
	goto	l2276
u1600:
	line	526
	
l2270:	
;main.c: 525: {
;main.c: 526: keyCount = 0;
	clrf	(_keyCount)
	line	527
	
l2272:	
;main.c: 527: return 1;
	movlw	low(01h)
	goto	l791
	line	529
	
l2276:	
;main.c: 528: }
;main.c: 529: keyCount = 0;
	clrf	(_keyCount)
	goto	l2262
	line	532
	
l791:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 336 in file "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
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
	line	336
global __ptext8
__ptext8:	;psect for function _chrgCtr
psect	text8
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
	line	336
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	338
	
l3264:	
;main.c: 338: if(PORTA & 0x02)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(134)^080h,(1)&7	;volatile
	goto	u3521
	goto	u3520
u3521:
	goto	l3398
u3520:
	line	340
	
l3266:	
;main.c: 339: {
;main.c: 340: if(chrgFlag == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l3274
u3530:
	line	342
	
l3268:	
;main.c: 341: {
;main.c: 342: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	343
	
l3270:	
;main.c: 343: chrgMaxDuty = 0;
	clrf	(_chrgMaxDuty)
	line	344
	
l3272:	
;main.c: 344: chrgPwmStop();
	fcall	_chrgPwmStop
	line	346
	
l3274:	
;main.c: 345: }
;main.c: 346: jrStep = 0;
	clrf	(_jrStep)
	line	347
	
l3276:	
;main.c: 347: workStep = 0;
	clrf	(_workStep)
	line	348
	
l3278:	
;main.c: 348: pwmStop();
	fcall	_pwmStop
	line	349
;main.c: 349: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	350
	
l3280:	
;main.c: 350: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u3541
	goto	u3540
u3541:
	goto	l3288
u3540:
	line	352
	
l3282:	
;main.c: 351: {
;main.c: 352: if(++count50s > 3000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	0Bh
	subwf	((_count50s+1)),w
	movlw	0B9h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u3551
	goto	u3550
u3551:
	goto	l3290
u3550:
	line	354
	
l3284:	
;main.c: 353: {
;main.c: 354: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	355
	
l3286:	
;main.c: 355: prePwStep++;
	incf	(_prePwStep),f
	goto	l3290
	line	360
	
l3288:	
;main.c: 358: else
;main.c: 359: {
;main.c: 360: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	362
	
l3290:	
;main.c: 361: }
;main.c: 362: if(protectFlag)
	movf	((_protectFlag)),w
	btfsc	status,2
	goto	u3561
	goto	u3560
u3561:
	goto	l3312
u3560:
	line	364
	
l3292:	
;main.c: 363: {
;main.c: 364: chrgPwmStop();
	fcall	_chrgPwmStop
	line	365
	
l3294:	
;main.c: 365: if(prePwStep < 99 && protectFlag == 1)
	movlw	low(063h)
	subwf	(_prePwStep),w
	skipnc
	goto	u3571
	goto	u3570
u3571:
	goto	l3308
u3570:
	
l3296:	
		decf	((_protectFlag)),w
	btfss	status,2
	goto	u3581
	goto	u3580
u3581:
	goto	l3308
u3580:
	line	367
	
l3298:	
;main.c: 366: {
;main.c: 367: if(++reChrgCount > 250)
	movlw	low(0FBh)
	incf	(_reChrgCount),f
	subwf	((_reChrgCount)),w
	skipc
	goto	u3591
	goto	u3590
u3591:
	goto	l758
u3590:
	line	369
	
l3300:	
;main.c: 368: {
;main.c: 369: reChrgCount = 0;
	clrf	(_reChrgCount)
	line	370
;main.c: 370: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	371
;main.c: 371: protectFlag = 0;
	clrf	(_protectFlag)
	line	372
	
l3302:	
;main.c: 372: if(prePwStep > 14)
	movlw	low(0Fh)
	subwf	(_prePwStep),w
	skipc
	goto	u3601
	goto	u3600
u3601:
	goto	l3306
u3600:
	line	374
	
l3304:	
;main.c: 373: {
;main.c: 374: lockLedStep = (prePwStep/14) - 1;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	0FFh
	movwf	(_lockLedStep)
	line	375
;main.c: 375: }
	goto	l758
	line	378
	
l3306:	
;main.c: 376: else
;main.c: 377: {
;main.c: 378: lockLedStep = 0;
	clrf	(_lockLedStep)
	goto	l758
	line	384
	
l3308:	
;main.c: 382: else
;main.c: 383: {
;main.c: 384: reChrgCount = 0;
	clrf	(_reChrgCount)
	goto	l758
	line	388
	
l3312:	
;main.c: 387: }
;main.c: 388: if(batADValue < 1118)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Eh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3611
	goto	u3610
u3611:
	goto	l3318
u3610:
	line	390
	
l3314:	
;main.c: 389: {
;main.c: 390: chrgMode = 0;
	clrf	(_chrgMode)
	line	391
	
l3316:	
;main.c: 391: chrgMaxAD = 15;
	movlw	low(0Fh)
	movwf	(_chrgMaxAD)
	line	392
;main.c: 392: }
	goto	l3336
	line	393
	
l3318:	
;main.c: 393: else if(batADValue < 1530)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	0FAh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3621
	goto	u3620
u3621:
	goto	l3326
u3620:
	line	395
	
l3320:	
;main.c: 394: {
;main.c: 395: chrgMode = 1;
	clrf	(_chrgMode)
	incf	(_chrgMode),f
	line	396
	
l3322:	
;main.c: 396: chrgMaxAD = 60;
	movlw	low(03Ch)
	movwf	(_chrgMaxAD)
	line	397
	
l3324:	
;main.c: 397: lockCount = 0;
	clrf	(_lockCount)
	line	398
;main.c: 398: }
	goto	l3336
	line	399
	
l3326:	
;main.c: 399: else if(count1s == 0)
	movf	((_count1s)),w
	btfss	status,2
	goto	u3631
	goto	u3630
u3631:
	goto	l3336
u3630:
	line	401
	
l3328:	
;main.c: 400: {
;main.c: 401: if(++lockCount > 200)
	movlw	low(0C9h)
	incf	(_lockCount),f
	subwf	((_lockCount)),w
	skipc
	goto	u3641
	goto	u3640
u3641:
	goto	l3334
u3640:
	line	403
	
l3330:	
;main.c: 402: {
;main.c: 403: lockCount = 0;
	clrf	(_lockCount)
	line	404
	
l3332:	
;main.c: 404: chrgMode = 2;
	movlw	low(02h)
	movwf	(_chrgMode)
	line	407
	
l3334:	
;main.c: 405: }
;main.c: 407: chrgMaxAD = 60;
	movlw	low(03Ch)
	movwf	(_chrgMaxAD)
	line	409
	
l3336:	
;main.c: 408: }
;main.c: 409: if(chrgMode == 2 && outADValue < 8)
		movlw	2
	xorwf	((_chrgMode)),w
	btfss	status,2
	goto	u3651
	goto	u3650
u3651:
	goto	l3346
u3650:
	
l3338:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	08h
	skipnz
	subwf	(_outADValue),w
	skipnc
	goto	u3661
	goto	u3660
u3661:
	goto	l3346
u3660:
	line	411
	
l3340:	
;main.c: 410: {
;main.c: 411: if(++fullCount >= 200)
	incf	(_fullCount),f
	skipnz
	incf	(_fullCount+1),f
	movlw	0
	subwf	((_fullCount+1)),w
	movlw	0C8h
	skipnz
	subwf	((_fullCount)),w
	skipc
	goto	u3671
	goto	u3670
u3671:
	goto	l3348
u3670:
	line	413
	
l3342:	
;main.c: 412: {
;main.c: 413: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	414
	
l3344:	
;main.c: 414: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l3348
	line	419
	
l3346:	
;main.c: 417: else
;main.c: 418: {
;main.c: 419: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	421
	
l3348:	
;main.c: 420: }
;main.c: 421: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u3681
	goto	u3680
u3681:
	goto	l3354
u3680:
	line	423
	
l3350:	
;main.c: 422: {
;main.c: 423: lockLedStep = 6;
	movlw	low(06h)
	movwf	(_lockLedStep)
	line	424
	
l3352:	
;main.c: 424: chrgPwmStop();
	fcall	_chrgPwmStop
	line	425
;main.c: 425: }
	goto	l758
	line	428
	
l3354:	
;main.c: 426: else
;main.c: 427: {
;main.c: 428: if(prePwStep < 15)
	movlw	low(0Fh)
	subwf	(_prePwStep),w
	skipnc
	goto	u3691
	goto	u3690
u3691:
	goto	l3358
u3690:
	line	430
	
l3356:	
;main.c: 429: {
;main.c: 430: lockLedStep = 0;
	clrf	(_lockLedStep)
	line	431
;main.c: 431: }
	goto	l3360
	line	434
	
l3358:	
;main.c: 432: else
;main.c: 433: {
;main.c: 434: lockLedStep = (prePwStep/14) - 1;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	0FFh
	movwf	(_lockLedStep)
	line	436
	
l3360:	
;main.c: 435: }
;main.c: 436: if(batADValue > 1550 || outADValue > (chrgMaxAD + 2))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	0Fh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3701
	goto	u3700
u3701:
	goto	l3364
u3700:
	
l3362:	
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
	goto	u3715
	movf	(_outADValue),w
	subwf	0+(??_chrgCtr+0)+0,w
u3715:
	skipnc
	goto	u3711
	goto	u3710
u3711:
	goto	l3376
u3710:
	line	438
	
l3364:	
;main.c: 437: {
;main.c: 438: if(++subTime > chrgWaitTime)
	incf	(_subTime),f
	movf	((_subTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u3721
	goto	u3720
u3721:
	goto	l3374
u3720:
	line	440
	
l3366:	
;main.c: 439: {
;main.c: 440: if(chrgMaxDuty > 1)
	movlw	low(02h)
	subwf	(_chrgMaxDuty),w
	skipc
	goto	u3731
	goto	u3730
u3731:
	goto	l3370
u3730:
	line	442
	
l3368:	
;main.c: 441: {
;main.c: 442: chrgMaxDuty--;
	decf	(_chrgMaxDuty),f
	line	444
	
l3370:	
;main.c: 443: }
;main.c: 444: subTime = 0;
	clrf	(_subTime)
	line	445
	
l3372:	
;main.c: 445: chrgWaitTime = 50;
	movlw	low(032h)
	movwf	(_chrgWaitTime)
	line	447
	
l3374:	
;main.c: 446: }
;main.c: 447: addTime = 0;
	clrf	(_addTime)
	line	448
;main.c: 448: }
	goto	l3390
	line	449
	
l3376:	
;main.c: 449: else if(batADValue < 1550 && outADValue < (chrgMaxAD - 4))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	0Eh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3741
	goto	u3740
u3741:
	goto	l3390
u3740:
	
l3378:	
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
	goto	u3755
	movf	0+(??_chrgCtr+0)+0,w
	subwf	(_outADValue),w
u3755:
	skipnc
	goto	u3751
	goto	u3750
u3751:
	goto	l3390
u3750:
	line	451
	
l3380:	
;main.c: 450: {
;main.c: 451: if(++addTime > chrgWaitTime)
	incf	(_addTime),f
	movf	((_addTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u3761
	goto	u3760
u3761:
	goto	l3388
u3760:
	line	453
	
l3382:	
;main.c: 452: {
;main.c: 453: addTime = 0;
	clrf	(_addTime)
	line	454
	
l3384:	
;main.c: 454: if(chrgMaxDuty < 75)
	movlw	low(04Bh)
	subwf	(_chrgMaxDuty),w
	skipnc
	goto	u3771
	goto	u3770
u3771:
	goto	l3388
u3770:
	line	456
	
l3386:	
;main.c: 455: {
;main.c: 456: chrgMaxDuty++;
	incf	(_chrgMaxDuty),f
	line	459
	
l3388:	
;main.c: 457: }
;main.c: 458: }
;main.c: 459: subTime = 0;
	clrf	(_subTime)
	line	463
	
l3390:	
;main.c: 460: }
;main.c: 463: if(chrgPwmFlag == 0)
	movf	((_chrgPwmFlag)),w
	btfss	status,2
	goto	u3781
	goto	u3780
u3781:
	goto	l3394
u3780:
	line	465
	
l3392:	
;main.c: 464: {
;main.c: 465: chrgPwmInit();
	fcall	_chrgPwmInit
	line	467
	
l3394:	
;main.c: 466: }
;main.c: 467: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	468
	
l3396:	
;main.c: 468: PWMD2L = chrgMaxDuty;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_chrgMaxDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	goto	l758
	line	474
	
l3398:	
;main.c: 474: chrgFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgFlag)
	line	475
;main.c: 475: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	476
;main.c: 476: protectFlag = 0;
	clrf	(_protectFlag)
	line	477
;main.c: 477: chrgMode = 0;
	clrf	(_chrgMode)
	line	478
;main.c: 478: chrgMaxAD = 0;
	clrf	(_chrgMaxAD)
	line	479
;main.c: 479: chrgMaxDuty = 0;
	clrf	(_chrgMaxDuty)
	line	480
;main.c: 480: lockCount = 0;
	clrf	(_lockCount)
	line	481
;main.c: 481: lockLedStep = 0;
	clrf	(_lockLedStep)
	line	482
	
l3400:	
;main.c: 482: chrgWaitTime = 20;
	movlw	low(014h)
	movwf	(_chrgWaitTime)
	line	483
	
l3402:	
;main.c: 483: chrgPwmStop();
	fcall	_chrgPwmStop
	line	484
	
l3404:	
;main.c: 484: if(prePwStep > 0 && prePwStep > pwStep)
	movf	((_prePwStep)),w
	btfsc	status,2
	goto	u3791
	goto	u3790
u3791:
	goto	l3414
u3790:
	
l3406:	
	movf	(_prePwStep),w
	subwf	(_pwStep),w
	skipnc
	goto	u3801
	goto	u3800
u3801:
	goto	l3414
u3800:
	line	486
	
l3408:	
;main.c: 485: {
;main.c: 486: if(++count50s > 3000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	0Bh
	subwf	((_count50s+1)),w
	movlw	0B9h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u3811
	goto	u3810
u3811:
	goto	l758
u3810:
	line	488
	
l3410:	
;main.c: 487: {
;main.c: 488: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	489
	
l3412:	
;main.c: 489: prePwStep--;
	decf	(_prePwStep),f
	goto	l758
	line	494
	
l3414:	
;main.c: 492: else
;main.c: 493: {
;main.c: 494: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	497
	
l758:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 1002 in file "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
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
	line	1002
global __ptext9
__ptext9:	;psect for function _pwmStop
psect	text9
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
	line	1002
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: [wreg+status,2+status,0]
	line	1004
	
l2222:	
;main.c: 1004: if(motorPwmFlag)
	movf	((_motorPwmFlag)),w
	btfsc	status,2
	goto	u1551
	goto	u1550
u1551:
	goto	l905
u1550:
	line	1006
	
l2224:	
;main.c: 1005: {
;main.c: 1006: motorPwmFlag = 0;
	clrf	(_motorPwmFlag)
	line	1007
	
l2226:	
;main.c: 1007: PWMCON0 &= 0XF7;
	bcf	(21)+(3/8),(3)&7	;volatile
	line	1008
	
l2228:	
;main.c: 1008: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	1010
	
l905:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_chrgPwmStop

;; *************** function _chrgPwmStop *****************
;; Defined at:
;;		line 976 in file "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
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
	line	976
global __ptext10
__ptext10:	;psect for function _chrgPwmStop
psect	text10
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
	line	976
	global	__size_of_chrgPwmStop
	__size_of_chrgPwmStop	equ	__end_of_chrgPwmStop-_chrgPwmStop
	
_chrgPwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmStop: [wreg+status,2+status,0]
	line	978
	
l2214:	
;main.c: 978: if(chrgPwmFlag)
	movf	((_chrgPwmFlag)),w
	btfsc	status,2
	goto	u1541
	goto	u1540
u1541:
	goto	l898
u1540:
	line	980
	
l2216:	
;main.c: 979: {
;main.c: 980: chrgPwmFlag = 0;
	clrf	(_chrgPwmFlag)
	line	981
	
l2218:	
;main.c: 981: PWMCON0 &= 0xFB;
	bcf	(21)+(2/8),(2)&7	;volatile
	line	982
	
l2220:	
;main.c: 982: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	984
	
l898:	
	return
	opt stack 0
GLOBAL	__end_of_chrgPwmStop
	__end_of_chrgPwmStop:
	signat	_chrgPwmStop,89
	global	_chrgPwmInit

;; *************** function _chrgPwmInit *****************
;; Defined at:
;;		line 958 in file "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
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
	line	958
global __ptext11
__ptext11:	;psect for function _chrgPwmInit
psect	text11
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
	line	958
	global	__size_of_chrgPwmInit
	__size_of_chrgPwmInit	equ	__end_of_chrgPwmInit-_chrgPwmInit
	
_chrgPwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmInit: [wreg+status,2]
	line	960
	
l2230:	
;main.c: 960: chrgPwmFlag = 1;
	clrf	(_chrgPwmFlag)
	incf	(_chrgPwmFlag),f
	line	961
	
l2232:	
;main.c: 961: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	963
;main.c: 963: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	964
	
l2234:	
;main.c: 964: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	968
	
l2236:	
;main.c: 968: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	969
;main.c: 969: PWMD2L = 10;
	movlw	low(0Ah)
	movwf	(155)^080h	;volatile
	line	970
	
l2238:	
;main.c: 970: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	972
	
l2240:	
;main.c: 972: PWMCON0 = 0X04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	973
;main.c: 973: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	974
	
l894:	
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
	
l2380:	
	clrf	(___lbdiv@quotient)
	line	10
	
l2382:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1781
	goto	u1780
u1781:
	goto	l2400
u1780:
	line	11
	
l2384:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2388
	
l1194:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l2386:	
	incf	(___lbdiv@counter),f
	line	12
	
l2388:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1791
	goto	u1790
u1791:
	goto	l1194
u1790:
	line	16
	
l1196:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l2390:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1801
	goto	u1800
u1801:
	goto	l2396
u1800:
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
	goto	u1811
	goto	u1810
u1811:
	goto	l1196
u1810:
	line	25
	
l2400:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1199:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_checkOutA

;; *************** function _checkOutA *****************
;; Defined at:
;;		line 652 in file "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
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
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
	line	652
global __ptext13
__ptext13:	;psect for function _checkOutA
psect	text13
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
	line	652
	global	__size_of_checkOutA
	__size_of_checkOutA	equ	__end_of_checkOutA-_checkOutA
	
_checkOutA:	
;incstack = 0
	opt	stack 4
; Regs used in _checkOutA: [wreg+status,2+status,0+pclath+cstack]
	line	654
	
l3162:	
;main.c: 654: test_adc = ADC_Sample(0, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	655
	
l3164:	
;main.c: 655: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l3260
u3290:
	line	657
	
l3166:	
;main.c: 656: {
;main.c: 657: if(chrgFlag && adresult > 210)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3301
	goto	u3300
u3301:
	goto	l3176
u3300:
	
l3168:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	0D3h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u3311
	goto	u3310
u3311:
	goto	l3176
u3310:
	line	659
	
l3170:	
;main.c: 658: {
;main.c: 659: if(++overChrgTime > 10)
	movlw	low(0Bh)
	incf	(_overChrgTime),f
	subwf	((_overChrgTime)),w
	skipc
	goto	u3321
	goto	u3320
u3321:
	goto	l3178
u3320:
	line	661
	
l3172:	
;main.c: 660: {
;main.c: 661: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	662
	
l3174:	
;main.c: 662: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l3178
	line	668
	
l3176:	
;main.c: 666: else
;main.c: 667: {
;main.c: 668: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	670
	
l3178:	
;main.c: 669: }
;main.c: 670: outADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_outADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_outADValue)
	line	672
	
l3180:	
;main.c: 672: if(workStep && (outADValue > 600))
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3331
	goto	u3330
u3331:
	goto	l3188
u3330:
	
l3182:	
	movlw	02h
	subwf	(_outADValue+1),w
	movlw	059h
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3341
	goto	u3340
u3341:
	goto	l3188
u3340:
	line	674
	
l3184:	
;main.c: 673: {
;main.c: 674: if(++workOverOutTime > 50)
	movlw	low(033h)
	incf	(_workOverOutTime),f
	subwf	((_workOverOutTime)),w
	skipc
	goto	u3351
	goto	u3350
u3351:
	goto	l3190
u3350:
	line	676
	
l3186:	
;main.c: 675: {
;main.c: 676: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	677
;main.c: 677: workStep = 0;
	clrf	(_workStep)
	goto	l3190
	line	682
	
l3188:	
;main.c: 680: else
;main.c: 681: {
;main.c: 682: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	684
	
l3190:	
;main.c: 683: }
;main.c: 684: unsigned char maxtempV = 130 + (workStep * 10);
	movlw	low(0Ah)
	movwf	(___bmul@multiplicand)
	movf	(_workStep),w
	fcall	___bmul
	addlw	082h
	movwf	(checkOutA@maxtempV)
	line	685
	
l3192:	
;main.c: 685: if(jrStep > 0)
	movf	((_jrStep)),w
	btfsc	status,2
	goto	u3361
	goto	u3360
u3361:
	goto	l3200
u3360:
	line	687
	
l3194:	
;main.c: 686: {
;main.c: 687: maxtempV = maxtempV - 40;
	movlw	low(0D8h)
	addwf	(checkOutA@maxtempV),f
	line	688
	
l3196:	
;main.c: 688: if(workStep < 5)
	movlw	low(05h)
	subwf	(_workStep),w
	skipnc
	goto	u3371
	goto	u3370
u3371:
	goto	l3200
u3370:
	line	690
	
l3198:	
;main.c: 689: {
;main.c: 690: maxtempV = maxtempV - 30;
	movlw	low(0E2h)
	addwf	(checkOutA@maxtempV),f
	line	693
	
l3200:	
;main.c: 691: }
;main.c: 692: }
;main.c: 693: if(outADValue > maxtempV)
	movf	(checkOutA@maxtempV),w
	movwf	(??_checkOutA+0)+0
	clrf	(??_checkOutA+0)+0+1
	movf	(_outADValue+1),w
	subwf	1+(??_checkOutA+0)+0,w
	skipz
	goto	u3385
	movf	(_outADValue),w
	subwf	0+(??_checkOutA+0)+0,w
u3385:
	skipnc
	goto	u3381
	goto	u3380
u3381:
	goto	l3206
u3380:
	line	695
	
l3202:	
;main.c: 694: {
;main.c: 695: if(++overCount > 5)
	movlw	low(06h)
	incf	(_overCount),f
	subwf	((_overCount)),w
	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l3256
u3390:
	line	697
	
l3204:	
;main.c: 696: {
;main.c: 697: overCount = 5;
	movlw	low(05h)
	movwf	(_overCount)
	goto	l3256
	line	703
	
l3206:	
;main.c: 700: else
;main.c: 701: {
;main.c: 703: if(overCount > 0)
	movf	((_overCount)),w
	btfsc	status,2
	goto	u3401
	goto	u3400
u3401:
	goto	l3210
u3400:
	line	705
	
l3208:	
;main.c: 704: {
;main.c: 705: overCount--;
	decf	(_overCount),f
	line	707
	
l3210:	
;main.c: 706: }
;main.c: 707: unsigned char maxAout = 40;
	movlw	low(028h)
	movwf	(checkOutA@maxAout)
	line	708
	
l3212:	
;main.c: 708: if(pwStep < 40)
	movlw	low(028h)
	subwf	(_pwStep),w
	skipnc
	goto	u3411
	goto	u3410
u3411:
	goto	l3216
u3410:
	line	710
	
l3214:	
;main.c: 709: {
;main.c: 710: maxAout = 37;
	movlw	low(025h)
	movwf	(checkOutA@maxAout)
	line	712
	
l3216:	
;main.c: 711: }
;main.c: 712: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u3421
	goto	u3420
u3421:
	goto	l3220
u3420:
	line	714
	
l3218:	
;main.c: 713: {
;main.c: 714: maxAout = maxAout + 1;
	incf	(checkOutA@maxAout),f
	line	715
;main.c: 715: }
	goto	l847
	line	716
	
l3220:	
;main.c: 716: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3431
	goto	u3430
u3431:
	goto	l3224
u3430:
	line	718
	
l3222:	
;main.c: 717: {
;main.c: 718: maxAout = maxAout + 3;
	movlw	low(03h)
	addwf	(checkOutA@maxAout),f
	line	719
;main.c: 719: }
	goto	l847
	line	720
	
l3224:	
;main.c: 720: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3441
	goto	u3440
u3441:
	goto	l3228
u3440:
	line	722
	
l3226:	
;main.c: 721: {
;main.c: 722: maxAout = maxAout + 5;
	movlw	low(05h)
	addwf	(checkOutA@maxAout),f
	line	723
;main.c: 723: }
	goto	l847
	line	724
	
l3228:	
;main.c: 724: else if(workStep == 4)
		movlw	4
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3451
	goto	u3450
u3451:
	goto	l3232
u3450:
	line	726
	
l3230:	
;main.c: 725: {
;main.c: 726: maxAout = maxAout + 7;
	movlw	low(07h)
	addwf	(checkOutA@maxAout),f
	line	727
;main.c: 727: }
	goto	l847
	line	728
	
l3232:	
;main.c: 728: else if(workStep == 5)
		movlw	5
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l3236
u3460:
	line	730
	
l3234:	
;main.c: 729: {
;main.c: 730: maxAout = maxAout + 9;
	movlw	low(09h)
	addwf	(checkOutA@maxAout),f
	line	731
;main.c: 731: }
	goto	l847
	line	732
	
l3236:	
;main.c: 732: else if(workStep == 6)
		movlw	6
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l851
u3470:
	line	734
	
l3238:	
;main.c: 733: {
;main.c: 734: maxAout = maxAout + 12;
	movlw	low(0Ch)
	addwf	(checkOutA@maxAout),f
	goto	l847
	line	736
	
l851:	
	
l847:	
;main.c: 735: }
;main.c: 736: if(overCount > 0)
	movf	((_overCount)),w
	btfsc	status,2
	goto	u3481
	goto	u3480
u3481:
	goto	l3242
u3480:
	line	738
	
l3240:	
;main.c: 737: {
;main.c: 738: overCount--;
	decf	(_overCount),f
	line	740
	
l3242:	
;main.c: 739: }
;main.c: 740: if(outADValue > maxAout)
	movf	(checkOutA@maxAout),w
	movwf	(??_checkOutA+0)+0
	clrf	(??_checkOutA+0)+0+1
	movf	(_outADValue+1),w
	subwf	1+(??_checkOutA+0)+0,w
	skipz
	goto	u3495
	movf	(_outADValue),w
	subwf	0+(??_checkOutA+0)+0,w
u3495:
	skipnc
	goto	u3491
	goto	u3490
u3491:
	goto	l3250
u3490:
	line	743
	
l3244:	
;main.c: 741: {
;main.c: 743: if(startTime == 0)
	movf	((_startTime)),w
	btfss	status,2
	goto	u3501
	goto	u3500
u3501:
	goto	l3248
u3500:
	line	745
	
l3246:	
;main.c: 744: {
;main.c: 745: tempDuty = 81 + (workStep*3);
	movf	(_workStep),w
	addwf	(_workStep),w
	addwf	(_workStep),w
	addlw	051h
	movwf	(_tempDuty)
	line	746
;main.c: 746: }
	goto	l3256
	line	749
	
l3248:	
;main.c: 747: else
;main.c: 748: {
;main.c: 749: tempDuty = maxDuty;
	movf	(_maxDuty),w
	movwf	(_tempDuty)
	goto	l3256
	line	757
	
l3250:	
;main.c: 757: if(tempDuty > maxDuty)
	movf	(_tempDuty),w
	subwf	(_maxDuty),w
	skipnc
	goto	u3511
	goto	u3510
u3511:
	goto	l3248
u3510:
	line	759
	
l3252:	
;main.c: 758: {
;main.c: 759: tempDuty--;
	decf	(_tempDuty),f
	line	769
;main.c: 760: }
	
l3256:	
;main.c: 764: }
;main.c: 766: }
;main.c: 768: }
;main.c: 769: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	770
	
l3258:	
;main.c: 770: PWMD3L = tempDuty;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_tempDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	771
;main.c: 771: }
	goto	l865
	line	774
	
l3260:	
;main.c: 772: else
;main.c: 773: {
;main.c: 774: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	775
;main.c: 775: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	776
	
l3262:	
;main.c: 776: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_checkOutA+0)+0),f
	u4207:
decfsz	(??_checkOutA+0)+0,f
	goto	u4207
	nop2
opt asmopt_pop

	line	778
	
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
	
l2366:	
	clrf	(___bmul@product)
	line	43
	
l2368:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1761
	goto	u1760
u1761:
	goto	l2372
u1760:
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
	goto	u1771
	goto	u1770
u1771:
	goto	l2368
u1770:
	line	50
	
l2376:	
	movf	(___bmul@product),w
	line	51
	
l954:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 780 in file "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
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
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
	line	780
global __ptext15
__ptext15:	;psect for function _checkBatAD
psect	text15
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
	line	780
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	782
	
l3416:	
;main.c: 782: test_adc = ADC_Sample(2, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(02h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	783
	
l3418:	
;main.c: 783: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3821
	goto	u3820
u3821:
	goto	l3448
u3820:
	line	785
	
l3420:	
;main.c: 784: {
;main.c: 785: batADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_batADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_batADValue)
	line	786
;main.c: 786: if(batADValue < 1117)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Dh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3831
	goto	u3830
u3831:
	goto	l3430
u3830:
	line	788
	
l3422:	
;main.c: 787: {
;main.c: 788: pwStep = 0;
	clrf	(_pwStep)
	line	789
	
l3424:	
;main.c: 789: if(++count8s > 800)
	incf	(_count8s),f
	skipnz
	incf	(_count8s+1),f
	movlw	03h
	subwf	((_count8s+1)),w
	movlw	021h
	skipnz
	subwf	((_count8s)),w
	skipc
	goto	u3841
	goto	u3840
u3841:
	goto	l3442
u3840:
	line	791
	
l3426:	
;main.c: 790: {
;main.c: 791: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	792
	
l3428:	
;main.c: 792: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	793
;main.c: 793: prePwStep = 0;
	clrf	(_prePwStep)
	line	794
;main.c: 794: workStep = 0;
	clrf	(_workStep)
	line	795
;main.c: 795: jrStep = 0;
	clrf	(_jrStep)
	goto	l3442
	line	800
	
l3430:	
;main.c: 798: else
;main.c: 799: {
;main.c: 800: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	801
	
l3432:	
;main.c: 801: if(batADValue >= 1340)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	03Ch
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3851
	goto	u3850
u3851:
	goto	l3436
u3850:
	line	803
	
l3434:	
;main.c: 802: {
;main.c: 803: pwStep = ((batADValue - 1340) /2) + 13;
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
	line	804
;main.c: 804: }
	goto	l3438
	line	807
	
l3436:	
;main.c: 805: else
;main.c: 806: {
;main.c: 807: pwStep = (batADValue - 1117) / 16;
	movf	(_batADValue),w
	addlw	low(0FBA3h)
	movwf	(??_checkBatAD+0)+0
	movf	(_batADValue+1),w
	skipnc
	addlw	1
	addlw	high(0FBA3h)
	movwf	1+(??_checkBatAD+0)+0
	movlw	04h
u3865:
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	addlw	-1
	skipz
	goto	u3865
	movf	0+(??_checkBatAD+0)+0,w
	movwf	(_pwStep)
	line	809
	
l3438:	
;main.c: 808: }
;main.c: 809: if(pwStep > 99)
	movlw	low(064h)
	subwf	(_pwStep),w
	skipc
	goto	u3871
	goto	u3870
u3871:
	goto	l3442
u3870:
	line	811
	
l3440:	
;main.c: 810: {
;main.c: 811: pwStep = 99;
	movlw	low(063h)
	movwf	(_pwStep)
	line	814
	
l3442:	
;main.c: 812: }
;main.c: 813: }
;main.c: 814: if(chrgFlag && batADValue > 1861)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3881
	goto	u3880
u3881:
	goto	l3452
u3880:
	
l3444:	
	movlw	07h
	subwf	(_batADValue+1),w
	movlw	046h
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3891
	goto	u3890
u3891:
	goto	l3452
u3890:
	line	816
	
l3446:	
;main.c: 815: {
;main.c: 816: protectFlag = 1;
	clrf	(_protectFlag)
	incf	(_protectFlag),f
	goto	l3452
	line	821
	
l3448:	
;main.c: 819: else
;main.c: 820: {
;main.c: 821: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	822
;main.c: 822: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	823
	
l3450:	
;main.c: 823: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u4217:
decfsz	(??_checkBatAD+0)+0,f
	goto	u4217
opt asmopt_pop

	line	826
	
l3452:	
;main.c: 824: }
;main.c: 826: test_adc = ADC_Sample(3, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(03h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	827
	
l3454:	
;main.c: 827: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3901
	goto	u3900
u3901:
	goto	l3472
u3900:
	line	829
	
l3456:	
;main.c: 828: {
;main.c: 829: if(chrgFlag && adresult > 100)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3911
	goto	u3910
u3911:
	goto	l885
u3910:
	
l3458:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	065h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u3921
	goto	u3920
u3921:
	goto	l885
u3920:
	line	832
	
l3460:	
;main.c: 830: {
;main.c: 832: if(adresult > 810 || (batADValue - adresult) > 810)
	movlw	03h
	subwf	(_adresult+1),w	;volatile
	movlw	02Bh
	skipnz
	subwf	(_adresult),w	;volatile
	skipnc
	goto	u3931
	goto	u3930
u3931:
	goto	l3464
u3930:
	
l3462:	
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
	goto	u3941
	goto	u3940
u3941:
	goto	l3470
u3940:
	line	835
	
l3464:	
;main.c: 833: {
;main.c: 835: if(++countHalfFull > 250)
	movlw	low(0FBh)
	incf	(_countHalfFull),f
	subwf	((_countHalfFull)),w
	skipc
	goto	u3951
	goto	u3950
u3951:
	goto	l878
u3950:
	line	837
	
l3466:	
;main.c: 836: {
;main.c: 837: countHalfFull = 0;
	clrf	(_countHalfFull)
	line	838
	
l3468:	
;main.c: 838: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l885
	line	843
	
l3470:	
;main.c: 841: else
;main.c: 842: {
;main.c: 843: countHalfFull = 0;
	clrf	(_countHalfFull)
	goto	l885
	line	845
	
l878:	
	line	846
;main.c: 844: }
;main.c: 845: }
;main.c: 846: }
	goto	l885
	line	849
	
l3472:	
;main.c: 847: else
;main.c: 848: {
;main.c: 849: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	850
;main.c: 850: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	851
	
l3474:	
;main.c: 851: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u4227:
decfsz	(??_checkBatAD+0)+0,f
	goto	u4227
opt asmopt_pop

	line	854
	
l885:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 1097 in file "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
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
	line	1097
global __ptext16
__ptext16:	;psect for function _ADC_Sample
psect	text16
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
	line	1097
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	1099
	
l3052:	
;main.c: 1099: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1100
	
l3054:	
;main.c: 1100: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1101
;main.c: 1101: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	1103
	
l3056:	
;main.c: 1103: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u3071
	goto	u3070
u3071:
	goto	l3062
u3070:
	
l3058:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u3081
	goto	u3080
u3081:
	goto	l3062
u3080:
	line	1106
	
l3060:	
;main.c: 1104: {
;main.c: 1106: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1107
;main.c: 1107: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_ADC_Sample+0)+0),f
	u4237:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u4237
	nop2
opt asmopt_pop

	line	1108
;main.c: 1108: }
	goto	l3064
	line	1110
	
l3062:	
;main.c: 1109: else
;main.c: 1110: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1112
	
l3064:	
;main.c: 1112: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l3070
u3090:
	line	1114
	
l3066:	
;main.c: 1113: {
;main.c: 1114: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	1115
	
l3068:	
;main.c: 1115: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	1117
	
l3070:	
	line	1118
	
l3072:	
;main.c: 1118: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	1120
	
l3078:	
;main.c: 1119: {
;main.c: 1120: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u3105:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u3105
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	1121
# 1121 "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
nop ;# 
	line	1122
# 1122 "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
nop ;# 
	line	1123
# 1123 "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
nop ;# 
	line	1124
# 1124 "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
nop ;# 
psect	text16
	line	1125
	
l3080:	
;main.c: 1125: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	1127
	
l3082:	
;main.c: 1127: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	1128
;main.c: 1128: while (GODONE)
	goto	l919
	
l920:	
	line	1130
;main.c: 1129: {
;main.c: 1130: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	1132
;main.c: 1132: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u3111
	goto	u3110
u3111:
	goto	l919
u3110:
	line	1133
	
l3084:	
;main.c: 1133: return 0;
	movlw	low(0)
	goto	l922
	line	1134
	
l919:	
	line	1128
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u3121
	goto	u3120
u3121:
	goto	l920
u3120:
	line	1136
	
l3088:	
;main.c: 1134: }
;main.c: 1136: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l3090:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	1138
	
l3092:	
;main.c: 1138: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l3096
u3130:
	line	1140
	
l3094:	
;main.c: 1139: {
;main.c: 1140: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	1141
;main.c: 1141: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1142
;main.c: 1142: }
	goto	l925
	line	1143
	
l3096:	
;main.c: 1143: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u3145
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u3145:
	skipnc
	goto	u3141
	goto	u3140
u3141:
	goto	l3100
u3140:
	line	1144
	
l3098:	
;main.c: 1144: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l925
	line	1145
	
l3100:	
;main.c: 1145: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u3155
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u3155:
	skipnc
	goto	u3151
	goto	u3150
u3151:
	goto	l925
u3150:
	line	1146
	
l3102:	
;main.c: 1146: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1148
	
l925:	
;main.c: 1148: adsum += ad_temp;
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
	goto	u3161
	addwf	(ADC_Sample@adsum+1),f	;volatile
u3161:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3162
	addwf	(ADC_Sample@adsum+2),f	;volatile
u3162:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3163
	addwf	(ADC_Sample@adsum+3),f	;volatile
u3163:

	line	1118
	
l3104:	
	incf	(ADC_Sample@i),f
	
l3106:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u3171
	goto	u3170
u3171:
	goto	l3078
u3170:
	line	1150
	
l3108:	
;main.c: 1149: }
;main.c: 1150: adsum -= admax;
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
	goto	u3185
	goto	u3186
u3185:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3186:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3187
	goto	u3188
u3187:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3188:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3189
	goto	u3180
u3189:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3180:

	line	1151
;main.c: 1151: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u3195
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u3195
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u3195
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u3195:
	skipc
	goto	u3191
	goto	u3190
u3191:
	goto	l929
u3190:
	line	1152
	
l3110:	
;main.c: 1152: adsum -= admin;
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
	goto	u3205
	goto	u3206
u3205:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3206:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3207
	goto	u3208
u3207:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3208:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3209
	goto	u3200
u3209:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3200:

	goto	l3112
	line	1153
	
l929:	
	line	1154
;main.c: 1153: else
;main.c: 1154: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1156
	
l3112:	
;main.c: 1156: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u3215:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u3210:
	addlw	-1
	skipz
	goto	u3215
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	1158
	
l3114:	
;main.c: 1158: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1159
	
l3116:	
;main.c: 1159: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	1160
	
l3118:	
;main.c: 1160: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1161
	
l3120:	
;main.c: 1161: return 0xA5;
	movlw	low(0A5h)
	line	1163
	
l922:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 1020 in file "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
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
	line	1020
global __ptext17
__ptext17:	;psect for function _Sleep_Mode
psect	text17
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
	line	1020
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 4
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	1022
	
l2916:	
;main.c: 1022: INTCON = 0;
	clrf	(11)	;volatile
	line	1024
;main.c: 1024: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	1026
;main.c: 1026: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	1027
	
l2918:	
;main.c: 1027: TRISA = 0x0F;
	movlw	low(0Fh)
	movwf	(133)^080h	;volatile
	line	1028
	
l2920:	
;main.c: 1028: TRISB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	1030
;main.c: 1030: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	1031
;main.c: 1031: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	1032
	
l2922:	
;main.c: 1032: WPUB = 0x04;
	movlw	low(04h)
	movwf	(8)	;volatile
	line	1034
	
l2924:	
;main.c: 1034: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	1035
	
l2926:	
;main.c: 1035: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	1037
	
l2928:	
;main.c: 1037: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	1039
;main.c: 1039: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	1041
;main.c: 1041: IOCA = 0x02;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(137)^080h	;volatile
	line	1042
;main.c: 1042: IOCB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	1044
	
l2930:	
;main.c: 1044: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	1045
	
l2932:	
;main.c: 1045: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	1046
	
l2934:	
;main.c: 1046: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	1047
	
l2936:	
;main.c: 1047: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	1049
	
l2938:	
;main.c: 1049: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	1050
	
l2940:	
;main.c: 1050: PIR1 = 0;
	clrf	(13)	;volatile
	line	1051
	
l2942:	
;main.c: 1051: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	1053
	
l2944:	
;main.c: 1053: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	1054
	
l2946:	
;main.c: 1054: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	1055
	
l2948:	
;main.c: 1055: PORTB;
	movf	(6),w	;volatile
	line	1056
	
l2950:	
;main.c: 1056: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	1057
# 1057 "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
clrwdt ;# 
	line	1059
# 1059 "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
sleep ;# 
	line	1061
# 1061 "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
nop ;# 
	line	1062
# 1062 "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
clrwdt ;# 
	line	1063
# 1063 "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
nop ;# 
	line	1064
# 1064 "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
nop ;# 
	line	1065
# 1065 "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
nop ;# 
	line	1066
# 1066 "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
nop ;# 
	line	1067
# 1067 "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
nop ;# 
psect	text17
	line	1068
	
l2952:	
;main.c: 1068: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u2891
	goto	u2890
u2891:
	goto	l908
u2890:
	
l2954:	
	bcf	(107/8),(107)&7	;volatile
	
l908:	
	line	1069
;main.c: 1069: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u2901
	goto	u2900
u2901:
	goto	l909
u2900:
	
l2956:	
	bcf	(88/8),(88)&7	;volatile
	
l909:	
	line	1070
;main.c: 1070: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u2911
	goto	u2910
u2911:
	goto	l2960
u2910:
	
l2958:	
	bcf	(105/8),(105)&7	;volatile
	line	1071
	
l2960:	
;main.c: 1071: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	1072
;main.c: 1072: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	1073
	
l2962:	
;main.c: 1073: Init_System();
	fcall	_Init_System
	line	1074
	
l2964:	
;main.c: 1074: AD_Init();
	fcall	_AD_Init
	line	1075
	
l911:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 865 in file "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
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
	line	865
global __ptext18
__ptext18:	;psect for function _Init_System
psect	text18
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
	line	865
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	867
	
l2182:	
# 867 "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
nop ;# 
	line	868
# 868 "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
clrwdt ;# 
psect	text18
	line	869
	
l2184:	
;main.c: 869: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	870
# 870 "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
clrwdt ;# 
psect	text18
	line	871
	
l2186:	
;main.c: 871: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	873
	
l2188:	
;main.c: 873: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	874
	
l2190:	
;main.c: 874: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	875
	
l2192:	
;main.c: 875: WPUB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	877
	
l2194:	
;main.c: 877: TRISA = 0x0F;
	movlw	low(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	878
	
l2196:	
;main.c: 878: TRISB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	880
;main.c: 880: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	881
;main.c: 881: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	885
	
l2198:	
;main.c: 885: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	886
	
l2200:	
;main.c: 886: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	887
	
l2202:	
;main.c: 887: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	889
	
l2204:	
;main.c: 889: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	890
	
l2206:	
;main.c: 890: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	891
	
l888:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 902 in file "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
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
	line	902
global __ptext19
__ptext19:	;psect for function _AD_Init
psect	text19
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
	line	902
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _AD_Init: [wreg+status,2]
	line	935
	
l2208:	
;main.c: 935: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	952
	
l2210:	
;main.c: 952: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	953
	
l2212:	
;main.c: 953: ANSEL0 = 0X0D;
	movlw	low(0Dh)
	movwf	(147)^080h	;volatile
	line	954
;main.c: 954: ANSEL1 = 0x00;
	clrf	(148)^080h	;volatile
	line	955
	
l891:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 128 in file "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
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
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
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
	
i1l2966:	
;main.c: 130: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u292_21
	goto	u292_20
u292_21:
	goto	i1l686
u292_20:
	line	132
	
i1l2968:	
;main.c: 131: {
;main.c: 132: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	133
	
i1l2970:	
;main.c: 133: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u293_21
	goto	u293_20
u293_21:
	goto	i1l2980
u293_20:
	line	135
	
i1l2972:	
;main.c: 134: {
;main.c: 135: intCount = 0;
	clrf	(_intCount)
	line	136
	
i1l2974:	
;main.c: 136: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	137
	
i1l2976:	
;main.c: 137: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u294_21
	goto	u294_20
u294_21:
	goto	i1l2980
u294_20:
	line	139
	
i1l2978:	
;main.c: 138: {
;main.c: 139: count1s = 0;
	clrf	(_count1s)
	line	142
	
i1l2980:	
;main.c: 140: }
;main.c: 141: }
;main.c: 142: ledShow();
	fcall	_ledShow
	line	143
	
i1l2982:	
;main.c: 143: intCount10++;
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
;;		line 192 in file "C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
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
;;		On exit  : 100/0
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
	file	"C:\mcuproject\scm\zdt\J01_062B_SOP14-D206\main.c"
	line	192
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 4
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	194
	
i1l2442:	
;main.c: 194: if(++ledCntTime > 5)
	movlw	low(06h)
	incf	(_ledCntTime),f
	subwf	((_ledCntTime)),w
	skipc
	goto	u189_21
	goto	u189_20
u189_21:
	goto	i1l720
u189_20:
	line	196
	
i1l2444:	
;main.c: 195: {
;main.c: 196: ledCntTime = 0;
	clrf	(_ledCntTime)
	line	197
	
i1l2446:	
;main.c: 197: if(++ledCnt > 5)
	movlw	low(06h)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u190_21
	goto	u190_20
u190_21:
	goto	i1l2450
u190_20:
	line	199
	
i1l2448:	
;main.c: 198: {
;main.c: 199: ledCnt = 0;
	clrf	(_ledCnt)
	line	201
	
i1l2450:	
;main.c: 200: }
;main.c: 201: PORTB &= 0xDC;
	movlw	low(0DCh)
	andwf	(6),f	;volatile
	line	202
	
i1l2452:	
;main.c: 202: TRISB |= 0x23;
	movlw	low(023h)
	iorwf	(5),f	;volatile
	line	203
;main.c: 203: switch(ledCnt)
	goto	i1l2480
	line	206
	
i1l2454:	
;main.c: 206: if(ledStep > 1)
	movlw	low(02h)
	subwf	(_ledStep),w
	skipc
	goto	u191_21
	goto	u191_20
u191_21:
	goto	i1l720
u191_20:
	line	208
	
i1l2456:	
;main.c: 207: {
;main.c: 208: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	209
;main.c: 209: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	210
;main.c: 210: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	211
;main.c: 211: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	goto	i1l720
	line	215
	
i1l2458:	
;main.c: 215: if(ledStep > 2)
	movlw	low(03h)
	subwf	(_ledStep),w
	skipc
	goto	u192_21
	goto	u192_20
u192_21:
	goto	i1l720
u192_20:
	line	217
	
i1l2460:	
;main.c: 216: {
;main.c: 217: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	218
;main.c: 218: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	219
;main.c: 219: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	220
;main.c: 220: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	goto	i1l720
	line	224
	
i1l2462:	
;main.c: 224: if(ledStep > 3)
	movlw	low(04h)
	subwf	(_ledStep),w
	skipc
	goto	u193_21
	goto	u193_20
u193_21:
	goto	i1l720
u193_20:
	line	226
	
i1l2464:	
;main.c: 225: {
;main.c: 226: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	227
;main.c: 227: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	228
;main.c: 228: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	229
;main.c: 229: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	goto	i1l720
	line	233
	
i1l2466:	
;main.c: 233: if(ledStep > 4)
	movlw	low(05h)
	subwf	(_ledStep),w
	skipc
	goto	u194_21
	goto	u194_20
u194_21:
	goto	i1l720
u194_20:
	line	235
	
i1l2468:	
;main.c: 234: {
;main.c: 235: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	236
;main.c: 236: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	237
;main.c: 237: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	238
;main.c: 238: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	goto	i1l720
	line	242
	
i1l2470:	
;main.c: 242: if(ledStep > 5)
	movlw	low(06h)
	subwf	(_ledStep),w
	skipc
	goto	u195_21
	goto	u195_20
u195_21:
	goto	i1l720
u195_20:
	line	244
	
i1l2472:	
;main.c: 243: {
;main.c: 244: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	245
;main.c: 245: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	246
;main.c: 246: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	247
;main.c: 247: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	goto	i1l720
	line	251
	
i1l2474:	
;main.c: 251: if(ledStep > 0)
	movf	((_ledStep)),w
	btfsc	status,2
	goto	u196_21
	goto	u196_20
u196_21:
	goto	i1l720
u196_20:
	line	253
	
i1l2476:	
;main.c: 252: {
;main.c: 253: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	254
;main.c: 254: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	255
;main.c: 255: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	256
;main.c: 256: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	goto	i1l720
	line	203
	
i1l2480:	
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
movlw high(i1S3596)
movwf pclath
	movlw low(i1S3596)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S3596:
	ljmp	i1l2474
	ljmp	i1l2454
	ljmp	i1l2458
	ljmp	i1l2462
	ljmp	i1l2466
	ljmp	i1l2470
psect	text21

	line	265
	
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
