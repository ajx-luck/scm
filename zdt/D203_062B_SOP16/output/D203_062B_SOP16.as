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
;!    BSS         33
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      12
;!    BANK0            80     15      44
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
;!BANK0               50      F      2C       4       55.0%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      38       7        0.0%
;!DATA                 0      0      38       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 128 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
	line	128
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	128
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	130
	
l2220:	
;main.c: 130: Init_System();
	fcall	_Init_System
	line	131
;main.c: 131: AD_Init();
	fcall	_AD_Init
	line	132
	
l2222:	
;main.c: 132: firstTime = 100;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_firstTime)
	line	133
;main.c: 133: while (1)
	
l665:	
	line	135
# 135 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
clrwdt ;# 
psect	maintext
	line	136
	
l2224:	
;main.c: 136: if(!IntFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u1831
	goto	u1830
u1831:
	goto	l2228
u1830:
	goto	l665
	line	138
	
l2228:	
;main.c: 138: IntFlag = 0;
	clrf	(_IntFlag)
	line	139
	
l2230:	
;main.c: 139: chrgCtr();
	fcall	_chrgCtr
	line	140
	
l2232:	
;main.c: 140: checkBatAD();
	fcall	_checkBatAD
	line	141
	
l2234:	
;main.c: 141: if(chrgFlag == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u1841
	goto	u1840
u1841:
	goto	l668
u1840:
	line	143
	
l2236:	
;main.c: 142: {
;main.c: 143: keyCtr();
	fcall	_keyCtr
	line	144
	
l668:	
	line	145
;main.c: 144: }
;main.c: 145: workCtr();
	fcall	_workCtr
	line	146
;main.c: 146: checkOutAD();
	fcall	_checkOutAD
	line	147
	
l2238:	
;main.c: 147: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && lowBatHintTime == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u1851
	goto	u1850
u1851:
	goto	l2254
u1850:
	
l2240:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u1861
	goto	u1860
u1861:
	goto	l2254
u1860:
	
l2242:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u1871
	goto	u1870
u1871:
	goto	l2254
u1870:
	
l2244:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u1881
	goto	u1880
u1881:
	goto	l2254
u1880:
	
l2246:	
	movf	((_lowBatHintTime)),w
	btfss	status,2
	goto	u1891
	goto	u1890
u1891:
	goto	l2254
u1890:
	line	149
	
l2248:	
;main.c: 148: {
;main.c: 149: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u1901
	goto	u1900
u1901:
	goto	l665
u1900:
	line	151
	
l2250:	
;main.c: 150: {
;main.c: 151: sleepTime = 0;
	clrf	(_sleepTime)
	line	152
	
l2252:	
;main.c: 152: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l665
	line	157
	
l2254:	
;main.c: 155: else
;main.c: 156: {
;main.c: 157: sleepTime = 0;
	clrf	(_sleepTime)
	goto	l665
	global	start
	ljmp	start
	opt stack 0
	line	160
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 282 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
	line	282
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	282
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	284
	
l1924:	
;main.c: 284: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u1281
	goto	u1280
u1281:
	goto	l1932
u1280:
	line	286
	
l1926:	
;main.c: 285: {
;main.c: 286: firstTime--;
	decf	(_firstTime),f
	line	287
	
l1928:	
;main.c: 287: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u1291
	goto	u1290
u1291:
	goto	l1932
u1290:
	line	289
	
l1930:	
;main.c: 288: {
;main.c: 289: prePwStep = pwStep;
	movf	(_pwStep),w
	movwf	(_prePwStep)
	line	292
	
l1932:	
;main.c: 290: }
;main.c: 291: }
;main.c: 292: if(++count2 > 2)
	movlw	low(03h)
	incf	(_count2),f
	subwf	((_count2)),w
	skipc
	goto	u1301
	goto	u1300
u1301:
	goto	l712
u1300:
	line	294
	
l1934:	
;main.c: 293: {
;main.c: 294: count2 = 0;
	clrf	(_count2)
	line	295
	
l1936:	
;main.c: 295: if(workStep > 0 && maxDuty >= 45)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1311
	goto	u1310
u1311:
	goto	l712
u1310:
	
l1938:	
	movlw	low(02Dh)
	subwf	(_maxDuty),w
	skipc
	goto	u1321
	goto	u1320
u1321:
	goto	l712
u1320:
	line	297
	
l1940:	
;main.c: 296: {
;main.c: 297: if(cDuty > maxDuty)
	movf	(_cDuty),w
	subwf	(_maxDuty),w
	skipnc
	goto	u1331
	goto	u1330
u1331:
	goto	l1946
u1330:
	line	299
	
l1942:	
;main.c: 298: {
;main.c: 299: cDuty--;
	decf	(_cDuty),f
	line	300
	
l1944:	
;main.c: 300: PWMD3L = cDuty;
	movf	(_cDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	301
;main.c: 301: }
	goto	l712
	line	302
	
l1946:	
;main.c: 302: else if(cDuty < maxDuty)
	movf	(_maxDuty),w
	subwf	(_cDuty),w
	skipnc
	goto	u1341
	goto	u1340
u1341:
	goto	l712
u1340:
	line	304
	
l1948:	
;main.c: 303: {
;main.c: 304: cDuty++;
	incf	(_cDuty),f
	goto	l1944
	line	309
	
l712:	
	line	310
;main.c: 306: }
;main.c: 307: }
;main.c: 309: }
;main.c: 310: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1351
	goto	u1350
u1351:
	goto	l717
u1350:
	line	313
	
l1952:	
;main.c: 311: {
;main.c: 313: PORTB |= 0x03;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(6),f	;volatile
	line	314
	
l1954:	
;main.c: 314: PORTA &= 0xF7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(3/8),(3)&7	;volatile
	line	315
	
l1956:	
;main.c: 315: if(out_ad > 450)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_out_ad+1),w
	movlw	0C3h
	skipnz
	subwf	(_out_ad),w
	skipc
	goto	u1361
	goto	u1360
u1361:
	goto	l1962
u1360:
	line	317
	
l1958:	
;main.c: 316: {
;main.c: 317: if(++overTime > 10)
	movlw	low(0Bh)
	incf	(_overTime),f
	subwf	((_overTime)),w
	skipc
	goto	u1371
	goto	u1370
u1371:
	goto	l1964
u1370:
	line	319
	
l1960:	
;main.c: 318: {
;main.c: 319: overTime = 0;
	clrf	(_overTime)
	line	320
;main.c: 320: workStep = 0;
	clrf	(_workStep)
	goto	l1964
	line	325
	
l1962:	
;main.c: 323: else
;main.c: 324: {
;main.c: 325: overTime = 0;
	clrf	(_overTime)
	line	327
	
l1964:	
;main.c: 326: }
;main.c: 327: if((PWMCON0 & 0x08) == 0)
	btfsc	(21),(3)&7	;volatile
	goto	u1381
	goto	u1380
u1381:
	goto	l1968
u1380:
	line	329
	
l1966:	
;main.c: 328: {
;main.c: 329: pwmInit();
	fcall	_pwmInit
	line	331
	
l1968:	
;main.c: 330: }
;main.c: 331: if(count1s == 0 && ++count900s >= 900)
	movf	((_count1s)),w
	btfss	status,2
	goto	u1391
	goto	u1390
u1391:
	goto	l727
u1390:
	
l1970:	
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	movlw	03h
	subwf	((_count900s+1)),w
	movlw	084h
	skipnz
	subwf	((_count900s)),w
	skipc
	goto	u1401
	goto	u1400
u1401:
	goto	l727
u1400:
	line	333
	
l1972:	
;main.c: 332: {
;main.c: 333: workStep = 0;
	clrf	(_workStep)
	goto	l727
	line	336
	
l717:	
	line	338
;main.c: 336: else
;main.c: 337: {
;main.c: 338: PORTA |= 0x08;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(3/8),(3)&7	;volatile
	line	339
	
l1974:	
;main.c: 339: if(chrgFlag == 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u1411
	goto	u1410
u1411:
	goto	l724
u1410:
	line	341
	
l1976:	
;main.c: 340: {
;main.c: 341: PORTB |= 0x03;
	movlw	low(03h)
	iorwf	(6),f	;volatile
	line	342
	
l724:	
	line	343
;main.c: 342: }
;main.c: 343: if(cDuty > 0)
	movf	((_cDuty)),w
	btfsc	status,2
	goto	u1421
	goto	u1420
u1421:
	goto	l1984
u1420:
	line	345
	
l1978:	
;main.c: 344: {
;main.c: 345: if(--cDuty == 0)
	decfsz	(_cDuty),f
	goto	u1431
	goto	u1430
u1431:
	goto	l1982
u1430:
	line	347
	
l1980:	
;main.c: 346: {
;main.c: 347: pwmStop();
	fcall	_pwmStop
	line	349
	
l1982:	
;main.c: 348: }
;main.c: 349: PWMD3L = cDuty;
	movf	(_cDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	351
	
l1984:	
;main.c: 350: }
;main.c: 351: count900s = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	353
	
l727:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmStop

;; *************** function _pwmStop *****************
;; Defined at:
;;		line 569 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
	line	569
global __ptext2
__ptext2:	;psect for function _pwmStop
psect	text2
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	569
	global	__size_of_pwmStop
	__size_of_pwmStop	equ	__end_of_pwmStop-_pwmStop
	
_pwmStop:	
;incstack = 0
	opt	stack 5
; Regs used in _pwmStop: []
	line	571
	
l1700:	
;main.c: 571: PWMCON0 &= 0XF7;
	bcf	(21)+(3/8),(3)&7	;volatile
	line	572
;main.c: 572: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	573
	
l765:	
	return
	opt stack 0
GLOBAL	__end_of_pwmStop
	__end_of_pwmStop:
	signat	_pwmStop,89
	global	_pwmInit

;; *************** function _pwmInit *****************
;; Defined at:
;;		line 554 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
	line	554
global __ptext3
__ptext3:	;psect for function _pwmInit
psect	text3
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	554
	global	__size_of_pwmInit
	__size_of_pwmInit	equ	__end_of_pwmInit-_pwmInit
	
_pwmInit:	
;incstack = 0
	opt	stack 5
; Regs used in _pwmInit: [wreg+status,2]
	line	556
	
l1690:	
;main.c: 556: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	557
;main.c: 557: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	558
	
l1692:	
;main.c: 558: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	561
	
l1694:	
;main.c: 561: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	562
;main.c: 562: PWMD3L = 45;
	movlw	low(02Dh)
	movwf	(156)^080h	;volatile
	line	563
	
l1696:	
;main.c: 563: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	565
	
l1698:	
;main.c: 565: PWMCON0 = 0X68;
	movlw	low(068h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	566
;main.c: 566: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	567
	
l762:	
	return
	opt stack 0
GLOBAL	__end_of_pwmInit
	__end_of_pwmInit:
	signat	_pwmInit,89
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 258 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
	line	258
global __ptext4
__ptext4:	;psect for function _keyCtr
psect	text4
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	258
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	260
	
l1908:	
;main.c: 260: char kclick = keyRead(0x20 & (~PORTB));
	comf	(6),w	;volatile
	andlw	020h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	261
	
l1910:	
;main.c: 261: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u1241
	goto	u1240
u1241:
	goto	l707
u1240:
	line	263
	
l1912:	
;main.c: 262: {
;main.c: 263: if(lowBatFlag == 1)
		decf	((_lowBatFlag)),w
	btfss	status,2
	goto	u1251
	goto	u1250
u1251:
	goto	l1916
u1250:
	line	265
	
l1914:	
;main.c: 264: {
;main.c: 265: lowBatHintTime = 250;
	movlw	low(0FAh)
	movwf	(_lowBatHintTime)
	line	266
;main.c: 266: }
	goto	l707
	line	269
	
l1916:	
;main.c: 267: else
;main.c: 268: {
;main.c: 269: if(++workStep > 1)
	movlw	low(02h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u1261
	goto	u1260
u1261:
	goto	l1920
u1260:
	line	271
	
l1918:	
;main.c: 270: {
;main.c: 271: workStep = 0;
	clrf	(_workStep)
	line	273
	
l1920:	
;main.c: 272: }
;main.c: 273: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u1271
	goto	u1270
u1271:
	goto	l706
u1270:
	line	275
	
l1922:	
;main.c: 274: {
;main.c: 275: cDuty = 45;
	movlw	low(02Dh)
	movwf	(_cDuty)
	line	276
	
l706:	
	line	277
;main.c: 276: }
;main.c: 277: maxDuty = 99;
	movlw	low(063h)
	movwf	(_maxDuty)
	line	280
	
l707:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 236 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
	line	236
global __ptext5
__ptext5:	;psect for function _keyRead
psect	text5
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	236
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	238
	
l1668:	
;main.c: 238: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u801
	goto	u800
u801:
	goto	l1676
u800:
	line	240
	
l1670:	
;main.c: 239: {
;main.c: 240: keyCount++;
	incf	(_keyCount),f
	line	241
	
l1672:	
;main.c: 241: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u811
	goto	u810
u811:
	goto	l1686
u810:
	line	243
	
l1674:	
;main.c: 242: {
;main.c: 243: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	goto	l1686
	line	248
	
l1676:	
;main.c: 246: else
;main.c: 247: {
;main.c: 248: if(keyCount >= 4)
	movlw	low(04h)
	subwf	(_keyCount),w
	skipc
	goto	u821
	goto	u820
u821:
	goto	l1684
u820:
	line	250
	
l1678:	
;main.c: 249: {
;main.c: 250: keyCount = 0;
	clrf	(_keyCount)
	line	251
	
l1680:	
;main.c: 251: return 1;
	movlw	low(01h)
	goto	l699
	line	253
	
l1684:	
;main.c: 252: }
;main.c: 253: keyCount = 0;
	clrf	(_keyCount)
	line	255
	
l1686:	
;main.c: 254: }
;main.c: 255: return 0;
	movlw	low(0)
	line	256
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 163 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
	line	163
global __ptext6
__ptext6:	;psect for function _chrgCtr
psect	text6
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	163
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	165
	
l2094:	
;main.c: 165: if(PORTB & 0x04)
	btfss	(6),(2)&7	;volatile
	goto	u1591
	goto	u1590
u1591:
	goto	l2120
u1590:
	line	167
	
l2096:	
;main.c: 166: {
;main.c: 167: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	168
	
l2098:	
;main.c: 168: workStep = 0;
	clrf	(_workStep)
	line	169
;main.c: 169: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	170
	
l2100:	
;main.c: 170: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u1601
	goto	u1600
u1601:
	goto	l2108
u1600:
	line	172
	
l2102:	
;main.c: 171: {
;main.c: 172: if(++count50s > 7200)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	01Ch
	subwf	((_count50s+1)),w
	movlw	021h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u1611
	goto	u1610
u1611:
	goto	l2110
u1610:
	line	174
	
l2104:	
;main.c: 173: {
;main.c: 174: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	175
	
l2106:	
;main.c: 175: prePwStep++;
	incf	(_prePwStep),f
	goto	l2110
	line	180
	
l2108:	
;main.c: 178: else
;main.c: 179: {
;main.c: 180: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	182
	
l2110:	
;main.c: 181: }
;main.c: 182: if(prePwStep >= 99)
	movlw	low(063h)
	subwf	(_prePwStep),w
	skipc
	goto	u1621
	goto	u1620
u1621:
	goto	l2114
u1620:
	line	184
	
l2112:	
;main.c: 183: {
;main.c: 184: PORTB &= 0xFE;
	bcf	(6)+(0/8),(0)&7	;volatile
	line	185
;main.c: 185: PORTB |= 0x02;
	bsf	(6)+(1/8),(1)&7	;volatile
	line	186
;main.c: 186: }
	goto	l692
	line	189
	
l2114:	
;main.c: 187: else
;main.c: 188: {
;main.c: 189: if(count1s < 50)
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u1631
	goto	u1630
u1631:
	goto	l2118
u1630:
	line	191
	
l2116:	
;main.c: 190: {
;main.c: 191: PORTB &= 0xFD;
	bcf	(6)+(1/8),(1)&7	;volatile
	line	192
;main.c: 192: }
	goto	l692
	line	195
	
l2118:	
;main.c: 193: else
;main.c: 194: {
;main.c: 195: PORTB |= 0x03;
	movlw	low(03h)
	iorwf	(6),f	;volatile
	goto	l692
	line	201
	
l2120:	
;main.c: 202: chrgFullFlag = 0;
	clrf	(_chrgFlag)
	line	203
	
l2122:	
;main.c: 203: if(prePwStep > 0 && prePwStep > pwStep)
	movf	((_prePwStep)),w
	btfsc	status,2
	goto	u1641
	goto	u1640
u1641:
	goto	l2132
u1640:
	
l2124:	
	movf	(_prePwStep),w
	subwf	(_pwStep),w
	skipnc
	goto	u1651
	goto	u1650
u1651:
	goto	l2132
u1650:
	line	205
	
l2126:	
;main.c: 204: {
;main.c: 205: if(++count50s > 2000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	07h
	subwf	((_count50s+1)),w
	movlw	0D1h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u1661
	goto	u1660
u1661:
	goto	l2134
u1660:
	line	207
	
l2128:	
;main.c: 206: {
;main.c: 207: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	208
	
l2130:	
;main.c: 208: prePwStep--;
	decf	(_prePwStep),f
	goto	l2134
	line	213
	
l2132:	
;main.c: 211: else
;main.c: 212: {
;main.c: 213: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	215
	
l2134:	
;main.c: 214: }
;main.c: 215: if(lowBatHintTime > 0)
	movf	((_lowBatHintTime)),w
	btfsc	status,2
	goto	u1671
	goto	u1670
u1671:
	goto	l2118
u1670:
	line	217
	
l2136:	
;main.c: 216: {
;main.c: 217: if(lowBatHintTime % 100 > 50)
	movlw	low(064h)
	movwf	(___lbmod@divisor)
	movf	(_lowBatHintTime),w
	fcall	___lbmod
	movwf	(??_chrgCtr+0)+0
	movlw	033h
	subwf	(??_chrgCtr+0)+0,w
	skipc
	goto	u1681
	goto	u1680
u1681:
	goto	l2140
u1680:
	line	219
	
l2138:	
;main.c: 218: {
;main.c: 219: PORTB &= 0xFD;
	bcf	(6)+(1/8),(1)&7	;volatile
	line	220
;main.c: 220: }
	goto	l2142
	line	223
	
l2140:	
;main.c: 221: else
;main.c: 222: {
;main.c: 223: PORTB |= 0x03;
	movlw	low(03h)
	iorwf	(6),f	;volatile
	line	225
	
l2142:	
;main.c: 224: }
;main.c: 225: lowBatHintTime--;
	decf	(_lowBatHintTime),f
	line	232
;main.c: 226: }
	
l692:	
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
	
l1774:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l1776:	
	clrf	(___lbmod@rem)
	line	12
	
l1778:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u985:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u985
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l1780:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l1782:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u991
	goto	u990
u991:
	goto	l1786
u990:
	line	15
	
l1784:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l1786:	
	decfsz	(___lbmod@counter),f
	goto	u1001
	goto	u1000
u1001:
	goto	l1778
u1000:
	line	17
	
l1788:	
	movf	(___lbmod@rem),w
	line	18
	
l1065:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	_checkOutAD

;; *************** function _checkOutAD *****************
;; Defined at:
;;		line 356 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
	line	356
global __ptext8
__ptext8:	;psect for function _checkOutAD
psect	text8
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	356
	global	__size_of_checkOutAD
	__size_of_checkOutAD	equ	__end_of_checkOutAD-_checkOutAD
	
_checkOutAD:	
;incstack = 0
	opt	stack 5
; Regs used in _checkOutAD: [wreg+status,2+status,0+pclath+cstack]
	line	358
	
l2210:	
;main.c: 358: test_adc = ADC_Sample(0, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	359
	
l2212:	
;main.c: 359: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u1821
	goto	u1820
u1821:
	goto	l2216
u1820:
	line	363
	
l2214:	
;main.c: 360: {
;main.c: 361: volatile unsigned long power_temp;
;main.c: 363: out_ad = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_out_ad+1)
	movf	(_adresult),w	;volatile
	movwf	(_out_ad)
	line	364
;main.c: 364: }
	goto	l732
	line	367
	
l2216:	
;main.c: 365: else
;main.c: 366: {
;main.c: 367: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	368
;main.c: 368: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	369
	
l2218:	
;main.c: 369: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_checkOutAD+0)+0),f
	u1917:
decfsz	(??_checkOutAD+0)+0,f
	goto	u1917
	nop2
opt asmopt_pop

	line	372
	
l732:	
	return
	opt stack 0
GLOBAL	__end_of_checkOutAD
	__end_of_checkOutAD:
	signat	_checkOutAD,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 375 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
	line	375
global __ptext9
__ptext9:	;psect for function _checkBatAD
psect	text9
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	375
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 5
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	377
	
l2146:	
;main.c: 377: test_adc = ADC_Sample(1, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(01h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	378
	
l2148:	
;main.c: 378: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u1691
	goto	u1690
u1691:
	goto	l2184
u1690:
	line	380
	
l2150:	
;main.c: 379: {
;main.c: 380: batADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_batADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_batADValue)
	line	381
;main.c: 381: if(batADValue < 1155)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	083h
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u1701
	goto	u1700
u1701:
	goto	l2168
u1700:
	line	383
	
l2152:	
;main.c: 382: {
;main.c: 383: pwStep = 0;
	clrf	(_pwStep)
	line	384
	
l2154:	
;main.c: 384: if(++count8s > 200)
	incf	(_count8s),f
	skipnz
	incf	(_count8s+1),f
	movlw	0
	subwf	((_count8s+1)),w
	movlw	0C9h
	skipnz
	subwf	((_count8s)),w
	skipc
	goto	u1711
	goto	u1710
u1711:
	goto	l2180
u1710:
	line	386
	
l2156:	
;main.c: 385: {
;main.c: 386: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	387
	
l2158:	
;main.c: 387: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	388
	
l2160:	
;main.c: 389: {
;main.c: 390: preLedStep = workStep;
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1721
	goto	u1720
u1721:
	goto	l2164
u1720:
	line	391
	
l2162:	
;main.c: 391: lowBatHintTime = 250;
	movlw	low(0FAh)
	movwf	(_lowBatHintTime)
	line	393
	
l2164:	
;main.c: 392: }
;main.c: 393: prePwStep = 0;
	clrf	(_prePwStep)
	line	394
	
l2166:	
;main.c: 394: workStep = 0;
	clrf	(_workStep)
	goto	l2188
	line	399
	
l2168:	
;main.c: 397: else
;main.c: 398: {
;main.c: 399: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	400
	
l2170:	
;main.c: 400: if(batADValue >= 1340)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	03Ch
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u1731
	goto	u1730
u1731:
	goto	l2174
u1730:
	line	402
	
l2172:	
;main.c: 401: {
;main.c: 402: pwStep = ((batADValue - 1340) /2) + 13;
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
	line	403
;main.c: 403: }
	goto	l2176
	line	406
	
l2174:	
;main.c: 404: else
;main.c: 405: {
;main.c: 406: pwStep = (batADValue - 1117) / 16;
	movf	(_batADValue),w
	addlw	low(0FBA3h)
	movwf	(??_checkBatAD+0)+0
	movf	(_batADValue+1),w
	skipnc
	addlw	1
	addlw	high(0FBA3h)
	movwf	1+(??_checkBatAD+0)+0
	movlw	04h
u1745:
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	addlw	-1
	skipz
	goto	u1745
	movf	0+(??_checkBatAD+0)+0,w
	movwf	(_pwStep)
	line	408
	
l2176:	
;main.c: 407: }
;main.c: 408: if(pwStep > 99)
	movlw	low(064h)
	subwf	(_pwStep),w
	skipc
	goto	u1751
	goto	u1750
u1751:
	goto	l2180
u1750:
	line	410
	
l2178:	
;main.c: 409: {
;main.c: 410: pwStep = 99;
	movlw	low(063h)
	movwf	(_pwStep)
	goto	l2188
	line	413
	
l2180:	
	goto	l2188
	line	420
	
l2184:	
;main.c: 418: else
;main.c: 419: {
;main.c: 420: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	421
;main.c: 421: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	422
	
l2186:	
;main.c: 422: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_checkBatAD+0)+0),f
	u1927:
decfsz	(??_checkBatAD+0)+0,f
	goto	u1927
	nop2
opt asmopt_pop

	line	424
	
l2188:	
;main.c: 423: }
;main.c: 424: test_adc = ADC_Sample(2, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(02h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	425
	
l2190:	
;main.c: 425: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u1761
	goto	u1760
u1761:
	goto	l2206
u1760:
	line	427
	
l2192:	
;main.c: 426: {
;main.c: 427: if(chrgFlag && adresult > 100)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u1771
	goto	u1770
u1771:
	goto	l753
u1770:
	
l2194:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	065h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u1781
	goto	u1780
u1781:
	goto	l753
u1780:
	line	430
	
l2196:	
;main.c: 428: {
;main.c: 430: if(adresult > 810 || (batADValue - adresult) > 810)
	movlw	03h
	subwf	(_adresult+1),w	;volatile
	movlw	02Bh
	skipnz
	subwf	(_adresult),w	;volatile
	skipnc
	goto	u1791
	goto	u1790
u1791:
	goto	l2200
u1790:
	
l2198:	
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
	goto	u1801
	goto	u1800
u1801:
	goto	l2202
u1800:
	line	433
	
l2200:	
;main.c: 431: {
;main.c: 433: if(++countHalfFull > 250)
	movlw	low(0FBh)
	incf	(_countHalfFull),f
	subwf	((_countHalfFull)),w
	skipc
	goto	u1811
	goto	u1810
u1811:
	goto	l746
u1810:
	line	435
	
l2202:	
;main.c: 436: protectFlag = 2;
	clrf	(_countHalfFull)
	goto	l753
	line	443
	
l746:	
	line	444
;main.c: 442: }
;main.c: 443: }
;main.c: 444: }
	goto	l753
	line	447
	
l2206:	
;main.c: 445: else
;main.c: 446: {
;main.c: 447: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	448
;main.c: 448: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	449
	
l2208:	
;main.c: 449: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_checkBatAD+0)+0),f
	u1937:
decfsz	(??_checkBatAD+0)+0,f
	goto	u1937
	nop2
opt asmopt_pop

	line	451
	
l753:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 659 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
	line	659
global __ptext10
__ptext10:	;psect for function _ADC_Sample
psect	text10
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	659
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 5
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	661
	
l1702:	
;main.c: 661: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	662
	
l1704:	
;main.c: 662: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	663
;main.c: 663: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	665
	
l1706:	
;main.c: 665: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u831
	goto	u830
u831:
	goto	l1712
u830:
	
l1708:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u841
	goto	u840
u841:
	goto	l1712
u840:
	line	668
	
l1710:	
;main.c: 666: {
;main.c: 668: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	669
;main.c: 669: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_ADC_Sample+0)+0),f
	u1947:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u1947
opt asmopt_pop

	line	670
;main.c: 670: }
	goto	l1714
	line	672
	
l1712:	
;main.c: 671: else
;main.c: 672: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	674
	
l1714:	
;main.c: 674: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u851
	goto	u850
u851:
	goto	l1720
u850:
	line	676
	
l1716:	
;main.c: 675: {
;main.c: 676: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	677
	
l1718:	
;main.c: 677: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	679
	
l1720:	
	line	680
	
l1722:	
;main.c: 680: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	682
	
l1728:	
;main.c: 681: {
;main.c: 682: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u865:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u865
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	683
# 683 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	684
# 684 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	685
# 685 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	686
# 686 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
psect	text10
	line	687
	
l1730:	
;main.c: 687: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	689
	
l1732:	
;main.c: 689: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	690
;main.c: 690: while (GODONE)
	goto	l779
	
l780:	
	line	692
;main.c: 691: {
;main.c: 692: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	694
;main.c: 694: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u871
	goto	u870
u871:
	goto	l779
u870:
	line	695
	
l1734:	
;main.c: 695: return 0;
	movlw	low(0)
	goto	l782
	line	696
	
l779:	
	line	690
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u881
	goto	u880
u881:
	goto	l780
u880:
	line	698
	
l1738:	
;main.c: 696: }
;main.c: 698: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l1740:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	700
	
l1742:	
;main.c: 700: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u891
	goto	u890
u891:
	goto	l1746
u890:
	line	702
	
l1744:	
;main.c: 701: {
;main.c: 702: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	703
;main.c: 703: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	704
;main.c: 704: }
	goto	l785
	line	705
	
l1746:	
;main.c: 705: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u905
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u905:
	skipnc
	goto	u901
	goto	u900
u901:
	goto	l1750
u900:
	line	706
	
l1748:	
;main.c: 706: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l785
	line	707
	
l1750:	
;main.c: 707: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u915
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u915:
	skipnc
	goto	u911
	goto	u910
u911:
	goto	l785
u910:
	line	708
	
l1752:	
;main.c: 708: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	710
	
l785:	
;main.c: 710: adsum += ad_temp;
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
	goto	u921
	addwf	(ADC_Sample@adsum+1),f	;volatile
u921:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u922
	addwf	(ADC_Sample@adsum+2),f	;volatile
u922:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u923
	addwf	(ADC_Sample@adsum+3),f	;volatile
u923:

	line	680
	
l1754:	
	incf	(ADC_Sample@i),f
	
l1756:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u931
	goto	u930
u931:
	goto	l1728
u930:
	line	712
	
l1758:	
;main.c: 711: }
;main.c: 712: adsum -= admax;
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
	goto	u945
	goto	u946
u945:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u946:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u947
	goto	u948
u947:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u948:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u949
	goto	u940
u949:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u940:

	line	713
;main.c: 713: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u955
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u955
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u955
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u955:
	skipc
	goto	u951
	goto	u950
u951:
	goto	l789
u950:
	line	714
	
l1760:	
;main.c: 714: adsum -= admin;
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

	goto	l1762
	line	715
	
l789:	
	line	716
;main.c: 715: else
;main.c: 716: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	718
	
l1762:	
;main.c: 718: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u975:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u970:
	addlw	-1
	skipz
	goto	u975
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	720
	
l1764:	
;main.c: 720: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	721
	
l1766:	
;main.c: 721: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	722
	
l1768:	
;main.c: 722: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	723
	
l1770:	
;main.c: 723: return 0xA5;
	movlw	low(0A5h)
	line	725
	
l782:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 583 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
	line	583
global __ptext11
__ptext11:	;psect for function _Sleep_Mode
psect	text11
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	583
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 5
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	585
	
l1996:	
;main.c: 585: INTCON = 0;
	clrf	(11)	;volatile
	line	587
;main.c: 587: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	589
	
l1998:	
;main.c: 589: TRISA = 0x07;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	590
	
l2000:	
;main.c: 590: WPUA = 0B00000000;
	clrf	(136)^080h	;volatile
	line	591
;main.c: 591: PORTA = 0x08;
	movlw	low(08h)
	movwf	(134)^080h	;volatile
	line	592
;main.c: 592: TRISB = 0x24;
	movlw	low(024h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	593
;main.c: 593: PORTB = 0x03;
	movlw	low(03h)
	movwf	(6)	;volatile
	line	594
;main.c: 594: WPUB = 0x20;
	movlw	low(020h)
	movwf	(8)	;volatile
	line	596
	
l2002:	
;main.c: 596: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	597
	
l2004:	
;main.c: 597: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	599
	
l2006:	
;main.c: 599: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	601
	
l2008:	
;main.c: 601: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	603
;main.c: 603: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	604
	
l2010:	
;main.c: 604: IOCB = 0x24;
	movlw	low(024h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	606
	
l2012:	
;main.c: 606: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	607
	
l2014:	
;main.c: 607: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	608
	
l2016:	
;main.c: 608: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	609
	
l2018:	
;main.c: 609: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	611
	
l2020:	
;main.c: 611: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	612
	
l2022:	
;main.c: 612: PIR1 = 0;
	clrf	(13)	;volatile
	line	613
	
l2024:	
;main.c: 613: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	615
;main.c: 615: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	616
	
l2026:	
;main.c: 616: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	617
;main.c: 617: PORTB;
	movf	(6),w	;volatile
	line	618
	
l2028:	
;main.c: 618: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	619
# 619 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
clrwdt ;# 
	line	621
# 621 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
sleep ;# 
	line	623
# 623 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	624
# 624 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
clrwdt ;# 
	line	625
# 625 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	626
# 626 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	627
# 627 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	628
# 628 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	629
# 629 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
psect	text11
	line	630
	
l2030:	
;main.c: 630: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u1451
	goto	u1450
u1451:
	goto	l768
u1450:
	
l2032:	
	bcf	(107/8),(107)&7	;volatile
	
l768:	
	line	631
;main.c: 631: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u1461
	goto	u1460
u1461:
	goto	l769
u1460:
	
l2034:	
	bcf	(88/8),(88)&7	;volatile
	
l769:	
	line	632
;main.c: 632: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u1471
	goto	u1470
u1471:
	goto	l2038
u1470:
	
l2036:	
	bcf	(105/8),(105)&7	;volatile
	line	633
	
l2038:	
;main.c: 633: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	634
;main.c: 634: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	635
	
l2040:	
;main.c: 635: Init_System();
	fcall	_Init_System
	line	636
	
l2042:	
;main.c: 636: AD_Init();
	fcall	_AD_Init
	line	637
	
l771:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 462 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
	line	462
global __ptext12
__ptext12:	;psect for function _Init_System
psect	text12
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	462
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_System: [wreg+status,2]
	line	464
	
l1632:	
# 464 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
nop ;# 
	line	465
# 465 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
clrwdt ;# 
psect	text12
	line	466
	
l1634:	
;main.c: 466: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	467
# 467 "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
clrwdt ;# 
psect	text12
	line	468
	
l1636:	
;main.c: 468: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	470
	
l1638:	
;main.c: 470: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(136)^080h	;volatile
	line	471
	
l1640:	
;main.c: 471: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	472
	
l1642:	
;main.c: 472: WPUB = 0x20;
	movlw	low(020h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	474
	
l1644:	
;main.c: 474: TRISA = 0x07;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	475
	
l1646:	
;main.c: 475: TRISB = 0x24;
	movlw	low(024h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	477
	
l1648:	
;main.c: 477: PORTA = 0X08;
	movlw	low(08h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(134)^080h	;volatile
	line	478
	
l1650:	
;main.c: 478: PORTB = 0X03;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	482
	
l1652:	
;main.c: 482: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	483
	
l1654:	
;main.c: 483: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	484
	
l1656:	
;main.c: 484: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	486
	
l1658:	
;main.c: 486: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	487
	
l1660:	
;main.c: 487: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	488
	
l756:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 499 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
	line	499
global __ptext13
__ptext13:	;psect for function _AD_Init
psect	text13
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	499
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 5
; Regs used in _AD_Init: [wreg+status,2]
	line	532
	
l1662:	
;main.c: 532: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	549
	
l1664:	
;main.c: 549: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	550
	
l1666:	
;main.c: 550: ANSEL0 = 0X07;
	movlw	low(07h)
	movwf	(147)^080h	;volatile
	line	551
	
l759:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 105 in file "C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
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
	line	105
global __ptext14
__ptext14:	;psect for function _Isr_Timer
psect	text14
	file	"C:\mcuproject\scm\zdt\D203_062B_SOP16\main.c"
	line	105
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
	line	107
	
i1l2044:	
;main.c: 107: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u148_21
	goto	u148_20
u148_21:
	goto	i1l660
u148_20:
	line	109
	
i1l2046:	
;main.c: 108: {
;main.c: 109: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	110
	
i1l2048:	
;main.c: 110: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u149_21
	goto	u149_20
u149_21:
	goto	i1l660
u149_20:
	line	112
	
i1l2050:	
;main.c: 111: {
;main.c: 112: intCount = 0;
	clrf	(_intCount)
	line	113
	
i1l2052:	
;main.c: 113: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	114
	
i1l2054:	
;main.c: 114: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u150_21
	goto	u150_20
u150_21:
	goto	i1l660
u150_20:
	line	116
	
i1l2056:	
;main.c: 115: {
;main.c: 116: count1s = 0;
	clrf	(_count1s)
	line	122
	
i1l660:	
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
