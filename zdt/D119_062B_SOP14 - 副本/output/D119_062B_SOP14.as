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
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
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
	global	_count30s
	global	_lowShanTime
	global	_result
	global	_adresult
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
_power_ad:
       ds      2

_showBatStep:
       ds      1

_chrgFlag:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_count30s:
       ds      2

_lowShanTime:
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
	movlw	low((__pbssBANK0)+018h)
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
;!    BSS         28
;!    Persistent  3
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      11
;!    BANK0            80     17      44
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
;! (0) _main                                                 0     0      0    1860
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
;! (1) _keyCtr                                               0     0      0       0
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
;!BANK0               50     11      2C       4       55.0%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      37       7        0.0%
;!DATA                 0      0      37       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 117 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
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
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
	line	117
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
	line	117
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	119
	
l2628:	
;main.c: 119: Init_System();
	fcall	_Init_System
	line	120
;main.c: 120: AD_Init();
	fcall	_AD_Init
	line	121
	
l2630:	
;main.c: 122: baiweiNum = 1;
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_geweiNum)
	movwf	(_shiweiNum)
	line	123
	
l2632:	
;main.c: 123: firstTime = 250;
	movlw	low(0FAh)
	movwf	(_firstTime)
	line	124
;main.c: 124: while (1)
	
l617:	
	line	126
# 126 "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
clrwdt ;# 
psect	maintext
	line	127
	
l2634:	
;main.c: 127: if(intCount10 > 10)
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_intCount10),w
	skipc
	goto	u2821
	goto	u2820
u2821:
	goto	l2638
u2820:
	line	129
	
l2636:	
;main.c: 128: {
;main.c: 129: intCount10 = 0;
	clrf	(_intCount10)
	line	131
	
l2638:	
;main.c: 130: }
;main.c: 131: if(!IntFlag)
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u2831
	goto	u2830
u2831:
	goto	l2642
u2830:
	goto	l617
	line	133
	
l2642:	
;main.c: 133: IntFlag = 0;
	clrf	(_IntFlag)
	line	134
	
l2644:	
;main.c: 134: chrgCtr();
	fcall	_chrgCtr
	line	135
	
l2646:	
;main.c: 135: checkBatAD();
	fcall	_checkBatAD
	line	136
	
l2648:	
;main.c: 136: setBatStep();
	fcall	_setBatStep
	line	137
	
l2650:	
;main.c: 137: if(lowBatFlag == 0 && firstTime == 0 && chrgFlag == 0)
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u2841
	goto	u2840
u2841:
	goto	l2658
u2840:
	
l2652:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l2658
u2850:
	
l2654:	
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l2658
u2860:
	line	139
	
l2656:	
;main.c: 138: {
;main.c: 139: keyCtr();
	fcall	_keyCtr
	line	141
	
l2658:	
;main.c: 140: }
;main.c: 141: workCtr();
	fcall	_workCtr
	line	142
	
l2660:	
;main.c: 142: if(chrgFlag == 0 && workStep == 0 && firstTime == 0 && showBatTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2871
	goto	u2870
u2871:
	goto	l2676
u2870:
	
l2662:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l2676
u2880:
	
l2664:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u2891
	goto	u2890
u2891:
	goto	l2676
u2890:
	
l2666:	
;main.c: 143: {
;main.c: 144: baiweiNum = 0;
	movf	((_showBatTime)),w
	btfss	status,2
	goto	u2901
	goto	u2900
u2901:
	goto	l2676
u2900:
	line	145
	
l2668:	
;main.c: 145: shiweiNum = geweiNum = 0;
	clrf	(_geweiNum)
	clrf	(_shiweiNum)
	line	146
	
l2670:	
;main.c: 146: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u2911
	goto	u2910
u2911:
	goto	l617
u2910:
	line	148
	
l2672:	
;main.c: 147: {
;main.c: 148: sleepTime = 0;
	clrf	(_sleepTime)
	line	149
	
l2674:	
;main.c: 149: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l617
	line	154
	
l2676:	
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
;;		line 410 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
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
	line	410
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
	line	410
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	419
	
l2538:	
;main.c: 419: if(lowShanTime > 0)
	movf	((_lowShanTime)),w
iorwf	((_lowShanTime+1)),w
	btfsc	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l2544
u2600:
	line	421
	
l2540:	
;main.c: 420: {
;main.c: 421: if(--lowShanTime == 0)
	movlw	01h
	subwf	(_lowShanTime),f
	movlw	0
	skipc
	decf	(_lowShanTime+1),f
	subwf	(_lowShanTime+1),f
	movf	(((_lowShanTime))),w
iorwf	(((_lowShanTime+1))),w
	btfss	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l2544
u2610:
	line	423
	
l2542:	
;main.c: 422: {
;main.c: 423: workStep = 0;
	clrf	(_workStep)
	line	426
	
l2544:	
;main.c: 424: }
;main.c: 425: }
;main.c: 426: if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l2548
u2620:
	line	428
	
l2546:	
;main.c: 427: {
;main.c: 428: showBatTime--;
	decf	(_showBatTime),f
	line	430
	
l2548:	
;main.c: 429: }
;main.c: 430: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l2560
u2630:
	line	432
	
l2550:	
;main.c: 431: {
;main.c: 432: firstTime--;
	decf	(_firstTime),f
	line	433
	
l2552:	
;main.c: 433: if(showBatStep < curBatStep)
	movf	(_curBatStep),w
	subwf	(_showBatStep),w
	skipnc
	goto	u2641
	goto	u2640
u2641:
	goto	l2556
u2640:
	line	435
	
l2554:	
;main.c: 434: {
;main.c: 435: showBatStep = curBatStep;
	movf	(_curBatStep),w
	movwf	(_showBatStep)
	line	437
	
l2556:	
;main.c: 436: }
;main.c: 437: shiweiNum = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	438
	
l2558:	
;main.c: 438: geweiNum = numArray[8];
	movlw	low((((_numArray+08h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	439
;main.c: 439: }
	goto	l2598
	line	440
	
l2560:	
;main.c: 440: else if(workStep == 0 || (lowShanTime > 0 && count1s < 50))
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l2566
u2650:
	
l2562:	
	movf	((_lowShanTime)),w
iorwf	((_lowShanTime+1)),w
	btfsc	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l2570
u2660:
	
l2564:	
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u2671
	goto	u2670
u2671:
	goto	l2570
u2670:
	line	442
	
l2566:	
;main.c: 441: {
;main.c: 442: shiweiNum = 0;
	clrf	(_shiweiNum)
	line	443
;main.c: 443: geweiNum = 0;
	clrf	(_geweiNum)
	line	444
	
l2568:	
;main.c: 445: count900s = 0;
	fcall	_pwmStop
	line	446
;main.c: 446: }
	goto	l2598
	line	447
	
l2570:	
;main.c: 447: else if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l2584
u2680:
	line	449
	
l2572:	
;main.c: 448: {
;main.c: 449: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l2576
u2690:
	line	451
	
l2574:	
;main.c: 450: {
;main.c: 451: shiweiNum = numArray[10];
	movlw	low((((_numArray+0Ah)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	452
;main.c: 452: geweiNum = numArray[1];
	movlw	low((((_numArray+01h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	454
	
l2576:	
;main.c: 453: }
;main.c: 454: if(motorPwmFlag == 0)
	movf	((_motorPwmFlag)),w
	btfss	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l2580
u2700:
	line	456
	
l2578:	
;main.c: 455: {
;main.c: 456: pwmInit();
	fcall	_pwmInit
	line	458
	
l2580:	
;main.c: 457: }
;main.c: 458: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	459
	
l2582:	
;main.c: 459: PWMD2L = 60;
	movlw	low(03Ch)
	movwf	(155)^080h	;volatile
	line	460
;main.c: 460: }
	goto	l2598
	line	461
	
l2584:	
;main.c: 461: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2711
	goto	u2710
u2711:
	goto	l702
u2710:
	line	463
	
l2586:	
;main.c: 462: {
;main.c: 463: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2721
	goto	u2720
u2721:
	goto	l2590
u2720:
	line	465
	
l2588:	
;main.c: 464: {
;main.c: 465: shiweiNum = numArray[10];
	movlw	low((((_numArray+0Ah)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_shiweiNum)
	line	466
;main.c: 466: geweiNum = numArray[2];
	movlw	low((((_numArray+02h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	468
	
l2590:	
;main.c: 467: }
;main.c: 468: if(motorPwmFlag == 0)
	movf	((_motorPwmFlag)),w
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l2594
u2730:
	line	470
	
l2592:	
;main.c: 469: {
;main.c: 470: pwmInit();
	fcall	_pwmInit
	line	472
	
l2594:	
;main.c: 471: }
;main.c: 472: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	473
	
l2596:	
;main.c: 473: PWMD2L = 80;
	movlw	low(050h)
	movwf	(155)^080h	;volatile
	goto	l2598
	line	476
	
l702:	
	
l2598:	
;main.c: 475: }
;main.c: 476: if(chrgFlag || showBatTime > 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l2602
u2740:
	
l2600:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l721
u2750:
	line	478
	
l2602:	
;main.c: 477: {
;main.c: 478: if(showBatStep >=99)
	movlw	low(063h)
	subwf	(_showBatStep),w
	skipc
	goto	u2761
	goto	u2760
u2761:
	goto	l2606
u2760:
	line	480
	
l2604:	
;main.c: 479: {
;main.c: 480: shiweiNum = numArray[9];
	movlw	low((((_numArray+09h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_shiweiNum)
	line	481
;main.c: 481: geweiNum = numArray[9];
	movlw	low((((_numArray+09h)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	482
;main.c: 482: }
	goto	l721
	line	483
	
l2606:	
;main.c: 484: {
;main.c: 485: baiweiNum = 0;
	movlw	low(0Ah)
	subwf	(_showBatStep),w
	skipc
	goto	u2771
	goto	u2770
u2771:
	goto	l2618
u2770:
	line	486
	
l2608:	
;main.c: 486: shiweiNum = numArray[showBatStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_showBatStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_shiweiNum)
	line	487
	
l2610:	
;main.c: 487: if(chrgFlag && count1s < 50)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l2616
u2780:
	
l2612:	
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u2791
	goto	u2790
u2791:
	goto	l2616
u2790:
	line	489
	
l2614:	
;main.c: 488: {
;main.c: 489: geweiNum = 0;
	clrf	(_geweiNum)
	line	490
;main.c: 490: }
	goto	l721
	line	493
	
l2616:	
;main.c: 491: else
;main.c: 492: {
;main.c: 493: geweiNum = numArray[showBatStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_showBatStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	goto	l721
	line	499
	
l2618:	
;main.c: 499: shiweiNum = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_shiweiNum)
	line	500
	
l2620:	
;main.c: 500: if(chrgFlag && count1s < 50)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l2626
u2800:
	
l2622:	
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u2811
	goto	u2810
u2811:
	goto	l2626
u2810:
	goto	l2614
	line	506
	
l2626:	
;main.c: 504: else
;main.c: 505: {
;main.c: 506: geweiNum = numArray[showBatStep];
	movf	(_showBatStep),w
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_geweiNum)
	line	512
	
l721:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 734 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
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
	line	734
global __ptext2
__ptext2:	;psect for function _pwmStop
psect	text2
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
	line	734
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: [status,2]
	line	736
	
l1794:	
;main.c: 736: PWMCON0 &= 0XFB;
	bcf	(21)+(2/8),(2)&7	;volatile
	line	737
;main.c: 737: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	738
	
l1796:	
;main.c: 738: motorPwmFlag = 0;
	clrf	(_motorPwmFlag)
	line	739
	
l763:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 718 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
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
	line	718
global __ptext3
__ptext3:	;psect for function _pwmInit
psect	text3
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
	line	718
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2]
	line	720
	
l1798:	
;main.c: 720: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	721
;main.c: 721: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	722
	
l1800:	
;main.c: 722: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	725
	
l1802:	
;main.c: 725: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	726
;main.c: 726: PWMD2L = 60;
	movlw	low(03Ch)
	movwf	(155)^080h	;volatile
	line	727
	
l1804:	
;main.c: 727: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	729
	
l1806:	
;main.c: 729: PWMCON0 = 0X64;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	730
;main.c: 730: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	731
	
l1808:	
;main.c: 731: motorPwmFlag = 1;
	clrf	(_motorPwmFlag)
	incf	(_motorPwmFlag),f
	line	732
	
l760:	
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
	
l2416:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l2418:	
	clrf	(___lbmod@rem)
	line	12
	
l2420:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u2325:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u2325
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l2422:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l2424:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l2428
u2330:
	line	15
	
l2426:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l2428:	
	decfsz	(___lbmod@counter),f
	goto	u2341
	goto	u2340
u2341:
	goto	l2420
u2340:
	line	17
	
l2430:	
	movf	(___lbmod@rem),w
	line	18
	
l1063:	
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
	
l1882:	
	clrf	(___lbdiv@quotient)
	line	10
	
l1884:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1241
	goto	u1240
u1241:
	goto	l1902
u1240:
	line	11
	
l1886:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l1890
	
l1052:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l1888:	
	incf	(___lbdiv@counter),f
	line	12
	
l1890:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1251
	goto	u1250
u1251:
	goto	l1052
u1250:
	line	16
	
l1054:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l1892:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1261
	goto	u1260
u1261:
	goto	l1898
u1260:
	line	19
	
l1894:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l1896:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l1898:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l1900:	
	decfsz	(___lbdiv@counter),f
	goto	u1271
	goto	u1270
u1271:
	goto	l1054
u1270:
	line	25
	
l1902:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1057:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_setBatStep

;; *************** function _setBatStep *****************
;; Defined at:
;;		line 514 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
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
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
	line	514
global __ptext6
__ptext6:	;psect for function _setBatStep
psect	text6
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
	line	514
	global	__size_of_setBatStep
	__size_of_setBatStep	equ	__end_of_setBatStep-_setBatStep
	
_setBatStep:	
;incstack = 0
	opt	stack 4
; Regs used in _setBatStep: [wreg+status,2+status,0+pclath+cstack]
	line	516
	
l2470:	
;main.c: 516: if(lowBatFlag == 1 && lowShanTime == 0 && workStep > 0)
	bcf	status, 5	;RP0=0, select bank0
		decf	((_lowBatFlag)),w
	btfss	status,2
	goto	u2401
	goto	u2400
u2401:
	goto	l2480
u2400:
	
l2472:	
	movf	((_lowShanTime)),w
iorwf	((_lowShanTime+1)),w
	btfss	status,2
	goto	u2411
	goto	u2410
u2411:
	goto	l2480
u2410:
	
l2474:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2421
	goto	u2420
u2421:
	goto	l2480
u2420:
	line	518
	
l2476:	
;main.c: 517: {
;main.c: 518: showBatStep = 0;
	clrf	(_showBatStep)
	line	519
;main.c: 519: curBatStep = 0;
	clrf	(_curBatStep)
	line	520
	
l2478:	
;main.c: 520: lowShanTime = 300;
	movlw	02Ch
	movwf	(_lowShanTime)
	movlw	01h
	movwf	((_lowShanTime))+1
	line	521
;main.c: 521: }
	goto	l746
	line	522
	
l2480:	
;main.c: 522: else if(power_ad < 1675)
	movlw	06h
	subwf	(_power_ad+1),w	;volatile
	movlw	08Bh
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u2431
	goto	u2430
u2431:
	goto	l2490
u2430:
	line	524
	
l2482:	
;main.c: 523: {
;main.c: 524: if(count1s == 0)
	movf	((_count1s)),w
	btfss	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l727
u2440:
	line	526
	
l2484:	
;main.c: 525: {
;main.c: 526: if(showBatStep > 1)
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u2451
	goto	u2450
u2451:
	goto	l728
u2450:
	line	528
	
l2486:	
;main.c: 527: {
;main.c: 528: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2461
	goto	u2460
u2461:
	goto	l730
u2460:
	line	529
	
l2488:	
;main.c: 529: showBatStep--;
	decf	(_showBatStep),f
	goto	l730
	line	531
	
l728:	
	line	533
;main.c: 531: else
;main.c: 532: {
;main.c: 533: showBatStep = 1;
	clrf	(_showBatStep)
	incf	(_showBatStep),f
	line	534
	
l730:	
	line	535
;main.c: 534: }
;main.c: 535: curBatStep = 1;
	clrf	(_curBatStep)
	incf	(_curBatStep),f
	line	536
	
l727:	
	line	537
;main.c: 536: }
;main.c: 537: curBatStep = 1;
	clrf	(_curBatStep)
	incf	(_curBatStep),f
	line	538
;main.c: 538: }
	goto	l746
	line	541
	
l2490:	
;main.c: 539: else
;main.c: 540: {
;main.c: 541: if(power_ad < 1875)
	movlw	07h
	subwf	(_power_ad+1),w	;volatile
	movlw	053h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u2471
	goto	u2470
u2471:
	goto	l2494
u2470:
	line	543
	
l2492:	
;main.c: 542: {
;main.c: 543: curBatStep = (power_ad - 1675)/10;
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
	line	544
;main.c: 544: }
	goto	l2496
	line	547
	
l2494:	
;main.c: 545: else
;main.c: 546: {
;main.c: 547: curBatStep = 10 + ((power_ad - 1875)/5);
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
	line	549
	
l2496:	
;main.c: 548: }
;main.c: 549: if(curBatStep > 99)
	movlw	low(064h)
	subwf	(_curBatStep),w
	skipc
	goto	u2481
	goto	u2480
u2481:
	goto	l2500
u2480:
	line	551
	
l2498:	
;main.c: 550: {
;main.c: 551: curBatStep = 99;
	movlw	low(063h)
	movwf	(_curBatStep)
	line	554
	
l2500:	
;main.c: 552: }
;main.c: 554: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l2524
u2490:
	line	556
	
l2502:	
;main.c: 555: {
;main.c: 556: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u2501
	goto	u2500
u2501:
	goto	l2512
u2500:
	line	558
	
l2504:	
;main.c: 557: {
;main.c: 558: if(++count30s >= 3000 && showBatStep < 99)
	incf	(_count30s),f
	skipnz
	incf	(_count30s+1),f
	movlw	0Bh
	subwf	((_count30s+1)),w
	movlw	0B8h
	skipnz
	subwf	((_count30s)),w
	skipc
	goto	u2511
	goto	u2510
u2511:
	goto	l746
u2510:
	
l2506:	
	movlw	low(063h)
	subwf	(_showBatStep),w
	skipnc
	goto	u2521
	goto	u2520
u2521:
	goto	l746
u2520:
	line	560
	
l2508:	
;main.c: 559: {
;main.c: 560: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	line	561
	
l2510:	
;main.c: 561: showBatStep++;
	incf	(_showBatStep),f
	goto	l746
	line	564
	
l2512:	
;main.c: 564: else if(curBatStep > showBatStep)
	movf	(_curBatStep),w
	subwf	(_showBatStep),w
	skipnc
	goto	u2531
	goto	u2530
u2531:
	goto	l2522
u2530:
	line	566
	
l2514:	
;main.c: 565: {
;main.c: 566: if(++count30s >= 30000 && showBatStep < 99)
	incf	(_count30s),f
	skipnz
	incf	(_count30s+1),f
	movlw	075h
	subwf	((_count30s+1)),w
	movlw	030h
	skipnz
	subwf	((_count30s)),w
	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l742
u2540:
	
l2516:	
	movlw	low(063h)
	subwf	(_showBatStep),w
	skipnc
	goto	u2551
	goto	u2550
u2551:
	goto	l742
u2550:
	goto	l2508
	line	575
	
l2522:	
;main.c: 573: else
;main.c: 574: {
;main.c: 575: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	goto	l746
	line	580
	
l2524:	
;main.c: 578: else
;main.c: 579: {
;main.c: 580: if(curBatStep < showBatStep && showBatStep > 1)
	movf	(_showBatStep),w
	subwf	(_curBatStep),w
	skipnc
	goto	u2561
	goto	u2560
u2561:
	goto	l2522
u2560:
	
l2526:	
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u2571
	goto	u2570
u2571:
	goto	l2522
u2570:
	line	582
	
l2528:	
;main.c: 581: {
;main.c: 582: if(++count30s >= 1500 && showBatStep > 1)
	incf	(_count30s),f
	skipnz
	incf	(_count30s+1),f
	movlw	05h
	subwf	((_count30s+1)),w
	movlw	0DCh
	skipnz
	subwf	((_count30s)),w
	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l742
u2580:
	
l2530:	
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u2591
	goto	u2590
u2591:
	goto	l742
u2590:
	line	584
	
l2532:	
;main.c: 583: {
;main.c: 584: count30s = 0;
	clrf	(_count30s)
	clrf	(_count30s+1)
	line	585
	
l2534:	
;main.c: 585: showBatStep--;
	decf	(_showBatStep),f
	goto	l746
	line	592
	
l742:	
	line	595
	
l746:	
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
	
l2434:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l2436:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l2456
u2350:
	line	16
	
l2438:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l2442
	line	18
	
l2440:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l2442:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l2440
u2360:
	line	22
	
l2444:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l2446:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2375
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2375:
	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l2452
u2370:
	line	24
	
l2448:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l2450:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l2452:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l2454:	
	decfsz	(___lwdiv@counter),f
	goto	u2381
	goto	u2380
u2381:
	goto	l2444
u2380:
	line	30
	
l2456:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l1131:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 388 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
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
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
	line	388
global __ptext8
__ptext8:	;psect for function _keyCtr
psect	text8
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
	line	388
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _keyCtr: [wreg+status,2]
	line	390
	
l2104:	
;main.c: 390: if(PORTB & 0x02)
	btfss	(6),(1)&7	;volatile
	goto	u1771
	goto	u1770
u1771:
	goto	l2112
u1770:
	line	392
	
l2106:	
;main.c: 391: {
;main.c: 392: if(PORTB & 0x04)
	btfss	(6),(2)&7	;volatile
	goto	u1781
	goto	u1780
u1781:
	goto	l2110
u1780:
	line	394
	
l2108:	
;main.c: 393: {
;main.c: 394: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	395
;main.c: 395: }
	goto	l690
	line	398
	
l2110:	
;main.c: 396: else
;main.c: 397: {
;main.c: 398: workStep = 2;
	movlw	low(02h)
	movwf	(_workStep)
	goto	l690
	line	403
	
l2112:	
;main.c: 401: else
;main.c: 402: {
;main.c: 403: workStep = 0;
	clrf	(_workStep)
	line	407
	
l690:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 311 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
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
	line	311
global __ptext9
__ptext9:	;psect for function _chrgCtr
psect	text9
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
	line	311
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _chrgCtr: [wreg+status,2+status,0]
	line	313
	
l1998:	
;main.c: 313: if(PORTB & 0x01)
	btfss	(6),(0)&7	;volatile
	goto	u1511
	goto	u1510
u1511:
	goto	l2014
u1510:
	line	315
	
l2000:	
;main.c: 314: {
;main.c: 315: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	316
	
l2002:	
;main.c: 316: workStep = 0;
	clrf	(_workStep)
	line	317
;main.c: 317: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	318
	
l2004:	
;main.c: 318: if(PORTA & 0x01)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(134)^080h,(0)&7	;volatile
	goto	u1521
	goto	u1520
u1521:
	goto	l2008
u1520:
	line	320
	
l2006:	
;main.c: 319: {
;main.c: 320: chrgFullTime = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgFullTime)
	line	321
;main.c: 321: }
	goto	l673
	line	324
	
l2008:	
;main.c: 322: else
;main.c: 323: {
;main.c: 324: if(++chrgFullTime >= 200)
	movlw	low(0C8h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_chrgFullTime),f
	subwf	((_chrgFullTime)),w
	skipc
	goto	u1531
	goto	u1530
u1531:
	goto	l673
u1530:
	line	326
	
l2010:	
;main.c: 325: {
;main.c: 326: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	line	327
	
l2012:	
;main.c: 327: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l673
	line	333
	
l2014:	
;main.c: 331: else
;main.c: 332: {
;main.c: 333: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	334
;main.c: 334: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	335
;main.c: 335: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	line	336
	
l2016:	
;main.c: 336: if(power_ad < 1563)
	movlw	06h
	subwf	(_power_ad+1),w	;volatile
	movlw	01Bh
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u1541
	goto	u1540
u1541:
	goto	l2024
u1540:
	line	338
	
l2018:	
;main.c: 337: {
;main.c: 338: if(++lowBatTime > 200)
	movlw	low(0C9h)
	incf	(_lowBatTime),f
	subwf	((_lowBatTime)),w
	skipc
	goto	u1551
	goto	u1550
u1551:
	goto	l673
u1550:
	line	340
	
l2020:	
;main.c: 339: {
;main.c: 340: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	341
	
l2022:	
;main.c: 341: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	goto	l673
	line	346
	
l2024:	
;main.c: 344: else
;main.c: 345: {
;main.c: 346: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	349
	
l673:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 598 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
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
	line	598
global __ptext10
__ptext10:	;psect for function _checkBatAD
psect	text10
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
	line	598
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	600
	
l2460:	
;main.c: 600: test_adc = ADC_Sample(12, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0Ch)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	601
	
l2462:	
;main.c: 601: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u2391
	goto	u2390
u2391:
	goto	l2466
u2390:
	line	605
	
l2464:	
;main.c: 602: {
;main.c: 603: volatile unsigned long power_temp;
;main.c: 605: power_ad = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_power_ad+1)	;volatile
	movf	(_adresult),w	;volatile
	movwf	(_power_ad)	;volatile
	line	606
;main.c: 606: }
	goto	l751
	line	609
	
l2466:	
;main.c: 607: else
;main.c: 608: {
;main.c: 609: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	610
;main.c: 610: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	611
	
l2468:	
;main.c: 611: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u2927:
decfsz	(??_checkBatAD+0)+0,f
	goto	u2927
opt asmopt_pop

	line	614
	
l751:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 826 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
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
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	826
global __ptext11
__ptext11:	;psect for function _ADC_Sample
psect	text11
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
	line	826
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	828
	
l2344:	
;main.c: 828: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	829
	
l2346:	
;main.c: 829: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	830
;main.c: 830: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	832
	
l2348:	
;main.c: 832: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u2171
	goto	u2170
u2171:
	goto	l2354
u2170:
	
l2350:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l2354
u2180:
	line	835
	
l2352:	
;main.c: 833: {
;main.c: 835: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	836
;main.c: 836: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_ADC_Sample+0)+0),f
	u2937:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u2937
	nop2
opt asmopt_pop

	line	837
;main.c: 837: }
	goto	l2356
	line	839
	
l2354:	
;main.c: 838: else
;main.c: 839: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	841
	
l2356:	
;main.c: 841: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l2362
u2190:
	line	843
	
l2358:	
;main.c: 842: {
;main.c: 843: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	844
	
l2360:	
;main.c: 844: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	846
	
l2362:	
	line	847
	
l2364:	
;main.c: 847: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	849
	
l2370:	
;main.c: 848: {
;main.c: 849: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u2205:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u2205
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	850
# 850 "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
nop ;# 
	line	851
# 851 "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
nop ;# 
	line	852
# 852 "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
nop ;# 
	line	853
# 853 "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
nop ;# 
psect	text11
	line	854
	
l2372:	
;main.c: 854: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	856
	
l2374:	
;main.c: 856: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	857
;main.c: 857: while (GODONE)
	goto	l777
	
l778:	
	line	859
;main.c: 858: {
;main.c: 859: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	861
;main.c: 861: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u2211
	goto	u2210
u2211:
	goto	l777
u2210:
	line	862
	
l2376:	
;main.c: 862: return 0;
	movlw	low(0)
	goto	l780
	line	863
	
l777:	
	line	857
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u2221
	goto	u2220
u2221:
	goto	l778
u2220:
	line	865
	
l2380:	
;main.c: 863: }
;main.c: 865: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l2382:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	867
	
l2384:	
;main.c: 867: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u2231
	goto	u2230
u2231:
	goto	l2388
u2230:
	line	869
	
l2386:	
;main.c: 868: {
;main.c: 869: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	870
;main.c: 870: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	871
;main.c: 871: }
	goto	l783
	line	872
	
l2388:	
;main.c: 872: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u2245
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u2245:
	skipnc
	goto	u2241
	goto	u2240
u2241:
	goto	l2392
u2240:
	line	873
	
l2390:	
;main.c: 873: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l783
	line	874
	
l2392:	
;main.c: 874: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u2255
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u2255:
	skipnc
	goto	u2251
	goto	u2250
u2251:
	goto	l783
u2250:
	line	875
	
l2394:	
;main.c: 875: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	877
	
l783:	
;main.c: 877: adsum += ad_temp;
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
	goto	u2261
	addwf	(ADC_Sample@adsum+1),f	;volatile
u2261:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2262
	addwf	(ADC_Sample@adsum+2),f	;volatile
u2262:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2263
	addwf	(ADC_Sample@adsum+3),f	;volatile
u2263:

	line	847
	
l2396:	
	incf	(ADC_Sample@i),f
	
l2398:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l2370
u2270:
	line	879
	
l2400:	
;main.c: 878: }
;main.c: 879: adsum -= admax;
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
	goto	u2285
	goto	u2286
u2285:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u2286:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u2287
	goto	u2288
u2287:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u2288:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u2289
	goto	u2280
u2289:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u2280:

	line	880
;main.c: 880: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u2295
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u2295
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u2295
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u2295:
	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l787
u2290:
	line	881
	
l2402:	
;main.c: 881: adsum -= admin;
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
	goto	u2305
	goto	u2306
u2305:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u2306:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u2307
	goto	u2308
u2307:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u2308:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u2309
	goto	u2300
u2309:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u2300:

	goto	l2404
	line	882
	
l787:	
	line	883
;main.c: 882: else
;main.c: 883: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	885
	
l2404:	
;main.c: 885: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u2315:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u2310:
	addlw	-1
	skipz
	goto	u2315
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	887
	
l2406:	
;main.c: 887: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	888
	
l2408:	
;main.c: 888: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	889
	
l2410:	
;main.c: 889: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	890
	
l2412:	
;main.c: 890: return 0xA5;
	movlw	low(0A5h)
	line	892
	
l780:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 749 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
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
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	749
global __ptext12
__ptext12:	;psect for function _Sleep_Mode
psect	text12
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
	line	749
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 4
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	751
	
l2204:	
;main.c: 751: INTCON = 0;
	clrf	(11)	;volatile
	line	753
;main.c: 753: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	755
;main.c: 755: WPUA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	756
	
l2206:	
;main.c: 756: TRISA = 0x01;
	movlw	low(01h)
	movwf	(133)^080h	;volatile
	line	757
	
l2208:	
;main.c: 757: TRISB = 0x37;
	movlw	low(037h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	759
;main.c: 759: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	760
;main.c: 760: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	761
	
l2210:	
;main.c: 761: WPUB = 0x04;
	movlw	low(04h)
	movwf	(8)	;volatile
	line	763
	
l2212:	
;main.c: 763: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	764
	
l2214:	
;main.c: 764: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	766
	
l2216:	
;main.c: 766: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	768
;main.c: 768: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	770
	
l2218:	
;main.c: 770: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	771
	
l2220:	
;main.c: 771: IOCB = 0x07;
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	773
	
l2222:	
;main.c: 773: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	774
	
l2224:	
;main.c: 774: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	775
	
l2226:	
;main.c: 775: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	776
	
l2228:	
;main.c: 776: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	778
	
l2230:	
;main.c: 778: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	779
	
l2232:	
;main.c: 779: PIR1 = 0;
	clrf	(13)	;volatile
	line	780
;main.c: 780: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	782
	
l2234:	
;main.c: 782: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	783
	
l2236:	
;main.c: 783: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	784
	
l2238:	
;main.c: 784: PORTB;
	movf	(6),w	;volatile
	line	785
	
l2240:	
;main.c: 785: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	786
# 786 "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
clrwdt ;# 
	line	788
# 788 "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
sleep ;# 
	line	790
# 790 "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
nop ;# 
	line	791
# 791 "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
clrwdt ;# 
	line	792
# 792 "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
nop ;# 
	line	793
# 793 "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
nop ;# 
	line	794
# 794 "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
nop ;# 
	line	795
# 795 "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
nop ;# 
	line	796
# 796 "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
nop ;# 
psect	text12
	line	797
	
l2242:	
;main.c: 797: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u2011
	goto	u2010
u2011:
	goto	l766
u2010:
	
l2244:	
	bcf	(107/8),(107)&7	;volatile
	
l766:	
	line	798
;main.c: 798: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u2021
	goto	u2020
u2021:
	goto	l767
u2020:
	
l2246:	
	bcf	(88/8),(88)&7	;volatile
	
l767:	
	line	799
;main.c: 799: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u2031
	goto	u2030
u2031:
	goto	l2250
u2030:
	
l2248:	
	bcf	(105/8),(105)&7	;volatile
	line	800
	
l2250:	
;main.c: 800: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	801
;main.c: 801: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	802
	
l2252:	
;main.c: 802: Init_System();
	fcall	_Init_System
	line	803
	
l2254:	
;main.c: 803: AD_Init();
	fcall	_AD_Init
	line	804
	
l769:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 625 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
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
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	625
global __ptext13
__ptext13:	;psect for function _Init_System
psect	text13
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
	line	625
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	627
	
l1762:	
# 627 "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
nop ;# 
	line	628
# 628 "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
clrwdt ;# 
psect	text13
	line	629
	
l1764:	
;main.c: 629: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	630
# 630 "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
clrwdt ;# 
psect	text13
	line	631
	
l1766:	
;main.c: 631: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	633
	
l1768:	
;main.c: 633: WPUA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	634
	
l1770:	
;main.c: 634: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	635
	
l1772:	
;main.c: 635: WPUB = 0x04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	637
	
l1774:	
;main.c: 637: TRISA = 0x01;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	638
	
l1776:	
;main.c: 638: TRISB = 0x37;
	movlw	low(037h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	640
;main.c: 640: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	641
;main.c: 641: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	645
	
l1778:	
;main.c: 645: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	646
	
l1780:	
;main.c: 646: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	647
	
l1782:	
;main.c: 647: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	649
	
l1784:	
;main.c: 649: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	650
	
l1786:	
;main.c: 650: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	651
	
l754:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 662 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
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
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	662
global __ptext14
__ptext14:	;psect for function _AD_Init
psect	text14
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
	line	662
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _AD_Init: [wreg+status,2]
	line	695
	
l1788:	
;main.c: 695: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	712
	
l1790:	
;main.c: 712: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	713
	
l1792:	
;main.c: 713: ANSEL0 = 0X00;
	clrf	(147)^080h	;volatile
	line	714
;main.c: 714: ANSEL1 = 0x30;
	movlw	low(030h)
	movwf	(148)^080h	;volatile
	line	715
	
l757:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 93 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
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
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	93
global __ptext15
__ptext15:	;psect for function _Isr_Timer
psect	text15
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
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
psect	text15
	line	95
	
i1l2256:	
;main.c: 95: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u204_21
	goto	u204_20
u204_21:
	goto	i1l612
u204_20:
	line	97
	
i1l2258:	
;main.c: 96: {
;main.c: 97: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	98
	
i1l2260:	
;main.c: 98: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u205_21
	goto	u205_20
u205_21:
	goto	i1l2270
u205_20:
	line	100
	
i1l2262:	
;main.c: 99: {
;main.c: 100: intCount = 0;
	clrf	(_intCount)
	line	101
	
i1l2264:	
;main.c: 101: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	102
	
i1l2266:	
;main.c: 102: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u206_21
	goto	u206_20
u206_21:
	goto	i1l2270
u206_20:
	line	104
	
i1l2268:	
;main.c: 103: {
;main.c: 104: count1s = 0;
	clrf	(_count1s)
	line	107
	
i1l2270:	
;main.c: 105: }
;main.c: 106: }
;main.c: 107: ledShow();
	fcall	_ledShow
	line	108
	
i1l2272:	
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
;;		line 159 in file "C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
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
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	159
global __ptext16
__ptext16:	;psect for function _ledShow
psect	text16
	file	"C:\mcuproject\scm\zdt\D119_062B_SOP14 - 副本\main.c"
	line	159
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 4
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	161
	
i1l1950:	
;main.c: 161: if(++ledCntTime > 5)
	movlw	low(06h)
	incf	(_ledCntTime),f
	subwf	((_ledCntTime)),w
	skipc
	goto	u135_21
	goto	u135_20
u135_21:
	goto	i1l662
u135_20:
	line	163
	
i1l1952:	
;main.c: 162: {
;main.c: 163: ledCntTime = 0;
	clrf	(_ledCntTime)
	line	164
	
i1l1954:	
;main.c: 164: if(++ledCnt > 13)
	movlw	low(0Eh)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u136_21
	goto	u136_20
u136_21:
	goto	i1l1958
u136_20:
	line	166
	
i1l1956:	
;main.c: 165: {
;main.c: 166: ledCnt = 0;
	clrf	(_ledCnt)
	line	168
	
i1l1958:	
;main.c: 167: }
;main.c: 168: PORTA &= 0xC1;
	movlw	low(0C1h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	169
	
i1l1960:	
;main.c: 169: TRISA |= 0x3E;
	movlw	low(03Eh)
	iorwf	(133)^080h,f	;volatile
	line	170
;main.c: 170: switch(ledCnt)
	goto	i1l1992
	line	172
;main.c: 171: {
;main.c: 172: case 1:
	
i1l632:	
	line	173
;main.c: 173: if(geweiNum & 0x08)
	btfss	(_geweiNum),(3)&7
	goto	u137_21
	goto	u137_20
u137_21:
	goto	i1l662
u137_20:
	line	175
	
i1l1962:	
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
;main.c: 182: if(geweiNum & 0x10)
	btfss	(_geweiNum),(4)&7
	goto	u138_21
	goto	u138_20
u138_21:
	goto	i1l662
u138_20:
	line	184
	
i1l1964:	
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
;main.c: 191: if(geweiNum & 0x20)
	btfss	(_geweiNum),(5)&7
	goto	u139_21
	goto	u139_20
u139_21:
	goto	i1l662
u139_20:
	line	193
	
i1l1966:	
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
;main.c: 200: if(geweiNum & 0x01)
	btfss	(_geweiNum),(0)&7
	goto	u140_21
	goto	u140_20
u140_21:
	goto	i1l662
u140_20:
	line	202
	
i1l1968:	
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
;main.c: 209: if(geweiNum & 0x02)
	btfss	(_geweiNum),(1)&7
	goto	u141_21
	goto	u141_20
u141_21:
	goto	i1l662
u141_20:
	line	211
	
i1l1970:	
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
;main.c: 218: if(geweiNum & 0x04)
	btfss	(_geweiNum),(2)&7
	goto	u142_21
	goto	u142_20
u142_21:
	goto	i1l662
u142_20:
	line	220
	
i1l1972:	
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
;main.c: 227: if(geweiNum & 0x40)
	btfss	(_geweiNum),(6)&7
	goto	u143_21
	goto	u143_20
u143_21:
	goto	i1l662
u143_20:
	line	229
	
i1l1974:	
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
;main.c: 236: if(shiweiNum & 0x08)
	btfss	(_shiweiNum),(3)&7
	goto	u144_21
	goto	u144_20
u144_21:
	goto	i1l662
u144_20:
	line	238
	
i1l1976:	
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
;main.c: 245: if(shiweiNum & 0x10)
	btfss	(_shiweiNum),(4)&7
	goto	u145_21
	goto	u145_20
u145_21:
	goto	i1l662
u145_20:
	line	247
	
i1l1978:	
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
;main.c: 254: if(shiweiNum & 0x20)
	btfss	(_shiweiNum),(5)&7
	goto	u146_21
	goto	u146_20
u146_21:
	goto	i1l662
u146_20:
	line	256
	
i1l1980:	
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
;main.c: 263: if(shiweiNum & 0x01)
	btfss	(_shiweiNum),(0)&7
	goto	u147_21
	goto	u147_20
u147_21:
	goto	i1l662
u147_20:
	line	265
	
i1l1982:	
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
;main.c: 272: if(shiweiNum & 0x02)
	btfss	(_shiweiNum),(1)&7
	goto	u148_21
	goto	u148_20
u148_21:
	goto	i1l662
u148_20:
	line	274
	
i1l1984:	
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
;main.c: 281: if(shiweiNum & 0x04)
	btfss	(_shiweiNum),(2)&7
	goto	u149_21
	goto	u149_20
u149_21:
	goto	i1l662
u149_20:
	line	283
	
i1l1986:	
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
;main.c: 290: if(shiweiNum & 0x40)
	btfss	(_shiweiNum),(6)&7
	goto	u150_21
	goto	u150_20
u150_21:
	goto	i1l662
u150_20:
	line	292
	
i1l1988:	
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
	
i1l1992:	
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
movlw high(i1S2698)
movwf pclath
	movlw low(i1S2698)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S2698:
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
psect	text16

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
