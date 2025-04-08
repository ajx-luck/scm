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
	FNCALL	_main,_ledCtr
	FNCALL	_main,_pwmCtr
	FNCALL	_main,_workCtr
	FNCALL	_ledCtr,___lbmod
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
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_keyCount
	global	_ledStep
	global	_workStep
	global	_fullCount
	global	_power_ad
	global	_result
	global	_lowBatTime
	global	_count500ms
	global	_preStep
	global	_motorMaxCount
	global	_motorCount
	global	_motorDuty
	global	_shanshuoTime
	global	_sleepTime
	global	_lowBatFlag
	global	_showBatTime
	global	_longPressFlag
	global	_chrgFullFlag
	global	_chrgFlag
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
; #config settings
	file	"D118_062B_SOP14.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_keyCount:
       ds      1

_ledStep:
       ds      1

_workStep:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_fullCount:
       ds      2

_power_ad:
       ds      2

_result:
       ds      2

_lowBatTime:
       ds      1

_count500ms:
       ds      1

_preStep:
       ds      1

_motorMaxCount:
       ds      1

_motorCount:
       ds      1

_motorDuty:
       ds      1

_shanshuoTime:
       ds      1

_sleepTime:
       ds      1

_lowBatFlag:
       ds      1

_showBatTime:
       ds      1

_longPressFlag:
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

_adresult:
       ds      2

	file	"D118_062B_SOP14.as"
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
	movlw	low((__pbssBANK0)+019h)
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
?_pwmCtr:	; 1 bytes @ 0x0
?_chrgCtr:	; 1 bytes @ 0x0
?_checkBatAD:	; 1 bytes @ 0x0
?_keyCtr:	; 1 bytes @ 0x0
?_workCtr:	; 1 bytes @ 0x0
?_ledCtr:	; 1 bytes @ 0x0
?_Sleep_Mode:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_keyRead:	; 1 bytes @ 0x0
	ds	2
??_Init_System:	; 1 bytes @ 0x2
??_AD_Init:	; 1 bytes @ 0x2
??_pwmCtr:	; 1 bytes @ 0x2
??_chrgCtr:	; 1 bytes @ 0x2
??_workCtr:	; 1 bytes @ 0x2
??_Sleep_Mode:	; 1 bytes @ 0x2
?_ADC_Sample:	; 1 bytes @ 0x2
??_keyRead:	; 1 bytes @ 0x2
?___lbmod:	; 1 bytes @ 0x2
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x2
	global	keyRead@keyStatus
keyRead@keyStatus:	; 1 bytes @ 0x2
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x2
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x2
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x2
	ds	1
??_keyCtr:	; 1 bytes @ 0x3
??_ADC_Sample:	; 1 bytes @ 0x3
??___lbmod:	; 1 bytes @ 0x3
	global	keyCtr@kclick
keyCtr@kclick:	; 1 bytes @ 0x3
	ds	1
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x4
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x5
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x6
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x6
	ds	1
??_checkBatAD:	; 1 bytes @ 0x7
??_ledCtr:	; 1 bytes @ 0x7
??___lwtoft:	; 1 bytes @ 0x7
	ds	1
??_main:	; 1 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??___ftpack:	; 1 bytes @ 0x0
	global	ADC_Sample@j
ADC_Sample@j:	; 1 bytes @ 0x0
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
;!    BSS         28
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      11
;!    BANK0            80     38      64
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_checkBatAD
;!    _main->_ledCtr
;!    _ledCtr->___lbmod
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
;! (0) _main                                                 0     0      0    5748
;!                            _AD_Init
;!                        _Init_System
;!                         _Sleep_Mode
;!                         _checkBatAD
;!                            _chrgCtr
;!                             _keyCtr
;!                             _ledCtr
;!                             _pwmCtr
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _pwmCtr                                               3     3      0       0
;!                                              2 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _ledCtr                                               1     1      0     212
;!                                              7 COMMON     1     1      0
;!                            ___lbmod
;! ---------------------------------------------------------------------------------
;! (2) ___lbmod                                              5     4      1     212
;!                                              2 COMMON     5     4      1
;! ---------------------------------------------------------------------------------
;! (1) _keyCtr                                               1     1      0      67
;!                                              3 COMMON     1     1      0
;!                            _keyRead
;! ---------------------------------------------------------------------------------
;! (2) _keyRead                                              1     1      0      22
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkBatAD                                           5     5      0    5469
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
;! (2) _ADC_Sample                                          18    17      1     582
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
;!   _chrgCtr
;!   _keyCtr
;!     _keyRead
;!   _ledCtr
;!     ___lbmod
;!   _pwmCtr
;!   _workCtr
;!
;! _Isr_Timer (ROOT)
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
;!BANK0               50     26      40       4       80.0%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      4B       7        0.0%
;!DATA                 0      0      4B       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 101 in file "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
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
;;		_chrgCtr
;;		_keyCtr
;;		_ledCtr
;;		_pwmCtr
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
	line	101
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
	line	101
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	103
	
l2255:	
;main.c: 103: Init_System();
	fcall	_Init_System
	line	104
;main.c: 104: AD_Init();
	fcall	_AD_Init
	line	105
	
l2257:	
;main.c: 105: firstTime = 200;
	movlw	low(0C8h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_firstTime)
	line	106
;main.c: 106: while (1)
	
l605:	
	line	108
# 108 "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
clrwdt ;# 
psect	maintext
	line	109
	
l2259:	
;main.c: 109: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1981
	goto	u1980
u1981:
	goto	l2263
u1980:
	line	111
	
l2261:	
;main.c: 110: {
;main.c: 111: pwmCtr();
	fcall	_pwmCtr
	line	113
	
l2263:	
;main.c: 112: }
;main.c: 113: if(!IntFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u1991
	goto	u1990
u1991:
	goto	l2267
u1990:
	goto	l605
	line	115
	
l2267:	
;main.c: 115: IntFlag = 0;
	clrf	(_IntFlag)
	line	116
	
l2269:	
;main.c: 116: chrgCtr();
	fcall	_chrgCtr
	line	117
	
l2271:	
;main.c: 117: checkBatAD();
	fcall	_checkBatAD
	line	118
	
l2273:	
;main.c: 118: if(chrgFlag == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2001
	goto	u2000
u2001:
	goto	l609
u2000:
	line	120
	
l2275:	
;main.c: 119: {
;main.c: 120: keyCtr();
	fcall	_keyCtr
	line	121
	
l609:	
	line	122
;main.c: 121: }
;main.c: 122: workCtr();
	fcall	_workCtr
	line	123
;main.c: 123: ledCtr();
	fcall	_ledCtr
	line	124
	
l2277:	
;main.c: 124: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && shanshuoTime == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2011
	goto	u2010
u2011:
	goto	l2293
u2010:
	
l2279:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u2021
	goto	u2020
u2021:
	goto	l2293
u2020:
	
l2281:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u2031
	goto	u2030
u2031:
	goto	l2293
u2030:
	
l2283:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u2041
	goto	u2040
u2041:
	goto	l2293
u2040:
	
l2285:	
	movf	((_shanshuoTime)),w
	btfss	status,2
	goto	u2051
	goto	u2050
u2051:
	goto	l2293
u2050:
	line	126
	
l2287:	
;main.c: 125: {
;main.c: 126: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u2061
	goto	u2060
u2061:
	goto	l605
u2060:
	line	128
	
l2289:	
;main.c: 127: {
;main.c: 128: sleepTime = 0;
	clrf	(_sleepTime)
	line	129
	
l2291:	
;main.c: 129: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l605
	line	134
	
l2293:	
;main.c: 132: else
;main.c: 133: {
;main.c: 134: sleepTime = 0;
	clrf	(_sleepTime)
	goto	l605
	global	start
	ljmp	start
	opt stack 0
	line	137
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 361 in file "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	361
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
	line	361
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 6
; Regs used in _workCtr: [wreg+status,2+status,0]
	line	364
	
l2009:	
;main.c: 364: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u1551
	goto	u1550
u1551:
	goto	l2013
u1550:
	line	366
	
l2011:	
;main.c: 365: {
;main.c: 366: PORTA = 0x0C;
	movlw	low(0Ch)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	367
;main.c: 367: motorMaxCount = 10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_motorMaxCount)
	line	368
;main.c: 368: motorDuty = 8;
	movlw	low(08h)
	movwf	(_motorDuty)
	line	369
;main.c: 369: }
	goto	l695
	line	370
	
l2013:	
;main.c: 370: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u1561
	goto	u1560
u1561:
	goto	l2017
u1560:
	line	372
	
l2015:	
;main.c: 371: {
;main.c: 372: PORTA = 0x0A;
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	373
;main.c: 373: motorMaxCount = 10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_motorMaxCount)
	line	374
;main.c: 374: motorDuty = 9;
	movlw	low(09h)
	movwf	(_motorDuty)
	line	375
;main.c: 375: }
	goto	l695
	line	376
	
l2017:	
;main.c: 376: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u1571
	goto	u1570
u1571:
	goto	l2021
u1570:
	line	378
	
l2019:	
;main.c: 377: {
;main.c: 378: PORTA = 0x06;
	movlw	low(06h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	379
;main.c: 379: motorMaxCount = 10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_motorMaxCount)
	line	380
;main.c: 380: motorDuty = 10;
	movlw	low(0Ah)
	movwf	(_motorDuty)
	line	381
;main.c: 381: }
	goto	l695
	line	384
	
l2021:	
;main.c: 382: else
;main.c: 383: {
;main.c: 384: PORTB = 0x00;
	clrf	(6)	;volatile
	line	386
	
l695:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmCtr

;; *************** function _pwmCtr *****************
;; Defined at:
;;		line 345 in file "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
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
;;		On exit  : 0/0
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
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	345
global __ptext2
__ptext2:	;psect for function _pwmCtr
psect	text2
	file	"C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
	line	345
	global	__size_of_pwmCtr
	__size_of_pwmCtr	equ	__end_of_pwmCtr-_pwmCtr
	
_pwmCtr:	
;incstack = 0
	opt	stack 6
; Regs used in _pwmCtr: [wreg+status,2+status,0]
	line	347
	
l1913:	
;main.c: 347: if(motorDuty > motorCount)
	bcf	status, 5	;RP0=0, select bank0
	movf	(_motorDuty),w
	subwf	(_motorCount),w
	skipnc
	goto	u1361
	goto	u1360
u1361:
	goto	l683
u1360:
	line	349
	
l1915:	
;main.c: 348: {
;main.c: 349: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	350
;main.c: 350: }
	goto	l1917
	line	351
	
l683:	
	line	353
;main.c: 351: else
;main.c: 352: {
;main.c: 353: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	355
	
l1917:	
;main.c: 354: }
;main.c: 355: if(++motorCount > (motorMaxCount - 1))
	incf	(_motorCount),f
	movf	(_motorMaxCount),w
	addlw	low(-1)
	movwf	(??_pwmCtr+0)+0
	movlw	high(-1)
	skipnc
	movlw	(high(-1)+1)&0ffh
	movwf	((??_pwmCtr+0)+0)+1
	movf	1+(??_pwmCtr+0)+0,w
	xorlw	80h
	movwf	(??_pwmCtr+2)+0
	movlw	80h
	subwf	(??_pwmCtr+2)+0,w
	skipz
	goto	u1375
	movf	((_motorCount)),w
	subwf	0+(??_pwmCtr+0)+0,w
u1375:

	skipnc
	goto	u1371
	goto	u1370
u1371:
	goto	l686
u1370:
	line	357
	
l1919:	
;main.c: 356: {
;main.c: 357: motorCount = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_motorCount)
	line	359
	
l686:	
	return
	opt stack 0
GLOBAL	__end_of_pwmCtr
	__end_of_pwmCtr:
	signat	_pwmCtr,89
	global	_ledCtr

;; *************** function _ledCtr *****************
;; Defined at:
;;		line 141 in file "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
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
;;		___lbmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	141
global __ptext3
__ptext3:	;psect for function _ledCtr
psect	text3
	file	"C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
	line	141
	global	__size_of_ledCtr
	__size_of_ledCtr	equ	__end_of_ledCtr-_ledCtr
	
_ledCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _ledCtr: [wreg+status,2+status,0+pclath+cstack]
	line	143
	
l2023:	
;main.c: 143: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u1581
	goto	u1580
u1581:
	goto	l2029
u1580:
	line	145
	
l2025:	
;main.c: 144: {
;main.c: 145: firstTime--;
	decf	(_firstTime),f
	line	146
	
l2027:	
;main.c: 146: PORTA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	147
;main.c: 147: }
	goto	l638
	line	148
	
l2029:	
;main.c: 148: else if(shanshuoTime > 0)
	movf	((_shanshuoTime)),w
	btfsc	status,2
	goto	u1591
	goto	u1590
u1591:
	goto	l2039
u1590:
	line	150
	
l2031:	
;main.c: 149: {
;main.c: 150: shanshuoTime--;
	decf	(_shanshuoTime),f
	line	151
	
l2033:	
;main.c: 151: if(shanshuoTime % 50 < 25)
	movlw	low(032h)
	movwf	(___lbmod@divisor)
	movf	(_shanshuoTime),w
	fcall	___lbmod
	movwf	(??_ledCtr+0)+0
	movlw	019h
	subwf	(??_ledCtr+0)+0,w
	skipnc
	goto	u1601
	goto	u1600
u1601:
	goto	l2027
u1600:
	line	153
	
l2035:	
;main.c: 152: {
;main.c: 153: PORTA = 0x0E;
	movlw	low(0Eh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	154
;main.c: 154: }
	goto	l638
	line	160
	
l2039:	
;main.c: 160: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1611
	goto	u1610
u1611:
	goto	l2043
u1610:
	line	162
	
l2041:	
;main.c: 161: {
;main.c: 162: preStep = workStep;
	movf	(_workStep),w
	movwf	(_preStep)
	line	163
;main.c: 163: }
	goto	l638
	line	164
	
l2043:	
;main.c: 164: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u1621
	goto	u1620
u1621:
	goto	l2035
u1620:
	line	166
	
l2045:	
;main.c: 165: {
;main.c: 166: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u1631
	goto	u1630
u1631:
	goto	l2049
u1630:
	goto	l2027
	line	174
	
l2049:	
;main.c: 171: else
;main.c: 172: {
;main.c: 174: if(++count500ms > 50)
	movlw	low(033h)
	incf	(_count500ms),f
	subwf	((_count500ms)),w
	skipc
	goto	u1641
	goto	u1640
u1641:
	goto	l2057
u1640:
	line	176
	
l2051:	
;main.c: 175: {
;main.c: 176: count500ms = 0;
	clrf	(_count500ms)
	line	177
	
l2053:	
;main.c: 177: if(++ledStep > 3)
	movlw	low(04h)
	incf	(_ledStep),f
	subwf	((_ledStep)),w
	skipc
	goto	u1651
	goto	u1650
u1651:
	goto	l2057
u1650:
	line	179
	
l2055:	
;main.c: 178: {
;main.c: 179: ledStep = 1;
	clrf	(_ledStep)
	incf	(_ledStep),f
	line	182
	
l2057:	
;main.c: 180: }
;main.c: 181: }
;main.c: 182: if(ledStep == 3)
		movlw	3
	xorwf	((_ledStep)),w
	btfss	status,2
	goto	u1661
	goto	u1660
u1661:
	goto	l2061
u1660:
	goto	l2027
	line	186
	
l2061:	
;main.c: 186: else if(ledStep == 2)
		movlw	2
	xorwf	((_ledStep)),w
	btfss	status,2
	goto	u1671
	goto	u1670
u1671:
	goto	l2065
u1670:
	line	188
	
l2063:	
;main.c: 187: {
;main.c: 188: PORTA = 0x08;
	movlw	low(08h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	189
;main.c: 189: }
	goto	l638
	line	190
	
l2065:	
;main.c: 190: else if(ledStep == 1)
		decf	((_ledStep)),w
	btfss	status,2
	goto	u1681
	goto	u1680
u1681:
	goto	l2069
u1680:
	line	192
	
l2067:	
;main.c: 191: {
;main.c: 192: PORTA = 0x0C;
	movlw	low(0Ch)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	193
;main.c: 193: }
	goto	l638
	line	194
	
l2069:	
;main.c: 194: else if(ledStep == 0)
	movf	((_ledStep)),w
	btfss	status,2
	goto	u1691
	goto	u1690
u1691:
	goto	l631
u1690:
	goto	l2035
	line	198
	
l631:	
	line	205
	
l638:	
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
;;  divisor         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    4[COMMON] unsigned char 
;;  rem             1    6[COMMON] unsigned char 
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
;;      Temps:          1       0       0
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
	opt	stack 5
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	movwf	(___lbmod@dividend)
	line	9
	
l1891:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l1893:	
	clrf	(___lbmod@rem)
	line	12
	
l1895:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u1335:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u1335
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l1897:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l1899:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u1341
	goto	u1340
u1341:
	goto	l1903
u1340:
	line	15
	
l1901:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l1903:	
	decfsz	(___lbmod@counter),f
	goto	u1351
	goto	u1350
u1351:
	goto	l1895
u1350:
	line	17
	
l1905:	
	movf	(___lbmod@rem),w
	line	18
	
l1006:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 297 in file "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
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
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
	line	297
global __ptext5
__ptext5:	;psect for function _keyCtr
psect	text5
	file	"C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
	line	297
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	299
	
l1975:	
;main.c: 299: char kclick = keyRead(0x04 & (~PORTB));
	comf	(6),w	;volatile
	andlw	04h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	300
	
l1977:	
;main.c: 300: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u1471
	goto	u1470
u1471:
	goto	l1993
u1470:
	line	302
	
l1979:	
;main.c: 301: {
;main.c: 302: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1481
	goto	u1480
u1481:
	goto	l1985
u1480:
	line	304
	
l1981:	
;main.c: 303: {
;main.c: 304: if(++workStep > 3)
	movlw	low(04h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u1491
	goto	u1490
u1491:
	goto	l680
u1490:
	line	306
	
l1983:	
;main.c: 305: {
;main.c: 306: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l680
	line	309
	
l1985:	
;main.c: 309: else if(showBatTime > 0)
	movf	((_showBatTime)),w
	btfsc	status,2
	goto	u1501
	goto	u1500
u1501:
	goto	l1989
u1500:
	line	311
	
l1987:	
;main.c: 310: {
;main.c: 311: showBatTime = 0;
	clrf	(_showBatTime)
	line	312
;main.c: 312: }
	goto	l680
	line	315
	
l1989:	
;main.c: 313: else
;main.c: 314: {
;main.c: 315: showBatTime = 200;
	movlw	low(0C8h)
	movwf	(_showBatTime)
	line	316
	
l1991:	
;main.c: 316: count1s = 0;
	clrf	(_count1s)
	goto	l680
	line	319
	
l1993:	
;main.c: 319: else if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u1511
	goto	u1510
u1511:
	goto	l680
u1510:
	line	321
	
l1995:	
;main.c: 320: {
;main.c: 321: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1521
	goto	u1520
u1521:
	goto	l1999
u1520:
	line	323
	
l1997:	
;main.c: 322: {
;main.c: 323: workStep = 0;
	clrf	(_workStep)
	line	324
;main.c: 324: }
	goto	l680
	line	325
	
l1999:	
;main.c: 325: else if(lowBatFlag)
	movf	((_lowBatFlag)),w
	btfsc	status,2
	goto	u1531
	goto	u1530
u1531:
	goto	l2003
u1530:
	line	327
	
l2001:	
;main.c: 326: {
;main.c: 327: shanshuoTime = 250;
	movlw	low(0FAh)
	movwf	(_shanshuoTime)
	line	328
;main.c: 328: }
	goto	l680
	line	331
	
l2003:	
;main.c: 329: else
;main.c: 330: {
;main.c: 331: if(preStep > 0)
	movf	((_preStep)),w
	btfsc	status,2
	goto	u1541
	goto	u1540
u1541:
	goto	l678
u1540:
	line	333
	
l2005:	
;main.c: 332: {
;main.c: 333: workStep = preStep;
	movf	(_preStep),w
	movwf	(_workStep)
	line	334
;main.c: 334: }
	goto	l1987
	line	335
	
l678:	
	line	337
;main.c: 335: else
;main.c: 336: {
;main.c: 337: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l1987
	line	342
	
l680:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 264 in file "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
;; Parameters:    Size  Location     Type
;;  keyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyStatus       1    2[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	264
global __ptext6
__ptext6:	;psect for function _keyRead
psect	text6
	file	"C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
	line	264
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	266
	
l1699:	
;main.c: 266: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1011
	goto	u1010
u1011:
	goto	l1715
u1010:
	line	268
	
l1701:	
;main.c: 267: {
;main.c: 268: keyCount++;
	incf	(_keyCount),f
	line	269
	
l1703:	
;main.c: 269: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1021
	goto	u1020
u1021:
	goto	l1719
u1020:
	line	271
	
l1705:	
;main.c: 270: {
;main.c: 271: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	line	272
	
l1707:	
;main.c: 272: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1031
	goto	u1030
u1031:
	goto	l1719
u1030:
	line	274
	
l1709:	
;main.c: 273: {
;main.c: 274: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	275
	
l1711:	
;main.c: 275: return 2;
	movlw	low(02h)
	goto	l659
	line	281
	
l1715:	
;main.c: 279: else
;main.c: 280: {
;main.c: 281: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u1041
	goto	u1040
u1041:
	goto	l1725
u1040:
	line	283
	
l1717:	
;main.c: 282: {
;main.c: 283: keyCount = 0;
	clrf	(_keyCount)
	line	284
;main.c: 284: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	285
	
l1719:	
;main.c: 285: return 0;
	movlw	low(0)
	goto	l659
	line	287
	
l1725:	
;main.c: 287: else if(keyCount >= 6)
	movlw	low(06h)
	subwf	(_keyCount),w
	skipc
	goto	u1051
	goto	u1050
u1051:
	goto	l1733
u1050:
	line	289
	
l1727:	
;main.c: 288: {
;main.c: 289: keyCount = 0;
	clrf	(_keyCount)
	line	290
	
l1729:	
;main.c: 290: return 1;
	movlw	low(01h)
	goto	l659
	line	292
	
l1733:	
;main.c: 291: }
;main.c: 292: keyCount = 0;
	clrf	(_keyCount)
	goto	l1719
	line	295
	
l659:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 209 in file "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	209
global __ptext7
__ptext7:	;psect for function _chrgCtr
psect	text7
	file	"C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
	line	209
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 6
; Regs used in _chrgCtr: [wreg+status,2+status,0]
	line	211
	
l1921:	
;main.c: 211: if(PORTB & 0x20)
	btfss	(6),(5)&7	;volatile
	goto	u1381
	goto	u1380
u1381:
	goto	l1945
u1380:
	line	213
	
l1923:	
;main.c: 212: {
;main.c: 213: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	214
	
l1925:	
;main.c: 214: workStep = 0;
	clrf	(_workStep)
	line	215
;main.c: 215: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	216
	
l1927:	
;main.c: 216: if(PORTB & 0x10)
	btfss	(6),(4)&7	;volatile
	goto	u1391
	goto	u1390
u1391:
	goto	l1935
u1390:
	line	218
	
l1929:	
;main.c: 217: {
;main.c: 218: if(++fullCount > 200)
	incf	(_fullCount),f
	skipnz
	incf	(_fullCount+1),f
	movlw	0
	subwf	((_fullCount+1)),w
	movlw	0C9h
	skipnz
	subwf	((_fullCount)),w
	skipc
	goto	u1401
	goto	u1400
u1401:
	goto	l653
u1400:
	line	220
	
l1931:	
;main.c: 219: {
;main.c: 220: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	221
	
l1933:	
;main.c: 221: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l653
	line	224
	
l1935:	
;main.c: 224: else if(power_ad > 4180)
	movlw	010h
	subwf	(_power_ad+1),w	;volatile
	movlw	055h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipc
	goto	u1411
	goto	u1410
u1411:
	goto	l1943
u1410:
	line	226
	
l1937:	
;main.c: 225: {
;main.c: 226: if(++fullCount > 200)
	incf	(_fullCount),f
	skipnz
	incf	(_fullCount+1),f
	movlw	0
	subwf	((_fullCount+1)),w
	movlw	0C9h
	skipnz
	subwf	((_fullCount)),w
	skipc
	goto	u1421
	goto	u1420
u1421:
	goto	l644
u1420:
	goto	l1931
	line	234
	
l1943:	
;main.c: 232: else
;main.c: 233: {
;main.c: 234: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	goto	l653
	line	235
	
l644:	
	line	236
;main.c: 235: }
;main.c: 236: }
	goto	l653
	line	239
	
l1945:	
;main.c: 237: else
;main.c: 238: {
;main.c: 239: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	240
;main.c: 240: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	241
;main.c: 241: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	242
	
l1947:	
;main.c: 242: if(power_ad < 2800)
	movlw	0Ah
	subwf	(_power_ad+1),w	;volatile
	movlw	0F0h
	skipnz
	subwf	(_power_ad),w	;volatile
	skipnc
	goto	u1431
	goto	u1430
u1431:
	goto	l1961
u1430:
	line	244
	
l1949:	
;main.c: 243: {
;main.c: 244: if(++lowBatTime >= 200)
	movlw	low(0C8h)
	incf	(_lowBatTime),f
	subwf	((_lowBatTime)),w
	skipc
	goto	u1441
	goto	u1440
u1441:
	goto	l653
u1440:
	line	246
	
l1951:	
;main.c: 245: {
;main.c: 246: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	247
	
l1953:	
;main.c: 247: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1451
	goto	u1450
u1451:
	goto	l653
u1450:
	line	249
	
l1955:	
;main.c: 248: {
;main.c: 249: workStep = 0;
	clrf	(_workStep)
	line	250
	
l1957:	
;main.c: 250: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	251
	
l1959:	
;main.c: 251: shanshuoTime = 250;
	movlw	low(0FAh)
	movwf	(_shanshuoTime)
	goto	l653
	line	257
	
l1961:	
;main.c: 255: else
;main.c: 256: {
;main.c: 257: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	260
	
l653:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 389 in file "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
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
;;		On exit  : 0/0
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
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	389
global __ptext8
__ptext8:	;psect for function _checkBatAD
psect	text8
	file	"C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
	line	389
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 4
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	391
	
l2243:	
;main.c: 391: test_adc = ADC_Sample(31, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(01Fh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	392
	
l2245:	
;main.c: 392: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u1971
	goto	u1970
u1971:
	goto	l2251
u1970:
	line	396
	
l2247:	
;main.c: 393: {
;main.c: 394: volatile unsigned long power_temp;
;main.c: 396: power_temp = (unsigned long)(((4096UL*1.2*1000))/adresult);
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

	line	397
	
l2249:	
;main.c: 397: power_ad = (unsigned int)(power_temp);
	movf	(checkBatAD@power_temp+1),w	;volatile
	movwf	(_power_ad+1)	;volatile
	movf	(checkBatAD@power_temp),w	;volatile
	movwf	(_power_ad)	;volatile
	line	398
;main.c: 398: }
	goto	l700
	line	401
	
l2251:	
;main.c: 399: else
;main.c: 400: {
;main.c: 401: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	402
;main.c: 402: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	403
	
l2253:	
;main.c: 403: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkBatAD+0)+0),f
	u2077:
decfsz	(??_checkBatAD+0)+0,f
	goto	u2077
opt asmopt_pop

	line	406
	
l700:	
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
psect	text9,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwtoft.c"
	line	28
global __ptext9
__ptext9:	;psect for function ___lwtoft
psect	text9
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l2239:	
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
	
l1089:	
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
psect	text10,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\fttol.c"
	line	44
global __ptext10
__ptext10:	;psect for function ___fttol
psect	text10
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l1851:	
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
	goto	u1251
	goto	u1250
u1251:
	goto	l1855
u1250:
	line	50
	
l1853:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l980
	line	51
	
l1855:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u1265:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u1260:
	addlw	-1
	skipz
	goto	u1265
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l1857:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l1859:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l1861:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l1863:	
	movlw	08Eh
	subwf	(___fttol@exp1),f
	line	56
	
l1865:	
	btfss	(___fttol@exp1),7
	goto	u1271
	goto	u1270
u1271:
	goto	l1875
u1270:
	line	57
	
l1867:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u1281
	goto	u1280
u1281:
	goto	l1871
u1280:
	goto	l1853
	line	60
	
l1871:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l1873:	
	incfsz	(___fttol@exp1),f
	goto	u1291
	goto	u1290
u1291:
	goto	l1871
u1290:
	goto	l1883
	line	63
	
l1875:	
	movlw	low(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u1301
	goto	u1300
u1301:
	goto	l1881
u1300:
	goto	l1853
	line	66
	
l1879:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	65
	
l1881:	
	movf	((___fttol@exp1)),w
	btfss	status,2
	goto	u1311
	goto	u1310
u1311:
	goto	l1879
u1310:
	line	70
	
l1883:	
	movf	((___fttol@sign1)),w
	btfsc	status,2
	goto	u1321
	goto	u1320
u1321:
	goto	l1887
u1320:
	line	71
	
l1885:	
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
	
l1887:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l980:	
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
psect	text11,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\ftdiv.c"
	line	56
global __ptext11
__ptext11:	;psect for function ___ftdiv
psect	text11
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\ftdiv.c"
	line	56
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l2199:	
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
	goto	u1931
	goto	u1930
u1931:
	goto	l2203
u1930:
	line	64
	
l2201:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l944
	line	65
	
l2203:	
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
	goto	u1941
	goto	u1940
u1941:
	goto	l945
u1940:
	line	66
	
l2205:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l944
	
l945:	
	line	67
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	68
	
l2207:	
	movlw	low(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	69
	
l2209:	
	movf	0+(___ftdiv@f1)+02h,w
	movwf	(___ftdiv@sign)
	line	70
	
l2211:	
	movf	0+(___ftdiv@f2)+02h,w
	xorwf	(___ftdiv@sign),f
	line	71
	
l2213:	
	movlw	low(080h)
	andwf	(___ftdiv@sign),f
	line	72
	
l2215:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	73
	
l2217:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	74
	
l2219:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	75
	
l2221:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	76
	
l2223:	
	movlw	low(018h)
	movwf	(___ftdiv@cntr)
	line	78
	
l2225:	
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	79
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u1955
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u1955
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u1955:
	skipc
	goto	u1951
	goto	u1950
u1951:
	goto	l2231
u1950:
	line	80
	
l2227:	
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
	
l2229:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	83
	
l2231:	
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	84
	
l2233:	
	decfsz	(___ftdiv@cntr),f
	goto	u1961
	goto	u1960
u1961:
	goto	l2225
u1960:
	line	85
	
l2235:	
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
	
l944:	
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
psect	text12,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\float.c"
	line	62
global __ptext12
__ptext12:	;psect for function ___ftpack
psect	text12
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l2175:	
	movf	((___ftpack@exp)),w
	btfsc	status,2
	goto	u1851
	goto	u1850
u1851:
	goto	l891
u1850:
	
l2177:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1861
	goto	u1860
u1861:
	goto	l2181
u1860:
	
l891:	
	line	65
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l892
	line	67
	
l2179:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l2181:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1871
	goto	u1870
u1871:
	goto	l2179
u1870:
	goto	l2185
	line	71
	
l2183:	
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
	
l2185:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1881
	goto	u1880
u1881:
	goto	l2183
u1880:
	goto	l2189
	line	76
	
l2187:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l2189:	
	btfsc	(___ftpack@arg+1),(15)&7
	goto	u1891
	goto	u1890
u1891:
	goto	l903
u1890:
	
l2191:	
	movlw	low(02h)
	subwf	(___ftpack@exp),w
	skipnc
	goto	u1901
	goto	u1900
u1901:
	goto	l2187
u1900:
	
l903:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1911
	goto	u1910
u1911:
	goto	l904
u1910:
	line	80
	
l2193:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l904:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l2195:	
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
	goto	u1921
	goto	u1920
u1921:
	goto	l905
u1920:
	line	84
	
l2197:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l905:	
	line	85
	line	86
	
l892:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 591 in file "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
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
;;		_checkBatAD
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
	line	591
global __ptext13
__ptext13:	;psect for function _ADC_Sample
psect	text13
	file	"C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
	line	591
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 5
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	593
	
l1739:	
;main.c: 593: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	594
	
l1741:	
;main.c: 594: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	595
;main.c: 595: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	597
	
l1743:	
;main.c: 597: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u1061
	goto	u1060
u1061:
	goto	l1749
u1060:
	
l1745:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u1071
	goto	u1070
u1071:
	goto	l1749
u1070:
	line	600
	
l1747:	
;main.c: 598: {
;main.c: 600: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	601
;main.c: 601: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_ADC_Sample+0)+0),f
	u2087:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u2087
opt asmopt_pop

	line	602
;main.c: 602: }
	goto	l1751
	line	604
	
l1749:	
;main.c: 603: else
;main.c: 604: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	606
	
l1751:	
;main.c: 606: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u1081
	goto	u1080
u1081:
	goto	l1757
u1080:
	line	608
	
l1753:	
;main.c: 607: {
;main.c: 608: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	609
	
l1755:	
;main.c: 609: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	611
	
l1757:	
	line	612
	
l1759:	
;main.c: 612: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	614
	
l1765:	
;main.c: 613: {
;main.c: 614: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u1095:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u1095
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	615
# 615 "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
nop ;# 
	line	616
# 616 "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
nop ;# 
	line	617
# 617 "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
nop ;# 
	line	618
# 618 "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
nop ;# 
psect	text13
	line	619
	
l1767:	
;main.c: 619: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	621
	
l1769:	
;main.c: 621: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	622
;main.c: 622: while (GODONE)
	goto	l720
	
l721:	
	line	624
;main.c: 623: {
;main.c: 624: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	626
;main.c: 626: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u1101
	goto	u1100
u1101:
	goto	l720
u1100:
	line	627
	
l1771:	
;main.c: 627: return 0;
	movlw	low(0)
	goto	l723
	line	628
	
l720:	
	line	622
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u1111
	goto	u1110
u1111:
	goto	l721
u1110:
	line	630
	
l1775:	
;main.c: 628: }
;main.c: 630: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l1777:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	632
	
l1779:	
;main.c: 632: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u1121
	goto	u1120
u1121:
	goto	l1783
u1120:
	line	634
	
l1781:	
;main.c: 633: {
;main.c: 634: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	635
;main.c: 635: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	636
;main.c: 636: }
	goto	l726
	line	637
	
l1783:	
;main.c: 637: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u1135
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u1135:
	skipnc
	goto	u1131
	goto	u1130
u1131:
	goto	l1787
u1130:
	line	638
	
l1785:	
;main.c: 638: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l726
	line	639
	
l1787:	
;main.c: 639: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u1145
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u1145:
	skipnc
	goto	u1141
	goto	u1140
u1141:
	goto	l726
u1140:
	line	640
	
l1789:	
;main.c: 640: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	642
	
l726:	
;main.c: 642: adsum += ad_temp;
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
	goto	u1151
	addwf	(ADC_Sample@adsum+1),f	;volatile
u1151:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1152
	addwf	(ADC_Sample@adsum+2),f	;volatile
u1152:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1153
	addwf	(ADC_Sample@adsum+3),f	;volatile
u1153:

	line	612
	
l1791:	
	incf	(ADC_Sample@i),f
	
l1793:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u1161
	goto	u1160
u1161:
	goto	l1765
u1160:
	line	644
	
l1795:	
;main.c: 643: }
;main.c: 644: adsum -= admax;
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
	goto	u1175
	goto	u1176
u1175:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u1176:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1177
	goto	u1178
u1177:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u1178:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1179
	goto	u1170
u1179:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u1170:

	line	645
;main.c: 645: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u1185
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u1185
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u1185
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u1185:
	skipc
	goto	u1181
	goto	u1180
u1181:
	goto	l730
u1180:
	line	646
	
l1797:	
;main.c: 646: adsum -= admin;
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
	goto	u1195
	goto	u1196
u1195:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u1196:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1197
	goto	u1198
u1197:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u1198:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1199
	goto	u1190
u1199:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u1190:

	goto	l1799
	line	647
	
l730:	
	line	648
;main.c: 647: else
;main.c: 648: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	650
	
l1799:	
;main.c: 650: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u1205:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u1200:
	addlw	-1
	skipz
	goto	u1205
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	652
	
l1801:	
;main.c: 652: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	653
	
l1803:	
;main.c: 653: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	654
	
l1805:	
;main.c: 654: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	655
	
l1807:	
;main.c: 655: return 0xA5;
	movlw	low(0A5h)
	line	657
	
l723:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 516 in file "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
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
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	516
global __ptext14
__ptext14:	;psect for function _Sleep_Mode
psect	text14
	file	"C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
	line	516
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 5
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	518
	
l2075:	
;main.c: 518: INTCON = 0;
	clrf	(11)	;volatile
	line	520
;main.c: 520: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	522
;main.c: 522: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	523
	
l2077:	
;main.c: 523: TRISB = 0x34;
	movlw	low(034h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	525
	
l2079:	
;main.c: 525: PORTA = 0X0E;
	movlw	low(0Eh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	526
;main.c: 526: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	528
;main.c: 528: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	529
;main.c: 529: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	531
;main.c: 531: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	533
	
l2081:	
;main.c: 533: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	535
	
l2083:	
;main.c: 535: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	536
;main.c: 536: IOCB = 0x24;
	movlw	low(024h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	538
	
l2085:	
;main.c: 538: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	539
	
l2087:	
;main.c: 539: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	540
	
l2089:	
;main.c: 540: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	541
	
l2091:	
;main.c: 541: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	543
	
l2093:	
;main.c: 543: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	544
	
l2095:	
;main.c: 544: PIR1 = 0;
	clrf	(13)	;volatile
	line	545
	
l2097:	
;main.c: 545: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	547
	
l2099:	
;main.c: 547: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	548
	
l2101:	
;main.c: 548: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	549
	
l2103:	
;main.c: 549: PORTB;
	movf	(6),w	;volatile
	line	550
	
l2105:	
;main.c: 550: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	551
# 551 "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
clrwdt ;# 
	line	553
# 553 "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
sleep ;# 
	line	555
# 555 "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
nop ;# 
	line	556
# 556 "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
clrwdt ;# 
	line	557
# 557 "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
nop ;# 
	line	558
# 558 "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
nop ;# 
	line	559
# 559 "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
nop ;# 
	line	560
# 560 "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
nop ;# 
	line	561
# 561 "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
nop ;# 
psect	text14
	line	562
	
l2107:	
;main.c: 562: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u1701
	goto	u1700
u1701:
	goto	l709
u1700:
	
l2109:	
	bcf	(107/8),(107)&7	;volatile
	
l709:	
	line	563
;main.c: 563: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u1711
	goto	u1710
u1711:
	goto	l710
u1710:
	
l2111:	
	bcf	(88/8),(88)&7	;volatile
	
l710:	
	line	564
;main.c: 564: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u1721
	goto	u1720
u1721:
	goto	l2115
u1720:
	
l2113:	
	bcf	(105/8),(105)&7	;volatile
	line	565
	
l2115:	
;main.c: 565: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	566
;main.c: 566: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	567
	
l2117:	
;main.c: 567: Init_System();
	fcall	_Init_System
	line	568
	
l2119:	
;main.c: 568: AD_Init();
	fcall	_AD_Init
	line	569
	
l712:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 417 in file "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
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
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	417
global __ptext15
__ptext15:	;psect for function _Init_System
psect	text15
	file	"C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
	line	417
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_System: [wreg+status,2]
	line	419
	
l1667:	
# 419 "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
nop ;# 
	line	420
# 420 "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
clrwdt ;# 
psect	text15
	line	421
	
l1669:	
;main.c: 421: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	422
# 422 "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
clrwdt ;# 
psect	text15
	line	423
	
l1671:	
;main.c: 423: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	425
	
l1673:	
;main.c: 425: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	426
	
l1675:	
;main.c: 426: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	427
	
l1677:	
;main.c: 427: WPUB = 0x14;
	movlw	low(014h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	429
;main.c: 429: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	430
	
l1679:	
;main.c: 430: TRISB = 0x34;
	movlw	low(034h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	432
	
l1681:	
;main.c: 432: PORTA = 0X0E;
	movlw	low(0Eh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	433
;main.c: 433: PORTB = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	437
	
l1683:	
;main.c: 437: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	438
	
l1685:	
;main.c: 438: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	439
	
l1687:	
;main.c: 439: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	441
	
l1689:	
;main.c: 441: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	442
	
l1691:	
;main.c: 442: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	443
	
l703:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 454 in file "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
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
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	454
global __ptext16
__ptext16:	;psect for function _AD_Init
psect	text16
	file	"C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
	line	454
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 5
; Regs used in _AD_Init: [wreg+status,2]
	line	487
	
l1693:	
;main.c: 487: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	504
	
l1695:	
;main.c: 504: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	505
	
l1697:	
;main.c: 505: ANSEL0 = 0X00;
	clrf	(147)^080h	;volatile
	line	506
	
l706:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 78 in file "C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
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
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	78
global __ptext17
__ptext17:	;psect for function _Isr_Timer
psect	text17
	file	"C:\mcuproject\scm\zdt\D118_062B_SOP14\main.c"
	line	78
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
psect	text17
	line	80
	
i1l2121:	
;main.c: 80: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u173_21
	goto	u173_20
u173_21:
	goto	i1l600
u173_20:
	line	82
	
i1l2123:	
;main.c: 81: {
;main.c: 82: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	83
	
i1l2125:	
;main.c: 83: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u174_21
	goto	u174_20
u174_21:
	goto	i1l600
u174_20:
	line	85
	
i1l2127:	
;main.c: 84: {
;main.c: 85: intCount = 0;
	clrf	(_intCount)
	line	86
	
i1l2129:	
;main.c: 86: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	87
	
i1l2131:	
;main.c: 87: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u175_21
	goto	u175_20
u175_21:
	goto	i1l600
u175_20:
	line	89
	
i1l2133:	
;main.c: 88: {
;main.c: 89: count1s = 0;
	clrf	(_count1s)
	line	95
	
i1l600:	
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
