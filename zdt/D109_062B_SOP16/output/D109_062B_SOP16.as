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
	FNCALL	_chrgCtr,___lbdiv
	FNCALL	_checkOutA,_ADC_Sample
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
	global	_count5s
	global	_count50s
	global	_batADValue
	global	_outADValue
	global	_power_ad
	global	_result
	global	_adresult
	global	_sleepTime
	global	_lowBatFlag
	global	_preLedStep
	global	_overWorkTime
	global	_ledCntTime
	global	_showBatTime
	global	_lockLedStep
	global	_pwStep
	global	_startTime
	global	_tempDuty
	global	_overCount
	global	_maxDuty
	global	_longPressFlag
	global	_keyCount
	global	_ledCnt
	global	_workOverOutTime
	global	_countHalfFull
	global	_intCount10
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
	global	_RB4
_RB4	set	52
	global	_RB7
_RB7	set	55
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
; #config settings
	file	"D109_062B_SOP16.as"
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

_count5s:
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

_sleepTime:
       ds      1

_lowBatFlag:
       ds      1

_preLedStep:
       ds      1

_overWorkTime:
       ds      1

_ledCntTime:
       ds      1

_showBatTime:
       ds      1

_lockLedStep:
       ds      1

_pwStep:
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

_countHalfFull:
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

	file	"D109_062B_SOP16.as"
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
	movlw	low((__pbssBANK0)+028h)
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
?_pwmInit:	; 1 bytes @ 0x0
?_pwmStop:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_keyRead:	; 1 bytes @ 0x0
	ds	3
??_Init_System:	; 1 bytes @ 0x3
??_AD_Init:	; 1 bytes @ 0x3
??_workCtr:	; 1 bytes @ 0x3
??_Sleep_Mode:	; 1 bytes @ 0x3
??_pwmInit:	; 1 bytes @ 0x3
??_pwmStop:	; 1 bytes @ 0x3
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
??_chrgCtr:	; 1 bytes @ 0x7
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
	ds	1
??_ledCtr:	; 1 bytes @ 0x3
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
	ds	3
	global	checkOutA@maxAout
checkOutA@maxAout:	; 1 bytes @ 0x12
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         44
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      11
;!    BANK0            80     19      60
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
;!    _chrgCtr->___lbdiv
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
;! (0) _main                                                 0     0      0    3039
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
;! (2) _pwmStop                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _pwmInit                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _ledCtr                                               1     1      0     630
;!                                              3 BANK0      1     1      0
;!                            ___lbdiv
;!                            ___lbmod
;! ---------------------------------------------------------------------------------
;! (2) ___lbmod                                              5     4      1     362
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
;! (1) _chrgCtr                                              0     0      0     268
;!                            ___lbdiv
;! ---------------------------------------------------------------------------------
;! (2) ___lbdiv                                              4     3      1     268
;!                                              3 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _checkOutA                                            4     4      0    1097
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
;!     ___lbdiv
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
;!BANK0               50     13      3C       4       75.0%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      47       7        0.0%
;!DATA                 0      0      47       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 136 in file "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
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
	file	"C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
	line	136
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
	line	136
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	138
	
l2887:	
;main.c: 138: Init_System();
	fcall	_Init_System
	line	139
;main.c: 139: AD_Init();
	fcall	_AD_Init
	line	140
	
l2889:	
;main.c: 140: firstTime = 100;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_firstTime)
	line	141
;main.c: 141: while (1)
	
l663:	
	line	143
# 143 "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
clrwdt ;# 
psect	maintext
	line	144
	
l2891:	
;main.c: 144: if(intCount10 > 10)
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_intCount10),w
	skipc
	goto	u2981
	goto	u2980
u2981:
	goto	l2897
u2980:
	line	146
	
l2893:	
;main.c: 145: {
;main.c: 146: intCount10 = 0;
	clrf	(_intCount10)
	line	147
	
l2895:	
;main.c: 147: checkOutA();
	fcall	_checkOutA
	line	149
	
l2897:	
;main.c: 148: }
;main.c: 149: if(!IntFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u2991
	goto	u2990
u2991:
	goto	l2901
u2990:
	goto	l663
	line	151
	
l2901:	
;main.c: 151: IntFlag = 0;
	clrf	(_IntFlag)
	line	152
	
l2903:	
;main.c: 152: chrgCtr();
	fcall	_chrgCtr
	line	153
	
l2905:	
;main.c: 153: checkBatAD();
	fcall	_checkBatAD
	line	154
	
l2907:	
;main.c: 154: if(chrgFlag == 0 && lowBatFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3001
	goto	u3000
u3001:
	goto	l667
u3000:
	
l2909:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l667
u3010:
	line	156
	
l2911:	
;main.c: 155: {
;main.c: 156: keyCtr();
	fcall	_keyCtr
	line	157
	
l667:	
	line	158
;main.c: 157: }
;main.c: 158: workCtr();
	fcall	_workCtr
	line	159
;main.c: 159: ledCtr();
	fcall	_ledCtr
	line	160
	
l2913:	
;main.c: 160: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && showBatTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l2929
u3020:
	
l2915:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l2929
u3030:
	
l2917:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l2929
u3040:
	
l2919:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3051
	goto	u3050
u3051:
	goto	l2929
u3050:
	
l2921:	
	movf	((_showBatTime)),w
	btfss	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l2929
u3060:
	line	162
	
l2923:	
;main.c: 161: {
;main.c: 162: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u3071
	goto	u3070
u3071:
	goto	l663
u3070:
	line	164
	
l2925:	
;main.c: 163: {
;main.c: 164: sleepTime = 0;
	clrf	(_sleepTime)
	line	165
	
l2927:	
;main.c: 165: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l663
	line	170
	
l2929:	
;main.c: 168: else
;main.c: 169: {
;main.c: 170: sleepTime = 0;
	clrf	(_sleepTime)
	goto	l663
	global	start
	ljmp	start
	opt stack 0
	line	173
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 452 in file "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
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
	line	452
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
	line	452
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	455
	
l2373:	
;main.c: 455: if(startTime > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_startTime)),w
	btfsc	status,2
	goto	u2001
	goto	u2000
u2001:
	goto	l2377
u2000:
	line	457
	
l2375:	
;main.c: 456: {
;main.c: 457: startTime--;
	decf	(_startTime),f
	line	459
	
l2377:	
;main.c: 458: }
;main.c: 459: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2011
	goto	u2010
u2011:
	goto	l757
u2010:
	line	461
	
l2379:	
;main.c: 460: {
;main.c: 461: RA3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	462
;main.c: 462: if((PWMCON0 & 0x08) == 0)
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(21),(3)&7	;volatile
	goto	u2021
	goto	u2020
u2021:
	goto	l2383
u2020:
	line	464
	
l2381:	
;main.c: 463: {
;main.c: 464: pwmInit();
	fcall	_pwmInit
	line	466
	
l2383:	
;main.c: 465: }
;main.c: 466: maxDuty = 40 + (workStep*3);
	movf	(_workStep),w
	addwf	(_workStep),w
	addwf	(_workStep),w
	addlw	028h
	movwf	(_maxDuty)
	line	467
	
l2385:	
;main.c: 467: if(overCount >= 5)
	movlw	low(05h)
	subwf	(_overCount),w
	skipc
	goto	u2031
	goto	u2030
u2031:
	goto	l2395
u2030:
	line	469
	
l2387:	
;main.c: 468: {
;main.c: 469: if(++count5s > 500)
	incf	(_count5s),f
	skipnz
	incf	(_count5s+1),f
	movlw	01h
	subwf	((_count5s+1)),w
	movlw	0F5h
	skipnz
	subwf	((_count5s)),w
	skipc
	goto	u2041
	goto	u2040
u2041:
	goto	l2397
u2040:
	line	471
	
l2389:	
;main.c: 470: {
;main.c: 471: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	472
	
l2391:	
;main.c: 472: overWorkTime = 180;
	movlw	low(0B4h)
	movwf	(_overWorkTime)
	line	473
	
l2393:	
;main.c: 473: preLedStep = workStep;
	movf	(_workStep),w
	movwf	(_preLedStep)
	line	474
;main.c: 474: workStep = 0;
	clrf	(_workStep)
	goto	l2397
	line	480
	
l2395:	
;main.c: 478: else
;main.c: 479: {
;main.c: 480: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	482
	
l2397:	
;main.c: 481: }
;main.c: 482: if(count1s == 0 && ++count900s >= 900)
	movf	((_count1s)),w
	btfss	status,2
	goto	u2051
	goto	u2050
u2051:
	goto	l764
u2050:
	
l2399:	
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	movlw	03h
	subwf	((_count900s+1)),w
	movlw	084h
	skipnz
	subwf	((_count900s)),w
	skipc
	goto	u2061
	goto	u2060
u2061:
	goto	l764
u2060:
	line	484
	
l2401:	
;main.c: 483: {
;main.c: 484: workStep = 0;
	clrf	(_workStep)
	goto	l764
	line	487
	
l757:	
	line	489
;main.c: 487: else
;main.c: 488: {
;main.c: 489: RA3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	line	490
	
l2403:	
;main.c: 490: pwmStop();
	fcall	_pwmStop
	line	491
	
l2405:	
;main.c: 491: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	493
	
l764:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 799 in file "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 100/100
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
	line	799
global __ptext2
__ptext2:	;psect for function _pwmStop
psect	text2
	file	"C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
	line	799
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmStop: []
	line	801
	
l1999:	
;main.c: 801: PWMCON0 &= 0XF7;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(21)+(3/8),(3)&7	;volatile
	line	802
;main.c: 802: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	803
	
l830:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 784 in file "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
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
	line	784
global __ptext3
__ptext3:	;psect for function _pwmInit
psect	text3
	file	"C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
	line	784
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 4
; Regs used in _pwmInit: [wreg+status,2]
	line	786
	
l1989:	
;main.c: 786: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	787
;main.c: 787: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	788
	
l1991:	
;main.c: 788: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	791
	
l1993:	
;main.c: 791: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	792
;main.c: 792: PWMD3L = 50;
	movlw	low(032h)
	movwf	(156)^080h	;volatile
	line	793
	
l1995:	
;main.c: 793: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	795
	
l1997:	
;main.c: 795: PWMCON0 = 0X68;
	movlw	low(068h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	796
;main.c: 796: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	797
	
l827:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_ledCtr

;; *************** function _ledCtr *****************
;; Defined at:
;;		line 252 in file "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
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
;;      Temps:          0       1       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lbdiv
;;		___lbmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	252
global __ptext4
__ptext4:	;psect for function _ledCtr
psect	text4
	file	"C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
	line	252
	global	__size_of_ledCtr
	__size_of_ledCtr	equ	__end_of_ledCtr-_ledCtr
	
_ledCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _ledCtr: [wreg+status,2+status,0+pclath+cstack]
	line	254
	
l2835:	
;main.c: 254: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l2845
u2860:
	line	256
	
l2837:	
;main.c: 255: {
;main.c: 256: firstTime--;
	decf	(_firstTime),f
	line	257
	
l2839:	
;main.c: 257: ledStep = 6;
	movlw	low(06h)
	movwf	(_ledStep)
	line	258
	
l2841:	
;main.c: 258: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u2871
	goto	u2870
u2871:
	goto	l716
u2870:
	line	260
	
l2843:	
;main.c: 259: {
;main.c: 260: prePwStep = pwStep;
	movf	(_pwStep),w
	movwf	(_prePwStep)
	goto	l716
	line	263
	
l2845:	
;main.c: 263: else if(overWorkTime > 0)
	movf	((_overWorkTime)),w
	btfsc	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l2855
u2880:
	line	265
	
l2847:	
;main.c: 264: {
;main.c: 265: overWorkTime--;
	decf	(_overWorkTime),f
	line	266
	
l2849:	
;main.c: 266: if(overWorkTime % 60 < 30)
	movlw	low(03Ch)
	movwf	(___lbmod@divisor)
	movf	(_overWorkTime),w
	fcall	___lbmod
	movwf	(??_ledCtr+0)+0
	movlw	01Eh
	subwf	(??_ledCtr+0)+0,w
	skipnc
	goto	u2891
	goto	u2890
u2891:
	goto	l2853
u2890:
	line	268
	
l2851:	
;main.c: 267: {
;main.c: 268: ledStep = preLedStep;
	movf	(_preLedStep),w
	movwf	(_ledStep)
	line	269
;main.c: 269: }
	goto	l716
	line	272
	
l2853:	
;main.c: 270: else
;main.c: 271: {
;main.c: 272: ledStep = 0;
	clrf	(_ledStep)
	goto	l716
	line	275
	
l2855:	
;main.c: 275: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u2901
	goto	u2900
u2901:
	goto	l2873
u2900:
	line	277
	
l2857:	
;main.c: 276: {
;main.c: 277: showBatTime--;
	decf	(_showBatTime),f
	line	278
	
l2859:	
;main.c: 278: if(prePwStep >= 14)
	movlw	low(0Eh)
	subwf	(_prePwStep),w
	skipc
	goto	u2911
	goto	u2910
u2911:
	goto	l2863
u2910:
	line	280
	
l2861:	
;main.c: 279: {
;main.c: 280: ledStep = prePwStep/14;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	movwf	(_ledStep)
	line	281
;main.c: 281: }
	goto	l716
	line	282
	
l2863:	
;main.c: 282: else if(prePwStep > 5)
	movlw	low(06h)
	subwf	(_prePwStep),w
	skipc
	goto	u2921
	goto	u2920
u2921:
	goto	l2867
u2920:
	line	284
	
l2865:	
;main.c: 283: {
;main.c: 284: ledStep = 1;
	clrf	(_ledStep)
	incf	(_ledStep),f
	line	285
;main.c: 285: }
	goto	l716
	line	288
	
l2867:	
;main.c: 286: else
;main.c: 287: {
;main.c: 288: if(count1s < 50)
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u2931
	goto	u2930
u2931:
	goto	l2853
u2930:
	goto	l2865
	line	296
	
l704:	
	line	297
;main.c: 295: }
;main.c: 296: }
;main.c: 297: }
	goto	l716
	line	298
	
l2873:	
;main.c: 298: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2941
	goto	u2940
u2941:
	goto	l2877
u2940:
	line	300
	
l2875:	
;main.c: 299: {
;main.c: 300: ledStep = workStep;
	movf	(_workStep),w
	movwf	(_ledStep)
	line	301
;main.c: 301: }
	goto	l716
	line	302
	
l2877:	
;main.c: 302: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2951
	goto	u2950
u2951:
	goto	l2853
u2950:
	line	304
	
l2879:	
;main.c: 303: {
;main.c: 304: if(count1s % 50 == 0)
	movlw	low(032h)
	movwf	(___lbmod@divisor)
	movf	(_count1s),w
	fcall	___lbmod
	xorlw	0
	skipz
	goto	u2961
	goto	u2960
u2961:
	goto	l716
u2960:
	line	306
	
l2881:	
;main.c: 305: {
;main.c: 306: if(++ledStep > 6)
	movlw	low(07h)
	incf	(_ledStep),f
	subwf	((_ledStep)),w
	skipc
	goto	u2971
	goto	u2970
u2971:
	goto	l704
u2970:
	line	308
	
l2883:	
;main.c: 307: {
;main.c: 308: ledStep = lockLedStep;
	movf	(_lockLedStep),w
	movwf	(_ledStep)
	line	316
	
l716:	
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
	
l2669:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l2671:	
	clrf	(___lbmod@rem)
	line	12
	
l2673:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u2505:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u2505
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l2675:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l2677:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u2511
	goto	u2510
u2511:
	goto	l2681
u2510:
	line	15
	
l2679:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l2681:	
	decfsz	(___lbmod@counter),f
	goto	u2521
	goto	u2520
u2521:
	goto	l2673
u2520:
	line	17
	
l2683:	
	movf	(___lbmod@rem),w
	line	18
	
l1130:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 415 in file "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
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
	file	"C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
	line	415
global __ptext6
__ptext6:	;psect for function _keyCtr
psect	text6
	file	"C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
	line	415
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	417
	
l2345:	
;main.c: 417: char kclick = keyRead(0x20 & (~PORTB));
	comf	(6),w	;volatile
	andlw	020h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	418
	
l2347:	
;main.c: 418: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u1941
	goto	u1940
u1941:
	goto	l2363
u1940:
	line	420
	
l2349:	
;main.c: 419: {
;main.c: 420: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1951
	goto	u1950
u1951:
	goto	l2355
u1950:
	line	422
	
l2351:	
;main.c: 421: {
;main.c: 422: if(++workStep > 6)
	movlw	low(07h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u1961
	goto	u1960
u1961:
	goto	l753
u1960:
	line	424
	
l2353:	
;main.c: 423: {
;main.c: 424: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l753
	line	427
	
l2355:	
;main.c: 427: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u1971
	goto	u1970
u1971:
	goto	l2359
u1970:
	line	429
	
l2357:	
;main.c: 428: {
;main.c: 429: showBatTime = 0;
	clrf	(_showBatTime)
	line	430
;main.c: 430: }
	goto	l753
	line	433
	
l2359:	
;main.c: 431: else
;main.c: 432: {
;main.c: 433: showBatTime = 200;
	movlw	low(0C8h)
	movwf	(_showBatTime)
	line	434
	
l2361:	
;main.c: 434: count1s = 0;
	clrf	(_count1s)
	goto	l753
	line	437
	
l2363:	
;main.c: 437: else if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u1981
	goto	u1980
u1981:
	goto	l753
u1980:
	line	439
	
l2365:	
;main.c: 438: {
;main.c: 439: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1991
	goto	u1990
u1991:
	goto	l751
u1990:
	line	441
	
l2367:	
;main.c: 440: {
;main.c: 441: workStep = 0;
	clrf	(_workStep)
	line	442
;main.c: 442: }
	goto	l753
	line	443
	
l751:	
	line	445
;main.c: 443: else
;main.c: 444: {
;main.c: 445: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	446
	
l2369:	
;main.c: 446: startTime = 30;
	movlw	low(01Eh)
	movwf	(_startTime)
	goto	l2357
	line	450
	
l753:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 382 in file "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
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
	line	382
global __ptext7
__ptext7:	;psect for function _keyRead
psect	text7
	file	"C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
	line	382
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	384
	
l1949:	
;main.c: 384: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1181
	goto	u1180
u1181:
	goto	l1965
u1180:
	line	386
	
l1951:	
;main.c: 385: {
;main.c: 386: keyCount++;
	incf	(_keyCount),f
	line	387
	
l1953:	
;main.c: 387: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1191
	goto	u1190
u1191:
	goto	l1969
u1190:
	line	389
	
l1955:	
;main.c: 388: {
;main.c: 389: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	line	390
	
l1957:	
;main.c: 390: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1201
	goto	u1200
u1201:
	goto	l1969
u1200:
	line	392
	
l1959:	
;main.c: 391: {
;main.c: 392: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	393
	
l1961:	
;main.c: 393: return 2;
	movlw	low(02h)
	goto	l736
	line	399
	
l1965:	
;main.c: 397: else
;main.c: 398: {
;main.c: 399: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1211
	goto	u1210
u1211:
	goto	l1975
u1210:
	line	401
	
l1967:	
;main.c: 400: {
;main.c: 401: keyCount = 0;
	clrf	(_keyCount)
	line	402
;main.c: 402: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	403
	
l1969:	
;main.c: 403: return 0;
	movlw	low(0)
	goto	l736
	line	405
	
l1975:	
;main.c: 405: else if(keyCount >= 4)
	movlw	low(04h)
	subwf	(_keyCount),w
	skipc
	goto	u1221
	goto	u1220
u1221:
	goto	l1983
u1220:
	line	407
	
l1977:	
;main.c: 406: {
;main.c: 407: keyCount = 0;
	clrf	(_keyCount)
	line	408
	
l1979:	
;main.c: 408: return 1;
	movlw	low(01h)
	goto	l736
	line	410
	
l1983:	
;main.c: 409: }
;main.c: 410: keyCount = 0;
	clrf	(_keyCount)
	goto	l1969
	line	413
	
l736:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 320 in file "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
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
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	320
global __ptext8
__ptext8:	;psect for function _chrgCtr
psect	text8
	file	"C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
	line	320
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	322
	
l2243:	
;main.c: 322: if(PORTB & 0x04)
	btfss	(6),(2)&7	;volatile
	goto	u1731
	goto	u1730
u1731:
	goto	l2267
u1730:
	line	324
	
l2245:	
;main.c: 323: {
;main.c: 324: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u1741
	goto	u1740
u1741:
	goto	l720
u1740:
	line	326
	
l2247:	
;main.c: 325: {
;main.c: 326: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	327
	
l2249:	
;main.c: 328: chrgMaxDuty = 0;
	clrf	(_ledStep)
	line	329
	
l720:	
	line	330
;main.c: 329: }
;main.c: 330: workStep = 0;
	clrf	(_workStep)
	line	331
;main.c: 331: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	332
	
l2251:	
;main.c: 332: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u1751
	goto	u1750
u1751:
	goto	l2259
u1750:
	line	334
	
l2253:	
;main.c: 333: {
;main.c: 334: if(++count50s > 7200)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	01Ch
	subwf	((_count50s+1)),w
	movlw	021h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u1761
	goto	u1760
u1761:
	goto	l2261
u1760:
	line	336
	
l2255:	
;main.c: 335: {
;main.c: 336: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	337
	
l2257:	
;main.c: 337: prePwStep++;
	incf	(_prePwStep),f
	goto	l2261
	line	342
	
l2259:	
;main.c: 340: else
;main.c: 341: {
;main.c: 342: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	344
	
l2261:	
;main.c: 343: }
;main.c: 344: if(prePwStep < 15)
	movlw	low(0Fh)
	subwf	(_prePwStep),w
	skipnc
	goto	u1771
	goto	u1770
u1771:
	goto	l2265
u1770:
	line	346
	
l2263:	
;main.c: 345: {
;main.c: 346: lockLedStep = 0;
	clrf	(_lockLedStep)
	line	347
;main.c: 347: }
	goto	l730
	line	350
	
l2265:	
;main.c: 348: else
;main.c: 349: {
;main.c: 350: lockLedStep = (prePwStep/14) - 1;
	movlw	low(0Eh)
	movwf	(___lbdiv@divisor)
	movf	(_prePwStep),w
	fcall	___lbdiv
	addlw	0FFh
	movwf	(_lockLedStep)
	goto	l730
	line	356
	
l2267:	
;main.c: 362: lockCount = 0;
	clrf	(_chrgFlag)
	line	363
;main.c: 364: chrgWaitTime = 20;
	clrf	(_lockLedStep)
	line	365
	
l2269:	
;main.c: 365: if(prePwStep > 0 && prePwStep > pwStep)
	movf	((_prePwStep)),w
	btfsc	status,2
	goto	u1781
	goto	u1780
u1781:
	goto	l2279
u1780:
	
l2271:	
	movf	(_prePwStep),w
	subwf	(_pwStep),w
	skipnc
	goto	u1791
	goto	u1790
u1791:
	goto	l2279
u1790:
	line	367
	
l2273:	
;main.c: 366: {
;main.c: 367: if(++count50s > 2000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	07h
	subwf	((_count50s+1)),w
	movlw	0D1h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u1801
	goto	u1800
u1801:
	goto	l730
u1800:
	line	369
	
l2275:	
;main.c: 368: {
;main.c: 369: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	370
	
l2277:	
;main.c: 370: prePwStep--;
	decf	(_prePwStep),f
	goto	l730
	line	375
	
l2279:	
;main.c: 373: else
;main.c: 374: {
;main.c: 375: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	378
	
l730:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
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
psect	text9,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
	line	4
global __ptext9
__ptext9:	;psect for function ___lbdiv
psect	text9
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
	
l2073:	
	clrf	(___lbdiv@quotient)
	line	10
	
l2075:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u1381
	goto	u1380
u1381:
	goto	l2093
u1380:
	line	11
	
l2077:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2081
	
l1119:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l2079:	
	incf	(___lbdiv@counter),f
	line	12
	
l2081:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1391
	goto	u1390
u1391:
	goto	l1119
u1390:
	line	16
	
l1121:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l2083:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1401
	goto	u1400
u1401:
	goto	l2089
u1400:
	line	19
	
l2085:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2087:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2089:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l2091:	
	decfsz	(___lbdiv@counter),f
	goto	u1411
	goto	u1410
u1411:
	goto	l1121
u1410:
	line	25
	
l2093:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1124:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_checkOutA

;; *************** function _checkOutA *****************
;; Defined at:
;;		line 495 in file "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  maxAout         1   18[BANK0 ] unsigned char 
;;  maxtempV        1    0        unsigned char 
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
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
	line	495
global __ptext10
__ptext10:	;psect for function _checkOutA
psect	text10
	file	"C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
	line	495
	global	__size_of_checkOutA
	__size_of_checkOutA	equ	__end_of_checkOutA-_checkOutA
	
_checkOutA:	
;incstack = 0
	opt	stack 4
; Regs used in _checkOutA: [wreg+status,2+status,0+pclath+cstack]
	line	497
	
l2687:	
;main.c: 497: test_adc = ADC_Sample(0, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	498
	
l2689:	
;main.c: 498: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u2531
	goto	u2530
u2531:
	goto	l2767
u2530:
	line	501
	
l2691:	
;main.c: 499: {
;main.c: 501: outADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_outADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_outADValue)
	line	503
	
l2693:	
;main.c: 503: if(workStep && (outADValue > 600))
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2541
	goto	u2540
u2541:
	goto	l2701
u2540:
	
l2695:	
	movlw	02h
	subwf	(_outADValue+1),w
	movlw	059h
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l2701
u2550:
	line	505
	
l2697:	
;main.c: 504: {
;main.c: 505: if(++workOverOutTime > 50)
	movlw	low(033h)
	incf	(_workOverOutTime),f
	subwf	((_workOverOutTime)),w
	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l2703
u2560:
	line	507
	
l2699:	
;main.c: 506: {
;main.c: 507: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	508
;main.c: 508: workStep = 0;
	clrf	(_workStep)
	goto	l2703
	line	513
	
l2701:	
;main.c: 511: else
;main.c: 512: {
;main.c: 513: workOverOutTime = 0;
	clrf	(_workOverOutTime)
	line	515
	
l2703:	
	line	516
	
l2705:	
;main.c: 516: if(workStep < 6 && outADValue > maxtempV)
	movlw	low(06h)
	subwf	(_workStep),w
	skipnc
	goto	u2571
	goto	u2570
u2571:
	goto	l2713
u2570:
	
l2707:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	0C9h
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l2713
u2580:
	line	518
	
l2709:	
;main.c: 517: {
;main.c: 518: if(++overCount > 5)
	movlw	low(06h)
	incf	(_overCount),f
	subwf	((_overCount)),w
	skipc
	goto	u2591
	goto	u2590
u2591:
	goto	l2763
u2590:
	line	520
	
l2711:	
;main.c: 519: {
;main.c: 520: overCount = 5;
	movlw	low(05h)
	movwf	(_overCount)
	goto	l2763
	line	523
	
l2713:	
;main.c: 523: else if(outADValue > (maxtempV+100))
	movlw	01h
	subwf	(_outADValue+1),w
	movlw	02Dh
	skipnz
	subwf	(_outADValue),w
	skipc
	goto	u2601
	goto	u2600
u2601:
	goto	l2719
u2600:
	line	525
	
l2715:	
;main.c: 524: {
;main.c: 525: if(++overCount > 5)
	movlw	low(06h)
	incf	(_overCount),f
	subwf	((_overCount)),w
	skipc
	goto	u2611
	goto	u2610
u2611:
	goto	l2763
u2610:
	goto	l2711
	line	532
	
l2719:	
;main.c: 530: else
;main.c: 531: {
;main.c: 532: unsigned char maxAout = 40;
	movlw	low(028h)
	movwf	(checkOutA@maxAout)
	line	533
;main.c: 533: if(pwStep < 40)
	movlw	low(028h)
	subwf	(_pwStep),w
	skipnc
	goto	u2621
	goto	u2620
u2621:
	goto	l2723
u2620:
	line	535
	
l2721:	
;main.c: 534: {
;main.c: 535: maxAout = 37;
	movlw	low(025h)
	movwf	(checkOutA@maxAout)
	line	537
	
l2723:	
;main.c: 536: }
;main.c: 537: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l2727
u2630:
	line	539
	
l2725:	
;main.c: 538: {
;main.c: 539: maxAout = maxAout + 1;
	incf	(checkOutA@maxAout),f
	line	540
;main.c: 540: }
	goto	l779
	line	541
	
l2727:	
;main.c: 541: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l2731
u2640:
	line	543
	
l2729:	
;main.c: 542: {
;main.c: 543: maxAout = maxAout + 3;
	movlw	low(03h)
	addwf	(checkOutA@maxAout),f
	line	544
;main.c: 544: }
	goto	l779
	line	545
	
l2731:	
;main.c: 545: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l2735
u2650:
	line	547
	
l2733:	
;main.c: 546: {
;main.c: 547: maxAout = maxAout + 5;
	movlw	low(05h)
	addwf	(checkOutA@maxAout),f
	line	548
;main.c: 548: }
	goto	l779
	line	549
	
l2735:	
;main.c: 549: else if(workStep == 4)
		movlw	4
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l2739
u2660:
	line	551
	
l2737:	
;main.c: 550: {
;main.c: 551: maxAout = maxAout + 7;
	movlw	low(07h)
	addwf	(checkOutA@maxAout),f
	line	552
;main.c: 552: }
	goto	l779
	line	553
	
l2739:	
;main.c: 553: else if(workStep == 5)
		movlw	5
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l2743
u2670:
	line	555
	
l2741:	
;main.c: 554: {
;main.c: 555: maxAout = maxAout + 9;
	movlw	low(09h)
	addwf	(checkOutA@maxAout),f
	line	556
;main.c: 556: }
	goto	l779
	line	557
	
l2743:	
;main.c: 557: else if(workStep == 6)
		movlw	6
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l783
u2680:
	line	559
	
l2745:	
;main.c: 558: {
;main.c: 559: maxAout = maxAout + 12;
	movlw	low(0Ch)
	addwf	(checkOutA@maxAout),f
	goto	l779
	line	561
	
l783:	
	
l779:	
;main.c: 560: }
;main.c: 561: if(overCount > 0)
	movf	((_overCount)),w
	btfsc	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l2749
u2690:
	line	563
	
l2747:	
;main.c: 562: {
;main.c: 563: overCount--;
	decf	(_overCount),f
	line	565
	
l2749:	
;main.c: 564: }
;main.c: 565: if(outADValue > maxAout)
	movf	(checkOutA@maxAout),w
	movwf	(??_checkOutA+0)+0
	clrf	(??_checkOutA+0)+0+1
	movf	(_outADValue+1),w
	subwf	1+(??_checkOutA+0)+0,w
	skipz
	goto	u2705
	movf	(_outADValue),w
	subwf	0+(??_checkOutA+0)+0,w
u2705:
	skipnc
	goto	u2701
	goto	u2700
u2701:
	goto	l2757
u2700:
	line	568
	
l2751:	
;main.c: 566: {
;main.c: 568: if(startTime == 0)
	movf	((_startTime)),w
	btfss	status,2
	goto	u2711
	goto	u2710
u2711:
	goto	l2755
u2710:
	line	570
	
l2753:	
;main.c: 569: {
;main.c: 570: tempDuty = 81 + (workStep*3);
	movf	(_workStep),w
	addwf	(_workStep),w
	addwf	(_workStep),w
	addlw	051h
	movwf	(_tempDuty)
	line	571
;main.c: 571: }
	goto	l2763
	line	574
	
l2755:	
;main.c: 572: else
;main.c: 573: {
;main.c: 574: tempDuty = maxDuty;
	movf	(_maxDuty),w
	movwf	(_tempDuty)
	goto	l2763
	line	582
	
l2757:	
;main.c: 582: if(tempDuty > maxDuty)
	movf	(_tempDuty),w
	subwf	(_maxDuty),w
	skipnc
	goto	u2721
	goto	u2720
u2721:
	goto	l2755
u2720:
	line	584
	
l2759:	
;main.c: 583: {
;main.c: 584: tempDuty--;
	decf	(_tempDuty),f
	line	594
;main.c: 585: }
	
l2763:	
;main.c: 589: }
;main.c: 591: }
;main.c: 593: }
;main.c: 594: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	595
	
l2765:	
;main.c: 595: PWMD3L = tempDuty;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_tempDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	596
;main.c: 596: }
	goto	l797
	line	599
	
l2767:	
;main.c: 597: else
;main.c: 598: {
;main.c: 599: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	600
;main.c: 600: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	601
	
l2769:	
;main.c: 601: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkOutA+0)+0),f
	u3087:
decfsz	(??_checkOutA+0)+0,f
	goto	u3087
opt asmopt_pop

	line	603
	
l797:	
	return
	opt stack 0
GLOBAL	__end_of_checkOutA
	__end_of_checkOutA:
	signat	_checkOutA,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 605 in file "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
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
;;		_ADC_Sample
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	605
global __ptext11
__ptext11:	;psect for function _checkBatAD
psect	text11
	file	"C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
	line	605
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	607
	
l2771:	
;main.c: 607: test_adc = ADC_Sample(1, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(01h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	608
	
l2773:	
;main.c: 608: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l2809
u2730:
	line	610
	
l2775:	
;main.c: 609: {
;main.c: 610: batADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_batADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_batADValue)
	line	611
;main.c: 611: if(batADValue < 1117)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Dh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2741
	goto	u2740
u2741:
	goto	l2793
u2740:
	line	613
	
l2777:	
;main.c: 612: {
;main.c: 613: pwStep = 0;
	clrf	(_pwStep)
	line	614
	
l2779:	
;main.c: 614: if(++count8s > 800)
	incf	(_count8s),f
	skipnz
	incf	(_count8s+1),f
	movlw	03h
	subwf	((_count8s+1)),w
	movlw	021h
	skipnz
	subwf	((_count8s)),w
	skipc
	goto	u2751
	goto	u2750
u2751:
	goto	l2805
u2750:
	line	616
	
l2781:	
;main.c: 615: {
;main.c: 616: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	617
	
l2783:	
;main.c: 617: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	618
	
l2785:	
;main.c: 618: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l2789
u2760:
	line	620
	
l2787:	
;main.c: 619: {
;main.c: 620: overWorkTime = 180;
	movlw	low(0B4h)
	movwf	(_overWorkTime)
	line	621
;main.c: 621: preLedStep = workStep;
	movf	(_workStep),w
	movwf	(_preLedStep)
	line	623
	
l2789:	
;main.c: 622: }
;main.c: 623: prePwStep = 0;
	clrf	(_prePwStep)
	line	624
	
l2791:	
;main.c: 624: workStep = 0;
	clrf	(_workStep)
	goto	l2813
	line	629
	
l2793:	
;main.c: 627: else
;main.c: 628: {
;main.c: 629: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	630
	
l2795:	
;main.c: 630: if(batADValue >= 1340)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	03Ch
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u2771
	goto	u2770
u2771:
	goto	l2799
u2770:
	line	632
	
l2797:	
;main.c: 631: {
;main.c: 632: pwStep = ((batADValue - 1340) /2) + 13;
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
	line	633
;main.c: 633: }
	goto	l2801
	line	636
	
l2799:	
;main.c: 634: else
;main.c: 635: {
;main.c: 636: pwStep = (batADValue - 1117) / 16;
	movf	(_batADValue),w
	addlw	low(0FBA3h)
	movwf	(??_checkBatAD+0)+0
	movf	(_batADValue+1),w
	skipnc
	addlw	1
	addlw	high(0FBA3h)
	movwf	1+(??_checkBatAD+0)+0
	movlw	04h
u2785:
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	addlw	-1
	skipz
	goto	u2785
	movf	0+(??_checkBatAD+0)+0,w
	movwf	(_pwStep)
	line	638
	
l2801:	
;main.c: 637: }
;main.c: 638: if(pwStep > 99)
	movlw	low(064h)
	subwf	(_pwStep),w
	skipc
	goto	u2791
	goto	u2790
u2791:
	goto	l2805
u2790:
	line	640
	
l2803:	
;main.c: 639: {
;main.c: 640: pwStep = 99;
	movlw	low(063h)
	movwf	(_pwStep)
	goto	l2813
	line	643
	
l2805:	
	goto	l2813
	line	650
	
l2809:	
;main.c: 648: else
;main.c: 649: {
;main.c: 650: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	651
;main.c: 651: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	652
	
l2811:	
;main.c: 652: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u3097:
decfsz	(??_checkBatAD+0)+0,f
	goto	u3097
opt asmopt_pop

	line	654
	
l2813:	
;main.c: 653: }
;main.c: 654: test_adc = ADC_Sample(2, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(02h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	655
	
l2815:	
;main.c: 655: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l2831
u2800:
	line	657
	
l2817:	
;main.c: 656: {
;main.c: 657: if(chrgFlag && adresult > 100)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2811
	goto	u2810
u2811:
	goto	l818
u2810:
	
l2819:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	065h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u2821
	goto	u2820
u2821:
	goto	l818
u2820:
	line	660
	
l2821:	
;main.c: 658: {
;main.c: 660: if(adresult > 810 || (batADValue - adresult) > 810)
	movlw	03h
	subwf	(_adresult+1),w	;volatile
	movlw	02Bh
	skipnz
	subwf	(_adresult),w	;volatile
	skipnc
	goto	u2831
	goto	u2830
u2831:
	goto	l2825
u2830:
	
l2823:	
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
	goto	u2841
	goto	u2840
u2841:
	goto	l2827
u2840:
	line	663
	
l2825:	
;main.c: 661: {
;main.c: 663: if(++countHalfFull > 250)
	movlw	low(0FBh)
	incf	(_countHalfFull),f
	subwf	((_countHalfFull)),w
	skipc
	goto	u2851
	goto	u2850
u2851:
	goto	l811
u2850:
	line	665
	
l2827:	
;main.c: 666: protectFlag = 2;
	clrf	(_countHalfFull)
	goto	l818
	line	673
	
l811:	
	line	674
;main.c: 672: }
;main.c: 673: }
;main.c: 674: }
	goto	l818
	line	677
	
l2831:	
;main.c: 675: else
;main.c: 676: {
;main.c: 677: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	678
;main.c: 678: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	679
	
l2833:	
;main.c: 679: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u3107:
decfsz	(??_checkBatAD+0)+0,f
	goto	u3107
opt asmopt_pop

	line	681
	
l818:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 889 in file "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
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
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	889
global __ptext12
__ptext12:	;psect for function _ADC_Sample
psect	text12
	file	"C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
	line	889
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 4
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	891
	
l2597:	
;main.c: 891: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	892
	
l2599:	
;main.c: 892: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	893
;main.c: 893: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	895
	
l2601:	
;main.c: 895: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u2351
	goto	u2350
u2351:
	goto	l2607
u2350:
	
l2603:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l2607
u2360:
	line	898
	
l2605:	
;main.c: 896: {
;main.c: 898: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	899
;main.c: 899: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_ADC_Sample+0)+0),f
	u3117:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u3117
	nop2
opt asmopt_pop

	line	900
;main.c: 900: }
	goto	l2609
	line	902
	
l2607:	
;main.c: 901: else
;main.c: 902: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	904
	
l2609:	
;main.c: 904: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l2615
u2370:
	line	906
	
l2611:	
;main.c: 905: {
;main.c: 906: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	907
	
l2613:	
;main.c: 907: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	909
	
l2615:	
	line	910
	
l2617:	
;main.c: 910: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	912
	
l2623:	
;main.c: 911: {
;main.c: 912: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u2385:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u2385
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	913
# 913 "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
nop ;# 
	line	914
# 914 "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
nop ;# 
	line	915
# 915 "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
nop ;# 
	line	916
# 916 "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
nop ;# 
psect	text12
	line	917
	
l2625:	
;main.c: 917: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	919
	
l2627:	
;main.c: 919: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	920
;main.c: 920: while (GODONE)
	goto	l844
	
l845:	
	line	922
;main.c: 921: {
;main.c: 922: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	924
;main.c: 924: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u2391
	goto	u2390
u2391:
	goto	l844
u2390:
	line	925
	
l2629:	
;main.c: 925: return 0;
	movlw	low(0)
	goto	l847
	line	926
	
l844:	
	line	920
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u2401
	goto	u2400
u2401:
	goto	l845
u2400:
	line	928
	
l2633:	
;main.c: 926: }
;main.c: 928: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l2635:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	930
	
l2637:	
;main.c: 930: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u2411
	goto	u2410
u2411:
	goto	l2641
u2410:
	line	932
	
l2639:	
;main.c: 931: {
;main.c: 932: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	933
;main.c: 933: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	934
;main.c: 934: }
	goto	l850
	line	935
	
l2641:	
;main.c: 935: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u2425
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u2425:
	skipnc
	goto	u2421
	goto	u2420
u2421:
	goto	l2645
u2420:
	line	936
	
l2643:	
;main.c: 936: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l850
	line	937
	
l2645:	
;main.c: 937: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u2435
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u2435:
	skipnc
	goto	u2431
	goto	u2430
u2431:
	goto	l850
u2430:
	line	938
	
l2647:	
;main.c: 938: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	940
	
l850:	
;main.c: 940: adsum += ad_temp;
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
	goto	u2441
	addwf	(ADC_Sample@adsum+1),f	;volatile
u2441:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2442
	addwf	(ADC_Sample@adsum+2),f	;volatile
u2442:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2443
	addwf	(ADC_Sample@adsum+3),f	;volatile
u2443:

	line	910
	
l2649:	
	incf	(ADC_Sample@i),f
	
l2651:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u2451
	goto	u2450
u2451:
	goto	l2623
u2450:
	line	942
	
l2653:	
;main.c: 941: }
;main.c: 942: adsum -= admax;
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
	goto	u2465
	goto	u2466
u2465:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u2466:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u2467
	goto	u2468
u2467:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u2468:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u2469
	goto	u2460
u2469:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u2460:

	line	943
;main.c: 943: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u2475
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u2475
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u2475
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u2475:
	skipc
	goto	u2471
	goto	u2470
u2471:
	goto	l854
u2470:
	line	944
	
l2655:	
;main.c: 944: adsum -= admin;
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
	goto	u2485
	goto	u2486
u2485:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u2486:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u2487
	goto	u2488
u2487:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u2488:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u2489
	goto	u2480
u2489:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u2480:

	goto	l2657
	line	945
	
l854:	
	line	946
;main.c: 945: else
;main.c: 946: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	948
	
l2657:	
;main.c: 948: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u2495:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u2490:
	addlw	-1
	skipz
	goto	u2495
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	950
	
l2659:	
;main.c: 950: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	951
	
l2661:	
;main.c: 951: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	952
	
l2663:	
;main.c: 952: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	953
	
l2665:	
;main.c: 953: return 0xA5;
	movlw	low(0A5h)
	line	955
	
l847:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 813 in file "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
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
	line	813
global __ptext13
__ptext13:	;psect for function _Sleep_Mode
psect	text13
	file	"C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
	line	813
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 4
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	815
	
l2459:	
;main.c: 815: INTCON = 0;
	clrf	(11)	;volatile
	line	817
;main.c: 817: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	819
	
l2461:	
;main.c: 819: TRISA = 0x07;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	820
	
l2463:	
;main.c: 820: WPUA = 0B00000000;
	clrf	(136)^080h	;volatile
	line	821
	
l2465:	
;main.c: 821: PORTA = 0x00;
	clrf	(134)^080h	;volatile
	line	822
	
l2467:	
;main.c: 822: TRISB = 0x24;
	movlw	low(024h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	823
;main.c: 823: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	824
	
l2469:	
;main.c: 824: WPUB = 0x20;
	movlw	low(020h)
	movwf	(8)	;volatile
	line	826
	
l2471:	
;main.c: 826: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	827
	
l2473:	
;main.c: 827: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	829
	
l2475:	
;main.c: 829: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	831
;main.c: 831: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	833
	
l2477:	
;main.c: 833: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	834
	
l2479:	
;main.c: 834: IOCB = 0x24;
	movlw	low(024h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	836
	
l2481:	
;main.c: 836: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	837
	
l2483:	
;main.c: 837: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	838
	
l2485:	
;main.c: 838: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	839
	
l2487:	
;main.c: 839: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	841
	
l2489:	
;main.c: 841: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	842
	
l2491:	
;main.c: 842: PIR1 = 0;
	clrf	(13)	;volatile
	line	843
;main.c: 843: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	845
	
l2493:	
;main.c: 845: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	846
	
l2495:	
;main.c: 846: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	847
	
l2497:	
;main.c: 847: PORTB;
	movf	(6),w	;volatile
	line	848
	
l2499:	
;main.c: 848: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	849
# 849 "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
clrwdt ;# 
	line	851
# 851 "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
sleep ;# 
	line	853
# 853 "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
nop ;# 
	line	854
# 854 "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
clrwdt ;# 
	line	855
# 855 "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
nop ;# 
	line	856
# 856 "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
nop ;# 
	line	857
# 857 "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
nop ;# 
	line	858
# 858 "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
nop ;# 
	line	859
# 859 "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
nop ;# 
psect	text13
	line	860
	
l2501:	
;main.c: 860: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u2191
	goto	u2190
u2191:
	goto	l833
u2190:
	
l2503:	
	bcf	(107/8),(107)&7	;volatile
	
l833:	
	line	861
;main.c: 861: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u2201
	goto	u2200
u2201:
	goto	l834
u2200:
	
l2505:	
	bcf	(88/8),(88)&7	;volatile
	
l834:	
	line	862
;main.c: 862: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u2211
	goto	u2210
u2211:
	goto	l2509
u2210:
	
l2507:	
	bcf	(105/8),(105)&7	;volatile
	line	863
	
l2509:	
;main.c: 863: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	864
;main.c: 864: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	865
	
l2511:	
;main.c: 865: Init_System();
	fcall	_Init_System
	line	866
	
l2513:	
;main.c: 866: AD_Init();
	fcall	_AD_Init
	line	867
	
l836:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 692 in file "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
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
	line	692
global __ptext14
__ptext14:	;psect for function _Init_System
psect	text14
	file	"C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
	line	692
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_System: [wreg+status,2]
	line	694
	
l1917:	
# 694 "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
nop ;# 
	line	695
# 695 "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
clrwdt ;# 
psect	text14
	line	696
	
l1919:	
;main.c: 696: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	697
# 697 "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
clrwdt ;# 
psect	text14
	line	698
	
l1921:	
;main.c: 698: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	700
	
l1923:	
;main.c: 700: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	701
	
l1925:	
;main.c: 701: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	702
	
l1927:	
;main.c: 702: WPUB = 0x20;
	movlw	low(020h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	704
	
l1929:	
;main.c: 704: TRISA = 0x07;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	705
	
l1931:	
;main.c: 705: TRISB = 0x24;
	movlw	low(024h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	707
;main.c: 707: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	708
;main.c: 708: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	712
	
l1933:	
;main.c: 712: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	713
	
l1935:	
;main.c: 713: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	714
	
l1937:	
;main.c: 714: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	716
	
l1939:	
;main.c: 716: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	717
	
l1941:	
;main.c: 717: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	718
	
l821:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 729 in file "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
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
	line	729
global __ptext15
__ptext15:	;psect for function _AD_Init
psect	text15
	file	"C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
	line	729
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 4
; Regs used in _AD_Init: [wreg+status,2]
	line	762
	
l1943:	
;main.c: 762: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	779
	
l1945:	
;main.c: 779: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	780
	
l1947:	
;main.c: 780: ANSEL0 = 0X07;
	movlw	low(07h)
	movwf	(147)^080h	;volatile
	line	781
	
l824:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 112 in file "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
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
	line	112
global __ptext16
__ptext16:	;psect for function _Isr_Timer
psect	text16
	file	"C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
	line	112
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
	line	114
	
i1l2515:	
;main.c: 114: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u222_21
	goto	u222_20
u222_21:
	goto	i1l658
u222_20:
	line	116
	
i1l2517:	
;main.c: 115: {
;main.c: 116: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	117
	
i1l2519:	
;main.c: 117: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u223_21
	goto	u223_20
u223_21:
	goto	i1l2529
u223_20:
	line	119
	
i1l2521:	
;main.c: 118: {
;main.c: 119: intCount = 0;
	clrf	(_intCount)
	line	120
	
i1l2523:	
;main.c: 120: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	121
	
i1l2525:	
;main.c: 121: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u224_21
	goto	u224_20
u224_21:
	goto	i1l2529
u224_20:
	line	123
	
i1l2527:	
;main.c: 122: {
;main.c: 123: count1s = 0;
	clrf	(_count1s)
	line	126
	
i1l2529:	
;main.c: 124: }
;main.c: 125: }
;main.c: 126: ledShow();
	fcall	_ledShow
	line	127
	
i1l2531:	
;main.c: 127: intCount10++;
	incf	(_intCount10),f
	line	130
	
i1l658:	
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
;;		line 175 in file "C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
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
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	175
global __ptext17
__ptext17:	;psect for function _ledShow
psect	text17
	file	"C:\mcuproject\scm\zdt\D109_062B_SOP16\main.c"
	line	175
	global	__size_of_ledShow
	__size_of_ledShow	equ	__end_of_ledShow-_ledShow
	
_ledShow:	
;incstack = 0
	opt	stack 4
; Regs used in _ledShow: [wreg-fsr0h+status,2+status,0]
	line	178
	
i1l2115:	
;main.c: 178: if(++ledCntTime > 30)
	movlw	low(01Fh)
	incf	(_ledCntTime),f
	subwf	((_ledCntTime)),w
	skipc
	goto	u145_21
	goto	u145_20
u145_21:
	goto	i1l692
u145_20:
	line	180
	
i1l2117:	
;main.c: 179: {
;main.c: 180: ledCntTime = 0;
	clrf	(_ledCntTime)
	line	181
	
i1l2119:	
;main.c: 181: if(++ledCnt > 5)
	movlw	low(06h)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u146_21
	goto	u146_20
u146_21:
	goto	i1l2123
u146_20:
	line	183
	
i1l2121:	
;main.c: 182: {
;main.c: 183: ledCnt = 0;
	clrf	(_ledCnt)
	line	185
	
i1l2123:	
;main.c: 184: }
;main.c: 185: PORTB &= 0x7C;
	movlw	low(07Ch)
	andwf	(6),f	;volatile
	line	186
	
i1l2125:	
;main.c: 186: TRISB |= 0x83;
	movlw	low(083h)
	iorwf	(5),f	;volatile
	line	187
;main.c: 187: switch(ledCnt)
	goto	i1l2153
	line	190
	
i1l2127:	
;main.c: 190: if(ledStep > 0)
	movf	((_ledStep)),w
	btfsc	status,2
	goto	u147_21
	goto	u147_20
u147_21:
	goto	i1l692
u147_20:
	line	192
	
i1l2129:	
;main.c: 191: {
;main.c: 192: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	193
;main.c: 193: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	194
;main.c: 194: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	195
;main.c: 195: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	goto	i1l692
	line	199
	
i1l2131:	
;main.c: 199: if(ledStep > 1)
	movlw	low(02h)
	subwf	(_ledStep),w
	skipc
	goto	u148_21
	goto	u148_20
u148_21:
	goto	i1l692
u148_20:
	line	201
	
i1l2133:	
;main.c: 200: {
;main.c: 201: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	202
;main.c: 202: TRISB &= 0x7F;
	bcf	(5)+(7/8),(7)&7	;volatile
	line	203
;main.c: 203: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	204
;main.c: 204: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	goto	i1l692
	line	208
	
i1l2135:	
;main.c: 208: if(ledStep > 2)
	movlw	low(03h)
	subwf	(_ledStep),w
	skipc
	goto	u149_21
	goto	u149_20
u149_21:
	goto	i1l692
u149_20:
	line	210
	
i1l2137:	
;main.c: 209: {
;main.c: 210: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	211
;main.c: 211: TRISB &= 0x7F;
	bcf	(5)+(7/8),(7)&7	;volatile
	line	212
;main.c: 212: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	213
;main.c: 213: RB7 = 0;
	bcf	(55/8),(55)&7	;volatile
	goto	i1l692
	line	217
	
i1l2139:	
;main.c: 217: if(ledStep > 3)
	movlw	low(04h)
	subwf	(_ledStep),w
	skipc
	goto	u150_21
	goto	u150_20
u150_21:
	goto	i1l692
u150_20:
	line	219
	
i1l2141:	
;main.c: 218: {
;main.c: 219: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	220
;main.c: 220: TRISB &= 0x7F;
	bcf	(5)+(7/8),(7)&7	;volatile
	line	221
;main.c: 221: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	222
;main.c: 222: RB7 = 0;
	bcf	(55/8),(55)&7	;volatile
	goto	i1l692
	line	226
	
i1l2143:	
;main.c: 226: if(ledStep > 4)
	movlw	low(05h)
	subwf	(_ledStep),w
	skipc
	goto	u151_21
	goto	u151_20
u151_21:
	goto	i1l692
u151_20:
	line	228
	
i1l2145:	
;main.c: 227: {
;main.c: 228: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	229
;main.c: 229: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	230
;main.c: 230: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	231
;main.c: 231: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	goto	i1l692
	line	235
	
i1l2147:	
;main.c: 235: if(ledStep > 5)
	movlw	low(06h)
	subwf	(_ledStep),w
	skipc
	goto	u152_21
	goto	u152_20
u152_21:
	goto	i1l692
u152_20:
	line	237
	
i1l2149:	
;main.c: 236: {
;main.c: 237: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	238
;main.c: 238: TRISB &= 0x7F;
	bcf	(5)+(7/8),(7)&7	;volatile
	line	239
;main.c: 239: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	240
;main.c: 240: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	goto	i1l692
	line	187
	
i1l2153:	
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
goto i1l692
movlw high(i1S2951)
movwf pclath
	movlw low(i1S2951)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S2951:
	ljmp	i1l2147
	ljmp	i1l2127
	ljmp	i1l2131
	ljmp	i1l2135
	ljmp	i1l2139
	ljmp	i1l2143
psect	text17

	line	249
	
i1l692:	
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
