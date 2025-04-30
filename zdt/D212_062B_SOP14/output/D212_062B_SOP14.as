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
	global	_count900s
	global	_count8s
	global	_fullCount
	global	_count50s
	global	_batADValue
	global	_outADValue
	global	_power_ad
	global	_result
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
	movlw	low((__pbssBANK0)+030h)
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
	global	keyRead@keyStatus
keyRead@keyStatus:	; 1 bytes @ 0x3
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x3
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x3
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x3
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
	ds	1
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x6
	ds	1
??_ledCtr:	; 1 bytes @ 0x7
??_main:	; 1 bytes @ 0x7
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_ADC_Sample:	; 1 bytes @ 0x0
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x0
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
;!    BSS         52
;!    Persistent  3
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      11
;!    BANK0            80     17      68
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
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
;! (0) _main                                                 0     0      0    2651
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
;!BANK0               50     11      44       4       85.0%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      4F       7        0.0%
;!DATA                 0      0      4F       8        0.0%

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
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	156
	
l3162:	
;main.c: 156: Init_System();
	fcall	_Init_System
	line	157
;main.c: 157: AD_Init();
	fcall	_AD_Init
	line	158
	
l3164:	
;main.c: 158: shiweiNum = geweiNum = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_geweiNum)
	movwf	(_shiweiNum)
	line	159
	
l3166:	
;main.c: 159: firstTime = 200;
	movlw	low(0C8h)
	movwf	(_firstTime)
	line	160
;main.c: 160: while (1)
	
l689:	
	line	162
# 162 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
clrwdt ;# 
psect	maintext
	line	163
	
l3168:	
;main.c: 163: if(intCount10 > 10)
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_intCount10),w
	skipc
	goto	u3511
	goto	u3510
u3511:
	goto	l3174
u3510:
	line	165
	
l3170:	
;main.c: 164: {
;main.c: 165: intCount10 = 0;
	clrf	(_intCount10)
	line	166
	
l3172:	
;main.c: 166: checkOutA();
	fcall	_checkOutA
	line	168
	
l3174:	
;main.c: 167: }
;main.c: 168: if(!IntFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l3178
u3520:
	goto	l689
	line	170
	
l3178:	
;main.c: 170: IntFlag = 0;
	clrf	(_IntFlag)
	line	171
	
l3180:	
;main.c: 171: chrgCtr();
	fcall	_chrgCtr
	line	172
	
l3182:	
;main.c: 172: checkBatAD();
	fcall	_checkBatAD
	line	173
	
l3184:	
;main.c: 173: if(chrgFlag == 0 && lowBatFlag == 0 && firstTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l693
u3530:
	
l3186:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u3541
	goto	u3540
u3541:
	goto	l693
u3540:
	
l3188:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3551
	goto	u3550
u3551:
	goto	l693
u3550:
	line	175
	
l3190:	
;main.c: 174: {
;main.c: 175: keyCtr();
	fcall	_keyCtr
	line	176
	
l693:	
	line	177
;main.c: 176: }
;main.c: 177: workCtr();
	fcall	_workCtr
	line	178
	
l3192:	
;main.c: 178: if(count1s == 0 && ++count900s >= 900)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_count1s)),w
	btfss	status,2
	goto	u3561
	goto	u3560
u3561:
	goto	l3198
u3560:
	
l3194:	
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	movlw	03h
	subwf	((_count900s+1)),w
	movlw	084h
	skipnz
	subwf	((_count900s)),w
	skipc
	goto	u3571
	goto	u3570
u3571:
	goto	l3198
u3570:
	line	180
	
l3196:	
;main.c: 179: {
;main.c: 180: workStep = 0;
	clrf	(_workStep)
	line	182
	
l3198:	
;main.c: 181: }
;main.c: 182: ledCtr();
	fcall	_ledCtr
	line	183
	
l3200:	
;main.c: 183: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && showBatTime == 0 && overWorkTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3581
	goto	u3580
u3581:
	goto	l3220
u3580:
	
l3202:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u3591
	goto	u3590
u3591:
	goto	l3220
u3590:
	
l3204:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u3601
	goto	u3600
u3601:
	goto	l3220
u3600:
	
l3206:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3611
	goto	u3610
u3611:
	goto	l3220
u3610:
	
l3208:	
	movf	((_showBatTime)),w
	btfss	status,2
	goto	u3621
	goto	u3620
u3621:
	goto	l3220
u3620:
	
l3210:	
	movf	((_overWorkTime)),w
	btfss	status,2
	goto	u3631
	goto	u3630
u3631:
	goto	l3220
u3630:
	line	185
	
l3212:	
;main.c: 184: {
;main.c: 185: shiweiNum = geweiNum = 0;
	clrf	(_geweiNum)
	clrf	(_shiweiNum)
	line	186
	
l3214:	
;main.c: 186: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u3641
	goto	u3640
u3641:
	goto	l689
u3640:
	line	188
	
l3216:	
;main.c: 187: {
;main.c: 188: sleepTime = 0;
	clrf	(_sleepTime)
	line	189
	
l3218:	
;main.c: 189: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l689
	line	194
	
l3220:	
;main.c: 192: else
;main.c: 193: {
;main.c: 194: sleepTime = 0;
	clrf	(_sleepTime)
	goto	l689
	global	start
	ljmp	start
	opt stack 0
	line	197
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 649 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
	line	649
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	649
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	652
	
l2676:	
;main.c: 652: if(startTime > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_startTime)),w
	btfsc	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l2680
u2600:
	line	654
	
l2678:	
;main.c: 653: {
;main.c: 654: startTime--;
	decf	(_startTime),f
	line	656
	
l2680:	
;main.c: 655: }
;main.c: 656: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l2736
u2610:
	line	658
	
l2682:	
;main.c: 657: {
;main.c: 658: if(motorPwmFlag == 0)
	movf	((_motorPwmFlag)),w
	btfss	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l2686
u2620:
	line	660
	
l2684:	
;main.c: 659: {
;main.c: 660: pwmInit();
	fcall	_pwmInit
	line	663
	
l2686:	
;main.c: 662: }
;main.c: 663: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l2690
u2630:
	line	665
	
l2688:	
;main.c: 664: {
;main.c: 665: maxDuty = 158;
	movlw	low(09Eh)
	movwf	(_maxDuty)
	line	666
;main.c: 666: }
	goto	l2732
	line	667
	
l2690:	
;main.c: 667: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l2694
u2640:
	line	668
	
l2692:	
;main.c: 668: maxDuty = 163;
	movlw	low(0A3h)
	movwf	(_maxDuty)
	goto	l2732
	line	669
	
l2694:	
;main.c: 669: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l2698
u2650:
	line	670
	
l2696:	
;main.c: 670: maxDuty = 167;
	movlw	low(0A7h)
	movwf	(_maxDuty)
	goto	l2732
	line	671
	
l2698:	
;main.c: 671: else if(workStep == 4)
		movlw	4
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l2702
u2660:
	line	672
	
l2700:	
;main.c: 672: maxDuty = 170;
	movlw	low(0AAh)
	movwf	(_maxDuty)
	goto	l2732
	line	673
	
l2702:	
;main.c: 673: else if(workStep == 5)
		movlw	5
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l2706
u2670:
	line	674
	
l2704:	
;main.c: 674: maxDuty = 173;
	movlw	low(0ADh)
	movwf	(_maxDuty)
	goto	l2732
	line	675
	
l2706:	
;main.c: 675: else if(workStep == 6)
		movlw	6
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l2710
u2680:
	line	676
	
l2708:	
;main.c: 676: maxDuty = 177;
	movlw	low(0B1h)
	movwf	(_maxDuty)
	goto	l2732
	line	677
	
l2710:	
;main.c: 677: else if(workStep == 7)
		movlw	7
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l2714
u2690:
	line	678
	
l2712:	
;main.c: 678: maxDuty = 180;
	movlw	low(0B4h)
	movwf	(_maxDuty)
	goto	l2732
	line	679
	
l2714:	
;main.c: 679: else if(workStep == 8)
		movlw	8
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l2718
u2700:
	line	680
	
l2716:	
;main.c: 680: maxDuty = 184;
	movlw	low(0B8h)
	movwf	(_maxDuty)
	goto	l2732
	line	681
	
l2718:	
;main.c: 681: else if(workStep == 9)
		movlw	9
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2711
	goto	u2710
u2711:
	goto	l2722
u2710:
	line	682
	
l2720:	
;main.c: 682: maxDuty = 188;
	movlw	low(0BCh)
	movwf	(_maxDuty)
	goto	l2732
	line	683
	
l2722:	
;main.c: 683: else if(workStep == 10)
		movlw	10
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2721
	goto	u2720
u2721:
	goto	l2726
u2720:
	line	684
	
l2724:	
;main.c: 684: maxDuty = 192;
	movlw	low(0C0h)
	movwf	(_maxDuty)
	goto	l2732
	line	685
	
l2726:	
;main.c: 685: else if(workStep == 11)
		movlw	11
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l2730
u2730:
	line	686
	
l2728:	
;main.c: 686: maxDuty = 196;
	movlw	low(0C4h)
	movwf	(_maxDuty)
	goto	l2732
	line	689
	
l2730:	
;main.c: 687: else
;main.c: 688: {
;main.c: 689: maxDuty = 200;
	movlw	low(0C8h)
	movwf	(_maxDuty)
	line	691
	
l2732:	
;main.c: 690: }
;main.c: 691: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	692
	
l2734:	
;main.c: 692: PWMD3L = maxDuty;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_maxDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	695
;main.c: 695: }
	goto	l847
	line	698
	
l2736:	
;main.c: 696: else
;main.c: 697: {
;main.c: 698: pwmStop();
	fcall	_pwmStop
	line	699
	
l2738:	
;main.c: 699: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	702
	
l847:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 953 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
	line	953
global __ptext2
__ptext2:	;psect for function _pwmInit
psect	text2
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	953
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2+status,0]
	line	955
	
l2226:	
;main.c: 955: if(motorPwmFlag > 0)
	movf	((_motorPwmFlag)),w
	btfsc	status,2
	goto	u1611
	goto	u1610
u1611:
	goto	l894
u1610:
	goto	l895
	line	956
	
l894:	
	line	957
;main.c: 957: motorPwmFlag = 1;
	clrf	(_motorPwmFlag)
	incf	(_motorPwmFlag),f
	line	958
	
l2230:	
;main.c: 958: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	959
;main.c: 959: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	960
	
l2232:	
;main.c: 960: PWMTL = 200;
	movlw	low(0C8h)
	movwf	(23)	;volatile
	line	963
	
l2234:	
;main.c: 963: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	964
;main.c: 964: PWMD3L = 80;
	movlw	low(050h)
	movwf	(156)^080h	;volatile
	line	965
	
l2236:	
;main.c: 965: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	967
	
l2238:	
;main.c: 967: PWMCON0 = 0X48;
	movlw	low(048h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	968
;main.c: 968: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	969
	
l895:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_ledCtr

;; *************** function _ledCtr *****************
;; Defined at:
;;		line 376 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
	line	376
global __ptext3
__ptext3:	;psect for function _ledCtr
psect	text3
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	376
	global	__size_of_ledCtr
	__size_of_ledCtr	equ	__end_of_ledCtr-_ledCtr
	
_ledCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _ledCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	378
	
l3116:	
;main.c: 378: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u3421
	goto	u3420
u3421:
	goto	l3124
u3420:
	line	380
	
l3118:	
;main.c: 379: {
;main.c: 380: firstTime--;
	decf	(_firstTime),f
	line	381
	
l3120:	
;main.c: 381: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u3431
	goto	u3430
u3431:
	goto	l759
u3430:
	line	383
	
l3122:	
;main.c: 382: {
;main.c: 383: prePwStep = pwStep;
	movf	(_pwStep),w
	movwf	(_prePwStep)
	goto	l759
	line	386
	
l3124:	
;main.c: 386: else if(overWorkTime > 0)
	movf	((_overWorkTime)),w
	btfsc	status,2
	goto	u3441
	goto	u3440
u3441:
	goto	l3132
u3440:
	line	388
	
l3126:	
;main.c: 387: {
;main.c: 388: overWorkTime--;
	decf	(_overWorkTime),f
	line	389
	
l3128:	
;main.c: 389: shiweiNum = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	390
	
l3130:	
;main.c: 390: geweiNum = 0x71;
	movlw	low(071h)
	movwf	(_geweiNum)
	line	391
;main.c: 391: }
	goto	l759
	line	392
	
l3132:	
;main.c: 392: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u3451
	goto	u3450
u3451:
	goto	l3140
u3450:
	line	394
	
l3134:	
;main.c: 393: {
;main.c: 394: showBatTime--;
	decf	(_showBatTime),f
	line	395
	
l3136:	
;main.c: 395: shiweiNum = numArray[prePwStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	396
	
l3138:	
;main.c: 396: geweiNum = numArray[prePwStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_prePwStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	397
;main.c: 397: }
	goto	l759
	line	398
	
l3140:	
;main.c: 398: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l3152
u3460:
	line	401
	
l3142:	
;main.c: 399: {
;main.c: 401: if(workStep < 10)
	movlw	low(0Ah)
	subwf	(_workStep),w
	skipnc
	goto	u3471
	goto	u3470
u3471:
	goto	l3148
u3470:
	line	403
	
l3144:	
;main.c: 402: {
;main.c: 403: shiweiNum = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	404
	
l3146:	
;main.c: 404: geweiNum = numArray[workStep];
	movf	(_workStep),w
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	405
;main.c: 405: }
	goto	l759
	line	408
	
l3148:	
;main.c: 406: else
;main.c: 407: {
;main.c: 408: shiweiNum = numArray[1];
	movlw	low((((_numArray+01h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	409
	
l3150:	
;main.c: 409: geweiNum = numArray[workStep - 10];
	movf	(_workStep),w
	addlw	low((((_numArray)-__stringbase)|8000h)+0F6h)
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	goto	l759
	line	413
	
l3152:	
;main.c: 413: else if(chrgFullFlag || (chrgFlag && count1s < 50))
	movf	((_chrgFullFlag)),w
	btfss	status,2
	goto	u3481
	goto	u3480
u3481:
	goto	l3158
u3480:
	
l3154:	
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3491
	goto	u3490
u3491:
	goto	l3160
u3490:
	
l3156:	
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u3501
	goto	u3500
u3501:
	goto	l3160
u3500:
	line	415
	
l3158:	
;main.c: 414: {
;main.c: 415: shiweiNum = numArray[prePwStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	416
;main.c: 416: geweiNum = numArray[prePwStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_prePwStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	417
;main.c: 417: }
	goto	l759
	line	420
	
l3160:	
;main.c: 418: else
;main.c: 419: {
;main.c: 420: shiweiNum = 0;
	clrf	(_shiweiNum)
	line	421
;main.c: 421: geweiNum = 0;
	clrf	(_geweiNum)
	line	423
	
l759:	
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
	
l3006:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l3008:	
	clrf	(___lbmod@rem)
	line	12
	
l3010:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u3185:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u3185
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l3012:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l3014:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u3191
	goto	u3190
u3191:
	goto	l3018
u3190:
	line	15
	
l3016:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l3018:	
	decfsz	(___lbmod@counter),f
	goto	u3201
	goto	u3200
u3201:
	goto	l3010
u3200:
	line	17
	
l3020:	
	movf	(___lbmod@rem),w
	line	18
	
l1199:	
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
	
l2312:	
	clrf	(___lbdiv@quotient)
	line	10
	
l2314:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1771
	goto	u1770
u1771:
	goto	l2332
u1770:
	line	11
	
l2316:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2320
	
l1188:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l2318:	
	incf	(___lbdiv@counter),f
	line	12
	
l2320:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1781
	goto	u1780
u1781:
	goto	l1188
u1780:
	line	16
	
l1190:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l2322:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1791
	goto	u1790
u1791:
	goto	l2328
u1790:
	line	19
	
l2324:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2326:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2328:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l2330:	
	decfsz	(___lbdiv@counter),f
	goto	u1801
	goto	u1800
u1801:
	goto	l1190
u1800:
	line	25
	
l2332:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1193:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 616 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	616
global __ptext6
__ptext6:	;psect for function _keyCtr
psect	text6
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	616
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	618
	
l2652:	
;main.c: 618: char kclick = keyRead(0x04 & (~PORTB));
	comf	(6),w	;volatile
	andlw	04h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	619
	
l2654:	
;main.c: 619: if(kclick == 1 && workStep > 0)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l2662
u2550:
	
l2656:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l2662
u2560:
	line	622
	
l2658:	
;main.c: 620: {
;main.c: 622: if(++workStep > 12)
	movlw	low(0Dh)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u2571
	goto	u2570
u2571:
	goto	l818
u2570:
	line	624
	
l2660:	
;main.c: 623: {
;main.c: 624: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l818
	line	629
	
l2662:	
;main.c: 629: else if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l818
u2580:
	line	631
	
l2664:	
;main.c: 630: {
;main.c: 631: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l816
u2590:
	line	633
	
l2666:	
;main.c: 632: {
;main.c: 633: workStep = 0;
	clrf	(_workStep)
	line	634
	
l2668:	
;main.c: 634: overWorkTime = 200;
	movlw	low(0C8h)
	movwf	(_overWorkTime)
	line	635
;main.c: 635: }
	goto	l818
	line	636
	
l816:	
	line	638
;main.c: 636: else
;main.c: 637: {
;main.c: 638: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	639
	
l2670:	
;main.c: 639: startTime = 30;
	movlw	low(01Eh)
	movwf	(_startTime)
	line	640
	
l2672:	
;main.c: 640: showBatTime = 0;
	clrf	(_showBatTime)
	line	641
	
l2674:	
;main.c: 641: overWorkTime = 0;
	clrf	(_overWorkTime)
	line	644
	
l818:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 574 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
	line	574
global __ptext7
__ptext7:	;psect for function _keyRead
psect	text7
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	574
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	576
	
l2180:	
;main.c: 576: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1541
	goto	u1540
u1541:
	goto	l2202
u1540:
	line	578
	
l2182:	
;main.c: 577: {
;main.c: 578: keyCount++;
	incf	(_keyCount),f
	line	579
	
l2184:	
;main.c: 579: if(overWorkTime > 0)
	movf	((_overWorkTime)),w
	btfsc	status,2
	goto	u1551
	goto	u1550
u1551:
	goto	l2188
u1550:
	line	581
	
l2186:	
;main.c: 580: {
;main.c: 581: overWorkTime = 200;
	movlw	low(0C8h)
	movwf	(_overWorkTime)
	line	582
;main.c: 582: }
	goto	l801
	line	583
	
l2188:	
;main.c: 583: else if(workStep == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u1561
	goto	u1560
u1561:
	goto	l801
u1560:
	line	585
	
l2190:	
;main.c: 584: {
;main.c: 585: showBatTime = 200;
	movlw	low(0C8h)
	movwf	(_showBatTime)
	line	587
	
l801:	
;main.c: 586: }
;main.c: 587: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1571
	goto	u1570
u1571:
	goto	l2206
u1570:
	line	589
	
l2192:	
;main.c: 588: {
;main.c: 589: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	line	590
	
l2194:	
;main.c: 590: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1581
	goto	u1580
u1581:
	goto	l2206
u1580:
	line	592
	
l2196:	
;main.c: 591: {
;main.c: 592: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	593
	
l2198:	
;main.c: 593: return 2;
	movlw	low(02h)
	goto	l805
	line	599
	
l2202:	
;main.c: 597: else
;main.c: 598: {
;main.c: 599: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1591
	goto	u1590
u1591:
	goto	l2212
u1590:
	line	601
	
l2204:	
;main.c: 600: {
;main.c: 601: keyCount = 0;
	clrf	(_keyCount)
	line	602
;main.c: 602: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	603
	
l2206:	
;main.c: 603: return 0;
	movlw	low(0)
	goto	l805
	line	605
	
l2212:	
;main.c: 605: else if(keyCount >= 6)
	movlw	low(06h)
	subwf	(_keyCount),w
	skipc
	goto	u1601
	goto	u1600
u1601:
	goto	l2220
u1600:
	line	607
	
l2214:	
;main.c: 606: {
;main.c: 607: keyCount = 0;
	clrf	(_keyCount)
	line	608
	
l2216:	
;main.c: 608: return 1;
	movlw	low(01h)
	goto	l805
	line	610
	
l2220:	
;main.c: 609: }
;main.c: 610: keyCount = 0;
	clrf	(_keyCount)
	goto	l2206
	line	613
	
l805:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 427 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	427
global __ptext8
__ptext8:	;psect for function _chrgCtr
psect	text8
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	427
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	429
	
l2456:	
;main.c: 429: if(PORTA & 0x20)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(134)^080h,(5)&7	;volatile
	goto	u2131
	goto	u2130
u2131:
	goto	l2574
u2130:
	line	431
	
l2458:	
;main.c: 430: {
;main.c: 431: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2141
	goto	u2140
u2141:
	goto	l2466
u2140:
	line	433
	
l2460:	
;main.c: 432: {
;main.c: 433: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	434
	
l2462:	
;main.c: 434: chrgMaxDuty = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgMaxDuty)
	line	435
	
l2464:	
;main.c: 435: chrgPwmStop();
	fcall	_chrgPwmStop
	line	437
	
l2466:	
;main.c: 436: }
;main.c: 437: workStep = 0;
	clrf	(_workStep)
	line	438
;main.c: 438: pwmStop();
	fcall	_pwmStop
	line	439
	
l2468:	
;main.c: 439: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	440
	
l2470:	
;main.c: 440: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u2151
	goto	u2150
u2151:
	goto	l2478
u2150:
	line	442
	
l2472:	
;main.c: 441: {
;main.c: 442: if(++count50s > 3000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	0Bh
	subwf	((_count50s+1)),w
	movlw	0B9h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l2480
u2160:
	line	444
	
l2474:	
;main.c: 443: {
;main.c: 444: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	445
	
l2476:	
;main.c: 445: prePwStep++;
	incf	(_prePwStep),f
	goto	l2480
	line	450
	
l2478:	
;main.c: 448: else
;main.c: 449: {
;main.c: 450: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	452
	
l2480:	
;main.c: 451: }
;main.c: 452: if(protectFlag)
	movf	((_protectFlag)),w
	btfsc	status,2
	goto	u2171
	goto	u2170
u2171:
	goto	l2496
u2170:
	line	454
	
l2482:	
;main.c: 453: {
;main.c: 454: chrgPwmStop();
	fcall	_chrgPwmStop
	line	455
	
l2484:	
;main.c: 455: if(prePwStep < 99 && protectFlag == 1)
	movlw	low(063h)
	subwf	(_prePwStep),w
	skipnc
	goto	u2181
	goto	u2180
u2181:
	goto	l2492
u2180:
	
l2486:	
		decf	((_protectFlag)),w
	btfss	status,2
	goto	u2191
	goto	u2190
u2191:
	goto	l2492
u2190:
	line	457
	
l2488:	
;main.c: 456: {
;main.c: 457: if(++reChrgCount > 250)
	movlw	low(0FBh)
	incf	(_reChrgCount),f
	subwf	((_reChrgCount)),w
	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l771
u2200:
	line	459
	
l2490:	
;main.c: 458: {
;main.c: 459: reChrgCount = 0;
	clrf	(_reChrgCount)
	line	460
;main.c: 460: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	461
;main.c: 461: protectFlag = 0;
	clrf	(_protectFlag)
	goto	l771
	line	466
	
l2492:	
;main.c: 464: else
;main.c: 465: {
;main.c: 466: reChrgCount = 0;
	clrf	(_reChrgCount)
	goto	l771
	line	470
	
l2496:	
;main.c: 469: }
;main.c: 470: if(batADValue < 1118)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Eh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2211
	goto	u2210
u2211:
	goto	l2502
u2210:
	line	472
	
l2498:	
;main.c: 471: {
;main.c: 472: chrgMode = 0;
	clrf	(_chrgMode)
	line	473
	
l2500:	
;main.c: 473: chrgMaxAD = 15;
	movlw	low(0Fh)
	movwf	(_chrgMaxAD)
	line	474
;main.c: 474: }
	goto	l2520
	line	475
	
l2502:	
;main.c: 475: else if(batADValue < 1530)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	0FAh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2221
	goto	u2220
u2221:
	goto	l2510
u2220:
	line	477
	
l2504:	
;main.c: 476: {
;main.c: 477: chrgMode = 1;
	clrf	(_chrgMode)
	incf	(_chrgMode),f
	line	478
	
l2506:	
;main.c: 478: chrgMaxAD = 77;
	movlw	low(04Dh)
	movwf	(_chrgMaxAD)
	line	479
	
l2508:	
;main.c: 479: lockCount = 0;
	clrf	(_lockCount)
	line	480
;main.c: 480: }
	goto	l2520
	line	481
	
l2510:	
;main.c: 481: else if(count1s == 0)
	movf	((_count1s)),w
	btfss	status,2
	goto	u2231
	goto	u2230
u2231:
	goto	l2520
u2230:
	line	483
	
l2512:	
;main.c: 482: {
;main.c: 483: if(++lockCount > 200)
	movlw	low(0C9h)
	incf	(_lockCount),f
	subwf	((_lockCount)),w
	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l2518
u2240:
	line	485
	
l2514:	
;main.c: 484: {
;main.c: 485: lockCount = 0;
	clrf	(_lockCount)
	line	486
	
l2516:	
;main.c: 486: chrgMode = 2;
	movlw	low(02h)
	movwf	(_chrgMode)
	line	489
	
l2518:	
;main.c: 487: }
;main.c: 489: chrgMaxAD = 77;
	movlw	low(04Dh)
	movwf	(_chrgMaxAD)
	line	491
	
l2520:	
;main.c: 490: }
;main.c: 491: if(chrgMode == 2 && outADValue < 8)
		movlw	2
	xorwf	((_chrgMode)),w
	btfss	status,2
	goto	u2251
	goto	u2250
u2251:
	goto	l2530
u2250:
	
l2522:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	08h
	skipnz
	subwf	(_outADValue),w
	skipnc
	goto	u2261
	goto	u2260
u2261:
	goto	l2530
u2260:
	line	493
	
l2524:	
;main.c: 492: {
;main.c: 493: if(++fullCount >= 200)
	incf	(_fullCount),f
	skipnz
	incf	(_fullCount+1),f
	movlw	0
	subwf	((_fullCount+1)),w
	movlw	0C8h
	skipnz
	subwf	((_fullCount)),w
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l2532
u2270:
	line	495
	
l2526:	
;main.c: 494: {
;main.c: 495: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	496
	
l2528:	
;main.c: 496: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l2532
	line	501
	
l2530:	
;main.c: 499: else
;main.c: 500: {
;main.c: 501: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	503
	
l2532:	
;main.c: 502: }
;main.c: 503: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u2281
	goto	u2280
u2281:
	goto	l2536
u2280:
	line	505
	
l2534:	
;main.c: 504: {
;main.c: 505: chrgPwmStop();
	fcall	_chrgPwmStop
	line	506
;main.c: 506: }
	goto	l771
	line	509
	
l2536:	
;main.c: 507: else
;main.c: 508: {
;main.c: 509: if(batADValue > 1550 || outADValue > (chrgMaxAD + 2))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	0Fh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2291
	goto	u2290
u2291:
	goto	l2540
u2290:
	
l2538:	
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
	goto	u2305
	movf	(_outADValue),w
	subwf	0+(??_chrgCtr+0)+0,w
u2305:
	skipnc
	goto	u2301
	goto	u2300
u2301:
	goto	l2552
u2300:
	line	511
	
l2540:	
;main.c: 510: {
;main.c: 511: if(++subTime > chrgWaitTime)
	incf	(_subTime),f
	movf	((_subTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u2311
	goto	u2310
u2311:
	goto	l2550
u2310:
	line	513
	
l2542:	
;main.c: 512: {
;main.c: 513: if(chrgMaxDuty > 1)
	movlw	low(02h)
	subwf	(_chrgMaxDuty),w
	skipc
	goto	u2321
	goto	u2320
u2321:
	goto	l2546
u2320:
	line	515
	
l2544:	
;main.c: 514: {
;main.c: 515: chrgMaxDuty--;
	decf	(_chrgMaxDuty),f
	line	517
	
l2546:	
;main.c: 516: }
;main.c: 517: subTime = 0;
	clrf	(_subTime)
	line	518
	
l2548:	
;main.c: 518: chrgWaitTime = 250;
	movlw	low(0FAh)
	movwf	(_chrgWaitTime)
	line	520
	
l2550:	
;main.c: 519: }
;main.c: 520: addTime = 0;
	clrf	(_addTime)
	line	521
;main.c: 521: }
	goto	l2566
	line	522
	
l2552:	
;main.c: 522: else if(batADValue < 1550 && outADValue < (chrgMaxAD - 4))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	0Eh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2331
	goto	u2330
u2331:
	goto	l2566
u2330:
	
l2554:	
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
	goto	u2345
	movf	0+(??_chrgCtr+0)+0,w
	subwf	(_outADValue),w
u2345:
	skipnc
	goto	u2341
	goto	u2340
u2341:
	goto	l2566
u2340:
	line	524
	
l2556:	
;main.c: 523: {
;main.c: 524: if(++addTime > chrgWaitTime)
	incf	(_addTime),f
	movf	((_addTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u2351
	goto	u2350
u2351:
	goto	l2564
u2350:
	line	526
	
l2558:	
;main.c: 525: {
;main.c: 526: addTime = 0;
	clrf	(_addTime)
	line	527
	
l2560:	
;main.c: 527: if(chrgMaxDuty < 75)
	movlw	low(04Bh)
	subwf	(_chrgMaxDuty),w
	skipnc
	goto	u2361
	goto	u2360
u2361:
	goto	l2564
u2360:
	line	529
	
l2562:	
;main.c: 528: {
;main.c: 529: chrgMaxDuty++;
	incf	(_chrgMaxDuty),f
	line	532
	
l2564:	
;main.c: 530: }
;main.c: 531: }
;main.c: 532: subTime = 0;
	clrf	(_subTime)
	line	536
	
l2566:	
;main.c: 533: }
;main.c: 536: if(chrgPwmFlag == 0)
	movf	((_chrgPwmFlag)),w
	btfss	status,2
	goto	u2371
	goto	u2370
u2371:
	goto	l2570
u2370:
	line	538
	
l2568:	
;main.c: 537: {
;main.c: 538: chrgPwmInit();
	fcall	_chrgPwmInit
	line	540
	
l2570:	
;main.c: 539: }
;main.c: 540: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	541
	
l2572:	
;main.c: 541: PWMD2L = chrgMaxDuty;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_chrgMaxDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	goto	l771
	line	547
	
l2574:	
;main.c: 547: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	548
;main.c: 548: chrgFullFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgFullFlag)
	line	549
;main.c: 549: protectFlag = 0;
	clrf	(_protectFlag)
	line	550
;main.c: 550: chrgMode = 0;
	clrf	(_chrgMode)
	line	551
;main.c: 551: chrgMaxAD = 0;
	clrf	(_chrgMaxAD)
	line	552
;main.c: 552: chrgMaxDuty = 0;
	clrf	(_chrgMaxDuty)
	line	553
;main.c: 554: lockLedStep = 0;
	clrf	(_lockCount)
	line	555
	
l2576:	
;main.c: 555: chrgWaitTime = 20;
	movlw	low(014h)
	movwf	(_chrgWaitTime)
	line	556
	
l2578:	
;main.c: 556: chrgPwmStop();
	fcall	_chrgPwmStop
	line	557
	
l2580:	
;main.c: 557: if(prePwStep > 0 && prePwStep > pwStep)
	movf	((_prePwStep)),w
	btfsc	status,2
	goto	u2381
	goto	u2380
u2381:
	goto	l2590
u2380:
	
l2582:	
	movf	(_prePwStep),w
	subwf	(_pwStep),w
	skipnc
	goto	u2391
	goto	u2390
u2391:
	goto	l2590
u2390:
	line	559
	
l2584:	
;main.c: 558: {
;main.c: 559: if(++count50s > 3000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	0Bh
	subwf	((_count50s+1)),w
	movlw	0B9h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u2401
	goto	u2400
u2401:
	goto	l771
u2400:
	line	561
	
l2586:	
;main.c: 560: {
;main.c: 561: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	562
	
l2588:	
;main.c: 562: prePwStep--;
	decf	(_prePwStep),f
	goto	l771
	line	567
	
l2590:	
;main.c: 565: else
;main.c: 566: {
;main.c: 567: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	570
	
l771:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 971 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	971
global __ptext9
__ptext9:	;psect for function _pwmStop
psect	text9
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	971
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: [wreg+status,2+status,0]
	line	973
	
l2160:	
;main.c: 973: if(motorPwmFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_motorPwmFlag)),w
	btfsc	status,2
	goto	u1531
	goto	u1530
u1531:
	goto	l899
u1530:
	line	975
	
l2162:	
;main.c: 974: {
;main.c: 975: motorPwmFlag = 0;
	clrf	(_motorPwmFlag)
	line	976
	
l2164:	
;main.c: 976: PWMCON0 &= 0XF7;
	bcf	(21)+(3/8),(3)&7	;volatile
	line	977
	
l2166:	
;main.c: 977: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	979
	
l899:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_chrgPwmStop

;; *************** function _chrgPwmStop *****************
;; Defined at:
;;		line 943 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
	line	943
global __ptext10
__ptext10:	;psect for function _chrgPwmStop
psect	text10
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	943
	global	__size_of_chrgPwmStop
	__size_of_chrgPwmStop	equ	__end_of_chrgPwmStop-_chrgPwmStop
	
_chrgPwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmStop: [wreg+status,2+status,0]
	line	945
	
l2152:	
;main.c: 945: if(chrgPwmFlag)
	movf	((_chrgPwmFlag)),w
	btfsc	status,2
	goto	u1521
	goto	u1520
u1521:
	goto	l891
u1520:
	line	947
	
l2154:	
;main.c: 946: {
;main.c: 947: chrgPwmFlag = 0;
	clrf	(_chrgPwmFlag)
	line	948
	
l2156:	
;main.c: 948: PWMCON0 &= 0xFB;
	bcf	(21)+(2/8),(2)&7	;volatile
	line	949
	
l2158:	
;main.c: 949: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	951
	
l891:	
	return
	opt stack 0
GLOBAL	__end_of_chrgPwmStop
	__end_of_chrgPwmStop:
	signat	_chrgPwmStop,89
	global	_chrgPwmInit

;; *************** function _chrgPwmInit *****************
;; Defined at:
;;		line 924 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
	line	924
global __ptext11
__ptext11:	;psect for function _chrgPwmInit
psect	text11
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	924
	global	__size_of_chrgPwmInit
	__size_of_chrgPwmInit	equ	__end_of_chrgPwmInit-_chrgPwmInit
	
_chrgPwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmInit: [wreg+status,2]
	line	926
	
l2168:	
;main.c: 926: chrgPwmFlag = 1;
	clrf	(_chrgPwmFlag)
	incf	(_chrgPwmFlag),f
	line	927
	
l2170:	
;main.c: 927: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	929
;main.c: 929: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	930
	
l2172:	
;main.c: 930: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	934
	
l2174:	
;main.c: 934: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	935
;main.c: 935: PWMD2L = 10;
	movlw	low(0Ah)
	movwf	(155)^080h	;volatile
	line	936
	
l2176:	
;main.c: 936: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	938
	
l2178:	
;main.c: 938: PWMCON0 = 0X04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	939
;main.c: 939: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	940
	
l887:	
	return
	opt stack 0
GLOBAL	__end_of_chrgPwmInit
	__end_of_chrgPwmInit:
	signat	_chrgPwmInit,89
	global	_checkOutA

;; *************** function _checkOutA *****************
;; Defined at:
;;		line 704 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	704
global __ptext12
__ptext12:	;psect for function _checkOutA
psect	text12
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	704
	global	__size_of_checkOutA
	__size_of_checkOutA	equ	__end_of_checkOutA-_checkOutA
	
_checkOutA:	
;incstack = 0
	opt	stack 4
; Regs used in _checkOutA: [wreg+status,2+status,0+pclath+cstack]
	line	706
	
l3024:	
;main.c: 706: test_adc = ADC_Sample(0, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	707
	
l3026:	
;main.c: 707: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l3052
u3210:
	line	709
	
l3028:	
;main.c: 708: {
;main.c: 709: if(chrgFlag && adresult > 210)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l3038
u3220:
	
l3030:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	0D3h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u3231
	goto	u3230
u3231:
	goto	l3038
u3230:
	line	711
	
l3032:	
;main.c: 710: {
;main.c: 711: if(++overChrgTime > 10)
	movlw	low(0Bh)
	incf	(_overChrgTime),f
	subwf	((_overChrgTime)),w
	skipc
	goto	u3241
	goto	u3240
u3241:
	goto	l3040
u3240:
	line	713
	
l3034:	
;main.c: 712: {
;main.c: 713: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	714
	
l3036:	
;main.c: 714: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l3040
	line	720
	
l3038:	
;main.c: 718: else
;main.c: 719: {
;main.c: 720: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	722
	
l3040:	
;main.c: 721: }
;main.c: 722: outADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_outADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_outADValue)
	line	724
	
l3042:	
;main.c: 724: if(workStep && (outADValue > 600))
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3251
	goto	u3250
u3251:
	goto	l3050
u3250:
	
l3044:	
	movlw	02h
	subwf	(_outADValue+1),w
	movlw	059h
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3261
	goto	u3260
u3261:
	goto	l3050
u3260:
	line	726
	
l3046:	
;main.c: 725: {
;main.c: 726: if(++workOverOutTime > 50)
	movlw	low(033h)
	incf	(_workOverOutTime),f
	subwf	((_workOverOutTime)),w
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l858
u3270:
	line	728
	
l3048:	
;main.c: 727: {
;main.c: 728: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	729
;main.c: 729: workStep = 0;
	clrf	(_workStep)
	goto	l858
	line	734
	
l3050:	
;main.c: 732: else
;main.c: 733: {
;main.c: 734: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	goto	l858
	line	741
	
l3052:	
;main.c: 739: else
;main.c: 740: {
;main.c: 741: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	742
;main.c: 742: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	743
	
l3054:	
;main.c: 743: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkOutA+0)+0),f
	u3657:
decfsz	(??_checkOutA+0)+0,f
	goto	u3657
opt asmopt_pop

	line	745
	
l858:	
	return
	opt stack 0
GLOBAL	__end_of_checkOutA
	__end_of_checkOutA:
	signat	_checkOutA,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 747 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	747
global __ptext13
__ptext13:	;psect for function _checkBatAD
psect	text13
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	747
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	749
	
l3056:	
;main.c: 749: test_adc = ADC_Sample(2, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(02h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	750
	
l3058:	
;main.c: 750: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l3088
u3280:
	line	752
	
l3060:	
;main.c: 751: {
;main.c: 752: batADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_batADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_batADValue)
	line	753
;main.c: 753: if(batADValue < 1117)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Dh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3291
	goto	u3290
u3291:
	goto	l3070
u3290:
	line	755
	
l3062:	
;main.c: 754: {
;main.c: 755: pwStep = 0;
	clrf	(_pwStep)
	line	756
	
l3064:	
;main.c: 756: if(++count8s > 800)
	incf	(_count8s),f
	skipnz
	incf	(_count8s+1),f
	movlw	03h
	subwf	((_count8s+1)),w
	movlw	021h
	skipnz
	subwf	((_count8s)),w
	skipc
	goto	u3301
	goto	u3300
u3301:
	goto	l3082
u3300:
	line	758
	
l3066:	
;main.c: 757: {
;main.c: 758: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	759
	
l3068:	
;main.c: 759: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	760
;main.c: 760: prePwStep = 0;
	clrf	(_prePwStep)
	line	761
;main.c: 761: workStep = 0;
	clrf	(_workStep)
	goto	l3082
	line	766
	
l3070:	
;main.c: 764: else
;main.c: 765: {
;main.c: 766: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	767
	
l3072:	
;main.c: 767: if(batADValue >= 1340)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	03Ch
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3311
	goto	u3310
u3311:
	goto	l3076
u3310:
	line	769
	
l3074:	
;main.c: 768: {
;main.c: 769: pwStep = ((batADValue - 1340) /2) + 13;
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
	line	770
;main.c: 770: }
	goto	l3078
	line	773
	
l3076:	
;main.c: 771: else
;main.c: 772: {
;main.c: 773: pwStep = (batADValue - 1117) / 16;
	movf	(_batADValue),w
	addlw	low(0FBA3h)
	movwf	(??_checkBatAD+0)+0
	movf	(_batADValue+1),w
	skipnc
	addlw	1
	addlw	high(0FBA3h)
	movwf	1+(??_checkBatAD+0)+0
	movlw	04h
u3325:
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	addlw	-1
	skipz
	goto	u3325
	movf	0+(??_checkBatAD+0)+0,w
	movwf	(_pwStep)
	line	775
	
l3078:	
;main.c: 774: }
;main.c: 775: if(pwStep > 99)
	movlw	low(064h)
	subwf	(_pwStep),w
	skipc
	goto	u3331
	goto	u3330
u3331:
	goto	l3082
u3330:
	line	777
	
l3080:	
;main.c: 776: {
;main.c: 777: pwStep = 99;
	movlw	low(063h)
	movwf	(_pwStep)
	line	780
	
l3082:	
;main.c: 778: }
;main.c: 779: }
;main.c: 780: if(chrgFlag && batADValue > 1861)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l3092
u3340:
	
l3084:	
	movlw	07h
	subwf	(_batADValue+1),w
	movlw	046h
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3351
	goto	u3350
u3351:
	goto	l3092
u3350:
	line	782
	
l3086:	
;main.c: 781: {
;main.c: 782: protectFlag = 1;
	clrf	(_protectFlag)
	incf	(_protectFlag),f
	goto	l3092
	line	787
	
l3088:	
;main.c: 785: else
;main.c: 786: {
;main.c: 787: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	788
;main.c: 788: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	789
	
l3090:	
;main.c: 789: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u3667:
decfsz	(??_checkBatAD+0)+0,f
	goto	u3667
opt asmopt_pop

	line	792
	
l3092:	
;main.c: 790: }
;main.c: 792: test_adc = ADC_Sample(1, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(01h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	793
	
l3094:	
;main.c: 793: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3361
	goto	u3360
u3361:
	goto	l3112
u3360:
	line	795
	
l3096:	
;main.c: 794: {
;main.c: 795: if(chrgFlag && adresult > 100)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l878
u3370:
	
l3098:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	065h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l878
u3380:
	line	798
	
l3100:	
;main.c: 796: {
;main.c: 798: if(adresult > 810 || (batADValue - adresult) > 810)
	movlw	03h
	subwf	(_adresult+1),w	;volatile
	movlw	02Bh
	skipnz
	subwf	(_adresult),w	;volatile
	skipnc
	goto	u3391
	goto	u3390
u3391:
	goto	l3104
u3390:
	
l3102:	
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
	goto	u3401
	goto	u3400
u3401:
	goto	l3110
u3400:
	line	801
	
l3104:	
;main.c: 799: {
;main.c: 801: if(++countHalfFull > 250)
	movlw	low(0FBh)
	incf	(_countHalfFull),f
	subwf	((_countHalfFull)),w
	skipc
	goto	u3411
	goto	u3410
u3411:
	goto	l871
u3410:
	line	803
	
l3106:	
;main.c: 802: {
;main.c: 803: countHalfFull = 0;
	clrf	(_countHalfFull)
	line	804
	
l3108:	
;main.c: 804: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l878
	line	809
	
l3110:	
;main.c: 807: else
;main.c: 808: {
;main.c: 809: countHalfFull = 0;
	clrf	(_countHalfFull)
	goto	l878
	line	811
	
l871:	
	line	812
;main.c: 810: }
;main.c: 811: }
;main.c: 812: }
	goto	l878
	line	815
	
l3112:	
;main.c: 813: else
;main.c: 814: {
;main.c: 815: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	816
;main.c: 816: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	817
	
l3114:	
;main.c: 817: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u3677:
decfsz	(??_checkBatAD+0)+0,f
	goto	u3677
opt asmopt_pop

	line	820
	
l878:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 1066 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	1066
global __ptext14
__ptext14:	;psect for function _ADC_Sample
psect	text14
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	1066
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	1068
	
l2934:	
;main.c: 1068: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1069
	
l2936:	
;main.c: 1069: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1070
;main.c: 1070: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	1072
	
l2938:	
;main.c: 1072: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u3031
	goto	u3030
u3031:
	goto	l2944
u3030:
	
l2940:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u3041
	goto	u3040
u3041:
	goto	l2944
u3040:
	line	1075
	
l2942:	
;main.c: 1073: {
;main.c: 1075: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1076
;main.c: 1076: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_ADC_Sample+0)+0),f
	u3687:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u3687
	nop2
opt asmopt_pop

	line	1077
;main.c: 1077: }
	goto	l2946
	line	1079
	
l2944:	
;main.c: 1078: else
;main.c: 1079: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1081
	
l2946:	
;main.c: 1081: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u3051
	goto	u3050
u3051:
	goto	l2952
u3050:
	line	1083
	
l2948:	
;main.c: 1082: {
;main.c: 1083: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	1084
	
l2950:	
;main.c: 1084: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	1086
	
l2952:	
	line	1087
	
l2954:	
;main.c: 1087: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	1089
	
l2960:	
;main.c: 1088: {
;main.c: 1089: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u3065:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u3065
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	1090
# 1090 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1091
# 1091 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1092
# 1092 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1093
# 1093 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
psect	text14
	line	1094
	
l2962:	
;main.c: 1094: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	1096
	
l2964:	
;main.c: 1096: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	1097
;main.c: 1097: while (GODONE)
	goto	l913
	
l914:	
	line	1099
;main.c: 1098: {
;main.c: 1099: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	1101
;main.c: 1101: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u3071
	goto	u3070
u3071:
	goto	l913
u3070:
	line	1102
	
l2966:	
;main.c: 1102: return 0;
	movlw	low(0)
	goto	l916
	line	1103
	
l913:	
	line	1097
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u3081
	goto	u3080
u3081:
	goto	l914
u3080:
	line	1105
	
l2970:	
;main.c: 1103: }
;main.c: 1105: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l2972:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	1107
	
l2974:	
;main.c: 1107: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u3091
	goto	u3090
u3091:
	goto	l2978
u3090:
	line	1109
	
l2976:	
;main.c: 1108: {
;main.c: 1109: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	1110
;main.c: 1110: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1111
;main.c: 1111: }
	goto	l919
	line	1112
	
l2978:	
;main.c: 1112: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u3105
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u3105:
	skipnc
	goto	u3101
	goto	u3100
u3101:
	goto	l2982
u3100:
	line	1113
	
l2980:	
;main.c: 1113: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l919
	line	1114
	
l2982:	
;main.c: 1114: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u3115
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u3115:
	skipnc
	goto	u3111
	goto	u3110
u3111:
	goto	l919
u3110:
	line	1115
	
l2984:	
;main.c: 1115: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1117
	
l919:	
;main.c: 1117: adsum += ad_temp;
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
	goto	u3121
	addwf	(ADC_Sample@adsum+1),f	;volatile
u3121:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3122
	addwf	(ADC_Sample@adsum+2),f	;volatile
u3122:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3123
	addwf	(ADC_Sample@adsum+3),f	;volatile
u3123:

	line	1087
	
l2986:	
	incf	(ADC_Sample@i),f
	
l2988:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u3131
	goto	u3130
u3131:
	goto	l2960
u3130:
	line	1119
	
l2990:	
;main.c: 1118: }
;main.c: 1119: adsum -= admax;
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
	goto	u3145
	goto	u3146
u3145:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3146:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3147
	goto	u3148
u3147:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3148:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3149
	goto	u3140
u3149:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3140:

	line	1120
;main.c: 1120: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u3155
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u3155
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u3155
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u3155:
	skipc
	goto	u3151
	goto	u3150
u3151:
	goto	l923
u3150:
	line	1121
	
l2992:	
;main.c: 1121: adsum -= admin;
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
	goto	u3165
	goto	u3166
u3165:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u3166:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u3167
	goto	u3168
u3167:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u3168:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u3169
	goto	u3160
u3169:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u3160:

	goto	l2994
	line	1122
	
l923:	
	line	1123
;main.c: 1122: else
;main.c: 1123: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1125
	
l2994:	
;main.c: 1125: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u3175:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u3170:
	addlw	-1
	skipz
	goto	u3175
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	1127
	
l2996:	
;main.c: 1127: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1128
	
l2998:	
;main.c: 1128: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	1129
	
l3000:	
;main.c: 1129: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1130
	
l3002:	
;main.c: 1130: return 0xA5;
	movlw	low(0A5h)
	line	1132
	
l916:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 989 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	989
global __ptext15
__ptext15:	;psect for function _Sleep_Mode
psect	text15
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	989
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 4
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	991
	
l2786:	
;main.c: 991: INTCON = 0;
	clrf	(11)	;volatile
	line	993
;main.c: 993: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	995
;main.c: 995: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	996
	
l2788:	
;main.c: 996: TRISA = 0x27;
	movlw	low(027h)
	movwf	(133)^080h	;volatile
	line	997
	
l2790:	
;main.c: 997: TRISB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	999
;main.c: 999: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	1000
;main.c: 1000: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	1001
	
l2792:	
;main.c: 1001: WPUB = 0x04;
	movlw	low(04h)
	movwf	(8)	;volatile
	line	1003
	
l2794:	
;main.c: 1003: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	1004
	
l2796:	
;main.c: 1004: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	1006
	
l2798:	
;main.c: 1006: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	1008
;main.c: 1008: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	1010
;main.c: 1010: IOCA = 0x20;
	movlw	low(020h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(137)^080h	;volatile
	line	1011
;main.c: 1011: IOCB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	1013
	
l2800:	
;main.c: 1013: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	1014
	
l2802:	
;main.c: 1014: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	1015
	
l2804:	
;main.c: 1015: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	1016
	
l2806:	
;main.c: 1016: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	1018
	
l2808:	
;main.c: 1018: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	1019
	
l2810:	
;main.c: 1019: PIR1 = 0;
	clrf	(13)	;volatile
	line	1020
	
l2812:	
;main.c: 1020: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	1022
	
l2814:	
;main.c: 1022: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	1023
	
l2816:	
;main.c: 1023: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	1024
	
l2818:	
;main.c: 1024: PORTB;
	movf	(6),w	;volatile
	line	1025
	
l2820:	
;main.c: 1025: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	1026
# 1026 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
clrwdt ;# 
	line	1028
# 1028 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
sleep ;# 
	line	1030
# 1030 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1031
# 1031 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
clrwdt ;# 
	line	1032
# 1032 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1033
# 1033 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1034
# 1034 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1035
# 1035 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	1036
# 1036 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
psect	text15
	line	1037
	
l2822:	
;main.c: 1037: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u2831
	goto	u2830
u2831:
	goto	l902
u2830:
	
l2824:	
	bcf	(107/8),(107)&7	;volatile
	
l902:	
	line	1038
;main.c: 1038: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u2841
	goto	u2840
u2841:
	goto	l903
u2840:
	
l2826:	
	bcf	(88/8),(88)&7	;volatile
	
l903:	
	line	1039
;main.c: 1039: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u2851
	goto	u2850
u2851:
	goto	l2830
u2850:
	
l2828:	
	bcf	(105/8),(105)&7	;volatile
	line	1040
	
l2830:	
;main.c: 1040: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	1041
;main.c: 1041: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	1042
	
l2832:	
;main.c: 1042: Init_System();
	fcall	_Init_System
	line	1043
	
l2834:	
;main.c: 1043: AD_Init();
	fcall	_AD_Init
	line	1044
	
l905:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 831 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	831
global __ptext16
__ptext16:	;psect for function _Init_System
psect	text16
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	831
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	833
	
l2120:	
# 833 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
nop ;# 
	line	834
# 834 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
clrwdt ;# 
psect	text16
	line	835
	
l2122:	
;main.c: 835: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	836
# 836 "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
clrwdt ;# 
psect	text16
	line	837
	
l2124:	
;main.c: 837: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	839
	
l2126:	
;main.c: 839: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	840
	
l2128:	
;main.c: 840: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	841
	
l2130:	
;main.c: 841: WPUB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	843
	
l2132:	
;main.c: 843: TRISA = 0x27;
	movlw	low(027h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	844
	
l2134:	
;main.c: 844: TRISB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	846
;main.c: 846: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	847
;main.c: 847: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	851
	
l2136:	
;main.c: 851: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	852
	
l2138:	
;main.c: 852: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	853
	
l2140:	
;main.c: 853: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	855
	
l2142:	
;main.c: 855: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	856
	
l2144:	
;main.c: 856: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	857
	
l881:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 868 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	868
global __ptext17
__ptext17:	;psect for function _AD_Init
psect	text17
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	868
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _AD_Init: [wreg+status,2]
	line	901
	
l2146:	
;main.c: 901: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	918
	
l2148:	
;main.c: 918: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	919
	
l2150:	
;main.c: 919: ANSEL0 = 0X07;
	movlw	low(07h)
	movwf	(147)^080h	;volatile
	line	920
;main.c: 920: ANSEL1 = 0x00;
	clrf	(148)^080h	;volatile
	line	921
	
l884:	
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
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	130
global __ptext18
__ptext18:	;psect for function _Isr_Timer
psect	text18
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	130
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
psect	text18
	line	132
	
i1l2836:	
;main.c: 132: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u286_21
	goto	u286_20
u286_21:
	goto	i1l684
u286_20:
	line	134
	
i1l2838:	
;main.c: 133: {
;main.c: 134: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	135
	
i1l2840:	
;main.c: 135: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u287_21
	goto	u287_20
u287_21:
	goto	i1l2850
u287_20:
	line	137
	
i1l2842:	
;main.c: 136: {
;main.c: 137: intCount = 0;
	clrf	(_intCount)
	line	138
	
i1l2844:	
;main.c: 138: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	139
	
i1l2846:	
;main.c: 139: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u288_21
	goto	u288_20
u288_21:
	goto	i1l2850
u288_20:
	line	141
	
i1l2848:	
;main.c: 140: {
;main.c: 141: count1s = 0;
	clrf	(_count1s)
	line	144
	
i1l2850:	
;main.c: 142: }
;main.c: 143: }
;main.c: 144: ledShow();
	fcall	_ledShow
	line	145
	
i1l2852:	
;main.c: 145: intCount10++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_intCount10),f
	line	148
	
i1l684:	
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
;;		line 199 in file "C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
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
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	199
global __ptext19
__ptext19:	;psect for function _ledShow
psect	text19
	file	"C:\mcuproject\scm\zdt\D212_062B_SOP14\main.c"
	line	199
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 4
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	201
	
i1l2354:	
;main.c: 201: if(++ledCntTime > 5)
	movlw	low(06h)
	incf	(_ledCntTime),f
	subwf	((_ledCntTime)),w
	skipc
	goto	u184_21
	goto	u184_20
u184_21:
	goto	i1l741
u184_20:
	line	203
	
i1l2356:	
;main.c: 202: {
;main.c: 203: ledCntTime = 0;
	clrf	(_ledCntTime)
	line	204
	
i1l2358:	
;main.c: 204: if(++ledCnt > 16)
	movlw	low(011h)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u185_21
	goto	u185_20
u185_21:
	goto	i1l2362
u185_20:
	line	206
	
i1l2360:	
;main.c: 205: {
;main.c: 206: ledCnt = 0;
	clrf	(_ledCnt)
	line	208
	
i1l2362:	
;main.c: 207: }
;main.c: 208: PORTA &= 0xE7;
	movlw	low(0E7h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	209
	
i1l2364:	
;main.c: 209: PORTB &= 0xDC;
	movlw	low(0DCh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(6),f	;volatile
	line	210
	
i1l2366:	
;main.c: 210: TRISA |= 0x18;
	movlw	low(018h)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	211
	
i1l2368:	
;main.c: 211: TRISB |= 0x23;
	movlw	low(023h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(5),f	;volatile
	line	212
;main.c: 212: switch(ledCnt)
	goto	i1l2418
	line	214
;main.c: 213: {
;main.c: 214: case 1:
	
i1l705:	
	line	215
;main.c: 215: if(shiweiNum & 0x01)
	btfss	(_shiweiNum),(0)&7
	goto	u186_21
	goto	u186_20
u186_21:
	goto	i1l741
u186_20:
	line	217
	
i1l2370:	
;main.c: 216: {
;main.c: 217: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	218
;main.c: 218: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	219
;main.c: 219: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	220
;main.c: 220: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	goto	i1l741
	line	223
;main.c: 223: case 2:
	
i1l708:	
	line	224
;main.c: 224: if(shiweiNum & 0x02)
	btfss	(_shiweiNum),(1)&7
	goto	u187_21
	goto	u187_20
u187_21:
	goto	i1l741
u187_20:
	line	226
	
i1l2372:	
;main.c: 225: {
;main.c: 226: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	227
;main.c: 227: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	228
;main.c: 228: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	229
;main.c: 229: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	goto	i1l741
	line	232
;main.c: 232: case 3:
	
i1l710:	
	line	233
;main.c: 233: if(shiweiNum & 0x04)
	btfss	(_shiweiNum),(2)&7
	goto	u188_21
	goto	u188_20
u188_21:
	goto	i1l741
u188_20:
	line	235
	
i1l2374:	
;main.c: 234: {
;main.c: 235: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	236
;main.c: 236: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	237
;main.c: 237: RB5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	line	238
;main.c: 238: RA3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l741
	line	241
;main.c: 241: case 4:
	
i1l712:	
	line	242
;main.c: 242: if(shiweiNum & 0x08)
	btfss	(_shiweiNum),(3)&7
	goto	u189_21
	goto	u189_20
u189_21:
	goto	i1l741
u189_20:
	line	244
	
i1l2376:	
;main.c: 243: {
;main.c: 244: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	245
;main.c: 245: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	246
;main.c: 246: RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	247
;main.c: 247: RA3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l741
	line	250
;main.c: 250: case 5:
	
i1l714:	
	line	251
;main.c: 251: if(shiweiNum & 0x10)
	btfss	(_shiweiNum),(4)&7
	goto	u190_21
	goto	u190_20
u190_21:
	goto	i1l741
u190_20:
	line	253
	
i1l2378:	
;main.c: 252: {
;main.c: 253: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	254
;main.c: 254: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	255
;main.c: 255: RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	line	256
;main.c: 256: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l741
	line	259
;main.c: 259: case 6:
	
i1l716:	
	line	260
;main.c: 260: if(shiweiNum & 0x20)
	btfss	(_shiweiNum),(5)&7
	goto	u191_21
	goto	u191_20
u191_21:
	goto	i1l741
u191_20:
	line	262
	
i1l2380:	
;main.c: 261: {
;main.c: 262: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	263
;main.c: 263: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	264
;main.c: 264: RB5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	line	265
;main.c: 265: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l741
	line	268
;main.c: 268: case 7:
	
i1l718:	
	line	269
;main.c: 269: if(shiweiNum & 0x40)
	btfss	(_shiweiNum),(6)&7
	goto	u192_21
	goto	u192_20
u192_21:
	goto	i1l741
u192_20:
	line	271
	
i1l2382:	
;main.c: 270: {
;main.c: 271: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	272
;main.c: 272: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	273
;main.c: 273: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	274
;main.c: 274: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l741
	line	277
;main.c: 277: case 8:
	
i1l720:	
	line	278
;main.c: 278: if(geweiNum & 0x01)
	btfss	(_geweiNum),(0)&7
	goto	u193_21
	goto	u193_20
u193_21:
	goto	i1l741
u193_20:
	line	280
	
i1l2384:	
;main.c: 279: {
;main.c: 280: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	281
;main.c: 281: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	282
;main.c: 282: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	283
;main.c: 283: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	goto	i1l741
	line	286
;main.c: 286: case 9:
	
i1l722:	
	line	287
;main.c: 287: if(geweiNum & 0x02)
	btfss	(_geweiNum),(1)&7
	goto	u194_21
	goto	u194_20
u194_21:
	goto	i1l741
u194_20:
	line	289
	
i1l2386:	
;main.c: 288: {
;main.c: 289: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	290
;main.c: 290: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	291
;main.c: 291: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	292
;main.c: 292: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	goto	i1l741
	line	295
;main.c: 295: case 10:
	
i1l724:	
	line	296
;main.c: 296: if(geweiNum & 0x04)
	btfss	(_geweiNum),(2)&7
	goto	u195_21
	goto	u195_20
u195_21:
	goto	i1l741
u195_20:
	line	298
	
i1l2388:	
;main.c: 297: {
;main.c: 298: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	299
;main.c: 299: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	300
;main.c: 300: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	301
;main.c: 301: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	goto	i1l741
	line	304
;main.c: 304: case 11:
	
i1l726:	
	line	305
;main.c: 305: if(geweiNum & 0x08)
	btfss	(_geweiNum),(3)&7
	goto	u196_21
	goto	u196_20
u196_21:
	goto	i1l741
u196_20:
	line	307
	
i1l2390:	
;main.c: 306: {
;main.c: 307: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	308
;main.c: 308: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	309
;main.c: 309: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	310
;main.c: 310: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	goto	i1l741
	line	313
;main.c: 313: case 12:
	
i1l728:	
	line	314
;main.c: 314: if(geweiNum & 0x10)
	btfss	(_geweiNum),(4)&7
	goto	u197_21
	goto	u197_20
u197_21:
	goto	i1l741
u197_20:
	line	316
	
i1l2392:	
;main.c: 315: {
;main.c: 316: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	317
;main.c: 317: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	318
;main.c: 318: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	319
;main.c: 319: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	goto	i1l741
	line	322
;main.c: 322: case 13:
	
i1l730:	
	line	323
;main.c: 323: if(geweiNum & 0x20)
	btfss	(_geweiNum),(5)&7
	goto	u198_21
	goto	u198_20
u198_21:
	goto	i1l741
u198_20:
	line	325
	
i1l2394:	
;main.c: 324: {
;main.c: 325: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	326
;main.c: 326: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	327
;main.c: 327: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(49/8),(49)&7	;volatile
	line	328
;main.c: 328: RA3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l741
	line	331
;main.c: 331: case 0:
	
i1l732:	
	line	332
;main.c: 332: if(geweiNum & 0x40)
	btfss	(_geweiNum),(6)&7
	goto	u199_21
	goto	u199_20
u199_21:
	goto	i1l741
u199_20:
	line	334
	
i1l2396:	
;main.c: 333: {
;main.c: 334: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	335
;main.c: 335: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	336
;main.c: 336: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(49/8),(49)&7	;volatile
	line	337
;main.c: 337: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l741
	line	341
	
i1l2398:	
;main.c: 341: if(chrgFlag == 0 && RB2 == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l741
u200_20:
	
i1l2400:	
	btfsc	(50/8),(50)&7	;volatile
	goto	u201_21
	goto	u201_20
u201_21:
	goto	i1l741
u201_20:
	line	343
	
i1l2402:	
;main.c: 342: {
;main.c: 343: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	344
;main.c: 344: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	345
;main.c: 345: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	346
;main.c: 346: RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	goto	i1l741
	line	350
	
i1l2404:	
;main.c: 350: if(chrgFlag == 0 && RB2 == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u202_21
	goto	u202_20
u202_21:
	goto	i1l741
u202_20:
	
i1l2406:	
	btfsc	(50/8),(50)&7	;volatile
	goto	u203_21
	goto	u203_20
u203_21:
	goto	i1l741
u203_20:
	goto	i1l2402
	line	359
	
i1l2410:	
;main.c: 359: if(chrgFlag == 0 && RB2 == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u204_21
	goto	u204_20
u204_21:
	goto	i1l741
u204_20:
	
i1l2412:	
	btfsc	(50/8),(50)&7	;volatile
	goto	u205_21
	goto	u205_20
u205_21:
	goto	i1l741
u205_20:
	goto	i1l2402
	line	212
	
i1l2418:	
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
goto i1l741
movlw high(i1S3242)
movwf pclath
	movlw low(i1S3242)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S3242:
	ljmp	i1l732
	ljmp	i1l705
	ljmp	i1l708
	ljmp	i1l710
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
	ljmp	i1l2398
	ljmp	i1l2404
	ljmp	i1l2410
psect	text19

	line	373
	
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
