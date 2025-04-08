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
	global	_count1s
	global	_count30s
	global	_count900s
	global	_lowShanTime
	global	_power_ad
	global	_result
	global	_adresult
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
	global	_RA1
_RA1	set	1073
	global	_RA2
_RA2	set	1074
	global	_RA3
_RA3	set	1075
	global	_RA4
_RA4	set	1076
	global	_RA5
_RA5	set	1077
; #config settings
	file	"D119_062B_SOP14.as"
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

_count1s:
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

_adresult:
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

_intCount:
       ds      1

_test_adc:
       ds      1

	file	"D119_062B_SOP14.as"
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
	movlw	low((__pbssBANK0)+01Ch)
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
??_setBatStep:	; 1 bytes @ 0x7
??_workCtr:	; 1 bytes @ 0x7
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
;!    Constant    12
;!    Data        0
;!    BSS         32
;!    Persistent  3
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      11
;!    BANK0            80     17      48
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _workCtr->___lbdiv
;!    _setBatStep->___lwdiv
;!    _keyCtr->_keyRead
;!    _checkBatAD->_ADC_Sample
;!
;!Critical Paths under _Isr_Timer in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _workCtr->___lbmod
;!    _setBatStep->___lwdiv
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
;! (0) _main                                                 0     0      0    1927
;!                            _AD_Init
;!                        _Init_System
;!                         _Sleep_Mode
;!                         _checkBatAD
;!                            _chrgCtr
;!                             _keyCtr
;!                         _setBatStep
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              0     0      0     512
;!                            ___lbdiv
;!                            ___lbmod
;!                            _pwmInit
;!                            _pwmStop
;! ---------------------------------------------------------------------------------
;! (2) _pwmStop                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _pwmInit                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___lbmod                                              5     4      1     297
;!                                              3 COMMON     2     1      1
;!                                              0 BANK0      3     3      0
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
;! (1) _checkBatAD                                           5     5      0     847
;!                                              4 COMMON     1     1      0
;!                         _ADC_Sample
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Sample                                          18    17      1     847
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
;!COMMON               E      7       B       1       78.6%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50     11      30       4       60.0%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      3B       7        0.0%
;!DATA                 0      0      3B       8        0.0%

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
;; Hardware stack levels required when called:    4
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
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	119
	
l2777:	
;main.c: 119: Init_System();
	fcall	_Init_System
	line	120
;main.c: 120: AD_Init();
	fcall	_AD_Init
	line	121
	
l2779:	
;main.c: 122: baiweiNum = 1;
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_geweiNum)
	movwf	(_shiweiNum)
	line	123
	
l2781:	
;main.c: 123: firstTime = 250;
	movlw	low(0FAh)
	movwf	(_firstTime)
	line	124
;main.c: 124: while (1)
	
l617:	
	line	126
# 126 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
clrwdt ;# 
psect	maintext
	line	127
	
l2783:	
;main.c: 127: if(intCount10 > 10)
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_intCount10),w
	skipc
	goto	u3091
	goto	u3090
u3091:
	goto	l2787
u3090:
	line	129
	
l2785:	
;main.c: 128: {
;main.c: 129: intCount10 = 0;
	clrf	(_intCount10)
	line	131
	
l2787:	
;main.c: 130: }
;main.c: 131: if(!IntFlag)
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l2791
u3100:
	goto	l617
	line	133
	
l2791:	
;main.c: 133: IntFlag = 0;
	clrf	(_IntFlag)
	line	134
	
l2793:	
;main.c: 134: chrgCtr();
	fcall	_chrgCtr
	line	135
	
l2795:	
;main.c: 135: checkBatAD();
	fcall	_checkBatAD
	line	136
	
l2797:	
;main.c: 136: setBatStep();
	fcall	_setBatStep
	line	137
	
l2799:	
;main.c: 137: if(lowBatFlag == 0 && firstTime == 0)
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u3111
	goto	u3110
u3111:
	goto	l2805
u3110:
	
l2801:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l2805
u3120:
	line	139
	
l2803:	
;main.c: 138: {
;main.c: 139: keyCtr();
	fcall	_keyCtr
	line	141
	
l2805:	
;main.c: 140: }
;main.c: 141: workCtr();
	fcall	_workCtr
	line	142
	
l2807:	
;main.c: 142: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && showBatTime == 0 )
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l2825
u3130:
	
l2809:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l2825
u3140:
	
l2811:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l2825
u3150:
	
l2813:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3161
	goto	u3160
u3161:
	goto	l2825
u3160:
	
l2815:	
;main.c: 143: {
;main.c: 144: baiweiNum = 0;
	movf	((_showBatTime)),w
	btfss	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l2825
u3170:
	line	145
	
l2817:	
;main.c: 145: shiweiNum = geweiNum = 0;
	clrf	(_geweiNum)
	clrf	(_shiweiNum)
	line	146
	
l2819:	
;main.c: 146: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u3181
	goto	u3180
u3181:
	goto	l617
u3180:
	line	148
	
l2821:	
;main.c: 147: {
;main.c: 148: sleepTime = 0;
	clrf	(_sleepTime)
	line	149
	
l2823:	
;main.c: 149: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l617
	line	154
	
l2825:	
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
;;		line 426 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	426
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	426
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	428
	
l2677:	
;main.c: 428: if(workStep > 0 && count1s == 0 && ++count900s >= 900)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2841
	goto	u2840
u2841:
	goto	l2685
u2840:
	
l2679:	
	movf	((_count1s)),w
	btfss	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l2685
u2850:
	
l2681:	
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
	goto	l2685
u2860:
	line	430
	
l2683:	
;main.c: 429: {
;main.c: 430: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	431
;main.c: 431: workStep = 0;
	clrf	(_workStep)
	line	433
	
l2685:	
;main.c: 432: }
;main.c: 433: if(lowShanTime > 0)
	movf	((_lowShanTime)),w
iorwf	((_lowShanTime+1)),w
	btfsc	status,2
	goto	u2871
	goto	u2870
u2871:
	goto	l2691
u2870:
	line	435
	
l2687:	
;main.c: 434: {
;main.c: 435: if(--lowShanTime == 0)
	movlw	01h
	subwf	(_lowShanTime),f
	movlw	0
	skipc
	decf	(_lowShanTime+1),f
	subwf	(_lowShanTime+1),f
	movf	(((_lowShanTime))),w
iorwf	(((_lowShanTime+1))),w
	btfss	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l2691
u2880:
	line	437
	
l2689:	
;main.c: 436: {
;main.c: 437: workStep = 0;
	clrf	(_workStep)
	line	440
	
l2691:	
;main.c: 438: }
;main.c: 439: }
;main.c: 440: if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2891
	goto	u2890
u2891:
	goto	l2695
u2890:
	line	442
	
l2693:	
;main.c: 441: {
;main.c: 442: showBatTime--;
	decf	(_showBatTime),f
	line	444
	
l2695:	
;main.c: 443: }
;main.c: 444: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u2901
	goto	u2900
u2901:
	goto	l2707
u2900:
	line	446
	
l2697:	
;main.c: 445: {
;main.c: 446: firstTime--;
	decf	(_firstTime),f
	line	447
	
l2699:	
;main.c: 447: if(showBatStep < curBatStep)
	movf	(_curBatStep),w
	subwf	(_showBatStep),w
	skipnc
	goto	u2911
	goto	u2910
u2911:
	goto	l2703
u2910:
	line	449
	
l2701:	
;main.c: 448: {
;main.c: 449: showBatStep = curBatStep;
	movf	(_curBatStep),w
	movwf	(_showBatStep)
	line	451
	
l2703:	
;main.c: 450: }
;main.c: 451: shiweiNum = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	452
	
l2705:	
;main.c: 452: geweiNum = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	453
;main.c: 453: }
	goto	l2747
	line	454
	
l2707:	
;main.c: 454: else if(workStep == 0 || (lowShanTime > 0 && count1s < 50))
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l2713
u2920:
	
l2709:	
	movf	((_lowShanTime)),w
iorwf	((_lowShanTime+1)),w
	btfsc	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l2719
u2930:
	
l2711:	
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u2941
	goto	u2940
u2941:
	goto	l2719
u2940:
	line	456
	
l2713:	
;main.c: 455: {
;main.c: 456: shiweiNum = 0;
	clrf	(_shiweiNum)
	line	457
;main.c: 457: geweiNum = 0;
	clrf	(_geweiNum)
	line	458
	
l2715:	
;main.c: 458: pwmStop();
	fcall	_pwmStop
	line	459
	
l2717:	
;main.c: 459: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	460
;main.c: 460: }
	goto	l2747
	line	461
	
l2719:	
;main.c: 461: else if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u2951
	goto	u2950
u2951:
	goto	l2733
u2950:
	line	463
	
l2721:	
;main.c: 462: {
;main.c: 463: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2961
	goto	u2960
u2961:
	goto	l2725
u2960:
	line	465
	
l2723:	
;main.c: 464: {
;main.c: 465: shiweiNum = numArray[10];
	movlw	low((((_numArray+0Ah)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	466
;main.c: 466: geweiNum = numArray[10];
	movlw	low((((_numArray+0Ah)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	468
	
l2725:	
;main.c: 467: }
;main.c: 468: if(motorPwmFlag == 0)
	movf	((_motorPwmFlag)),w
	btfss	status,2
	goto	u2971
	goto	u2970
u2971:
	goto	l2729
u2970:
	line	470
	
l2727:	
;main.c: 469: {
;main.c: 470: pwmInit();
	fcall	_pwmInit
	line	472
	
l2729:	
;main.c: 471: }
;main.c: 472: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	473
	
l2731:	
;main.c: 473: PWMD2L = 60;
	movlw	low(03Ch)
	movwf	(155)^080h	;volatile
	line	474
;main.c: 474: }
	goto	l2747
	line	475
	
l2733:	
;main.c: 475: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2981
	goto	u2980
u2981:
	goto	l709
u2980:
	line	477
	
l2735:	
;main.c: 476: {
;main.c: 477: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2991
	goto	u2990
u2991:
	goto	l2739
u2990:
	line	479
	
l2737:	
;main.c: 478: {
;main.c: 479: shiweiNum = numArray[11];
	movlw	low((((_numArray+0Bh)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	480
;main.c: 480: geweiNum = numArray[11];
	movlw	low((((_numArray+0Bh)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	482
	
l2739:	
;main.c: 481: }
;main.c: 482: if(motorPwmFlag == 0)
	movf	((_motorPwmFlag)),w
	btfss	status,2
	goto	u3001
	goto	u3000
u3001:
	goto	l2743
u3000:
	line	484
	
l2741:	
;main.c: 483: {
;main.c: 484: pwmInit();
	fcall	_pwmInit
	line	486
	
l2743:	
;main.c: 485: }
;main.c: 486: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	487
	
l2745:	
;main.c: 487: PWMD2L = 99;
	movlw	low(063h)
	movwf	(155)^080h	;volatile
	goto	l2747
	line	490
	
l709:	
	
l2747:	
;main.c: 489: }
;main.c: 490: if(chrgFlag || showBatTime > 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l2751
u3010:
	
l2749:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l728
u3020:
	line	492
	
l2751:	
;main.c: 491: {
;main.c: 492: if(showBatStep >=99)
	movlw	low(063h)
	subwf	(_showBatStep),w
	skipc
	goto	u3031
	goto	u3030
u3031:
	goto	l2755
u3030:
	line	494
	
l2753:	
;main.c: 493: {
;main.c: 494: shiweiNum = numArray[9];
	movlw	low((((_numArray+09h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_shiweiNum)
	line	495
;main.c: 495: geweiNum = numArray[9];
	movlw	low((((_numArray+09h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	496
;main.c: 496: }
	goto	l728
	line	497
	
l2755:	
;main.c: 498: {
;main.c: 499: baiweiNum = 0;
	movlw	low(0Ah)
	subwf	(_showBatStep),w
	skipc
	goto	u3041
	goto	u3040
u3041:
	goto	l2767
u3040:
	line	500
	
l2757:	
;main.c: 500: shiweiNum = numArray[showBatStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_showBatStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_shiweiNum)
	line	501
	
l2759:	
;main.c: 501: if(chrgFlag && count1s < 50)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3051
	goto	u3050
u3051:
	goto	l2765
u3050:
	
l2761:	
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u3061
	goto	u3060
u3061:
	goto	l2765
u3060:
	line	503
	
l2763:	
;main.c: 502: {
;main.c: 503: geweiNum = 0;
	clrf	(_geweiNum)
	line	504
;main.c: 504: }
	goto	l728
	line	507
	
l2765:	
;main.c: 505: else
;main.c: 506: {
;main.c: 507: geweiNum = numArray[showBatStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_showBatStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	goto	l728
	line	513
	
l2767:	
;main.c: 513: shiweiNum = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_shiweiNum)
	line	514
	
l2769:	
;main.c: 514: if(chrgFlag && count1s < 50)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3071
	goto	u3070
u3071:
	goto	l2775
u3070:
	
l2771:	
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u3081
	goto	u3080
u3081:
	goto	l2775
u3080:
	goto	l2763
	line	520
	
l2775:	
;main.c: 518: else
;main.c: 519: {
;main.c: 520: geweiNum = numArray[showBatStep];
	movf	(_showBatStep),w
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	526
	
l728:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 748 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	748
global __ptext2
__ptext2:	;psect for function _pwmStop
psect	text2
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	748
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: [status,2]
	line	750
	
l1907:	
;main.c: 750: PWMCON0 &= 0XFB;
	bcf	(21)+(2/8),(2)&7	;volatile
	line	751
;main.c: 751: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	752
	
l1909:	
;main.c: 752: motorPwmFlag = 0;
	clrf	(_motorPwmFlag)
	line	753
	
l770:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 732 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	732
global __ptext3
__ptext3:	;psect for function _pwmInit
psect	text3
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	732
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2]
	line	734
	
l1911:	
;main.c: 734: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	735
;main.c: 735: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	736
	
l1913:	
;main.c: 736: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	739
	
l1915:	
;main.c: 739: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	740
;main.c: 740: PWMD2L = 60;
	movlw	low(03Ch)
	movwf	(155)^080h	;volatile
	line	741
	
l1917:	
;main.c: 741: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	743
	
l1919:	
;main.c: 743: PWMCON0 = 0X64;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	744
;main.c: 744: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	745
	
l1921:	
;main.c: 745: motorPwmFlag = 1;
	clrf	(_motorPwmFlag)
	incf	(_motorPwmFlag),f
	line	746
	
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
	
l2555:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l2557:	
	clrf	(___lbmod@rem)
	line	12
	
l2559:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u2565:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u2565
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l2561:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l2563:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u2571
	goto	u2570
u2571:
	goto	l2567
u2570:
	line	15
	
l2565:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l2567:	
	decfsz	(___lbmod@counter),f
	goto	u2581
	goto	u2580
u2581:
	goto	l2559
u2580:
	line	17
	
l2569:	
	movf	(___lbmod@rem),w
	line	18
	
l1070:	
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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
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
	
l1995:	
	clrf	(___lbdiv@quotient)
	line	10
	
l1997:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1411
	goto	u1410
u1411:
	goto	l2015
u1410:
	line	11
	
l1999:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2003
	
l1059:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l2001:	
	incf	(___lbdiv@counter),f
	line	12
	
l2003:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1421
	goto	u1420
u1421:
	goto	l1059
u1420:
	line	16
	
l1061:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l2005:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1431
	goto	u1430
u1431:
	goto	l2011
u1430:
	line	19
	
l2007:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2009:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2011:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l2013:	
	decfsz	(___lbdiv@counter),f
	goto	u1441
	goto	u1440
u1441:
	goto	l1061
u1440:
	line	25
	
l2015:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1064:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_setBatStep

;; *************** function _setBatStep *****************
;; Defined at:
;;		line 528 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	528
global __ptext6
__ptext6:	;psect for function _setBatStep
psect	text6
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	528
	global	__size_of_setBatStep
	__size_of_setBatStep	equ	__end_of_setBatStep-_setBatStep
	
_setBatStep:	
;incstack = 0
	opt	stack 4
; Regs used in _setBatStep: [wreg+status,2+status,0+pclath+cstack]
	line	530
	
l2609:	
;main.c: 530: if(lowBatFlag == 1 && lowShanTime == 0 && workStep > 0)
	bcf	status, 5	;RP0=0, select bank0
		decf	((_lowBatFlag)),w
	btfss	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l2619
u2640:
	
l2611:	
	movf	((_lowShanTime)),w
iorwf	((_lowShanTime+1)),w
	btfss	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l2619
u2650:
	
l2613:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l2619
u2660:
	line	532
	
l2615:	
;main.c: 531: {
;main.c: 532: showBatStep = 0;
	clrf	(_showBatStep)
	line	533
;main.c: 533: curBatStep = 0;
	clrf	(_curBatStep)
	line	534
	
l2617:	
;main.c: 534: lowShanTime = 300;
	movlw	02Ch
	movwf	(_lowShanTime)
	movlw	01h
	movwf	((_lowShanTime))+1
	line	535
;main.c: 535: }
	goto	l753
	line	536
	
l2619:	
;main.c: 536: else if(power_ad < 1675)
	movlw	06h
	subwf	(_power_ad+1),w	;volatile
	movlw	08Bh
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u2671
	goto	u2670
u2671:
	goto	l2629
u2670:
	line	538
	
l2621:	
;main.c: 537: {
;main.c: 538: if(count1s == 0)
	movf	((_count1s)),w
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l734
u2680:
	line	540
	
l2623:	
;main.c: 539: {
;main.c: 540: if(showBatStep > 1)
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u2691
	goto	u2690
u2691:
	goto	l735
u2690:
	line	542
	
l2625:	
;main.c: 541: {
;main.c: 542: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l737
u2700:
	line	543
	
l2627:	
;main.c: 543: showBatStep--;
	decf	(_showBatStep),f
	goto	l737
	line	545
	
l735:	
	line	547
;main.c: 545: else
;main.c: 546: {
;main.c: 547: showBatStep = 1;
	clrf	(_showBatStep)
	incf	(_showBatStep),f
	line	548
	
l737:	
	line	549
;main.c: 548: }
;main.c: 549: curBatStep = 1;
	clrf	(_curBatStep)
	incf	(_curBatStep),f
	line	550
	
l734:	
	line	551
;main.c: 550: }
;main.c: 551: curBatStep = 1;
	clrf	(_curBatStep)
	incf	(_curBatStep),f
	line	552
;main.c: 552: }
	goto	l753
	line	555
	
l2629:	
;main.c: 553: else
;main.c: 554: {
;main.c: 555: if(power_ad < 1875)
	movlw	07h
	subwf	(_power_ad+1),w	;volatile
	movlw	053h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u2711
	goto	u2710
u2711:
	goto	l2633
u2710:
	line	557
	
l2631:	
;main.c: 556: {
;main.c: 557: curBatStep = (power_ad - 1675)/10;
	movlw	0Ah
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(_power_ad),w	;volatile
	addlw	low(0F975h)
	movwf	(___lwdiv@dividend)
	movf	(_power_ad+1),w	;volatile
	skipnc
	addlw	1
	addlw	high(0F975h)
	movwf	1+(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(_curBatStep)
	line	558
;main.c: 558: }
	goto	l2635
	line	561
	
l2633:	
;main.c: 559: else
;main.c: 560: {
;main.c: 561: curBatStep = 10 + ((power_ad - 1875)/5);
	movlw	05h
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(_power_ad),w	;volatile
	addlw	low(0F8ADh)
	movwf	(___lwdiv@dividend)
	movf	(_power_ad+1),w	;volatile
	skipnc
	addlw	1
	addlw	high(0F8ADh)
	movwf	1+(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	0Ah
	movwf	(_curBatStep)
	line	563
	
l2635:	
;main.c: 562: }
;main.c: 563: if(curBatStep > 99)
	movlw	low(064h)
	subwf	(_curBatStep),w
	skipc
	goto	u2721
	goto	u2720
u2721:
	goto	l2639
u2720:
	line	565
	
l2637:	
;main.c: 564: {
;main.c: 565: curBatStep = 99;
	movlw	low(063h)
	movwf	(_curBatStep)
	line	568
	
l2639:	
;main.c: 566: }
;main.c: 568: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l2663
u2730:
	line	570
	
l2641:	
;main.c: 569: {
;main.c: 570: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l2651
u2740:
	line	572
	
l2643:	
;main.c: 571: {
;main.c: 572: if(++count30s >= 3000 && showBatStep < 99)
	incf	(_count30s),f
	skipnz
	incf	(_count30s+1),f
	movlw	0Bh
	subwf	((_count30s+1)),w
	movlw	0B8h
	skipnz
	subwf	((_count30s)),w
	skipc
	goto	u2751
	goto	u2750
u2751:
	goto	l753
u2750:
	
l2645:	
	movlw	low(063h)
	subwf	(_showBatStep),w
	skipnc
	goto	u2761
	goto	u2760
u2761:
	goto	l753
u2760:
	line	574
	
l2647:	
;main.c: 573: {
;main.c: 574: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	line	575
	
l2649:	
;main.c: 575: showBatStep++;
	incf	(_showBatStep),f
	goto	l753
	line	578
	
l2651:	
;main.c: 578: else if(curBatStep > showBatStep)
	movf	(_curBatStep),w
	subwf	(_showBatStep),w
	skipnc
	goto	u2771
	goto	u2770
u2771:
	goto	l2661
u2770:
	line	580
	
l2653:	
;main.c: 579: {
;main.c: 580: if(++count30s >= 30000 && showBatStep < 99)
	incf	(_count30s),f
	skipnz
	incf	(_count30s+1),f
	movlw	075h
	subwf	((_count30s+1)),w
	movlw	030h
	skipnz
	subwf	((_count30s)),w
	skipc
	goto	u2781
	goto	u2780
u2781:
	goto	l749
u2780:
	
l2655:	
	movlw	low(063h)
	subwf	(_showBatStep),w
	skipnc
	goto	u2791
	goto	u2790
u2791:
	goto	l749
u2790:
	goto	l2647
	line	589
	
l2661:	
;main.c: 587: else
;main.c: 588: {
;main.c: 589: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	goto	l753
	line	594
	
l2663:	
;main.c: 592: else
;main.c: 593: {
;main.c: 594: if(curBatStep < showBatStep && showBatStep > 1)
	movf	(_showBatStep),w
	subwf	(_curBatStep),w
	skipnc
	goto	u2801
	goto	u2800
u2801:
	goto	l2661
u2800:
	
l2665:	
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u2811
	goto	u2810
u2811:
	goto	l2661
u2810:
	line	596
	
l2667:	
;main.c: 595: {
;main.c: 596: if(++count30s >= 1500 && showBatStep > 1)
	incf	(_count30s),f
	skipnz
	incf	(_count30s+1),f
	movlw	05h
	subwf	((_count30s+1)),w
	movlw	0DCh
	skipnz
	subwf	((_count30s)),w
	skipc
	goto	u2821
	goto	u2820
u2821:
	goto	l749
u2820:
	
l2669:	
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u2831
	goto	u2830
u2831:
	goto	l749
u2830:
	line	598
	
l2671:	
;main.c: 597: {
;main.c: 598: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	line	599
	
l2673:	
;main.c: 599: showBatStep--;
	decf	(_showBatStep),f
	goto	l753
	line	606
	
l749:	
	line	609
	
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
	
l2573:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l2575:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l2595
u2590:
	line	16
	
l2577:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l2581
	line	18
	
l2579:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l2581:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l2579
u2600:
	line	22
	
l2583:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l2585:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2615
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2615:
	skipc
	goto	u2611
	goto	u2610
u2611:
	goto	l2591
u2610:
	line	24
	
l2587:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l2589:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l2591:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l2593:	
	decfsz	(___lwdiv@counter),f
	goto	u2621
	goto	u2620
u2621:
	goto	l2583
u2620:
	line	30
	
l2595:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l1138:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 387 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	387
global __ptext8
__ptext8:	;psect for function _keyCtr
psect	text8
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	387
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	389
	
l2217:	
;main.c: 389: char kclick = keyRead(0x04 & (~PORTB));
	comf	(6),w	;volatile
	andlw	04h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	390
	
l2219:	
;main.c: 390: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u1941
	goto	u1940
u1941:
	goto	l2235
u1940:
	line	392
	
l2221:	
;main.c: 391: {
;main.c: 392: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1951
	goto	u1950
u1951:
	goto	l2227
u1950:
	line	394
	
l2223:	
;main.c: 393: {
;main.c: 394: if(++workStep > 2)
	movlw	low(03h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u1961
	goto	u1960
u1961:
	goto	l696
u1960:
	line	396
	
l2225:	
;main.c: 395: {
;main.c: 396: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l696
	line	399
	
l2227:	
;main.c: 399: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u1971
	goto	u1970
u1971:
	goto	l2231
u1970:
	line	401
	
l2229:	
;main.c: 400: {
;main.c: 401: showBatTime = 0;
	clrf	(_showBatTime)
	line	402
;main.c: 402: }
	goto	l696
	line	405
	
l2231:	
;main.c: 403: else
;main.c: 404: {
;main.c: 405: showBatTime = 200;
	movlw	low(0C8h)
	movwf	(_showBatTime)
	line	406
	
l2233:	
;main.c: 406: count1s = 0;
	clrf	(_count1s)
	goto	l696
	line	409
	
l2235:	
;main.c: 409: else if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u1981
	goto	u1980
u1981:
	goto	l696
u1980:
	line	411
	
l2237:	
;main.c: 410: {
;main.c: 411: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1991
	goto	u1990
u1991:
	goto	l694
u1990:
	line	413
	
l2239:	
;main.c: 412: {
;main.c: 413: workStep = 0;
	clrf	(_workStep)
	line	414
;main.c: 414: }
	goto	l696
	line	415
	
l694:	
	line	417
;main.c: 415: else
;main.c: 416: {
;main.c: 417: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	418
	
l2241:	
;main.c: 418: showBatTime = 0;
	clrf	(_showBatTime)
	line	419
;main.c: 419: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	423
	
l696:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 352 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	352
global __ptext9
__ptext9:	;psect for function _keyRead
psect	text9
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	352
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	354
	
l1867:	
;main.c: 354: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1211
	goto	u1210
u1211:
	goto	l1883
u1210:
	line	356
	
l1869:	
;main.c: 355: {
;main.c: 356: keyCount++;
	incf	(_keyCount),f
	line	357
	
l1871:	
;main.c: 357: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1221
	goto	u1220
u1221:
	goto	l1887
u1220:
	line	359
	
l1873:	
;main.c: 358: {
;main.c: 359: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	line	360
	
l1875:	
;main.c: 360: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1231
	goto	u1230
u1231:
	goto	l1887
u1230:
	line	362
	
l1877:	
;main.c: 361: {
;main.c: 362: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	363
	
l1879:	
;main.c: 363: return 2;
	movlw	low(02h)
	goto	l679
	line	369
	
l1883:	
;main.c: 367: else
;main.c: 368: {
;main.c: 369: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1241
	goto	u1240
u1241:
	goto	l1893
u1240:
	line	371
	
l1885:	
;main.c: 370: {
;main.c: 371: keyCount = 0;
	clrf	(_keyCount)
	line	372
;main.c: 372: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	373
	
l1887:	
;main.c: 373: return 0;
	movlw	low(0)
	goto	l679
	line	375
	
l1893:	
;main.c: 375: else if(keyCount >= 6)
	movlw	low(06h)
	subwf	(_keyCount),w
	skipc
	goto	u1251
	goto	u1250
u1251:
	goto	l1901
u1250:
	line	377
	
l1895:	
;main.c: 376: {
;main.c: 377: keyCount = 0;
	clrf	(_keyCount)
	line	378
	
l1897:	
;main.c: 378: return 1;
	movlw	low(01h)
	goto	l679
	line	380
	
l1901:	
;main.c: 379: }
;main.c: 380: keyCount = 0;
	clrf	(_keyCount)
	goto	l1887
	line	383
	
l679:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 311 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	311
global __ptext10
__ptext10:	;psect for function _chrgCtr
psect	text10
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	311
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _chrgCtr: [wreg+status,2+status,0]
	line	313
	
l2111:	
;main.c: 313: if(PORTB & 0x01)
	btfss	(6),(0)&7	;volatile
	goto	u1681
	goto	u1680
u1681:
	goto	l2127
u1680:
	line	315
	
l2113:	
;main.c: 314: {
;main.c: 315: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	316
	
l2115:	
;main.c: 316: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	317
	
l2117:	
;main.c: 317: if(PORTA & 0x01)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(134)^080h,(0)&7	;volatile
	goto	u1691
	goto	u1690
u1691:
	goto	l2121
u1690:
	line	319
	
l2119:	
;main.c: 318: {
;main.c: 319: chrgFullTime = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgFullTime)
	line	320
;main.c: 320: }
	goto	l673
	line	323
	
l2121:	
;main.c: 321: else
;main.c: 322: {
;main.c: 323: if(++chrgFullTime >= 200)
	movlw	low(0C8h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_chrgFullTime),f
	subwf	((_chrgFullTime)),w
	skipc
	goto	u1701
	goto	u1700
u1701:
	goto	l673
u1700:
	line	325
	
l2123:	
;main.c: 324: {
;main.c: 325: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	line	326
	
l2125:	
;main.c: 326: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l673
	line	332
	
l2127:	
;main.c: 330: else
;main.c: 331: {
;main.c: 332: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	333
;main.c: 333: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	334
;main.c: 334: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	line	335
	
l2129:	
;main.c: 335: if(power_ad < 1563)
	movlw	06h
	subwf	(_power_ad+1),w	;volatile
	movlw	01Bh
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u1711
	goto	u1710
u1711:
	goto	l2137
u1710:
	line	337
	
l2131:	
;main.c: 336: {
;main.c: 337: if(++lowBatTime > 200)
	movlw	low(0C9h)
	incf	(_lowBatTime),f
	subwf	((_lowBatTime)),w
	skipc
	goto	u1721
	goto	u1720
u1721:
	goto	l673
u1720:
	line	339
	
l2133:	
;main.c: 338: {
;main.c: 339: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	340
	
l2135:	
;main.c: 340: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	goto	l673
	line	345
	
l2137:	
;main.c: 343: else
;main.c: 344: {
;main.c: 345: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	348
	
l673:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 612 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  power_temp      4    0        volatile unsigned long 
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
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	612
global __ptext11
__ptext11:	;psect for function _checkBatAD
psect	text11
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	612
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	614
	
l2599:	
;main.c: 614: test_adc = ADC_Sample(12, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0Ch)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	615
	
l2601:	
;main.c: 615: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l2605
u2630:
	line	619
	
l2603:	
;main.c: 616: {
;main.c: 617: volatile unsigned long power_temp;
;main.c: 619: power_ad = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_power_ad+1)	;volatile
	movf	(_adresult),w	;volatile
	movwf	(_power_ad)	;volatile
	line	620
;main.c: 620: }
	goto	l758
	line	623
	
l2605:	
;main.c: 621: else
;main.c: 622: {
;main.c: 623: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	624
;main.c: 624: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	625
	
l2607:	
;main.c: 625: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u3197:
decfsz	(??_checkBatAD+0)+0,f
	goto	u3197
opt asmopt_pop

	line	628
	
l758:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 840 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
;;		On entry : 100/0
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
;;		_checkBatAD
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	840
global __ptext12
__ptext12:	;psect for function _ADC_Sample
psect	text12
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	840
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	842
	
l2483:	
;main.c: 842: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	843
	
l2485:	
;main.c: 843: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	844
;main.c: 844: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	846
	
l2487:	
;main.c: 846: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u2411
	goto	u2410
u2411:
	goto	l2493
u2410:
	
l2489:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l2493
u2420:
	line	849
	
l2491:	
;main.c: 847: {
;main.c: 849: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	850
;main.c: 850: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_ADC_Sample+0)+0),f
	u3207:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u3207
	nop2
opt asmopt_pop

	line	851
;main.c: 851: }
	goto	l2495
	line	853
	
l2493:	
;main.c: 852: else
;main.c: 853: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	855
	
l2495:	
;main.c: 855: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u2431
	goto	u2430
u2431:
	goto	l2501
u2430:
	line	857
	
l2497:	
;main.c: 856: {
;main.c: 857: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	858
	
l2499:	
;main.c: 858: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	860
	
l2501:	
	line	861
	
l2503:	
;main.c: 861: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	863
	
l2509:	
;main.c: 862: {
;main.c: 863: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u2445:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u2445
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	864
# 864 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	865
# 865 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	866
# 866 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	867
# 867 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
psect	text12
	line	868
	
l2511:	
;main.c: 868: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	870
	
l2513:	
;main.c: 870: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	871
;main.c: 871: while (GODONE)
	goto	l784
	
l785:	
	line	873
;main.c: 872: {
;main.c: 873: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	875
;main.c: 875: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u2451
	goto	u2450
u2451:
	goto	l784
u2450:
	line	876
	
l2515:	
;main.c: 876: return 0;
	movlw	low(0)
	goto	l787
	line	877
	
l784:	
	line	871
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u2461
	goto	u2460
u2461:
	goto	l785
u2460:
	line	879
	
l2519:	
;main.c: 877: }
;main.c: 879: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l2521:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	881
	
l2523:	
;main.c: 881: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u2471
	goto	u2470
u2471:
	goto	l2527
u2470:
	line	883
	
l2525:	
;main.c: 882: {
;main.c: 883: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	884
;main.c: 884: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	885
;main.c: 885: }
	goto	l790
	line	886
	
l2527:	
;main.c: 886: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u2485
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u2485:
	skipnc
	goto	u2481
	goto	u2480
u2481:
	goto	l2531
u2480:
	line	887
	
l2529:	
;main.c: 887: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l790
	line	888
	
l2531:	
;main.c: 888: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u2495
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u2495:
	skipnc
	goto	u2491
	goto	u2490
u2491:
	goto	l790
u2490:
	line	889
	
l2533:	
;main.c: 889: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	891
	
l790:	
;main.c: 891: adsum += ad_temp;
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
	goto	u2501
	addwf	(ADC_Sample@adsum+1),f	;volatile
u2501:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2502
	addwf	(ADC_Sample@adsum+2),f	;volatile
u2502:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2503
	addwf	(ADC_Sample@adsum+3),f	;volatile
u2503:

	line	861
	
l2535:	
	incf	(ADC_Sample@i),f
	
l2537:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u2511
	goto	u2510
u2511:
	goto	l2509
u2510:
	line	893
	
l2539:	
;main.c: 892: }
;main.c: 893: adsum -= admax;
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
	goto	u2525
	goto	u2526
u2525:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u2526:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u2527
	goto	u2528
u2527:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u2528:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u2529
	goto	u2520
u2529:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u2520:

	line	894
;main.c: 894: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u2535
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u2535
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u2535
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u2535:
	skipc
	goto	u2531
	goto	u2530
u2531:
	goto	l794
u2530:
	line	895
	
l2541:	
;main.c: 895: adsum -= admin;
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
	goto	u2545
	goto	u2546
u2545:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u2546:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u2547
	goto	u2548
u2547:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u2548:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u2549
	goto	u2540
u2549:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u2540:

	goto	l2543
	line	896
	
l794:	
	line	897
;main.c: 896: else
;main.c: 897: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	899
	
l2543:	
;main.c: 899: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u2555:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u2550:
	addlw	-1
	skipz
	goto	u2555
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	901
	
l2545:	
;main.c: 901: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	902
	
l2547:	
;main.c: 902: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	903
	
l2549:	
;main.c: 903: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	904
	
l2551:	
;main.c: 904: return 0xA5;
	movlw	low(0A5h)
	line	906
	
l787:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 763 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	763
global __ptext13
__ptext13:	;psect for function _Sleep_Mode
psect	text13
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	763
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 4
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	765
	
l2343:	
;main.c: 765: INTCON = 0;
	clrf	(11)	;volatile
	line	767
;main.c: 767: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	769
;main.c: 769: WPUA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	770
	
l2345:	
;main.c: 770: TRISA = 0x01;
	movlw	low(01h)
	movwf	(133)^080h	;volatile
	line	771
	
l2347:	
;main.c: 771: TRISB = 0x37;
	movlw	low(037h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	773
;main.c: 773: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	774
;main.c: 774: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	775
	
l2349:	
;main.c: 775: WPUB = 0x06;
	movlw	low(06h)
	movwf	(8)	;volatile
	line	777
	
l2351:	
;main.c: 777: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	778
	
l2353:	
;main.c: 778: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	780
	
l2355:	
;main.c: 780: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	782
;main.c: 782: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	784
	
l2357:	
;main.c: 784: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	785
	
l2359:	
;main.c: 785: IOCB = 0x07;
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	787
	
l2361:	
;main.c: 787: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	788
	
l2363:	
;main.c: 788: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	789
	
l2365:	
;main.c: 789: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	790
	
l2367:	
;main.c: 790: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	792
	
l2369:	
;main.c: 792: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	793
	
l2371:	
;main.c: 793: PIR1 = 0;
	clrf	(13)	;volatile
	line	794
;main.c: 794: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	796
	
l2373:	
;main.c: 796: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	797
	
l2375:	
;main.c: 797: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	798
	
l2377:	
;main.c: 798: PORTB;
	movf	(6),w	;volatile
	line	799
	
l2379:	
;main.c: 799: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	800
# 800 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
clrwdt ;# 
	line	802
# 802 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
sleep ;# 
	line	804
# 804 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	805
# 805 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
clrwdt ;# 
	line	806
# 806 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	807
# 807 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	808
# 808 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	809
# 809 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	810
# 810 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
psect	text13
	line	811
	
l2381:	
;main.c: 811: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u2251
	goto	u2250
u2251:
	goto	l773
u2250:
	
l2383:	
	bcf	(107/8),(107)&7	;volatile
	
l773:	
	line	812
;main.c: 812: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u2261
	goto	u2260
u2261:
	goto	l774
u2260:
	
l2385:	
	bcf	(88/8),(88)&7	;volatile
	
l774:	
	line	813
;main.c: 813: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u2271
	goto	u2270
u2271:
	goto	l2389
u2270:
	
l2387:	
	bcf	(105/8),(105)&7	;volatile
	line	814
	
l2389:	
;main.c: 814: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	815
;main.c: 815: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	816
	
l2391:	
;main.c: 816: Init_System();
	fcall	_Init_System
	line	817
	
l2393:	
;main.c: 817: AD_Init();
	fcall	_AD_Init
	line	818
	
l776:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 639 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	639
global __ptext14
__ptext14:	;psect for function _Init_System
psect	text14
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	639
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	641
	
l1835:	
# 641 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	642
# 642 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
clrwdt ;# 
psect	text14
	line	643
	
l1837:	
;main.c: 643: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	644
# 644 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
clrwdt ;# 
psect	text14
	line	645
	
l1839:	
;main.c: 645: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	647
	
l1841:	
;main.c: 647: WPUA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	648
	
l1843:	
;main.c: 648: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	649
	
l1845:	
;main.c: 649: WPUB = 0x06;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	651
	
l1847:	
;main.c: 651: TRISA = 0x01;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	652
	
l1849:	
;main.c: 652: TRISB = 0x37;
	movlw	low(037h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	654
;main.c: 654: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	655
;main.c: 655: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	659
	
l1851:	
;main.c: 659: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	660
	
l1853:	
;main.c: 660: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	661
	
l1855:	
;main.c: 661: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	663
	
l1857:	
;main.c: 663: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	664
	
l1859:	
;main.c: 664: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	665
	
l761:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 676 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	676
global __ptext15
__ptext15:	;psect for function _AD_Init
psect	text15
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	676
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _AD_Init: [wreg+status,2]
	line	709
	
l1861:	
;main.c: 709: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	726
	
l1863:	
;main.c: 726: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	727
	
l1865:	
;main.c: 727: ANSEL0 = 0X00;
	clrf	(147)^080h	;volatile
	line	728
;main.c: 728: ANSEL1 = 0x30;
	movlw	low(030h)
	movwf	(148)^080h	;volatile
	line	729
	
l764:	
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
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	93
global __ptext16
__ptext16:	;psect for function _Isr_Timer
psect	text16
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	93
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
psect	text16
	line	95
	
i1l2395:	
;main.c: 95: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u228_21
	goto	u228_20
u228_21:
	goto	i1l612
u228_20:
	line	97
	
i1l2397:	
;main.c: 96: {
;main.c: 97: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	98
	
i1l2399:	
;main.c: 98: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u229_21
	goto	u229_20
u229_21:
	goto	i1l2409
u229_20:
	line	100
	
i1l2401:	
;main.c: 99: {
;main.c: 100: intCount = 0;
	clrf	(_intCount)
	line	101
	
i1l2403:	
;main.c: 101: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	102
	
i1l2405:	
;main.c: 102: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u230_21
	goto	u230_20
u230_21:
	goto	i1l2409
u230_20:
	line	104
	
i1l2407:	
;main.c: 103: {
;main.c: 104: count1s = 0;
	clrf	(_count1s)
	line	107
	
i1l2409:	
;main.c: 105: }
;main.c: 106: }
;main.c: 107: ledShow();
	fcall	_ledShow
	line	108
	
i1l2411:	
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
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	159
global __ptext17
__ptext17:	;psect for function _ledShow
psect	text17
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	159
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 4
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	161
	
i1l2063:	
;main.c: 161: if(++ledCntTime > 5)
	movlw	low(06h)
	incf	(_ledCntTime),f
	subwf	((_ledCntTime)),w
	skipc
	goto	u152_21
	goto	u152_20
u152_21:
	goto	i1l662
u152_20:
	line	163
	
i1l2065:	
;main.c: 162: {
;main.c: 163: ledCntTime = 0;
	clrf	(_ledCntTime)
	line	164
	
i1l2067:	
;main.c: 164: if(++ledCnt > 13)
	movlw	low(0Eh)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u153_21
	goto	u153_20
u153_21:
	goto	i1l2071
u153_20:
	line	166
	
i1l2069:	
;main.c: 165: {
;main.c: 166: ledCnt = 0;
	clrf	(_ledCnt)
	line	168
	
i1l2071:	
;main.c: 167: }
;main.c: 168: PORTA &= 0xC1;
	movlw	low(0C1h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	169
	
i1l2073:	
;main.c: 169: TRISA |= 0x3E;
	movlw	low(03Eh)
	iorwf	(133)^080h,f	;volatile
	line	170
;main.c: 170: switch(ledCnt)
	goto	i1l2105
	line	172
;main.c: 171: {
;main.c: 172: case 1:
	
i1l632:	
	line	173
;main.c: 173: if(shiweiNum & 0x01)
	btfss	(_shiweiNum),(0)&7
	goto	u154_21
	goto	u154_20
u154_21:
	goto	i1l662
u154_20:
	line	175
	
i1l2075:	
;main.c: 174: {
;main.c: 175: TRISA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	176
;main.c: 176: TRISA &= 0xDF;
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	177
;main.c: 177: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	line	178
;main.c: 178: RA5 = 0;
	bcf	(1077/8)^080h,(1077)&7	;volatile
	goto	i1l662
	line	181
;main.c: 181: case 2:
	
i1l635:	
	line	182
;main.c: 182: if(shiweiNum & 0x02)
	btfss	(_shiweiNum),(1)&7
	goto	u155_21
	goto	u155_20
u155_21:
	goto	i1l662
u155_20:
	line	184
	
i1l2077:	
;main.c: 183: {
;main.c: 184: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	185
;main.c: 185: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	186
;main.c: 186: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	line	187
;main.c: 187: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l662
	line	190
;main.c: 190: case 3:
	
i1l637:	
	line	191
;main.c: 191: if(shiweiNum & 0x04)
	btfss	(_shiweiNum),(2)&7
	goto	u156_21
	goto	u156_20
u156_21:
	goto	i1l662
u156_20:
	line	193
	
i1l2079:	
;main.c: 192: {
;main.c: 193: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	194
;main.c: 194: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	195
;main.c: 195: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	196
;main.c: 196: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l662
	line	199
;main.c: 199: case 4:
	
i1l639:	
	line	200
;main.c: 200: if(shiweiNum & 0x08)
	btfss	(_shiweiNum),(3)&7
	goto	u157_21
	goto	u157_20
u157_21:
	goto	i1l662
u157_20:
	line	202
	
i1l2081:	
;main.c: 201: {
;main.c: 202: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	203
;main.c: 203: TRISA &= 0xDF;
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	204
;main.c: 204: RA5 = 1;
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	205
;main.c: 205: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l662
	line	208
;main.c: 208: case 5:
	
i1l641:	
	line	209
;main.c: 209: if(shiweiNum & 0x10)
	btfss	(_shiweiNum),(4)&7
	goto	u158_21
	goto	u158_20
u158_21:
	goto	i1l662
u158_20:
	line	211
	
i1l2083:	
;main.c: 210: {
;main.c: 211: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	212
;main.c: 212: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	213
;main.c: 213: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	214
;main.c: 214: RA5 = 0;
	bcf	(1077/8)^080h,(1077)&7	;volatile
	goto	i1l662
	line	217
;main.c: 217: case 6:
	
i1l643:	
	line	218
;main.c: 218: if(shiweiNum & 0x20)
	btfss	(_shiweiNum),(5)&7
	goto	u159_21
	goto	u159_20
u159_21:
	goto	i1l662
u159_20:
	line	220
	
i1l2085:	
;main.c: 219: {
;main.c: 220: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	221
;main.c: 221: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	222
;main.c: 222: RA5 = 1;
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	223
;main.c: 223: RA1 = 0;
	bcf	(1073/8)^080h,(1073)&7	;volatile
	goto	i1l662
	line	226
;main.c: 226: case 7:
	
i1l645:	
	line	227
;main.c: 227: if(shiweiNum & 0x40)
	btfss	(_shiweiNum),(6)&7
	goto	u160_21
	goto	u160_20
u160_21:
	goto	i1l662
u160_20:
	line	229
	
i1l2087:	
;main.c: 228: {
;main.c: 229: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	230
;main.c: 230: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	231
;main.c: 231: RA5 = 1;
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	232
;main.c: 232: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l662
	line	235
;main.c: 235: case 8:
	
i1l647:	
	line	236
;main.c: 236: if(geweiNum & 0x01)
	btfss	(_geweiNum),(0)&7
	goto	u161_21
	goto	u161_20
u161_21:
	goto	i1l662
u161_20:
	line	238
	
i1l2089:	
;main.c: 237: {
;main.c: 238: TRISA &= 0xFB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	239
;main.c: 239: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	240
;main.c: 240: RA2 = 1;
	bsf	(1074/8)^080h,(1074)&7	;volatile
	line	241
;main.c: 241: RA1 = 0;
	bcf	(1073/8)^080h,(1073)&7	;volatile
	goto	i1l662
	line	244
;main.c: 244: case 9:
	
i1l649:	
	line	245
;main.c: 245: if(geweiNum & 0x02)
	btfss	(_geweiNum),(1)&7
	goto	u162_21
	goto	u162_20
u162_21:
	goto	i1l662
u162_20:
	line	247
	
i1l2091:	
;main.c: 246: {
;main.c: 247: TRISA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	248
;main.c: 248: TRISA &= 0xFB;
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	249
;main.c: 249: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	line	250
;main.c: 250: RA2 = 0;
	bcf	(1074/8)^080h,(1074)&7	;volatile
	goto	i1l662
	line	253
;main.c: 253: case 10:
	
i1l651:	
	line	254
;main.c: 254: if(geweiNum & 0x04)
	btfss	(_geweiNum),(2)&7
	goto	u163_21
	goto	u163_20
u163_21:
	goto	i1l662
u163_20:
	line	256
	
i1l2093:	
;main.c: 255: {
;main.c: 256: TRISA &= 0xFB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	257
;main.c: 257: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	258
;main.c: 258: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	259
;main.c: 259: RA2 = 0;
	bcf	(1074/8)^080h,(1074)&7	;volatile
	goto	i1l662
	line	262
;main.c: 262: case 11:
	
i1l653:	
	line	263
;main.c: 263: if(geweiNum & 0x08)
	btfss	(_geweiNum),(3)&7
	goto	u164_21
	goto	u164_20
u164_21:
	goto	i1l662
u164_20:
	line	265
	
i1l2095:	
;main.c: 264: {
;main.c: 265: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	266
;main.c: 266: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	267
;main.c: 267: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	268
;main.c: 268: RA5 = 0;
	bcf	(1077/8)^080h,(1077)&7	;volatile
	goto	i1l662
	line	271
;main.c: 271: case 12:
	
i1l655:	
	line	272
;main.c: 272: if(geweiNum & 0x10)
	btfss	(_geweiNum),(4)&7
	goto	u165_21
	goto	u165_20
u165_21:
	goto	i1l662
u165_20:
	line	274
	
i1l2097:	
;main.c: 273: {
;main.c: 274: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	275
;main.c: 275: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	276
;main.c: 276: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	277
;main.c: 277: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l662
	line	280
;main.c: 280: case 13:
	
i1l657:	
	line	281
;main.c: 281: if(geweiNum & 0x20)
	btfss	(_geweiNum),(5)&7
	goto	u166_21
	goto	u166_20
u166_21:
	goto	i1l662
u166_20:
	line	283
	
i1l2099:	
;main.c: 282: {
;main.c: 283: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	284
;main.c: 284: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	285
;main.c: 285: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	286
;main.c: 286: RA1 = 0;
	bcf	(1073/8)^080h,(1073)&7	;volatile
	goto	i1l662
	line	289
;main.c: 289: case 0:
	
i1l659:	
	line	290
;main.c: 290: if(geweiNum & 0x40)
	btfss	(_geweiNum),(6)&7
	goto	u167_21
	goto	u167_20
u167_21:
	goto	i1l662
u167_20:
	line	292
	
i1l2101:	
;main.c: 291: {
;main.c: 292: TRISA &= 0xFB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	293
;main.c: 293: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	294
;main.c: 294: RA2 = 1;
	bsf	(1074/8)^080h,(1074)&7	;volatile
	line	295
;main.c: 295: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l662
	line	170
	
i1l2105:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_ledCnt),w
	; Switch size 1, requested type "space"
; Number of cases is 14, Range of values is 0 to 13
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           20     6 (fixed)
; simple_byte           43    22 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	14
	subwf	fsr,w
skipnc
goto i1l662
movlw high(i1S2847)
movwf pclath
	movlw low(i1S2847)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S2847:
	ljmp	i1l659
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
psect	text17

	line	304
	
i1l662:	
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
