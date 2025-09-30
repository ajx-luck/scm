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
	FNCALL	_main,_checkOutAD
	FNCALL	_main,_chrgCtr
	FNCALL	_main,_keyCtr
	FNCALL	_main,_setBatStep
	FNCALL	_main,_workCtr
	FNCALL	_workCtr,___lbdiv
	FNCALL	_workCtr,___lbmod
	FNCALL	_workCtr,_pwmInit
	FNCALL	_workCtr,_pwmStop
	FNCALL	_setBatStep,___lwdiv
	FNCALL	_checkOutAD,_ADC_Sample
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
	retlw	073h
	retlw	076h
	global __end_of_numArray
__end_of_numArray:
	global	_numArray
	global	_power_ad
	global	_showBatStep
	global	_chrgFlag
	global	_out_ad
	global	_count30s
	global	_lowShanTime
	global	_result
	global	_adresult
	global	_maxDuty
	global	_curDuty
	global	_overTime
	global	_lockTime
	global	_lowBatTime
	global	_curBatStep
	global	_motorPwmFlag
	global	_sleepTime
	global	_lowBatFlag
	global	_ledCntTime
	global	_showBatTime
	global	_ledCnt
	global	_workStep
	global	_chrgFullTime
	global	_intCount10
	global	_chrgFullFlag
	global	_IntFlag
	global	_count1s
	global	_intCount
	global	_test_adc
	global	_startLockFlag
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_startLockFlag:
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
_power_ad:
       ds      2

_showBatStep:
       ds      1

_chrgFlag:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_out_ad:
       ds      2

_count30s:
       ds      2

_lowShanTime:
       ds      2

_result:
       ds      2

_adresult:
       ds      2

_maxDuty:
       ds      1

_curDuty:
       ds      1

_overTime:
       ds      1

_lockTime:
       ds      1

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

_ledCnt:
       ds      1

_workStep:
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
?_ledShow:	; 1 bytes @ 0x0
??_ledShow:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_AD_Init:	; 1 bytes @ 0x0
?_chrgCtr:	; 1 bytes @ 0x0
?_checkBatAD:	; 1 bytes @ 0x0
?_setBatStep:	; 1 bytes @ 0x0
?_keyCtr:	; 1 bytes @ 0x0
?_workCtr:	; 1 bytes @ 0x0
?_checkOutAD:	; 1 bytes @ 0x0
?_Sleep_Mode:	; 1 bytes @ 0x0
?_pwmStop:	; 1 bytes @ 0x0
?_pwmInit:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	ds	3
??_Init_System:	; 1 bytes @ 0x3
??_AD_Init:	; 1 bytes @ 0x3
??_chrgCtr:	; 1 bytes @ 0x3
??_keyCtr:	; 1 bytes @ 0x3
??_Sleep_Mode:	; 1 bytes @ 0x3
??_pwmStop:	; 1 bytes @ 0x3
??_pwmInit:	; 1 bytes @ 0x3
?_ADC_Sample:	; 1 bytes @ 0x3
?___lbdiv:	; 1 bytes @ 0x3
?___lbmod:	; 1 bytes @ 0x3
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x3
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
??_checkOutAD:	; 1 bytes @ 0x4
??___lbdiv:	; 1 bytes @ 0x4
??___lbmod:	; 1 bytes @ 0x4
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
	ds	1
??_setBatStep:	; 1 bytes @ 0x3
	ds	1
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
;!    BSS         34
;!    Persistent  4
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      11
;!    BANK0            80     17      51
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
;!    _checkOutAD->_ADC_Sample
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
;!    _checkOutAD->_ADC_Sample
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
;! (0) _main                                                 0     0      0    2837
;!                            _AD_Init
;!                        _Init_System
;!                         _Sleep_Mode
;!                         _checkBatAD
;!                         _checkOutAD
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
;! (1) _setBatStep                                           2     2      0     501
;!                                              3 BANK0      2     2      0
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     501
;!                                              3 COMMON     4     0      4
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _keyCtr                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkOutAD                                           5     5      0     912
;!                                              4 COMMON     1     1      0
;!                         _ADC_Sample
;! ---------------------------------------------------------------------------------
;! (1) _checkBatAD                                           5     5      0     912
;!                                              4 COMMON     1     1      0
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
;!   _checkOutAD
;!     _ADC_Sample
;!   _chrgCtr
;!   _keyCtr
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
;!BANK0               50     11      33       4       63.8%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      3E       7        0.0%
;!DATA                 0      0      3E       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 124 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
;;		_checkOutAD
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
	line	124
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	124
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	126
	
l2866:	
;main.c: 126: Init_System();
	fcall	_Init_System
	line	127
;main.c: 127: AD_Init();
	fcall	_AD_Init
	line	128
	
l2868:	
;main.c: 129: baiweiNum = 1;
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_geweiNum)
	movwf	(_shiweiNum)
	line	130
	
l2870:	
;main.c: 130: firstTime = 250;
	movlw	low(0FAh)
	movwf	(_firstTime)
	line	131
	
l2872:	
;main.c: 131: startLockFlag = 1;
	clrf	(_startLockFlag)
	incf	(_startLockFlag),f
	line	132
;main.c: 132: while (1)
	
l631:	
	line	134
# 134 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
clrwdt ;# 
psect	maintext
	line	135
	
l2874:	
;main.c: 135: if(intCount10 > 10)
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_intCount10),w
	skipc
	goto	u3201
	goto	u3200
u3201:
	goto	l2878
u3200:
	line	137
	
l2876:	
;main.c: 136: {
;main.c: 137: intCount10 = 0;
	clrf	(_intCount10)
	line	139
	
l2878:	
;main.c: 138: }
;main.c: 139: if(!IntFlag)
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l2882
u3210:
	goto	l631
	line	141
	
l2882:	
;main.c: 141: IntFlag = 0;
	clrf	(_IntFlag)
	line	142
	
l2884:	
;main.c: 142: chrgCtr();
	fcall	_chrgCtr
	line	143
	
l2886:	
;main.c: 143: checkBatAD();
	fcall	_checkBatAD
	line	144
	
l2888:	
;main.c: 144: setBatStep();
	fcall	_setBatStep
	line	145
	
l2890:	
;main.c: 145: if(lowBatFlag == 0 && firstTime == 0 && chrgFlag == 0)
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l2898
u3220:
	
l2892:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3231
	goto	u3230
u3231:
	goto	l2898
u3230:
	
l2894:	
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3241
	goto	u3240
u3241:
	goto	l2898
u3240:
	line	147
	
l2896:	
;main.c: 146: {
;main.c: 147: keyCtr();
	fcall	_keyCtr
	line	149
	
l2898:	
;main.c: 148: }
;main.c: 149: workCtr();
	fcall	_workCtr
	line	150
	
l2900:	
;main.c: 150: checkOutAD();
	fcall	_checkOutAD
	line	151
	
l2902:	
;main.c: 151: if(chrgFlag == 0 && workStep == 0 && firstTime == 0 && showBatTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3251
	goto	u3250
u3251:
	goto	l2918
u3250:
	
l2904:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_workStep)),w
	btfss	status,2
	goto	u3261
	goto	u3260
u3261:
	goto	l2918
u3260:
	
l2906:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3271
	goto	u3270
u3271:
	goto	l2918
u3270:
	
l2908:	
;main.c: 152: {
;main.c: 153: baiweiNum = 0;
	movf	((_showBatTime)),w
	btfss	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l2918
u3280:
	line	154
	
l2910:	
;main.c: 154: shiweiNum = geweiNum = 0;
	clrf	(_geweiNum)
	clrf	(_shiweiNum)
	line	155
	
l2912:	
;main.c: 155: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u3291
	goto	u3290
u3291:
	goto	l631
u3290:
	line	157
	
l2914:	
;main.c: 156: {
;main.c: 157: sleepTime = 0;
	clrf	(_sleepTime)
	line	158
	
l2916:	
;main.c: 158: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l631
	line	163
	
l2918:	
;main.c: 161: else
;main.c: 162: {
;main.c: 163: sleepTime = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_sleepTime)
	goto	l631
	global	start
	ljmp	start
	opt stack 0
	line	166
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 436 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	436
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	436
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	445
	
l2722:	
;main.c: 445: if(curDuty < maxDuty)
	movf	(_maxDuty),w
	subwf	(_curDuty),w
	skipnc
	goto	u2901
	goto	u2900
u2901:
	goto	l2726
u2900:
	line	447
	
l2724:	
;main.c: 446: {
;main.c: 447: curDuty++;
	incf	(_curDuty),f
	line	448
;main.c: 448: }
	goto	l2730
	line	449
	
l2726:	
;main.c: 449: else if(curDuty > maxDuty)
	movf	(_curDuty),w
	subwf	(_maxDuty),w
	skipnc
	goto	u2911
	goto	u2910
u2911:
	goto	l2730
u2910:
	line	451
	
l2728:	
;main.c: 450: {
;main.c: 451: curDuty--;
	decf	(_curDuty),f
	line	453
	
l2730:	
;main.c: 452: }
;main.c: 453: if(lowShanTime > 0)
	movf	((_lowShanTime)),w
iorwf	((_lowShanTime+1)),w
	btfsc	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l2736
u2920:
	line	455
	
l2732:	
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
	goto	u2931
	goto	u2930
u2931:
	goto	l2736
u2930:
	line	457
	
l2734:	
;main.c: 456: {
;main.c: 457: workStep = 0;
	clrf	(_workStep)
	line	460
	
l2736:	
;main.c: 458: }
;main.c: 459: }
;main.c: 460: if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2941
	goto	u2940
u2941:
	goto	l2740
u2940:
	line	462
	
l2738:	
;main.c: 461: {
;main.c: 462: showBatTime--;
	decf	(_showBatTime),f
	line	464
	
l2740:	
;main.c: 463: }
;main.c: 464: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u2951
	goto	u2950
u2951:
	goto	l2752
u2950:
	line	466
	
l2742:	
;main.c: 465: {
;main.c: 466: firstTime--;
	decf	(_firstTime),f
	line	467
	
l2744:	
;main.c: 467: if(showBatStep < curBatStep)
	movf	(_curBatStep),w
	subwf	(_showBatStep),w
	skipnc
	goto	u2961
	goto	u2960
u2961:
	goto	l2748
u2960:
	line	469
	
l2746:	
;main.c: 468: {
;main.c: 469: showBatStep = curBatStep;
	movf	(_curBatStep),w
	movwf	(_showBatStep)
	line	471
	
l2748:	
;main.c: 470: }
;main.c: 471: shiweiNum = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	472
	
l2750:	
;main.c: 472: geweiNum = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	473
;main.c: 473: }
	goto	l2826
	line	474
	
l2752:	
;main.c: 474: else if(workStep == 0 || (lowShanTime > 0 && count1s < 50))
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2971
	goto	u2970
u2971:
	goto	l2758
u2970:
	
l2754:	
	movf	((_lowShanTime)),w
iorwf	((_lowShanTime+1)),w
	btfsc	status,2
	goto	u2981
	goto	u2980
u2981:
	goto	l2766
u2980:
	
l2756:	
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u2991
	goto	u2990
u2991:
	goto	l2766
u2990:
	line	476
	
l2758:	
;main.c: 475: {
;main.c: 476: shiweiNum = 0;
	clrf	(_shiweiNum)
	line	477
;main.c: 477: geweiNum = 0;
	clrf	(_geweiNum)
	line	478
;main.c: 478: maxDuty = 0;
	clrf	(_maxDuty)
	line	479
	
l2760:	
;main.c: 479: PWMD2L = curDuty;
	movf	(_curDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	line	480
	
l2762:	
;main.c: 480: if(curDuty < 40)
	movlw	low(028h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_curDuty),w
	skipnc
	goto	u3001
	goto	u3000
u3001:
	goto	l2826
u3000:
	line	482
	
l2764:	
;main.c: 481: {
;main.c: 482: pwmStop();
	fcall	_pwmStop
	goto	l2826
	line	486
	
l2766:	
;main.c: 486: else if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l2796
u3010:
	line	488
	
l2768:	
;main.c: 487: {
;main.c: 488: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l2772
u3020:
	line	490
	
l2770:	
;main.c: 489: {
;main.c: 490: shiweiNum = numArray[10];
	movlw	low((((_numArray+0Ah)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	491
;main.c: 491: geweiNum = numArray[1];
	movlw	low((((_numArray+01h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	493
	
l2772:	
;main.c: 492: }
;main.c: 493: if(motorPwmFlag == 0)
	movf	((_motorPwmFlag)),w
	btfss	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l2782
u3030:
	line	495
	
l2774:	
;main.c: 494: {
;main.c: 495: pwmInit();
	fcall	_pwmInit
	line	496
	
l2776:	
;main.c: 496: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	497
	
l2778:	
;main.c: 497: PWMD2L = 40;
	movlw	low(028h)
	movwf	(155)^080h	;volatile
	line	498
	
l2780:	
;main.c: 498: curDuty = 40;
	movlw	low(028h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_curDuty)
	line	500
	
l2782:	
;main.c: 499: }
;main.c: 500: PWMD2L = curDuty;
	movf	(_curDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	line	501
	
l2784:	
;main.c: 501: maxDuty = 60;
	movlw	low(03Ch)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_maxDuty)
	line	502
	
l2786:	
;main.c: 502: if(out_ad > 200)
	movlw	0
	subwf	(_out_ad+1),w
	movlw	0C9h
	skipnz
	subwf	(_out_ad),w
	skipc
	goto	u3041
	goto	u3040
u3041:
	goto	l2794
u3040:
	line	504
	
l2788:	
;main.c: 503: {
;main.c: 504: if(++overTime > 10)
	movlw	low(0Bh)
	incf	(_overTime),f
	subwf	((_overTime)),w
	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l2826
u3050:
	line	506
	
l2790:	
;main.c: 505: {
;main.c: 506: overTime = 0;
	clrf	(_overTime)
	line	507
;main.c: 507: workStep = 0;
	clrf	(_workStep)
	line	508
	
l2792:	
;main.c: 508: startLockFlag = 1;
	clrf	(_startLockFlag)
	incf	(_startLockFlag),f
	goto	l2826
	line	513
	
l2794:	
;main.c: 511: else
;main.c: 512: {
;main.c: 513: overTime = 0;
	clrf	(_overTime)
	goto	l2826
	line	516
	
l2796:	
;main.c: 516: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l725
u3060:
	line	518
	
l2798:	
;main.c: 517: {
;main.c: 518: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3071
	goto	u3070
u3071:
	goto	l2802
u3070:
	line	520
	
l2800:	
;main.c: 519: {
;main.c: 520: shiweiNum = numArray[10];
	movlw	low((((_numArray+0Ah)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	521
;main.c: 521: geweiNum = numArray[2];
	movlw	low((((_numArray+02h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	523
	
l2802:	
;main.c: 522: }
;main.c: 523: if(motorPwmFlag == 0)
	movf	((_motorPwmFlag)),w
	btfss	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l2812
u3080:
	line	525
	
l2804:	
;main.c: 524: {
;main.c: 525: pwmInit();
	fcall	_pwmInit
	line	526
	
l2806:	
;main.c: 526: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	527
	
l2808:	
;main.c: 527: PWMD2L = 40;
	movlw	low(028h)
	movwf	(155)^080h	;volatile
	line	528
	
l2810:	
;main.c: 528: curDuty = 40;
	movlw	low(028h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_curDuty)
	line	530
	
l2812:	
;main.c: 529: }
;main.c: 530: PWMD2L = curDuty;
	movf	(_curDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	line	531
	
l2814:	
;main.c: 531: maxDuty = 99;
	movlw	low(063h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_maxDuty)
	line	532
	
l2816:	
;main.c: 532: if(out_ad > 220)
	movlw	0
	subwf	(_out_ad+1),w
	movlw	0DDh
	skipnz
	subwf	(_out_ad),w
	skipc
	goto	u3091
	goto	u3090
u3091:
	goto	l2794
u3090:
	line	534
	
l2818:	
;main.c: 533: {
;main.c: 534: if(++overTime > 10)
	movlw	low(0Bh)
	incf	(_overTime),f
	subwf	((_overTime)),w
	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l725
u3100:
	goto	l2790
	line	546
	
l725:	
	
l2826:	
;main.c: 544: }
;main.c: 545: }
;main.c: 546: if(chrgFlag || showBatTime > 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3111
	goto	u3110
u3111:
	goto	l2830
u3110:
	
l2828:	
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l750
u3120:
	line	548
	
l2830:	
;main.c: 547: {
;main.c: 548: if(showBatStep >=99)
	movlw	low(063h)
	subwf	(_showBatStep),w
	skipc
	goto	u3131
	goto	u3130
u3131:
	goto	l2834
u3130:
	line	550
	
l2832:	
;main.c: 549: {
;main.c: 550: shiweiNum = numArray[9];
	movlw	low((((_numArray+09h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	551
;main.c: 551: geweiNum = numArray[9];
	movlw	low((((_numArray+09h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	552
;main.c: 552: }
	goto	l750
	line	553
	
l2834:	
;main.c: 554: {
;main.c: 555: baiweiNum = 0;
	movlw	low(0Ah)
	subwf	(_showBatStep),w
	skipc
	goto	u3141
	goto	u3140
u3141:
	goto	l2846
u3140:
	line	556
	
l2836:	
;main.c: 556: shiweiNum = numArray[showBatStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_showBatStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	557
	
l2838:	
;main.c: 557: if(chrgFlag && count1s < 50)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l2844
u3150:
	
l2840:	
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u3161
	goto	u3160
u3161:
	goto	l2844
u3160:
	line	559
	
l2842:	
;main.c: 558: {
;main.c: 559: geweiNum = 0;
	clrf	(_geweiNum)
	line	560
;main.c: 560: }
	goto	l750
	line	563
	
l2844:	
;main.c: 561: else
;main.c: 562: {
;main.c: 563: geweiNum = numArray[showBatStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_showBatStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	goto	l750
	line	569
	
l2846:	
;main.c: 569: shiweiNum = 0;
	clrf	(_shiweiNum)
	line	570
	
l2848:	
;main.c: 570: if(chrgFlag && count1s < 50)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l2854
u3170:
	
l2850:	
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u3181
	goto	u3180
u3181:
	goto	l2854
u3180:
	goto	l2842
	line	576
	
l2854:	
;main.c: 574: else
;main.c: 575: {
;main.c: 576: geweiNum = numArray[showBatStep];
	movf	(_showBatStep),w
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	582
	
l750:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 826 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	826
global __ptext2
__ptext2:	;psect for function _pwmStop
psect	text2
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	826
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: [status,2]
	line	828
	
l1902:	
;main.c: 828: PWMCON0 &= 0XFB;
	bcf	(21)+(2/8),(2)&7	;volatile
	line	829
;main.c: 829: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	830
	
l1904:	
;main.c: 830: motorPwmFlag = 0;
	clrf	(_motorPwmFlag)
	line	831
	
l799:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 810 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	810
global __ptext3
__ptext3:	;psect for function _pwmInit
psect	text3
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	810
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2]
	line	812
	
l1906:	
;main.c: 812: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	813
;main.c: 813: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	814
	
l1908:	
;main.c: 814: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	817
	
l1910:	
;main.c: 817: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	818
;main.c: 818: PWMD2L = 60;
	movlw	low(03Ch)
	movwf	(155)^080h	;volatile
	line	819
	
l1912:	
;main.c: 819: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	821
	
l1914:	
;main.c: 821: PWMCON0 = 0X64;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	822
;main.c: 822: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	823
	
l1916:	
;main.c: 823: motorPwmFlag = 1;
	clrf	(_motorPwmFlag)
	incf	(_motorPwmFlag),f
	line	824
	
l796:	
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
	
l2596:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l2598:	
	clrf	(___lbmod@rem)
	line	12
	
l2600:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u2605:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u2605
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l2602:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l2604:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u2611
	goto	u2610
u2611:
	goto	l2608
u2610:
	line	15
	
l2606:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l2608:	
	decfsz	(___lbmod@counter),f
	goto	u2621
	goto	u2620
u2621:
	goto	l2600
u2620:
	line	17
	
l2610:	
	movf	(___lbmod@rem),w
	line	18
	
l1099:	
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
	
l1990:	
	clrf	(___lbdiv@quotient)
	line	10
	
l1992:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1381
	goto	u1380
u1381:
	goto	l2010
u1380:
	line	11
	
l1994:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l1998
	
l1088:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l1996:	
	incf	(___lbdiv@counter),f
	line	12
	
l1998:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1391
	goto	u1390
u1391:
	goto	l1088
u1390:
	line	16
	
l1090:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l2000:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1401
	goto	u1400
u1401:
	goto	l2006
u1400:
	line	19
	
l2002:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2004:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2006:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l2008:	
	decfsz	(___lbdiv@counter),f
	goto	u1411
	goto	u1410
u1411:
	goto	l1090
u1410:
	line	25
	
l2010:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1093:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_setBatStep

;; *************** function _setBatStep *****************
;; Defined at:
;;		line 584 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
;;      Temps:          0       2       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
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
	line	584
global __ptext6
__ptext6:	;psect for function _setBatStep
psect	text6
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	584
	global	__size_of_setBatStep
	__size_of_setBatStep	equ	__end_of_setBatStep-_setBatStep
	
_setBatStep:	
;incstack = 0
	opt	stack 4
; Regs used in _setBatStep: [wreg+status,2+status,0+pclath+cstack]
	line	586
	
l2650:	
;main.c: 586: if(lowBatFlag == 1 && lowShanTime == 0 && workStep > 0)
	bcf	status, 5	;RP0=0, select bank0
		decf	((_lowBatFlag)),w
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l2660
u2680:
	
l2652:	
	movf	((_lowShanTime)),w
iorwf	((_lowShanTime+1)),w
	btfss	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l2660
u2690:
	
l2654:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l2660
u2700:
	line	588
	
l2656:	
;main.c: 587: {
;main.c: 588: showBatStep = 0;
	clrf	(_showBatStep)
	line	589
;main.c: 589: curBatStep = 0;
	clrf	(_curBatStep)
	line	590
	
l2658:	
;main.c: 590: lowShanTime = 300;
	movlw	02Ch
	movwf	(_lowShanTime)
	movlw	01h
	movwf	((_lowShanTime))+1
	line	591
;main.c: 591: }
	goto	l777
	line	592
	
l2660:	
;main.c: 592: else if(power_ad < 1830)
	movlw	07h
	subwf	(_power_ad+1),w	;volatile
	movlw	026h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u2711
	goto	u2710
u2711:
	goto	l2670
u2710:
	line	594
	
l2662:	
;main.c: 593: {
;main.c: 594: if(count1s == 0)
	movf	((_count1s)),w
	btfss	status,2
	goto	u2721
	goto	u2720
u2721:
	goto	l756
u2720:
	line	596
	
l2664:	
;main.c: 595: {
;main.c: 596: if(showBatStep > 1)
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u2731
	goto	u2730
u2731:
	goto	l757
u2730:
	line	598
	
l2666:	
;main.c: 597: {
;main.c: 598: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l759
u2740:
	line	599
	
l2668:	
;main.c: 599: showBatStep--;
	decf	(_showBatStep),f
	goto	l759
	line	601
	
l757:	
	line	603
;main.c: 601: else
;main.c: 602: {
;main.c: 603: showBatStep = 1;
	clrf	(_showBatStep)
	incf	(_showBatStep),f
	line	604
	
l759:	
	line	605
;main.c: 604: }
;main.c: 605: curBatStep = 1;
	clrf	(_curBatStep)
	incf	(_curBatStep),f
	line	606
	
l756:	
	line	607
;main.c: 606: }
;main.c: 607: curBatStep = 1;
	clrf	(_curBatStep)
	incf	(_curBatStep),f
	line	608
;main.c: 608: }
	goto	l777
	line	611
	
l2670:	
;main.c: 609: else
;main.c: 610: {
;main.c: 611: if(power_ad < 1990)
	movlw	07h
	subwf	(_power_ad+1),w	;volatile
	movlw	0C6h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u2751
	goto	u2750
u2751:
	goto	l2674
u2750:
	line	613
	
l2672:	
;main.c: 612: {
;main.c: 613: curBatStep = (power_ad - 1830)/16;
	movf	(_power_ad),w	;volatile
	addlw	low(0F8DAh)
	movwf	(??_setBatStep+0)+0
	movf	(_power_ad+1),w	;volatile
	skipnc
	addlw	1
	addlw	high(0F8DAh)
	movwf	1+(??_setBatStep+0)+0
	movlw	04h
u2765:
	clrc
	rrf	(??_setBatStep+0)+1,f
	rrf	(??_setBatStep+0)+0,f
	addlw	-1
	skipz
	goto	u2765
	movf	0+(??_setBatStep+0)+0,w
	movwf	(_curBatStep)
	line	614
;main.c: 614: }
	goto	l2680
	line	615
	
l2674:	
;main.c: 615: else if(power_ad < 2090)
	movlw	08h
	subwf	(_power_ad+1),w	;volatile
	movlw	02Ah
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u2771
	goto	u2770
u2771:
	goto	l2678
u2770:
	line	617
	
l2676:	
;main.c: 616: {
;main.c: 617: curBatStep = 10 + ((power_ad - 1990)/5);
	movlw	05h
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(_power_ad),w	;volatile
	addlw	low(0F83Ah)
	movwf	(___lwdiv@dividend)
	movf	(_power_ad+1),w	;volatile
	skipnc
	addlw	1
	addlw	high(0F83Ah)
	movwf	1+(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	0Ah
	movwf	(_curBatStep)
	line	618
;main.c: 618: }
	goto	l2680
	line	621
	
l2678:	
;main.c: 619: else
;main.c: 620: {
;main.c: 621: curBatStep = 30 + ((power_ad - 2090)/3);
	movlw	03h
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(_power_ad),w	;volatile
	addlw	low(0F7D6h)
	movwf	(___lwdiv@dividend)
	movf	(_power_ad+1),w	;volatile
	skipnc
	addlw	1
	addlw	high(0F7D6h)
	movwf	1+(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	01Eh
	movwf	(_curBatStep)
	line	623
	
l2680:	
;main.c: 622: }
;main.c: 623: if(curBatStep > 99)
	movlw	low(064h)
	subwf	(_curBatStep),w
	skipc
	goto	u2781
	goto	u2780
u2781:
	goto	l2684
u2780:
	line	625
	
l2682:	
;main.c: 624: {
;main.c: 625: curBatStep = 99;
	movlw	low(063h)
	movwf	(_curBatStep)
	line	628
	
l2684:	
;main.c: 626: }
;main.c: 628: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l2708
u2790:
	line	630
	
l2686:	
;main.c: 629: {
;main.c: 630: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l2696
u2800:
	line	632
	
l2688:	
;main.c: 631: {
;main.c: 632: if(++count30s >= 1000 && showBatStep < 99)
	incf	(_count30s),f
	skipnz
	incf	(_count30s+1),f
	movlw	03h
	subwf	((_count30s+1)),w
	movlw	0E8h
	skipnz
	subwf	((_count30s)),w
	skipc
	goto	u2811
	goto	u2810
u2811:
	goto	l777
u2810:
	
l2690:	
	movlw	low(063h)
	subwf	(_showBatStep),w
	skipnc
	goto	u2821
	goto	u2820
u2821:
	goto	l777
u2820:
	line	634
	
l2692:	
;main.c: 633: {
;main.c: 634: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	line	635
	
l2694:	
;main.c: 635: showBatStep++;
	incf	(_showBatStep),f
	goto	l777
	line	638
	
l2696:	
;main.c: 638: else if(curBatStep > showBatStep)
	movf	(_curBatStep),w
	subwf	(_showBatStep),w
	skipnc
	goto	u2831
	goto	u2830
u2831:
	goto	l2706
u2830:
	line	640
	
l2698:	
;main.c: 639: {
;main.c: 640: if(++count30s >= 3000 && showBatStep < 99)
	incf	(_count30s),f
	skipnz
	incf	(_count30s+1),f
	movlw	0Bh
	subwf	((_count30s+1)),w
	movlw	0B8h
	skipnz
	subwf	((_count30s)),w
	skipc
	goto	u2841
	goto	u2840
u2841:
	goto	l773
u2840:
	
l2700:	
	movlw	low(063h)
	subwf	(_showBatStep),w
	skipnc
	goto	u2851
	goto	u2850
u2851:
	goto	l773
u2850:
	goto	l2692
	line	649
	
l2706:	
;main.c: 647: else
;main.c: 648: {
;main.c: 649: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	goto	l777
	line	654
	
l2708:	
;main.c: 652: else
;main.c: 653: {
;main.c: 654: if(curBatStep < showBatStep && showBatStep > 1)
	movf	(_showBatStep),w
	subwf	(_curBatStep),w
	skipnc
	goto	u2861
	goto	u2860
u2861:
	goto	l2706
u2860:
	
l2710:	
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u2871
	goto	u2870
u2871:
	goto	l2706
u2870:
	line	656
	
l2712:	
;main.c: 655: {
;main.c: 656: if(++count30s >= 1000 && showBatStep > 1)
	incf	(_count30s),f
	skipnz
	incf	(_count30s+1),f
	movlw	03h
	subwf	((_count30s+1)),w
	movlw	0E8h
	skipnz
	subwf	((_count30s)),w
	skipc
	goto	u2881
	goto	u2880
u2881:
	goto	l773
u2880:
	
l2714:	
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u2891
	goto	u2890
u2891:
	goto	l773
u2890:
	line	658
	
l2716:	
;main.c: 657: {
;main.c: 658: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	line	659
	
l2718:	
;main.c: 659: showBatStep--;
	decf	(_showBatStep),f
	goto	l777
	line	666
	
l773:	
	line	669
	
l777:	
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
	
l2614:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l2616:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l2636
u2630:
	line	16
	
l2618:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l2622
	line	18
	
l2620:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l2622:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l2620
u2640:
	line	22
	
l2624:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l2626:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2655
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2655:
	skipc
	goto	u2651
	goto	u2650
u2651:
	goto	l2632
u2650:
	line	24
	
l2628:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l2630:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l2632:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l2634:	
	decfsz	(___lwdiv@counter),f
	goto	u2661
	goto	u2660
u2661:
	goto	l2624
u2660:
	line	30
	
l2636:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l1167:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 404 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	404
global __ptext8
__ptext8:	;psect for function _keyCtr
psect	text8
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	404
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _keyCtr: [wreg+status,2+status,0]
	line	406
	
l2218:	
;main.c: 406: if(PORTB & 0x02)
	btfss	(6),(1)&7	;volatile
	goto	u1941
	goto	u1940
u1941:
	goto	l2230
u1940:
	line	408
	
l2220:	
;main.c: 407: {
;main.c: 408: lockTime = 0;
	clrf	(_lockTime)
	line	409
	
l2222:	
;main.c: 409: if(workStep > 0 || startLockFlag == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u1951
	goto	u1950
u1951:
	goto	l704
u1950:
	
l2224:	
	movf	((_startLockFlag)),w
	btfss	status,2
	goto	u1961
	goto	u1960
u1961:
	goto	l709
u1960:
	
l704:	
	line	411
;main.c: 410: {
;main.c: 411: startLockFlag = 1;
	clrf	(_startLockFlag)
	incf	(_startLockFlag),f
	line	412
;main.c: 412: if(PORTB & 0x04)
	btfss	(6),(2)&7	;volatile
	goto	u1971
	goto	u1970
u1971:
	goto	l2228
u1970:
	line	414
	
l2226:	
;main.c: 413: {
;main.c: 414: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	415
;main.c: 415: }
	goto	l709
	line	418
	
l2228:	
;main.c: 416: else
;main.c: 417: {
;main.c: 418: workStep = 2;
	movlw	low(02h)
	movwf	(_workStep)
	goto	l709
	line	424
	
l2230:	
;main.c: 422: else
;main.c: 423: {
;main.c: 424: workStep = 0;
	clrf	(_workStep)
	line	425
	
l2232:	
;main.c: 425: if(++lockTime > 20)
	movlw	low(015h)
	incf	(_lockTime),f
	subwf	((_lockTime)),w
	skipc
	goto	u1981
	goto	u1980
u1981:
	goto	l709
u1980:
	line	427
	
l2234:	
;main.c: 426: {
;main.c: 427: lockTime = 0;
	clrf	(_lockTime)
	line	428
;main.c: 428: startLockFlag = 0;
	clrf	(_startLockFlag)
	line	433
	
l709:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 320 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	320
global __ptext9
__ptext9:	;psect for function _chrgCtr
psect	text9
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	320
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _chrgCtr: [wreg+status,2+status,0]
	line	322
	
l2106:	
;main.c: 322: if(PORTB & 0x01)
	btfss	(6),(0)&7	;volatile
	goto	u1651
	goto	u1650
u1651:
	goto	l2124
u1650:
	line	324
	
l2108:	
;main.c: 323: {
;main.c: 324: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	325
;main.c: 325: startLockFlag = 1;
	clrf	(_startLockFlag)
	incf	(_startLockFlag),f
	line	326
	
l2110:	
;main.c: 326: workStep = 0;
	clrf	(_workStep)
	line	327
;main.c: 327: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	328
	
l2112:	
;main.c: 328: if(showBatStep == 0)
	movf	((_showBatStep)),w
	btfss	status,2
	goto	u1661
	goto	u1660
u1661:
	goto	l680
u1660:
	line	330
	
l2114:	
;main.c: 329: {
;main.c: 330: showBatStep = 1;
	clrf	(_showBatStep)
	incf	(_showBatStep),f
	line	331
	
l680:	
	line	332
;main.c: 331: }
;main.c: 332: if(PORTA & 0x01)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(134)^080h,(0)&7	;volatile
	goto	u1671
	goto	u1670
u1671:
	goto	l2118
u1670:
	line	334
	
l2116:	
;main.c: 333: {
;main.c: 334: chrgFullTime = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgFullTime)
	line	335
;main.c: 335: }
	goto	l688
	line	338
	
l2118:	
;main.c: 336: else
;main.c: 337: {
;main.c: 338: if(++chrgFullTime >= 200)
	movlw	low(0C8h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_chrgFullTime),f
	subwf	((_chrgFullTime)),w
	skipc
	goto	u1681
	goto	u1680
u1681:
	goto	l688
u1680:
	line	340
	
l2120:	
;main.c: 339: {
;main.c: 340: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	line	341
	
l2122:	
;main.c: 341: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l688
	line	347
	
l2124:	
;main.c: 345: else
;main.c: 346: {
;main.c: 347: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	348
;main.c: 348: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	349
;main.c: 349: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	line	350
	
l2126:	
;main.c: 350: if(power_ad < 1650)
	movlw	06h
	subwf	(_power_ad+1),w	;volatile
	movlw	072h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u1691
	goto	u1690
u1691:
	goto	l2134
u1690:
	line	352
	
l2128:	
;main.c: 351: {
;main.c: 352: if(++lowBatTime > 200)
	movlw	low(0C9h)
	incf	(_lowBatTime),f
	subwf	((_lowBatTime)),w
	skipc
	goto	u1701
	goto	u1700
u1701:
	goto	l688
u1700:
	line	354
	
l2130:	
;main.c: 353: {
;main.c: 354: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	355
	
l2132:	
;main.c: 355: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	356
;main.c: 356: workStep = 0;
	clrf	(_workStep)
	line	357
;main.c: 357: showBatStep = 0;
	clrf	(_showBatStep)
	goto	l688
	line	362
	
l2134:	
;main.c: 360: else
;main.c: 361: {
;main.c: 362: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	365
	
l688:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_checkOutAD

;; *************** function _checkOutAD *****************
;; Defined at:
;;		line 690 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	690
global __ptext10
__ptext10:	;psect for function _checkOutAD
psect	text10
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	690
	global	__size_of_checkOutAD
	__size_of_checkOutAD	equ	__end_of_checkOutAD-_checkOutAD
	
_checkOutAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkOutAD: [wreg+status,2+status,0+pclath+cstack]
	line	692
	
l2856:	
;main.c: 692: test_adc = ADC_Sample(13, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0Dh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	693
	
l2858:	
;main.c: 693: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3191
	goto	u3190
u3191:
	goto	l2862
u3190:
	line	697
	
l2860:	
;main.c: 694: {
;main.c: 695: volatile unsigned long power_temp;
;main.c: 697: out_ad = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_out_ad+1)
	movf	(_adresult),w	;volatile
	movwf	(_out_ad)
	line	698
;main.c: 698: }
	goto	l787
	line	701
	
l2862:	
;main.c: 699: else
;main.c: 700: {
;main.c: 701: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	702
;main.c: 702: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	703
	
l2864:	
;main.c: 703: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkOutAD+0)+0),f
	u3307:
decfsz	(??_checkOutAD+0)+0,f
	goto	u3307
opt asmopt_pop

	line	706
	
l787:	
	return
	opt stack 0
GLOBAL	__end_of_checkOutAD
	__end_of_checkOutAD:
	signat	_checkOutAD,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 672 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	672
global __ptext11
__ptext11:	;psect for function _checkBatAD
psect	text11
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	672
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	674
	
l2640:	
;main.c: 674: test_adc = ADC_Sample(12, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0Ch)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	675
	
l2642:	
;main.c: 675: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l2646
u2670:
	line	679
	
l2644:	
;main.c: 676: {
;main.c: 677: volatile unsigned long power_temp;
;main.c: 679: power_ad = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_power_ad+1)	;volatile
	movf	(_adresult),w	;volatile
	movwf	(_power_ad)	;volatile
	line	680
;main.c: 680: }
	goto	l782
	line	683
	
l2646:	
;main.c: 681: else
;main.c: 682: {
;main.c: 683: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	684
;main.c: 684: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	685
	
l2648:	
;main.c: 685: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u3317:
decfsz	(??_checkBatAD+0)+0,f
	goto	u3317
opt asmopt_pop

	line	688
	
l782:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 918 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
;;		_checkOutAD
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	918
global __ptext12
__ptext12:	;psect for function _ADC_Sample
psect	text12
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	918
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	920
	
l2524:	
;main.c: 920: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	921
	
l2526:	
;main.c: 921: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	922
;main.c: 922: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	924
	
l2528:	
;main.c: 924: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u2451
	goto	u2450
u2451:
	goto	l2534
u2450:
	
l2530:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l2534
u2460:
	line	927
	
l2532:	
;main.c: 925: {
;main.c: 927: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	928
;main.c: 928: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_ADC_Sample+0)+0),f
	u3327:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u3327
	nop2
opt asmopt_pop

	line	929
;main.c: 929: }
	goto	l2536
	line	931
	
l2534:	
;main.c: 930: else
;main.c: 931: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	933
	
l2536:	
;main.c: 933: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l2542
u2470:
	line	935
	
l2538:	
;main.c: 934: {
;main.c: 935: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	936
	
l2540:	
;main.c: 936: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	938
	
l2542:	
	line	939
	
l2544:	
;main.c: 939: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	941
	
l2550:	
;main.c: 940: {
;main.c: 941: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u2485:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u2485
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	942
# 942 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	943
# 943 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	944
# 944 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	945
# 945 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
psect	text12
	line	946
	
l2552:	
;main.c: 946: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	948
	
l2554:	
;main.c: 948: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	949
;main.c: 949: while (GODONE)
	goto	l813
	
l814:	
	line	951
;main.c: 950: {
;main.c: 951: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	953
;main.c: 953: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u2491
	goto	u2490
u2491:
	goto	l813
u2490:
	line	954
	
l2556:	
;main.c: 954: return 0;
	movlw	low(0)
	goto	l816
	line	955
	
l813:	
	line	949
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u2501
	goto	u2500
u2501:
	goto	l814
u2500:
	line	957
	
l2560:	
;main.c: 955: }
;main.c: 957: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l2562:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	959
	
l2564:	
;main.c: 959: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u2511
	goto	u2510
u2511:
	goto	l2568
u2510:
	line	961
	
l2566:	
;main.c: 960: {
;main.c: 961: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	962
;main.c: 962: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	963
;main.c: 963: }
	goto	l819
	line	964
	
l2568:	
;main.c: 964: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u2525
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u2525:
	skipnc
	goto	u2521
	goto	u2520
u2521:
	goto	l2572
u2520:
	line	965
	
l2570:	
;main.c: 965: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l819
	line	966
	
l2572:	
;main.c: 966: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u2535
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u2535:
	skipnc
	goto	u2531
	goto	u2530
u2531:
	goto	l819
u2530:
	line	967
	
l2574:	
;main.c: 967: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	969
	
l819:	
;main.c: 969: adsum += ad_temp;
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
	goto	u2541
	addwf	(ADC_Sample@adsum+1),f	;volatile
u2541:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2542
	addwf	(ADC_Sample@adsum+2),f	;volatile
u2542:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2543
	addwf	(ADC_Sample@adsum+3),f	;volatile
u2543:

	line	939
	
l2576:	
	incf	(ADC_Sample@i),f
	
l2578:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l2550
u2550:
	line	971
	
l2580:	
;main.c: 970: }
;main.c: 971: adsum -= admax;
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
	goto	u2565
	goto	u2566
u2565:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u2566:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u2567
	goto	u2568
u2567:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u2568:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u2569
	goto	u2560
u2569:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u2560:

	line	972
;main.c: 972: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u2575
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u2575
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u2575
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u2575:
	skipc
	goto	u2571
	goto	u2570
u2571:
	goto	l823
u2570:
	line	973
	
l2582:	
;main.c: 973: adsum -= admin;
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
	goto	u2585
	goto	u2586
u2585:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u2586:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u2587
	goto	u2588
u2587:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u2588:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u2589
	goto	u2580
u2589:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u2580:

	goto	l2584
	line	974
	
l823:	
	line	975
;main.c: 974: else
;main.c: 975: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	977
	
l2584:	
;main.c: 977: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u2595:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u2590:
	addlw	-1
	skipz
	goto	u2595
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	979
	
l2586:	
;main.c: 979: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	980
	
l2588:	
;main.c: 980: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	981
	
l2590:	
;main.c: 981: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	982
	
l2592:	
;main.c: 982: return 0xA5;
	movlw	low(0A5h)
	line	984
	
l816:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 841 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	841
global __ptext13
__ptext13:	;psect for function _Sleep_Mode
psect	text13
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	841
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 4
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	843
	
l2380:	
;main.c: 843: INTCON = 0;
	clrf	(11)	;volatile
	line	845
;main.c: 845: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	847
;main.c: 847: WPUA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	848
	
l2382:	
;main.c: 848: TRISA = 0x01;
	movlw	low(01h)
	movwf	(133)^080h	;volatile
	line	849
	
l2384:	
;main.c: 849: TRISB = 0x37;
	movlw	low(037h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	851
;main.c: 851: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	852
;main.c: 852: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	853
	
l2386:	
;main.c: 853: WPUB = 0x04;
	movlw	low(04h)
	movwf	(8)	;volatile
	line	855
	
l2388:	
;main.c: 855: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	856
	
l2390:	
;main.c: 856: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	858
	
l2392:	
;main.c: 858: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	860
;main.c: 860: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	862
	
l2394:	
;main.c: 862: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	863
	
l2396:	
;main.c: 863: IOCB = 0x07;
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	865
	
l2398:	
;main.c: 865: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	866
	
l2400:	
;main.c: 866: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	867
	
l2402:	
;main.c: 867: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	868
	
l2404:	
;main.c: 868: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	870
	
l2406:	
;main.c: 870: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	871
	
l2408:	
;main.c: 871: PIR1 = 0;
	clrf	(13)	;volatile
	line	872
;main.c: 872: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	874
	
l2410:	
;main.c: 874: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	875
	
l2412:	
;main.c: 875: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	876
	
l2414:	
;main.c: 876: PORTB;
	movf	(6),w	;volatile
	line	877
	
l2416:	
;main.c: 877: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	878
# 878 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
clrwdt ;# 
	line	880
# 880 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
sleep ;# 
	line	882
# 882 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	883
# 883 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
clrwdt ;# 
	line	884
# 884 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	885
# 885 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	886
# 886 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	887
# 887 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	888
# 888 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
psect	text13
	line	889
	
l2418:	
;main.c: 889: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u2291
	goto	u2290
u2291:
	goto	l802
u2290:
	
l2420:	
	bcf	(107/8),(107)&7	;volatile
	
l802:	
	line	890
;main.c: 890: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u2301
	goto	u2300
u2301:
	goto	l803
u2300:
	
l2422:	
	bcf	(88/8),(88)&7	;volatile
	
l803:	
	line	891
;main.c: 891: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u2311
	goto	u2310
u2311:
	goto	l2426
u2310:
	
l2424:	
	bcf	(105/8),(105)&7	;volatile
	line	892
	
l2426:	
;main.c: 892: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	893
;main.c: 893: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	894
	
l2428:	
;main.c: 894: Init_System();
	fcall	_Init_System
	line	895
	
l2430:	
;main.c: 895: AD_Init();
	fcall	_AD_Init
	line	896
	
l805:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 717 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	717
global __ptext14
__ptext14:	;psect for function _Init_System
psect	text14
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	717
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	719
	
l1870:	
# 719 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
nop ;# 
	line	720
# 720 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
clrwdt ;# 
psect	text14
	line	721
	
l1872:	
;main.c: 721: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	722
# 722 "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
clrwdt ;# 
psect	text14
	line	723
	
l1874:	
;main.c: 723: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	725
	
l1876:	
;main.c: 725: WPUA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	726
	
l1878:	
;main.c: 726: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	727
	
l1880:	
;main.c: 727: WPUB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	729
	
l1882:	
;main.c: 729: TRISA = 0x01;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	730
	
l1884:	
;main.c: 730: TRISB = 0x37;
	movlw	low(037h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	732
;main.c: 732: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	733
;main.c: 733: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	737
	
l1886:	
;main.c: 737: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	738
	
l1888:	
;main.c: 738: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	739
	
l1890:	
;main.c: 739: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	741
	
l1892:	
;main.c: 741: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	742
	
l1894:	
;main.c: 742: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	743
	
l790:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 754 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	754
global __ptext15
__ptext15:	;psect for function _AD_Init
psect	text15
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	754
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _AD_Init: [wreg+status,2]
	line	787
	
l1896:	
;main.c: 787: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	804
	
l1898:	
;main.c: 804: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	805
	
l1900:	
;main.c: 805: ANSEL0 = 0X00;
	clrf	(147)^080h	;volatile
	line	806
;main.c: 806: ANSEL1 = 0x30;
	movlw	low(030h)
	movwf	(148)^080h	;volatile
	line	807
	
l793:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 100 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	100
global __ptext16
__ptext16:	;psect for function _Isr_Timer
psect	text16
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	100
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
	line	102
	
i1l2432:	
;main.c: 102: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u232_21
	goto	u232_20
u232_21:
	goto	i1l626
u232_20:
	line	104
	
i1l2434:	
;main.c: 103: {
;main.c: 104: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	105
	
i1l2436:	
;main.c: 105: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u233_21
	goto	u233_20
u233_21:
	goto	i1l2446
u233_20:
	line	107
	
i1l2438:	
;main.c: 106: {
;main.c: 107: intCount = 0;
	clrf	(_intCount)
	line	108
	
i1l2440:	
;main.c: 108: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	109
	
i1l2442:	
;main.c: 109: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u234_21
	goto	u234_20
u234_21:
	goto	i1l2446
u234_20:
	line	111
	
i1l2444:	
;main.c: 110: {
;main.c: 111: count1s = 0;
	clrf	(_count1s)
	line	114
	
i1l2446:	
;main.c: 112: }
;main.c: 113: }
;main.c: 114: ledShow();
	fcall	_ledShow
	line	115
	
i1l2448:	
;main.c: 115: intCount10++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_intCount10),f
	line	118
	
i1l626:	
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
;;		line 168 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
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
	line	168
global __ptext17
__ptext17:	;psect for function _ledShow
psect	text17
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14\main.c"
	line	168
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 4
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	170
	
i1l2058:	
;main.c: 170: if(++ledCntTime > 5)
	movlw	low(06h)
	incf	(_ledCntTime),f
	subwf	((_ledCntTime)),w
	skipc
	goto	u149_21
	goto	u149_20
u149_21:
	goto	i1l676
u149_20:
	line	172
	
i1l2060:	
;main.c: 171: {
;main.c: 172: ledCntTime = 0;
	clrf	(_ledCntTime)
	line	173
	
i1l2062:	
;main.c: 173: if(++ledCnt > 13)
	movlw	low(0Eh)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u150_21
	goto	u150_20
u150_21:
	goto	i1l2066
u150_20:
	line	175
	
i1l2064:	
;main.c: 174: {
;main.c: 175: ledCnt = 0;
	clrf	(_ledCnt)
	line	177
	
i1l2066:	
;main.c: 176: }
;main.c: 177: PORTA &= 0xC1;
	movlw	low(0C1h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	178
	
i1l2068:	
;main.c: 178: TRISA |= 0x3E;
	movlw	low(03Eh)
	iorwf	(133)^080h,f	;volatile
	line	179
;main.c: 179: switch(ledCnt)
	goto	i1l2100
	line	181
;main.c: 180: {
;main.c: 181: case 1:
	
i1l646:	
	line	182
;main.c: 182: if(shiweiNum & 0x01)
	btfss	(_shiweiNum),(0)&7
	goto	u151_21
	goto	u151_20
u151_21:
	goto	i1l676
u151_20:
	line	184
	
i1l2070:	
;main.c: 183: {
;main.c: 184: TRISA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	185
;main.c: 185: TRISA &= 0xDF;
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	186
;main.c: 186: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	187
;main.c: 187: RA5 = 0;
	bcf	(1077/8)^080h,(1077)&7	;volatile
	goto	i1l676
	line	190
;main.c: 190: case 2:
	
i1l649:	
	line	191
;main.c: 191: if(shiweiNum & 0x02)
	btfss	(_shiweiNum),(1)&7
	goto	u152_21
	goto	u152_20
u152_21:
	goto	i1l676
u152_20:
	line	193
	
i1l2072:	
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
	goto	i1l676
	line	199
;main.c: 199: case 3:
	
i1l651:	
	line	200
;main.c: 200: if(shiweiNum & 0x04)
	btfss	(_shiweiNum),(2)&7
	goto	u153_21
	goto	u153_20
u153_21:
	goto	i1l676
u153_20:
	line	202
	
i1l2074:	
;main.c: 201: {
;main.c: 202: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	203
;main.c: 203: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	204
;main.c: 204: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	line	205
;main.c: 205: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l676
	line	208
;main.c: 208: case 4:
	
i1l653:	
	line	209
;main.c: 209: if(shiweiNum & 0x08)
	btfss	(_shiweiNum),(3)&7
	goto	u154_21
	goto	u154_20
u154_21:
	goto	i1l676
u154_20:
	line	211
	
i1l2076:	
;main.c: 210: {
;main.c: 211: TRISA &= 0xFB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	212
;main.c: 212: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	213
;main.c: 213: RA2 = 1;
	bsf	(1074/8)^080h,(1074)&7	;volatile
	line	214
;main.c: 214: RA1 = 0;
	bcf	(1073/8)^080h,(1073)&7	;volatile
	goto	i1l676
	line	217
;main.c: 217: case 5:
	
i1l655:	
	line	218
;main.c: 218: if(shiweiNum & 0x10)
	btfss	(_shiweiNum),(4)&7
	goto	u155_21
	goto	u155_20
u155_21:
	goto	i1l676
u155_20:
	line	220
	
i1l2078:	
;main.c: 219: {
;main.c: 220: TRISA &= 0xFD;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	221
;main.c: 221: TRISA &= 0xFB;
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	222
;main.c: 222: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	line	223
;main.c: 223: RA2 = 0;
	bcf	(1074/8)^080h,(1074)&7	;volatile
	goto	i1l676
	line	226
;main.c: 226: case 6:
	
i1l657:	
	line	227
;main.c: 227: if(shiweiNum & 0x20)
	btfss	(_shiweiNum),(5)&7
	goto	u156_21
	goto	u156_20
u156_21:
	goto	i1l676
u156_20:
	line	229
	
i1l2080:	
;main.c: 228: {
;main.c: 229: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	230
;main.c: 230: TRISA &= 0xFB;
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	231
;main.c: 231: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	232
;main.c: 232: RA2 = 0;
	bcf	(1074/8)^080h,(1074)&7	;volatile
	goto	i1l676
	line	235
;main.c: 235: case 7:
	
i1l659:	
	line	236
;main.c: 236: if(shiweiNum & 0x40)
	btfss	(_shiweiNum),(6)&7
	goto	u157_21
	goto	u157_20
u157_21:
	goto	i1l676
u157_20:
	line	238
	
i1l2082:	
;main.c: 237: {
;main.c: 238: TRISA &= 0xFB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	239
;main.c: 239: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	240
;main.c: 240: RA2 = 1;
	bsf	(1074/8)^080h,(1074)&7	;volatile
	line	241
;main.c: 241: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l676
	line	244
;main.c: 244: case 8:
	
i1l661:	
	line	245
;main.c: 245: if(geweiNum & 0x01)
	btfss	(_geweiNum),(0)&7
	goto	u158_21
	goto	u158_20
u158_21:
	goto	i1l676
u158_20:
	line	247
	
i1l2084:	
;main.c: 246: {
;main.c: 247: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	248
;main.c: 248: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	249
;main.c: 249: RA5 = 1;
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	250
;main.c: 250: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l676
	line	253
;main.c: 253: case 9:
	
i1l663:	
	line	254
;main.c: 254: if(geweiNum & 0x02)
	btfss	(_geweiNum),(1)&7
	goto	u159_21
	goto	u159_20
u159_21:
	goto	i1l676
u159_20:
	line	256
	
i1l2086:	
;main.c: 255: {
;main.c: 256: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	257
;main.c: 257: TRISA &= 0xDF;
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	258
;main.c: 258: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	259
;main.c: 259: RA5 = 0;
	bcf	(1077/8)^080h,(1077)&7	;volatile
	goto	i1l676
	line	262
;main.c: 262: case 10:
	
i1l665:	
	line	263
;main.c: 263: if(geweiNum & 0x04)
	btfss	(_geweiNum),(2)&7
	goto	u160_21
	goto	u160_20
u160_21:
	goto	i1l676
u160_20:
	line	265
	
i1l2088:	
;main.c: 264: {
;main.c: 265: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	266
;main.c: 266: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	267
;main.c: 267: RA5 = 1;
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	268
;main.c: 268: RA1 = 0;
	bcf	(1073/8)^080h,(1073)&7	;volatile
	goto	i1l676
	line	271
;main.c: 271: case 11:
	
i1l667:	
	line	272
;main.c: 272: if(geweiNum & 0x08)
	btfss	(_geweiNum),(3)&7
	goto	u161_21
	goto	u161_20
u161_21:
	goto	i1l676
u161_20:
	line	274
	
i1l2090:	
;main.c: 273: {
;main.c: 274: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	275
;main.c: 275: TRISA &= 0xFD;
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	276
;main.c: 276: RA1 = 1;
	bsf	(1073/8)^080h,(1073)&7	;volatile
	line	277
;main.c: 277: RA5 = 0;
	bcf	(1077/8)^080h,(1077)&7	;volatile
	goto	i1l676
	line	280
;main.c: 280: case 12:
	
i1l669:	
	line	281
;main.c: 281: if(geweiNum & 0x10)
	btfss	(_geweiNum),(4)&7
	goto	u162_21
	goto	u162_20
u162_21:
	goto	i1l676
u162_20:
	line	283
	
i1l2092:	
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
	goto	i1l676
	line	289
;main.c: 289: case 13:
	
i1l671:	
	line	290
;main.c: 290: if(geweiNum & 0x20)
	btfss	(_geweiNum),(5)&7
	goto	u163_21
	goto	u163_20
u163_21:
	goto	i1l676
u163_20:
	line	292
	
i1l2094:	
;main.c: 291: {
;main.c: 292: TRISA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	293
;main.c: 293: TRISA &= 0xEF;
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	294
;main.c: 294: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	295
;main.c: 295: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l676
	line	298
;main.c: 298: case 0:
	
i1l673:	
	line	299
;main.c: 299: if(geweiNum & 0x40)
	btfss	(_geweiNum),(6)&7
	goto	u164_21
	goto	u164_20
u164_21:
	goto	i1l676
u164_20:
	line	301
	
i1l2096:	
;main.c: 300: {
;main.c: 301: TRISA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(5/8),(5)&7	;volatile
	line	302
;main.c: 302: TRISA &= 0xF7;
	bcf	(133)^080h+(3/8),(3)&7	;volatile
	line	303
;main.c: 303: RA5 = 1;
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	304
;main.c: 304: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l676
	line	179
	
i1l2100:	
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
goto i1l676
movlw high(i1S2940)
movwf pclath
	movlw low(i1S2940)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S2940:
	ljmp	i1l673
	ljmp	i1l646
	ljmp	i1l649
	ljmp	i1l651
	ljmp	i1l653
	ljmp	i1l655
	ljmp	i1l657
	ljmp	i1l659
	ljmp	i1l661
	ljmp	i1l663
	ljmp	i1l665
	ljmp	i1l667
	ljmp	i1l669
	ljmp	i1l671
psect	text17

	line	313
	
i1l676:	
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
