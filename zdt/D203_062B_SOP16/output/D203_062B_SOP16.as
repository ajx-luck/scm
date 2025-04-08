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
	FNCALL	_main,_workCtr
	FNCALL	_workCtr,_pwmInit
	FNCALL	_workCtr,_pwmStop
	FNCALL	_keyCtr,_keyRead
	FNCALL	_checkBatAD,_ADC_Sample
	FNCALL	_Sleep_Mode,_AD_Init
	FNCALL	_Sleep_Mode,_Init_System
	FNROOT	_main
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_adresult
	global	_cDuty
	global	_workStep
	global	_chrgFlag
	global	_count900s
	global	_count8s
	global	_count50s
	global	_batADValue
	global	_power_ad
	global	_result
	global	_count2
	global	_sleepTime
	global	_lowBatFlag
	global	_prePwStep
	global	_pwStep
	global	_maxDuty
	global	_keyCount
	global	_countHalfFull
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
	file	"D203_062B_SOP16.as"
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

_cDuty:
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

_count50s:
       ds      2

_batADValue:
       ds      2

_power_ad:
       ds      2

_result:
       ds      2

_count2:
       ds      1

_sleepTime:
       ds      1

_lowBatFlag:
       ds      1

_prePwStep:
       ds      1

_pwStep:
       ds      1

_maxDuty:
       ds      1

_keyCount:
       ds      1

_countHalfFull:
       ds      1

_IntFlag:
       ds      1

_count1s:
       ds      1

_intCount:
       ds      1

_test_adc:
       ds      1

	file	"D203_062B_SOP16.as"
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
	movlw	low((__pbssCOMMON)+05h)
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
?_Init_System:	; 1 bytes @ 0x0
?_AD_Init:	; 1 bytes @ 0x0
?_chrgCtr:	; 1 bytes @ 0x0
?_checkBatAD:	; 1 bytes @ 0x0
?_keyCtr:	; 1 bytes @ 0x0
?_workCtr:	; 1 bytes @ 0x0
?_Sleep_Mode:	; 1 bytes @ 0x0
?_pwmInit:	; 1 bytes @ 0x0
?_pwmStop:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_keyRead:	; 1 bytes @ 0x0
	ds	2
??_Init_System:	; 1 bytes @ 0x2
??_AD_Init:	; 1 bytes @ 0x2
??_chrgCtr:	; 1 bytes @ 0x2
??_workCtr:	; 1 bytes @ 0x2
??_Sleep_Mode:	; 1 bytes @ 0x2
??_pwmInit:	; 1 bytes @ 0x2
??_pwmStop:	; 1 bytes @ 0x2
?_ADC_Sample:	; 1 bytes @ 0x2
??_keyRead:	; 1 bytes @ 0x2
	global	keyRead@keyStatus
keyRead@keyStatus:	; 1 bytes @ 0x2
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x2
	ds	1
??_keyCtr:	; 1 bytes @ 0x3
??_ADC_Sample:	; 1 bytes @ 0x3
	ds	1
	global	keyCtr@kclick
keyCtr@kclick:	; 1 bytes @ 0x4
	ds	3
??_main:	; 1 bytes @ 0x7
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	ADC_Sample@j
ADC_Sample@j:	; 1 bytes @ 0x0
	ds	1
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x1
	ds	1
	global	ADC_Sample@i
ADC_Sample@i:	; 1 bytes @ 0x2
	ds	1
	global	ADC_Sample@adsum
ADC_Sample@adsum:	; 4 bytes @ 0x3
	ds	4
	global	ADC_Sample@admin
ADC_Sample@admin:	; 2 bytes @ 0x7
	ds	2
	global	ADC_Sample@admax
ADC_Sample@admax:	; 2 bytes @ 0x9
	ds	2
	global	ADC_Sample@ad_temp
ADC_Sample@ad_temp:	; 2 bytes @ 0xB
	ds	2
??_checkBatAD:	; 1 bytes @ 0xD
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         29
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      12
;!    BANK0            80     15      40
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _keyCtr->_keyRead
;!    _checkBatAD->_ADC_Sample
;!
;!Critical Paths under _Isr_Timer in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_checkBatAD
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
;! (0) _main                                                 0     0      0     680
;!                            _AD_Init
;!                        _Init_System
;!                         _Sleep_Mode
;!                         _checkBatAD
;!                            _chrgCtr
;!                             _keyCtr
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
;! (1) _keyCtr                                               2     2      0      45
;!                                              3 COMMON     2     2      0
;!                            _keyRead
;! ---------------------------------------------------------------------------------
;! (2) _keyRead                                              1     1      0      22
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkBatAD                                           2     2      0     635
;!                                             13 BANK0      2     2      0
;!                         _ADC_Sample
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
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _Isr_Timer                                            2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
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
;!   _workCtr
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
;!COMMON               E      7       C       1       85.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50      F      28       4       50.0%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      34       7        0.0%
;!DATA                 0      0      34       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 126 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_AD_Init
;;		_Init_System
;;		_Sleep_Mode
;;		_checkBatAD
;;		_chrgCtr
;;		_keyCtr
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	126
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	126
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	128
	
l2030:	
;main.c: 128: Init_System();
	fcall	_Init_System
	line	129
;main.c: 129: AD_Init();
	fcall	_AD_Init
	line	130
	
l2032:	
;main.c: 130: firstTime = 100;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_firstTime)
	line	131
;main.c: 131: while (1)
	
l659:	
	line	133
# 133 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
clrwdt ;# 
psect	maintext
	line	134
	
l2034:	
;main.c: 134: if(!IntFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u1511
	goto	u1510
u1511:
	goto	l2038
u1510:
	goto	l659
	line	136
	
l2038:	
;main.c: 136: IntFlag = 0;
	clrf	(_IntFlag)
	line	137
	
l2040:	
;main.c: 137: chrgCtr();
	fcall	_chrgCtr
	line	138
	
l2042:	
;main.c: 138: checkBatAD();
	fcall	_checkBatAD
	line	139
	
l2044:	
;main.c: 139: if(chrgFlag == 0 && lowBatFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u1521
	goto	u1520
u1521:
	goto	l662
u1520:
	
l2046:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u1531
	goto	u1530
u1531:
	goto	l662
u1530:
	line	141
	
l2048:	
;main.c: 140: {
;main.c: 141: keyCtr();
	fcall	_keyCtr
	line	142
	
l662:	
	line	143
;main.c: 142: }
;main.c: 143: workCtr();
	fcall	_workCtr
	line	144
	
l2050:	
;main.c: 144: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u1541
	goto	u1540
u1541:
	goto	l2064
u1540:
	
l2052:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u1551
	goto	u1550
u1551:
	goto	l2064
u1550:
	
l2054:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u1561
	goto	u1560
u1561:
	goto	l2064
u1560:
	
l2056:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u1571
	goto	u1570
u1571:
	goto	l2064
u1570:
	line	146
	
l2058:	
;main.c: 145: {
;main.c: 146: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u1581
	goto	u1580
u1581:
	goto	l659
u1580:
	line	148
	
l2060:	
;main.c: 147: {
;main.c: 148: sleepTime = 0;
	clrf	(_sleepTime)
	line	149
	
l2062:	
;main.c: 149: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l659
	line	154
	
l2064:	
;main.c: 152: else
;main.c: 153: {
;main.c: 154: sleepTime = 0;
	clrf	(_sleepTime)
	goto	l659
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
;;		line 255 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pwmInit
;;		_pwmStop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	255
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	255
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	257
	
l1814:	
;main.c: 257: if(firstTime > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u1111
	goto	u1110
u1111:
	goto	l1822
u1110:
	line	259
	
l1816:	
;main.c: 258: {
;main.c: 259: firstTime--;
	decf	(_firstTime),f
	line	260
	
l1818:	
;main.c: 260: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u1121
	goto	u1120
u1121:
	goto	l1822
u1120:
	line	262
	
l1820:	
;main.c: 261: {
;main.c: 262: prePwStep = pwStep;
	movf	(_pwStep),w
	movwf	(_prePwStep)
	line	265
	
l1822:	
;main.c: 263: }
;main.c: 264: }
;main.c: 265: if(++count2 > 2)
	movlw	low(03h)
	incf	(_count2),f
	subwf	((_count2)),w
	skipc
	goto	u1131
	goto	u1130
u1131:
	goto	l700
u1130:
	line	267
	
l1824:	
;main.c: 266: {
;main.c: 267: count2 = 0;
	clrf	(_count2)
	line	268
	
l1826:	
;main.c: 268: if(workStep > 0 && maxDuty >= 45)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1141
	goto	u1140
u1141:
	goto	l700
u1140:
	
l1828:	
	movlw	low(02Dh)
	subwf	(_maxDuty),w
	skipc
	goto	u1151
	goto	u1150
u1151:
	goto	l700
u1150:
	line	270
	
l1830:	
;main.c: 269: {
;main.c: 270: if(cDuty > maxDuty)
	movf	(_cDuty),w
	subwf	(_maxDuty),w
	skipnc
	goto	u1161
	goto	u1160
u1161:
	goto	l1836
u1160:
	line	272
	
l1832:	
;main.c: 271: {
;main.c: 272: cDuty--;
	decf	(_cDuty),f
	line	273
	
l1834:	
;main.c: 273: PWMD3L = cDuty;
	movf	(_cDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	274
;main.c: 274: }
	goto	l700
	line	275
	
l1836:	
;main.c: 275: else if(cDuty < maxDuty)
	movf	(_maxDuty),w
	subwf	(_cDuty),w
	skipnc
	goto	u1171
	goto	u1170
u1171:
	goto	l700
u1170:
	line	277
	
l1838:	
;main.c: 276: {
;main.c: 277: cDuty++;
	incf	(_cDuty),f
	goto	l1834
	line	282
	
l700:	
	line	283
;main.c: 279: }
;main.c: 280: }
;main.c: 282: }
;main.c: 283: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1181
	goto	u1180
u1181:
	goto	l1854
u1180:
	line	285
	
l1842:	
;main.c: 284: {
;main.c: 285: PORTB &= 0xFC;
	movlw	low(0FCh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(6),f	;volatile
	line	286
	
l1844:	
;main.c: 286: if((PWMCON0 & 0x08) == 0)
	btfsc	(21),(3)&7	;volatile
	goto	u1191
	goto	u1190
u1191:
	goto	l1848
u1190:
	line	288
	
l1846:	
;main.c: 287: {
;main.c: 288: pwmInit();
	fcall	_pwmInit
	line	290
	
l1848:	
;main.c: 289: }
;main.c: 290: if(count1s == 0 && ++count900s >= 900)
	movf	((_count1s)),w
	btfss	status,2
	goto	u1201
	goto	u1200
u1201:
	goto	l712
u1200:
	
l1850:	
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	movlw	03h
	subwf	((_count900s+1)),w
	movlw	084h
	skipnz
	subwf	((_count900s)),w
	skipc
	goto	u1211
	goto	u1210
u1211:
	goto	l712
u1210:
	line	292
	
l1852:	
;main.c: 291: {
;main.c: 292: workStep = 0;
	clrf	(_workStep)
	goto	l712
	line	297
	
l1854:	
;main.c: 295: else
;main.c: 296: {
;main.c: 297: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u1221
	goto	u1220
u1221:
	goto	l709
u1220:
	line	299
	
l1856:	
;main.c: 298: {
;main.c: 299: PORTB |= 0x03;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(6),f	;volatile
	line	300
	
l709:	
	line	301
;main.c: 300: }
;main.c: 301: if(cDuty > 0)
	movf	((_cDuty)),w
	btfsc	status,2
	goto	u1231
	goto	u1230
u1231:
	goto	l1864
u1230:
	line	303
	
l1858:	
;main.c: 302: {
;main.c: 303: if(--cDuty == 0)
	decfsz	(_cDuty),f
	goto	u1241
	goto	u1240
u1241:
	goto	l1862
u1240:
	line	305
	
l1860:	
;main.c: 304: {
;main.c: 305: pwmStop();
	fcall	_pwmStop
	line	307
	
l1862:	
;main.c: 306: }
;main.c: 307: PWMD3L = cDuty;
	movf	(_cDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	309
	
l1864:	
;main.c: 308: }
;main.c: 309: count900s = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	311
	
l712:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 507 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	507
global __ptext2
__ptext2:	;psect for function _pwmStop
psect	text2
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	507
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 5
; Regs used in _pwmStop: []
	line	509
	
l1626:	
;main.c: 509: PWMCON0 &= 0XF7;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(21)+(3/8),(3)&7	;volatile
	line	510
;main.c: 510: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	511
	
l745:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 492 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	492
global __ptext3
__ptext3:	;psect for function _pwmInit
psect	text3
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	492
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 5
; Regs used in _pwmInit: [wreg+status,2]
	line	494
	
l1616:	
;main.c: 494: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	495
;main.c: 495: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	496
	
l1618:	
;main.c: 496: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	499
	
l1620:	
;main.c: 499: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	500
;main.c: 500: PWMD3L = 45;
	movlw	low(02Dh)
	movwf	(156)^080h	;volatile
	line	501
	
l1622:	
;main.c: 501: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	503
	
l1624:	
;main.c: 503: PWMCON0 = 0X68;
	movlw	low(068h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	504
;main.c: 504: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	505
	
l742:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 238 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
;;      Temps:          1       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_keyRead
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	238
global __ptext4
__ptext4:	;psect for function _keyCtr
psect	text4
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	238
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	240
	
l1800:	
;main.c: 240: char kclick = keyRead(0x20 & (~PORTB));
	comf	(6),w	;volatile
	andlw	020h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	241
	
l1802:	
;main.c: 241: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u1081
	goto	u1080
u1081:
	goto	l695
u1080:
	line	243
	
l1804:	
;main.c: 242: {
;main.c: 243: if(++workStep > 2)
	movlw	low(03h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u1091
	goto	u1090
u1091:
	goto	l1808
u1090:
	line	245
	
l1806:	
;main.c: 244: {
;main.c: 245: workStep = 0;
	clrf	(_workStep)
	line	247
	
l1808:	
;main.c: 246: }
;main.c: 247: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u1101
	goto	u1100
u1101:
	goto	l1812
u1100:
	line	249
	
l1810:	
;main.c: 248: {
;main.c: 249: cDuty = 45;
	movlw	low(02Dh)
	movwf	(_cDuty)
	line	251
	
l1812:	
;main.c: 250: }
;main.c: 251: maxDuty = 50 + workStep*20;
	swapf	(_workStep),w
	andlw	0f0h
	movwf	(??_keyCtr+0)+0
	movf	(_workStep),w
	addwf	(_workStep),w
	addwf	(??_keyCtr+0)+0,f
	addwf	(??_keyCtr+0)+0,f
	movf	(??_keyCtr+0)+0,w
	addlw	032h
	movwf	(_maxDuty)
	line	253
	
l695:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 216 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	216
global __ptext5
__ptext5:	;psect for function _keyRead
psect	text5
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	216
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	218
	
l1594:	
;main.c: 218: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u701
	goto	u700
u701:
	goto	l1602
u700:
	line	220
	
l1596:	
;main.c: 219: {
;main.c: 220: keyCount++;
	incf	(_keyCount),f
	line	221
	
l1598:	
;main.c: 221: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u711
	goto	u710
u711:
	goto	l1612
u710:
	line	223
	
l1600:	
;main.c: 222: {
;main.c: 223: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	goto	l1612
	line	228
	
l1602:	
;main.c: 226: else
;main.c: 227: {
;main.c: 228: if(keyCount >= 4)
	movlw	low(04h)
	subwf	(_keyCount),w
	skipc
	goto	u721
	goto	u720
u721:
	goto	l1610
u720:
	line	230
	
l1604:	
;main.c: 229: {
;main.c: 230: keyCount = 0;
	clrf	(_keyCount)
	line	231
	
l1606:	
;main.c: 231: return 1;
	movlw	low(01h)
	goto	l689
	line	233
	
l1610:	
;main.c: 232: }
;main.c: 233: keyCount = 0;
	clrf	(_keyCount)
	line	235
	
l1612:	
;main.c: 234: }
;main.c: 235: return 0;
	movlw	low(0)
	line	236
	
l689:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 160 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	160
global __ptext6
__ptext6:	;psect for function _chrgCtr
psect	text6
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	160
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 6
; Regs used in _chrgCtr: [wreg+status,2+status,0]
	line	162
	
l1700:	
;main.c: 162: if(PORTB & 0x04)
	btfss	(6),(2)&7	;volatile
	goto	u881
	goto	u880
u881:
	goto	l1726
u880:
	line	164
	
l1702:	
;main.c: 163: {
;main.c: 164: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	165
	
l1704:	
;main.c: 165: workStep = 0;
	clrf	(_workStep)
	line	166
;main.c: 166: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	167
	
l1706:	
;main.c: 167: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u891
	goto	u890
u891:
	goto	l1714
u890:
	line	169
	
l1708:	
;main.c: 168: {
;main.c: 169: if(++count50s > 7200)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	01Ch
	subwf	((_count50s+1)),w
	movlw	021h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u901
	goto	u900
u901:
	goto	l1716
u900:
	line	171
	
l1710:	
;main.c: 170: {
;main.c: 171: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	172
	
l1712:	
;main.c: 172: prePwStep++;
	incf	(_prePwStep),f
	goto	l1716
	line	177
	
l1714:	
;main.c: 175: else
;main.c: 176: {
;main.c: 177: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	179
	
l1716:	
;main.c: 178: }
;main.c: 179: if(prePwStep >= 99)
	movlw	low(063h)
	subwf	(_prePwStep),w
	skipc
	goto	u911
	goto	u910
u911:
	goto	l1720
u910:
	line	181
	
l1718:	
;main.c: 180: {
;main.c: 181: PORTB &= 0xFC;
	movlw	low(0FCh)
	andwf	(6),f	;volatile
	line	182
;main.c: 182: }
	goto	l682
	line	185
	
l1720:	
;main.c: 183: else
;main.c: 184: {
;main.c: 185: if(count1s < 50)
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u921
	goto	u920
u921:
	goto	l1724
u920:
	goto	l1718
	line	191
	
l1724:	
;main.c: 189: else
;main.c: 190: {
;main.c: 191: PORTB |= 0x03;
	movlw	low(03h)
	iorwf	(6),f	;volatile
	goto	l682
	line	197
	
l1726:	
;main.c: 198: chrgFullFlag = 0;
	clrf	(_chrgFlag)
	line	199
	
l1728:	
;main.c: 199: if(prePwStep > 0 && prePwStep > pwStep)
	movf	((_prePwStep)),w
	btfsc	status,2
	goto	u931
	goto	u930
u931:
	goto	l1738
u930:
	
l1730:	
	movf	(_prePwStep),w
	subwf	(_pwStep),w
	skipnc
	goto	u941
	goto	u940
u941:
	goto	l1738
u940:
	line	201
	
l1732:	
;main.c: 200: {
;main.c: 201: if(++count50s > 2000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	07h
	subwf	((_count50s+1)),w
	movlw	0D1h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u951
	goto	u950
u951:
	goto	l682
u950:
	line	203
	
l1734:	
;main.c: 202: {
;main.c: 203: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	204
	
l1736:	
;main.c: 204: prePwStep--;
	decf	(_prePwStep),f
	goto	l682
	line	209
	
l1738:	
;main.c: 207: else
;main.c: 208: {
;main.c: 209: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	212
	
l682:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 313 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ADC_Sample
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	313
global __ptext7
__ptext7:	;psect for function _checkBatAD
psect	text7
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	313
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 5
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	315
	
l1970:	
;main.c: 315: test_adc = ADC_Sample(1, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(01h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	316
	
l1972:	
;main.c: 316: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u1391
	goto	u1390
u1391:
	goto	l2004
u1390:
	line	318
	
l1974:	
;main.c: 317: {
;main.c: 318: batADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_batADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_batADValue)
	line	319
;main.c: 319: if(batADValue < 1117)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Dh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u1401
	goto	u1400
u1401:
	goto	l1988
u1400:
	line	321
	
l1976:	
;main.c: 320: {
;main.c: 321: pwStep = 0;
	clrf	(_pwStep)
	line	322
	
l1978:	
;main.c: 322: if(++count8s > 800)
	incf	(_count8s),f
	skipnz
	incf	(_count8s+1),f
	movlw	03h
	subwf	((_count8s+1)),w
	movlw	021h
	skipnz
	subwf	((_count8s)),w
	skipc
	goto	u1411
	goto	u1410
u1411:
	goto	l2000
u1410:
	line	324
	
l1980:	
;main.c: 323: {
;main.c: 324: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	325
	
l1982:	
;main.c: 325: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	331
	
l1986:	
;main.c: 330: }
;main.c: 331: prePwStep = 0;
	clrf	(_prePwStep)
	line	332
;main.c: 332: workStep = 0;
	clrf	(_workStep)
	goto	l2008
	line	337
	
l1988:	
;main.c: 335: else
;main.c: 336: {
;main.c: 337: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	338
	
l1990:	
;main.c: 338: if(batADValue >= 1340)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	03Ch
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u1421
	goto	u1420
u1421:
	goto	l1994
u1420:
	line	340
	
l1992:	
;main.c: 339: {
;main.c: 340: pwStep = ((batADValue - 1340) /2) + 13;
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
	line	341
;main.c: 341: }
	goto	l1996
	line	344
	
l1994:	
;main.c: 342: else
;main.c: 343: {
;main.c: 344: pwStep = (batADValue - 1117) / 16;
	movf	(_batADValue),w
	addlw	low(0FBA3h)
	movwf	(??_checkBatAD+0)+0
	movf	(_batADValue+1),w
	skipnc
	addlw	1
	addlw	high(0FBA3h)
	movwf	1+(??_checkBatAD+0)+0
	movlw	04h
u1435:
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	addlw	-1
	skipz
	goto	u1435
	movf	0+(??_checkBatAD+0)+0,w
	movwf	(_pwStep)
	line	346
	
l1996:	
;main.c: 345: }
;main.c: 346: if(pwStep > 99)
	movlw	low(064h)
	subwf	(_pwStep),w
	skipc
	goto	u1441
	goto	u1440
u1441:
	goto	l2000
u1440:
	line	348
	
l1998:	
;main.c: 347: {
;main.c: 348: pwStep = 99;
	movlw	low(063h)
	movwf	(_pwStep)
	goto	l2008
	line	351
	
l2000:	
	goto	l2008
	line	358
	
l2004:	
;main.c: 356: else
;main.c: 357: {
;main.c: 358: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	359
;main.c: 359: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	360
	
l2006:	
;main.c: 360: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_checkBatAD+0)+0),f
	u1597:
decfsz	(??_checkBatAD+0)+0,f
	goto	u1597
	nop2
opt asmopt_pop

	line	362
	
l2008:	
;main.c: 361: }
;main.c: 362: test_adc = ADC_Sample(2, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(02h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	363
	
l2010:	
;main.c: 363: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u1451
	goto	u1450
u1451:
	goto	l2026
u1450:
	line	365
	
l2012:	
;main.c: 364: {
;main.c: 365: if(chrgFlag && adresult > 100)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u1461
	goto	u1460
u1461:
	goto	l733
u1460:
	
l2014:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	065h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u1471
	goto	u1470
u1471:
	goto	l733
u1470:
	line	368
	
l2016:	
;main.c: 366: {
;main.c: 368: if(adresult > 810 || (batADValue - adresult) > 810)
	movlw	03h
	subwf	(_adresult+1),w	;volatile
	movlw	02Bh
	skipnz
	subwf	(_adresult),w	;volatile
	skipnc
	goto	u1481
	goto	u1480
u1481:
	goto	l2020
u1480:
	
l2018:	
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
	goto	u1491
	goto	u1490
u1491:
	goto	l2022
u1490:
	line	371
	
l2020:	
;main.c: 369: {
;main.c: 371: if(++countHalfFull > 250)
	movlw	low(0FBh)
	incf	(_countHalfFull),f
	subwf	((_countHalfFull)),w
	skipc
	goto	u1501
	goto	u1500
u1501:
	goto	l726
u1500:
	line	373
	
l2022:	
;main.c: 374: protectFlag = 2;
	clrf	(_countHalfFull)
	goto	l733
	line	381
	
l726:	
	line	382
;main.c: 380: }
;main.c: 381: }
;main.c: 382: }
	goto	l733
	line	385
	
l2026:	
;main.c: 383: else
;main.c: 384: {
;main.c: 385: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	386
;main.c: 386: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	387
	
l2028:	
;main.c: 387: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_checkBatAD+0)+0),f
	u1607:
decfsz	(??_checkBatAD+0)+0,f
	goto	u1607
	nop2
opt asmopt_pop

	line	389
	
l733:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 597 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
;;		On entry : 0/0
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
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	597
global __ptext8
__ptext8:	;psect for function _ADC_Sample
psect	text8
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	597
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 5
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	599
	
l1628:	
;main.c: 599: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	600
	
l1630:	
;main.c: 600: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	601
;main.c: 601: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	603
	
l1632:	
;main.c: 603: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u731
	goto	u730
u731:
	goto	l1638
u730:
	
l1634:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u741
	goto	u740
u741:
	goto	l1638
u740:
	line	606
	
l1636:	
;main.c: 604: {
;main.c: 606: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	607
;main.c: 607: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_ADC_Sample+0)+0),f
	u1617:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u1617
opt asmopt_pop

	line	608
;main.c: 608: }
	goto	l1640
	line	610
	
l1638:	
;main.c: 609: else
;main.c: 610: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	612
	
l1640:	
;main.c: 612: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u751
	goto	u750
u751:
	goto	l1646
u750:
	line	614
	
l1642:	
;main.c: 613: {
;main.c: 614: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	615
	
l1644:	
;main.c: 615: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	617
	
l1646:	
	line	618
	
l1648:	
;main.c: 618: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	620
	
l1654:	
;main.c: 619: {
;main.c: 620: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u765:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u765
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	621
# 621 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	622
# 622 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	623
# 623 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	624
# 624 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
psect	text8
	line	625
	
l1656:	
;main.c: 625: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	627
	
l1658:	
;main.c: 627: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	628
;main.c: 628: while (GODONE)
	goto	l759
	
l760:	
	line	630
;main.c: 629: {
;main.c: 630: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	632
;main.c: 632: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u771
	goto	u770
u771:
	goto	l759
u770:
	line	633
	
l1660:	
;main.c: 633: return 0;
	movlw	low(0)
	goto	l762
	line	634
	
l759:	
	line	628
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u781
	goto	u780
u781:
	goto	l760
u780:
	line	636
	
l1664:	
;main.c: 634: }
;main.c: 636: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l1666:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	638
	
l1668:	
;main.c: 638: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u791
	goto	u790
u791:
	goto	l1672
u790:
	line	640
	
l1670:	
;main.c: 639: {
;main.c: 640: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	641
;main.c: 641: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	642
;main.c: 642: }
	goto	l765
	line	643
	
l1672:	
;main.c: 643: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u805
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u805:
	skipnc
	goto	u801
	goto	u800
u801:
	goto	l1676
u800:
	line	644
	
l1674:	
;main.c: 644: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l765
	line	645
	
l1676:	
;main.c: 645: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u815
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u815:
	skipnc
	goto	u811
	goto	u810
u811:
	goto	l765
u810:
	line	646
	
l1678:	
;main.c: 646: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	648
	
l765:	
;main.c: 648: adsum += ad_temp;
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
	goto	u821
	addwf	(ADC_Sample@adsum+1),f	;volatile
u821:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u822
	addwf	(ADC_Sample@adsum+2),f	;volatile
u822:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u823
	addwf	(ADC_Sample@adsum+3),f	;volatile
u823:

	line	618
	
l1680:	
	incf	(ADC_Sample@i),f
	
l1682:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u831
	goto	u830
u831:
	goto	l1654
u830:
	line	650
	
l1684:	
;main.c: 649: }
;main.c: 650: adsum -= admax;
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
	goto	u845
	goto	u846
u845:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u846:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u847
	goto	u848
u847:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u848:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u849
	goto	u840
u849:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u840:

	line	651
;main.c: 651: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u855
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u855
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u855
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u855:
	skipc
	goto	u851
	goto	u850
u851:
	goto	l769
u850:
	line	652
	
l1686:	
;main.c: 652: adsum -= admin;
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
	goto	u865
	goto	u866
u865:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u866:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u867
	goto	u868
u867:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u868:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u869
	goto	u860
u869:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u860:

	goto	l1688
	line	653
	
l769:	
	line	654
;main.c: 653: else
;main.c: 654: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	656
	
l1688:	
;main.c: 656: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u875:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u870:
	addlw	-1
	skipz
	goto	u875
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	658
	
l1690:	
;main.c: 658: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	659
	
l1692:	
;main.c: 659: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	660
	
l1694:	
;main.c: 660: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	661
	
l1696:	
;main.c: 661: return 0xA5;
	movlw	low(0A5h)
	line	663
	
l762:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 521 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	521
global __ptext9
__ptext9:	;psect for function _Sleep_Mode
psect	text9
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	521
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 5
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	523
	
l1866:	
;main.c: 523: INTCON = 0;
	clrf	(11)	;volatile
	line	525
;main.c: 525: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	527
	
l1868:	
;main.c: 527: TRISA = 0x06;
	movlw	low(06h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	528
	
l1870:	
;main.c: 528: WPUA = 0B00000000;
	clrf	(136)^080h	;volatile
	line	529
	
l1872:	
;main.c: 529: PORTA = 0x00;
	clrf	(134)^080h	;volatile
	line	530
	
l1874:	
;main.c: 530: TRISB = 0x24;
	movlw	low(024h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	531
	
l1876:	
;main.c: 531: PORTB = 0x03;
	movlw	low(03h)
	movwf	(6)	;volatile
	line	532
	
l1878:	
;main.c: 532: WPUB = 0x20;
	movlw	low(020h)
	movwf	(8)	;volatile
	line	534
;main.c: 534: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	535
;main.c: 535: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	537
;main.c: 537: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	539
	
l1880:	
;main.c: 539: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	541
	
l1882:	
;main.c: 541: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	542
;main.c: 542: IOCB = 0x24;
	movlw	low(024h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	544
	
l1884:	
;main.c: 544: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	545
	
l1886:	
;main.c: 545: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	546
	
l1888:	
;main.c: 546: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	547
	
l1890:	
;main.c: 547: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	549
	
l1892:	
;main.c: 549: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	550
	
l1894:	
;main.c: 550: PIR1 = 0;
	clrf	(13)	;volatile
	line	551
	
l1896:	
;main.c: 551: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	553
	
l1898:	
;main.c: 553: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	554
	
l1900:	
;main.c: 554: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	555
	
l1902:	
;main.c: 555: PORTB;
	movf	(6),w	;volatile
	line	556
	
l1904:	
;main.c: 556: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	557
# 557 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
clrwdt ;# 
	line	559
# 559 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
sleep ;# 
	line	561
# 561 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	562
# 562 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
clrwdt ;# 
	line	563
# 563 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	564
# 564 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	565
# 565 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	566
# 566 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	567
# 567 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
psect	text9
	line	568
	
l1906:	
;main.c: 568: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u1251
	goto	u1250
u1251:
	goto	l748
u1250:
	
l1908:	
	bcf	(107/8),(107)&7	;volatile
	
l748:	
	line	569
;main.c: 569: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u1261
	goto	u1260
u1261:
	goto	l749
u1260:
	
l1910:	
	bcf	(88/8),(88)&7	;volatile
	
l749:	
	line	570
;main.c: 570: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u1271
	goto	u1270
u1271:
	goto	l1914
u1270:
	
l1912:	
	bcf	(105/8),(105)&7	;volatile
	line	571
	
l1914:	
;main.c: 571: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	572
;main.c: 572: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	573
	
l1916:	
;main.c: 573: Init_System();
	fcall	_Init_System
	line	574
	
l1918:	
;main.c: 574: AD_Init();
	fcall	_AD_Init
	line	575
	
l751:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 400 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	400
global __ptext10
__ptext10:	;psect for function _Init_System
psect	text10
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	400
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_System: [wreg+status,2]
	line	402
	
l1560:	
# 402 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	403
# 403 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
clrwdt ;# 
psect	text10
	line	404
	
l1562:	
;main.c: 404: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	405
# 405 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
clrwdt ;# 
psect	text10
	line	406
	
l1564:	
;main.c: 406: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	408
	
l1566:	
;main.c: 408: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	409
	
l1568:	
;main.c: 409: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	410
	
l1570:	
;main.c: 410: WPUB = 0x20;
	movlw	low(020h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	412
	
l1572:	
;main.c: 412: TRISA = 0x06;
	movlw	low(06h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	413
	
l1574:	
;main.c: 413: TRISB = 0x24;
	movlw	low(024h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	415
;main.c: 415: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	416
	
l1576:	
;main.c: 416: PORTB = 0X03;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	420
	
l1578:	
;main.c: 420: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	421
	
l1580:	
;main.c: 421: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	422
	
l1582:	
;main.c: 422: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	424
	
l1584:	
;main.c: 424: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	425
	
l1586:	
;main.c: 425: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	426
	
l736:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 437 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	437
global __ptext11
__ptext11:	;psect for function _AD_Init
psect	text11
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	437
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 5
; Regs used in _AD_Init: [wreg+status,2]
	line	470
	
l1588:	
;main.c: 470: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	487
	
l1590:	
;main.c: 487: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	488
	
l1592:	
;main.c: 488: ANSEL0 = 0X06;
	movlw	low(06h)
	movwf	(147)^080h	;volatile
	line	489
	
l739:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 103 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	103
global __ptext12
__ptext12:	;psect for function _Isr_Timer
psect	text12
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	103
	global	__size_of_Isr_Timer
	__size_of_Isr_Timer	equ	__end_of_Isr_Timer-_Isr_Timer
	
_Isr_Timer:	
;incstack = 0
	opt	stack 5
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
psect	text12
	line	105
	
i1l1920:	
;main.c: 105: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u128_21
	goto	u128_20
u128_21:
	goto	i1l654
u128_20:
	line	107
	
i1l1922:	
;main.c: 106: {
;main.c: 107: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	108
	
i1l1924:	
;main.c: 108: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u129_21
	goto	u129_20
u129_21:
	goto	i1l654
u129_20:
	line	110
	
i1l1926:	
;main.c: 109: {
;main.c: 110: intCount = 0;
	clrf	(_intCount)
	line	111
	
i1l1928:	
;main.c: 111: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	112
	
i1l1930:	
;main.c: 112: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u130_21
	goto	u130_20
u130_21:
	goto	i1l654
u130_20:
	line	114
	
i1l1932:	
;main.c: 113: {
;main.c: 114: count1s = 0;
	clrf	(_count1s)
	line	120
	
i1l654:	
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
