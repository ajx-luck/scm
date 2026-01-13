opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F083
opt include "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\include\sc8f083.cgen.inc"
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
	FNCALL	_main,_Init_System
	FNCALL	_main,_Sleep_Mode
	FNCALL	_main,___bmul
	FNCALL	_main,_checkBatAD
	FNCALL	_main,_chrgCtr
	FNCALL	_main,_fRxFun
	FNCALL	_main,_keyCtr
	FNCALL	_main,_ledCtr
	FNCALL	_main,_pwmOff
	FNCALL	_main,_setMode
	FNCALL	_main,_workCtr
	FNCALL	_workCtr,_checkHotAD
	FNCALL	_checkHotAD,_ADC_Sample
	FNCALL	_setMode,_pwmOff
	FNCALL	_setMode,_pwmOn
	FNCALL	_keyCtr,_keyAdd
	FNCALL	_keyCtr,_keyRead
	FNCALL	_keyCtr,_keyRead2
	FNCALL	_keyCtr,_keySub
	FNCALL	_keyRead2,_checkKeyAD
	FNCALL	_checkKeyAD,_ADC_Sample
	FNCALL	_fRxFun,_keyAdd
	FNCALL	_fRxFun,_keySub
	FNCALL	_checkBatAD,_ADC_Sample
	FNCALL	_Sleep_Mode,_Init_System
	FNROOT	_main
	FNCALL	_Isr_Timer,_fRxDecoed
	FNCALL	_Isr_Timer,_refreshLed
	FNCALL	_refreshLed,_ledOpen
	FNCALL	_fRxDecoed,_fRXError
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_showNumAShi
	global	_showNumAge
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\number.c"
	line	6

;initializer for _showNumAShi
	retlw	07Fh
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	line	7

;initializer for _showNumAge
	retlw	07Fh
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
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	16
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
	retlw	077h
	retlw	07Ch
	retlw	039h
	retlw	05Eh
	retlw	079h
	retlw	071h
	global __end_of_numArray
__end_of_numArray:
	global	_numArray
	global	_g8RxTime
	global	_hotStep
	global	_motorStep
	global	_workStep
	global	_B_OnOff
	global	_B_MainLoop
	global	_power_ad
	global	_result
	global	_adresult
	global	_hotData
	global	_xdTime
	global	_zqTime
	global	_tempData
	global	_sleepTime
	global	_ledCnt
	global	_test_adc
	global	_g8CtrlFlg
	global	_g8RxDataBit
	global	_g8RxData
	global	_g8RX
	global	_recData3
	global	_recData2
	global	_recData1
	global	_count100us
	global	_motorDuty
	global	_dlStep
	global	_count500ms
	global	_keyNum
	global	_lowBatTime
	global	_chrgPWMFlag
	global	_intCount10
	global	_chrgWaitTime
	global	_chrgFullFlag
	global	_keyCount2
	global	_keyCount
	global	_longPressFlag
	global	_count1s
	global	_chrgFlag
	global	_MainTime
	global	_firstShowCount
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_firstShowCount:
       ds      2

	global	_beepTime
_beepTime:
       ds      1

	global	_PWMD01H
_PWMD01H	set	30
	global	_PWMCON2
_PWMCON2	set	29
	global	_PWMD1L
_PWMD1L	set	26
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
	global	_RB5
_RB5	set	53
	global	_ADRESH
_ADRESH	set	153
	global	_ADRESL
_ADRESL	set	152
	global	_ADCON1
_ADCON1	set	150
	global	_ADCON0
_ADCON0	set	149
	global	_IOCA
_IOCA	set	137
	global	_WPUA
_WPUA	set	136
	global	_PORTA
_PORTA	set	134
	global	_TRISA
_TRISA	set	133
	global	_LDO_EN
_LDO_EN	set	1202
	global	_CHS4
_CHS4	set	1206
	global	_ADON
_ADON	set	1192
	global	_GODONE
_GODONE	set	1193
	global	_RA2
_RA2	set	1074
	global	_RA3
_RA3	set	1075
	global	_RA4
_RA4	set	1076
	global	_PORTC
_PORTC	set	262
	global	_TRISC
_TRISC	set	261
	global	_RC0
_RC0	set	2096
; #config settings
	file	"D262_8F083_tssop20_.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_B_OnOff:
       ds      1

_B_MainLoop:
       ds      1

psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_g8RxTime:
       ds      1

_hotStep:
       ds      1

_motorStep:
       ds      1

_workStep:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\number.c"
	line	6
_showNumAShi:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_power_ad:
       ds      2

_result:
       ds      2

_adresult:
       ds      2

_hotData:
       ds      2

_xdTime:
       ds      2

_zqTime:
       ds      2

_tempData:
       ds      2

_sleepTime:
       ds      2

_ledCnt:
       ds      1

_test_adc:
       ds      1

_g8CtrlFlg:
       ds      1

_g8RxDataBit:
       ds      1

_g8RxData:
       ds      1

_g8RX:
       ds      1

_recData3:
       ds      1

_recData2:
       ds      1

_recData1:
       ds      1

_count100us:
       ds      1

_motorDuty:
       ds      1

_dlStep:
       ds      1

_count500ms:
       ds      1

_keyNum:
       ds      1

_lowBatTime:
       ds      1

_chrgPWMFlag:
       ds      1

_intCount10:
       ds      1

_chrgWaitTime:
       ds      1

_chrgFullFlag:
       ds      1

_keyCount2:
       ds      1

_keyCount:
       ds      1

_longPressFlag:
       ds      1

_count1s:
       ds      1

_chrgFlag:
       ds      1

_MainTime:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\number.c"
	line	7
_showNumAge:
       ds      1

	file	"D262_8F083_tssop20_.as"
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
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

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+029h)
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
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
?_refreshLed:	; 1 bytes @ 0x0
?_fRxDecoed:	; 1 bytes @ 0x0
??_fRxDecoed:	; 1 bytes @ 0x0
?_keySub:	; 1 bytes @ 0x0
?_keyAdd:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
?_Sleep_Mode:	; 1 bytes @ 0x0
?_checkKeyAD:	; 1 bytes @ 0x0
?_checkBatAD:	; 1 bytes @ 0x0
?_checkHotAD:	; 1 bytes @ 0x0
?_fRxFun:	; 1 bytes @ 0x0
?_fRXError:	; 1 bytes @ 0x0
??_fRXError:	; 1 bytes @ 0x0
?_pwmOn:	; 1 bytes @ 0x0
?_pwmOff:	; 1 bytes @ 0x0
?_chrgCtr:	; 1 bytes @ 0x0
?_workCtr:	; 1 bytes @ 0x0
?_keyRead:	; 1 bytes @ 0x0
?_keyRead2:	; 1 bytes @ 0x0
?_keyCtr:	; 1 bytes @ 0x0
?_ledCtr:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_ledOpen:	; 1 bytes @ 0x0
	global	ledOpen@low
ledOpen@low:	; 1 bytes @ 0x0
	ds	1
??_ledOpen:	; 1 bytes @ 0x1
	global	ledOpen@hight
ledOpen@hight:	; 1 bytes @ 0x1
	ds	1
??_refreshLed:	; 1 bytes @ 0x2
??_Isr_Timer:	; 1 bytes @ 0x2
	ds	3
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_keySub:	; 1 bytes @ 0x0
??_keyAdd:	; 1 bytes @ 0x0
??_Init_System:	; 1 bytes @ 0x0
??_Sleep_Mode:	; 1 bytes @ 0x0
?_ADC_Sample:	; 1 bytes @ 0x0
??_fRxFun:	; 1 bytes @ 0x0
??_pwmOn:	; 1 bytes @ 0x0
??_pwmOff:	; 1 bytes @ 0x0
??_chrgCtr:	; 1 bytes @ 0x0
??_keyRead:	; 1 bytes @ 0x0
??_ledCtr:	; 1 bytes @ 0x0
?___bmul:	; 1 bytes @ 0x0
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x0
	global	keyRead@keyStatus
keyRead@keyStatus:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	ds	1
??_ADC_Sample:	; 1 bytes @ 0x1
??___bmul:	; 1 bytes @ 0x1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x1
	ds	1
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x2
	ds	1
?_setMode:	; 1 bytes @ 0x3
	global	setMode@zqMaxTime
setMode@zqMaxTime:	; 2 bytes @ 0x3
	ds	2
	global	ADC_Sample@j
ADC_Sample@j:	; 1 bytes @ 0x5
	global	setMode@halfTime
setMode@halfTime:	; 2 bytes @ 0x5
	ds	1
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x6
	ds	1
	global	ADC_Sample@i
ADC_Sample@i:	; 1 bytes @ 0x7
	global	setMode@pwmTime
setMode@pwmTime:	; 1 bytes @ 0x7
	ds	1
??_setMode:	; 1 bytes @ 0x8
	global	ADC_Sample@adsum
ADC_Sample@adsum:	; 4 bytes @ 0x8
	ds	4
	global	ADC_Sample@admin
ADC_Sample@admin:	; 2 bytes @ 0xC
	ds	2
	global	ADC_Sample@admax
ADC_Sample@admax:	; 2 bytes @ 0xE
	ds	2
	global	ADC_Sample@ad_temp
ADC_Sample@ad_temp:	; 2 bytes @ 0x10
	ds	2
??_checkKeyAD:	; 1 bytes @ 0x12
??_checkBatAD:	; 1 bytes @ 0x12
??_checkHotAD:	; 1 bytes @ 0x12
??_workCtr:	; 1 bytes @ 0x12
??_keyRead2:	; 1 bytes @ 0x12
	global	keyRead2@keyStatus
keyRead2@keyStatus:	; 1 bytes @ 0x12
	ds	1
??_keyCtr:	; 1 bytes @ 0x13
	global	keyCtr@kclick
keyCtr@kclick:	; 1 bytes @ 0x13
	ds	1
??_main:	; 1 bytes @ 0x14
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    16
;!    Data        2
;!    BSS         45
;!    Persistent  3
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5      11
;!    BANK0            80     20      65
;!    BANK1            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _Isr_Timer in COMMON
;!
;!    _refreshLed->_ledOpen
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_keyCtr
;!    _checkHotAD->_ADC_Sample
;!    _setMode->___bmul
;!    _keyCtr->_keyRead2
;!    _checkKeyAD->_ADC_Sample
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
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _Isr_Timer in BANK2
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
;! (0) _main                                                 0     0      0    4869
;!                        _Init_System
;!                         _Sleep_Mode
;!                             ___bmul
;!                         _checkBatAD
;!                            _chrgCtr
;!                             _fRxFun
;!                             _keyCtr
;!                             _ledCtr
;!                             _pwmOff
;!                            _setMode
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              0     0      0     977
;!                         _checkHotAD
;! ---------------------------------------------------------------------------------
;! (2) _checkHotAD                                           0     0      0     977
;!                         _ADC_Sample
;! ---------------------------------------------------------------------------------
;! (1) _setMode                                              9     4      5    1316
;!                                              3 BANK0      9     4      5
;!                             ___bmul (ARG)
;!                             _pwmOff
;!                              _pwmOn
;! ---------------------------------------------------------------------------------
;! (2) _pwmOn                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _pwmOff                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _ledCtr                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _keyCtr                                               1     1      0    1138
;!                                             19 BANK0      1     1      0
;!                             _keyAdd
;!                            _keyRead
;!                           _keyRead2
;!                             _keySub
;! ---------------------------------------------------------------------------------
;! (2) _keyRead2                                             1     1      0    1008
;!                                             18 BANK0      1     1      0
;!                         _checkKeyAD
;! ---------------------------------------------------------------------------------
;! (3) _checkKeyAD                                           0     0      0     977
;!                         _ADC_Sample
;! ---------------------------------------------------------------------------------
;! (2) _keyRead                                              1     1      0      31
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _fRxFun                                               0     0      0       0
;!                             _keyAdd
;!                             _keySub
;! ---------------------------------------------------------------------------------
;! (2) _keySub                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _keyAdd                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkBatAD                                           0     0      0     977
;!                         _ADC_Sample
;! ---------------------------------------------------------------------------------
;! (3) _ADC_Sample                                          18    17      1     977
;!                                              0 BANK0     18    17      1
;! ---------------------------------------------------------------------------------
;! (1) ___bmul                                               3     2      1     461
;!                                              0 BANK0      3     2      1
;! ---------------------------------------------------------------------------------
;! (1) _Sleep_Mode                                           0     0      0       0
;!                        _Init_System
;! ---------------------------------------------------------------------------------
;! (2) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _Isr_Timer                                            3     3      0     574
;!                                              2 COMMON     3     3      0
;!                          _fRxDecoed
;!                         _refreshLed
;! ---------------------------------------------------------------------------------
;! (6) _refreshLed                                           0     0      0     574
;!                            _ledOpen
;! ---------------------------------------------------------------------------------
;! (7) _ledOpen                                              2     1      1     574
;!                                              0 COMMON     2     1      1
;! ---------------------------------------------------------------------------------
;! (6) _fRxDecoed                                            0     0      0       0
;!                           _fRXError
;! ---------------------------------------------------------------------------------
;! (7) _fRXError                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Init_System
;!   _Sleep_Mode
;!     _Init_System
;!   ___bmul
;!   _checkBatAD
;!     _ADC_Sample
;!   _chrgCtr
;!   _fRxFun
;!     _keyAdd
;!     _keySub
;!   _keyCtr
;!     _keyAdd
;!     _keyRead
;!     _keyRead2
;!       _checkKeyAD
;!         _ADC_Sample
;!     _keySub
;!   _ledCtr
;!   _pwmOff
;!   _setMode
;!     ___bmul (ARG)
;!     _pwmOff (ARG)
;!     _pwmOn (ARG)
;!   _workCtr
;!     _checkHotAD
;!       _ADC_Sample
;!
;! _Isr_Timer (ROOT)
;!   _fRxDecoed
;!     _fRXError
;!   _refreshLed
;!     _ledOpen
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               50      0       0       7        0.0%
;!BITBANK2            50      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     14      41       4       81.3%
;!BITBANK0            50      0       0       3        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      5       B       1       78.6%
;!BITCOMMON            E      0       1       0        7.1%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      4C       9        0.0%
;!ABS                  0      0      4C       8        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 1132 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
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
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Init_System
;;		_Sleep_Mode
;;		___bmul
;;		_checkBatAD
;;		_chrgCtr
;;		_fRxFun
;;		_keyCtr
;;		_ledCtr
;;		_pwmOff
;;		_setMode
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	1132
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	1132
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	1135
	
l4754:	
;main.c: 1135: Init_System();
	fcall	_Init_System
	line	1136
	
l4756:	
;main.c: 1136: beepTime = 50;
	movlw	low(032h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_beepTime)
	line	1137
	
l4758:	
;main.c: 1137: firstShowCount = 200;
	movlw	0C8h
	movwf	(_firstShowCount)
	clrf	(_firstShowCount+1)
	line	1138
;main.c: 1138: while(1)
	
l1253:	
	line	1140
;main.c: 1139: {
;main.c: 1140: fRxFun();
	fcall	_fRxFun
	line	1141
	
l4760:	
;main.c: 1141: if(count100us)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_count100us)),w
	btfsc	status,2
	goto	u3801
	goto	u3800
u3801:
	goto	l4792
u3800:
	line	1143
	
l4762:	
;main.c: 1142: {
;main.c: 1143: count100us = 0;
	clrf	(_count100us)
	line	1144
	
l4764:	
;main.c: 1144: if(dlStep > 0)
	movf	((_dlStep)),w
	btfsc	status,2
	goto	u3811
	goto	u3810
u3811:
	goto	l4788
u3810:
	line	1146
	
l4766:	
;main.c: 1145: {
;main.c: 1146: if(xdTime < 10)
	movlw	0
	subwf	(_xdTime+1),w
	movlw	0Ah
	skipnz
	subwf	(_xdTime),w
	skipnc
	goto	u3821
	goto	u3820
u3821:
	goto	l4770
u3820:
	line	1148
	
l4768:	
;main.c: 1147: {
;main.c: 1148: setMode(3300,1650,(dlStep-1)*10 + 5);
	movlw	0E4h
	movwf	(setMode@zqMaxTime)
	movlw	0Ch
	movwf	((setMode@zqMaxTime))+1
	movlw	072h
	movwf	(setMode@halfTime)
	movlw	06h
	movwf	((setMode@halfTime))+1
	movlw	low(0Ah)
	movwf	(___bmul@multiplicand)
	movf	(_dlStep),w
	fcall	___bmul
	addlw	0FBh
	movwf	(setMode@pwmTime)
	fcall	_setMode
	line	1149
;main.c: 1149: }
	goto	l4792
	line	1150
	
l4770:	
;main.c: 1150: else if(xdTime < 40)
	movlw	0
	subwf	(_xdTime+1),w
	movlw	028h
	skipnz
	subwf	(_xdTime),w
	skipnc
	goto	u3831
	goto	u3830
u3831:
	goto	l4774
u3830:
	line	1152
	
l4772:	
;main.c: 1151: {
;main.c: 1152: setMode(2000,1000,(dlStep-1)*10 + 5);
	movlw	0D0h
	movwf	(setMode@zqMaxTime)
	movlw	07h
	movwf	((setMode@zqMaxTime))+1
	movlw	0E8h
	movwf	(setMode@halfTime)
	movlw	03h
	movwf	((setMode@halfTime))+1
	movlw	low(0Ah)
	movwf	(___bmul@multiplicand)
	movf	(_dlStep),w
	fcall	___bmul
	addlw	0FBh
	movwf	(setMode@pwmTime)
	fcall	_setMode
	line	1153
;main.c: 1153: }
	goto	l4792
	line	1154
	
l4774:	
;main.c: 1154: else if(xdTime < 90)
	movlw	0
	subwf	(_xdTime+1),w
	movlw	05Ah
	skipnz
	subwf	(_xdTime),w
	skipnc
	goto	u3841
	goto	u3840
u3841:
	goto	l4778
u3840:
	line	1156
	
l4776:	
;main.c: 1155: {
;main.c: 1156: setMode(1000,500,(dlStep-1)*10 + 5);
	movlw	0E8h
	movwf	(setMode@zqMaxTime)
	movlw	03h
	movwf	((setMode@zqMaxTime))+1
	movlw	0F4h
	movwf	(setMode@halfTime)
	movlw	01h
	movwf	((setMode@halfTime))+1
	movlw	low(0Ah)
	movwf	(___bmul@multiplicand)
	movf	(_dlStep),w
	fcall	___bmul
	addlw	0FBh
	movwf	(setMode@pwmTime)
	fcall	_setMode
	line	1157
;main.c: 1157: }
	goto	l4792
	line	1158
	
l4778:	
;main.c: 1158: else if(xdTime < 170)
	movlw	0
	subwf	(_xdTime+1),w
	movlw	0AAh
	skipnz
	subwf	(_xdTime),w
	skipnc
	goto	u3851
	goto	u3850
u3851:
	goto	l4782
u3850:
	line	1160
	
l4780:	
;main.c: 1159: {
;main.c: 1160: setMode(700,350,(dlStep-1)*10 + 5);
	movlw	0BCh
	movwf	(setMode@zqMaxTime)
	movlw	02h
	movwf	((setMode@zqMaxTime))+1
	movlw	05Eh
	movwf	(setMode@halfTime)
	movlw	01h
	movwf	((setMode@halfTime))+1
	movlw	low(0Ah)
	movwf	(___bmul@multiplicand)
	movf	(_dlStep),w
	fcall	___bmul
	addlw	0FBh
	movwf	(setMode@pwmTime)
	fcall	_setMode
	line	1161
;main.c: 1161: }
	goto	l4792
	line	1164
	
l4782:	
;main.c: 1162: else
;main.c: 1163: {
;main.c: 1164: if(xdTime > 320)
	movlw	01h
	subwf	(_xdTime+1),w
	movlw	041h
	skipnz
	subwf	(_xdTime),w
	skipc
	goto	u3861
	goto	u3860
u3861:
	goto	l4786
u3860:
	line	1166
	
l4784:	
;main.c: 1165: {
;main.c: 1166: xdTime = 0;
	clrf	(_xdTime)
	clrf	(_xdTime+1)
	line	1168
	
l4786:	
;main.c: 1167: }
;main.c: 1168: setMode(380,190,(dlStep-1)*10+5);
	movlw	07Ch
	movwf	(setMode@zqMaxTime)
	movlw	01h
	movwf	((setMode@zqMaxTime))+1
	movlw	0BEh
	movwf	(setMode@halfTime)
	clrf	(setMode@halfTime+1)
	movlw	low(0Ah)
	movwf	(___bmul@multiplicand)
	movf	(_dlStep),w
	fcall	___bmul
	addlw	0FBh
	movwf	(setMode@pwmTime)
	fcall	_setMode
	goto	l4792
	line	1173
	
l4788:	
;main.c: 1171: else
;main.c: 1172: {
;main.c: 1173: pwmOff();
	fcall	_pwmOff
	line	1174
	
l4790:	
;main.c: 1174: PORTA &= 0xE7;
	movlw	low(0E7h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	1177
	
l4792:	
;main.c: 1175: }
;main.c: 1176: }
;main.c: 1177: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u3871
	goto	u3870
u3871:
	goto	l1253
u3870:
	line	1179
	
l4794:	
;main.c: 1178: {
;main.c: 1179: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	1180
# 1180 "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
clrwdt ;# 
psect	maintext
	line	1181
	
l4796:	
;main.c: 1181: ledCtr();
	fcall	_ledCtr
	line	1182
	
l4798:	
;main.c: 1182: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3881
	goto	u3880
u3881:
	goto	l1267
u3880:
	line	1183
	
l4800:	
;main.c: 1183: keyCtr();
	fcall	_keyCtr
	
l1267:	
	line	1184
;main.c: 1184: workCtr();
	fcall	_workCtr
	line	1185
;main.c: 1185: chrgCtr();
	fcall	_chrgCtr
	line	1186
	
l4802:	
;main.c: 1186: if(PORTB & 0x10)
	btfss	(6),(4)&7	;volatile
	goto	u3891
	goto	u3890
u3891:
	goto	l4806
u3890:
	line	1188
	
l4804:	
;main.c: 1187: {
;main.c: 1188: checkBatAD();
	fcall	_checkBatAD
	line	1190
	
l4806:	
;main.c: 1189: }
;main.c: 1190: if(workStep == 0 && keyCount == 0 && chrgFlag == 0 && firstShowCount == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u3901
	goto	u3900
u3901:
	goto	l4820
u3900:
	
l4808:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u3911
	goto	u3910
u3911:
	goto	l4820
u3910:
	
l4810:	
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3921
	goto	u3920
u3921:
	goto	l4820
u3920:
	
l4812:	
	movf	((_firstShowCount)),w
iorwf	((_firstShowCount+1)),w
	btfss	status,2
	goto	u3931
	goto	u3930
u3931:
	goto	l4820
u3930:
	line	1193
	
l4814:	
;main.c: 1191: {
;main.c: 1193: if(++sleepTime > 250)
	incf	(_sleepTime),f
	skipnz
	incf	(_sleepTime+1),f
	movlw	0
	subwf	((_sleepTime+1)),w
	movlw	0FBh
	skipnz
	subwf	((_sleepTime)),w
	skipc
	goto	u3941
	goto	u3940
u3941:
	goto	l1266
u3940:
	line	1195
	
l4816:	
;main.c: 1194: {
;main.c: 1195: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	line	1196
	
l4818:	
;main.c: 1196: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l1253
	line	1201
	
l4820:	
;main.c: 1199: else
;main.c: 1200: {
;main.c: 1201: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	goto	l1253
	line	1205
	
l1266:	
	goto	l1253
	global	start
	ljmp	start
	opt stack 0
	line	1207
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 808 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_checkHotAD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	808
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	808
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 2
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	810
	
l4608:	
;main.c: 810: if(beepTime > 0)
	movf	((_beepTime)),w
	btfsc	status,2
	goto	u3471
	goto	u3470
u3471:
	goto	l1160
u3470:
	line	812
	
l4610:	
;main.c: 811: {
;main.c: 812: beepTime--;
	decf	(_beepTime),f
	line	813
;main.c: 813: }
	goto	l4612
	line	814
	
l1160:	
	line	816
;main.c: 814: else
;main.c: 815: {
;main.c: 816: PORTA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(5/8),(5)&7	;volatile
	line	818
	
l4612:	
;main.c: 817: }
;main.c: 818: if(firstShowCount > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_firstShowCount)),w
iorwf	((_firstShowCount+1)),w
	btfsc	status,2
	goto	u3481
	goto	u3480
u3481:
	goto	l4616
u3480:
	line	820
	
l4614:	
;main.c: 819: {
;main.c: 820: firstShowCount--;
	movlw	01h
	subwf	(_firstShowCount),f
	movlw	0
	skipc
	decf	(_firstShowCount+1),f
	subwf	(_firstShowCount+1),f
	line	822
	
l4616:	
;main.c: 821: }
;main.c: 822: if(hotStep > 0)
	movf	((_hotStep)),w
	btfsc	status,2
	goto	u3491
	goto	u3490
u3491:
	goto	l4636
u3490:
	line	824
	
l4618:	
;main.c: 823: {
;main.c: 824: checkHotAD();
	fcall	_checkHotAD
	line	825
	
l4620:	
;main.c: 825: PORTA &= 0xFC;
	movlw	low(0FCh)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	826
	
l4622:	
;main.c: 826: if(hotStep == 1 && hotData > 700)
		decf	((_hotStep)),w
	btfss	status,2
	goto	u3501
	goto	u3500
u3501:
	goto	l1164
u3500:
	
l4624:	
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_hotData+1),w
	movlw	0BDh
	skipnz
	subwf	(_hotData),w
	skipc
	goto	u3511
	goto	u3510
u3511:
	goto	l1164
u3510:
	line	828
	
l4626:	
;main.c: 827: {
;main.c: 828: PORTA |= 0x03;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(134)^080h,f	;volatile
	line	829
	
l1164:	
	line	830
;main.c: 829: }
;main.c: 830: if(hotStep == 2 && hotData > 650)
		movlw	2
	xorwf	((_hotStep)),w
	btfss	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l1165
u3520:
	
l4628:	
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_hotData+1),w
	movlw	08Bh
	skipnz
	subwf	(_hotData),w
	skipc
	goto	u3531
	goto	u3530
u3531:
	goto	l1165
u3530:
	line	832
	
l4630:	
;main.c: 831: {
;main.c: 832: PORTA |= 0x03;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(134)^080h,f	;volatile
	line	833
	
l1165:	
	line	834
;main.c: 833: }
;main.c: 834: if(hotStep == 3 && hotData > 600)
		movlw	3
	xorwf	((_hotStep)),w
	btfss	status,2
	goto	u3541
	goto	u3540
u3541:
	goto	l1167
u3540:
	
l4632:	
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_hotData+1),w
	movlw	059h
	skipnz
	subwf	(_hotData),w
	skipc
	goto	u3551
	goto	u3550
u3551:
	goto	l1167
u3550:
	line	836
	
l4634:	
;main.c: 835: {
;main.c: 836: PORTA |= 0x03;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(134)^080h,f	;volatile
	goto	l1167
	line	842
	
l4636:	
;main.c: 840: else
;main.c: 841: {
;main.c: 842: PORTA &= 0xFC;
	movlw	low(0FCh)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	843
	
l1167:	
	line	845
;main.c: 843: }
;main.c: 845: if(motorStep == 1)
		decf	((_motorStep)),w
	btfss	status,2
	goto	u3561
	goto	u3560
u3561:
	goto	l4640
u3560:
	line	847
	
l4638:	
;main.c: 846: {
;main.c: 847: motorDuty = 70;
	movlw	low(046h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_motorDuty)
	line	848
;main.c: 848: }
	goto	l4650
	line	849
	
l4640:	
;main.c: 849: else if(motorStep == 2)
		movlw	2
	xorwf	((_motorStep)),w
	btfss	status,2
	goto	u3571
	goto	u3570
u3571:
	goto	l4644
u3570:
	line	851
	
l4642:	
;main.c: 850: {
;main.c: 851: motorDuty = 85;
	movlw	low(055h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_motorDuty)
	line	852
;main.c: 852: }
	goto	l4650
	line	853
	
l4644:	
;main.c: 853: else if(motorStep == 3)
		movlw	3
	xorwf	((_motorStep)),w
	btfss	status,2
	goto	u3581
	goto	u3580
u3581:
	goto	l4648
u3580:
	line	855
	
l4646:	
;main.c: 854: {
;main.c: 855: motorDuty = 100;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_motorDuty)
	line	856
;main.c: 856: }
	goto	l4650
	line	859
	
l4648:	
;main.c: 857: else
;main.c: 858: {
;main.c: 859: motorDuty = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_motorDuty)
	line	861
	
l4650:	
;main.c: 860: }
;main.c: 861: if(workStep == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u3591
	goto	u3590
u3591:
	goto	l4656
u3590:
	line	863
	
l4652:	
;main.c: 862: {
;main.c: 863: motorStep = 0;
	clrf	(_motorStep)
	line	864
;main.c: 864: dlStep = 0;
	clrf	(_dlStep)
	line	865
;main.c: 865: hotStep = 0;
	clrf	(_hotStep)
	line	866
;main.c: 866: motorDuty = 0;
	clrf	(_motorDuty)
	line	867
	
l4654:	
;main.c: 867: PORTA &= 0xE0;
	movlw	low(0E0h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	goto	l1178
	line	869
	
l4656:	
	line	881
	
l1178:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_checkHotAD

;; *************** function _checkHotAD *****************
;; Defined at:
;;		line 424 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ADC_Sample
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	424
global __ptext2
__ptext2:	;psect for function _checkHotAD
psect	text2
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	424
	global	__size_of_checkHotAD
	__size_of_checkHotAD	equ	__end_of_checkHotAD-_checkHotAD
	
_checkHotAD:	
;incstack = 0
	opt	stack 2
; Regs used in _checkHotAD: [wreg+status,2+status,0+pclath+cstack]
	line	426
	
l4314:	
;main.c: 426: test_adc = ADC_Sample(6, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(06h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	427
	
l4316:	
;main.c: 427: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l1070
u3010:
	line	429
	
l4318:	
;main.c: 428: {
;main.c: 429: hotData = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_hotData+1)
	movf	(_adresult),w	;volatile
	movwf	(_hotData)
	line	433
	
l1070:	
	return
	opt stack 0
GLOBAL	__end_of_checkHotAD
	__end_of_checkHotAD:
	signat	_checkHotAD,89
	global	_setMode

;; *************** function _setMode *****************
;; Defined at:
;;		line 734 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;  zqMaxTime       2    3[BANK0 ] unsigned int 
;;  halfTime        2    5[BANK0 ] unsigned int 
;;  pwmTime         1    7[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       5       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0       9       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_pwmOff
;;		_pwmOn
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	734
global __ptext3
__ptext3:	;psect for function _setMode
psect	text3
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	734
	global	__size_of_setMode
	__size_of_setMode	equ	__end_of_setMode-_setMode
	
_setMode:	
;incstack = 0
	opt	stack 3
; Regs used in _setMode: [wreg+status,2+status,0+pclath+cstack]
	line	737
	
l4554:	
;main.c: 737: if(zqTime < pwmTime)
	movf	(setMode@pwmTime),w
	movwf	(??_setMode+0)+0
	clrf	(??_setMode+0)+0+1
	movf	1+(??_setMode+0)+0,w
	subwf	(_zqTime+1),w
	skipz
	goto	u3395
	movf	0+(??_setMode+0)+0,w
	subwf	(_zqTime),w
u3395:
	skipnc
	goto	u3391
	goto	u3390
u3391:
	goto	l4562
u3390:
	line	739
	
l4556:	
;main.c: 738: {
;main.c: 739: pwmOn();
	fcall	_pwmOn
	line	740
	
l4558:	
;main.c: 740: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	line	741
	
l4560:	
;main.c: 741: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	line	742
;main.c: 742: }
	goto	l4602
	line	743
	
l4562:	
;main.c: 743: else if(zqTime == pwmTime)
	movf	(setMode@pwmTime),w
	movwf	(??_setMode+0)+0
	clrf	(??_setMode+0)+0+1
	movf	(_zqTime+1),w
	xorwf	1+(??_setMode+0)+0,w
	skipz
	goto	u3405
	movf	(_zqTime),w
	xorwf	0+(??_setMode+0)+0,w
u3405:

	skipz
	goto	u3401
	goto	u3400
u3401:
	goto	l4570
u3400:
	line	745
	
l4564:	
;main.c: 744: {
;main.c: 745: pwmOff();
	fcall	_pwmOff
	line	746
	
l4566:	
;main.c: 746: RA4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1076/8)^080h,(1076)&7	;volatile
	goto	l4560
	line	749
	
l4570:	
;main.c: 749: else if(zqTime == (pwmTime+1))
	movf	(setMode@pwmTime),w
	addlw	low(01h)
	movwf	(??_setMode+0)+0
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((??_setMode+0)+0)+1
	movf	(_zqTime+1),w
	xorwf	1+(??_setMode+0)+0,w
	skipz
	goto	u3415
	movf	(_zqTime),w
	xorwf	0+(??_setMode+0)+0,w
u3415:

	skipz
	goto	u3411
	goto	u3410
u3411:
	goto	l4576
u3410:
	line	751
	
l4572:	
;main.c: 752: {
;main.c: 753: stopFlag = 0;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	758
	
l1144:	
	line	759
;main.c: 758: }
;main.c: 759: RA4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	line	760
;main.c: 760: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	761
;main.c: 761: }
	goto	l4602
	line	762
	
l4576:	
;main.c: 762: else if(zqTime < halfTime)
	movf	(setMode@halfTime+1),w
	subwf	(_zqTime+1),w
	skipz
	goto	u3425
	movf	(setMode@halfTime),w
	subwf	(_zqTime),w
u3425:
	skipnc
	goto	u3421
	goto	u3420
u3421:
	goto	l4580
u3420:
	line	764
	
l4578:	
;main.c: 763: {
;main.c: 764: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	line	765
;main.c: 765: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	line	766
;main.c: 766: }
	goto	l4602
	line	767
	
l4580:	
;main.c: 767: else if(zqTime < halfTime+pwmTime)
	movf	(setMode@pwmTime),w
	addwf	(setMode@halfTime),w
	movwf	(??_setMode+0)+0
	movf	(setMode@halfTime+1),w
	skipnc
	incf	(setMode@halfTime+1),w
	movwf	((??_setMode+0)+0)+1
	movf	1+(??_setMode+0)+0,w
	subwf	(_zqTime+1),w
	skipz
	goto	u3435
	movf	0+(??_setMode+0)+0,w
	subwf	(_zqTime),w
u3435:
	skipnc
	goto	u3431
	goto	u3430
u3431:
	goto	l4588
u3430:
	goto	l4556
	line	773
	
l4588:	
;main.c: 773: else if(zqTime == (halfTime + pwmTime))
	movf	(setMode@pwmTime),w
	addwf	(setMode@halfTime),w
	movwf	(??_setMode+0)+0
	movf	(setMode@halfTime+1),w
	skipnc
	incf	(setMode@halfTime+1),w
	movwf	((??_setMode+0)+0)+1
	movf	(_zqTime+1),w
	xorwf	1+(??_setMode+0)+0,w
	skipz
	goto	u3445
	movf	(_zqTime),w
	xorwf	0+(??_setMode+0)+0,w
u3445:

	skipz
	goto	u3441
	goto	u3440
u3441:
	goto	l4596
u3440:
	line	775
	
l4590:	
;main.c: 774: {
;main.c: 775: pwmOff();
	fcall	_pwmOff
	line	776
	
l4592:	
;main.c: 776: RA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	line	777
	
l4594:	
;main.c: 777: RA3 = 1;
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	778
;main.c: 778: }
	goto	l4602
	line	779
	
l4596:	
;main.c: 779: else if(zqTime == (halfTime + (pwmTime + 1)))
	movf	(setMode@pwmTime),w
	addwf	(setMode@halfTime),w
	movwf	(??_setMode+0)+0
	movf	(setMode@halfTime+1),w
	skipnc
	incf	(setMode@halfTime+1),w
	movwf	((??_setMode+0)+0)+1
	movf	0+(??_setMode+0)+0,w
	addlw	low(01h)
	movwf	(??_setMode+2)+0
	movf	1+(??_setMode+0)+0,w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(??_setMode+2)+0
	movf	(_zqTime+1),w
	xorwf	1+(??_setMode+2)+0,w
	skipz
	goto	u3455
	movf	(_zqTime),w
	xorwf	0+(??_setMode+2)+0,w
u3455:

	skipz
	goto	u3451
	goto	u3450
u3451:
	goto	l4578
u3450:
	line	781
	
l4598:	
;main.c: 782: {
;main.c: 783: stopFlag = 0;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	788
	
l1154:	
	line	789
;main.c: 788: }
;main.c: 789: RA4 = 1;
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	790
;main.c: 790: RA3 = 0;
	bcf	(1075/8)^080h,(1075)&7	;volatile
	line	798
;main.c: 791: }
	
l4602:	
;main.c: 796: }
;main.c: 798: if(++zqTime >= zqMaxTime)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_zqTime),f
	skipnz
	incf	(_zqTime+1),f
	movf	(setMode@zqMaxTime+1),w
	subwf	((_zqTime+1)),w
	skipz
	goto	u3465
	movf	(setMode@zqMaxTime),w
	subwf	((_zqTime)),w
u3465:
	skipc
	goto	u3461
	goto	u3460
u3461:
	goto	l1157
u3460:
	line	800
	
l4604:	
;main.c: 799: {
;main.c: 800: zqTime = 0;
	clrf	(_zqTime)
	clrf	(_zqTime+1)
	line	801
	
l4606:	
;main.c: 801: xdTime++;
	incf	(_xdTime),f
	skipnz
	incf	(_xdTime+1),f
	line	803
	
l1157:	
	return
	opt stack 0
GLOBAL	__end_of_setMode
	__end_of_setMode:
	signat	_setMode,12409
	global	_pwmOn

;; *************** function _pwmOn *****************
;; Defined at:
;;		line 660 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setMode
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	660
global __ptext4
__ptext4:	;psect for function _pwmOn
psect	text4
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	660
	global	__size_of_pwmOn
	__size_of_pwmOn	equ	__end_of_pwmOn-_pwmOn
	
_pwmOn:	
;incstack = 0
	opt	stack 3
; Regs used in _pwmOn: [wreg+status,2+status,0]
	line	662
	
l4360:	
;main.c: 662: if(chrgPWMFlag)
	movf	((_chrgPWMFlag)),w
	btfsc	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l1120
u3140:
	goto	l1121
	line	665
	
l1120:	
	line	666
;main.c: 665: }
;main.c: 666: chrgPWMFlag = 1;
	clrf	(_chrgPWMFlag)
	incf	(_chrgPWMFlag),f
	line	667
	
l4364:	
;main.c: 667: PWMTH = 0x00;
	clrf	(24)	;volatile
	line	668
	
l4366:	
;main.c: 668: PWMTL = 90;
	movlw	low(05Ah)
	movwf	(23)	;volatile
	line	669
	
l4368:	
;main.c: 669: PWMD01H = 0x00;
	clrf	(30)	;volatile
	line	670
;main.c: 670: PWMD1L = 50;
	movlw	low(032h)
	movwf	(26)	;volatile
	line	671
;main.c: 671: PWMCON1 = 0x40;
	movlw	low(040h)
	movwf	(22)	;volatile
	line	672
	
l4370:	
;main.c: 672: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	673
	
l4372:	
;main.c: 673: PWMCON0 |= 0x82;
	movlw	low(082h)
	iorwf	(21),f	;volatile
	line	674
	
l1121:	
	return
	opt stack 0
GLOBAL	__end_of_pwmOn
	__end_of_pwmOn:
	signat	_pwmOn,89
	global	_pwmOff

;; *************** function _pwmOff *****************
;; Defined at:
;;		line 676 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setMode
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	676
global __ptext5
__ptext5:	;psect for function _pwmOff
psect	text5
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	676
	global	__size_of_pwmOff
	__size_of_pwmOff	equ	__end_of_pwmOff-_pwmOff
	
_pwmOff:	
;incstack = 0
	opt	stack 3
; Regs used in _pwmOff: [status,2]
	line	678
	
l4374:	
;main.c: 678: PWMD1L = 0;
	clrf	(26)	;volatile
	line	679
	
l4376:	
;main.c: 679: PWMCON0 &= 0xFD;
	bcf	(21)+(1/8),(1)&7	;volatile
	line	680
	
l4378:	
;main.c: 680: PORTB &= 0x7F;
	bcf	(6)+(7/8),(7)&7	;volatile
	line	681
;main.c: 681: chrgPWMFlag = 0;
	clrf	(_chrgPWMFlag)
	line	682
	
l1124:	
	return
	opt stack 0
GLOBAL	__end_of_pwmOff
	__end_of_pwmOff:
	signat	_pwmOff,89
	global	_ledCtr

;; *************** function _ledCtr *****************
;; Defined at:
;;		line 1033 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	1033
global __ptext6
__ptext6:	;psect for function _ledCtr
psect	text6
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	1033
	global	__size_of_ledCtr
	__size_of_ledCtr	equ	__end_of_ledCtr-_ledCtr
	
_ledCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _ledCtr: [wreg-fsr0h+status,2+status,0+pclath]
	line	1035
	
l4698:	
;main.c: 1035: if(firstShowCount > 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_firstShowCount)),w
iorwf	((_firstShowCount+1)),w
	btfsc	status,2
	goto	u3691
	goto	u3690
u3691:
	goto	l4702
u3690:
	line	1037
	
l4700:	
;main.c: 1036: {
;main.c: 1037: showNumAShi = 0x7F;
	movlw	low(07Fh)
	movwf	(_showNumAShi)
	line	1038
;main.c: 1038: showNumAge = 0x07;
	movlw	low(07h)
	movwf	(_showNumAge)
	line	1040
;main.c: 1040: }
	goto	l1248
	line	1041
	
l4702:	
;main.c: 1041: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3701
	goto	u3700
u3701:
	goto	l4722
u3700:
	line	1082
	
l4704:	
;main.c: 1042: {
;main.c: 1082: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u3711
	goto	u3710
u3711:
	goto	l4710
u3710:
	line	1084
	
l4706:	
;main.c: 1083: {
;main.c: 1084: showNumAShi = numArray[dlStep];
	movf	(_dlStep),w
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAShi)
	line	1085
	
l4708:	
;main.c: 1085: showNumAge = 1;
	clrf	(_showNumAge)
	incf	(_showNumAge),f
	line	1086
;main.c: 1086: }
	goto	l1248
	line	1087
	
l4710:	
;main.c: 1087: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3721
	goto	u3720
u3721:
	goto	l4716
u3720:
	line	1089
	
l4712:	
;main.c: 1088: {
;main.c: 1089: showNumAShi = numArray[hotStep];
	movf	(_hotStep),w
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAShi)
	line	1090
	
l4714:	
;main.c: 1090: showNumAge = 2;
	movlw	low(02h)
	movwf	(_showNumAge)
	line	1091
;main.c: 1091: }
	goto	l1248
	line	1092
	
l4716:	
;main.c: 1092: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3731
	goto	u3730
u3731:
	goto	l1237
u3730:
	line	1094
	
l4718:	
;main.c: 1093: {
;main.c: 1094: showNumAShi = numArray[motorStep];
	movf	(_motorStep),w
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAShi)
	line	1095
	
l4720:	
;main.c: 1095: showNumAge = 4;
	movlw	low(04h)
	movwf	(_showNumAge)
	goto	l1248
	line	1098
	
l1237:	
;main.c: 1096: }
;main.c: 1098: }
	goto	l1248
	line	1099
	
l4722:	
;main.c: 1099: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3741
	goto	u3740
u3741:
	goto	l4738
u3740:
	line	1101
	
l4724:	
;main.c: 1100: {
;main.c: 1101: showNumAShi = 0x00;
	clrf	(_showNumAShi)
	line	1102
	
l4726:	
;main.c: 1102: if(++count500ms >= 50)
	movlw	low(032h)
	incf	(_count500ms),f
	subwf	((_count500ms)),w
	skipc
	goto	u3751
	goto	u3750
u3751:
	goto	l1248
u3750:
	line	1104
	
l4728:	
;main.c: 1103: {
;main.c: 1104: count500ms = 0;
	clrf	(_count500ms)
	line	1105
	
l4730:	
;main.c: 1105: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u3761
	goto	u3760
u3761:
	goto	l1244
u3760:
	line	1107
	
l4732:	
;main.c: 1106: {
;main.c: 1107: showNumAge = 0x07;
	movlw	low(07h)
	movwf	(_showNumAge)
	line	1108
;main.c: 1108: }
	goto	l1248
	line	1109
	
l1244:	
	line	1111
;main.c: 1109: else
;main.c: 1110: {
;main.c: 1111: showNumAge <<= 1;
	clrc
	rlf	(_showNumAge),f
	line	1112
;main.c: 1112: showNumAge |= 0x01;
	bsf	(_showNumAge)+(0/8),(0)&7
	line	1113
	
l4734:	
;main.c: 1113: if(showNumAge > 7)
	movlw	low(08h)
	subwf	(_showNumAge),w
	skipc
	goto	u3771
	goto	u3770
u3771:
	goto	l1237
u3770:
	goto	l4708
	line	1123
	
l4738:	
;main.c: 1121: else
;main.c: 1122: {
;main.c: 1123: showNumAShi = 0x00;
	clrf	(_showNumAShi)
	line	1124
;main.c: 1124: showNumAge = 0x00;
	clrf	(_showNumAge)
	line	1126
	
l1248:	
	return
	opt stack 0
GLOBAL	__end_of_ledCtr
	__end_of_ledCtr:
	signat	_ledCtr,89
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 994 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  kclick          1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_keyAdd
;;		_keyRead
;;		_keyRead2
;;		_keySub
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	994
global __ptext7
__ptext7:	;psect for function _keyCtr
psect	text7
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	994
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 1
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	996
	
l4662:	
;main.c: 996: char kclick = keyRead(0x40 & (~PORTB));
	comf	(6),w	;volatile
	andlw	040h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	997
	
l4664:	
;main.c: 997: if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u3601
	goto	u3600
u3601:
	goto	l4674
u3600:
	line	999
	
l4666:	
;main.c: 998: {
;main.c: 999: beepTime = 50;
	movlw	low(032h)
	movwf	(_beepTime)
	line	1000
	
l4668:	
;main.c: 1000: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3611
	goto	u3610
u3611:
	goto	l4672
u3610:
	line	1002
	
l4670:	
;main.c: 1001: {
;main.c: 1002: workStep = 0;
	clrf	(_workStep)
	line	1003
;main.c: 1003: }
	goto	l4684
	line	1006
	
l4672:	
;main.c: 1004: else
;main.c: 1005: {
;main.c: 1006: workStep = 3;
	movlw	low(03h)
	movwf	(_workStep)
	goto	l4684
	line	1009
	
l4674:	
;main.c: 1009: else if(kclick == 1 && workStep > 0)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u3621
	goto	u3620
u3621:
	goto	l4684
u3620:
	
l4676:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3631
	goto	u3630
u3631:
	goto	l4684
u3630:
	line	1011
	
l4678:	
;main.c: 1010: {
;main.c: 1011: beepTime = 50;
	movlw	low(032h)
	movwf	(_beepTime)
	line	1012
	
l4680:	
;main.c: 1012: if(++workStep > 3)
	movlw	low(04h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u3641
	goto	u3640
u3641:
	goto	l4684
u3640:
	line	1014
	
l4682:	
;main.c: 1013: {
;main.c: 1014: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	1017
	
l4684:	
;main.c: 1015: }
;main.c: 1016: }
;main.c: 1017: kclick = keyRead2(0x10 & (~PORTB));
	comf	(6),w	;volatile
	andlw	010h
	fcall	_keyRead2
	movwf	(keyCtr@kclick)
	line	1018
	
l4686:	
;main.c: 1018: if(kclick == 1 && workStep > 0)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u3651
	goto	u3650
u3651:
	goto	l1230
u3650:
	
l4688:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3661
	goto	u3660
u3661:
	goto	l1230
u3660:
	line	1021
	
l4690:	
;main.c: 1019: {
;main.c: 1021: if(keyNum == 2)
		movlw	2
	xorwf	((_keyNum)),w
	btfss	status,2
	goto	u3671
	goto	u3670
u3671:
	goto	l4694
u3670:
	line	1023
	
l4692:	
;main.c: 1022: {
;main.c: 1023: keyAdd();
	fcall	_keyAdd
	line	1024
;main.c: 1024: }
	goto	l1230
	line	1025
	
l4694:	
;main.c: 1025: else if(keyNum == 1)
		decf	((_keyNum)),w
	btfss	status,2
	goto	u3681
	goto	u3680
u3681:
	goto	l1230
u3680:
	line	1027
	
l4696:	
;main.c: 1026: {
;main.c: 1027: keySub();
	fcall	_keySub
	line	1030
	
l1230:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead2

;; *************** function _keyRead2 *****************
;; Defined at:
;;		line 918 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;  keyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyStatus       1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_checkKeyAD
;; This function is called by:
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	918
global __ptext8
__ptext8:	;psect for function _keyRead2
psect	text8
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	918
	global	__size_of_keyRead2
	__size_of_keyRead2	equ	__end_of_keyRead2-_keyRead2
	
_keyRead2:	
;incstack = 0
	opt	stack 1
; Regs used in _keyRead2: [wreg+status,2+status,0+pclath+cstack]
;keyRead2@keyStatus stored from wreg
	movwf	(keyRead2@keyStatus)
	line	920
	
l4420:	
;main.c: 920: if(keyStatus)
	movf	((keyRead2@keyStatus)),w
	btfsc	status,2
	goto	u3201
	goto	u3200
u3201:
	goto	l4430
u3200:
	line	922
	
l4422:	
;main.c: 921: {
;main.c: 922: keyCount2++;
	incf	(_keyCount2),f
	line	923
	
l4424:	
;main.c: 923: checkKeyAD();
	fcall	_checkKeyAD
	line	924
	
l4426:	
;main.c: 924: if(keyCount2 >= 120)
	movlw	low(078h)
	subwf	(_keyCount2),w
	skipc
	goto	u3211
	goto	u3210
u3211:
	goto	l4440
u3210:
	line	926
	
l4428:	
;main.c: 925: {
;main.c: 926: keyCount2 = 120;
	movlw	low(078h)
	movwf	(_keyCount2)
	goto	l4440
	line	931
	
l4430:	
;main.c: 929: else
;main.c: 930: {
;main.c: 931: if(keyCount2 >= 5)
	movlw	low(05h)
	subwf	(_keyCount2),w
	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l4438
u3220:
	line	933
	
l4432:	
;main.c: 932: {
;main.c: 933: keyCount2 = 0;
	clrf	(_keyCount2)
	line	934
	
l4434:	
;main.c: 934: return 1;
	movlw	low(01h)
	goto	l1195
	line	936
	
l4438:	
;main.c: 935: }
;main.c: 936: keyCount2 = 0;
	clrf	(_keyCount2)
	line	938
	
l4440:	
;main.c: 937: }
;main.c: 938: return 0;
	movlw	low(0)
	line	939
	
l1195:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead2
	__end_of_keyRead2:
	signat	_keyRead2,4217
	global	_checkKeyAD

;; *************** function _checkKeyAD *****************
;; Defined at:
;;		line 389 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ADC_Sample
;; This function is called by:
;;		_keyRead2
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	389
global __ptext9
__ptext9:	;psect for function _checkKeyAD
psect	text9
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	389
	global	__size_of_checkKeyAD
	__size_of_checkKeyAD	equ	__end_of_checkKeyAD-_checkKeyAD
	
_checkKeyAD:	
;incstack = 0
	opt	stack 1
; Regs used in _checkKeyAD: [wreg+status,2+status,0+pclath+cstack]
	line	392
	
l4274:	
;main.c: 392: test_adc = ADC_Sample(12, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(0Ch)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	393
	
l4276:	
;main.c: 393: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u2991
	goto	u2990
u2991:
	goto	l1062
u2990:
	line	395
	
l4278:	
;main.c: 394: {
;main.c: 395: if(adresult < 150)
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	096h
	skipnz
	subwf	(_adresult),w	;volatile
	skipnc
	goto	u3001
	goto	u3000
u3001:
	goto	l4282
u3000:
	line	397
	
l4280:	
;main.c: 396: {
;main.c: 397: keyNum = 1;
	clrf	(_keyNum)
	incf	(_keyNum),f
	line	398
;main.c: 398: }
	goto	l1062
	line	401
	
l4282:	
;main.c: 399: else
;main.c: 400: {
;main.c: 401: keyNum = 2;
	movlw	low(02h)
	movwf	(_keyNum)
	line	407
	
l1062:	
	return
	opt stack 0
GLOBAL	__end_of_checkKeyAD
	__end_of_checkKeyAD:
	signat	_checkKeyAD,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 884 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;  keyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyStatus       1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	884
global __ptext10
__ptext10:	;psect for function _keyRead
psect	text10
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	884
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 3
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	886
	
l4380:	
;main.c: 886: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l4396
u3150:
	line	888
	
l4382:	
;main.c: 887: {
;main.c: 888: keyCount++;
	incf	(_keyCount),f
	line	889
	
l4384:	
;main.c: 889: if(keyCount >= 120)
	movlw	low(078h)
	subwf	(_keyCount),w
	skipc
	goto	u3161
	goto	u3160
u3161:
	goto	l4400
u3160:
	line	891
	
l4386:	
;main.c: 890: {
;main.c: 891: keyCount = 120;
	movlw	low(078h)
	movwf	(_keyCount)
	line	892
	
l4388:	
;main.c: 892: if(longPressFlag == 0)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l4400
u3170:
	line	894
	
l4390:	
;main.c: 893: {
;main.c: 894: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	895
	
l4392:	
;main.c: 895: return 2;
	movlw	low(02h)
	goto	l1184
	line	901
	
l4396:	
;main.c: 899: else
;main.c: 900: {
;main.c: 901: if(keyCount >= 120)
	movlw	low(078h)
	subwf	(_keyCount),w
	skipc
	goto	u3181
	goto	u3180
u3181:
	goto	l4406
u3180:
	line	903
	
l4398:	
;main.c: 902: {
;main.c: 903: keyCount = 0;
	clrf	(_keyCount)
	line	904
;main.c: 904: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	905
	
l4400:	
;main.c: 905: return 0;
	movlw	low(0)
	goto	l1184
	line	907
	
l4406:	
;main.c: 907: else if(keyCount >= 5)
	movlw	low(05h)
	subwf	(_keyCount),w
	skipc
	goto	u3191
	goto	u3190
u3191:
	goto	l4398
u3190:
	line	909
	
l4408:	
;main.c: 908: {
;main.c: 909: keyCount = 0;
	clrf	(_keyCount)
	line	910
	
l4410:	
;main.c: 910: return 1;
	movlw	low(01h)
	line	916
	
l1184:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_fRxFun

;; *************** function _fRxFun *****************
;; Defined at:
;;		line 437 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_keyAdd
;;		_keySub
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	437
global __ptext11
__ptext11:	;psect for function _fRxFun
psect	text11
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	437
	global	__size_of_fRxFun
	__size_of_fRxFun	equ	__end_of_fRxFun-_fRxFun
	
_fRxFun:	
;incstack = 0
	opt	stack 3
; Regs used in _fRxFun: [wreg+status,2+status,0+pclath+cstack]
	line	439
	
l4494:	
;main.c: 439: if(g8CtrlFlg&0x04)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(_g8CtrlFlg),(2)&7
	goto	u3251
	goto	u3250
u3251:
	goto	l1080
u3250:
	line	442
	
l4496:	
;main.c: 440: {
;main.c: 442: if(workStep > 0 && recData1 == 0x00 && recData2 == 0xFF)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3261
	goto	u3260
u3261:
	goto	l4524
u3260:
	
l4498:	
	movf	((_recData1)),w
	btfss	status,2
	goto	u3271
	goto	u3270
u3271:
	goto	l4524
u3270:
	
l4500:	
		incf	((_recData2)),w
	btfss	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l4524
u3280:
	line	444
	
l4502:	
;main.c: 443: {
;main.c: 444: beepTime = 30;
	movlw	low(01Eh)
	movwf	(_beepTime)
	line	445
	
l4504:	
;main.c: 445: if(recData3 == 0x40)
		movlw	64
	xorwf	((_recData3)),w
	btfss	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l4508
u3290:
	line	447
	
l4506:	
;main.c: 446: {
;main.c: 447: workStep = 2;
	movlw	low(02h)
	movwf	(_workStep)
	line	449
	
l4508:	
;main.c: 448: }
;main.c: 449: if(recData3 == 0x07)
		movlw	7
	xorwf	((_recData3)),w
	btfss	status,2
	goto	u3301
	goto	u3300
u3301:
	goto	l4512
u3300:
	line	451
	
l4510:	
;main.c: 450: {
;main.c: 451: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	453
	
l4512:	
;main.c: 452: }
;main.c: 453: if(recData3 == 0x09)
		movlw	9
	xorwf	((_recData3)),w
	btfss	status,2
	goto	u3311
	goto	u3310
u3311:
	goto	l4516
u3310:
	line	455
	
l4514:	
;main.c: 454: {
;main.c: 455: workStep = 3;
	movlw	low(03h)
	movwf	(_workStep)
	line	457
	
l4516:	
;main.c: 456: }
;main.c: 457: if(recData3 == 0x0C)
		movlw	12
	xorwf	((_recData3)),w
	btfss	status,2
	goto	u3321
	goto	u3320
u3321:
	goto	l4520
u3320:
	line	459
	
l4518:	
;main.c: 458: {
;main.c: 459: keySub();
	fcall	_keySub
	line	461
	
l4520:	
;main.c: 460: }
;main.c: 461: if(recData3 == 0x5E)
		movlw	94
	xorwf	((_recData3)),w
	btfss	status,2
	goto	u3331
	goto	u3330
u3331:
	goto	l4524
u3330:
	line	463
	
l4522:	
;main.c: 462: {
;main.c: 463: keyAdd();
	fcall	_keyAdd
	line	466
	
l4524:	
;main.c: 464: }
;main.c: 465: }
;main.c: 466: g8CtrlFlg&=~0x04;
	bcf	(_g8CtrlFlg)+(2/8),(2)&7
	line	467
	
l4526:	
;main.c: 467: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	471
	
l1080:	
	return
	opt stack 0
GLOBAL	__end_of_fRxFun
	__end_of_fRxFun:
	signat	_fRxFun,89
	global	_keySub

;; *************** function _keySub *****************
;; Defined at:
;;		line 967 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fRxFun
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	967
global __ptext12
__ptext12:	;psect for function _keySub
psect	text12
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	967
	global	__size_of_keySub
	__size_of_keySub	equ	__end_of_keySub-_keySub
	
_keySub:	
;incstack = 0
	opt	stack 3
; Regs used in _keySub: [wreg+status,2+status,0]
	line	969
	
l4320:	
;main.c: 969: beepTime = 30;
	movlw	low(01Eh)
	movwf	(_beepTime)
	line	970
	
l4322:	
;main.c: 970: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l4328
u3020:
	line	972
	
l4324:	
;main.c: 971: {
;main.c: 972: if(dlStep > 0)
	movf	((_dlStep)),w
	btfsc	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l1217
u3030:
	line	974
	
l4326:	
;main.c: 973: {
;main.c: 974: dlStep--;
	decf	(_dlStep),f
	goto	l1217
	line	977
	
l4328:	
;main.c: 977: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l4334
u3040:
	line	979
	
l4330:	
;main.c: 978: {
;main.c: 979: if(hotStep > 0)
	movf	((_hotStep)),w
	btfsc	status,2
	goto	u3051
	goto	u3050
u3051:
	goto	l1217
u3050:
	line	981
	
l4332:	
;main.c: 980: {
;main.c: 981: hotStep--;
	decf	(_hotStep),f
	goto	l1217
	line	984
	
l4334:	
;main.c: 984: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l1217
u3060:
	line	986
	
l4336:	
;main.c: 985: {
;main.c: 986: if(motorStep > 0)
	movf	((_motorStep)),w
	btfsc	status,2
	goto	u3071
	goto	u3070
u3071:
	goto	l1217
u3070:
	line	988
	
l4338:	
;main.c: 987: {
;main.c: 988: motorStep--;
	decf	(_motorStep),f
	line	991
	
l1217:	
	return
	opt stack 0
GLOBAL	__end_of_keySub
	__end_of_keySub:
	signat	_keySub,89
	global	_keyAdd

;; *************** function _keyAdd *****************
;; Defined at:
;;		line 941 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fRxFun
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	941
global __ptext13
__ptext13:	;psect for function _keyAdd
psect	text13
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	941
	global	__size_of_keyAdd
	__size_of_keyAdd	equ	__end_of_keyAdd-_keyAdd
	
_keyAdd:	
;incstack = 0
	opt	stack 3
; Regs used in _keyAdd: [wreg+status,2+status,0]
	line	943
	
l4340:	
;main.c: 943: beepTime = 30;
	movlw	low(01Eh)
	movwf	(_beepTime)
	line	944
	
l4342:	
;main.c: 944: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l4348
u3080:
	line	946
	
l4344:	
;main.c: 945: {
;main.c: 946: if(++dlStep > 6)
	movlw	low(07h)
	incf	(_dlStep),f
	subwf	((_dlStep)),w
	skipc
	goto	u3091
	goto	u3090
u3091:
	goto	l1206
u3090:
	line	948
	
l4346:	
;main.c: 947: {
;main.c: 948: dlStep = 6;
	movlw	low(06h)
	movwf	(_dlStep)
	goto	l1206
	line	951
	
l4348:	
;main.c: 951: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l4354
u3100:
	line	953
	
l4350:	
;main.c: 952: {
;main.c: 953: if(++hotStep > 3)
	movlw	low(04h)
	incf	(_hotStep),f
	subwf	((_hotStep)),w
	skipc
	goto	u3111
	goto	u3110
u3111:
	goto	l1206
u3110:
	line	955
	
l4352:	
;main.c: 954: {
;main.c: 955: hotStep = 3;
	movlw	low(03h)
	movwf	(_hotStep)
	goto	l1206
	line	958
	
l4354:	
;main.c: 958: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l1206
u3120:
	line	960
	
l4356:	
;main.c: 959: {
;main.c: 960: if(++motorStep > 3)
	movlw	low(04h)
	incf	(_motorStep),f
	subwf	((_motorStep)),w
	skipc
	goto	u3131
	goto	u3130
u3131:
	goto	l1206
u3130:
	line	962
	
l4358:	
;main.c: 961: {
;main.c: 962: motorStep = 3;
	movlw	low(03h)
	movwf	(_motorStep)
	line	965
	
l1206:	
	return
	opt stack 0
GLOBAL	__end_of_keyAdd
	__end_of_keyAdd:
	signat	_keyAdd,89
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 685 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	685
global __ptext14
__ptext14:	;psect for function _chrgCtr
psect	text14
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	685
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _chrgCtr: [wreg+status,2+status,0]
	line	687
	
l4528:	
;main.c: 687: if(0x04 & PORTB)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(6),(2)&7	;volatile
	goto	u3341
	goto	u3340
u3341:
	goto	l4544
u3340:
	line	690
	
l4530:	
;main.c: 688: {
;main.c: 690: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	691
	
l4532:	
;main.c: 691: workStep = 0;
	clrf	(_workStep)
	line	692
;main.c: 693: lowBatFlag = 0;
	clrf	(_lowBatTime)
	line	694
	
l4534:	
;main.c: 694: if(tempData < 1181)
	movlw	04h
	subwf	(_tempData+1),w
	movlw	09Dh
	skipnz
	subwf	(_tempData),w
	skipnc
	goto	u3351
	goto	u3350
u3351:
	goto	l4542
u3350:
	line	696
	
l4536:	
;main.c: 695: {
;main.c: 696: if(++chrgWaitTime > 200)
	movlw	low(0C9h)
	incf	(_chrgWaitTime),f
	subwf	((_chrgWaitTime)),w
	skipc
	goto	u3361
	goto	u3360
u3361:
	goto	l1135
u3360:
	line	698
	
l4538:	
;main.c: 697: {
;main.c: 698: chrgWaitTime = 0;
	clrf	(_chrgWaitTime)
	line	699
	
l4540:	
;main.c: 699: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l1135
	line	704
	
l4542:	
;main.c: 702: else
;main.c: 703: {
;main.c: 704: chrgWaitTime = 0;
	clrf	(_chrgWaitTime)
	goto	l1135
	line	712
	
l4544:	
;main.c: 709: else
;main.c: 710: {
;main.c: 712: chrgWaitTime = 0;
	clrf	(_chrgWaitTime)
	line	713
;main.c: 713: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	714
;main.c: 714: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	716
	
l4546:	
;main.c: 716: if(tempData > 1755)
	movlw	06h
	subwf	(_tempData+1),w
	movlw	0DCh
	skipnz
	subwf	(_tempData),w
	skipc
	goto	u3371
	goto	u3370
u3371:
	goto	l4550
u3370:
	line	718
	
l4548:	
;main.c: 717: {
;main.c: 718: if(++lowBatTime > 200)
	movlw	low(0C9h)
	incf	(_lowBatTime),f
	subwf	((_lowBatTime)),w
	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l1135
u3380:
	line	720
	
l4550:	
;main.c: 721: lowBatFlag = 1;
	clrf	(_lowBatTime)
	line	731
	
l1135:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 411 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ADC_Sample
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	411
global __ptext15
__ptext15:	;psect for function _checkBatAD
psect	text15
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	411
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 3
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	414
	
l4488:	
;main.c: 414: test_adc = ADC_Sample(31, 0);
	clrf	(ADC_Sample@adldo)
	movlw	low(01Fh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	415
	
l4490:	
;main.c: 415: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u3241
	goto	u3240
u3241:
	goto	l1066
u3240:
	line	417
	
l4492:	
;main.c: 416: {
;main.c: 417: tempData = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_tempData+1)
	movf	(_adresult),w	;volatile
	movwf	(_tempData)
	line	422
	
l1066:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 318 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;;  adldo           1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    6[BANK0 ] unsigned char 
;;  j               1    5[BANK0 ] unsigned char 
;;  adsum           4    8[BANK0 ] volatile unsigned long 
;;  ad_temp         2   16[BANK0 ] volatile unsigned int 
;;  admax           2   14[BANK0 ] volatile unsigned int 
;;  admin           2   12[BANK0 ] volatile unsigned int 
;;  i               1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0      13       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0      18       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkKeyAD
;;		_checkBatAD
;;		_checkHotAD
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	318
global __ptext16
__ptext16:	;psect for function _ADC_Sample
psect	text16
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	318
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 2
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	320
	
l4202:	
;main.c: 320: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	321
	
l4204:	
;main.c: 321: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	322
;main.c: 322: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	324
	
l4206:	
;main.c: 324: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u2841
	goto	u2840
u2841:
	goto	l4212
u2840:
	
l4208:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l4212
u2850:
	line	327
	
l4210:	
;main.c: 325: {
;main.c: 327: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(150)^080h	;volatile
	line	328
;main.c: 328: _delay((unsigned long)((100)*(8000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	66
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_ADC_Sample+0)+0),f
	u3957:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u3957
opt asmopt_pop

	line	329
;main.c: 329: }
	goto	l4214
	line	331
	
l4212:	
;main.c: 330: else
;main.c: 331: ADCON1 = adldo;
	bcf	status, 5	;RP0=0, select bank0
	movf	(ADC_Sample@adldo),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(150)^080h	;volatile
	line	333
	
l4214:	
;main.c: 333: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u2861
	goto	u2860
u2861:
	goto	l4220
u2860:
	line	335
	
l4216:	
;main.c: 334: {
;main.c: 335: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	336
	
l4218:	
;main.c: 336: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	338
	
l4220:	
	line	339
	
l4222:	
;main.c: 339: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	341
	
l4228:	
;main.c: 340: {
;main.c: 341: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u2875:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u2875
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	342
# 342 "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
nop ;# 
	line	343
# 343 "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
nop ;# 
	line	344
# 344 "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
nop ;# 
	line	345
# 345 "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
nop ;# 
psect	text16
	line	346
	
l4230:	
;main.c: 346: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	348
	
l4232:	
;main.c: 348: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	349
;main.c: 349: while (GODONE)
	goto	l1045
	
l1046:	
	line	351
;main.c: 350: {
;main.c: 351: _delay((unsigned long)((2)*(8000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	353
;main.c: 353: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u2881
	goto	u2880
u2881:
	goto	l1045
u2880:
	line	354
	
l4234:	
;main.c: 354: return 0;
	movlw	low(0)
	goto	l1048
	line	355
	
l1045:	
	line	349
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u2891
	goto	u2890
u2891:
	goto	l1046
u2890:
	line	357
	
l4238:	
;main.c: 355: }
;main.c: 357: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l4240:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	359
	
l4242:	
;main.c: 359: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u2901
	goto	u2900
u2901:
	goto	l4246
u2900:
	line	361
	
l4244:	
;main.c: 360: {
;main.c: 361: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	362
;main.c: 362: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	363
;main.c: 363: }
	goto	l1051
	line	364
	
l4246:	
;main.c: 364: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u2915
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u2915:
	skipnc
	goto	u2911
	goto	u2910
u2911:
	goto	l4250
u2910:
	line	365
	
l4248:	
;main.c: 365: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l1051
	line	366
	
l4250:	
;main.c: 366: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u2925
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u2925:
	skipnc
	goto	u2921
	goto	u2920
u2921:
	goto	l1051
u2920:
	line	367
	
l4252:	
;main.c: 367: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	369
	
l1051:	
;main.c: 369: adsum += ad_temp;
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
	goto	u2931
	addwf	(ADC_Sample@adsum+1),f	;volatile
u2931:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2932
	addwf	(ADC_Sample@adsum+2),f	;volatile
u2932:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2933
	addwf	(ADC_Sample@adsum+3),f	;volatile
u2933:

	line	339
	
l4254:	
	incf	(ADC_Sample@i),f
	
l4256:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u2941
	goto	u2940
u2941:
	goto	l4228
u2940:
	line	371
	
l4258:	
;main.c: 370: }
;main.c: 371: adsum -= admax;
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
	goto	u2955
	goto	u2956
u2955:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u2956:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u2957
	goto	u2958
u2957:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u2958:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u2959
	goto	u2950
u2959:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u2950:

	line	372
;main.c: 372: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u2965
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u2965
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u2965
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u2965:
	skipc
	goto	u2961
	goto	u2960
u2961:
	goto	l1055
u2960:
	line	373
	
l4260:	
;main.c: 373: adsum -= admin;
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
	goto	u2975
	goto	u2976
u2975:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u2976:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u2977
	goto	u2978
u2977:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u2978:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u2979
	goto	u2970
u2979:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u2970:

	goto	l4262
	line	374
	
l1055:	
	line	375
;main.c: 374: else
;main.c: 375: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	377
	
l4262:	
;main.c: 377: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u2985:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u2980:
	addlw	-1
	skipz
	goto	u2985
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	379
	
l4264:	
;main.c: 379: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	380
	
l4266:	
;main.c: 380: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	381
	
l4268:	
;main.c: 381: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	382
	
l4270:	
;main.c: 382: return 0xA5;
	movlw	low(0A5h)
	line	384
	
l1048:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    2[BANK0 ] unsigned char 
;;  product         1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\Umul8.c"
	line	4
global __ptext17
__ptext17:	;psect for function ___bmul
psect	text17
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	6
	
l4740:	
	clrf	(___bmul@product)
	line	43
	
l4742:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u3781
	goto	u3780
u3781:
	goto	l4746
u3780:
	line	44
	
l4744:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	45
	
l4746:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	46
	
l4748:	
	clrc
	rrf	(___bmul@multiplier),f
	line	47
	movf	((___bmul@multiplier)),w
	btfss	status,2
	goto	u3791
	goto	u3790
u3791:
	goto	l4742
u3790:
	line	50
	
l4750:	
	movf	(___bmul@product),w
	line	51
	
l2194:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 250 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Init_System
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	250
global __ptext18
__ptext18:	;psect for function _Sleep_Mode
psect	text18
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	250
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 3
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	252
	
l4444:	
;main.c: 252: INTCON = 0;
	clrf	(11)	;volatile
	line	254
;main.c: 254: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	256
	
l4446:	
;main.c: 256: TRISA = 0xC0;
	movlw	low(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	257
	
l4448:	
;main.c: 257: PORTA = 0x00;
	clrf	(134)^080h	;volatile
	line	258
	
l4450:	
;main.c: 258: WPUA = 0x00;
	clrf	(136)^080h	;volatile
	line	259
	
l4452:	
;main.c: 259: TRISB = 0x54;
	movlw	low(054h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	260
;main.c: 260: PORTB = 0;
	clrf	(6)	;volatile
	line	261
	
l4454:	
;main.c: 261: WPUB = 0x40;
	movlw	low(040h)
	movwf	(8)	;volatile
	line	262
	
l4456:	
;main.c: 262: TRISC = 0x00;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	263
	
l4458:	
;main.c: 263: PORTC = 0;
	clrf	(262)^0100h	;volatile
	line	265
	
l4460:	
;main.c: 265: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(149)^080h	;volatile
	line	266
	
l4462:	
;main.c: 266: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	268
	
l4464:	
;main.c: 268: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	270
;main.c: 270: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	271
	
l4466:	
;main.c: 271: T2CON = 0;
	clrf	(19)	;volatile
	line	272
	
l4468:	
;main.c: 272: IOCA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(137)^080h	;volatile
	line	273
;main.c: 273: IOCB = 0B01000100;
	movlw	low(044h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	275
	
l4470:	
;main.c: 275: RAIE = 0;
	bcf	(115/8),(115)&7	;volatile
	line	276
	
l4472:	
;main.c: 276: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	277
	
l4474:	
;main.c: 277: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	279
	
l4476:	
;main.c: 279: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	282
;main.c: 282: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	283
	
l4478:	
;main.c: 283: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	284
	
l4480:	
;main.c: 284: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	285
;main.c: 285: PORTB;
	movf	(6),w	;volatile
	line	287
# 287 "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
clrwdt ;# 
	line	289
# 289 "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
sleep ;# 
	line	291
# 291 "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
nop ;# 
	line	292
# 292 "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
clrwdt ;# 
psect	text18
	line	293
	
l4482:	
;main.c: 293: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u3231
	goto	u3230
u3231:
	goto	l4486
u3230:
	
l4484:	
	bcf	(107/8),(107)&7	;volatile
	line	295
	
l4486:	
;main.c: 295: Init_System();
	fcall	_Init_System
	line	296
	
l1037:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 143 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Sleep_Mode
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	143
global __ptext19
__ptext19:	;psect for function _Init_System
psect	text19
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	143
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_System: [wreg+status,2]
	line	145
	
l4284:	
# 145 "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
nop ;# 
	line	146
# 146 "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
clrwdt ;# 
psect	text19
	line	147
	
l4286:	
;main.c: 147: INTCON = 0;
	clrf	(11)	;volatile
	line	148
	
l4288:	
;main.c: 148: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	149
	
l4290:	
;main.c: 149: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	154
;main.c: 154: TRISA = 0xC0;
	movlw	low(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	155
	
l4292:	
;main.c: 155: PORTA = 0x00;
	clrf	(134)^080h	;volatile
	line	156
	
l4294:	
;main.c: 156: WPUA = 0x00;
	clrf	(136)^080h	;volatile
	line	157
;main.c: 157: TRISB = 0x5C;
	movlw	low(05Ch)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	158
	
l4296:	
;main.c: 158: PORTB = 0;
	clrf	(6)	;volatile
	line	159
	
l4298:	
;main.c: 159: WPUB = 0x40;
	movlw	low(040h)
	movwf	(8)	;volatile
	line	160
;main.c: 160: TRISC = 0x00;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	161
	
l4300:	
;main.c: 161: PORTC = 0x02;
	movlw	low(02h)
	movwf	(262)^0100h	;volatile
	line	163
	
l4302:	
;main.c: 163: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(14)	;volatile
	line	164
	
l4304:	
;main.c: 164: PR2 = 100;
	movlw	low(064h)
	movwf	(17)	;volatile
	line	166
	
l4306:	
;main.c: 166: T2CON = 5;
	movlw	low(05h)
	movwf	(19)	;volatile
	line	167
	
l4308:	
;main.c: 167: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	168
	
l4310:	
;main.c: 168: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	169
	
l4312:	
;main.c: 169: ADON = 1;
	bsf	(1192/8)^080h,(1192)&7	;volatile
	line	170
;main.c: 170: ADCON1 = 0x00;
	clrf	(150)^080h	;volatile
	line	171
	
l1015:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 195 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
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
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          3       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_fRxDecoed
;;		_refreshLed
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	195
global __ptext20
__ptext20:	;psect for function _Isr_Timer
psect	text20
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	195
	global	__size_of_Isr_Timer
	__size_of_Isr_Timer	equ	__end_of_Isr_Timer-_Isr_Timer
	
_Isr_Timer:	
;incstack = 0
	opt	stack 1
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
psect	text20
	line	197
	
i1l4082:	
;main.c: 197: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u263_21
	goto	u263_20
u263_21:
	goto	i1l4112
u263_20:
	line	199
	
i1l4084:	
;main.c: 198: {
;main.c: 199: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	200
;main.c: 200: count100us = 1;
	clrf	(_count100us)
	incf	(_count100us),f
	line	201
	
i1l4086:	
;main.c: 201: if(++intCount10 >= 3)
	movlw	low(03h)
	incf	(_intCount10),f
	subwf	((_intCount10)),w
	skipc
	goto	u264_21
	goto	u264_20
u264_21:
	goto	i1l4094
u264_20:
	line	203
	
i1l4088:	
;main.c: 202: {
;main.c: 203: intCount10 = 0;
	clrf	(_intCount10)
	line	205
	
i1l4090:	
;main.c: 205: if(beepTime > 0)
	movf	((_beepTime)),w
	btfsc	status,2
	goto	u265_21
	goto	u265_20
u265_21:
	goto	i1l1026
u265_20:
	line	207
	
i1l4092:	
;main.c: 206: {
;main.c: 207: PORTA ^= 0x20;
	movlw	low(020h)
	bsf	status, 5	;RP0=1, select bank1
	xorwf	(134)^080h,f	;volatile
	line	208
;main.c: 208: }
	goto	i1l4094
	line	209
	
i1l1026:	
	line	211
;main.c: 209: else
;main.c: 210: {
;main.c: 211: PORTA &= 0xDF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(5/8),(5)&7	;volatile
	line	215
	
i1l4094:	
;main.c: 212: }
;main.c: 213: }
;main.c: 215: if(++MainTime >= 100)
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u266_21
	goto	u266_20
u266_21:
	goto	i1l4104
u266_20:
	line	217
	
i1l4096:	
;main.c: 216: {
;main.c: 217: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	218
	
i1l4098:	
;main.c: 218: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	219
	
i1l4100:	
;main.c: 219: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u267_21
	goto	u267_20
u267_21:
	goto	i1l4104
u267_20:
	line	221
	
i1l4102:	
;main.c: 220: {
;main.c: 221: count1s = 0;
	clrf	(_count1s)
	line	224
	
i1l4104:	
;main.c: 222: }
;main.c: 223: }
;main.c: 224: refreshLed();
	fcall	_refreshLed
	line	225
	
i1l4106:	
;main.c: 225: fRxDecoed();
	fcall	_fRxDecoed
	line	227
	
i1l4108:	
;main.c: 227: if(motorDuty > MainTime)
	movf	(_motorDuty),w
	subwf	(_MainTime),w	;volatile
	skipnc
	goto	u268_21
	goto	u268_20
u268_21:
	goto	i1l1030
u268_20:
	line	229
	
i1l4110:	
;main.c: 228: {
;main.c: 229: RA2 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1074/8)^080h,(1074)&7	;volatile
	line	230
;main.c: 230: }
	goto	i1l1033
	line	231
	
i1l1030:	
	line	233
;main.c: 231: else
;main.c: 232: {
;main.c: 233: RA2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1074/8)^080h,(1074)&7	;volatile
	goto	i1l1033
	line	238
	
i1l4112:	
;main.c: 236: else
;main.c: 237: {
;main.c: 238: PIR1 = 0;
	clrf	(13)	;volatile
	line	241
	
i1l1033:	
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
	global	_refreshLed

;; *************** function _refreshLed *****************
;; Defined at:
;;		line 60 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ledOpen
;; This function is called by:
;;		_Isr_Timer
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\number.c"
	line	60
global __ptext21
__ptext21:	;psect for function _refreshLed
psect	text21
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\number.c"
	line	60
	global	__size_of_refreshLed
	__size_of_refreshLed	equ	__end_of_refreshLed-_refreshLed
	
_refreshLed:	
;incstack = 0
	opt	stack 1
; Regs used in _refreshLed: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	64
	
i1l3630:	
;number.c: 64: TRISB |= 0x23;
	movlw	low(023h)
	iorwf	(5),f	;volatile
	line	65
;number.c: 65: PORTB &= 0xDC;
	movlw	low(0DCh)
	andwf	(6),f	;volatile
	line	66
	
i1l3632:	
;number.c: 66: TRISC |= 0x01;
	bsf	status, 6	;RP1=1, select bank2
	bsf	(261)^0100h+(0/8),(0)&7	;volatile
	line	67
	
i1l3634:	
;number.c: 67: PORTC &= 0xFE;
	bcf	(262)^0100h+(0/8),(0)&7	;volatile
	line	68
;number.c: 68: switch(ledCnt)
	goto	i1l3658
	line	70
;number.c: 69: {
;number.c: 70: case 0:
	
i1l2125:	
	line	71
;number.c: 71: if(showNumAShi & 0x01)
	btfss	(_showNumAShi),(0)&7
	goto	u176_21
	goto	u176_20
u176_21:
	goto	i1l3660
u176_20:
	line	73
	
i1l3636:	
;number.c: 72: {
;number.c: 73: ledOpen(2,1);
	clrf	(ledOpen@low)
	incf	(ledOpen@low),f
	movlw	low(02h)
	fcall	_ledOpen
	goto	i1l3660
	line	76
;number.c: 76: case 1:
	
i1l2128:	
	line	77
;number.c: 77: if(showNumAShi & 0x02)
	btfss	(_showNumAShi),(1)&7
	goto	u177_21
	goto	u177_20
u177_21:
	goto	i1l3660
u177_20:
	line	79
	
i1l3638:	
;number.c: 78: {
;number.c: 79: ledOpen(2,3);
	movlw	low(03h)
	movwf	(ledOpen@low)
	movlw	low(02h)
	fcall	_ledOpen
	goto	i1l3660
	line	82
;number.c: 82: case 2:
	
i1l2130:	
	line	83
;number.c: 83: if(showNumAShi & 0x04)
	btfss	(_showNumAShi),(2)&7
	goto	u178_21
	goto	u178_20
u178_21:
	goto	i1l3660
u178_20:
	line	85
	
i1l3640:	
;number.c: 84: {
;number.c: 85: ledOpen(2,4);
	movlw	low(04h)
	movwf	(ledOpen@low)
	movlw	low(02h)
	fcall	_ledOpen
	goto	i1l3660
	line	88
;number.c: 88: case 3:
	
i1l2132:	
	line	89
;number.c: 89: if(showNumAShi & 0x08)
	btfss	(_showNumAShi),(3)&7
	goto	u179_21
	goto	u179_20
u179_21:
	goto	i1l3660
u179_20:
	line	91
	
i1l3642:	
;number.c: 90: {
;number.c: 91: ledOpen(1,2);
	movlw	low(02h)
	movwf	(ledOpen@low)
	movlw	low(01h)
	fcall	_ledOpen
	goto	i1l3660
	line	94
;number.c: 94: case 4:
	
i1l2134:	
	line	95
;number.c: 95: if(showNumAShi & 0x10)
	btfss	(_showNumAShi),(4)&7
	goto	u180_21
	goto	u180_20
u180_21:
	goto	i1l3660
u180_20:
	line	97
	
i1l3644:	
;number.c: 96: {
;number.c: 97: ledOpen(1,3);
	movlw	low(03h)
	movwf	(ledOpen@low)
	movlw	low(01h)
	fcall	_ledOpen
	goto	i1l3660
	line	100
;number.c: 100: case 5:
	
i1l2136:	
	line	101
;number.c: 101: if(showNumAShi & 0x20)
	btfss	(_showNumAShi),(5)&7
	goto	u181_21
	goto	u181_20
u181_21:
	goto	i1l3660
u181_20:
	line	103
	
i1l3646:	
;number.c: 102: {
;number.c: 103: ledOpen(1,4);
	movlw	low(04h)
	movwf	(ledOpen@low)
	movlw	low(01h)
	fcall	_ledOpen
	goto	i1l3660
	line	106
;number.c: 106: case 6:
	
i1l2138:	
	line	107
;number.c: 107: if(showNumAShi & 0x40)
	btfss	(_showNumAShi),(6)&7
	goto	u182_21
	goto	u182_20
u182_21:
	goto	i1l3660
u182_20:
	line	109
	
i1l3648:	
;number.c: 108: {
;number.c: 109: ledOpen(3,1);
	clrf	(ledOpen@low)
	incf	(ledOpen@low),f
	movlw	low(03h)
	fcall	_ledOpen
	goto	i1l3660
	line	112
;number.c: 112: case 7:
	
i1l2140:	
	line	113
;number.c: 113: if(showNumAge & 0x01)
	btfss	(_showNumAge),(0)&7
	goto	u183_21
	goto	u183_20
u183_21:
	goto	i1l3660
u183_20:
	line	115
	
i1l3650:	
;number.c: 114: {
;number.c: 115: ledOpen(3,4);
	movlw	low(04h)
	movwf	(ledOpen@low)
	movlw	low(03h)
	fcall	_ledOpen
	goto	i1l3660
	line	118
;number.c: 118: case 8:
	
i1l2142:	
	line	119
;number.c: 119: if(showNumAge & 0x02)
	btfss	(_showNumAge),(1)&7
	goto	u184_21
	goto	u184_20
u184_21:
	goto	i1l3660
u184_20:
	line	121
	
i1l3652:	
;number.c: 120: {
;number.c: 121: ledOpen(3,2);
	movlw	low(02h)
	movwf	(ledOpen@low)
	movlw	low(03h)
	fcall	_ledOpen
	goto	i1l3660
	line	124
;number.c: 124: case 9:
	
i1l2144:	
	line	125
;number.c: 125: if(showNumAge & 0x04)
	btfss	(_showNumAge),(2)&7
	goto	u185_21
	goto	u185_20
u185_21:
	goto	i1l3660
u185_20:
	line	127
	
i1l3654:	
;number.c: 126: {
;number.c: 127: ledOpen(4,1);
	clrf	(ledOpen@low)
	incf	(ledOpen@low),f
	movlw	low(04h)
	fcall	_ledOpen
	goto	i1l3660
	line	68
	
i1l3658:	
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ledCnt),w
	; Switch size 1, requested type "space"
; Number of cases is 10, Range of values is 0 to 9
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           27     7 (fixed)
; simple_byte           31    16 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	10
	subwf	fsr,w
skipnc
goto i1l3660
movlw high(i1S4842)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(i1S4842)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
i1S4842:
	ljmp	i1l2125
	ljmp	i1l2128
	ljmp	i1l2130
	ljmp	i1l2132
	ljmp	i1l2134
	ljmp	i1l2136
	ljmp	i1l2138
	ljmp	i1l2140
	ljmp	i1l2142
	ljmp	i1l2144
psect	text21

	line	133
	
i1l3660:	
;number.c: 133: if(++ledCnt > 9)
	movlw	low(0Ah)
	bcf	status, 6	;RP1=0, select bank0
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u186_21
	goto	u186_20
u186_21:
	goto	i1l2148
u186_20:
	line	135
	
i1l3662:	
;number.c: 134: {
;number.c: 135: ledCnt = 0;
	clrf	(_ledCnt)
	line	137
	
i1l2148:	
	return
	opt stack 0
GLOBAL	__end_of_refreshLed
	__end_of_refreshLed:
	signat	_refreshLed,89
	global	_ledOpen

;; *************** function _ledOpen *****************
;; Defined at:
;;		line 11 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;  hight           1    wreg     unsigned char 
;;  low             1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  hight           1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 100/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	11
global __ptext22
__ptext22:	;psect for function _ledOpen
psect	text22
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\number.c"
	line	11
	global	__size_of_ledOpen
	__size_of_ledOpen	equ	__end_of_ledOpen-_ledOpen
	
_ledOpen:	
;incstack = 0
	opt	stack 1
; Regs used in _ledOpen: [wreg-fsr0h+status,2+status,0]
;ledOpen@hight stored from wreg
	movwf	(ledOpen@hight)
	line	13
	
i1l3620:	
;number.c: 13: switch(hight)
	goto	i1l3624
	line	15
;number.c: 14: {
;number.c: 15: case 1:
	
i1l2108:	
	line	16
;number.c: 16: TRISC &= 0xFE;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(261)^0100h+(0/8),(0)&7	;volatile
	line	17
;number.c: 17: RC0 = 1;
	bsf	(2096/8)^0100h,(2096)&7	;volatile
	line	18
;number.c: 18: break;
	goto	i1l3628
	line	19
;number.c: 19: case 2:
	
i1l2110:	
	line	20
;number.c: 20: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	21
;number.c: 21: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	22
;number.c: 22: break;
	goto	i1l3628
	line	23
;number.c: 23: case 3:
	
i1l2111:	
	line	24
;number.c: 24: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	25
;number.c: 25: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	26
;number.c: 26: break;
	goto	i1l3628
	line	27
;number.c: 27: case 4:
	
i1l2112:	
	line	28
;number.c: 28: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	29
;number.c: 29: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	30
;number.c: 30: break;
	goto	i1l3628
	line	13
	
i1l3624:	
	movf	(ledOpen@hight),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           18    10 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	i1l2108
	xorlw	2^1	; case 2
	skipnz
	goto	i1l2110
	xorlw	3^2	; case 3
	skipnz
	goto	i1l2111
	xorlw	4^3	; case 4
	skipnz
	goto	i1l2112
	goto	i1l3628
	opt asmopt_pop

	line	36
;number.c: 35: {
;number.c: 36: case 1:
	
i1l2115:	
	line	37
;number.c: 37: TRISC &= 0xFE;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(261)^0100h+(0/8),(0)&7	;volatile
	line	38
;number.c: 38: RC0 = 0;
	bcf	(2096/8)^0100h,(2096)&7	;volatile
	line	39
;number.c: 39: break;
	goto	i1l2121
	line	40
;number.c: 40: case 2:
	
i1l2117:	
	line	41
;number.c: 41: TRISB &= 0xDF;
	bcf	status, 6	;RP1=0, select bank0
	bcf	(5)+(5/8),(5)&7	;volatile
	line	42
;number.c: 42: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	43
;number.c: 43: break;
	goto	i1l2121
	line	44
;number.c: 44: case 3:
	
i1l2118:	
	line	45
;number.c: 45: TRISB &= 0xFE;
	bcf	status, 6	;RP1=0, select bank0
	bcf	(5)+(0/8),(0)&7	;volatile
	line	46
;number.c: 46: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	line	47
;number.c: 47: break;
	goto	i1l2121
	line	48
;number.c: 48: case 4:
	
i1l2119:	
	line	49
;number.c: 49: TRISB &= 0xFD;
	bcf	status, 6	;RP1=0, select bank0
	bcf	(5)+(1/8),(1)&7	;volatile
	line	50
;number.c: 50: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	51
;number.c: 51: break;
	goto	i1l2121
	line	34
	
i1l3628:	
	movf	(ledOpen@low),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           18    10 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	i1l2115
	xorlw	2^1	; case 2
	skipnz
	goto	i1l2117
	xorlw	3^2	; case 3
	skipnz
	goto	i1l2118
	xorlw	4^3	; case 4
	skipnz
	goto	i1l2119
	goto	i1l2121
	opt asmopt_pop

	line	55
	
i1l2121:	
	return
	opt stack 0
GLOBAL	__end_of_ledOpen
	__end_of_ledOpen:
	signat	_ledOpen,8313
	global	_fRxDecoed

;; *************** function _fRxDecoed *****************
;; Defined at:
;;		line 486 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_fRXError
;; This function is called by:
;;		_Isr_Timer
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	486
global __ptext23
__ptext23:	;psect for function _fRxDecoed
psect	text23
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	486
	global	__size_of_fRxDecoed
	__size_of_fRxDecoed	equ	__end_of_fRxDecoed-_fRxDecoed
	
_fRxDecoed:	
;incstack = 0
	opt	stack 1
; Regs used in _fRxDecoed: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	488
	
i1l3670:	
;main.c: 488: if(g8CtrlFlg&0x04)
	btfss	(_g8CtrlFlg),(2)&7
	goto	u187_21
	goto	u187_20
u187_21:
	goto	i1l3770
u187_20:
	goto	i1l1087
	line	494
;main.c: 493: {
;main.c: 494: case 0:
	
i1l1089:	
	line	495
;main.c: 495: if(RB3==0)
	btfsc	(51/8),(51)&7	;volatile
	goto	u188_21
	goto	u188_20
u188_21:
	goto	i1l3678
u188_20:
	line	497
	
i1l3674:	
;main.c: 496: {
;main.c: 497: if(++g8RxTime>85)
	movlw	low(056h)
	incf	(_g8RxTime),f
	subwf	((_g8RxTime)),w
	skipc
	goto	u189_21
	goto	u189_20
u189_21:
	goto	i1l1087
u189_20:
	line	499
	
i1l3676:	
;main.c: 498: {
;main.c: 499: g8RX=1;
	clrf	(_g8RX)
	incf	(_g8RX),f
	line	500
	
i1l3678:	
;main.c: 500: g8RxTime=0;
	clrf	(_g8RxTime)
	goto	i1l1087
	line	511
;main.c: 511: case 1:
	
i1l1094:	
	line	512
;main.c: 512: if(RB3==0)
	btfsc	(51/8),(51)&7	;volatile
	goto	u190_21
	goto	u190_20
u190_21:
	goto	i1l3686
u190_20:
	line	514
	
i1l3682:	
;main.c: 513: {
;main.c: 514: if(++g8RxTime>60)
	movlw	low(03Dh)
	incf	(_g8RxTime),f
	subwf	((_g8RxTime)),w
	skipc
	goto	u191_21
	goto	u191_20
u191_21:
	goto	i1l1087
u191_20:
	line	516
	
i1l3684:	
;main.c: 515: {
;main.c: 516: fRXError();
	fcall	_fRXError
	line	517
;main.c: 517: break;
	goto	i1l1087
	line	523
	
i1l3686:	
;main.c: 521: else
;main.c: 522: {
;main.c: 523: g8RX=2;
	movlw	low(02h)
	movwf	(_g8RX)
	line	524
	
i1l3688:	
;main.c: 524: g8RxTime=0;
	clrf	(_g8RxTime)
	line	525
	
i1l3690:	
;main.c: 525: g8RxData=0;
	clrf	(_g8RxData)
	line	526
	
i1l3692:	
;main.c: 526: g8RxDataBit=0;
	clrf	(_g8RxDataBit)
	goto	i1l1087
	line	530
;main.c: 530: case 2:
	
i1l1098:	
	line	531
;main.c: 531: if(RB3)
	btfss	(51/8),(51)&7	;volatile
	goto	u192_21
	goto	u192_20
u192_21:
	goto	i1l3698
u192_20:
	line	533
	
i1l3694:	
;main.c: 532: {
;main.c: 533: if(++g8RxTime>60)
	movlw	low(03Dh)
	incf	(_g8RxTime),f
	subwf	((_g8RxTime)),w
	skipc
	goto	u193_21
	goto	u193_20
u193_21:
	goto	i1l1087
u193_20:
	goto	i1l3684
	line	542
	
i1l3698:	
;main.c: 539: else
;main.c: 540: {
;main.c: 542: if(++g8RxTime<40)
	movlw	low(028h)
	incf	(_g8RxTime),f
	subwf	((_g8RxTime)),w
	skipnc
	goto	u194_21
	goto	u194_20
u194_21:
	goto	i1l3702
u194_20:
	goto	i1l3684
	line	547
	
i1l3702:	
;main.c: 546: }
;main.c: 547: g8RX=3;
	movlw	low(03h)
	movwf	(_g8RX)
	goto	i1l3688
	line	554
;main.c: 554: case 3:
	
i1l1103:	
	line	555
;main.c: 555: if(RB3 == 0)
	btfsc	(51/8),(51)&7	;volatile
	goto	u195_21
	goto	u195_20
u195_21:
	goto	i1l3714
u195_20:
	line	557
	
i1l3710:	
;main.c: 556: {
;main.c: 557: if(++g8RxTime>8)
	movlw	low(09h)
	incf	(_g8RxTime),f
	subwf	((_g8RxTime)),w
	skipc
	goto	u196_21
	goto	u196_20
u196_21:
	goto	i1l1087
u196_20:
	goto	i1l3684
	line	567
	
i1l3714:	
;main.c: 563: else
;main.c: 564: {
;main.c: 567: if(g8RxTime < 4)
	movlw	low(04h)
	subwf	(_g8RxTime),w
	skipnc
	goto	u197_21
	goto	u197_20
u197_21:
	goto	i1l3718
u197_20:
	goto	i1l3684
	line	572
	
i1l3718:	
;main.c: 571: }
;main.c: 572: g8RX=4;
	movlw	low(04h)
	movwf	(_g8RX)
	goto	i1l3678
	line	576
;main.c: 576: case 4:
	
i1l1108:	
	line	577
;main.c: 577: if(RB3)
	btfss	(51/8),(51)&7	;volatile
	goto	u198_21
	goto	u198_20
u198_21:
	goto	i1l3726
u198_20:
	line	579
	
i1l3722:	
;main.c: 578: {
;main.c: 579: if(++g8RxTime>20)
	movlw	low(015h)
	incf	(_g8RxTime),f
	subwf	((_g8RxTime)),w
	skipc
	goto	u199_21
	goto	u199_20
u199_21:
	goto	i1l1087
u199_20:
	goto	i1l3684
	line	587
	
i1l3726:	
;main.c: 585: else
;main.c: 586: {
;main.c: 587: g8RX=3;
	movlw	low(03h)
	movwf	(_g8RX)
	line	588
;main.c: 588: if(g8RxTime<4)
	movlw	low(04h)
	subwf	(_g8RxTime),w
	skipnc
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l3730
u200_20:
	goto	i1l3684
	line	593
	
i1l3730:	
;main.c: 592: }
;main.c: 593: if(g8RxTime > 10)
	movlw	low(0Bh)
	subwf	(_g8RxTime),w
	skipc
	goto	u201_21
	goto	u201_20
u201_21:
	goto	i1l3734
u201_20:
	line	595
	
i1l3732:	
;main.c: 594: {
;main.c: 595: g8RxData|=0x80;
	bsf	(_g8RxData)+(7/8),(7)&7
	line	597
	
i1l3734:	
;main.c: 596: }
;main.c: 597: ++g8RxDataBit;
	incf	(_g8RxDataBit),f
	line	598
	
i1l3736:	
;main.c: 598: g8RxTime=0;
	clrf	(_g8RxTime)
	line	600
	
i1l3738:	
;main.c: 600: if(g8RxDataBit==8)
		movlw	8
	xorwf	((_g8RxDataBit)),w
	btfss	status,2
	goto	u202_21
	goto	u202_20
u202_21:
	goto	i1l3746
u202_20:
	line	606
	
i1l3740:	
;main.c: 601: {
;main.c: 606: recData1 = g8RxData;
	movf	(_g8RxData),w
	movwf	(_recData1)
	line	607
	
i1l3742:	
;main.c: 607: g8RxTime=0;
	clrf	(_g8RxTime)
	line	608
	
i1l3744:	
;main.c: 608: g8RxData=0;
	clrf	(_g8RxData)
	line	610
;main.c: 610: break;
	goto	i1l1087
	line	612
	
i1l3746:	
;main.c: 611: }
;main.c: 612: if(g8RxDataBit==16)
		movlw	16
	xorwf	((_g8RxDataBit)),w
	btfss	status,2
	goto	u203_21
	goto	u203_20
u203_21:
	goto	i1l3754
u203_20:
	line	618
	
i1l3748:	
;main.c: 613: {
;main.c: 618: recData2 = g8RxData;
	movf	(_g8RxData),w
	movwf	(_recData2)
	goto	i1l3742
	line	624
	
i1l3754:	
;main.c: 623: }
;main.c: 624: if(g8RxDataBit==24)
		movlw	24
	xorwf	((_g8RxDataBit)),w
	btfss	status,2
	goto	u204_21
	goto	u204_20
u204_21:
	goto	i1l3762
u204_20:
	line	630
	
i1l3756:	
;main.c: 625: {
;main.c: 630: recData3 = g8RxData;
	movf	(_g8RxData),w
	movwf	(_recData3)
	goto	i1l3742
	line	636
	
i1l3762:	
;main.c: 635: }
;main.c: 636: if(g8RxDataBit==32)
		movlw	32
	xorwf	((_g8RxDataBit)),w
	btfss	status,2
	goto	u205_21
	goto	u205_20
u205_21:
	goto	i1l1117
u205_20:
	line	640
	
i1l3764:	
;main.c: 642: recData4 = g8RxData;
	bsf	(_g8CtrlFlg)+(2/8),(2)&7
	goto	i1l3684
	line	646
	
i1l1117:	
	line	647
;main.c: 646: }
;main.c: 647: g8RxData>>=1;
	clrc
	rrf	(_g8RxData),f
	goto	i1l1087
	line	492
	
i1l3770:	
	movf	(_g8RX),w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           17     7 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l1089
	xorlw	1^0	; case 1
	skipnz
	goto	i1l1094
	xorlw	2^1	; case 2
	skipnz
	goto	i1l1098
	xorlw	3^2	; case 3
	skipnz
	goto	i1l1103
	xorlw	4^3	; case 4
	skipnz
	goto	i1l1108
	goto	i1l1087
	opt asmopt_pop

	line	657
	
i1l1087:	
	return
	opt stack 0
GLOBAL	__end_of_fRxDecoed
	__end_of_fRxDecoed:
	signat	_fRxDecoed,89
	global	_fRXError

;; *************** function _fRXError *****************
;; Defined at:
;;		line 475 in file "C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fRxDecoed
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	475
global __ptext24
__ptext24:	;psect for function _fRXError
psect	text24
	file	"C:\mcuproject\scm\zdt\D262_8F083_tssop20_\D262_8F083_tssop20_\main.c"
	line	475
	global	__size_of_fRXError
	__size_of_fRXError	equ	__end_of_fRXError-_fRXError
	
_fRXError:	
;incstack = 0
	opt	stack 1
; Regs used in _fRXError: [status,2]
	line	477
	
i1l3534:	
;main.c: 477: g8RX=0;
	clrf	(_g8RX)
	line	478
;main.c: 478: g8RxData=0;
	clrf	(_g8RxData)
	line	479
;main.c: 479: g8RxDataBit=0;
	clrf	(_g8RxDataBit)
	line	480
;main.c: 480: g8RxTime=0;
	clrf	(_g8RxTime)
	line	482
	
i1l1083:	
	return
	opt stack 0
GLOBAL	__end_of_fRXError
	__end_of_fRXError:
	signat	_fRXError,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
