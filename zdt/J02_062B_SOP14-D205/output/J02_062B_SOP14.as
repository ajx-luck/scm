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
	file	"C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
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
	global	_tempDuty
	global	_overCount
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
	global	_RA4
_RA4	set	1076
	global	_RA5
_RA5	set	1077
; #config settings
	file	"J02_062B_SOP14.as"
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

	file	"J02_062B_SOP14.as"
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
	movlw	low((__pbssBANK0)+035h)
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
	global	checkOutA@maxtempV
checkOutA@maxtempV:	; 1 bytes @ 0x11
	ds	1
	global	checkOutA@maxAout
checkOutA@maxAout:	; 1 bytes @ 0x12
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    14
;!    Data        0
;!    BSS         57
;!    Persistent  3
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      11
;!    BANK0            80     19      75
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
;! (0) _main                                                 0     0      0    2864
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
;! (1) _ledCtr                                               0     0      0     748
;!                            ___lbdiv
;!                            ___lbmod
;! ---------------------------------------------------------------------------------
;! (2) ___lbmod                                              5     4      1     427
;!                                              3 COMMON     2     1      1
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) ___lbdiv                                              4     3      1     321
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
;! (1) _checkOutA                                            4     4      0    1072
;!                                              4 COMMON     2     2      0
;!                                             17 BANK0      2     2      0
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
;!BANK0               50     13      4B       4       93.8%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      56       7        0.0%
;!DATA                 0      0      56       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 155 in file "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
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
	file	"C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
	line	155
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
	line	155
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	157
	
l3221:	
;main.c: 157: Init_System();
	fcall	_Init_System
	line	158
;main.c: 158: AD_Init();
	fcall	_AD_Init
	line	159
	
l3223:	
;main.c: 159: shiweiNum = geweiNum = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_geweiNum)
	movwf	(_shiweiNum)
	line	160
	
l3225:	
;main.c: 160: firstTime = 200;
	movlw	low(0C8h)
	movwf	(_firstTime)
	line	161
;main.c: 161: while (1)
	
l693:	
	line	163
# 163 "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
clrwdt ;# 
psect	maintext
	line	164
	
l3227:	
;main.c: 164: if(intCount10 > 10)
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_intCount10),w
	skipc
	goto	u3541
	goto	u3540
u3541:
	goto	l3233
u3540:
	line	166
	
l3229:	
;main.c: 165: {
;main.c: 166: intCount10 = 0;
	clrf	(_intCount10)
	line	167
	
l3231:	
;main.c: 167: checkOutA();
	fcall	_checkOutA
	line	169
	
l3233:	
;main.c: 168: }
;main.c: 169: if(!IntFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u3551
	goto	u3550
u3551:
	goto	l3237
u3550:
	goto	l693
	line	171
	
l3237:	
;main.c: 171: IntFlag = 0;
	clrf	(_IntFlag)
	line	172
	
l3239:	
;main.c: 172: chrgCtr();
	fcall	_chrgCtr
	line	173
	
l3241:	
;main.c: 173: checkBatAD();
	fcall	_checkBatAD
	line	174
	
l3243:	
;main.c: 174: if(chrgFlag == 0 && lowBatFlag == 0 && firstTime == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3561
	goto	u3560
u3561:
	goto	l697
u3560:
	
l3245:	
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u3571
	goto	u3570
u3571:
	goto	l697
u3570:
	
l3247:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3581
	goto	u3580
u3581:
	goto	l697
u3580:
	line	176
	
l3249:	
;main.c: 175: {
;main.c: 176: keyCtr();
	fcall	_keyCtr
	line	177
	
l697:	
	line	178
;main.c: 177: }
;main.c: 178: workCtr();
	fcall	_workCtr
	line	179
	
l3251:	
;main.c: 179: ledCtr();
	fcall	_ledCtr
	line	180
	
l3253:	
;main.c: 180: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && showBatTime == 0 && overWorkTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3591
	goto	u3590
u3591:
	goto	l3273
u3590:
	
l3255:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u3601
	goto	u3600
u3601:
	goto	l3273
u3600:
	
l3257:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u3611
	goto	u3610
u3611:
	goto	l3273
u3610:
	
l3259:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3621
	goto	u3620
u3621:
	goto	l3273
u3620:
	
l3261:	
	movf	((_showBatTime)),w
	btfss	status,2
	goto	u3631
	goto	u3630
u3631:
	goto	l3273
u3630:
	
l3263:	
	movf	((_overWorkTime)),w
iorwf	((_overWorkTime+1)),w
	btfss	status,2
	goto	u3641
	goto	u3640
u3641:
	goto	l3273
u3640:
	line	182
	
l3265:	
;main.c: 181: {
;main.c: 182: shiweiNum = geweiNum = 0;
	clrf	(_geweiNum)
	clrf	(_shiweiNum)
	line	183
	
l3267:	
;main.c: 183: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u3651
	goto	u3650
u3651:
	goto	l693
u3650:
	line	185
	
l3269:	
;main.c: 184: {
;main.c: 185: sleepTime = 0;
	clrf	(_sleepTime)
	line	186
	
l3271:	
;main.c: 186: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l693
	line	191
	
l3273:	
;main.c: 189: else
;main.c: 190: {
;main.c: 191: sleepTime = 0;
	clrf	(_sleepTime)
	goto	l693
	global	start
	ljmp	start
	opt stack 0
	line	194
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 662 in file "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
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
	line	662
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
	line	662
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	665
	
l2737:	
;main.c: 665: if(startTime > 0)
	movf	((_startTime)),w
	btfsc	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l2741
u2640:
	line	667
	
l2739:	
;main.c: 666: {
;main.c: 667: startTime--;
	decf	(_startTime),f
	line	669
	
l2741:	
;main.c: 668: }
;main.c: 669: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l2763
u2650:
	line	671
	
l2743:	
;main.c: 670: {
;main.c: 671: if(motorPwmFlag == 0)
	movf	((_motorPwmFlag)),w
	btfss	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l2747
u2660:
	line	673
	
l2745:	
;main.c: 672: {
;main.c: 673: pwmInit();
	fcall	_pwmInit
	line	676
	
l2747:	
;main.c: 675: }
;main.c: 676: maxDuty = 60 + (workStep/2);
	clrc
	rrf	(_workStep),w
	addlw	03Ch
	movwf	(_maxDuty)
	line	677
	
l2749:	
;main.c: 677: if(overCount >= 5)
	movlw	low(05h)
	subwf	(_overCount),w
	skipc
	goto	u2671
	goto	u2670
u2671:
	goto	l2755
u2670:
	line	679
	
l2751:	
;main.c: 678: {
;main.c: 679: if(++count5s > 600)
	incf	(_count5s),f
	skipnz
	incf	(_count5s+1),f
	movlw	02h
	subwf	((_count5s+1)),w
	movlw	059h
	skipnz
	subwf	((_count5s)),w
	skipc
	goto	u2681
	goto	u2680
u2681:
	goto	l2757
u2680:
	line	681
	
l2753:	
;main.c: 680: {
;main.c: 681: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	682
;main.c: 684: prejrStep = jrStep;
	clrf	(_overWorkTime)
	clrf	(_overWorkTime+1)
	line	685
;main.c: 686: jrStep = 0;
	clrf	(_workStep)
	goto	l2757
	line	691
	
l2755:	
;main.c: 689: else
;main.c: 690: {
;main.c: 691: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	693
	
l2757:	
;main.c: 692: }
;main.c: 693: if(count1s == 0 && ++count900s >= 900)
	movf	((_count1s)),w
	btfss	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l837
u2690:
	
l2759:	
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	movlw	03h
	subwf	((_count900s+1)),w
	movlw	084h
	skipnz
	subwf	((_count900s)),w
	skipc
	goto	u2701
	goto	u2700
u2701:
	goto	l837
u2700:
	line	695
	
l2761:	
;main.c: 696: jrStep = 0;
	clrf	(_workStep)
	goto	l837
	line	701
	
l2763:	
;main.c: 699: else
;main.c: 700: {
;main.c: 701: pwmStop();
	fcall	_pwmStop
	line	702
	
l2765:	
;main.c: 702: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	705
	
l837:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 1023 in file "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
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
	line	1023
global __ptext2
__ptext2:	;psect for function _pwmInit
psect	text2
	file	"C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
	line	1023
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2]
	line	1025
	
l2231:	
;main.c: 1025: motorPwmFlag = 1;
	clrf	(_motorPwmFlag)
	incf	(_motorPwmFlag),f
	line	1026
	
l2233:	
;main.c: 1026: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	1027
;main.c: 1027: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	1028
	
l2235:	
;main.c: 1028: PWMTL = 200;
	movlw	low(0C8h)
	movwf	(23)	;volatile
	line	1031
	
l2237:	
;main.c: 1031: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	1032
;main.c: 1032: PWMD3L = 80;
	movlw	low(050h)
	movwf	(156)^080h	;volatile
	line	1033
	
l2239:	
;main.c: 1033: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	1035
	
l2241:	
;main.c: 1035: PWMCON0 = 0X48;
	movlw	low(048h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	1036
;main.c: 1036: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	1037
	
l908:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_ledCtr

;; *************** function _ledCtr *****************
;; Defined at:
;;		line 364 in file "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
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
	line	364
global __ptext3
__ptext3:	;psect for function _ledCtr
psect	text3
	file	"C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
	line	364
	global	__size_of_ledCtr
	__size_of_ledCtr	equ	__end_of_ledCtr-_ledCtr
	
_ledCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _ledCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	366
	
l3187:	
;main.c: 366: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u3481
	goto	u3480
u3481:
	goto	l3195
u3480:
	line	368
	
l3189:	
;main.c: 367: {
;main.c: 368: firstTime--;
	decf	(_firstTime),f
	line	369
	
l3191:	
;main.c: 369: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u3491
	goto	u3490
u3491:
	goto	l756
u3490:
	line	371
	
l3193:	
;main.c: 370: {
;main.c: 371: prePwStep = pwStep;
	movf	(_pwStep),w
	movwf	(_prePwStep)
	goto	l756
	line	374
	
l3195:	
;main.c: 374: else if(overWorkTime > 0)
	movf	((_overWorkTime)),w
iorwf	((_overWorkTime+1)),w
	btfsc	status,2
	goto	u3501
	goto	u3500
u3501:
	goto	l3203
u3500:
	line	376
	
l3197:	
;main.c: 375: {
;main.c: 376: overWorkTime--;
	movlw	01h
	subwf	(_overWorkTime),f
	movlw	0
	skipc
	decf	(_overWorkTime+1),f
	subwf	(_overWorkTime+1),f
	line	377
	
l3199:	
;main.c: 377: shiweiNum = numArray[11];
	movlw	low((((_numArray+0Bh)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	378
	
l3201:	
;main.c: 378: geweiNum = numArray[12];
	movlw	low((((_numArray+0Ch)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	379
;main.c: 379: }
	goto	l756
	line	380
	
l3203:	
;main.c: 380: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u3511
	goto	u3510
u3511:
	goto	l3211
u3510:
	line	382
	
l3205:	
;main.c: 381: {
;main.c: 382: showBatTime--;
	decf	(_showBatTime),f
	line	383
	
l3207:	
;main.c: 383: shiweiNum = numArray[prePwStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	384
	
l3209:	
;main.c: 384: geweiNum = numArray[prePwStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_prePwStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	385
;main.c: 385: }
	goto	l756
	line	386
	
l3211:	
;main.c: 386: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l3215
u3520:
	line	390
	
l3213:	
;main.c: 387: {
;main.c: 390: shiweiNum = numArray[workStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_workStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	391
;main.c: 391: geweiNum = numArray[workStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_workStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	393
;main.c: 393: }
	goto	l756
	line	394
	
l3215:	
;main.c: 394: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l3219
u3530:
	line	396
	
l3217:	
;main.c: 395: {
;main.c: 396: shiweiNum = numArray[prePwStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	397
;main.c: 397: geweiNum = numArray[prePwStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_prePwStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	398
;main.c: 398: }
	goto	l756
	line	401
	
l3219:	
;main.c: 399: else
;main.c: 400: {
;main.c: 401: shiweiNum = 0;
	clrf	(_shiweiNum)
	line	402
;main.c: 402: geweiNum = 0;
	clrf	(_geweiNum)
	line	404
	
l756:	
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
	
l3015:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l3017:	
	clrf	(___lbmod@rem)
	line	12
	
l3019:	
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
	
l3021:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l3023:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u3111
	goto	u3110
u3111:
	goto	l3027
u3110:
	line	15
	
l3025:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l3027:	
	decfsz	(___lbmod@counter),f
	goto	u3121
	goto	u3120
u3121:
	goto	l3019
u3120:
	line	17
	
l3029:	
	movf	(___lbmod@rem),w
	line	18
	
l1212:	
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
	
l2315:	
	clrf	(___lbdiv@quotient)
	line	10
	
l2317:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1701
	goto	u1700
u1701:
	goto	l2335
u1700:
	line	11
	
l2319:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2323
	
l1201:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l2321:	
	incf	(___lbdiv@counter),f
	line	12
	
l2323:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1711
	goto	u1710
u1711:
	goto	l1201
u1710:
	line	16
	
l1203:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l2325:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1721
	goto	u1720
u1721:
	goto	l2331
u1720:
	line	19
	
l2327:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2329:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2331:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l2333:	
	decfsz	(___lbdiv@counter),f
	goto	u1731
	goto	u1730
u1731:
	goto	l1203
u1730:
	line	25
	
l2335:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1206:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 624 in file "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
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
	file	"C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
	line	624
global __ptext6
__ptext6:	;psect for function _keyCtr
psect	text6
	file	"C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
	line	624
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	626
	
l2707:	
;main.c: 626: char kclick = keyRead(0x04 & (~PORTB));
	comf	(6),w	;volatile
	andlw	04h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	627
	
l2709:	
;main.c: 627: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l2725
u2580:
	line	629
	
l2711:	
;main.c: 628: {
;main.c: 629: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l2717
u2590:
	line	631
	
l2713:	
;main.c: 630: {
;main.c: 631: if(++workStep > 32)
	movlw	low(021h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u2601
	goto	u2600
u2601:
	goto	l826
u2600:
	line	633
	
l2715:	
;main.c: 632: {
;main.c: 633: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l826
	line	636
	
l2717:	
;main.c: 636: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l2721
u2610:
	line	638
	
l2719:	
;main.c: 637: {
;main.c: 638: showBatTime = 0;
	clrf	(_showBatTime)
	line	639
;main.c: 639: }
	goto	l826
	line	642
	
l2721:	
;main.c: 640: else
;main.c: 641: {
;main.c: 642: showBatTime = 200;
	movlw	low(0C8h)
	movwf	(_showBatTime)
	line	643
	
l2723:	
;main.c: 643: count1s = 0;
	clrf	(_count1s)
	goto	l826
	line	646
	
l2725:	
;main.c: 646: else if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l826
u2620:
	line	648
	
l2727:	
;main.c: 647: {
;main.c: 648: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l824
u2630:
	line	650
	
l2729:	
;main.c: 649: {
;main.c: 650: workStep = 0;
	clrf	(_workStep)
	line	651
;main.c: 651: }
	goto	l826
	line	652
	
l824:	
	line	654
;main.c: 652: else
;main.c: 653: {
;main.c: 654: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	655
	
l2731:	
;main.c: 655: startTime = 30;
	movlw	low(01Eh)
	movwf	(_startTime)
	line	656
	
l2733:	
;main.c: 656: showBatTime = 0;
	clrf	(_showBatTime)
	line	657
	
l2735:	
;main.c: 657: overWorkTime = 0;
	clrf	(_overWorkTime)
	clrf	(_overWorkTime+1)
	line	660
	
l826:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 556 in file "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
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
	line	556
global __ptext7
__ptext7:	;psect for function _keyRead
psect	text7
	file	"C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
	line	556
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	558
	
l2191:	
;main.c: 558: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1501
	goto	u1500
u1501:
	goto	l2207
u1500:
	line	560
	
l2193:	
;main.c: 559: {
;main.c: 560: keyCount++;
	incf	(_keyCount),f
	line	561
	
l2195:	
;main.c: 561: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1511
	goto	u1510
u1511:
	goto	l2211
u1510:
	line	563
	
l2197:	
;main.c: 562: {
;main.c: 563: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	line	564
	
l2199:	
;main.c: 564: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1521
	goto	u1520
u1521:
	goto	l2211
u1520:
	line	566
	
l2201:	
;main.c: 565: {
;main.c: 566: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	567
	
l2203:	
;main.c: 567: return 2;
	movlw	low(02h)
	goto	l799
	line	573
	
l2207:	
;main.c: 571: else
;main.c: 572: {
;main.c: 573: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1531
	goto	u1530
u1531:
	goto	l2217
u1530:
	line	575
	
l2209:	
;main.c: 574: {
;main.c: 575: keyCount = 0;
	clrf	(_keyCount)
	line	576
;main.c: 576: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	577
	
l2211:	
;main.c: 577: return 0;
	movlw	low(0)
	goto	l799
	line	579
	
l2217:	
;main.c: 579: else if(keyCount >= 6)
	movlw	low(06h)
	subwf	(_keyCount),w
	skipc
	goto	u1541
	goto	u1540
u1541:
	goto	l2225
u1540:
	line	581
	
l2219:	
;main.c: 580: {
;main.c: 581: keyCount = 0;
	clrf	(_keyCount)
	line	582
	
l2221:	
;main.c: 582: return 1;
	movlw	low(01h)
	goto	l799
	line	584
	
l2225:	
;main.c: 583: }
;main.c: 584: keyCount = 0;
	clrf	(_keyCount)
	goto	l2211
	line	587
	
l799:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 408 in file "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
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
	line	408
global __ptext8
__ptext8:	;psect for function _chrgCtr
psect	text8
	file	"C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
	line	408
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	410
	
l2511:	
;main.c: 410: if(PORTA & 0x02)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(134)^080h,(1)&7	;volatile
	goto	u2161
	goto	u2160
u2161:
	goto	l2629
u2160:
	line	412
	
l2513:	
;main.c: 411: {
;main.c: 412: if(chrgFlag == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2171
	goto	u2170
u2171:
	goto	l2521
u2170:
	line	414
	
l2515:	
;main.c: 413: {
;main.c: 414: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	415
	
l2517:	
;main.c: 415: chrgMaxDuty = 0;
	clrf	(_chrgMaxDuty)
	line	416
	
l2519:	
;main.c: 416: chrgPwmStop();
	fcall	_chrgPwmStop
	line	419
	
l2521:	
;main.c: 419: workStep = 0;
	clrf	(_workStep)
	line	420
;main.c: 420: pwmStop();
	fcall	_pwmStop
	line	421
	
l2523:	
;main.c: 421: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	422
	
l2525:	
;main.c: 422: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u2181
	goto	u2180
u2181:
	goto	l2533
u2180:
	line	424
	
l2527:	
;main.c: 423: {
;main.c: 424: if(++count50s > 3000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	0Bh
	subwf	((_count50s+1)),w
	movlw	0B9h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u2191
	goto	u2190
u2191:
	goto	l2535
u2190:
	line	426
	
l2529:	
;main.c: 425: {
;main.c: 426: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	427
	
l2531:	
;main.c: 427: prePwStep++;
	incf	(_prePwStep),f
	goto	l2535
	line	432
	
l2533:	
;main.c: 430: else
;main.c: 431: {
;main.c: 432: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	434
	
l2535:	
;main.c: 433: }
;main.c: 434: if(protectFlag)
	movf	((_protectFlag)),w
	btfsc	status,2
	goto	u2201
	goto	u2200
u2201:
	goto	l2551
u2200:
	line	436
	
l2537:	
;main.c: 435: {
;main.c: 436: chrgPwmStop();
	fcall	_chrgPwmStop
	line	437
	
l2539:	
;main.c: 437: if(prePwStep < 99 && protectFlag == 1)
	movlw	low(063h)
	subwf	(_prePwStep),w
	skipnc
	goto	u2211
	goto	u2210
u2211:
	goto	l2547
u2210:
	
l2541:	
		decf	((_protectFlag)),w
	btfss	status,2
	goto	u2221
	goto	u2220
u2221:
	goto	l2547
u2220:
	line	439
	
l2543:	
;main.c: 438: {
;main.c: 439: if(++reChrgCount > 250)
	movlw	low(0FBh)
	incf	(_reChrgCount),f
	subwf	((_reChrgCount)),w
	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l768
u2230:
	line	441
	
l2545:	
;main.c: 440: {
;main.c: 441: reChrgCount = 0;
	clrf	(_reChrgCount)
	line	442
;main.c: 442: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	443
;main.c: 443: protectFlag = 0;
	clrf	(_protectFlag)
	goto	l768
	line	448
	
l2547:	
;main.c: 446: else
;main.c: 447: {
;main.c: 448: reChrgCount = 0;
	clrf	(_reChrgCount)
	goto	l768
	line	452
	
l2551:	
;main.c: 451: }
;main.c: 452: if(batADValue < 1118)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Eh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2241
	goto	u2240
u2241:
	goto	l2557
u2240:
	line	454
	
l2553:	
;main.c: 453: {
;main.c: 454: chrgMode = 0;
	clrf	(_chrgMode)
	line	455
	
l2555:	
;main.c: 455: chrgMaxAD = 15;
	movlw	low(0Fh)
	movwf	(_chrgMaxAD)
	line	456
;main.c: 456: }
	goto	l2575
	line	457
	
l2557:	
;main.c: 457: else if(batADValue < 1530)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	0FAh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2251
	goto	u2250
u2251:
	goto	l2565
u2250:
	line	459
	
l2559:	
;main.c: 458: {
;main.c: 459: chrgMode = 1;
	clrf	(_chrgMode)
	incf	(_chrgMode),f
	line	460
	
l2561:	
;main.c: 460: chrgMaxAD = 60;
	movlw	low(03Ch)
	movwf	(_chrgMaxAD)
	line	461
	
l2563:	
;main.c: 461: lockCount = 0;
	clrf	(_lockCount)
	line	462
;main.c: 462: }
	goto	l2575
	line	463
	
l2565:	
;main.c: 463: else if(count1s == 0)
	movf	((_count1s)),w
	btfss	status,2
	goto	u2261
	goto	u2260
u2261:
	goto	l2575
u2260:
	line	465
	
l2567:	
;main.c: 464: {
;main.c: 465: if(++lockCount > 200)
	movlw	low(0C9h)
	incf	(_lockCount),f
	subwf	((_lockCount)),w
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l2573
u2270:
	line	467
	
l2569:	
;main.c: 466: {
;main.c: 467: lockCount = 0;
	clrf	(_lockCount)
	line	468
	
l2571:	
;main.c: 468: chrgMode = 2;
	movlw	low(02h)
	movwf	(_chrgMode)
	line	471
	
l2573:	
;main.c: 469: }
;main.c: 471: chrgMaxAD = 60;
	movlw	low(03Ch)
	movwf	(_chrgMaxAD)
	line	473
	
l2575:	
;main.c: 472: }
;main.c: 473: if(chrgMode == 2 && outADValue < 8)
		movlw	2
	xorwf	((_chrgMode)),w
	btfss	status,2
	goto	u2281
	goto	u2280
u2281:
	goto	l2585
u2280:
	
l2577:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	08h
	skipnz
	subwf	(_outADValue),w
	skipnc
	goto	u2291
	goto	u2290
u2291:
	goto	l2585
u2290:
	line	475
	
l2579:	
;main.c: 474: {
;main.c: 475: if(++fullCount >= 200)
	incf	(_fullCount),f
	skipnz
	incf	(_fullCount+1),f
	movlw	0
	subwf	((_fullCount+1)),w
	movlw	0C8h
	skipnz
	subwf	((_fullCount)),w
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l2587
u2300:
	line	477
	
l2581:	
;main.c: 476: {
;main.c: 477: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	478
	
l2583:	
;main.c: 478: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l2587
	line	483
	
l2585:	
;main.c: 481: else
;main.c: 482: {
;main.c: 483: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	485
	
l2587:	
;main.c: 484: }
;main.c: 485: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u2311
	goto	u2310
u2311:
	goto	l2591
u2310:
	line	487
	
l2589:	
;main.c: 486: {
;main.c: 487: chrgPwmStop();
	fcall	_chrgPwmStop
	line	488
;main.c: 488: }
	goto	l768
	line	491
	
l2591:	
;main.c: 489: else
;main.c: 490: {
;main.c: 491: if(batADValue > 1550 || outADValue > (chrgMaxAD + 2))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	0Fh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2321
	goto	u2320
u2321:
	goto	l2595
u2320:
	
l2593:	
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
	goto	u2335
	movf	(_outADValue),w
	subwf	0+(??_chrgCtr+0)+0,w
u2335:
	skipnc
	goto	u2331
	goto	u2330
u2331:
	goto	l2607
u2330:
	line	493
	
l2595:	
;main.c: 492: {
;main.c: 493: if(++subTime > chrgWaitTime)
	incf	(_subTime),f
	movf	((_subTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u2341
	goto	u2340
u2341:
	goto	l2605
u2340:
	line	495
	
l2597:	
;main.c: 494: {
;main.c: 495: if(chrgMaxDuty > 1)
	movlw	low(02h)
	subwf	(_chrgMaxDuty),w
	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l2601
u2350:
	line	497
	
l2599:	
;main.c: 496: {
;main.c: 497: chrgMaxDuty--;
	decf	(_chrgMaxDuty),f
	line	499
	
l2601:	
;main.c: 498: }
;main.c: 499: subTime = 0;
	clrf	(_subTime)
	line	500
	
l2603:	
;main.c: 500: chrgWaitTime = 50;
	movlw	low(032h)
	movwf	(_chrgWaitTime)
	line	502
	
l2605:	
;main.c: 501: }
;main.c: 502: addTime = 0;
	clrf	(_addTime)
	line	503
;main.c: 503: }
	goto	l2621
	line	504
	
l2607:	
;main.c: 504: else if(batADValue < 1550 && outADValue < (chrgMaxAD - 4))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	0Eh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2361
	goto	u2360
u2361:
	goto	l2621
u2360:
	
l2609:	
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
	goto	u2375
	movf	0+(??_chrgCtr+0)+0,w
	subwf	(_outADValue),w
u2375:
	skipnc
	goto	u2371
	goto	u2370
u2371:
	goto	l2621
u2370:
	line	506
	
l2611:	
;main.c: 505: {
;main.c: 506: if(++addTime > chrgWaitTime)
	incf	(_addTime),f
	movf	((_addTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u2381
	goto	u2380
u2381:
	goto	l2619
u2380:
	line	508
	
l2613:	
;main.c: 507: {
;main.c: 508: addTime = 0;
	clrf	(_addTime)
	line	509
	
l2615:	
;main.c: 509: if(chrgMaxDuty < 75)
	movlw	low(04Bh)
	subwf	(_chrgMaxDuty),w
	skipnc
	goto	u2391
	goto	u2390
u2391:
	goto	l2619
u2390:
	line	511
	
l2617:	
;main.c: 510: {
;main.c: 511: chrgMaxDuty++;
	incf	(_chrgMaxDuty),f
	line	514
	
l2619:	
;main.c: 512: }
;main.c: 513: }
;main.c: 514: subTime = 0;
	clrf	(_subTime)
	line	518
	
l2621:	
;main.c: 515: }
;main.c: 518: if(chrgPwmFlag == 0)
	movf	((_chrgPwmFlag)),w
	btfss	status,2
	goto	u2401
	goto	u2400
u2401:
	goto	l2625
u2400:
	line	520
	
l2623:	
;main.c: 519: {
;main.c: 520: chrgPwmInit();
	fcall	_chrgPwmInit
	line	522
	
l2625:	
;main.c: 521: }
;main.c: 522: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	523
	
l2627:	
;main.c: 523: PWMD2L = chrgMaxDuty;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_chrgMaxDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	goto	l768
	line	529
	
l2629:	
;main.c: 529: chrgFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgFlag)
	line	530
;main.c: 530: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	531
;main.c: 531: protectFlag = 0;
	clrf	(_protectFlag)
	line	532
;main.c: 532: chrgMode = 0;
	clrf	(_chrgMode)
	line	533
;main.c: 533: chrgMaxAD = 0;
	clrf	(_chrgMaxAD)
	line	534
;main.c: 534: chrgMaxDuty = 0;
	clrf	(_chrgMaxDuty)
	line	535
;main.c: 536: lockLedStep = 0;
	clrf	(_lockCount)
	line	537
	
l2631:	
;main.c: 537: chrgWaitTime = 20;
	movlw	low(014h)
	movwf	(_chrgWaitTime)
	line	538
	
l2633:	
;main.c: 538: chrgPwmStop();
	fcall	_chrgPwmStop
	line	539
	
l2635:	
;main.c: 539: if(prePwStep > 0 && prePwStep > pwStep)
	movf	((_prePwStep)),w
	btfsc	status,2
	goto	u2411
	goto	u2410
u2411:
	goto	l2645
u2410:
	
l2637:	
	movf	(_prePwStep),w
	subwf	(_pwStep),w
	skipnc
	goto	u2421
	goto	u2420
u2421:
	goto	l2645
u2420:
	line	541
	
l2639:	
;main.c: 540: {
;main.c: 541: if(++count50s > 3000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	0Bh
	subwf	((_count50s+1)),w
	movlw	0B9h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u2431
	goto	u2430
u2431:
	goto	l768
u2430:
	line	543
	
l2641:	
;main.c: 542: {
;main.c: 543: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	544
	
l2643:	
;main.c: 544: prePwStep--;
	decf	(_prePwStep),f
	goto	l768
	line	549
	
l2645:	
;main.c: 547: else
;main.c: 548: {
;main.c: 549: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	552
	
l768:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 1039 in file "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
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
	line	1039
global __ptext9
__ptext9:	;psect for function _pwmStop
psect	text9
	file	"C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
	line	1039
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: [wreg+status,2+status,0]
	line	1041
	
l2171:	
;main.c: 1041: if(motorPwmFlag)
	movf	((_motorPwmFlag)),w
	btfsc	status,2
	goto	u1491
	goto	u1490
u1491:
	goto	l912
u1490:
	line	1043
	
l2173:	
;main.c: 1042: {
;main.c: 1043: motorPwmFlag = 0;
	clrf	(_motorPwmFlag)
	line	1044
	
l2175:	
;main.c: 1044: PWMCON0 &= 0XF7;
	bcf	(21)+(3/8),(3)&7	;volatile
	line	1045
	
l2177:	
;main.c: 1045: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	1047
	
l912:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_chrgPwmStop

;; *************** function _chrgPwmStop *****************
;; Defined at:
;;		line 1013 in file "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
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
	line	1013
global __ptext10
__ptext10:	;psect for function _chrgPwmStop
psect	text10
	file	"C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
	line	1013
	global	__size_of_chrgPwmStop
	__size_of_chrgPwmStop	equ	__end_of_chrgPwmStop-_chrgPwmStop
	
_chrgPwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmStop: [wreg+status,2+status,0]
	line	1015
	
l2163:	
;main.c: 1015: if(chrgPwmFlag)
	movf	((_chrgPwmFlag)),w
	btfsc	status,2
	goto	u1481
	goto	u1480
u1481:
	goto	l905
u1480:
	line	1017
	
l2165:	
;main.c: 1016: {
;main.c: 1017: chrgPwmFlag = 0;
	clrf	(_chrgPwmFlag)
	line	1018
	
l2167:	
;main.c: 1018: PWMCON0 &= 0xFB;
	bcf	(21)+(2/8),(2)&7	;volatile
	line	1019
	
l2169:	
;main.c: 1019: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	1021
	
l905:	
	return
	opt stack 0
GLOBAL	__end_of_chrgPwmStop
	__end_of_chrgPwmStop:
	signat	_chrgPwmStop,89
	global	_chrgPwmInit

;; *************** function _chrgPwmInit *****************
;; Defined at:
;;		line 995 in file "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
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
	line	995
global __ptext11
__ptext11:	;psect for function _chrgPwmInit
psect	text11
	file	"C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
	line	995
	global	__size_of_chrgPwmInit
	__size_of_chrgPwmInit	equ	__end_of_chrgPwmInit-_chrgPwmInit
	
_chrgPwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgPwmInit: [wreg+status,2]
	line	997
	
l2179:	
;main.c: 997: chrgPwmFlag = 1;
	clrf	(_chrgPwmFlag)
	incf	(_chrgPwmFlag),f
	line	998
	
l2181:	
;main.c: 998: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	1000
;main.c: 1000: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	1001
	
l2183:	
;main.c: 1001: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	1005
	
l2185:	
;main.c: 1005: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	1006
;main.c: 1006: PWMD2L = 10;
	movlw	low(0Ah)
	movwf	(155)^080h	;volatile
	line	1007
	
l2187:	
;main.c: 1007: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	1009
	
l2189:	
;main.c: 1009: PWMCON0 = 0X04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	1010
;main.c: 1010: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	1011
	
l901:	
	return
	opt stack 0
GLOBAL	__end_of_chrgPwmInit
	__end_of_chrgPwmInit:
	signat	_chrgPwmInit,89
	global	_checkOutA

;; *************** function _checkOutA *****************
;; Defined at:
;;		line 707 in file "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  maxAout         1   18[BANK0 ] unsigned char 
;;  maxtempV        1   17[BANK0 ] unsigned char 
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
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	707
global __ptext12
__ptext12:	;psect for function _checkOutA
psect	text12
	file	"C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
	line	707
	global	__size_of_checkOutA
	__size_of_checkOutA	equ	__end_of_checkOutA-_checkOutA
	
_checkOutA:	
;incstack = 0
	opt	stack 4
; Regs used in _checkOutA: [wreg+status,2+status,0+pclath+cstack]
	line	709
	
l3033:	
;main.c: 709: test_adc = ADC_Sample(0, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	710
	
l3035:	
;main.c: 710: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l3123
u3130:
	line	712
	
l3037:	
;main.c: 711: {
;main.c: 712: if(chrgFlag && adresult > 210)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l3047
u3140:
	
l3039:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	0D3h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u3151
	goto	u3150
u3151:
	goto	l3047
u3150:
	line	714
	
l3041:	
;main.c: 713: {
;main.c: 714: if(++overChrgTime > 10)
	movlw	low(0Bh)
	incf	(_overChrgTime),f
	subwf	((_overChrgTime)),w
	skipc
	goto	u3161
	goto	u3160
u3161:
	goto	l3049
u3160:
	line	716
	
l3043:	
;main.c: 715: {
;main.c: 716: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	717
	
l3045:	
;main.c: 717: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l3049
	line	723
	
l3047:	
;main.c: 721: else
;main.c: 722: {
;main.c: 723: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	725
	
l3049:	
;main.c: 724: }
;main.c: 725: outADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_outADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_outADValue)
	line	727
	
l3051:	
;main.c: 727: if(workStep && (outADValue > 600))
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l3059
u3170:
	
l3053:	
	movlw	02h
	subwf	(_outADValue+1),w
	movlw	059h
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u3181
	goto	u3180
u3181:
	goto	l3059
u3180:
	line	729
	
l3055:	
;main.c: 728: {
;main.c: 729: if(++workOverOutTime > 50)
	movlw	low(033h)
	incf	(_workOverOutTime),f
	subwf	((_workOverOutTime)),w
	skipc
	goto	u3191
	goto	u3190
u3191:
	goto	l3061
u3190:
	line	731
	
l3057:	
;main.c: 730: {
;main.c: 731: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	732
;main.c: 732: workStep = 0;
	clrf	(_workStep)
	goto	l3061
	line	737
	
l3059:	
;main.c: 735: else
;main.c: 736: {
;main.c: 737: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	739
	
l3061:	
;main.c: 738: }
;main.c: 739: unsigned char maxtempV = 130 + (workStep * 2);
	clrc
	rlf	(_workStep),w
	addlw	082h
	movwf	(checkOutA@maxtempV)
	line	740
	
l3063:	
;main.c: 740: if(outADValue > maxtempV)
	movf	(checkOutA@maxtempV),w
	movwf	(??_checkOutA+0)+0
	clrf	(??_checkOutA+0)+0+1
	movf	(_outADValue+1),w
	subwf	1+(??_checkOutA+0)+0,w
	skipz
	goto	u3205
	movf	(_outADValue),w
	subwf	0+(??_checkOutA+0)+0,w
u3205:
	skipnc
	goto	u3201
	goto	u3200
u3201:
	goto	l3069
u3200:
	line	742
	
l3065:	
;main.c: 741: {
;main.c: 742: if(++overCount > 5)
	movlw	low(06h)
	incf	(_overCount),f
	subwf	((_overCount)),w
	skipc
	goto	u3211
	goto	u3210
u3211:
	goto	l3119
u3210:
	line	744
	
l3067:	
;main.c: 743: {
;main.c: 744: overCount = 5;
	movlw	low(05h)
	movwf	(_overCount)
	goto	l3119
	line	750
	
l3069:	
;main.c: 747: else
;main.c: 748: {
;main.c: 750: if(overCount > 0)
	movf	((_overCount)),w
	btfsc	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l3073
u3220:
	line	752
	
l3071:	
;main.c: 751: {
;main.c: 752: overCount--;
	decf	(_overCount),f
	line	754
	
l3073:	
;main.c: 753: }
;main.c: 754: unsigned char maxAout = 25;
	movlw	low(019h)
	movwf	(checkOutA@maxAout)
	line	755
	
l3075:	
;main.c: 755: if(pwStep > 30)
	movlw	low(01Fh)
	subwf	(_pwStep),w
	skipc
	goto	u3231
	goto	u3230
u3231:
	goto	l851
u3230:
	line	756
	
l3077:	
;main.c: 756: maxAout = 27;
	movlw	low(01Bh)
	movwf	(checkOutA@maxAout)
	
l851:	
	line	757
;main.c: 757: if(workStep < 5)
	movlw	low(05h)
	subwf	(_workStep),w
	skipnc
	goto	u3241
	goto	u3240
u3241:
	goto	l3081
u3240:
	line	759
	
l3079:	
;main.c: 758: {
;main.c: 759: maxAout = maxAout - 1;
	movlw	low(0FFh)
	addwf	(checkOutA@maxAout),f
	line	760
;main.c: 760: }
	goto	l3109
	line	761
	
l3081:	
;main.c: 761: else if(workStep < 9)
	movlw	low(09h)
	subwf	(_workStep),w
	skipnc
	goto	u3251
	goto	u3250
u3251:
	goto	l3085
u3250:
	line	763
	
l3083:	
;main.c: 762: {
;main.c: 763: maxAout = maxAout + 3;
	movlw	low(03h)
	addwf	(checkOutA@maxAout),f
	line	764
;main.c: 764: }
	goto	l3109
	line	765
	
l3085:	
;main.c: 765: else if(workStep < 13)
	movlw	low(0Dh)
	subwf	(_workStep),w
	skipnc
	goto	u3261
	goto	u3260
u3261:
	goto	l3089
u3260:
	line	767
	
l3087:	
;main.c: 766: {
;main.c: 767: maxAout = maxAout + 4;
	movlw	low(04h)
	addwf	(checkOutA@maxAout),f
	line	768
;main.c: 768: }
	goto	l3109
	line	769
	
l3089:	
;main.c: 769: else if(workStep < 17)
	movlw	low(011h)
	subwf	(_workStep),w
	skipnc
	goto	u3271
	goto	u3270
u3271:
	goto	l3093
u3270:
	line	771
	
l3091:	
;main.c: 770: {
;main.c: 771: maxAout = maxAout + 5;
	movlw	low(05h)
	addwf	(checkOutA@maxAout),f
	line	772
;main.c: 772: }
	goto	l3109
	line	773
	
l3093:	
;main.c: 773: else if(workStep < 21)
	movlw	low(015h)
	subwf	(_workStep),w
	skipnc
	goto	u3281
	goto	u3280
u3281:
	goto	l3097
u3280:
	line	775
	
l3095:	
;main.c: 774: {
;main.c: 775: maxAout = maxAout + 7;
	movlw	low(07h)
	addwf	(checkOutA@maxAout),f
	line	776
;main.c: 776: }
	goto	l3109
	line	777
	
l3097:	
;main.c: 777: else if(workStep < 25)
	movlw	low(019h)
	subwf	(_workStep),w
	skipnc
	goto	u3291
	goto	u3290
u3291:
	goto	l3101
u3290:
	line	779
	
l3099:	
;main.c: 778: {
;main.c: 779: maxAout = maxAout + 9;
	movlw	low(09h)
	addwf	(checkOutA@maxAout),f
	line	780
;main.c: 780: }
	goto	l3109
	line	781
	
l3101:	
;main.c: 781: else if(workStep < 29)
	movlw	low(01Dh)
	subwf	(_workStep),w
	skipnc
	goto	u3301
	goto	u3300
u3301:
	goto	l3105
u3300:
	line	783
	
l3103:	
;main.c: 782: {
;main.c: 783: maxAout = maxAout + 10;
	movlw	low(0Ah)
	addwf	(checkOutA@maxAout),f
	line	784
;main.c: 784: }
	goto	l3109
	line	785
	
l3105:	
;main.c: 785: else if(workStep < 33)
	movlw	low(021h)
	subwf	(_workStep),w
	skipnc
	goto	u3311
	goto	u3310
u3311:
	goto	l861
u3310:
	line	787
	
l3107:	
;main.c: 786: {
;main.c: 787: maxAout = maxAout + 11;
	movlw	low(0Bh)
	addwf	(checkOutA@maxAout),f
	goto	l3109
	line	789
	
l861:	
	
l3109:	
;main.c: 788: }
;main.c: 789: if(outADValue > maxAout)
	movf	(checkOutA@maxAout),w
	movwf	(??_checkOutA+0)+0
	clrf	(??_checkOutA+0)+0+1
	movf	(_outADValue+1),w
	subwf	1+(??_checkOutA+0)+0,w
	skipz
	goto	u3325
	movf	(_outADValue),w
	subwf	0+(??_checkOutA+0)+0,w
u3325:
	skipnc
	goto	u3321
	goto	u3320
u3321:
	goto	l3115
u3320:
	line	791
	
l3111:	
;main.c: 790: {
;main.c: 791: if(startTime == 0)
	movf	((_startTime)),w
	btfss	status,2
	goto	u3331
	goto	u3330
u3331:
	goto	l3115
u3330:
	line	793
	
l3113:	
;main.c: 792: {
;main.c: 793: tempDuty = 167 + workStep;
	movf	(_workStep),w
	addlw	0A7h
	movwf	(_tempDuty)
	line	794
;main.c: 794: }
	goto	l3119
	line	797
	
l3115:	
;main.c: 795: else
;main.c: 796: {
;main.c: 797: tempDuty = maxDuty;
	movf	(_maxDuty),w
	movwf	(_tempDuty)
	line	806
	
l3119:	
;main.c: 803: }
;main.c: 805: }
;main.c: 806: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	807
	
l3121:	
;main.c: 807: PWMD3L = tempDuty;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_tempDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	808
;main.c: 808: }
	goto	l872
	line	811
	
l3123:	
;main.c: 809: else
;main.c: 810: {
;main.c: 811: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	812
;main.c: 812: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	813
	
l3125:	
;main.c: 813: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkOutA+0)+0),f
	u3667:
decfsz	(??_checkOutA+0)+0,f
	goto	u3667
opt asmopt_pop

	line	815
	
l872:	
	return
	opt stack 0
GLOBAL	__end_of_checkOutA
	__end_of_checkOutA:
	signat	_checkOutA,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 817 in file "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
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
	line	817
global __ptext13
__ptext13:	;psect for function _checkBatAD
psect	text13
	file	"C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
	line	817
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	819
	
l3127:	
;main.c: 819: test_adc = ADC_Sample(2, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(02h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	820
	
l3129:	
;main.c: 820: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l3159
u3340:
	line	822
	
l3131:	
;main.c: 821: {
;main.c: 822: batADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_batADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_batADValue)
	line	823
;main.c: 823: if(batADValue < 1117)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Dh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u3351
	goto	u3350
u3351:
	goto	l3141
u3350:
	line	825
	
l3133:	
;main.c: 824: {
;main.c: 825: pwStep = 0;
	clrf	(_pwStep)
	line	826
	
l3135:	
;main.c: 826: if(++count8s > 800)
	incf	(_count8s),f
	skipnz
	incf	(_count8s+1),f
	movlw	03h
	subwf	((_count8s+1)),w
	movlw	021h
	skipnz
	subwf	((_count8s)),w
	skipc
	goto	u3361
	goto	u3360
u3361:
	goto	l3153
u3360:
	line	828
	
l3137:	
;main.c: 827: {
;main.c: 828: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	829
	
l3139:	
;main.c: 829: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	830
;main.c: 830: prePwStep = 0;
	clrf	(_prePwStep)
	line	831
;main.c: 832: jrStep = 0;
	clrf	(_workStep)
	goto	l3153
	line	837
	
l3141:	
;main.c: 835: else
;main.c: 836: {
;main.c: 837: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	838
	
l3143:	
;main.c: 838: if(batADValue >= 1340)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	03Ch
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3371
	goto	u3370
u3371:
	goto	l3147
u3370:
	line	840
	
l3145:	
;main.c: 839: {
;main.c: 840: pwStep = ((batADValue - 1340) /2) + 13;
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
	line	841
;main.c: 841: }
	goto	l3149
	line	844
	
l3147:	
;main.c: 842: else
;main.c: 843: {
;main.c: 844: pwStep = (batADValue - 1117) / 16;
	movf	(_batADValue),w
	addlw	low(0FBA3h)
	movwf	(??_checkBatAD+0)+0
	movf	(_batADValue+1),w
	skipnc
	addlw	1
	addlw	high(0FBA3h)
	movwf	1+(??_checkBatAD+0)+0
	movlw	04h
u3385:
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	addlw	-1
	skipz
	goto	u3385
	movf	0+(??_checkBatAD+0)+0,w
	movwf	(_pwStep)
	line	846
	
l3149:	
;main.c: 845: }
;main.c: 846: if(pwStep > 99)
	movlw	low(064h)
	subwf	(_pwStep),w
	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l3153
u3390:
	line	848
	
l3151:	
;main.c: 847: {
;main.c: 848: pwStep = 99;
	movlw	low(063h)
	movwf	(_pwStep)
	line	851
	
l3153:	
;main.c: 849: }
;main.c: 850: }
;main.c: 851: if(chrgFlag && batADValue > 1861)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3401
	goto	u3400
u3401:
	goto	l3163
u3400:
	
l3155:	
	movlw	07h
	subwf	(_batADValue+1),w
	movlw	046h
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u3411
	goto	u3410
u3411:
	goto	l3163
u3410:
	line	853
	
l3157:	
;main.c: 852: {
;main.c: 853: protectFlag = 1;
	clrf	(_protectFlag)
	incf	(_protectFlag),f
	goto	l3163
	line	858
	
l3159:	
;main.c: 856: else
;main.c: 857: {
;main.c: 858: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	859
;main.c: 859: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	860
	
l3161:	
;main.c: 860: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u3677:
decfsz	(??_checkBatAD+0)+0,f
	goto	u3677
opt asmopt_pop

	line	863
	
l3163:	
;main.c: 861: }
;main.c: 863: test_adc = ADC_Sample(3, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(03h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	864
	
l3165:	
;main.c: 864: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3421
	goto	u3420
u3421:
	goto	l3183
u3420:
	line	866
	
l3167:	
;main.c: 865: {
;main.c: 866: if(chrgFlag && adresult > 100)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3431
	goto	u3430
u3431:
	goto	l892
u3430:
	
l3169:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	065h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u3441
	goto	u3440
u3441:
	goto	l892
u3440:
	line	869
	
l3171:	
;main.c: 867: {
;main.c: 869: if(adresult > 810 || (batADValue - adresult) > 810)
	movlw	03h
	subwf	(_adresult+1),w	;volatile
	movlw	02Bh
	skipnz
	subwf	(_adresult),w	;volatile
	skipnc
	goto	u3451
	goto	u3450
u3451:
	goto	l3175
u3450:
	
l3173:	
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
	goto	u3461
	goto	u3460
u3461:
	goto	l3181
u3460:
	line	872
	
l3175:	
;main.c: 870: {
;main.c: 872: if(++countHalfFull > 250)
	movlw	low(0FBh)
	incf	(_countHalfFull),f
	subwf	((_countHalfFull)),w
	skipc
	goto	u3471
	goto	u3470
u3471:
	goto	l885
u3470:
	line	874
	
l3177:	
;main.c: 873: {
;main.c: 874: countHalfFull = 0;
	clrf	(_countHalfFull)
	line	875
	
l3179:	
;main.c: 875: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l892
	line	880
	
l3181:	
;main.c: 878: else
;main.c: 879: {
;main.c: 880: countHalfFull = 0;
	clrf	(_countHalfFull)
	goto	l892
	line	882
	
l885:	
	line	883
;main.c: 881: }
;main.c: 882: }
;main.c: 883: }
	goto	l892
	line	886
	
l3183:	
;main.c: 884: else
;main.c: 885: {
;main.c: 886: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	887
;main.c: 887: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	888
	
l3185:	
;main.c: 888: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u3687:
decfsz	(??_checkBatAD+0)+0,f
	goto	u3687
opt asmopt_pop

	line	891
	
l892:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 1134 in file "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
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
	line	1134
global __ptext14
__ptext14:	;psect for function _ADC_Sample
psect	text14
	file	"C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
	line	1134
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	1136
	
l2943:	
;main.c: 1136: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1137
	
l2945:	
;main.c: 1137: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1138
;main.c: 1138: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	1140
	
l2947:	
;main.c: 1140: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u2951
	goto	u2950
u2951:
	goto	l2953
u2950:
	
l2949:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u2961
	goto	u2960
u2961:
	goto	l2953
u2960:
	line	1143
	
l2951:	
;main.c: 1141: {
;main.c: 1143: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1144
;main.c: 1144: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_ADC_Sample+0)+0),f
	u3697:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u3697
	nop2
opt asmopt_pop

	line	1145
;main.c: 1145: }
	goto	l2955
	line	1147
	
l2953:	
;main.c: 1146: else
;main.c: 1147: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	1149
	
l2955:	
;main.c: 1149: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l2961
u2970:
	line	1151
	
l2957:	
;main.c: 1150: {
;main.c: 1151: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	1152
	
l2959:	
;main.c: 1152: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	1154
	
l2961:	
	line	1155
	
l2963:	
;main.c: 1155: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	1157
	
l2969:	
;main.c: 1156: {
;main.c: 1157: ADCON0 = (unsigned char)(0X41 | (adch << 2));
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
	line	1158
# 1158 "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
nop ;# 
	line	1159
# 1159 "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
nop ;# 
	line	1160
# 1160 "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
nop ;# 
	line	1161
# 1161 "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
nop ;# 
psect	text14
	line	1162
	
l2971:	
;main.c: 1162: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	1164
	
l2973:	
;main.c: 1164: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	1165
;main.c: 1165: while (GODONE)
	goto	l926
	
l927:	
	line	1167
;main.c: 1166: {
;main.c: 1167: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	1169
;main.c: 1169: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u2991
	goto	u2990
u2991:
	goto	l926
u2990:
	line	1170
	
l2975:	
;main.c: 1170: return 0;
	movlw	low(0)
	goto	l929
	line	1171
	
l926:	
	line	1165
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u3001
	goto	u3000
u3001:
	goto	l927
u3000:
	line	1173
	
l2979:	
;main.c: 1171: }
;main.c: 1173: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l2981:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	1175
	
l2983:	
;main.c: 1175: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l2987
u3010:
	line	1177
	
l2985:	
;main.c: 1176: {
;main.c: 1177: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	1178
;main.c: 1178: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1179
;main.c: 1179: }
	goto	l932
	line	1180
	
l2987:	
;main.c: 1180: else if (ad_temp > admax)
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
	goto	l2991
u3020:
	line	1181
	
l2989:	
;main.c: 1181: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l932
	line	1182
	
l2991:	
;main.c: 1182: else if (ad_temp < admin)
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
	goto	l932
u3030:
	line	1183
	
l2993:	
;main.c: 1183: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1185
	
l932:	
;main.c: 1185: adsum += ad_temp;
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

	line	1155
	
l2995:	
	incf	(ADC_Sample@i),f
	
l2997:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l2969
u3050:
	line	1187
	
l2999:	
;main.c: 1186: }
;main.c: 1187: adsum -= admax;
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

	line	1188
;main.c: 1188: if (adsum >= admin)
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
	goto	l936
u3070:
	line	1189
	
l3001:	
;main.c: 1189: adsum -= admin;
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

	goto	l3003
	line	1190
	
l936:	
	line	1191
;main.c: 1190: else
;main.c: 1191: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1193
	
l3003:	
;main.c: 1193: adresult = adsum >> 3;
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
	line	1195
	
l3005:	
;main.c: 1195: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1196
	
l3007:	
;main.c: 1196: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	1197
	
l3009:	
;main.c: 1197: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1198
	
l3011:	
;main.c: 1198: return 0xA5;
	movlw	low(0A5h)
	line	1200
	
l929:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 1057 in file "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
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
	line	1057
global __ptext15
__ptext15:	;psect for function _Sleep_Mode
psect	text15
	file	"C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
	line	1057
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 4
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	1059
	
l2801:	
;main.c: 1059: INTCON = 0;
	clrf	(11)	;volatile
	line	1061
;main.c: 1061: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	1063
;main.c: 1063: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	1064
	
l2803:	
;main.c: 1064: TRISA = 0x0F;
	movlw	low(0Fh)
	movwf	(133)^080h	;volatile
	line	1065
	
l2805:	
;main.c: 1065: TRISB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	1067
;main.c: 1067: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	1068
;main.c: 1068: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	1069
	
l2807:	
;main.c: 1069: WPUB = 0x04;
	movlw	low(04h)
	movwf	(8)	;volatile
	line	1071
	
l2809:	
;main.c: 1071: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	1072
	
l2811:	
;main.c: 1072: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	1074
	
l2813:	
;main.c: 1074: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	1076
;main.c: 1076: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	1078
;main.c: 1078: IOCA = 0x02;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(137)^080h	;volatile
	line	1079
;main.c: 1079: IOCB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	1081
	
l2815:	
;main.c: 1081: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	1082
	
l2817:	
;main.c: 1082: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	1083
	
l2819:	
;main.c: 1083: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	1084
	
l2821:	
;main.c: 1084: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	1086
	
l2823:	
;main.c: 1086: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	1087
	
l2825:	
;main.c: 1087: PIR1 = 0;
	clrf	(13)	;volatile
	line	1088
	
l2827:	
;main.c: 1088: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	1090
	
l2829:	
;main.c: 1090: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	1091
	
l2831:	
;main.c: 1091: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	1092
	
l2833:	
;main.c: 1092: PORTB;
	movf	(6),w	;volatile
	line	1093
	
l2835:	
;main.c: 1093: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	1094
# 1094 "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
clrwdt ;# 
	line	1096
# 1096 "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
sleep ;# 
	line	1098
# 1098 "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
nop ;# 
	line	1099
# 1099 "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
clrwdt ;# 
	line	1100
# 1100 "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
nop ;# 
	line	1101
# 1101 "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
nop ;# 
	line	1102
# 1102 "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
nop ;# 
	line	1103
# 1103 "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
nop ;# 
	line	1104
# 1104 "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
nop ;# 
psect	text15
	line	1105
	
l2837:	
;main.c: 1105: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u2771
	goto	u2770
u2771:
	goto	l915
u2770:
	
l2839:	
	bcf	(107/8),(107)&7	;volatile
	
l915:	
	line	1106
;main.c: 1106: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u2781
	goto	u2780
u2781:
	goto	l916
u2780:
	
l2841:	
	bcf	(88/8),(88)&7	;volatile
	
l916:	
	line	1107
;main.c: 1107: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u2791
	goto	u2790
u2791:
	goto	l2845
u2790:
	
l2843:	
	bcf	(105/8),(105)&7	;volatile
	line	1108
	
l2845:	
;main.c: 1108: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	1109
;main.c: 1109: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	1110
	
l2847:	
;main.c: 1110: Init_System();
	fcall	_Init_System
	line	1111
	
l2849:	
;main.c: 1111: AD_Init();
	fcall	_AD_Init
	line	1112
	
l918:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 902 in file "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
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
	line	902
global __ptext16
__ptext16:	;psect for function _Init_System
psect	text16
	file	"C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
	line	902
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	904
	
l2131:	
# 904 "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
nop ;# 
	line	905
# 905 "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
clrwdt ;# 
psect	text16
	line	906
	
l2133:	
;main.c: 906: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	907
# 907 "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
clrwdt ;# 
psect	text16
	line	908
	
l2135:	
;main.c: 908: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	910
	
l2137:	
;main.c: 910: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	911
	
l2139:	
;main.c: 911: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	912
	
l2141:	
;main.c: 912: WPUB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	914
	
l2143:	
;main.c: 914: TRISA = 0x0F;
	movlw	low(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	915
	
l2145:	
;main.c: 915: TRISB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	917
;main.c: 917: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	918
;main.c: 918: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	922
	
l2147:	
;main.c: 922: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	923
	
l2149:	
;main.c: 923: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	924
	
l2151:	
;main.c: 924: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	926
	
l2153:	
;main.c: 926: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	927
	
l2155:	
;main.c: 927: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	928
	
l895:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 939 in file "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
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
	line	939
global __ptext17
__ptext17:	;psect for function _AD_Init
psect	text17
	file	"C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
	line	939
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _AD_Init: [wreg+status,2]
	line	972
	
l2157:	
;main.c: 972: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	989
	
l2159:	
;main.c: 989: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	990
	
l2161:	
;main.c: 990: ANSEL0 = 0X0D;
	movlw	low(0Dh)
	movwf	(147)^080h	;volatile
	line	991
;main.c: 991: ANSEL1 = 0x00;
	clrf	(148)^080h	;volatile
	line	992
	
l898:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 131 in file "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
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
	line	131
global __ptext18
__ptext18:	;psect for function _Isr_Timer
psect	text18
	file	"C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
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
psect	text18
	line	133
	
i1l2851:	
;main.c: 133: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u280_21
	goto	u280_20
u280_21:
	goto	i1l688
u280_20:
	line	135
	
i1l2853:	
;main.c: 134: {
;main.c: 135: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	136
	
i1l2855:	
;main.c: 136: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u281_21
	goto	u281_20
u281_21:
	goto	i1l2865
u281_20:
	line	138
	
i1l2857:	
;main.c: 137: {
;main.c: 138: intCount = 0;
	clrf	(_intCount)
	line	139
	
i1l2859:	
;main.c: 139: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	140
	
i1l2861:	
;main.c: 140: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u282_21
	goto	u282_20
u282_21:
	goto	i1l2865
u282_20:
	line	142
	
i1l2863:	
;main.c: 141: {
;main.c: 142: count1s = 0;
	clrf	(_count1s)
	line	145
	
i1l2865:	
;main.c: 143: }
;main.c: 144: }
;main.c: 145: ledShow();
	fcall	_ledShow
	line	146
	
i1l2867:	
;main.c: 146: intCount10++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_intCount10),f
	line	149
	
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
;;		line 196 in file "C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
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
	line	196
global __ptext19
__ptext19:	;psect for function _ledShow
psect	text19
	file	"C:\mcuproject\scm\zdt\J02_062B_SOP14-D205\main.c"
	line	196
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 4
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	198
	
i1l2357:	
;main.c: 198: if(++ledCntTime > 5)
	movlw	low(06h)
	incf	(_ledCntTime),f
	subwf	((_ledCntTime)),w
	skipc
	goto	u177_21
	goto	u177_20
u177_21:
	goto	i1l742
u177_20:
	line	200
	
i1l2359:	
;main.c: 199: {
;main.c: 200: ledCntTime = 0;
	clrf	(_ledCntTime)
	line	201
	
i1l2361:	
;main.c: 201: if(++ledCnt > 14)
	movlw	low(0Fh)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u178_21
	goto	u178_20
u178_21:
	goto	i1l2365
u178_20:
	line	203
	
i1l2363:	
;main.c: 202: {
;main.c: 203: ledCnt = 0;
	clrf	(_ledCnt)
	line	205
	
i1l2365:	
;main.c: 204: }
;main.c: 205: PORTA &= 0x3F;
	movlw	low(03Fh)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	206
	
i1l2367:	
;main.c: 206: PORTB &= 0xDC;
	movlw	low(0DCh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(6),f	;volatile
	line	207
	
i1l2369:	
;main.c: 207: TRISA |= 0x30;
	movlw	low(030h)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(133)^080h,f	;volatile
	line	208
	
i1l2371:	
;main.c: 208: TRISB |= 0x23;
	movlw	low(023h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(5),f	;volatile
	line	209
;main.c: 209: switch(ledCnt)
	goto	i1l2411
	line	211
;main.c: 210: {
;main.c: 211: case 1:
	
i1l708:	
	line	212
;main.c: 212: if(shiweiNum & 0x01)
	btfss	(_shiweiNum),(0)&7
	goto	u179_21
	goto	u179_20
u179_21:
	goto	i1l742
u179_20:
	line	214
	
i1l2373:	
;main.c: 213: {
;main.c: 214: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	215
;main.c: 215: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	216
;main.c: 216: RB5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	line	217
;main.c: 217: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l742
	line	220
;main.c: 220: case 2:
	
i1l711:	
	line	221
;main.c: 221: if(shiweiNum & 0x02)
	btfss	(_shiweiNum),(1)&7
	goto	u180_21
	goto	u180_20
u180_21:
	goto	i1l742
u180_20:
	line	223
	
i1l2375:	
;main.c: 222: {
;main.c: 223: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	224
;main.c: 224: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	225
;main.c: 225: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	226
;main.c: 226: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	goto	i1l742
	line	229
;main.c: 229: case 3:
	
i1l713:	
	line	230
;main.c: 230: if(shiweiNum & 0x04)
	btfss	(_shiweiNum),(2)&7
	goto	u181_21
	goto	u181_20
u181_21:
	goto	i1l742
u181_20:
	line	232
	
i1l2377:	
;main.c: 231: {
;main.c: 232: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	233
;main.c: 233: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	234
;main.c: 234: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	235
;main.c: 235: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	goto	i1l742
	line	238
;main.c: 238: case 4:
	
i1l715:	
	line	239
;main.c: 239: if(shiweiNum & 0x08)
	btfss	(_shiweiNum),(3)&7
	goto	u182_21
	goto	u182_20
u182_21:
	goto	i1l742
u182_20:
	line	241
	
i1l2379:	
;main.c: 240: {
;main.c: 241: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	242
;main.c: 242: TRISB &= 0xFD;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(1/8),(1)&7	;volatile
	line	243
;main.c: 243: RA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	244
;main.c: 244: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	goto	i1l742
	line	247
;main.c: 247: case 5:
	
i1l717:	
	line	248
;main.c: 248: if(shiweiNum & 0x10)
	btfss	(_shiweiNum),(4)&7
	goto	u183_21
	goto	u183_20
u183_21:
	goto	i1l742
u183_20:
	line	250
	
i1l2381:	
;main.c: 249: {
;main.c: 250: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	251
;main.c: 251: TRISB &= 0xFE;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(0/8),(0)&7	;volatile
	line	252
;main.c: 252: RA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	253
;main.c: 253: RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	goto	i1l742
	line	256
;main.c: 256: case 6:
	
i1l719:	
	line	257
;main.c: 257: if(shiweiNum & 0x20)
	btfss	(_shiweiNum),(5)&7
	goto	u184_21
	goto	u184_20
u184_21:
	goto	i1l742
u184_20:
	line	259
	
i1l2383:	
;main.c: 258: {
;main.c: 259: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	260
;main.c: 260: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	261
;main.c: 261: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	262
;main.c: 262: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	goto	i1l742
	line	265
;main.c: 265: case 7:
	
i1l721:	
	line	266
;main.c: 266: if(shiweiNum & 0x40)
	btfss	(_shiweiNum),(6)&7
	goto	u185_21
	goto	u185_20
u185_21:
	goto	i1l742
u185_20:
	line	268
	
i1l2385:	
;main.c: 267: {
;main.c: 268: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	269
;main.c: 269: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	270
;main.c: 270: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	271
;main.c: 271: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	goto	i1l742
	line	274
;main.c: 274: case 8:
	
i1l723:	
	line	275
;main.c: 275: if(geweiNum & 0x01)
	btfss	(_geweiNum),(0)&7
	goto	u186_21
	goto	u186_20
u186_21:
	goto	i1l742
u186_20:
	line	277
	
i1l2387:	
;main.c: 276: {
;main.c: 277: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	278
;main.c: 278: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	279
;main.c: 279: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	280
;main.c: 280: RA5 = 0;
	bcf	(1077/8)^080h,(1077)&7	;volatile
	goto	i1l742
	line	283
;main.c: 283: case 9:
	
i1l725:	
	line	284
;main.c: 284: if(geweiNum & 0x02)
	btfss	(_geweiNum),(1)&7
	goto	u187_21
	goto	u187_20
u187_21:
	goto	i1l742
u187_20:
	line	286
	
i1l2389:	
;main.c: 285: {
;main.c: 286: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	287
;main.c: 287: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	288
;main.c: 288: RA5 = 1;
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	289
;main.c: 289: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l742
	line	292
;main.c: 292: case 10:
	
i1l727:	
	line	293
;main.c: 293: if(geweiNum & 0x04)
	btfss	(_geweiNum),(2)&7
	goto	u188_21
	goto	u188_20
u188_21:
	goto	i1l742
u188_20:
	line	295
	
i1l2391:	
;main.c: 294: {
;main.c: 295: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	296
;main.c: 296: TRISB &= 0xDF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(5/8),(5)&7	;volatile
	line	297
;main.c: 297: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	298
;main.c: 298: RA5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	goto	i1l742
	line	301
;main.c: 301: case 11:
	
i1l729:	
	line	302
;main.c: 302: if(geweiNum & 0x08)
	btfss	(_geweiNum),(3)&7
	goto	u189_21
	goto	u189_20
u189_21:
	goto	i1l742
u189_20:
	line	304
	
i1l2393:	
;main.c: 303: {
;main.c: 304: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	305
;main.c: 305: TRISB &= 0xDF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(5/8),(5)&7	;volatile
	line	306
;main.c: 306: RA5 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	307
;main.c: 307: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	goto	i1l742
	line	310
;main.c: 310: case 12:
	
i1l731:	
	line	311
;main.c: 311: if(geweiNum & 0x10)
	btfss	(_geweiNum),(4)&7
	goto	u190_21
	goto	u190_20
u190_21:
	goto	i1l742
u190_20:
	line	313
	
i1l2395:	
;main.c: 312: {
;main.c: 313: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	314
;main.c: 314: TRISB &= 0xFD;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(1/8),(1)&7	;volatile
	line	315
;main.c: 315: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	316
;main.c: 316: RA5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	goto	i1l742
	line	319
;main.c: 319: case 13:
	
i1l733:	
	line	320
;main.c: 320: if(geweiNum & 0x20)
	btfss	(_geweiNum),(5)&7
	goto	u191_21
	goto	u191_20
u191_21:
	goto	i1l742
u191_20:
	line	322
	
i1l2397:	
;main.c: 321: {
;main.c: 322: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	323
;main.c: 323: TRISB &= 0xFD;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(1/8),(1)&7	;volatile
	line	324
;main.c: 324: RA5 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	325
;main.c: 325: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(49/8),(49)&7	;volatile
	goto	i1l742
	line	328
;main.c: 328: case 14:
	
i1l735:	
	line	329
;main.c: 329: if(geweiNum & 0x40)
	btfss	(_geweiNum),(6)&7
	goto	u192_21
	goto	u192_20
u192_21:
	goto	i1l742
u192_20:
	line	331
	
i1l2399:	
;main.c: 330: {
;main.c: 331: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	332
;main.c: 332: TRISB &= 0xFE;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(0/8),(0)&7	;volatile
	line	333
;main.c: 333: RA5 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	334
;main.c: 334: RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(48/8),(48)&7	;volatile
	goto	i1l742
	line	338
	
i1l2401:	
;main.c: 338: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u193_21
	goto	u193_20
u193_21:
	goto	i1l742
u193_20:
	line	340
	
i1l2403:	
;main.c: 339: {
;main.c: 340: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	341
;main.c: 341: TRISB &= 0xFE;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(0/8),(0)&7	;volatile
	line	342
;main.c: 342: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	343
;main.c: 343: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l742
	line	347
	
i1l2405:	
;main.c: 347: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u194_21
	goto	u194_20
u194_21:
	goto	i1l742
u194_20:
	line	349
	
i1l2407:	
;main.c: 348: {
;main.c: 349: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	350
;main.c: 350: TRISB &= 0xFE;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(0/8),(0)&7	;volatile
	line	351
;main.c: 351: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	352
;main.c: 352: RA5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	goto	i1l742
	line	209
	
i1l2411:	
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
goto i1l742
movlw high(i1S3295)
movwf pclath
	movlw low(i1S3295)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S3295:
	ljmp	i1l2405
	ljmp	i1l708
	ljmp	i1l711
	ljmp	i1l713
	ljmp	i1l715
	ljmp	i1l717
	ljmp	i1l719
	ljmp	i1l721
	ljmp	i1l723
	ljmp	i1l725
	ljmp	i1l727
	ljmp	i1l729
	ljmp	i1l731
	ljmp	i1l733
	ljmp	i1l735
	ljmp	i1l2401
psect	text19

	line	361
	
i1l742:	
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
