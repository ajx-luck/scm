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
	FNCALL	_main,_workCtr
	FNCALL	_workCtr,___bmul
	FNCALL	_workCtr,_pwmD2Init
	FNCALL	_workCtr,_pwmD2Stop
	FNCALL	_workCtr,_pwmD3Init
	FNCALL	_workCtr,_pwmD3Stop
	FNCALL	_keyCtr,_keyRead
	FNCALL	_keyCtr,_keyRead2
	FNCALL	_keyCtr,_keyRead3
	FNCALL	_keyRead3,_checkKeyAD
	FNCALL	_checkKeyAD,_ADC_Sample
	FNCALL	_chrgCtr,_chrgPwmInit
	FNCALL	_chrgCtr,_chrgPwmStop
	FNCALL	_chrgCtr,_pwmD2Stop
	FNCALL	_chrgCtr,_pwmD3Stop
	FNCALL	_checkOutA,_ADC_Sample
	FNCALL	_checkBatAD,_ADC_Sample
	FNCALL	_Sleep_Mode,_AD_Init
	FNCALL	_Sleep_Mode,_Init_System
	FNROOT	_main
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_adresult
	global	_chrgFlag
	global	_test_adc
	global	_count8s
	global	_overWorkTime
	global	_fullCount
	global	_count50s
	global	_batADValue
	global	_outADValue
	global	_power_ad
	global	_result
	global	_count40s
	global	_zdMotorFlag
	global	_keyNum
	global	_zfStep
	global	_powerStep
	global	_pwmD2Flag
	global	_pwmD3Flag
	global	_chrgPwmFlag
	global	_sleepTime
	global	_lowBatFlag
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
	global	_longPressFlag
	global	_keyCount3
	global	_keyCount2
	global	_keyCount
	global	_workStep
	global	_protectFlag
	global	_countHalfFull
	global	_intCount10
	global	_chrgFullFlag
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
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
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
; #config settings
	file	"D220_062B_SOP16.as"
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

_chrgFlag:
       ds      1

_test_adc:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_count8s:
       ds      2

_overWorkTime:
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

_count40s:
       ds      1

_zdMotorFlag:
       ds      1

_keyNum:
       ds      1

_zfStep:
       ds      1

_powerStep:
       ds      1

_pwmD2Flag:
       ds      1

_pwmD3Flag:
       ds      1

_chrgPwmFlag:
       ds      1

_sleepTime:
       ds      1

_lowBatFlag:
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

_longPressFlag:
       ds      1

_keyCount3:
       ds      1

_keyCount2:
       ds      1

_keyCount:
       ds      1

_workStep:
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

	file	"D220_062B_SOP16.as"
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
	movlw	low((__pbssBANK0)+033h)
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
?_checkOutA:	; 1 bytes @ 0x0
?_chrgCtr:	; 1 bytes @ 0x0
?_checkBatAD:	; 1 bytes @ 0x0
?_keyCtr:	; 1 bytes @ 0x0
?_workCtr:	; 1 bytes @ 0x0
?_Sleep_Mode:	; 1 bytes @ 0x0
?_chrgPwmStop:	; 1 bytes @ 0x0
?_pwmD2Stop:	; 1 bytes @ 0x0
?_pwmD3Stop:	; 1 bytes @ 0x0
?_chrgPwmInit:	; 1 bytes @ 0x0
?_checkKeyAD:	; 1 bytes @ 0x0
?_pwmD2Init:	; 1 bytes @ 0x0
?_pwmD3Init:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_keyRead:	; 1 bytes @ 0x0
?_keyRead2:	; 1 bytes @ 0x0
?_keyRead3:	; 1 bytes @ 0x0
	ds	2
??_Init_System:	; 1 bytes @ 0x2
??_AD_Init:	; 1 bytes @ 0x2
??_chrgCtr:	; 1 bytes @ 0x2
??_Sleep_Mode:	; 1 bytes @ 0x2
??_chrgPwmStop:	; 1 bytes @ 0x2
??_pwmD2Stop:	; 1 bytes @ 0x2
??_pwmD3Stop:	; 1 bytes @ 0x2
??_chrgPwmInit:	; 1 bytes @ 0x2
??_pwmD2Init:	; 1 bytes @ 0x2
??_pwmD3Init:	; 1 bytes @ 0x2
?_ADC_Sample:	; 1 bytes @ 0x2
??_keyRead:	; 1 bytes @ 0x2
??_keyRead2:	; 1 bytes @ 0x2
?___bmul:	; 1 bytes @ 0x2
	global	keyRead@keyStatus
keyRead@keyStatus:	; 1 bytes @ 0x2
	global	keyRead2@keyStatus
keyRead2@keyStatus:	; 1 bytes @ 0x2
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x2
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x2
	ds	1
??_ADC_Sample:	; 1 bytes @ 0x3
??___bmul:	; 1 bytes @ 0x3
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x3
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x4
	ds	1
??_workCtr:	; 1 bytes @ 0x5
	ds	2
??_checkOutA:	; 1 bytes @ 0x7
??_checkKeyAD:	; 1 bytes @ 0x7
	ds	1
??_keyCtr:	; 1 bytes @ 0x8
??_main:	; 1 bytes @ 0x8
??_keyRead3:	; 1 bytes @ 0x8
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
	global	keyRead3@keyStatus
keyRead3@keyStatus:	; 1 bytes @ 0xD
	ds	1
	global	keyCtr@kclick
keyCtr@kclick:	; 1 bytes @ 0xE
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         55
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      12
;!    BANK0            80     15      67
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_checkOutA
;!    _workCtr->___bmul
;!    _keyRead3->_checkKeyAD
;!    _checkKeyAD->_ADC_Sample
;!    _checkOutA->_ADC_Sample
;!    _checkBatAD->_ADC_Sample
;!
;!Critical Paths under _Isr_Timer in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_checkBatAD
;!    _main->_keyCtr
;!    _keyCtr->_keyRead3
;!    _checkKeyAD->_ADC_Sample
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
;! (0) _main                                                 0     0      0    3625
;!                            _AD_Init
;!                        _Init_System
;!                         _Sleep_Mode
;!                         _checkBatAD
;!                          _checkOutA
;!                            _chrgCtr
;!                             _keyCtr
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              0     0      0     304
;!                             ___bmul
;!                          _pwmD2Init
;!                          _pwmD2Stop
;!                          _pwmD3Init
;!                          _pwmD3Stop
;! ---------------------------------------------------------------------------------
;! (2) _pwmD3Init                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _pwmD2Init                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___bmul                                               3     2      1     304
;!                                              2 COMMON     3     2      1
;! ---------------------------------------------------------------------------------
;! (1) _keyCtr                                               1     1      0    1237
;!                                             14 BANK0      1     1      0
;!                            _keyRead
;!                           _keyRead2
;!                           _keyRead3
;! ---------------------------------------------------------------------------------
;! (2) _keyRead3                                             1     1      0    1073
;!                                             13 BANK0      1     1      0
;!                         _checkKeyAD
;! ---------------------------------------------------------------------------------
;! (3) _checkKeyAD                                           1     1      0    1042
;!                                              7 COMMON     1     1      0
;!                         _ADC_Sample
;! ---------------------------------------------------------------------------------
;! (2) _keyRead2                                             1     1      0      31
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _keyRead                                              1     1      0      31
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              2     2      0       0
;!                                              2 COMMON     2     2      0
;!                        _chrgPwmInit
;!                        _chrgPwmStop
;!                          _pwmD2Stop
;!                          _pwmD3Stop
;! ---------------------------------------------------------------------------------
;! (2) _pwmD3Stop                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _pwmD2Stop                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _chrgPwmStop                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _chrgPwmInit                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkOutA                                            1     1      0    1042
;!                                              7 COMMON     1     1      0
;!                         _ADC_Sample
;! ---------------------------------------------------------------------------------
;! (1) _checkBatAD                                           2     2      0    1042
;!                                             13 BANK0      2     2      0
;!                         _ADC_Sample
;! ---------------------------------------------------------------------------------
;! (4) _ADC_Sample                                          18    17      1    1042
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
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _Isr_Timer                                            2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
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
;!     _pwmD2Stop
;!     _pwmD3Stop
;!   _keyCtr
;!     _keyRead
;!     _keyRead2
;!     _keyRead3
;!       _checkKeyAD
;!         _ADC_Sample
;!   _workCtr
;!     ___bmul
;!     _pwmD2Init
;!     _pwmD2Stop
;!     _pwmD3Init
;!     _pwmD3Stop
;!
;! _Isr_Timer (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      8       C       1       85.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50      F      43       4       83.8%
;!BITBANK1            50      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!ABS                  0      0      4F       7        0.0%
;!DATA                 0      0      4F       8        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 153 in file "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_AD_Init
;;		_Init_System
;;		_Sleep_Mode
;;		_checkBatAD
;;		_checkOutA
;;		_chrgCtr
;;		_keyCtr
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	153
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	153
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 3
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	155
	
l3077:	
;main.c: 155: Init_System();
	fcall	_Init_System
	line	156
;main.c: 156: AD_Init();
	fcall	_AD_Init
	line	157
	
l3079:	
;main.c: 157: firstTime = 100;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_firstTime)
	line	158
;main.c: 158: while (1)
	
l693:	
	line	160
# 160 "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
clrwdt ;# 
psect	maintext
	line	161
	
l3081:	
;main.c: 161: if(intCount10 > 10)
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_intCount10),w
	skipc
	goto	u3141
	goto	u3140
u3141:
	goto	l3087
u3140:
	line	163
	
l3083:	
;main.c: 162: {
;main.c: 163: intCount10 = 0;
	clrf	(_intCount10)
	line	164
	
l3085:	
;main.c: 164: checkOutA();
	fcall	_checkOutA
	line	166
	
l3087:	
;main.c: 165: }
;main.c: 166: if(!IntFlag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l3091
u3150:
	goto	l693
	line	168
	
l3091:	
;main.c: 168: IntFlag = 0;
	clrf	(_IntFlag)
	line	169
	
l3093:	
;main.c: 169: chrgCtr();
	fcall	_chrgCtr
	line	170
	
l3095:	
;main.c: 170: checkBatAD();
	fcall	_checkBatAD
	line	171
	
l3097:	
;main.c: 171: if(chrgFlag == 0 && lowBatFlag == 0 && firstTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3161
	goto	u3160
u3161:
	goto	l697
u3160:
	
l3099:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l697
u3170:
	
l3101:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3181
	goto	u3180
u3181:
	goto	l697
u3180:
	line	173
	
l3103:	
;main.c: 172: {
;main.c: 173: keyCtr();
	fcall	_keyCtr
	line	174
	
l697:	
	line	175
;main.c: 174: }
;main.c: 175: workCtr();
	fcall	_workCtr
	line	176
	
l3105:	
;main.c: 176: if(chrgFlag == 0 && workStep == 0 && keyCount == 0 && firstTime == 0 && showBatTime == 0 && overWorkTime == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3191
	goto	u3190
u3191:
	goto	l3123
u3190:
	
l3107:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((_workStep)),w
	btfss	status,2
	goto	u3201
	goto	u3200
u3201:
	goto	l3123
u3200:
	
l3109:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l3123
u3210:
	
l3111:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l3123
u3220:
	
l3113:	
	movf	((_showBatTime)),w
	btfss	status,2
	goto	u3231
	goto	u3230
u3231:
	goto	l3123
u3230:
	
l3115:	
;main.c: 177: {
;main.c: 178: shiweiNum = geweiNum = 0;
	movf	((_overWorkTime)),w
iorwf	((_overWorkTime+1)),w
	btfss	status,2
	goto	u3241
	goto	u3240
u3241:
	goto	l3123
u3240:
	line	179
	
l3117:	
;main.c: 179: if(++sleepTime >= 200)
	movlw	low(0C8h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u3251
	goto	u3250
u3251:
	goto	l693
u3250:
	line	181
	
l3119:	
;main.c: 180: {
;main.c: 181: sleepTime = 0;
	clrf	(_sleepTime)
	line	182
	
l3121:	
;main.c: 182: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l693
	line	187
	
l3123:	
;main.c: 185: else
;main.c: 186: {
;main.c: 187: sleepTime = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_sleepTime)
	goto	l693
	global	start
	ljmp	start
	opt stack 0
	line	190
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 486 in file "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___bmul
;;		_pwmD2Init
;;		_pwmD2Stop
;;		_pwmD3Init
;;		_pwmD3Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	486
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	486
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	488
	
l2573:	
;main.c: 488: if(firstTime > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u2201
	goto	u2200
u2201:
	goto	l2581
u2200:
	line	490
	
l2575:	
;main.c: 489: {
;main.c: 490: firstTime--;
	decf	(_firstTime),f
	line	491
	
l2577:	
;main.c: 491: if(pwStep > prePwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u2211
	goto	u2210
u2211:
	goto	l2581
u2210:
	line	493
	
l2579:	
;main.c: 492: {
;main.c: 493: prePwStep = pwStep;
	movf	(_pwStep),w
	movwf	(_prePwStep)
	line	496
	
l2581:	
;main.c: 494: }
;main.c: 495: }
;main.c: 496: if(startTime > 0)
	movf	((_startTime)),w
	btfsc	status,2
	goto	u2221
	goto	u2220
u2221:
	goto	l2585
u2220:
	line	498
	
l2583:	
;main.c: 497: {
;main.c: 498: startTime--;
	decf	(_startTime),f
	line	500
	
l2585:	
;main.c: 499: }
;main.c: 500: if(powerStep > 0)
	movf	((_powerStep)),w
	btfsc	status,2
	goto	u2231
	goto	u2230
u2231:
	goto	l2593
u2230:
	line	502
	
l2587:	
;main.c: 501: {
;main.c: 502: PORTB |= 0x41;
	movlw	low(041h)
	iorwf	(6),f	;volatile
	line	503
	
l2589:	
;main.c: 503: PORTB &= 0xFD;
	bcf	(6)+(1/8),(1)&7	;volatile
	line	504
;main.c: 504: if(zdMotorFlag)
	movf	((_zdMotorFlag)),w
	btfsc	status,2
	goto	u2241
	goto	u2240
u2241:
	goto	l787
u2240:
	line	506
	
l2591:	
;main.c: 505: {
;main.c: 506: PORTB |= 0x20;
	bsf	(6)+(5/8),(5)&7	;volatile
	line	507
;main.c: 507: }
	goto	l789
	line	508
	
l787:	
	line	510
;main.c: 508: else
;main.c: 509: {
;main.c: 510: PORTB &= 0xDF;
	bcf	(6)+(5/8),(5)&7	;volatile
	goto	l789
	line	515
	
l2593:	
;main.c: 513: else
;main.c: 514: {
;main.c: 515: zdMotorFlag = 0;
	clrf	(_zdMotorFlag)
	line	516
	
l2595:	
;main.c: 516: PORTB &= 0x9F;
	movlw	low(09Fh)
	andwf	(6),f	;volatile
	line	517
	
l2597:	
;main.c: 517: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u2251
	goto	u2250
u2251:
	goto	l789
u2250:
	line	519
	
l2599:	
;main.c: 518: {
;main.c: 519: PORTB |= 0x03;
	movlw	low(03h)
	iorwf	(6),f	;volatile
	line	521
	
l789:	
	line	522
;main.c: 520: }
;main.c: 521: }
;main.c: 522: if(powerStep > 0 && startTime == 0)
	movf	((_powerStep)),w
	btfsc	status,2
	goto	u2261
	goto	u2260
u2261:
	goto	l2653
u2260:
	
l2601:	
	movf	((_startTime)),w
	btfss	status,2
	goto	u2271
	goto	u2270
u2271:
	goto	l2653
u2270:
	line	524
	
l2603:	
;main.c: 523: {
;main.c: 524: if(zfStep == 0)
	movf	((_zfStep)),w
	btfss	status,2
	goto	u2281
	goto	u2280
u2281:
	goto	l2633
u2280:
	line	526
	
l2605:	
;main.c: 525: {
;main.c: 526: if(count40s == 20 && count1s == 0)
		movlw	20
	xorwf	((_count40s)),w
	btfss	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l793
u2290:
	
l2607:	
	movf	((_count1s)),w
	btfss	status,2
	goto	u2301
	goto	u2300
u2301:
	goto	l793
u2300:
	line	528
	
l2609:	
;main.c: 527: {
;main.c: 528: startTime = 50;
	movlw	low(032h)
	movwf	(_startTime)
	line	529
	
l793:	
	line	530
;main.c: 529: }
;main.c: 530: if(count40s >= 40)
	movlw	low(028h)
	subwf	(_count40s),w
	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l2615
u2310:
	line	532
	
l2611:	
;main.c: 531: {
;main.c: 532: count40s = 0;
	clrf	(_count40s)
	line	533
	
l2613:	
;main.c: 533: startTime = 50;
	movlw	low(032h)
	movwf	(_startTime)
	line	535
	
l2615:	
;main.c: 534: }
;main.c: 535: if(count40s < 20)
	movlw	low(014h)
	subwf	(_count40s),w
	skipnc
	goto	u2321
	goto	u2320
u2321:
	goto	l2625
u2320:
	line	537
	
l2617:	
;main.c: 536: {
;main.c: 537: if(pwmD2Flag == 0)
	movf	((_pwmD2Flag)),w
	btfss	status,2
	goto	u2331
	goto	u2330
u2331:
	goto	l2621
u2330:
	line	539
	
l2619:	
;main.c: 538: {
;main.c: 539: pwmD2Init();
	fcall	_pwmD2Init
	line	541
	
l2621:	
;main.c: 540: }
;main.c: 541: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	542
	
l2623:	
;main.c: 542: PWMD2L = 55 + (workStep*15);
	movlw	low(0Fh)
	movwf	(___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	movf	(_workStep),w
	fcall	___bmul
	addlw	037h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	line	543
;main.c: 543: }
	goto	l806
	line	546
	
l2625:	
;main.c: 544: else
;main.c: 545: {
;main.c: 546: if(pwmD3Flag == 0)
	movf	((_pwmD3Flag)),w
	btfss	status,2
	goto	u2341
	goto	u2340
u2341:
	goto	l2629
u2340:
	line	548
	
l2627:	
;main.c: 547: {
;main.c: 548: pwmD3Init();
	fcall	_pwmD3Init
	line	550
	
l2629:	
;main.c: 549: }
;main.c: 550: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	551
	
l2631:	
;main.c: 551: PWMD3L = 55 + (workStep*15);
	movlw	low(0Fh)
	movwf	(___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	movf	(_workStep),w
	fcall	___bmul
	addlw	037h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	goto	l806
	line	555
	
l2633:	
;main.c: 555: else if(zfStep == 2)
		movlw	2
	xorwf	((_zfStep)),w
	btfss	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l2643
u2350:
	line	557
	
l2635:	
;main.c: 556: {
;main.c: 557: if(pwmD3Flag == 0)
	movf	((_pwmD3Flag)),w
	btfss	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l2639
u2360:
	line	559
	
l2637:	
;main.c: 558: {
;main.c: 559: pwmD3Init();
	fcall	_pwmD3Init
	line	561
	
l2639:	
;main.c: 560: }
;main.c: 561: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	562
	
l2641:	
;main.c: 562: PWMD3L = 55 + (workStep*15);
	movlw	low(0Fh)
	movwf	(___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	movf	(_workStep),w
	fcall	___bmul
	addlw	037h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	line	563
;main.c: 563: }
	goto	l806
	line	564
	
l2643:	
;main.c: 564: else if(zfStep == 1)
		decf	((_zfStep)),w
	btfss	status,2
	goto	u2371
	goto	u2370
u2371:
	goto	l799
u2370:
	line	566
	
l2645:	
;main.c: 565: {
;main.c: 566: if(pwmD2Flag == 0)
	movf	((_pwmD2Flag)),w
	btfss	status,2
	goto	u2381
	goto	u2380
u2381:
	goto	l2649
u2380:
	line	568
	
l2647:	
;main.c: 567: {
;main.c: 568: pwmD2Init();
	fcall	_pwmD2Init
	line	570
	
l2649:	
;main.c: 569: }
;main.c: 570: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	571
	
l2651:	
;main.c: 571: PWMD2L = 55 + (workStep*15);
	movlw	low(0Fh)
	movwf	(___bmul@multiplicand)
	bcf	status, 5	;RP0=0, select bank0
	movf	(_workStep),w
	fcall	___bmul
	addlw	037h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(155)^080h	;volatile
	goto	l806
	line	573
	
l799:	
;main.c: 572: }
;main.c: 573: }
	goto	l806
	line	576
	
l2653:	
;main.c: 574: else
;main.c: 575: {
;main.c: 576: pwmD3Stop();
	fcall	_pwmD3Stop
	line	577
;main.c: 577: pwmD2Stop();
	fcall	_pwmD2Stop
	line	580
	
l806:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwmD3Init

;; *************** function _pwmD3Init *****************
;; Defined at:
;;		line 870 in file "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
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
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	870
global __ptext2
__ptext2:	;psect for function _pwmD3Init
psect	text2
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	870
	global	__size_of_pwmD3Init
	__size_of_pwmD3Init	equ	__end_of_pwmD3Init-_pwmD3Init
	
_pwmD3Init:	
;incstack = 0
	opt	stack 5
; Regs used in _pwmD3Init: [wreg+status,2]
	line	872
	
l2267:	
;main.c: 872: pwmD3Flag = 1;
	clrf	(_pwmD3Flag)
	incf	(_pwmD3Flag),f
	line	873
	
l2269:	
;main.c: 873: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	874
;main.c: 874: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	875
	
l2271:	
;main.c: 875: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	878
	
l2273:	
;main.c: 878: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	879
;main.c: 879: PWMD3L = 43;
	movlw	low(02Bh)
	movwf	(156)^080h	;volatile
	line	880
	
l2275:	
;main.c: 880: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	882
	
l2277:	
;main.c: 882: PWMCON0 = 0X68;
	movlw	low(068h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	883
;main.c: 883: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	884
	
l864:	
	return
	opt stack 0
GLOBAL	__end_of_pwmD3Init
	__end_of_pwmD3Init:
	signat	_pwmD3Init,89
	global	_pwmD2Init

;; *************** function _pwmD2Init *****************
;; Defined at:
;;		line 842 in file "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
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
	line	842
global __ptext3
__ptext3:	;psect for function _pwmD2Init
psect	text3
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	842
	global	__size_of_pwmD2Init
	__size_of_pwmD2Init	equ	__end_of_pwmD2Init-_pwmD2Init
	
_pwmD2Init:	
;incstack = 0
	opt	stack 5
; Regs used in _pwmD2Init: [wreg+status,2]
	line	844
	
l2255:	
;main.c: 844: pwmD2Flag = 1;
	clrf	(_pwmD2Flag)
	incf	(_pwmD2Flag),f
	line	845
	
l2257:	
;main.c: 845: PWMCON1 = 0B00000000;
	clrf	(22)	;volatile
	line	847
;main.c: 847: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	848
	
l2259:	
;main.c: 848: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	852
	
l2261:	
;main.c: 852: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	853
;main.c: 853: PWMD2L = 10;
	movlw	low(0Ah)
	movwf	(155)^080h	;volatile
	line	854
	
l2263:	
;main.c: 854: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	856
	
l2265:	
;main.c: 856: PWMCON0 = 0X64;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	857
;main.c: 857: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	858
	
l857:	
	return
	opt stack 0
GLOBAL	__end_of_pwmD2Init
	__end_of_pwmD2Init:
	signat	_pwmD2Init,89
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    4[COMMON] unsigned char 
;;  product         1    3[COMMON] unsigned char 
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
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\Umul8.c"
	line	4
global __ptext4
__ptext4:	;psect for function ___bmul
psect	text4
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 5
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	6
	
l2279:	
	clrf	(___bmul@product)
	line	43
	
l2281:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u1601
	goto	u1600
u1601:
	goto	l2285
u1600:
	line	44
	
l2283:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	45
	
l2285:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	46
	
l2287:	
	clrc
	rrf	(___bmul@multiplier),f
	line	47
	movf	((___bmul@multiplier)),w
	btfss	status,2
	goto	u1611
	goto	u1610
u1611:
	goto	l2281
u1610:
	line	50
	
l2289:	
	movf	(___bmul@product),w
	line	51
	
l917:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 432 in file "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  kclick          1   14[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0
;;      Temps:          0       0       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_keyRead
;;		_keyRead2
;;		_keyRead3
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	432
global __ptext5
__ptext5:	;psect for function _keyCtr
psect	text5
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	432
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 3
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	434
	
l3027:	
;main.c: 434: char kclick = keyRead(0x80 & (~PORTB));
	comf	(6),w	;volatile
	andlw	080h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	435
	
l3029:	
;main.c: 435: if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l3045
u3030:
	line	437
	
l3031:	
;main.c: 436: {
;main.c: 437: if(powerStep > 0)
	movf	((_powerStep)),w
	btfsc	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l769
u3040:
	line	439
	
l3033:	
;main.c: 438: {
;main.c: 439: powerStep = 0;
	clrf	(_powerStep)
	line	440
;main.c: 440: }
	goto	l3045
	line	441
	
l769:	
	line	443
;main.c: 441: else
;main.c: 442: {
;main.c: 443: powerStep = 1;
	clrf	(_powerStep)
	incf	(_powerStep),f
	line	444
	
l3035:	
;main.c: 444: zfStep = 0;
	clrf	(_zfStep)
	line	445
;main.c: 445: count40s = 0;
	clrf	(_count40s)
	line	446
	
l3037:	
;main.c: 446: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	447
	
l3039:	
;main.c: 447: startTime = 50;
	movlw	low(032h)
	movwf	(_startTime)
	line	448
	
l3041:	
;main.c: 448: showBatTime = 0;
	clrf	(_showBatTime)
	line	449
	
l3043:	
;main.c: 449: overWorkTime = 0;
	clrf	(_overWorkTime)
	clrf	(_overWorkTime+1)
	line	452
	
l3045:	
;main.c: 450: }
;main.c: 451: }
;main.c: 452: kclick = keyRead2(0x20 & (~PORTA));
	bsf	status, 5	;RP0=1, select bank1
	comf	(134)^080h,w	;volatile
	andlw	020h
	fcall	_keyRead2
	movwf	(keyCtr@kclick)
	line	453
	
l3047:	
;main.c: 453: if(kclick == 1 && powerStep > 0)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u3051
	goto	u3050
u3051:
	goto	l3059
u3050:
	
l3049:	
	movf	((_powerStep)),w
	btfsc	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l3059
u3060:
	line	455
	
l3051:	
;main.c: 454: {
;main.c: 455: startTime = 50;
	movlw	low(032h)
	movwf	(_startTime)
	line	456
	
l3053:	
;main.c: 456: count40s = 0;
	clrf	(_count40s)
	line	457
	
l3055:	
;main.c: 457: if(++zfStep > 2)
	movlw	low(03h)
	incf	(_zfStep),f
	subwf	((_zfStep)),w
	skipc
	goto	u3071
	goto	u3070
u3071:
	goto	l3059
u3070:
	line	459
	
l3057:	
;main.c: 458: {
;main.c: 459: zfStep = 0;
	clrf	(_zfStep)
	line	462
	
l3059:	
;main.c: 460: }
;main.c: 461: }
;main.c: 462: kclick = keyRead3(0x10 & (~PORTA));
	bsf	status, 5	;RP0=1, select bank1
	comf	(134)^080h,w	;volatile
	andlw	010h
	fcall	_keyRead3
	movwf	(keyCtr@kclick)
	line	463
	
l3061:	
;main.c: 463: if(kclick == 1 && powerStep > 0)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l780
u3080:
	
l3063:	
	movf	((_powerStep)),w
	btfsc	status,2
	goto	u3091
	goto	u3090
u3091:
	goto	l780
u3090:
	line	465
	
l3065:	
;main.c: 464: {
;main.c: 465: if(keyNum == 1)
		decf	((_keyNum)),w
	btfss	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l3071
u3100:
	line	467
	
l3067:	
;main.c: 466: {
;main.c: 467: if(zdMotorFlag > 0)
	movf	((_zdMotorFlag)),w
	btfsc	status,2
	goto	u3111
	goto	u3110
u3111:
	goto	l775
u3110:
	line	469
	
l3069:	
;main.c: 468: {
;main.c: 469: zdMotorFlag = 0;
	clrf	(_zdMotorFlag)
	line	470
;main.c: 470: }
	goto	l780
	line	471
	
l775:	
	line	473
;main.c: 471: else
;main.c: 472: {
;main.c: 473: zdMotorFlag = 1;
	clrf	(_zdMotorFlag)
	incf	(_zdMotorFlag),f
	goto	l780
	line	476
	
l3071:	
;main.c: 476: else if(keyNum == 2)
		movlw	2
	xorwf	((_keyNum)),w
	btfss	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l780
u3120:
	line	478
	
l3073:	
;main.c: 477: {
;main.c: 478: if(++workStep > 2)
	movlw	low(03h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u3131
	goto	u3130
u3131:
	goto	l777
u3130:
	line	480
	
l3075:	
;main.c: 479: {
;main.c: 480: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	goto	l780
	line	483
	
l777:	
	line	484
	
l780:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead3

;; *************** function _keyRead3 *****************
;; Defined at:
;;		line 408 in file "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;  keyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyStatus       1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 100/100
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       1       0
;;      Temps:          0       0       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_checkKeyAD
;; This function is called by:
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	408
global __ptext6
__ptext6:	;psect for function _keyRead3
psect	text6
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	408
	global	__size_of_keyRead3
	__size_of_keyRead3	equ	__end_of_keyRead3-_keyRead3
	
_keyRead3:	
;incstack = 0
	opt	stack 3
; Regs used in _keyRead3: [wreg+status,2+status,0+pclath+cstack]
;keyRead3@keyStatus stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(keyRead3@keyStatus)
	line	410
	
l2921:	
;main.c: 410: if(keyStatus)
	movf	((keyRead3@keyStatus)),w
	btfsc	status,2
	goto	u2821
	goto	u2820
u2821:
	goto	l2931
u2820:
	line	412
	
l2923:	
;main.c: 411: {
;main.c: 412: checkKeyAD();
	fcall	_checkKeyAD
	line	413
	
l2925:	
;main.c: 413: keyCount3++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_keyCount3),f
	line	414
	
l2927:	
;main.c: 414: if(keyCount3 >= 100)
	movlw	low(064h)
	subwf	(_keyCount3),w
	skipc
	goto	u2831
	goto	u2830
u2831:
	goto	l2941
u2830:
	line	416
	
l2929:	
;main.c: 415: {
;main.c: 416: keyCount3 = 100;
	movlw	low(064h)
	movwf	(_keyCount3)
	goto	l2941
	line	422
	
l2931:	
;main.c: 419: else
;main.c: 420: {
;main.c: 422: if(keyCount3 >= 5)
	movlw	low(05h)
	subwf	(_keyCount3),w
	skipc
	goto	u2841
	goto	u2840
u2841:
	goto	l2939
u2840:
	line	424
	
l2933:	
;main.c: 423: {
;main.c: 424: keyCount3 = 0;
	clrf	(_keyCount3)
	line	425
	
l2935:	
;main.c: 425: return 1;
	movlw	low(01h)
	goto	l765
	line	427
	
l2939:	
;main.c: 426: }
;main.c: 427: keyCount3 = 0;
	clrf	(_keyCount3)
	line	429
	
l2941:	
;main.c: 428: }
;main.c: 429: return 0;
	movlw	low(0)
	line	430
	
l765:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead3
	__end_of_keyRead3:
	signat	_keyRead3,4217
	global	_checkKeyAD

;; *************** function _checkKeyAD *****************
;; Defined at:
;;		line 582 in file "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
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
;;		_ADC_Sample
;; This function is called by:
;;		_keyRead3
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	582
global __ptext7
__ptext7:	;psect for function _checkKeyAD
psect	text7
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	582
	global	__size_of_checkKeyAD
	__size_of_checkKeyAD	equ	__end_of_checkKeyAD-_checkKeyAD
	
_checkKeyAD:	
;incstack = 0
	opt	stack 3
; Regs used in _checkKeyAD: [wreg+status,2+status,0+pclath+cstack]
	line	584
	
l2845:	
;main.c: 584: test_adc = ADC_Sample(4, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(04h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	585
	
l2847:	
;main.c: 585: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u2721
	goto	u2720
u2721:
	goto	l2855
u2720:
	line	587
	
l2849:	
;main.c: 586: {
;main.c: 587: if(adresult < 400)
	movlw	01h
	subwf	(_adresult+1),w	;volatile
	movlw	090h
	skipnz
	subwf	(_adresult),w	;volatile
	skipnc
	goto	u2731
	goto	u2730
u2731:
	goto	l2853
u2730:
	line	589
	
l2851:	
;main.c: 588: {
;main.c: 589: keyNum = 1;
	clrf	(_keyNum)
	incf	(_keyNum),f
	line	590
;main.c: 590: }
	goto	l813
	line	593
	
l2853:	
;main.c: 591: else
;main.c: 592: {
;main.c: 593: keyNum = 2;
	movlw	low(02h)
	movwf	(_keyNum)
	goto	l813
	line	598
	
l2855:	
;main.c: 596: else
;main.c: 597: {
;main.c: 598: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	599
;main.c: 599: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	600
	
l2857:	
;main.c: 600: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkKeyAD+0)+0),f
	u3267:
decfsz	(??_checkKeyAD+0)+0,f
	goto	u3267
opt asmopt_pop

	line	603
	
l813:	
	return
	opt stack 0
GLOBAL	__end_of_checkKeyAD
	__end_of_checkKeyAD:
	signat	_checkKeyAD,89
	global	_keyRead2

;; *************** function _keyRead2 *****************
;; Defined at:
;;		line 386 in file "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
;; Parameters:    Size  Location     Type
;;  keyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyStatus       1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 100/100
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
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	386
global __ptext8
__ptext8:	;psect for function _keyRead2
psect	text8
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	386
	global	__size_of_keyRead2
	__size_of_keyRead2	equ	__end_of_keyRead2-_keyRead2
	
_keyRead2:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead2: [wreg+status,2+status,0]
;keyRead2@keyStatus stored from wreg
	movwf	(keyRead2@keyStatus)
	line	388
	
l2899:	
;main.c: 388: if(keyStatus)
	movf	((keyRead2@keyStatus)),w
	btfsc	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l2907
u2790:
	line	390
	
l2901:	
;main.c: 389: {
;main.c: 390: keyCount2++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_keyCount2),f
	line	391
	
l2903:	
;main.c: 391: if(keyCount2 >= 100)
	movlw	low(064h)
	subwf	(_keyCount2),w
	skipc
	goto	u2801
	goto	u2800
u2801:
	goto	l2917
u2800:
	line	393
	
l2905:	
;main.c: 392: {
;main.c: 393: keyCount2 = 100;
	movlw	low(064h)
	movwf	(_keyCount2)
	goto	l2917
	line	398
	
l2907:	
;main.c: 396: else
;main.c: 397: {
;main.c: 398: if(keyCount2 >= 5)
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_keyCount2),w
	skipc
	goto	u2811
	goto	u2810
u2811:
	goto	l2915
u2810:
	line	400
	
l2909:	
;main.c: 399: {
;main.c: 400: keyCount2 = 0;
	clrf	(_keyCount2)
	line	401
	
l2911:	
;main.c: 401: return 1;
	movlw	low(01h)
	goto	l758
	line	403
	
l2915:	
;main.c: 402: }
;main.c: 403: keyCount2 = 0;
	clrf	(_keyCount2)
	line	405
	
l2917:	
;main.c: 404: }
;main.c: 405: return 0;
	movlw	low(0)
	line	406
	
l758:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead2
	__end_of_keyRead2:
	signat	_keyRead2,4217
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 352 in file "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
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
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	352
global __ptext9
__ptext9:	;psect for function _keyRead
psect	text9
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	352
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	354
	
l2859:	
;main.c: 354: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l2875
u2740:
	line	356
	
l2861:	
;main.c: 355: {
;main.c: 356: keyCount++;
	incf	(_keyCount),f
	line	357
	
l2863:	
;main.c: 357: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u2751
	goto	u2750
u2751:
	goto	l2879
u2750:
	line	359
	
l2865:	
;main.c: 358: {
;main.c: 359: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	line	360
	
l2867:	
;main.c: 360: if(!longPressFlag)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l2879
u2760:
	line	362
	
l2869:	
;main.c: 361: {
;main.c: 362: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	363
	
l2871:	
;main.c: 363: return 2;
	movlw	low(02h)
	goto	l747
	line	369
	
l2875:	
;main.c: 367: else
;main.c: 368: {
;main.c: 369: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u2771
	goto	u2770
u2771:
	goto	l2885
u2770:
	line	371
	
l2877:	
;main.c: 370: {
;main.c: 371: keyCount = 0;
	clrf	(_keyCount)
	line	372
;main.c: 372: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	373
	
l2879:	
;main.c: 373: return 0;
	movlw	low(0)
	goto	l747
	line	375
	
l2885:	
;main.c: 375: else if(keyCount >= 6)
	movlw	low(06h)
	subwf	(_keyCount),w
	skipc
	goto	u2781
	goto	u2780
u2781:
	goto	l2893
u2780:
	line	377
	
l2887:	
;main.c: 376: {
;main.c: 377: keyCount = 0;
	clrf	(_keyCount)
	line	378
	
l2889:	
;main.c: 378: return 1;
	movlw	low(01h)
	goto	l747
	line	380
	
l2893:	
;main.c: 379: }
;main.c: 380: keyCount = 0;
	clrf	(_keyCount)
	goto	l2879
	line	383
	
l747:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 193 in file "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_chrgPwmInit
;;		_chrgPwmStop
;;		_pwmD2Stop
;;		_pwmD3Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	193
global __ptext10
__ptext10:	;psect for function _chrgCtr
psect	text10
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	193
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	195
	
l2315:	
;main.c: 195: if(PORTB & 0x04)
	btfss	(6),(2)&7	;volatile
	goto	u1661
	goto	u1660
u1661:
	goto	l2445
u1660:
	line	197
	
l2317:	
;main.c: 196: {
;main.c: 197: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u1671
	goto	u1670
u1671:
	goto	l2325
u1670:
	line	199
	
l2319:	
;main.c: 198: {
;main.c: 199: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	200
	
l2321:	
;main.c: 200: chrgMaxDuty = 0;
	clrf	(_chrgMaxDuty)
	line	201
	
l2323:	
;main.c: 201: chrgPwmStop();
	fcall	_chrgPwmStop
	line	203
	
l2325:	
;main.c: 202: }
;main.c: 203: pwmD2Stop();
	fcall	_pwmD2Stop
	line	204
	
l2327:	
;main.c: 204: pwmD3Stop();
	fcall	_pwmD3Stop
	line	205
	
l2329:	
;main.c: 205: powerStep = 0;
	clrf	(_powerStep)
	line	206
	
l2331:	
;main.c: 206: workStep = 0;
	clrf	(_workStep)
	line	207
	
l2333:	
;main.c: 207: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	208
	
l2335:	
;main.c: 208: if(prePwStep < pwStep)
	movf	(_pwStep),w
	subwf	(_prePwStep),w
	skipnc
	goto	u1681
	goto	u1680
u1681:
	goto	l2343
u1680:
	line	210
	
l2337:	
;main.c: 209: {
;main.c: 210: if(++count50s > 3000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	0Bh
	subwf	((_count50s+1)),w
	movlw	0B9h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u1691
	goto	u1690
u1691:
	goto	l2345
u1690:
	line	212
	
l2339:	
;main.c: 211: {
;main.c: 212: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	213
	
l2341:	
;main.c: 213: prePwStep++;
	incf	(_prePwStep),f
	goto	l2345
	line	218
	
l2343:	
;main.c: 216: else
;main.c: 217: {
;main.c: 218: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	220
	
l2345:	
;main.c: 219: }
;main.c: 220: if(protectFlag)
	movf	((_protectFlag)),w
	btfsc	status,2
	goto	u1701
	goto	u1700
u1701:
	goto	l2361
u1700:
	line	222
	
l2347:	
;main.c: 221: {
;main.c: 222: chrgPwmStop();
	fcall	_chrgPwmStop
	line	223
	
l2349:	
;main.c: 223: if(prePwStep < 99 && protectFlag == 1)
	movlw	low(063h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_prePwStep),w
	skipnc
	goto	u1711
	goto	u1710
u1711:
	goto	l2357
u1710:
	
l2351:	
		decf	((_protectFlag)),w
	btfss	status,2
	goto	u1721
	goto	u1720
u1721:
	goto	l2357
u1720:
	line	225
	
l2353:	
;main.c: 224: {
;main.c: 225: if(++reChrgCount > 250)
	movlw	low(0FBh)
	incf	(_reChrgCount),f
	subwf	((_reChrgCount)),w
	skipc
	goto	u1731
	goto	u1730
u1731:
	goto	l714
u1730:
	line	227
	
l2355:	
;main.c: 226: {
;main.c: 227: reChrgCount = 0;
	clrf	(_reChrgCount)
	line	228
;main.c: 228: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	229
;main.c: 229: protectFlag = 0;
	clrf	(_protectFlag)
	goto	l714
	line	234
	
l2357:	
;main.c: 232: else
;main.c: 233: {
;main.c: 234: reChrgCount = 0;
	clrf	(_reChrgCount)
	goto	l714
	line	238
	
l2361:	
;main.c: 237: }
;main.c: 238: if(batADValue < 1118)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Eh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u1741
	goto	u1740
u1741:
	goto	l2367
u1740:
	line	240
	
l2363:	
;main.c: 239: {
;main.c: 240: chrgMode = 0;
	clrf	(_chrgMode)
	line	241
	
l2365:	
;main.c: 241: chrgMaxAD = 15;
	movlw	low(0Fh)
	movwf	(_chrgMaxAD)
	line	242
;main.c: 242: }
	goto	l2385
	line	243
	
l2367:	
;main.c: 243: else if(batADValue < 1530)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	0FAh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u1751
	goto	u1750
u1751:
	goto	l2375
u1750:
	line	245
	
l2369:	
;main.c: 244: {
;main.c: 245: chrgMode = 1;
	clrf	(_chrgMode)
	incf	(_chrgMode),f
	line	246
	
l2371:	
;main.c: 246: chrgMaxAD = 50;
	movlw	low(032h)
	movwf	(_chrgMaxAD)
	line	247
	
l2373:	
;main.c: 247: lockCount = 0;
	clrf	(_lockCount)
	line	248
;main.c: 248: }
	goto	l2385
	line	249
	
l2375:	
;main.c: 249: else if(count1s == 0)
	movf	((_count1s)),w
	btfss	status,2
	goto	u1761
	goto	u1760
u1761:
	goto	l2385
u1760:
	line	251
	
l2377:	
;main.c: 250: {
;main.c: 251: if(++lockCount > 200)
	movlw	low(0C9h)
	incf	(_lockCount),f
	subwf	((_lockCount)),w
	skipc
	goto	u1771
	goto	u1770
u1771:
	goto	l2383
u1770:
	line	253
	
l2379:	
;main.c: 252: {
;main.c: 253: lockCount = 0;
	clrf	(_lockCount)
	line	254
	
l2381:	
;main.c: 254: chrgMode = 2;
	movlw	low(02h)
	movwf	(_chrgMode)
	line	257
	
l2383:	
;main.c: 255: }
;main.c: 257: chrgMaxAD = 50;
	movlw	low(032h)
	movwf	(_chrgMaxAD)
	line	259
	
l2385:	
;main.c: 258: }
;main.c: 259: if(chrgMode == 2 && outADValue < 8)
		movlw	2
	xorwf	((_chrgMode)),w
	btfss	status,2
	goto	u1781
	goto	u1780
u1781:
	goto	l2395
u1780:
	
l2387:	
	movlw	0
	subwf	(_outADValue+1),w
	movlw	08h
	skipnz
	subwf	(_outADValue),w
	skipnc
	goto	u1791
	goto	u1790
u1791:
	goto	l2395
u1790:
	line	261
	
l2389:	
;main.c: 260: {
;main.c: 261: if(++fullCount >= 200)
	incf	(_fullCount),f
	skipnz
	incf	(_fullCount+1),f
	movlw	0
	subwf	((_fullCount+1)),w
	movlw	0C8h
	skipnz
	subwf	((_fullCount)),w
	skipc
	goto	u1801
	goto	u1800
u1801:
	goto	l2397
u1800:
	line	263
	
l2391:	
;main.c: 262: {
;main.c: 263: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	264
	
l2393:	
;main.c: 264: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l2397
	line	269
	
l2395:	
;main.c: 267: else
;main.c: 268: {
;main.c: 269: fullCount = 0;
	clrf	(_fullCount)
	clrf	(_fullCount+1)
	line	271
	
l2397:	
;main.c: 270: }
;main.c: 271: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u1811
	goto	u1810
u1811:
	goto	l2403
u1810:
	line	273
	
l2399:	
;main.c: 272: {
;main.c: 273: PORTB &= 0xFD;
	bcf	(6)+(1/8),(1)&7	;volatile
	line	274
;main.c: 274: PORTB |= 0x01;
	bsf	(6)+(0/8),(0)&7	;volatile
	line	275
	
l2401:	
;main.c: 275: chrgPwmStop();
	fcall	_chrgPwmStop
	line	276
;main.c: 276: }
	goto	l714
	line	279
	
l2403:	
;main.c: 277: else
;main.c: 278: {
;main.c: 279: if(prePwStep >= 99)
	movlw	low(063h)
	subwf	(_prePwStep),w
	skipc
	goto	u1821
	goto	u1820
u1821:
	goto	l726
u1820:
	line	281
	
l2405:	
;main.c: 280: {
;main.c: 281: PORTB &= 0xFD;
	bcf	(6)+(1/8),(1)&7	;volatile
	line	282
;main.c: 282: PORTB |= 0x01;
	bsf	(6)+(0/8),(0)&7	;volatile
	line	283
;main.c: 283: }
	goto	l2407
	line	284
	
l726:	
	line	286
;main.c: 284: else
;main.c: 285: {
;main.c: 286: PORTB &= 0xFE;
	bcf	(6)+(0/8),(0)&7	;volatile
	line	287
;main.c: 287: PORTB |= 0x02;
	bsf	(6)+(1/8),(1)&7	;volatile
	line	289
	
l2407:	
;main.c: 288: }
;main.c: 289: if(batADValue > 1550 || outADValue > (chrgMaxAD + 2))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	0Fh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u1831
	goto	u1830
u1831:
	goto	l2411
u1830:
	
l2409:	
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
	goto	u1845
	movf	(_outADValue),w
	subwf	0+(??_chrgCtr+0)+0,w
u1845:
	skipnc
	goto	u1841
	goto	u1840
u1841:
	goto	l2423
u1840:
	line	291
	
l2411:	
;main.c: 290: {
;main.c: 291: if(++subTime > chrgWaitTime)
	incf	(_subTime),f
	movf	((_subTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u1851
	goto	u1850
u1851:
	goto	l2421
u1850:
	line	293
	
l2413:	
;main.c: 292: {
;main.c: 293: if(chrgMaxDuty > 1)
	movlw	low(02h)
	subwf	(_chrgMaxDuty),w
	skipc
	goto	u1861
	goto	u1860
u1861:
	goto	l2417
u1860:
	line	295
	
l2415:	
;main.c: 294: {
;main.c: 295: chrgMaxDuty--;
	decf	(_chrgMaxDuty),f
	line	297
	
l2417:	
;main.c: 296: }
;main.c: 297: subTime = 0;
	clrf	(_subTime)
	line	298
	
l2419:	
;main.c: 298: chrgWaitTime = 50;
	movlw	low(032h)
	movwf	(_chrgWaitTime)
	line	300
	
l2421:	
;main.c: 299: }
;main.c: 300: addTime = 0;
	clrf	(_addTime)
	line	301
;main.c: 301: }
	goto	l2437
	line	302
	
l2423:	
;main.c: 302: else if(batADValue < 1550 && outADValue < (chrgMaxAD - 4))
	movlw	06h
	subwf	(_batADValue+1),w
	movlw	0Eh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u1871
	goto	u1870
u1871:
	goto	l2437
u1870:
	
l2425:	
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
	goto	u1885
	movf	0+(??_chrgCtr+0)+0,w
	subwf	(_outADValue),w
u1885:
	skipnc
	goto	u1881
	goto	u1880
u1881:
	goto	l2437
u1880:
	line	304
	
l2427:	
;main.c: 303: {
;main.c: 304: if(++addTime > chrgWaitTime)
	incf	(_addTime),f
	movf	((_addTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u1891
	goto	u1890
u1891:
	goto	l2435
u1890:
	line	306
	
l2429:	
;main.c: 305: {
;main.c: 306: addTime = 0;
	clrf	(_addTime)
	line	307
	
l2431:	
;main.c: 307: if(chrgMaxDuty < 75)
	movlw	low(04Bh)
	subwf	(_chrgMaxDuty),w
	skipnc
	goto	u1901
	goto	u1900
u1901:
	goto	l2435
u1900:
	line	309
	
l2433:	
;main.c: 308: {
;main.c: 309: chrgMaxDuty++;
	incf	(_chrgMaxDuty),f
	line	312
	
l2435:	
;main.c: 310: }
;main.c: 311: }
;main.c: 312: subTime = 0;
	clrf	(_subTime)
	line	315
	
l2437:	
;main.c: 313: }
;main.c: 315: if(chrgPwmFlag == 0)
	movf	((_chrgPwmFlag)),w
	btfss	status,2
	goto	u1911
	goto	u1910
u1911:
	goto	l2441
u1910:
	line	317
	
l2439:	
;main.c: 316: {
;main.c: 317: chrgPwmInit();
	fcall	_chrgPwmInit
	line	319
	
l2441:	
;main.c: 318: }
;main.c: 319: PWMD23H = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	320
	
l2443:	
;main.c: 320: PWMD3L = chrgMaxDuty;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_chrgMaxDuty),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(156)^080h	;volatile
	goto	l714
	line	326
	
l2445:	
;main.c: 326: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	327
;main.c: 327: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	328
;main.c: 328: protectFlag = 0;
	clrf	(_protectFlag)
	line	329
;main.c: 329: chrgMode = 0;
	clrf	(_chrgMode)
	line	330
;main.c: 330: chrgMaxAD = 0;
	clrf	(_chrgMaxAD)
	line	331
;main.c: 331: chrgMaxDuty = 0;
	clrf	(_chrgMaxDuty)
	line	332
;main.c: 332: lockCount = 0;
	clrf	(_lockCount)
	line	333
	
l2447:	
;main.c: 333: chrgWaitTime = 20;
	movlw	low(014h)
	movwf	(_chrgWaitTime)
	line	334
	
l2449:	
;main.c: 334: chrgPwmStop();
	fcall	_chrgPwmStop
	line	335
	
l2451:	
;main.c: 335: if(prePwStep > 0 && prePwStep > pwStep)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_prePwStep)),w
	btfsc	status,2
	goto	u1921
	goto	u1920
u1921:
	goto	l2461
u1920:
	
l2453:	
	movf	(_prePwStep),w
	subwf	(_pwStep),w
	skipnc
	goto	u1931
	goto	u1930
u1931:
	goto	l2461
u1930:
	line	337
	
l2455:	
;main.c: 336: {
;main.c: 337: if(++count50s > 3000)
	incf	(_count50s),f
	skipnz
	incf	(_count50s+1),f
	movlw	0Bh
	subwf	((_count50s+1)),w
	movlw	0B9h
	skipnz
	subwf	((_count50s)),w
	skipc
	goto	u1941
	goto	u1940
u1941:
	goto	l714
u1940:
	line	339
	
l2457:	
;main.c: 338: {
;main.c: 339: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	340
	
l2459:	
;main.c: 340: prePwStep--;
	decf	(_prePwStep),f
	goto	l714
	line	345
	
l2461:	
;main.c: 343: else
;main.c: 344: {
;main.c: 345: count50s = 0;
	clrf	(_count50s)
	clrf	(_count50s+1)
	line	348
	
l714:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_pwmD3Stop

;; *************** function _pwmD3Stop *****************
;; Defined at:
;;		line 886 in file "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
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
;;		_chrgCtr
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	886
global __ptext11
__ptext11:	;psect for function _pwmD3Stop
psect	text11
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	886
	global	__size_of_pwmD3Stop
	__size_of_pwmD3Stop	equ	__end_of_pwmD3Stop-_pwmD3Stop
	
_pwmD3Stop:	
;incstack = 0
	opt	stack 5
; Regs used in _pwmD3Stop: [wreg+status,2+status,0]
	line	888
	
l2149:	
;main.c: 888: if(pwmD3Flag)
	movf	((_pwmD3Flag)),w
	btfsc	status,2
	goto	u1481
	goto	u1480
u1481:
	goto	l2153
u1480:
	line	890
	
l2151:	
;main.c: 889: {
;main.c: 890: PWMCON0 &= 0XF7;
	bcf	(21)+(3/8),(3)&7	;volatile
	line	891
;main.c: 891: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	893
	
l2153:	
;main.c: 892: }
;main.c: 893: pwmD3Flag = 0;
	clrf	(_pwmD3Flag)
	line	894
	
l868:	
	return
	opt stack 0
GLOBAL	__end_of_pwmD3Stop
	__end_of_pwmD3Stop:
	signat	_pwmD3Stop,89
	global	_pwmD2Stop

;; *************** function _pwmD2Stop *****************
;; Defined at:
;;		line 860 in file "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_chrgCtr
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	860
global __ptext12
__ptext12:	;psect for function _pwmD2Stop
psect	text12
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	860
	global	__size_of_pwmD2Stop
	__size_of_pwmD2Stop	equ	__end_of_pwmD2Stop-_pwmD2Stop
	
_pwmD2Stop:	
;incstack = 0
	opt	stack 5
; Regs used in _pwmD2Stop: [wreg+status,2+status,0]
	line	862
	
l2143:	
;main.c: 862: if(pwmD2Flag)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_pwmD2Flag)),w
	btfsc	status,2
	goto	u1471
	goto	u1470
u1471:
	goto	l2147
u1470:
	line	864
	
l2145:	
;main.c: 863: {
;main.c: 864: PWMCON0 &= 0xFB;
	bcf	(21)+(2/8),(2)&7	;volatile
	line	865
;main.c: 865: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	867
	
l2147:	
;main.c: 866: }
;main.c: 867: pwmD2Flag = 0;
	clrf	(_pwmD2Flag)
	line	868
	
l861:	
	return
	opt stack 0
GLOBAL	__end_of_pwmD2Stop
	__end_of_pwmD2Stop:
	signat	_pwmD2Stop,89
	global	_chrgPwmStop

;; *************** function _chrgPwmStop *****************
;; Defined at:
;;		line 831 in file "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
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
;;		On exit  : 0/0
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
;;		_chrgCtr
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	831
global __ptext13
__ptext13:	;psect for function _chrgPwmStop
psect	text13
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	831
	global	__size_of_chrgPwmStop
	__size_of_chrgPwmStop	equ	__end_of_chrgPwmStop-_chrgPwmStop
	
_chrgPwmStop:	
;incstack = 0
	opt	stack 5
; Regs used in _chrgPwmStop: [wreg+status,2+status,0]
	line	833
	
l2135:	
;main.c: 833: if(chrgPwmFlag)
	movf	((_chrgPwmFlag)),w
	btfsc	status,2
	goto	u1461
	goto	u1460
u1461:
	goto	l854
u1460:
	line	835
	
l2137:	
;main.c: 834: {
;main.c: 835: chrgPwmFlag = 0;
	clrf	(_chrgPwmFlag)
	line	836
	
l2139:	
;main.c: 836: PWMCON0 &= 0xF7;
	bcf	(21)+(3/8),(3)&7	;volatile
	line	837
	
l2141:	
;main.c: 837: RA3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	line	839
	
l854:	
	return
	opt stack 0
GLOBAL	__end_of_chrgPwmStop
	__end_of_chrgPwmStop:
	signat	_chrgPwmStop,89
	global	_chrgPwmInit

;; *************** function _chrgPwmInit *****************
;; Defined at:
;;		line 813 in file "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
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
;;		_chrgCtr
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	813
global __ptext14
__ptext14:	;psect for function _chrgPwmInit
psect	text14
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	813
	global	__size_of_chrgPwmInit
	__size_of_chrgPwmInit	equ	__end_of_chrgPwmInit-_chrgPwmInit
	
_chrgPwmInit:	
;incstack = 0
	opt	stack 5
; Regs used in _chrgPwmInit: [wreg+status,2]
	line	815
	
l2155:	
;main.c: 815: chrgPwmFlag = 1;
	clrf	(_chrgPwmFlag)
	incf	(_chrgPwmFlag),f
	line	816
	
l2157:	
;main.c: 816: PWMCON1 = 0B11000000;
	movlw	low(0C0h)
	movwf	(22)	;volatile
	line	818
	
l2159:	
;main.c: 818: PWMTH = 0X00;
	clrf	(24)	;volatile
	line	819
	
l2161:	
;main.c: 819: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	823
;main.c: 823: PWMD23H = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(158)^080h	;volatile
	line	824
	
l2163:	
;main.c: 824: PWMD3L = 10;
	movlw	low(0Ah)
	movwf	(156)^080h	;volatile
	line	825
	
l2165:	
;main.c: 825: PWM23DT = 0X00;
	clrf	(157)^080h	;volatile
	line	827
;main.c: 827: PWMCON0 = 0X08;
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(21)	;volatile
	line	828
	
l2167:	
;main.c: 828: PWMCON2 =0X00;
	clrf	(29)	;volatile
	line	829
	
l850:	
	return
	opt stack 0
GLOBAL	__end_of_chrgPwmInit
	__end_of_chrgPwmInit:
	signat	_chrgPwmInit,89
	global	_checkOutA

;; *************** function _checkOutA *****************
;; Defined at:
;;		line 606 in file "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
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
;;		_ADC_Sample
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	606
global __ptext15
__ptext15:	;psect for function _checkOutA
psect	text15
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	606
	global	__size_of_checkOutA
	__size_of_checkOutA	equ	__end_of_checkOutA-_checkOutA
	
_checkOutA:	
;incstack = 0
	opt	stack 5
; Regs used in _checkOutA: [wreg+status,2+status,0+pclath+cstack]
	line	608
	
l2945:	
;main.c: 608: test_adc = ADC_Sample(0, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	609
	
l2947:	
;main.c: 609: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l2963
u2850:
	line	611
	
l2949:	
;main.c: 610: {
;main.c: 611: if(chrgFlag && adresult > 210)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l2959
u2860:
	
l2951:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	0D3h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u2871
	goto	u2870
u2871:
	goto	l2959
u2870:
	line	613
	
l2953:	
;main.c: 612: {
;main.c: 613: if(++overChrgTime > 10)
	movlw	low(0Bh)
	incf	(_overChrgTime),f
	subwf	((_overChrgTime)),w
	skipc
	goto	u2881
	goto	u2880
u2881:
	goto	l2961
u2880:
	line	615
	
l2955:	
;main.c: 614: {
;main.c: 615: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	616
	
l2957:	
;main.c: 616: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l2961
	line	622
	
l2959:	
;main.c: 620: else
;main.c: 621: {
;main.c: 622: overChrgTime = 0;
	clrf	(_overChrgTime)
	line	624
	
l2961:	
;main.c: 623: }
;main.c: 624: outADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_outADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_outADValue)
	line	626
;main.c: 626: }
	goto	l821
	line	629
	
l2963:	
;main.c: 627: else
;main.c: 628: {
;main.c: 629: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	630
;main.c: 630: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	631
	
l2965:	
;main.c: 631: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_checkOutA+0)+0),f
	u3277:
decfsz	(??_checkOutA+0)+0,f
	goto	u3277
opt asmopt_pop

	line	633
	
l821:	
	return
	opt stack 0
GLOBAL	__end_of_checkOutA
	__end_of_checkOutA:
	signat	_checkOutA,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 635 in file "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
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
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	635
global __ptext16
__ptext16:	;psect for function _checkBatAD
psect	text16
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	635
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 5
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	637
	
l2967:	
;main.c: 637: test_adc = ADC_Sample(1, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(01h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	638
	
l2969:	
;main.c: 638: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u2891
	goto	u2890
u2891:
	goto	l2999
u2890:
	line	640
	
l2971:	
;main.c: 639: {
;main.c: 640: batADValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_batADValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_batADValue)
	line	641
;main.c: 641: if(batADValue < 1117)
	movlw	04h
	subwf	(_batADValue+1),w
	movlw	05Dh
	skipnz
	subwf	(_batADValue),w
	skipnc
	goto	u2901
	goto	u2900
u2901:
	goto	l2981
u2900:
	line	643
	
l2973:	
;main.c: 642: {
;main.c: 643: pwStep = 0;
	clrf	(_pwStep)
	line	644
	
l2975:	
;main.c: 644: if(++count8s > 800)
	incf	(_count8s),f
	skipnz
	incf	(_count8s+1),f
	movlw	03h
	subwf	((_count8s+1)),w
	movlw	021h
	skipnz
	subwf	((_count8s)),w
	skipc
	goto	u2911
	goto	u2910
u2911:
	goto	l2993
u2910:
	line	646
	
l2977:	
;main.c: 645: {
;main.c: 646: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	647
	
l2979:	
;main.c: 647: lowBatFlag = 1;
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	line	648
;main.c: 648: prePwStep = 0;
	clrf	(_prePwStep)
	line	649
;main.c: 649: workStep = 0;
	clrf	(_workStep)
	line	650
;main.c: 650: powerStep = 0;
	clrf	(_powerStep)
	goto	l2993
	line	655
	
l2981:	
;main.c: 653: else
;main.c: 654: {
;main.c: 655: count8s = 0;
	clrf	(_count8s)
	clrf	(_count8s+1)
	line	656
	
l2983:	
;main.c: 656: if(batADValue >= 1340)
	movlw	05h
	subwf	(_batADValue+1),w
	movlw	03Ch
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u2921
	goto	u2920
u2921:
	goto	l2987
u2920:
	line	658
	
l2985:	
;main.c: 657: {
;main.c: 658: pwStep = ((batADValue - 1340) /2) + 13;
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
	line	659
;main.c: 659: }
	goto	l2989
	line	662
	
l2987:	
;main.c: 660: else
;main.c: 661: {
;main.c: 662: pwStep = (batADValue - 1117) / 16;
	movf	(_batADValue),w
	addlw	low(0FBA3h)
	movwf	(??_checkBatAD+0)+0
	movf	(_batADValue+1),w
	skipnc
	addlw	1
	addlw	high(0FBA3h)
	movwf	1+(??_checkBatAD+0)+0
	movlw	04h
u2935:
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	addlw	-1
	skipz
	goto	u2935
	movf	0+(??_checkBatAD+0)+0,w
	movwf	(_pwStep)
	line	664
	
l2989:	
;main.c: 663: }
;main.c: 664: if(pwStep > 99)
	movlw	low(064h)
	subwf	(_pwStep),w
	skipc
	goto	u2941
	goto	u2940
u2941:
	goto	l2993
u2940:
	line	666
	
l2991:	
;main.c: 665: {
;main.c: 666: pwStep = 99;
	movlw	low(063h)
	movwf	(_pwStep)
	line	669
	
l2993:	
;main.c: 667: }
;main.c: 668: }
;main.c: 669: if(chrgFlag && batADValue > 1861)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2951
	goto	u2950
u2951:
	goto	l3003
u2950:
	
l2995:	
	movlw	07h
	subwf	(_batADValue+1),w
	movlw	046h
	skipnz
	subwf	(_batADValue),w
	skipc
	goto	u2961
	goto	u2960
u2961:
	goto	l3003
u2960:
	line	671
	
l2997:	
;main.c: 670: {
;main.c: 671: protectFlag = 1;
	clrf	(_protectFlag)
	incf	(_protectFlag),f
	goto	l3003
	line	676
	
l2999:	
;main.c: 674: else
;main.c: 675: {
;main.c: 676: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	677
;main.c: 677: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	678
	
l3001:	
;main.c: 678: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_checkBatAD+0)+0),f
	u3287:
decfsz	(??_checkBatAD+0)+0,f
	goto	u3287
	nop2
opt asmopt_pop

	line	681
	
l3003:	
;main.c: 679: }
;main.c: 681: test_adc = ADC_Sample(2, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(02h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	682
	
l3005:	
;main.c: 682: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u2971
	goto	u2970
u2971:
	goto	l3023
u2970:
	line	684
	
l3007:	
;main.c: 683: {
;main.c: 684: if(chrgFlag && adresult > 100)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2981
	goto	u2980
u2981:
	goto	l841
u2980:
	
l3009:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	065h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u2991
	goto	u2990
u2991:
	goto	l841
u2990:
	line	687
	
l3011:	
;main.c: 685: {
;main.c: 687: if(adresult > 810 || (batADValue - adresult) > 810)
	movlw	03h
	subwf	(_adresult+1),w	;volatile
	movlw	02Bh
	skipnz
	subwf	(_adresult),w	;volatile
	skipnc
	goto	u3001
	goto	u3000
u3001:
	goto	l3015
u3000:
	
l3013:	
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
	goto	u3011
	goto	u3010
u3011:
	goto	l3021
u3010:
	line	690
	
l3015:	
;main.c: 688: {
;main.c: 690: if(++countHalfFull > 250)
	movlw	low(0FBh)
	incf	(_countHalfFull),f
	subwf	((_countHalfFull)),w
	skipc
	goto	u3021
	goto	u3020
u3021:
	goto	l834
u3020:
	line	692
	
l3017:	
;main.c: 691: {
;main.c: 692: countHalfFull = 0;
	clrf	(_countHalfFull)
	line	693
	
l3019:	
;main.c: 693: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l841
	line	698
	
l3021:	
;main.c: 696: else
;main.c: 697: {
;main.c: 698: countHalfFull = 0;
	clrf	(_countHalfFull)
	goto	l841
	line	700
	
l834:	
	line	701
;main.c: 699: }
;main.c: 700: }
;main.c: 701: }
	goto	l841
	line	704
	
l3023:	
;main.c: 702: else
;main.c: 703: {
;main.c: 704: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	705
;main.c: 705: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	706
	
l3025:	
;main.c: 706: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	132
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_checkBatAD+0)+0),f
	u3297:
decfsz	(??_checkBatAD+0)+0,f
	goto	u3297
	nop2
opt asmopt_pop

	line	709
	
l841:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 982 in file "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
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
;;		_checkKeyAD
;;		_checkOutA
;;		_checkBatAD
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	982
global __ptext17
__ptext17:	;psect for function _ADC_Sample
psect	text17
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	982
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 3
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ADC_Sample@adch)
	line	984
	
l2773:	
;main.c: 984: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	985
	
l2775:	
;main.c: 985: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	986
;main.c: 986: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	988
	
l2777:	
;main.c: 988: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u2571
	goto	u2570
u2571:
	goto	l2783
u2570:
	
l2779:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l2783
u2580:
	line	991
	
l2781:	
;main.c: 989: {
;main.c: 991: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	992
;main.c: 992: _delay((unsigned long)((100)*(16000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	133
movwf	((??_ADC_Sample+0)+0),f
	u3307:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u3307
opt asmopt_pop

	line	993
;main.c: 993: }
	goto	l2785
	line	995
	
l2783:	
;main.c: 994: else
;main.c: 995: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	997
	
l2785:	
;main.c: 997: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u2591
	goto	u2590
u2591:
	goto	l2791
u2590:
	line	999
	
l2787:	
;main.c: 998: {
;main.c: 999: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	1000
	
l2789:	
;main.c: 1000: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	1002
	
l2791:	
	line	1003
	
l2793:	
;main.c: 1003: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	1005
	
l2799:	
;main.c: 1004: {
;main.c: 1005: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u2605:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u2605
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	1006
# 1006 "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
nop ;# 
	line	1007
# 1007 "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
nop ;# 
	line	1008
# 1008 "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
nop ;# 
	line	1009
# 1009 "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
nop ;# 
psect	text17
	line	1010
	
l2801:	
;main.c: 1010: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	1012
	
l2803:	
;main.c: 1012: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	1013
;main.c: 1013: while (GODONE)
	goto	l882
	
l883:	
	line	1015
;main.c: 1014: {
;main.c: 1015: _delay((unsigned long)((2)*(16000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	1017
;main.c: 1017: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u2611
	goto	u2610
u2611:
	goto	l882
u2610:
	line	1018
	
l2805:	
;main.c: 1018: return 0;
	movlw	low(0)
	goto	l885
	line	1019
	
l882:	
	line	1013
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u2621
	goto	u2620
u2621:
	goto	l883
u2620:
	line	1021
	
l2809:	
;main.c: 1019: }
;main.c: 1021: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l2811:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	1023
	
l2813:	
;main.c: 1023: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u2631
	goto	u2630
u2631:
	goto	l2817
u2630:
	line	1025
	
l2815:	
;main.c: 1024: {
;main.c: 1025: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	1026
;main.c: 1026: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1027
;main.c: 1027: }
	goto	l888
	line	1028
	
l2817:	
;main.c: 1028: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u2645
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u2645:
	skipnc
	goto	u2641
	goto	u2640
u2641:
	goto	l2821
u2640:
	line	1029
	
l2819:	
;main.c: 1029: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l888
	line	1030
	
l2821:	
;main.c: 1030: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u2655
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u2655:
	skipnc
	goto	u2651
	goto	u2650
u2651:
	goto	l888
u2650:
	line	1031
	
l2823:	
;main.c: 1031: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	1033
	
l888:	
;main.c: 1033: adsum += ad_temp;
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
	goto	u2661
	addwf	(ADC_Sample@adsum+1),f	;volatile
u2661:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2662
	addwf	(ADC_Sample@adsum+2),f	;volatile
u2662:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2663
	addwf	(ADC_Sample@adsum+3),f	;volatile
u2663:

	line	1003
	
l2825:	
	incf	(ADC_Sample@i),f
	
l2827:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u2671
	goto	u2670
u2671:
	goto	l2799
u2670:
	line	1035
	
l2829:	
;main.c: 1034: }
;main.c: 1035: adsum -= admax;
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
	goto	u2685
	goto	u2686
u2685:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u2686:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u2687
	goto	u2688
u2687:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u2688:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u2689
	goto	u2680
u2689:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u2680:

	line	1036
;main.c: 1036: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u2695
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u2695
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u2695
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u2695:
	skipc
	goto	u2691
	goto	u2690
u2691:
	goto	l892
u2690:
	line	1037
	
l2831:	
;main.c: 1037: adsum -= admin;
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
	goto	u2705
	goto	u2706
u2705:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u2706:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u2707
	goto	u2708
u2707:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u2708:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u2709
	goto	u2700
u2709:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u2700:

	goto	l2833
	line	1038
	
l892:	
	line	1039
;main.c: 1038: else
;main.c: 1039: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1041
	
l2833:	
;main.c: 1041: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u2715:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u2710:
	addlw	-1
	skipz
	goto	u2715
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	1043
	
l2835:	
;main.c: 1043: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	1044
	
l2837:	
;main.c: 1044: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	1045
	
l2839:	
;main.c: 1045: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	1046
	
l2841:	
;main.c: 1046: return 0xA5;
	movlw	low(0A5h)
	line	1048
	
l885:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 904 in file "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
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
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	904
global __ptext18
__ptext18:	;psect for function _Sleep_Mode
psect	text18
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	904
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 5
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	906
	
l2655:	
;main.c: 906: INTCON = 0;
	clrf	(11)	;volatile
	line	908
;main.c: 908: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	912
	
l2657:	
;main.c: 912: TRISA = 0x37;
	movlw	low(037h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	913
	
l2659:	
;main.c: 913: TRISB = 0x84;
	movlw	low(084h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	915
;main.c: 915: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	916
	
l2661:	
;main.c: 916: PORTB = 0X03;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	919
	
l2663:	
;main.c: 919: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(149)^080h	;volatile
	line	920
	
l2665:	
;main.c: 920: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	922
	
l2667:	
;main.c: 922: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	924
;main.c: 924: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	926
	
l2669:	
;main.c: 926: IOCA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	927
	
l2671:	
;main.c: 927: IOCB = 0x84;
	movlw	low(084h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	929
	
l2673:	
;main.c: 929: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	930
	
l2675:	
;main.c: 930: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	931
	
l2677:	
;main.c: 931: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	932
	
l2679:	
;main.c: 932: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	934
	
l2681:	
;main.c: 934: PIE1 &= 0X08;
	movlw	low(08h)
	andwf	(14),f	;volatile
	line	935
	
l2683:	
;main.c: 935: PIR1 = 0;
	clrf	(13)	;volatile
	line	936
;main.c: 936: INTCON &= 0XC8;
	movlw	low(0C8h)
	andwf	(11),f	;volatile
	line	938
	
l2685:	
;main.c: 938: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	939
	
l2687:	
;main.c: 939: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	940
	
l2689:	
;main.c: 940: PORTB;
	movf	(6),w	;volatile
	line	941
	
l2691:	
;main.c: 941: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	942
# 942 "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
clrwdt ;# 
	line	944
# 944 "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
sleep ;# 
	line	946
# 946 "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
nop ;# 
	line	947
# 947 "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
clrwdt ;# 
	line	948
# 948 "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
nop ;# 
	line	949
# 949 "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
nop ;# 
	line	950
# 950 "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
nop ;# 
	line	951
# 951 "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
nop ;# 
	line	952
# 952 "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
nop ;# 
psect	text18
	line	953
	
l2693:	
;main.c: 953: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u2391
	goto	u2390
u2391:
	goto	l871
u2390:
	
l2695:	
	bcf	(107/8),(107)&7	;volatile
	
l871:	
	line	954
;main.c: 954: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u2401
	goto	u2400
u2401:
	goto	l872
u2400:
	
l2697:	
	bcf	(88/8),(88)&7	;volatile
	
l872:	
	line	955
;main.c: 955: if(TMR2IF) TMR2IF = 0;
	btfss	(105/8),(105)&7	;volatile
	goto	u2411
	goto	u2410
u2411:
	goto	l2701
u2410:
	
l2699:	
	bcf	(105/8),(105)&7	;volatile
	line	956
	
l2701:	
;main.c: 956: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	957
;main.c: 957: IOCB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(9)	;volatile
	line	958
	
l2703:	
;main.c: 958: Init_System();
	fcall	_Init_System
	line	959
	
l2705:	
;main.c: 959: AD_Init();
	fcall	_AD_Init
	line	960
	
l874:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 720 in file "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
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
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	720
global __ptext19
__ptext19:	;psect for function _Init_System
psect	text19
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	720
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_System: [wreg+status,2]
	line	722
	
l2109:	
# 722 "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
nop ;# 
	line	723
# 723 "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
clrwdt ;# 
psect	text19
	line	724
	
l2111:	
;main.c: 724: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	725
# 725 "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
clrwdt ;# 
psect	text19
	line	726
	
l2113:	
;main.c: 726: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	728
	
l2115:	
;main.c: 728: WPUA = 0x20;
	movlw	low(020h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(136)^080h	;volatile
	line	729
;main.c: 729: WPDA = 0x00;
	clrf	(135)^080h	;volatile
	line	730
	
l2117:	
;main.c: 730: WPUB = 0x80;
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	732
	
l2119:	
;main.c: 732: TRISA = 0x37;
	movlw	low(037h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	733
	
l2121:	
;main.c: 733: TRISB = 0x84;
	movlw	low(084h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	735
	
l2123:	
;main.c: 735: PORTA = 0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	736
;main.c: 736: PORTB = 0X03;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	740
;main.c: 740: PR2 = 249;
	movlw	low(0F9h)
	movwf	(17)	;volatile
	line	741
	
l2125:	
;main.c: 741: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	742
	
l2127:	
;main.c: 742: TMR2IE = 1;
	bsf	(113/8),(113)&7	;volatile
	line	744
;main.c: 744: T2CON = 0B00000100;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	745
;main.c: 745: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	746
	
l844:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 757 in file "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
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
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	757
global __ptext20
__ptext20:	;psect for function _AD_Init
psect	text20
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	757
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 5
; Regs used in _AD_Init: [wreg+status,2]
	line	790
	
l2129:	
;main.c: 790: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	807
	
l2131:	
;main.c: 807: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	808
	
l2133:	
;main.c: 808: ANSEL0 = 0X07;
	movlw	low(07h)
	movwf	(147)^080h	;volatile
	line	809
;main.c: 809: ANSEL1 = 0x00;
	clrf	(148)^080h	;volatile
	line	810
	
l847:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 129 in file "C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
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
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	129
global __ptext21
__ptext21:	;psect for function _Isr_Timer
psect	text21
	file	"C:\mcuproject\scm\zdt\D220_062B_SOP16\main.c"
	line	129
	global	__size_of_Isr_Timer
	__size_of_Isr_Timer	equ	__end_of_Isr_Timer-_Isr_Timer
	
_Isr_Timer:	
;incstack = 0
	opt	stack 3
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
psect	text21
	line	131
	
i1l2707:	
;main.c: 131: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u242_21
	goto	u242_20
u242_21:
	goto	i1l688
u242_20:
	line	133
	
i1l2709:	
;main.c: 132: {
;main.c: 133: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	134
	
i1l2711:	
;main.c: 134: if(++intCount >= 160)
	movlw	low(0A0h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u243_21
	goto	u243_20
u243_21:
	goto	i1l2723
u243_20:
	line	136
	
i1l2713:	
;main.c: 135: {
;main.c: 136: intCount = 0;
	clrf	(_intCount)
	line	137
	
i1l2715:	
;main.c: 137: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	138
	
i1l2717:	
;main.c: 138: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u244_21
	goto	u244_20
u244_21:
	goto	i1l2723
u244_20:
	line	140
	
i1l2719:	
;main.c: 139: {
;main.c: 140: count1s = 0;
	clrf	(_count1s)
	line	141
	
i1l2721:	
;main.c: 141: count40s++;
	incf	(_count40s),f
	line	144
	
i1l2723:	
;main.c: 142: }
;main.c: 143: }
;main.c: 144: intCount10++;
	incf	(_intCount10),f
	line	147
	
i1l688:	
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
