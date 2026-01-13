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
	FNCALL	_main,_workCtr
	FNCALL	_workCtr,_pwmInit
	FNCALL	_workCtr,_pwmStop
	FNCALL	_keyCtr,_keyRead
	FNCALL	_chrgCtr,___lbmod
	FNCALL	_checkOutAD,_ADC_Sample
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
	global	_test_adc
	global	_count300s
	global	_out_ad
	global	_count900s
	global	_count8s
	global	_count50s
	global	_batADValue
	global	_power_ad
	global	_result
	global	_lowBatHintTime
	global	_overTime
	global	_count2
	global	_sleepTime
	global	_lowBatFlag
	global	_prePwStep
	global	_pwStep
	global	_maxDuty
	global	_keyCount
	global	_countHalfFull
	global	_chrgFlag
	global	_IntFlag
	global	_count1s
	global	_intCount
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

_test_adc:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_count300s:
       ds      2

_out_ad:
       ds      2

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

_lowBatHintTime:
       ds      1

_overTime:
       ds      1

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

_chrgFlag:
       ds      1

_IntFlag:
       ds      1

_count1s:
       ds      1

_intCount:
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
?_Init_System:	; 1 bytes @ 0x0
?_AD_Init:	; 1 bytes @ 0x0
?_chrgCtr:	; 1 bytes @ 0x0
?_checkBatAD:	; 1 bytes @ 0x0
?_keyCtr:	; 1 bytes @ 0x0
?_workCtr:	; 1 bytes @ 0x0
?_checkOutAD:	; 1 bytes @ 0x0
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
??_workCtr:	; 1 bytes @ 0x2
??_Sleep_Mode:	; 1 bytes @ 0x2
??_pwmInit:	; 1 bytes @ 0x2
??_pwmStop:	; 1 bytes @ 0x2
?_ADC_Sample:	; 1 bytes @ 0x2
??_keyRead:	; 1 bytes @ 0x2
?___lbmod:	; 1 bytes @ 0x2
	global	keyRead@keyStatus
keyRead@keyStatus:	; 1 bytes @ 0x2
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x2
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x2
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
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x6
	ds	1
??_main:	; 1 bytes @ 0x7
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_chrgCtr:	; 1 bytes @ 0x0
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
??_checkOutAD:	; 1 bytes @ 0xD
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         35
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      12
;!    BANK0            80     15      46
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _keyCtr->_keyRead
;!    _chrgCtr->___lbmod
;!    _checkOutAD->_ADC_Sample
;!    _checkBatAD->_ADC_Sample
;!
;!Critical Paths under _Isr_Timer in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_checkBatAD
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
;! (0) _main                                                 0     0      0    1633
;!                            _AD_Init
;!                        _Init_System
;!                         _Sleep_Mode
;!                         _checkBatAD
;!                         _checkOutAD
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
;! (1) _keyCtr                                               1     1      0      45
;!                                              3 COMMON     1     1      0
;!                            _keyRead
;! ---------------------------------------------------------------------------------
;! (2) _keyRead                                              1     1      0      22
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              1     1      0     212
;!                                              0 BANK0      1     1      0
;!                            ___lbmod
;! ---------------------------------------------------------------------------------
;! (2) ___lbmod                                              5     4      1     212
;!                                              2 COMMON     5     4      1
;! ---------------------------------------------------------------------------------
;! (1) _checkOutAD                                           5     5      0     688
;!                                             13 BANK0      1     1      0
;!                         _ADC_Sample
;! ---------------------------------------------------------------------------------
;! (1) _checkBatAD                                           2     2      0     688
;!                                             13 BANK0      2     2      0
;!                         _ADC_Sample
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Sample                                          18    17      1     688
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
;!   _checkOutAD
;!     _ADC_Sample
;!   _chrgCtr
;!     ___lbmod
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
;!BANK0               50      F      2E       4       57.5%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      3A       7        0.0%
;!DATA                 0      0      3A       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 129 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
;;		_checkOutAD
;;		_chrgCtr
;;		_keyCtr
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	129
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	129
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	131
	
l2254:	
;main.c: 131: Init_System();
	fcall	_Init_System
	line	132
;main.c: 132: AD_Init();
	fcall	_AD_Init
	line	133
	
l2256:	
;main.c: 133: firstTime = 100;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_firstTime)
	line	134
;main.c: 134: while (1)
	
l667:	
	line	136
# 136 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
clrwdt ;# 
psect	maintext
	line	137
	
l2258:	
;main.c: 137: if(!IntFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u1891
	goto	u1890
u1891:
	goto	l2262
u1890:
	goto	l667
	line	139
	
l2262:	
;main.c: 139: IntFlag = 0;
	clrf	(_IntFlag)
	line	140
	
l2264:	
;main.c: 140: chrgCtr();
	fcall	_chrgCtr
	line	141
	
l2266:	
;main.c: 141: checkBatAD();
	fcall	_checkBatAD
	line	142
	
l2268:	
;main.c: 142: if(chrgFlag == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u1901
	goto	u1900
u1901:
	goto	l670
u1900:
	line	144
	
l2270:	
;main.c: 143: {
;main.c: 144: keyCtr();
	fcall	_keyCtr
	line	145
	
l670:	
	line	146
;main.c: 145: }
;main.c: 146: workCtr();
	fcall	_workCtr
	line	147
;main.c: 147: checkOutAD();
	fcall	_checkOutAD
	line	148
	
l2272:	
;main.c: 148: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && lowBatHintTime == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u1911
	goto	u1910
u1911:
	goto	l2288
u1910:
	
l2274:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u1921
	goto	u1920
u1921:
	goto	l2288
u1920:
	
l2276:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u1931
	goto	u1930
u1931:
	goto	l2288
u1930:
	
l2278:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u1941
	goto	u1940
u1941:
	goto	l2288
u1940:
	
l2280:	
	movf	((_lowBatHintTime)),w
	btfss	status,2
	goto	u1951
	goto	u1950
u1951:
	goto	l2288
u1950:
	line	150
	
l2282:	
;main.c: 149: {
;main.c: 150: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u1961
	goto	u1960
u1961:
	goto	l667
u1960:
	line	152
	
l2284:	
;main.c: 151: {
;main.c: 152: sleepTime = 0;
	clrf	(_sleepTime)
	line	153
	
l2286:	
;main.c: 153: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l667
	line	158
	
l2288:	
;main.c: 156: else
;main.c: 157: {
;main.c: 158: sleepTime = 0;
	clrf	(_sleepTime)
	goto	l667
	global	start
	ljmp	start
	opt stack 0
	line	161
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 292 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pwmInit
;;		_pwmStop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	292
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	292
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	294
	
l1948:	
;main.c: 294: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u1321
	goto	u1320
u1321:
	goto	l1956
u1320:
	line	296
	
l1950:	
;main.c: 295: {
;main.c: 296: firstTime--;
	decf	(_firstTime),f
	line	297
	
l1952:	
;main.c: 297: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u1331
	goto	u1330
u1331:
	goto	l1956
u1330:
	line	299
	
l1954:	
;main.c: 298: {
;main.c: 299: prePwStep = pwStep;
	movf	(_pwStep),w
	movwf	(_prePwStep)
	line	302
	
l1956:	
;main.c: 300: }
;main.c: 301: }
;main.c: 302: if(++count2 > 2)
	movlw	low(03h)
	incf	(_count2),f
	subwf	((_count2)),w
	skipc
	goto	u1341
	goto	u1340
u1341:
	goto	l716
u1340:
	line	304
	
l1958:	
;main.c: 303: {
;main.c: 304: count2 = 0;
	clrf	(_count2)
	line	305
	
l1960:	
;main.c: 305: if(workStep > 0 && maxDuty >= 45)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1351
	goto	u1350
u1351:
	goto	l716
u1350:
	
l1962:	
	movlw	low(02Dh)
	subwf	(_maxDuty),w
	skipc
	goto	u1361
	goto	u1360
u1361:
	goto	l716
u1360:
	line	307
	
l1964:	
;main.c: 306: {
;main.c: 307: if(cDuty > maxDuty)
	movf	(_cDuty),w
	subwf	(_maxDuty),w
	skipnc
	goto	u1371
	goto	u1370
u1371:
	goto	l1970
u1370:
	line	309
	
l1966:	
;main.c: 308: {
;main.c: 309: cDuty--;
	decf	(_cDuty),f
	line	310
	
l1968:	
;main.c: 310: PWMD3L = cDuty;
	movf	(_cDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	311
;main.c: 311: }
	goto	l716
	line	312
	
l1970:	
;main.c: 312: else if(cDuty < maxDuty)
	movf	(_maxDuty),w
	subwf	(_cDuty),w
	skipnc
	goto	u1381
	goto	u1380
u1381:
	goto	l716
u1380:
	line	314
	
l1972:	
;main.c: 313: {
;main.c: 314: cDuty++;
	incf	(_cDuty),f
	goto	l1968
	line	319
	
l716:	
	line	320
;main.c: 316: }
;main.c: 317: }
;main.c: 319: }
;main.c: 320: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1391
	goto	u1390
u1391:
	goto	l721
u1390:
	line	323
	
l1976:	
;main.c: 321: {
;main.c: 323: PORTB |= 0x03;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(6),f	;volatile
	line	324
	
l1978:	
;main.c: 324: PORTA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(3/8),(3)&7	;volatile
	line	325
	
l1980:	
;main.c: 325: if(out_ad > 430)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_out_ad+1),w
	movlw	0AFh
	skipnz
	subwf	(_out_ad),w
	skipc
	goto	u1401
	goto	u1400
u1401:
	goto	l1986
u1400:
	line	327
	
l1982:	
;main.c: 326: {
;main.c: 327: if(++overTime > 10)
	movlw	low(0Bh)
	incf	(_overTime),f
	subwf	((_overTime)),w
	skipc
	goto	u1411
	goto	u1410
u1411:
	goto	l1988
u1410:
	line	329
	
l1984:	
;main.c: 328: {
;main.c: 329: overTime = 0;
	clrf	(_overTime)
	line	330
;main.c: 330: workStep = 0;
	clrf	(_workStep)
	goto	l1988
	line	335
	
l1986:	
;main.c: 333: else
;main.c: 334: {
;main.c: 335: overTime = 0;
	clrf	(_overTime)
	line	337
	
l1988:	
;main.c: 336: }
;main.c: 337: if((PWMCON0 & 0x08) == 0)
	btfsc	(21),(3)&7	;volatile
	goto	u1421
	goto	u1420
u1421:
	goto	l1992
u1420:
	line	339
	
l1990:	
;main.c: 338: {
;main.c: 339: pwmInit();
	fcall	_pwmInit
	line	341
	
l1992:	
;main.c: 340: }
;main.c: 341: if(count1s == 0 && ++count900s >= 900)
	movf	((_count1s)),w
	btfss	status,2
	goto	u1431
	goto	u1430
u1431:
	goto	l731
u1430:
	
l1994:	
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	movlw	03h
	subwf	((_count900s+1)),w
	movlw	084h
	skipnz
	subwf	((_count900s)),w
	skipc
	goto	u1441
	goto	u1440
u1441:
	goto	l731
u1440:
	line	343
	
l1996:	
;main.c: 342: {
;main.c: 343: workStep = 0;
	clrf	(_workStep)
	goto	l731
	line	346
	
l721:	
	line	348
;main.c: 346: else
;main.c: 347: {
;main.c: 348: PORTA |= 0x08;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(3/8),(3)&7	;volatile
	line	349
	
l1998:	
;main.c: 349: if(chrgFlag == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u1451
	goto	u1450
u1451:
	goto	l728
u1450:
	line	351
	
l2000:	
;main.c: 350: {
;main.c: 351: PORTB |= 0x03;
	movlw	low(03h)
	iorwf	(6),f	;volatile
	line	352
	
l728:	
	line	353
;main.c: 352: }
;main.c: 353: if(cDuty > 0)
	movf	((_cDuty)),w
	btfsc	status,2
	goto	u1461
	goto	u1460
u1461:
	goto	l2008
u1460:
	line	355
	
l2002:	
;main.c: 354: {
;main.c: 355: if(--cDuty == 0)
	decfsz	(_cDuty),f
	goto	u1471
	goto	u1470
u1471:
	goto	l2006
u1470:
	line	357
	
l2004:	
;main.c: 356: {
;main.c: 357: pwmStop();
	fcall	_pwmStop
	line	359
	
l2006:	
;main.c: 358: }
;main.c: 359: PWMD3L = cDuty;
	movf	(_cDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	361
	
l2008:	
;main.c: 360: }
;main.c: 361: count900s = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	363
	
l731:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 580 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	580
global __ptext2
__ptext2:	;psect for function _pwmStop
psect	text2
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	580
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 5
; Regs used in _pwmStop: []
	line	582
	
l1714:	
;main.c: 582: PWMCON0 &= 0XF7;
	bcf	(21)+(3/8),(3)&7	;volatile
	line	583
;main.c: 583: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	584
	
l769:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 565 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
	line	565
global __ptext3
__ptext3:	;psect for function _pwmInit
psect	text3
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	565
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 5
; Regs used in _pwmInit: [wreg+status,2]
	line	567
	
l1704:	
;main.c: 567: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	568
;main.c: 568: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	569
	
l1706:	
;main.c: 569: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	572
	
l1708:	
;main.c: 572: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	573
;main.c: 573: PWMD3L = 45;
	movlw	low(02Dh)
	movwf	(156)^080h	;volatile
	line	574
	
l1710:	
;main.c: 574: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	576
	
l1712:	
;main.c: 576: PWMCON0 = 0X68;
	movlw	low(068h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	577
;main.c: 577: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	578
	
l766:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 268 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	268
global __ptext4
__ptext4:	;psect for function _keyCtr
psect	text4
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	268
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	270
	
l1932:	
;main.c: 270: char kclick = keyRead(0x20 & (~PORTB));
	comf	(6),w	;volatile
	andlw	020h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	271
	
l1934:	
;main.c: 271: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u1281
	goto	u1280
u1281:
	goto	l711
u1280:
	line	273
	
l1936:	
;main.c: 272: {
;main.c: 273: if(lowBatFlag == 1)
		decf	((_lowBatFlag)),w
	btfss	status,2
	goto	u1291
	goto	u1290
u1291:
	goto	l1940
u1290:
	line	275
	
l1938:	
;main.c: 274: {
;main.c: 275: lowBatHintTime = 250;
	movlw	low(0FAh)
	movwf	(_lowBatHintTime)
	line	276
;main.c: 276: }
	goto	l711
	line	279
	
l1940:	
;main.c: 277: else
;main.c: 278: {
;main.c: 279: if(++workStep > 1)
	movlw	low(02h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u1301
	goto	u1300
u1301:
	goto	l1944
u1300:
	line	281
	
l1942:	
;main.c: 280: {
;main.c: 281: workStep = 0;
	clrf	(_workStep)
	line	283
	
l1944:	
;main.c: 282: }
;main.c: 283: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u1311
	goto	u1310
u1311:
	goto	l710
u1310:
	line	285
	
l1946:	
;main.c: 284: {
;main.c: 285: cDuty = 45;
	movlw	low(02Dh)
	movwf	(_cDuty)
	line	286
	
l710:	
	line	287
;main.c: 286: }
;main.c: 287: maxDuty = 99;
	movlw	low(063h)
	movwf	(_maxDuty)
	line	290
	
l711:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 246 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
	line	246
global __ptext5
__ptext5:	;psect for function _keyRead
psect	text5
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	246
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	248
	
l1682:	
;main.c: 248: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u821
	goto	u820
u821:
	goto	l1690
u820:
	line	250
	
l1684:	
;main.c: 249: {
;main.c: 250: keyCount++;
	incf	(_keyCount),f
	line	251
	
l1686:	
;main.c: 251: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u831
	goto	u830
u831:
	goto	l1700
u830:
	line	253
	
l1688:	
;main.c: 252: {
;main.c: 253: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	goto	l1700
	line	258
	
l1690:	
;main.c: 256: else
;main.c: 257: {
;main.c: 258: if(keyCount >= 4)
	movlw	low(04h)
	subwf	(_keyCount),w
	skipc
	goto	u841
	goto	u840
u841:
	goto	l1698
u840:
	line	260
	
l1692:	
;main.c: 259: {
;main.c: 260: keyCount = 0;
	clrf	(_keyCount)
	line	261
	
l1694:	
;main.c: 261: return 1;
	movlw	low(01h)
	goto	l703
	line	263
	
l1698:	
;main.c: 262: }
;main.c: 263: keyCount = 0;
	clrf	(_keyCount)
	line	265
	
l1700:	
;main.c: 264: }
;main.c: 265: return 0;
	movlw	low(0)
	line	266
	
l703:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 164 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lbmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	164
global __ptext6
__ptext6:	;psect for function _chrgCtr
psect	text6
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	164
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	166
	
l2118:	
;main.c: 166: if(PORTB & 0x04)
	btfss	(6),(2)&7	;volatile
	goto	u1631
	goto	u1630
u1631:
	goto	l2154
u1630:
	line	168
	
l2120:	
;main.c: 167: {
;main.c: 168: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	169
	
l2122:	
;main.c: 169: workStep = 0;
	clrf	(_workStep)
	line	170
;main.c: 170: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	171
	
l2124:	
;main.c: 171: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u1641
	goto	u1640
u1641:
	goto	l2134
u1640:
	line	173
	
l2126:	
;main.c: 172: {
;main.c: 173: if(++count50s > 7200)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	01Ch
	subwf	((_count50s+1)),w
	movlw	021h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u1651
	goto	u1650
u1651:
	goto	l2132
u1650:
	line	175
	
l2128:	
;main.c: 174: {
;main.c: 175: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	176
	
l2130:	
;main.c: 176: prePwStep++;
	incf	(_prePwStep),f
	line	178
	
l2132:	
;main.c: 177: }
;main.c: 178: count300s = 0;
	clrf	(_count300s)
	clrf	(_count300s+1)
	line	179
;main.c: 179: }
	goto	l2144
	line	182
	
l2134:	
;main.c: 180: else
;main.c: 181: {
;main.c: 182: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	183
	
l2136:	
;main.c: 183: if(prePwStep < 99)
	movlw	low(063h)
	subwf	(_prePwStep),w
	skipnc
	goto	u1661
	goto	u1660
u1661:
	goto	l2144
u1660:
	line	185
	
l2138:	
;main.c: 184: {
;main.c: 185: if(++count300s > 30000)
	incf	(_count300s),f
	skipnz
	incf	(_count300s+1),f
	movlw	075h
	subwf	((_count300s+1)),w
	movlw	031h
	skipnz
	subwf	((_count300s)),w
	skipc
	goto	u1671
	goto	u1670
u1671:
	goto	l2144
u1670:
	line	187
	
l2140:	
;main.c: 186: {
;main.c: 187: count300s = 0;
	clrf	(_count300s)
	clrf	(_count300s+1)
	line	188
	
l2142:	
;main.c: 188: prePwStep++;
	incf	(_prePwStep),f
	line	192
	
l2144:	
;main.c: 189: }
;main.c: 190: }
;main.c: 191: }
;main.c: 192: if(prePwStep >= 99)
	movlw	low(063h)
	subwf	(_prePwStep),w
	skipc
	goto	u1681
	goto	u1680
u1681:
	goto	l2148
u1680:
	line	194
	
l2146:	
;main.c: 193: {
;main.c: 194: PORTB &= 0xFE;
	bcf	(6)+(0/8),(0)&7	;volatile
	line	195
;main.c: 195: PORTB |= 0x02;
	bsf	(6)+(1/8),(1)&7	;volatile
	line	196
;main.c: 196: }
	goto	l696
	line	199
	
l2148:	
;main.c: 197: else
;main.c: 198: {
;main.c: 199: if(count1s < 50)
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u1691
	goto	u1690
u1691:
	goto	l2152
u1690:
	line	201
	
l2150:	
;main.c: 200: {
;main.c: 201: PORTB &= 0xFD;
	bcf	(6)+(1/8),(1)&7	;volatile
	line	202
;main.c: 202: }
	goto	l696
	line	205
	
l2152:	
;main.c: 203: else
;main.c: 204: {
;main.c: 205: PORTB |= 0x03;
	movlw	low(03h)
	iorwf	(6),f	;volatile
	goto	l696
	line	211
	
l2154:	
;main.c: 212: chrgFullFlag = 0;
	clrf	(_chrgFlag)
	line	213
	
l2156:	
;main.c: 213: if(prePwStep > 0 && prePwStep > pwStep)
	movf	((_prePwStep)),w
	btfsc	status,2
	goto	u1701
	goto	u1700
u1701:
	goto	l2166
u1700:
	
l2158:	
	movf	(_prePwStep),w
	subwf	(_pwStep),w
	skipnc
	goto	u1711
	goto	u1710
u1711:
	goto	l2166
u1710:
	line	215
	
l2160:	
;main.c: 214: {
;main.c: 215: if(++count50s > 2000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	07h
	subwf	((_count50s+1)),w
	movlw	0D1h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u1721
	goto	u1720
u1721:
	goto	l2168
u1720:
	line	217
	
l2162:	
;main.c: 216: {
;main.c: 217: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	218
	
l2164:	
;main.c: 218: prePwStep--;
	decf	(_prePwStep),f
	goto	l2168
	line	223
	
l2166:	
;main.c: 221: else
;main.c: 222: {
;main.c: 223: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	225
	
l2168:	
;main.c: 224: }
;main.c: 225: if(lowBatHintTime > 0)
	movf	((_lowBatHintTime)),w
	btfsc	status,2
	goto	u1731
	goto	u1730
u1731:
	goto	l2152
u1730:
	line	227
	
l2170:	
;main.c: 226: {
;main.c: 227: if(lowBatHintTime % 100 > 50)
	movlw	low(064h)
	movwf	(___lbmod@divisor)
	movf	(_lowBatHintTime),w
	fcall	___lbmod
	movwf	(??_chrgCtr+0)+0
	movlw	033h
	subwf	(??_chrgCtr+0)+0,w
	skipc
	goto	u1741
	goto	u1740
u1741:
	goto	l2174
u1740:
	line	229
	
l2172:	
;main.c: 228: {
;main.c: 229: PORTB &= 0xFD;
	bcf	(6)+(1/8),(1)&7	;volatile
	line	230
;main.c: 230: }
	goto	l2176
	line	233
	
l2174:	
;main.c: 231: else
;main.c: 232: {
;main.c: 233: PORTB |= 0x03;
	movlw	low(03h)
	iorwf	(6),f	;volatile
	line	235
	
l2176:	
;main.c: 234: }
;main.c: 235: lowBatHintTime--;
	decf	(_lowBatHintTime),f
	line	242
;main.c: 236: }
	
l696:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
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
;;		_chrgCtr
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
	line	4
global __ptext7
__ptext7:	;psect for function ___lbmod
psect	text7
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
	
l1788:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l1790:	
	clrf	(___lbmod@rem)
	line	12
	
l1792:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u1005:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u1005
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l1794:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l1796:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u1011
	goto	u1010
u1011:
	goto	l1800
u1010:
	line	15
	
l1798:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l1800:	
	decfsz	(___lbmod@counter),f
	goto	u1021
	goto	u1020
u1021:
	goto	l1792
u1020:
	line	17
	
l1802:	
	movf	(___lbmod@rem),w
	line	18
	
l1069:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	_checkOutAD

;; *************** function _checkOutAD *****************
;; Defined at:
;;		line 366 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
;;      Temps:          0       1       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ADC_Sample
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	366
global __ptext8
__ptext8:	;psect for function _checkOutAD
psect	text8
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	366
	global	__size_of_checkOutAD
	__size_of_checkOutAD	equ	__end_of_checkOutAD-_checkOutAD
	
_checkOutAD:	
;incstack = 0
	opt	stack 5
; Regs used in _checkOutAD: [wreg+status,2+status,0+pclath+cstack]
	line	368
	
l2244:	
;main.c: 368: test_adc = ADC_Sample(0, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	369
	
l2246:	
;main.c: 369: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u1881
	goto	u1880
u1881:
	goto	l2250
u1880:
	line	373
	
l2248:	
;main.c: 370: {
;main.c: 371: volatile unsigned long power_temp;
;main.c: 373: out_ad = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_out_ad+1)
	movf	(_adresult),w	;volatile
	movwf	(_out_ad)
	line	374
;main.c: 374: }
	goto	l736
	line	377
	
l2250:	
;main.c: 375: else
;main.c: 376: {
;main.c: 377: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	378
;main.c: 378: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	379
	
l2252:	
;main.c: 379: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_checkOutAD+0)+0),f
	u1977:
decfsz	(??_checkOutAD+0)+0,f
	goto	u1977
	nop2
opt asmopt_pop

	line	382
	
l736:	
	return
	opt stack 0
GLOBAL	__end_of_checkOutAD
	__end_of_checkOutAD:
	signat	_checkOutAD,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 385 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	385
global __ptext9
__ptext9:	;psect for function _checkBatAD
psect	text9
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	385
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 5
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	387
	
l2180:	
;main.c: 387: test_adc = ADC_Sample(1, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(01h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	388
	
l2182:	
;main.c: 388: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u1751
	goto	u1750
u1751:
	goto	l2218
u1750:
	line	390
	
l2184:	
;main.c: 389: {
;main.c: 390: batADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_batADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_batADValue)
	line	391
;main.c: 391: if(batADValue < 1155)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	083h
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u1761
	goto	u1760
u1761:
	goto	l2202
u1760:
	line	393
	
l2186:	
;main.c: 392: {
;main.c: 393: pwStep = 0;
	clrf	(_pwStep)
	line	394
	
l2188:	
;main.c: 394: if(++count8s > 200)
	incf	(_count8s),f
	skipnz
	incf	(_count8s+1),f
	movlw	0
	subwf	((_count8s+1)),w
	movlw	0C9h
	skipnz
	subwf	((_count8s)),w
	skipc
	goto	u1771
	goto	u1770
u1771:
	goto	l2214
u1770:
	line	396
	
l2190:	
;main.c: 395: {
;main.c: 396: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	397
	
l2192:	
;main.c: 397: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	398
	
l2194:	
;main.c: 399: {
;main.c: 400: preLedStep = workStep;
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1781
	goto	u1780
u1781:
	goto	l2198
u1780:
	line	401
	
l2196:	
;main.c: 401: lowBatHintTime = 250;
	movlw	low(0FAh)
	movwf	(_lowBatHintTime)
	line	403
	
l2198:	
;main.c: 402: }
;main.c: 403: prePwStep = 0;
	clrf	(_prePwStep)
	line	404
	
l2200:	
;main.c: 404: workStep = 0;
	clrf	(_workStep)
	goto	l2222
	line	409
	
l2202:	
;main.c: 407: else
;main.c: 408: {
;main.c: 409: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	410
	
l2204:	
;main.c: 410: if(batADValue >= 1380)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	064h
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u1791
	goto	u1790
u1791:
	goto	l2208
u1790:
	line	412
	
l2206:	
;main.c: 411: {
;main.c: 412: pwStep = ((batADValue - 1380) /2) + 15;
	movf	(_batADValue),w
	addlw	low(0FA9Ch)
	movwf	(??_checkBatAD+0)+0
	movf	(_batADValue+1),w
	skipnc
	addlw	1
	addlw	high(0FA9Ch)
	movwf	1+(??_checkBatAD+0)+0
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	movf	0+(??_checkBatAD+0)+0,w
	addlw	0Fh
	movwf	(_pwStep)
	line	413
;main.c: 413: }
	goto	l2210
	line	416
	
l2208:	
;main.c: 414: else
;main.c: 415: {
;main.c: 416: pwStep = (batADValue - 1117) / 16;
	movf	(_batADValue),w
	addlw	low(0FBA3h)
	movwf	(??_checkBatAD+0)+0
	movf	(_batADValue+1),w
	skipnc
	addlw	1
	addlw	high(0FBA3h)
	movwf	1+(??_checkBatAD+0)+0
	movlw	04h
u1805:
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	addlw	-1
	skipz
	goto	u1805
	movf	0+(??_checkBatAD+0)+0,w
	movwf	(_pwStep)
	line	419
	
l2210:	
;main.c: 417: }
;main.c: 419: if(pwStep > 99)
	movlw	low(064h)
	subwf	(_pwStep),w
	skipc
	goto	u1811
	goto	u1810
u1811:
	goto	l2214
u1810:
	line	421
	
l2212:	
;main.c: 420: {
;main.c: 421: pwStep = 99;
	movlw	low(063h)
	movwf	(_pwStep)
	goto	l2222
	line	424
	
l2214:	
	goto	l2222
	line	431
	
l2218:	
;main.c: 429: else
;main.c: 430: {
;main.c: 431: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	432
;main.c: 432: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	433
	
l2220:	
;main.c: 433: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_checkBatAD+0)+0),f
	u1987:
decfsz	(??_checkBatAD+0)+0,f
	goto	u1987
	nop2
opt asmopt_pop

	line	435
	
l2222:	
;main.c: 434: }
;main.c: 435: test_adc = ADC_Sample(2, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(02h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	436
	
l2224:	
;main.c: 436: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u1821
	goto	u1820
u1821:
	goto	l2240
u1820:
	line	438
	
l2226:	
;main.c: 437: {
;main.c: 438: if(chrgFlag && adresult > 100)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u1831
	goto	u1830
u1831:
	goto	l757
u1830:
	
l2228:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	065h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u1841
	goto	u1840
u1841:
	goto	l757
u1840:
	line	441
	
l2230:	
;main.c: 439: {
;main.c: 441: if(adresult > 810 || (batADValue - adresult) > 810)
	movlw	03h
	subwf	(_adresult+1),w	;volatile
	movlw	02Bh
	skipnz
	subwf	(_adresult),w	;volatile
	skipnc
	goto	u1851
	goto	u1850
u1851:
	goto	l2234
u1850:
	
l2232:	
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
	goto	u1861
	goto	u1860
u1861:
	goto	l2236
u1860:
	line	444
	
l2234:	
;main.c: 442: {
;main.c: 444: if(++countHalfFull > 250)
	movlw	low(0FBh)
	incf	(_countHalfFull),f
	subwf	((_countHalfFull)),w
	skipc
	goto	u1871
	goto	u1870
u1871:
	goto	l750
u1870:
	line	446
	
l2236:	
;main.c: 447: protectFlag = 2;
	clrf	(_countHalfFull)
	goto	l757
	line	454
	
l750:	
	line	455
;main.c: 453: }
;main.c: 454: }
;main.c: 455: }
	goto	l757
	line	458
	
l2240:	
;main.c: 456: else
;main.c: 457: {
;main.c: 458: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	459
;main.c: 459: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	460
	
l2242:	
;main.c: 460: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_checkBatAD+0)+0),f
	u1997:
decfsz	(??_checkBatAD+0)+0,f
	goto	u1997
	nop2
opt asmopt_pop

	line	462
	
l757:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 670 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
;;		_checkOutAD
;;		_checkBatAD
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	670
global __ptext10
__ptext10:	;psect for function _ADC_Sample
psect	text10
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	670
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 5
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	672
	
l1716:	
;main.c: 672: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	673
	
l1718:	
;main.c: 673: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	674
;main.c: 674: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	676
	
l1720:	
;main.c: 676: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u851
	goto	u850
u851:
	goto	l1726
u850:
	
l1722:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u861
	goto	u860
u861:
	goto	l1726
u860:
	line	679
	
l1724:	
;main.c: 677: {
;main.c: 679: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	680
;main.c: 680: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_ADC_Sample+0)+0),f
	u2007:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u2007
opt asmopt_pop

	line	681
;main.c: 681: }
	goto	l1728
	line	683
	
l1726:	
;main.c: 682: else
;main.c: 683: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	685
	
l1728:	
;main.c: 685: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u871
	goto	u870
u871:
	goto	l1734
u870:
	line	687
	
l1730:	
;main.c: 686: {
;main.c: 687: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	688
	
l1732:	
;main.c: 688: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	690
	
l1734:	
	line	691
	
l1736:	
;main.c: 691: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	693
	
l1742:	
;main.c: 692: {
;main.c: 693: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u885:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u885
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	694
# 694 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	695
# 695 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	696
# 696 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	697
# 697 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
psect	text10
	line	698
	
l1744:	
;main.c: 698: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	700
	
l1746:	
;main.c: 700: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	701
;main.c: 701: while (GODONE)
	goto	l783
	
l784:	
	line	703
;main.c: 702: {
;main.c: 703: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	705
;main.c: 705: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u891
	goto	u890
u891:
	goto	l783
u890:
	line	706
	
l1748:	
;main.c: 706: return 0;
	movlw	low(0)
	goto	l786
	line	707
	
l783:	
	line	701
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u901
	goto	u900
u901:
	goto	l784
u900:
	line	709
	
l1752:	
;main.c: 707: }
;main.c: 709: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l1754:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	711
	
l1756:	
;main.c: 711: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u911
	goto	u910
u911:
	goto	l1760
u910:
	line	713
	
l1758:	
;main.c: 712: {
;main.c: 713: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	714
;main.c: 714: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	715
;main.c: 715: }
	goto	l789
	line	716
	
l1760:	
;main.c: 716: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u925
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u925:
	skipnc
	goto	u921
	goto	u920
u921:
	goto	l1764
u920:
	line	717
	
l1762:	
;main.c: 717: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l789
	line	718
	
l1764:	
;main.c: 718: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u935
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u935:
	skipnc
	goto	u931
	goto	u930
u931:
	goto	l789
u930:
	line	719
	
l1766:	
;main.c: 719: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	721
	
l789:	
;main.c: 721: adsum += ad_temp;
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
	goto	u941
	addwf	(ADC_Sample@adsum+1),f	;volatile
u941:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u942
	addwf	(ADC_Sample@adsum+2),f	;volatile
u942:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u943
	addwf	(ADC_Sample@adsum+3),f	;volatile
u943:

	line	691
	
l1768:	
	incf	(ADC_Sample@i),f
	
l1770:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u951
	goto	u950
u951:
	goto	l1742
u950:
	line	723
	
l1772:	
;main.c: 722: }
;main.c: 723: adsum -= admax;
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
	goto	u965
	goto	u966
u965:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u966:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u967
	goto	u968
u967:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u968:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u969
	goto	u960
u969:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u960:

	line	724
;main.c: 724: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u975
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u975
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u975
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u975:
	skipc
	goto	u971
	goto	u970
u971:
	goto	l793
u970:
	line	725
	
l1774:	
;main.c: 725: adsum -= admin;
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
	goto	u985
	goto	u986
u985:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u986:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u987
	goto	u988
u987:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u988:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u989
	goto	u980
u989:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u980:

	goto	l1776
	line	726
	
l793:	
	line	727
;main.c: 726: else
;main.c: 727: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	729
	
l1776:	
;main.c: 729: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u995:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u990:
	addlw	-1
	skipz
	goto	u995
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	731
	
l1778:	
;main.c: 731: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	732
	
l1780:	
;main.c: 732: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	733
	
l1782:	
;main.c: 733: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	734
	
l1784:	
;main.c: 734: return 0xA5;
	movlw	low(0A5h)
	line	736
	
l786:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 594 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	594
global __ptext11
__ptext11:	;psect for function _Sleep_Mode
psect	text11
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	594
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 5
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	596
	
l2020:	
;main.c: 596: INTCON = 0;
	clrf	(11)	;volatile
	line	598
;main.c: 598: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	600
	
l2022:	
;main.c: 600: TRISA = 0x07;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	601
	
l2024:	
;main.c: 601: WPUA = 0B00000000;
	clrf	(136)^080h	;volatile
	line	602
;main.c: 602: PORTA = 0x08;
	movlw	low(08h)
	movwf	(134)^080h	;volatile
	line	603
;main.c: 603: TRISB = 0x24;
	movlw	low(024h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	604
;main.c: 604: PORTB = 0x03;
	movlw	low(03h)
	movwf	(6)	;volatile
	line	605
;main.c: 605: WPUB = 0x20;
	movlw	low(020h)
	movwf	(8)	;volatile
	line	607
	
l2026:	
;main.c: 607: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	608
	
l2028:	
;main.c: 608: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	610
	
l2030:	
;main.c: 610: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	612
	
l2032:	
;main.c: 612: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	614
;main.c: 614: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	615
	
l2034:	
;main.c: 615: IOCB = 0x24;
	movlw	low(024h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	617
	
l2036:	
;main.c: 617: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	618
	
l2038:	
;main.c: 618: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	619
	
l2040:	
;main.c: 619: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	620
	
l2042:	
;main.c: 620: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	622
	
l2044:	
;main.c: 622: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	623
	
l2046:	
;main.c: 623: PIR1 = 0;
	clrf	(13)	;volatile
	line	624
	
l2048:	
;main.c: 624: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	626
;main.c: 626: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	627
	
l2050:	
;main.c: 627: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	628
;main.c: 628: PORTB;
	movf	(6),w	;volatile
	line	629
	
l2052:	
;main.c: 629: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	630
# 630 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
clrwdt ;# 
	line	632
# 632 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
sleep ;# 
	line	634
# 634 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	635
# 635 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
clrwdt ;# 
	line	636
# 636 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	637
# 637 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	638
# 638 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	639
# 639 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	640
# 640 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
psect	text11
	line	641
	
l2054:	
;main.c: 641: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u1491
	goto	u1490
u1491:
	goto	l772
u1490:
	
l2056:	
	bcf	(107/8),(107)&7	;volatile
	
l772:	
	line	642
;main.c: 642: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u1501
	goto	u1500
u1501:
	goto	l773
u1500:
	
l2058:	
	bcf	(88/8),(88)&7	;volatile
	
l773:	
	line	643
;main.c: 643: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u1511
	goto	u1510
u1511:
	goto	l2062
u1510:
	
l2060:	
	bcf	(105/8),(105)&7	;volatile
	line	644
	
l2062:	
;main.c: 644: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	645
;main.c: 645: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	646
	
l2064:	
;main.c: 646: Init_System();
	fcall	_Init_System
	line	647
	
l2066:	
;main.c: 647: AD_Init();
	fcall	_AD_Init
	line	648
	
l775:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 473 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	473
global __ptext12
__ptext12:	;psect for function _Init_System
psect	text12
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	473
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_System: [wreg+status,2]
	line	475
	
l1646:	
# 475 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	476
# 476 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
clrwdt ;# 
psect	text12
	line	477
	
l1648:	
;main.c: 477: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	478
# 478 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
clrwdt ;# 
psect	text12
	line	479
	
l1650:	
;main.c: 479: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	481
	
l1652:	
;main.c: 481: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	482
	
l1654:	
;main.c: 482: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	483
	
l1656:	
;main.c: 483: WPUB = 0x20;
	movlw	low(020h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	485
	
l1658:	
;main.c: 485: TRISA = 0x07;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	486
	
l1660:	
;main.c: 486: TRISB = 0x24;
	movlw	low(024h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	488
	
l1662:	
;main.c: 488: PORTA = 0X08;
	movlw	low(08h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	489
	
l1664:	
;main.c: 489: PORTB = 0X03;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	493
	
l1666:	
;main.c: 493: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	494
	
l1668:	
;main.c: 494: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	495
	
l1670:	
;main.c: 495: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	497
	
l1672:	
;main.c: 497: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	498
	
l1674:	
;main.c: 498: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	499
	
l760:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 510 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	510
global __ptext13
__ptext13:	;psect for function _AD_Init
psect	text13
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	510
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 5
; Regs used in _AD_Init: [wreg+status,2]
	line	543
	
l1676:	
;main.c: 543: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	560
	
l1678:	
;main.c: 560: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	561
	
l1680:	
;main.c: 561: ANSEL0 = 0X07;
	movlw	low(07h)
	movwf	(147)^080h	;volatile
	line	562
	
l763:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 106 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	106
global __ptext14
__ptext14:	;psect for function _Isr_Timer
psect	text14
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	106
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
psect	text14
	line	108
	
i1l2068:	
;main.c: 108: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u152_21
	goto	u152_20
u152_21:
	goto	i1l662
u152_20:
	line	110
	
i1l2070:	
;main.c: 109: {
;main.c: 110: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	111
	
i1l2072:	
;main.c: 111: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u153_21
	goto	u153_20
u153_21:
	goto	i1l662
u153_20:
	line	113
	
i1l2074:	
;main.c: 112: {
;main.c: 113: intCount = 0;
	clrf	(_intCount)
	line	114
	
i1l2076:	
;main.c: 114: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	115
	
i1l2078:	
;main.c: 115: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u154_21
	goto	u154_20
u154_21:
	goto	i1l662
u154_20:
	line	117
	
i1l2080:	
;main.c: 116: {
;main.c: 117: count1s = 0;
	clrf	(_count1s)
	line	123
	
i1l662:	
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
