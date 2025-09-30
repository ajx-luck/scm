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
	FNCALL	_main,_checkBatAD
	FNCALL	_main,_chrgCtr
	FNCALL	_main,_keyCtr
	FNCALL	_main,_refreshLed
	FNCALL	_main,_workCtr
	FNCALL	_workCtr,___lbmod
	FNCALL	_workCtr,_pwm1Init
	FNCALL	_workCtr,_pwm1Stop
	FNCALL	_workCtr,_setBatLed
	FNCALL	_workCtr,_setTempLed
	FNCALL	_workCtr,_updateTemp
	FNCALL	_updateTemp,_checkTemAD
	FNCALL	_checkTemAD,_ADC_Sample
	FNCALL	_checkTemAD,___lwdiv
	FNCALL	_setTempLed,___lbdiv
	FNCALL	_setTempLed,___lbmod
	FNCALL	_refreshLed,_DelayUs
	FNCALL	_refreshLed,_ledOpen
	FNCALL	_keyCtr,_keyRead
	FNCALL	_keyCtr,_keyRead2
	FNCALL	_keyCtr,_keyRead3
	FNCALL	_keyCtr,_pwm1Stop
	FNCALL	_chrgCtr,_pwm1Stop
	FNCALL	_chrgCtr,_setBatLed
	FNCALL	_checkBatAD,_ADC_Sample
	FNCALL	_checkBatAD,_pwm1Stop
	FNCALL	_Sleep_Mode,_Init_System
	FNROOT	_main
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_showMaxTemp
	global	_showNumBShi
	global	_showNumAge
	global	_showNumAShi
	global	_showNumBat
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	45

;initializer for _showMaxTemp
	retlw	0A0h
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\number.c"
	line	8

;initializer for _showNumBShi
	retlw	07Fh
	line	7

;initializer for _showNumAge
	retlw	07Fh
	line	6

;initializer for _showNumAShi
	retlw	07Fh
	line	9

;initializer for _showNumBat
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
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	58
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
	retlw	071h
	retlw	079h
	retlw	050h
	global __end_of_numArray
__end_of_numArray:
	global	_numArray
	global	_showBatStep
	global	_B_OnOff
	global	_B_MainLoop
	global	_power_ad
	global	_result
	global	_adresult
	global	_motorTime
	global	_count1200s
	global	_temValue
	global	_chanceBatTime
	global	_batValue
	global	_sleepTime
	global	_ledCnt
	global	_test_adc
	global	_chrgFlag
	global	_beepFlag
	global	_beepTime
	global	_zfStep
	global	_firstShowBatTime
	global	_lowBatFlag
	global	_showOffTime
	global	_tempCheckTime
	global	_lowBatTime
	global	_showWorkStepTime
	global	_chanceTempNumTime
	global	_showTmepNum
	global	_maxTempNum
	global	_tempNum
	global	_batLedStep
	global	_batStep
	global	_longPressFlag
	global	_keyCount3
	global	_keyCount2
	global	_keyCount
	global	_workStep
	global	_intCount10
	global	_count1s
	global	_MainTime
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
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
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
	global	_PORTC
_PORTC	set	262
	global	_TRISC
_TRISC	set	261
; #config settings
	file	"D252_8F083_tssop20_.as"
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
_showBatStep:
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

_motorTime:
       ds      2

_count1200s:
       ds      2

_temValue:
       ds      2

_chanceBatTime:
       ds      2

_batValue:
       ds      2

_sleepTime:
       ds      2

_ledCnt:
       ds      1

_test_adc:
       ds      1

_chrgFlag:
       ds      1

_beepFlag:
       ds      1

_beepTime:
       ds      1

_zfStep:
       ds      1

_firstShowBatTime:
       ds      1

_lowBatFlag:
       ds      1

_showOffTime:
       ds      1

_tempCheckTime:
       ds      1

_lowBatTime:
       ds      1

_showWorkStepTime:
       ds      1

_chanceTempNumTime:
       ds      1

_showTmepNum:
       ds      1

_maxTempNum:
       ds      1

_tempNum:
       ds      1

_batLedStep:
       ds      1

_batStep:
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

_intCount10:
       ds      1

_count1s:
       ds      1

_MainTime:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	45
_showMaxTemp:
       ds      1

psect	dataBANK0
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\number.c"
	line	8
_showNumBShi:
       ds      1

psect	dataBANK0
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\number.c"
	line	7
_showNumAge:
       ds      1

psect	dataBANK0
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\number.c"
	line	6
_showNumAShi:
       ds      1

psect	dataBANK0
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\number.c"
	line	9
_showNumBat:
       ds      1

	file	"D252_8F083_tssop20_.as"
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
	fcall	__pidataBANK0+4		;fetch initializer
	movwf	__pdataBANK0+4&07fh		
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
	movlw	low((__pbssBANK0)+02Ch)
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
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
?_pwm1Stop:	; 1 bytes @ 0x0
?_pwm1Init:	; 1 bytes @ 0x0
?_refreshLed:	; 1 bytes @ 0x0
?_DelayUs:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_Sleep_Mode:	; 1 bytes @ 0x0
?_checkTemAD:	; 1 bytes @ 0x0
?_checkBatAD:	; 1 bytes @ 0x0
?_setBatLed:	; 1 bytes @ 0x0
?_setTempLed:	; 1 bytes @ 0x0
?_chrgCtr:	; 1 bytes @ 0x0
?_updateTemp:	; 1 bytes @ 0x0
?_workCtr:	; 1 bytes @ 0x0
?_keyRead:	; 1 bytes @ 0x0
?_keyRead2:	; 1 bytes @ 0x0
?_keyRead3:	; 1 bytes @ 0x0
?_keyCtr:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	ds	2
??_pwm1Stop:	; 1 bytes @ 0x2
??_pwm1Init:	; 1 bytes @ 0x2
??_DelayUs:	; 1 bytes @ 0x2
??_Init_System:	; 1 bytes @ 0x2
??_Sleep_Mode:	; 1 bytes @ 0x2
?_ADC_Sample:	; 1 bytes @ 0x2
??_setBatLed:	; 1 bytes @ 0x2
??_keyRead:	; 1 bytes @ 0x2
??_keyRead2:	; 1 bytes @ 0x2
??_keyRead3:	; 1 bytes @ 0x2
?_ledOpen:	; 1 bytes @ 0x2
?___lbmod:	; 1 bytes @ 0x2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x2
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x2
	global	setBatLed@ledStep
setBatLed@ledStep:	; 1 bytes @ 0x2
	global	keyRead@keyStatus
keyRead@keyStatus:	; 1 bytes @ 0x2
	global	keyRead2@keyStatus
keyRead2@keyStatus:	; 1 bytes @ 0x2
	global	keyRead3@keyStatus
keyRead3@keyStatus:	; 1 bytes @ 0x2
	global	ledOpen@low
ledOpen@low:	; 1 bytes @ 0x2
	global	DelayUs@Time
DelayUs@Time:	; 1 bytes @ 0x2
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	ds	1
??_ADC_Sample:	; 1 bytes @ 0x3
??_chrgCtr:	; 1 bytes @ 0x3
??_keyCtr:	; 1 bytes @ 0x3
??_ledOpen:	; 1 bytes @ 0x3
??___lbmod:	; 1 bytes @ 0x3
	global	keyCtr@kclick
keyCtr@kclick:	; 1 bytes @ 0x3
	global	ledOpen@hight
ledOpen@hight:	; 1 bytes @ 0x3
	global	DelayUs@a
DelayUs@a:	; 1 bytes @ 0x3
	ds	1
??_refreshLed:	; 1 bytes @ 0x4
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x4
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x4
	ds	1
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x5
	ds	1
??___lwdiv:	; 1 bytes @ 0x6
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x6
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x6
	ds	1
??_checkBatAD:	; 1 bytes @ 0x7
?___lbdiv:	; 1 bytes @ 0x7
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x7
	ds	1
??_setTempLed:	; 1 bytes @ 0x8
??___lbdiv:	; 1 bytes @ 0x8
	global	setTempLed@tempLed
setTempLed@tempLed:	; 1 bytes @ 0x8
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x8
	ds	1
??_checkTemAD:	; 1 bytes @ 0x9
??_updateTemp:	; 1 bytes @ 0x9
??_workCtr:	; 1 bytes @ 0x9
	ds	1
??_main:	; 1 bytes @ 0xA
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	ADC_Sample@j
ADC_Sample@j:	; 1 bytes @ 0x0
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x0
	ds	1
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x1
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x1
	ds	1
	global	ADC_Sample@i
ADC_Sample@i:	; 1 bytes @ 0x2
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x2
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
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    13
;!    Data        5
;!    BSS         45
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      12
;!    BANK0            80     13      63
;!    BANK1            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_workCtr
;!    _workCtr->_setTempLed
;!    _checkTemAD->___lwdiv
;!    _setTempLed->___lbdiv
;!    ___lbdiv->___lbmod
;!    _refreshLed->_DelayUs
;!    _refreshLed->_ledOpen
;!    _keyCtr->_keyRead
;!    _keyCtr->_keyRead2
;!    _keyCtr->_keyRead3
;!    _chrgCtr->_setBatLed
;!    _checkBatAD->_ADC_Sample
;!
;!Critical Paths under _Isr_Timer in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _checkTemAD->_ADC_Sample
;!    _setTempLed->___lbdiv
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
;! (0) _main                                                 0     0      0    5372
;!                        _Init_System
;!                         _Sleep_Mode
;!                         _checkBatAD
;!                            _chrgCtr
;!                             _keyCtr
;!                         _refreshLed
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              1     1      0    2931
;!                                              9 COMMON     1     1      0
;!                            ___lbmod
;!                           _pwm1Init
;!                           _pwm1Stop
;!                          _setBatLed
;!                         _setTempLed
;!                         _updateTemp
;! ---------------------------------------------------------------------------------
;! (2) _updateTemp                                           0     0      0    1367
;!                         _checkTemAD
;! ---------------------------------------------------------------------------------
;! (3) _checkTemAD                                           0     0      0    1367
;!                         _ADC_Sample
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              7     3      4     692
;!                                              2 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (2) _setTempLed                                           1     1      0    1049
;!                                              8 COMMON     1     1      0
;!                            ___lbdiv
;!                            ___lbmod
;! ---------------------------------------------------------------------------------
;! (3) ___lbmod                                              5     4      1     427
;!                                              2 COMMON     5     4      1
;! ---------------------------------------------------------------------------------
;! (3) ___lbdiv                                              4     3      1     436
;!                                              7 COMMON     1     0      1
;!                                              0 BANK0      3     3      0
;!                            ___lbmod (ARG)
;! ---------------------------------------------------------------------------------
;! (2) _pwm1Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _refreshLed                                           0     0      0    1521
;!                            _DelayUs
;!                            _ledOpen
;! ---------------------------------------------------------------------------------
;! (2) _ledOpen                                              2     1      1    1475
;!                                              2 COMMON     2     1      1
;! ---------------------------------------------------------------------------------
;! (2) _DelayUs                                              2     2      0      46
;!                                              2 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _keyCtr                                               1     1      0     157
;!                                              3 COMMON     1     1      0
;!                            _keyRead
;!                           _keyRead2
;!                           _keyRead3
;!                           _pwm1Stop
;! ---------------------------------------------------------------------------------
;! (2) _keyRead3                                             1     1      0      22
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _keyRead2                                             1     1      0      22
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _keyRead                                              1     1      0      22
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              0     0      0      88
;!                           _pwm1Stop
;!                          _setBatLed
;! ---------------------------------------------------------------------------------
;! (2) _setBatLed                                            1     1      0      88
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _checkBatAD                                           0     0      0     675
;!                         _ADC_Sample
;!                           _pwm1Stop
;! ---------------------------------------------------------------------------------
;! (2) _pwm1Stop                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (4) _ADC_Sample                                          18    17      1     675
;!                                              2 COMMON     5     4      1
;!                                              0 BANK0     13    13      0
;! ---------------------------------------------------------------------------------
;! (1) _Sleep_Mode                                           0     0      0       0
;!                        _Init_System
;! ---------------------------------------------------------------------------------
;! (2) _Init_System                                          0     0      0       0
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
;!   _Init_System
;!   _Sleep_Mode
;!     _Init_System
;!   _checkBatAD
;!     _ADC_Sample
;!     _pwm1Stop
;!   _chrgCtr
;!     _pwm1Stop
;!     _setBatLed
;!   _keyCtr
;!     _keyRead
;!     _keyRead2
;!     _keyRead3
;!     _pwm1Stop
;!   _refreshLed
;!     _DelayUs
;!     _ledOpen
;!   _workCtr
;!     ___lbmod
;!     _pwm1Init
;!     _pwm1Stop
;!     _setBatLed
;!     _setTempLed
;!       ___lbdiv
;!         ___lbmod (ARG)
;!       ___lbmod
;!     _updateTemp
;!       _checkTemAD
;!         _ADC_Sample
;!         ___lwdiv
;!
;! _Isr_Timer (ROOT)
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
;!BANK0               50      D      3F       4       78.8%
;!BITBANK0            50      0       0       3        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      A       C       1       85.7%
;!BITCOMMON            E      0       1       0        7.1%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      4B       9        0.0%
;!ABS                  0      0      4B       8        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 1018 in file "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Init_System
;;		_Sleep_Mode
;;		_checkBatAD
;;		_chrgCtr
;;		_keyCtr
;;		_refreshLed
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	1018
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	1018
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	1021
	
l4622:	
;main.c: 1021: Init_System();
	fcall	_Init_System
	line	1023
	
l4624:	
;main.c: 1023: firstTime = 200;
	movlw	low(0C8h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_firstTime)
	line	1026
	
l4626:	
;main.c: 1025: {
;main.c: 1026: refreshLed();
	fcall	_refreshLed
	line	1027
	
l4628:	
;main.c: 1027: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u3651
	goto	u3650
u3651:
	goto	l4626
u3650:
	line	1029
	
l4630:	
;main.c: 1028: {
;main.c: 1029: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	1030
# 1030 "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
clrwdt ;# 
psect	maintext
	line	1031
	
l4632:	
;main.c: 1031: keyCtr();
	fcall	_keyCtr
	line	1032
	
l4634:	
;main.c: 1032: workCtr();
	fcall	_workCtr
	line	1033
	
l4636:	
;main.c: 1033: chrgCtr();
	fcall	_chrgCtr
	line	1034
	
l4638:	
;main.c: 1034: checkBatAD();
	fcall	_checkBatAD
	line	1035
	
l4640:	
;main.c: 1035: if(workStep == 0 && keyCount == 0 && chrgFlag == 0 && firstTime == 0 && showOffTime == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u3661
	goto	u3660
u3661:
	goto	l4654
u3660:
	
l4642:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u3671
	goto	u3670
u3671:
	goto	l4654
u3670:
	
l4644:	
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3681
	goto	u3680
u3681:
	goto	l4654
u3680:
	
l4646:	
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3691
	goto	u3690
u3691:
	goto	l4654
u3690:
	
l4648:	
	movf	((_showOffTime)),w
	btfss	status,2
	goto	u3701
	goto	u3700
u3701:
	goto	l4654
u3700:
	line	1038
	
l4650:	
;main.c: 1036: {
;main.c: 1038: if(++sleepTime > 200)
	incf	(_sleepTime),f
	skipnz
	incf	(_sleepTime+1),f
	movlw	0
	subwf	((_sleepTime+1)),w
	movlw	0C9h
	skipnz
	subwf	((_sleepTime)),w
	skipc
	goto	u3711
	goto	u3710
u3711:
	goto	l1198
u3710:
	line	1040
	
l4652:	
;main.c: 1039: {
;main.c: 1040: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l4626
	line	1045
	
l4654:	
;main.c: 1043: else
;main.c: 1044: {
;main.c: 1045: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	goto	l4626
	line	1049
	
l1198:	
	goto	l4626
	global	start
	ljmp	start
	opt stack 0
	line	1051
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 631 in file "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
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
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___lbmod
;;		_pwm1Init
;;		_pwm1Stop
;;		_setBatLed
;;		_setTempLed
;;		_updateTemp
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	631
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	631
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 3
; Regs used in _workCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	633
	
l4448:	
;main.c: 633: if(count1200s >= 1200)
	movlw	04h
	subwf	(_count1200s+1),w
	movlw	0B0h
	skipnz
	subwf	(_count1200s),w
	skipc
	goto	u3311
	goto	u3310
u3311:
	goto	l4456
u3310:
	line	635
	
l4450:	
;main.c: 634: {
;main.c: 635: count1200s = 0;
	clrf	(_count1200s)
	clrf	(_count1200s+1)
	line	636
;main.c: 636: workStep = 0;
	clrf	(_workStep)
	line	637
;main.c: 637: showWorkStepTime = 0;
	clrf	(_showWorkStepTime)
	line	638
	
l4452:	
;main.c: 638: pwm1Stop();
	fcall	_pwm1Stop
	line	639
	
l4454:	
;main.c: 639: PORTB &= 0xF0;
	movlw	low(0F0h)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(6),f	;volatile
	line	641
	
l4456:	
;main.c: 640: }
;main.c: 641: if(motorTime > 0)
	movf	((_motorTime)),w
iorwf	((_motorTime+1)),w
	btfsc	status,2
	goto	u3321
	goto	u3320
u3321:
	goto	l4474
u3320:
	line	643
	
l4458:	
;main.c: 642: {
;main.c: 643: if(motorTime >= 800 && motorTime < 1580)
	movlw	03h
	subwf	(_motorTime+1),w
	movlw	020h
	skipnz
	subwf	(_motorTime),w
	skipc
	goto	u3331
	goto	u3330
u3331:
	goto	l4470
u3330:
	
l4460:	
	movlw	06h
	subwf	(_motorTime+1),w
	movlw	02Ch
	skipnz
	subwf	(_motorTime),w
	skipnc
	goto	u3341
	goto	u3340
u3341:
	goto	l4470
u3340:
	line	645
	
l4462:	
;main.c: 644: {
;main.c: 645: if(zfStep == 1)
		decf	((_zfStep)),w
	btfss	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l4466
u3350:
	line	647
	
l4464:	
;main.c: 646: {
;main.c: 647: PORTA |= 0x08;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(3/8),(3)&7	;volatile
	line	648
;main.c: 648: }
	goto	l1100
	line	649
	
l4466:	
;main.c: 649: else if(zfStep == 2)
		movlw	2
	xorwf	((_zfStep)),w
	btfss	status,2
	goto	u3361
	goto	u3360
u3361:
	goto	l1100
u3360:
	line	651
	
l4468:	
;main.c: 650: {
;main.c: 651: PORTA |= 0x10;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(4/8),(4)&7	;volatile
	goto	l1100
	line	656
	
l4470:	
;main.c: 654: else
;main.c: 655: {
;main.c: 656: PORTA &= 0xE7;
	movlw	low(0E7h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	657
	
l1100:	
	line	658
;main.c: 657: }
;main.c: 658: if(--motorTime == 0)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_motorTime),f
	movlw	0
	skipc
	decf	(_motorTime+1),f
	subwf	(_motorTime+1),f
	movf	(((_motorTime))),w
iorwf	(((_motorTime+1))),w
	btfss	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l1101
u3370:
	line	660
	
l4472:	
;main.c: 659: {
;main.c: 660: beepTime = 180;
	movlw	low(0B4h)
	movwf	(_beepTime)
	line	661
	
l1101:	
	line	662
;main.c: 661: }
;main.c: 662: if(motorTime < 800)
	movlw	03h
	subwf	(_motorTime+1),w
	movlw	020h
	skipnz
	subwf	(_motorTime),w
	skipnc
	goto	u3381
	goto	u3380
u3381:
	goto	l1103
u3380:
	line	664
	
l4474:	
;main.c: 663: {
;main.c: 664: PORTA &= 0xE7;
	movlw	low(0E7h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	671
	
l1103:	
	line	672
;main.c: 671: }
;main.c: 672: if(beepTime > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_beepTime)),w
	btfsc	status,2
	goto	u3391
	goto	u3390
u3391:
	goto	l4484
u3390:
	line	674
	
l4478:	
;main.c: 673: {
;main.c: 674: beepTime--;
	decf	(_beepTime),f
	line	675
	
l4480:	
;main.c: 675: if(beepTime % 60 < 30)
	movlw	low(03Ch)
	movwf	(___lbmod@divisor)
	movf	(_beepTime),w
	fcall	___lbmod
	movwf	(??_workCtr+0)+0
	movlw	01Eh
	subwf	(??_workCtr+0)+0,w
	skipnc
	goto	u3401
	goto	u3400
u3401:
	goto	l4484
u3400:
	line	677
	
l4482:	
;main.c: 676: {
;main.c: 677: beepFlag = 1;
	clrf	(_beepFlag)
	incf	(_beepFlag),f
	line	678
;main.c: 678: }
	goto	l4488
	line	681
	
l4484:	
;main.c: 679: else
;main.c: 680: {
;main.c: 681: beepFlag = 0;
	clrf	(_beepFlag)
	line	688
	
l4488:	
;main.c: 687: }
;main.c: 688: updateTemp();
	fcall	_updateTemp
	line	689
	
l4490:	
;main.c: 689: if(showWorkStepTime > 0)
	movf	((_showWorkStepTime)),w
	btfsc	status,2
	goto	u3411
	goto	u3410
u3411:
	goto	l4494
u3410:
	line	691
	
l4492:	
;main.c: 690: {
;main.c: 691: showWorkStepTime--;
	decf	(_showWorkStepTime),f
	line	693
	
l4494:	
;main.c: 692: }
;main.c: 693: if(showOffTime > 0)
	movf	((_showOffTime)),w
	btfsc	status,2
	goto	u3421
	goto	u3420
u3421:
	goto	l4498
u3420:
	line	695
	
l4496:	
;main.c: 694: {
;main.c: 695: showOffTime--;
	decf	(_showOffTime),f
	line	697
	
l4498:	
;main.c: 696: }
;main.c: 697: if(firstTime > 0)
	movf	((_firstTime)),w
	btfsc	status,2
	goto	u3431
	goto	u3430
u3431:
	goto	l4518
u3430:
	line	699
	
l4500:	
;main.c: 698: {
;main.c: 699: firstTime--;
	decf	(_firstTime),f
	line	700
	
l4502:	
;main.c: 700: if(showBatStep < batStep)
	movf	(_batStep),w
	subwf	(_showBatStep),w
	skipnc
	goto	u3441
	goto	u3440
u3441:
	goto	l4506
u3440:
	line	702
	
l4504:	
;main.c: 701: {
;main.c: 702: if(++firstShowBatTime > 5)
	movlw	low(06h)
	incf	(_firstShowBatTime),f
	subwf	((_firstShowBatTime)),w
	skipc
	goto	u3451
	goto	u3450
u3451:
	goto	l4510
u3450:
	line	704
	
l4506:	
;main.c: 703: {
;main.c: 704: showBatStep = batStep;
	movf	(_batStep),w
	movwf	(_showBatStep)
	line	711
	
l4510:	
;main.c: 710: }
;main.c: 711: if(showBatStep < 1)
	movf	((_showBatStep)),w
	btfss	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l4514
u3460:
	line	713
	
l4512:	
;main.c: 712: {
;main.c: 713: showBatStep = 1;
	clrf	(_showBatStep)
	incf	(_showBatStep),f
	line	715
	
l4514:	
;main.c: 714: }
;main.c: 715: if(showTmepNum < tempNum)
	movf	(_tempNum),w
	subwf	(_showTmepNum),w
	skipnc
	goto	u3471
	goto	u3470
u3471:
	goto	l1143
u3470:
	line	716
	
l4516:	
;main.c: 716: showTmepNum = tempNum;
	movf	(_tempNum),w
	movwf	(_showTmepNum)
	goto	l1143
	
l1115:	
	line	717
;main.c: 717: }
	goto	l1143
	line	718
	
l4518:	
;main.c: 718: else if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u3481
	goto	u3480
u3481:
	goto	l4544
u3480:
	line	720
	
l4520:	
;main.c: 719: {
;main.c: 720: showMaxTemp = 160;
	movlw	low(0A0h)
	movwf	(_showMaxTemp)
	line	721
	
l4522:	
;main.c: 721: if(showWorkStepTime > 0)
	movf	((_showWorkStepTime)),w
	btfsc	status,2
	goto	u3491
	goto	u3490
u3491:
	goto	l4528
u3490:
	line	723
	
l4524:	
;main.c: 722: {
;main.c: 723: setTempLed(160);
	movlw	low(0A0h)
	fcall	_setTempLed
	line	724
	
l4526:	
;main.c: 724: maxTempNum = showTmepNum;
	movf	(_showTmepNum),w
	movwf	(_maxTempNum)
	line	725
;main.c: 725: }
	goto	l4538
	line	728
	
l4528:	
;main.c: 726: else
;main.c: 727: {
;main.c: 728: if(maxTempNum < 160)
	movlw	low(0A0h)
	subwf	(_maxTempNum),w
	skipnc
	goto	u3501
	goto	u3500
u3501:
	goto	l4532
u3500:
	line	730
	
l4530:	
;main.c: 729: {
;main.c: 730: setTempLed(maxTempNum);
	movf	(_maxTempNum),w
	fcall	_setTempLed
	line	731
;main.c: 731: }
	goto	l4534
	line	734
	
l4532:	
;main.c: 732: else
;main.c: 733: {
;main.c: 734: setTempLed(160);
	movlw	low(0A0h)
	fcall	_setTempLed
	line	736
	
l4534:	
;main.c: 735: }
;main.c: 736: if(maxTempNum < showTmepNum)
	movf	(_showTmepNum),w
	subwf	(_maxTempNum),w
	skipnc
	goto	u3511
	goto	u3510
u3511:
	goto	l4538
u3510:
	line	738
	
l4536:	
;main.c: 737: {
;main.c: 738: maxTempNum++;
	incf	(_maxTempNum),f
	line	741
	
l4538:	
;main.c: 739: }
;main.c: 740: }
;main.c: 741: pwm1Init();
	fcall	_pwm1Init
	line	750
	
l4540:	
;main.c: 750: showNumBat = 0x30;
	movlw	low(030h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_showNumBat)
	line	751
	
l4542:	
;main.c: 751: setBatLed(showBatStep);
	movf	(_showBatStep),w
	fcall	_setBatLed
	line	752
;main.c: 752: }
	goto	l1143
	line	753
	
l4544:	
;main.c: 753: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l4570
u3520:
	line	755
	
l4546:	
;main.c: 754: {
;main.c: 755: showMaxTemp = 180;
	movlw	low(0B4h)
	movwf	(_showMaxTemp)
	line	756
	
l4548:	
;main.c: 756: if(showWorkStepTime > 0)
	movf	((_showWorkStepTime)),w
	btfsc	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l4554
u3530:
	line	758
	
l4550:	
;main.c: 757: {
;main.c: 758: setTempLed(180);
	movlw	low(0B4h)
	fcall	_setTempLed
	line	759
	
l4552:	
;main.c: 759: maxTempNum = showTmepNum;
	movf	(_showTmepNum),w
	movwf	(_maxTempNum)
	line	760
;main.c: 760: }
	goto	l4564
	line	763
	
l4554:	
;main.c: 761: else
;main.c: 762: {
;main.c: 763: if(maxTempNum < 180)
	movlw	low(0B4h)
	subwf	(_maxTempNum),w
	skipnc
	goto	u3541
	goto	u3540
u3541:
	goto	l4558
u3540:
	line	765
	
l4556:	
;main.c: 764: {
;main.c: 765: setTempLed(maxTempNum);
	movf	(_maxTempNum),w
	fcall	_setTempLed
	line	766
;main.c: 766: }
	goto	l4560
	line	769
	
l4558:	
;main.c: 767: else
;main.c: 768: {
;main.c: 769: setTempLed(180);
	movlw	low(0B4h)
	fcall	_setTempLed
	line	771
	
l4560:	
;main.c: 770: }
;main.c: 771: if(maxTempNum < showTmepNum)
	movf	(_showTmepNum),w
	subwf	(_maxTempNum),w
	skipnc
	goto	u3551
	goto	u3550
u3551:
	goto	l4564
u3550:
	line	773
	
l4562:	
;main.c: 772: {
;main.c: 773: maxTempNum++;
	incf	(_maxTempNum),f
	line	776
	
l4564:	
;main.c: 774: }
;main.c: 775: }
;main.c: 776: pwm1Init();
	fcall	_pwm1Init
	line	785
	
l4566:	
;main.c: 785: showNumBat = 0x30;
	movlw	low(030h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_showNumBat)
	line	786
	
l4568:	
;main.c: 786: setBatLed(showBatStep);
	movf	(_showBatStep),w
	fcall	_setBatLed
	line	787
;main.c: 787: }
	goto	l1143
	line	788
	
l4570:	
;main.c: 788: else if(workStep == 3)
		movlw	3
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u3561
	goto	u3560
u3561:
	goto	l4596
u3560:
	line	790
	
l4572:	
;main.c: 789: {
;main.c: 790: showMaxTemp = 200;
	movlw	low(0C8h)
	movwf	(_showMaxTemp)
	line	791
	
l4574:	
;main.c: 791: if(showWorkStepTime > 0)
	movf	((_showWorkStepTime)),w
	btfsc	status,2
	goto	u3571
	goto	u3570
u3571:
	goto	l4580
u3570:
	line	793
	
l4576:	
;main.c: 792: {
;main.c: 793: setTempLed(200);
	movlw	low(0C8h)
	fcall	_setTempLed
	line	794
	
l4578:	
;main.c: 794: maxTempNum = showTmepNum;
	movf	(_showTmepNum),w
	movwf	(_maxTempNum)
	line	795
;main.c: 795: }
	goto	l4590
	line	798
	
l4580:	
;main.c: 796: else
;main.c: 797: {
;main.c: 798: if(maxTempNum < 200)
	movlw	low(0C8h)
	subwf	(_maxTempNum),w
	skipnc
	goto	u3581
	goto	u3580
u3581:
	goto	l4584
u3580:
	line	800
	
l4582:	
;main.c: 799: {
;main.c: 800: setTempLed(maxTempNum);
	movf	(_maxTempNum),w
	fcall	_setTempLed
	line	801
;main.c: 801: }
	goto	l4586
	line	804
	
l4584:	
;main.c: 802: else
;main.c: 803: {
;main.c: 804: setTempLed(200);
	movlw	low(0C8h)
	fcall	_setTempLed
	line	806
	
l4586:	
;main.c: 805: }
;main.c: 806: if(maxTempNum < showTmepNum)
	movf	(_showTmepNum),w
	subwf	(_maxTempNum),w
	skipnc
	goto	u3591
	goto	u3590
u3591:
	goto	l4590
u3590:
	line	808
	
l4588:	
;main.c: 807: {
;main.c: 808: maxTempNum++;
	incf	(_maxTempNum),f
	line	811
	
l4590:	
;main.c: 809: }
;main.c: 810: }
;main.c: 811: pwm1Init();
	fcall	_pwm1Init
	line	820
	
l4592:	
;main.c: 820: showNumBat = 0x30;
	movlw	low(030h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_showNumBat)
	line	821
	
l4594:	
;main.c: 821: setBatLed(showBatStep);
	movf	(_showBatStep),w
	fcall	_setBatLed
	line	822
;main.c: 822: }
	goto	l1143
	line	823
	
l4596:	
;main.c: 823: else if(showOffTime > 0)
	movf	((_showOffTime)),w
	btfsc	status,2
	goto	u3601
	goto	u3600
u3601:
	goto	l4608
u3600:
	line	825
	
l4598:	
;main.c: 824: {
;main.c: 825: showNumAShi = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAShi)
	line	826
;main.c: 826: showNumAge = numArray[10];
	movlw	low((((_numArray+0Ah)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAge)
	line	827
;main.c: 827: showNumBShi = numArray[10];
	movlw	low((((_numArray+0Ah)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumBShi)
	line	828
	
l4600:	
;main.c: 828: if(lowBatFlag == 1 && count1s < 50)
		decf	((_lowBatFlag)),w
	btfss	status,2
	goto	u3611
	goto	u3610
u3611:
	goto	l4606
u3610:
	
l4602:	
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u3621
	goto	u3620
u3621:
	goto	l4606
u3620:
	line	830
	
l4604:	
;main.c: 829: {
;main.c: 830: setBatLed(1);
	movlw	low(01h)
	fcall	_setBatLed
	line	831
;main.c: 831: }
	goto	l1143
	line	834
	
l4606:	
;main.c: 832: else
;main.c: 833: {
;main.c: 834: setBatLed(showBatStep);
	movf	(_showBatStep),w
	fcall	_setBatLed
	goto	l1143
	line	837
	
l4608:	
;main.c: 837: else if(firstTime == 0 && chrgFlag == 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u3631
	goto	u3630
u3631:
	goto	l1115
u3630:
	
l4610:	
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3641
	goto	u3640
u3641:
	goto	l1115
u3640:
	line	839
	
l4612:	
;main.c: 838: {
;main.c: 839: pwm1Stop();
	fcall	_pwm1Stop
	line	840
	
l4614:	
;main.c: 840: showNumAShi = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_showNumAShi)
	line	841
	
l4616:	
;main.c: 841: showNumAge = 0;
	clrf	(_showNumAge)
	line	842
	
l4618:	
;main.c: 842: showNumBShi = 0;
	clrf	(_showNumBShi)
	line	843
	
l4620:	
;main.c: 843: showNumBat = 0;
	clrf	(_showNumBat)
	line	845
	
l1143:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_updateTemp

;; *************** function _updateTemp *****************
;; Defined at:
;;		line 596 in file "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_checkTemAD
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	596
global __ptext2
__ptext2:	;psect for function _updateTemp
psect	text2
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	596
	global	__size_of_updateTemp
	__size_of_updateTemp	equ	__end_of_updateTemp-_updateTemp
	
_updateTemp:	
;incstack = 0
	opt	stack 3
; Regs used in _updateTemp: [wreg+status,2+status,0+pclath+cstack]
	line	598
	
l3708:	
;main.c: 598: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u1921
	goto	u1920
u1921:
	goto	l3726
u1920:
	line	600
	
l3710:	
;main.c: 599: {
;main.c: 600: if(++tempCheckTime > 250)
	movlw	low(0FBh)
	incf	(_tempCheckTime),f
	subwf	((_tempCheckTime)),w
	skipc
	goto	u1931
	goto	u1930
u1931:
	goto	l3714
u1930:
	line	602
	
l3712:	
;main.c: 601: {
;main.c: 602: tempCheckTime = 0;
	clrf	(_tempCheckTime)
	line	604
	
l3714:	
;main.c: 603: }
;main.c: 604: if(tempCheckTime < 20)
	movlw	low(014h)
	subwf	(_tempCheckTime),w
	skipnc
	goto	u1941
	goto	u1940
u1941:
	goto	l3718
u1940:
	line	606
	
l3716:	
;main.c: 605: {
;main.c: 606: checkTemAD();
	fcall	_checkTemAD
	line	608
	
l3718:	
;main.c: 607: }
;main.c: 608: if(showTmepNum < showMaxTemp)
	movf	(_showMaxTemp),w
	subwf	(_showTmepNum),w
	skipnc
	goto	u1951
	goto	u1950
u1951:
	goto	l1091
u1950:
	line	610
	
l3720:	
;main.c: 609: {
;main.c: 610: if(++chanceTempNumTime >= 75)
	movlw	low(04Bh)
	incf	(_chanceTempNumTime),f
	subwf	((_chanceTempNumTime)),w
	skipc
	goto	u1961
	goto	u1960
u1961:
	goto	l1091
u1960:
	line	612
	
l3722:	
;main.c: 611: {
;main.c: 612: chanceTempNumTime = 0;
	clrf	(_chanceTempNumTime)
	line	613
	
l3724:	
;main.c: 613: showTmepNum++;
	incf	(_showTmepNum),f
	goto	l1091
	line	619
	
l3726:	
;main.c: 617: else
;main.c: 618: {
;main.c: 619: if(firstTime == 0)
	movf	((_firstTime)),w
	btfss	status,2
	goto	u1971
	goto	u1970
u1971:
	goto	l3730
u1970:
	line	621
	
l3728:	
;main.c: 620: {
;main.c: 621: checkTemAD();
	fcall	_checkTemAD
	line	623
	
l3730:	
;main.c: 622: }
;main.c: 623: if(++chanceTempNumTime > 40)
	movlw	low(029h)
	incf	(_chanceTempNumTime),f
	subwf	((_chanceTempNumTime)),w
	skipc
	goto	u1981
	goto	u1980
u1981:
	goto	l1091
u1980:
	line	625
	
l3732:	
;main.c: 624: {
;main.c: 625: chanceTempNumTime = 0;
	clrf	(_chanceTempNumTime)
	line	626
	
l3734:	
;main.c: 626: showTmepNum = tempNum;
	movf	(_tempNum),w
	movwf	(_showTmepNum)
	line	629
	
l1091:	
	return
	opt stack 0
GLOBAL	__end_of_updateTemp
	__end_of_updateTemp:
	signat	_updateTemp,89
	global	_checkTemAD

;; *************** function _checkTemAD *****************
;; Defined at:
;;		line 332 in file "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ADC_Sample
;;		___lwdiv
;; This function is called by:
;;		_updateTemp
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	332
global __ptext3
__ptext3:	;psect for function _checkTemAD
psect	text3
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	332
	global	__size_of_checkTemAD
	__size_of_checkTemAD	equ	__end_of_checkTemAD-_checkTemAD
	
_checkTemAD:	
;incstack = 0
	opt	stack 3
; Regs used in _checkTemAD: [wreg+status,2+status,0+pclath+cstack]
	line	334
	
l3560:	
;main.c: 334: test_adc = ADC_Sample(5, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(05h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	335
	
l3562:	
;main.c: 335: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u1671
	goto	u1670
u1671:
	goto	l1015
u1670:
	line	337
	
l3564:	
;main.c: 336: {
;main.c: 337: temValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_temValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_temValue)
	line	338
;main.c: 338: if(temValue > 4090)
	movlw	0Fh
	subwf	(_temValue+1),w
	movlw	0FBh
	skipnz
	subwf	(_temValue),w
	skipc
	goto	u1681
	goto	u1680
u1681:
	goto	l3568
u1680:
	line	340
	
l3566:	
;main.c: 339: {
;main.c: 340: tempNum = 0;
	clrf	(_tempNum)
	line	341
;main.c: 341: }
	goto	l1015
	line	342
	
l3568:	
;main.c: 342: else if(temValue > 2015)
	movlw	07h
	subwf	(_temValue+1),w
	movlw	0E0h
	skipnz
	subwf	(_temValue),w
	skipc
	goto	u1691
	goto	u1690
u1691:
	goto	l3572
u1690:
	line	345
	
l3570:	
;main.c: 343: {
;main.c: 345: tempNum = 20 - ((temValue - 2015)/104);
	movlw	068h
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(_temValue),w
	addlw	low(0F821h)
	movwf	(___lwdiv@dividend)
	movf	(_temValue+1),w
	skipnc
	addlw	1
	addlw	high(0F821h)
	movwf	1+(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	sublw	014h
	movwf	(_tempNum)
	line	346
;main.c: 346: }
	goto	l1015
	line	347
	
l3572:	
;main.c: 347: else if(temValue > 964)
	movlw	03h
	subwf	(_temValue+1),w
	movlw	0C5h
	skipnz
	subwf	(_temValue),w
	skipc
	goto	u1701
	goto	u1700
u1701:
	goto	l3576
u1700:
	line	350
	
l3574:	
;main.c: 348: {
;main.c: 350: tempNum = 40 - ((temValue - 964)/52);
	movlw	034h
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(_temValue),w
	addlw	low(0FC3Ch)
	movwf	(___lwdiv@dividend)
	movf	(_temValue+1),w
	skipnc
	addlw	1
	addlw	high(0FC3Ch)
	movwf	1+(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	sublw	028h
	movwf	(_tempNum)
	line	351
;main.c: 351: }
	goto	l1015
	line	352
	
l3576:	
;main.c: 352: else if(temValue > 474)
	movlw	01h
	subwf	(_temValue+1),w
	movlw	0DBh
	skipnz
	subwf	(_temValue),w
	skipc
	goto	u1711
	goto	u1710
u1711:
	goto	l3580
u1710:
	line	355
	
l3578:	
;main.c: 353: {
;main.c: 355: tempNum = 60 - ((temValue - 474)/25);
	movlw	019h
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(_temValue),w
	addlw	low(0FE26h)
	movwf	(___lwdiv@dividend)
	movf	(_temValue+1),w
	skipnc
	addlw	1
	addlw	high(0FE26h)
	movwf	1+(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	sublw	03Ch
	movwf	(_tempNum)
	line	356
;main.c: 356: }
	goto	l1015
	line	357
	
l3580:	
;main.c: 357: else if(temValue > 244)
	movlw	0
	subwf	(_temValue+1),w
	movlw	0F5h
	skipnz
	subwf	(_temValue),w
	skipc
	goto	u1721
	goto	u1720
u1721:
	goto	l3584
u1720:
	line	360
	
l3582:	
;main.c: 358: {
;main.c: 360: tempNum = 80 - ((temValue - 244)/12);
	movlw	0Ch
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(_temValue),w
	addlw	low(0FF0Ch)
	movwf	(___lwdiv@dividend)
	movf	(_temValue+1),w
	skipnc
	addlw	1
	addlw	high(0FF0Ch)
	movwf	1+(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	sublw	050h
	movwf	(_tempNum)
	line	361
;main.c: 361: }
	goto	l1015
	line	362
	
l3584:	
;main.c: 362: else if(temValue > 132)
	movlw	0
	subwf	(_temValue+1),w
	movlw	085h
	skipnz
	subwf	(_temValue),w
	skipc
	goto	u1731
	goto	u1730
u1731:
	goto	l3588
u1730:
	line	365
	
l3586:	
;main.c: 363: {
;main.c: 365: tempNum = 100 - ((temValue - 132)/6);
	movlw	06h
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(_temValue),w
	addlw	low(0FF7Ch)
	movwf	(___lwdiv@dividend)
	movf	(_temValue+1),w
	skipnc
	addlw	1
	addlw	high(0FF7Ch)
	movwf	1+(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	sublw	064h
	movwf	(_tempNum)
	line	366
;main.c: 366: }
	goto	l1015
	line	367
	
l3588:	
;main.c: 367: else if(temValue > 102)
	movlw	0
	subwf	(_temValue+1),w
	movlw	067h
	skipnz
	subwf	(_temValue),w
	skipc
	goto	u1741
	goto	u1740
u1741:
	goto	l3592
u1740:
	line	370
	
l3590:	
;main.c: 368: {
;main.c: 370: tempNum = 140 - (temValue - 102);
	movf	(_temValue),w
	sublw	0F2h
	movwf	(_tempNum)
	line	371
;main.c: 371: }
	goto	l1015
	line	372
	
l3592:	
;main.c: 372: else if(temValue >= 82)
	movlw	0
	subwf	(_temValue+1),w
	movlw	052h
	skipnz
	subwf	(_temValue),w
	skipc
	goto	u1751
	goto	u1750
u1751:
	goto	l3596
u1750:
	goto	l3590
	line	377
	
l3596:	
;main.c: 377: else if(temValue >= 62)
	movlw	0
	subwf	(_temValue+1),w
	movlw	03Eh
	skipnz
	subwf	(_temValue),w
	skipc
	goto	u1761
	goto	u1760
u1761:
	goto	l3600
u1760:
	goto	l3590
	line	381
	
l3600:	
;main.c: 381: else if(temValue >= 52)
	movlw	0
	subwf	(_temValue+1),w
	movlw	034h
	skipnz
	subwf	(_temValue),w
	skipc
	goto	u1771
	goto	u1770
u1771:
	goto	l3604
u1770:
	goto	l3590
	line	385
	
l3604:	
;main.c: 385: else if(temValue >= 42)
	movlw	0
	subwf	(_temValue+1),w
	movlw	02Ah
	skipnz
	subwf	(_temValue),w
	skipc
	goto	u1781
	goto	u1780
u1781:
	goto	l3608
u1780:
	goto	l3590
	line	391
	
l3608:	
;main.c: 389: else
;main.c: 390: {
;main.c: 391: tempNum = 201;
	movlw	low(0C9h)
	movwf	(_tempNum)
	line	395
	
l1015:	
	return
	opt stack 0
GLOBAL	__end_of_checkTemAD
	__end_of_checkTemAD:
	signat	_checkTemAD,89
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMMON] unsigned int 
;;  counter         1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         4       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkTemAD
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwdiv.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___lwdiv
psect	text4
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l3534:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l3536:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u1631
	goto	u1630
u1631:
	goto	l3556
u1630:
	line	16
	
l3538:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l3542
	line	18
	
l3540:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l3542:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u1641
	goto	u1640
u1641:
	goto	l3540
u1640:
	line	22
	
l3544:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l3546:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u1655
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u1655:
	skipc
	goto	u1651
	goto	u1650
u1651:
	goto	l3552
u1650:
	line	24
	
l3548:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l3550:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l3552:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l3554:	
	decfsz	(___lwdiv@counter),f
	goto	u1661
	goto	u1660
u1661:
	goto	l3544
u1660:
	line	30
	
l3556:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l2487:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_setTempLed

;; *************** function _setTempLed *****************
;; Defined at:
;;		line 501 in file "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;  tempLed         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  tempLed         1    8[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lbdiv
;;		___lbmod
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	501
global __ptext5
__ptext5:	;psect for function _setTempLed
psect	text5
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	501
	global	__size_of_setTempLed
	__size_of_setTempLed	equ	__end_of_setTempLed-_setTempLed
	
_setTempLed:	
;incstack = 0
	opt	stack 4
; Regs used in _setTempLed: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setTempLed@tempLed stored from wreg
	movwf	(setTempLed@tempLed)
	line	504
	
l4434:	
;main.c: 504: if(tempLed >= 100)
	movlw	low(064h)
	subwf	(setTempLed@tempLed),w
	skipc
	goto	u3291
	goto	u3290
u3291:
	goto	l4438
u3290:
	line	506
	
l4436:	
;main.c: 505: {
;main.c: 506: showNumAShi = numArray[tempLed/100];
	movlw	low(064h)
	movwf	(___lbdiv@divisor)
	movf	(setTempLed@tempLed),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAShi)
	line	507
;main.c: 507: showNumAge = numArray[(tempLed%100)/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movlw	low(064h)
	movwf	(___lbmod@divisor)
	movf	(setTempLed@tempLed),w
	fcall	___lbmod
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAge)
	line	508
;main.c: 508: }
	goto	l4446
	line	511
	
l4438:	
;main.c: 509: else
;main.c: 510: {
;main.c: 511: showNumAShi = 0;
	clrf	(_showNumAShi)
	line	512
	
l4440:	
;main.c: 512: if(tempLed >= 10)
	movlw	low(0Ah)
	subwf	(setTempLed@tempLed),w
	skipc
	goto	u3301
	goto	u3300
u3301:
	goto	l4444
u3300:
	line	514
	
l4442:	
;main.c: 513: {
;main.c: 514: showNumAge = numArray[tempLed/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(setTempLed@tempLed),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAge)
	line	515
;main.c: 515: }
	goto	l4446
	line	518
	
l4444:	
;main.c: 516: else
;main.c: 517: {
;main.c: 518: showNumAge = 0;
	clrf	(_showNumAge)
	line	521
	
l4446:	
;main.c: 519: }
;main.c: 520: }
;main.c: 521: showNumBShi = numArray[tempLed%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(setTempLed@tempLed),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumBShi)
	line	522
	
l1061:	
	return
	opt stack 0
GLOBAL	__end_of_setTempLed
	__end_of_setTempLed:
	signat	_setTempLed,4217
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
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setTempLed
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
	line	4
global __ptext6
__ptext6:	;psect for function ___lbmod
psect	text6
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
	
l4416:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l4418:	
	clrf	(___lbmod@rem)
	line	12
	
l4420:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u3265:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u3265
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l4422:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l4424:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l4428
u3270:
	line	15
	
l4426:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l4428:	
	decfsz	(___lbmod@counter),f
	goto	u3281
	goto	u3280
u3281:
	goto	l4420
u3280:
	line	17
	
l4430:	
	movf	(___lbmod@rem),w
	line	18
	
l2419:	
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
;;  divisor         1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    0[BANK0 ] unsigned char 
;;  quotient        1    2[BANK0 ] unsigned char 
;;  counter         1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       3       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setTempLed
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbdiv.c"
	line	4
global __ptext7
__ptext7:	;psect for function ___lbdiv
psect	text7
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
	
l4392:	
	clrf	(___lbdiv@quotient)
	line	10
	
l4394:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l4412
u3220:
	line	11
	
l4396:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l4400
	
l2408:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l4398:	
	incf	(___lbdiv@counter),f
	line	12
	
l4400:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u3231
	goto	u3230
u3231:
	goto	l2408
u3230:
	line	16
	
l2410:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l4402:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u3241
	goto	u3240
u3241:
	goto	l4408
u3240:
	line	19
	
l4404:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l4406:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l4408:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l4410:	
	decfsz	(___lbdiv@counter),f
	goto	u3251
	goto	u3250
u3251:
	goto	l2410
u3250:
	line	25
	
l4412:	
	movf	(___lbdiv@quotient),w
	line	26
	
l2413:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_pwm1Init

;; *************** function _pwm1Init *****************
;; Defined at:
;;		line 1004 in file "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	1004
global __ptext8
__ptext8:	;psect for function _pwm1Init
psect	text8
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	1004
	global	__size_of_pwm1Init
	__size_of_pwm1Init	equ	__end_of_pwm1Init-_pwm1Init
	
_pwm1Init:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm1Init: []
	line	1006
	
l3736:	
;main.c: 1006: RA2 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1074/8)^080h,(1074)&7	;volatile
	line	1007
	
l1189:	
	return
	opt stack 0
GLOBAL	__end_of_pwm1Init
	__end_of_pwm1Init:
	signat	_pwm1Init,89
	global	_refreshLed

;; *************** function _refreshLed *****************
;; Defined at:
;;		line 77 in file "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayUs
;;		_ledOpen
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\number.c"
	line	77
global __ptext9
__ptext9:	;psect for function _refreshLed
psect	text9
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\number.c"
	line	77
	global	__size_of_refreshLed
	__size_of_refreshLed	equ	__end_of_refreshLed-_refreshLed
	
_refreshLed:	
;incstack = 0
	opt	stack 5
; Regs used in _refreshLed: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	81
	
l4240:	
;number.c: 81: TRISB |= 0x7E;
	movlw	low(07Eh)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(5),f	;volatile
	line	82
;number.c: 82: PORTB &= 0x81;
	movlw	low(081h)
	andwf	(6),f	;volatile
	line	84
;number.c: 84: switch(ledCnt)
	goto	l4298
	line	86
;number.c: 85: {
;number.c: 86: case 0:
	
l2065:	
	line	87
;number.c: 87: if(showNumAShi & 0x01)
	btfss	(_showNumAShi),(0)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l4300
u2820:
	line	89
	
l4242:	
;number.c: 88: {
;number.c: 89: ledOpen(1,2);
	movlw	low(02h)
	movwf	(ledOpen@low)
	movlw	low(01h)
	fcall	_ledOpen
	goto	l4300
	line	92
;number.c: 92: case 1:
	
l2068:	
	line	93
;number.c: 93: if(showNumAShi & 0x02)
	btfss	(_showNumAShi),(1)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l4300
u2830:
	line	95
	
l4244:	
;number.c: 94: {
;number.c: 95: ledOpen(1,3);
	movlw	low(03h)
	movwf	(ledOpen@low)
	movlw	low(01h)
	fcall	_ledOpen
	goto	l4300
	line	98
;number.c: 98: case 2:
	
l2070:	
	line	99
;number.c: 99: if(showNumAShi & 0x04)
	btfss	(_showNumAShi),(2)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l4300
u2840:
	line	101
	
l4246:	
;number.c: 100: {
;number.c: 101: ledOpen(1,4);
	movlw	low(04h)
	movwf	(ledOpen@low)
	movlw	low(01h)
	fcall	_ledOpen
	goto	l4300
	line	104
;number.c: 104: case 3:
	
l2072:	
	line	105
;number.c: 105: if(showNumAShi & 0x08)
	btfss	(_showNumAShi),(3)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l4300
u2850:
	line	107
	
l4248:	
;number.c: 106: {
;number.c: 107: ledOpen(1,5);
	movlw	low(05h)
	movwf	(ledOpen@low)
	movlw	low(01h)
	fcall	_ledOpen
	goto	l4300
	line	110
;number.c: 110: case 4:
	
l2074:	
	line	111
;number.c: 111: if(showNumAShi & 0x10)
	btfss	(_showNumAShi),(4)&7
	goto	u2861
	goto	u2860
u2861:
	goto	l4300
u2860:
	line	113
	
l4250:	
;number.c: 112: {
;number.c: 113: ledOpen(1,6);
	movlw	low(06h)
	movwf	(ledOpen@low)
	movlw	low(01h)
	fcall	_ledOpen
	goto	l4300
	line	116
;number.c: 116: case 5:
	
l2076:	
	line	117
;number.c: 117: if(showNumAShi & 0x20)
	btfss	(_showNumAShi),(5)&7
	goto	u2871
	goto	u2870
u2871:
	goto	l4300
u2870:
	line	119
	
l4252:	
;number.c: 118: {
;number.c: 119: ledOpen(2,1);
	clrf	(ledOpen@low)
	incf	(ledOpen@low),f
	movlw	low(02h)
	fcall	_ledOpen
	goto	l4300
	line	122
;number.c: 122: case 6:
	
l2078:	
	line	123
;number.c: 123: if(showNumAShi & 0x40)
	btfss	(_showNumAShi),(6)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l4300
u2880:
	line	125
	
l4254:	
;number.c: 124: {
;number.c: 125: ledOpen(2,3);
	movlw	low(03h)
	movwf	(ledOpen@low)
	movlw	low(02h)
	fcall	_ledOpen
	goto	l4300
	line	128
;number.c: 128: case 7:
	
l2080:	
	line	129
;number.c: 129: if(showNumAge & 0x01)
	btfss	(_showNumAge),(0)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l4300
u2890:
	line	131
	
l4256:	
;number.c: 130: {
;number.c: 131: ledOpen(2,4);
	movlw	low(04h)
	movwf	(ledOpen@low)
	movlw	low(02h)
	fcall	_ledOpen
	goto	l4300
	line	134
;number.c: 134: case 8:
	
l2082:	
	line	135
;number.c: 135: if(showNumAge & 0x02)
	btfss	(_showNumAge),(1)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l4300
u2900:
	line	137
	
l4258:	
;number.c: 136: {
;number.c: 137: ledOpen(2,5);
	movlw	low(05h)
	movwf	(ledOpen@low)
	movlw	low(02h)
	fcall	_ledOpen
	goto	l4300
	line	140
;number.c: 140: case 9:
	
l2084:	
	line	141
;number.c: 141: if(showNumAge & 0x04)
	btfss	(_showNumAge),(2)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l4300
u2910:
	line	143
	
l4260:	
;number.c: 142: {
;number.c: 143: ledOpen(2,6);
	movlw	low(06h)
	movwf	(ledOpen@low)
	movlw	low(02h)
	fcall	_ledOpen
	goto	l4300
	line	146
;number.c: 146: case 10:
	
l2086:	
	line	147
;number.c: 147: if(showNumAge & 0x08)
	btfss	(_showNumAge),(3)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l4300
u2920:
	line	149
	
l4262:	
;number.c: 148: {
;number.c: 149: ledOpen(3,1);
	clrf	(ledOpen@low)
	incf	(ledOpen@low),f
	movlw	low(03h)
	fcall	_ledOpen
	goto	l4300
	line	152
;number.c: 152: case 11:
	
l2088:	
	line	153
;number.c: 153: if(showNumAge & 0x10)
	btfss	(_showNumAge),(4)&7
	goto	u2931
	goto	u2930
u2931:
	goto	l4300
u2930:
	line	155
	
l4264:	
;number.c: 154: {
;number.c: 155: ledOpen(3,2);
	movlw	low(02h)
	movwf	(ledOpen@low)
	movlw	low(03h)
	fcall	_ledOpen
	goto	l4300
	line	158
;number.c: 158: case 12:
	
l2090:	
	line	159
;number.c: 159: if(showNumAge & 0x20)
	btfss	(_showNumAge),(5)&7
	goto	u2941
	goto	u2940
u2941:
	goto	l4300
u2940:
	line	161
	
l4266:	
;number.c: 160: {
;number.c: 161: ledOpen(3,4);
	movlw	low(04h)
	movwf	(ledOpen@low)
	movlw	low(03h)
	fcall	_ledOpen
	goto	l4300
	line	164
;number.c: 164: case 13:
	
l2092:	
	line	165
;number.c: 165: if(showNumAge & 0x40)
	btfss	(_showNumAge),(6)&7
	goto	u2951
	goto	u2950
u2951:
	goto	l4300
u2950:
	line	167
	
l4268:	
;number.c: 166: {
;number.c: 167: ledOpen(3,5);
	movlw	low(05h)
	movwf	(ledOpen@low)
	movlw	low(03h)
	fcall	_ledOpen
	goto	l4300
	line	170
;number.c: 170: case 14:
	
l2094:	
	line	171
;number.c: 171: if(showNumBShi & 0x01)
	btfss	(_showNumBShi),(0)&7
	goto	u2961
	goto	u2960
u2961:
	goto	l4300
u2960:
	line	173
	
l4270:	
;number.c: 172: {
;number.c: 173: ledOpen(4,1);
	clrf	(ledOpen@low)
	incf	(ledOpen@low),f
	movlw	low(04h)
	fcall	_ledOpen
	goto	l4300
	line	176
;number.c: 176: case 15:
	
l2096:	
	line	177
;number.c: 177: if(showNumBShi & 0x02)
	btfss	(_showNumBShi),(1)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l4300
u2970:
	line	179
	
l4272:	
;number.c: 178: {
;number.c: 179: ledOpen(4,2);
	movlw	low(02h)
	movwf	(ledOpen@low)
	movlw	low(04h)
	fcall	_ledOpen
	goto	l4300
	line	182
;number.c: 182: case 16:
	
l2098:	
	line	183
;number.c: 183: if(showNumBShi & 0x04)
	btfss	(_showNumBShi),(2)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l4300
u2980:
	line	185
	
l4274:	
;number.c: 184: {
;number.c: 185: ledOpen(4,3);
	movlw	low(03h)
	movwf	(ledOpen@low)
	movlw	low(04h)
	fcall	_ledOpen
	goto	l4300
	line	188
;number.c: 188: case 17:
	
l2100:	
	line	189
;number.c: 189: if(showNumBShi & 0x08)
	btfss	(_showNumBShi),(3)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l4300
u2990:
	line	191
	
l4276:	
;number.c: 190: {
;number.c: 191: ledOpen(4,5);
	movlw	low(05h)
	movwf	(ledOpen@low)
	movlw	low(04h)
	fcall	_ledOpen
	goto	l4300
	line	194
;number.c: 194: case 18:
	
l2102:	
	line	195
;number.c: 195: if(showNumBShi & 0x10)
	btfss	(_showNumBShi),(4)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l4300
u3000:
	line	197
	
l4278:	
;number.c: 196: {
;number.c: 197: ledOpen(4,6);
	movlw	low(06h)
	movwf	(ledOpen@low)
	movlw	low(04h)
	fcall	_ledOpen
	goto	l4300
	line	200
;number.c: 200: case 19:
	
l2104:	
	line	201
;number.c: 201: if(showNumBShi & 0x20)
	btfss	(_showNumBShi),(5)&7
	goto	u3011
	goto	u3010
u3011:
	goto	l4300
u3010:
	line	203
	
l4280:	
;number.c: 202: {
;number.c: 203: ledOpen(5,1);
	clrf	(ledOpen@low)
	incf	(ledOpen@low),f
	movlw	low(05h)
	fcall	_ledOpen
	goto	l4300
	line	206
;number.c: 206: case 20:
	
l2106:	
	line	207
;number.c: 207: if(showNumBShi & 0x40)
	btfss	(_showNumBShi),(6)&7
	goto	u3021
	goto	u3020
u3021:
	goto	l4300
u3020:
	line	209
	
l4282:	
;number.c: 208: {
;number.c: 209: ledOpen(5,2);
	movlw	low(02h)
	movwf	(ledOpen@low)
	movlw	low(05h)
	fcall	_ledOpen
	goto	l4300
	line	212
;number.c: 212: case 21:
	
l2108:	
	line	213
;number.c: 213: if(showNumBat & 0x01)
	btfss	(_showNumBat),(0)&7
	goto	u3031
	goto	u3030
u3031:
	goto	l4300
u3030:
	line	215
	
l4284:	
;number.c: 214: {
;number.c: 215: ledOpen(5,4);
	movlw	low(04h)
	movwf	(ledOpen@low)
	movlw	low(05h)
	fcall	_ledOpen
	goto	l4300
	line	218
;number.c: 218: case 22:
	
l2110:	
	line	219
;number.c: 219: if(showNumBat & 0x02)
	btfss	(_showNumBat),(1)&7
	goto	u3041
	goto	u3040
u3041:
	goto	l4300
u3040:
	line	221
	
l4286:	
;number.c: 220: {
;number.c: 221: ledOpen(5,6);
	movlw	low(06h)
	movwf	(ledOpen@low)
	movlw	low(05h)
	fcall	_ledOpen
	goto	l4300
	line	224
;number.c: 224: case 23:
	
l2112:	
	line	225
;number.c: 225: if(showNumBat & 0x04)
	btfss	(_showNumBat),(2)&7
	goto	u3051
	goto	u3050
u3051:
	goto	l4300
u3050:
	line	227
	
l4288:	
;number.c: 226: {
;number.c: 227: ledOpen(6,1);
	clrf	(ledOpen@low)
	incf	(ledOpen@low),f
	movlw	low(06h)
	fcall	_ledOpen
	goto	l4300
	line	230
;number.c: 230: case 24:
	
l2114:	
	line	231
;number.c: 231: if(showNumBat & 0x08)
	btfss	(_showNumBat),(3)&7
	goto	u3061
	goto	u3060
u3061:
	goto	l4300
u3060:
	line	233
	
l4290:	
;number.c: 232: {
;number.c: 233: ledOpen(6,2);
	movlw	low(02h)
	movwf	(ledOpen@low)
	movlw	low(06h)
	fcall	_ledOpen
	goto	l4300
	line	236
;number.c: 236: case 25:
	
l2116:	
	line	237
;number.c: 237: if(showNumBat & 0x10)
	btfss	(_showNumBat),(4)&7
	goto	u3071
	goto	u3070
u3071:
	goto	l4300
u3070:
	line	239
	
l4292:	
;number.c: 238: {
;number.c: 239: ledOpen(6,3);
	movlw	low(03h)
	movwf	(ledOpen@low)
	movlw	low(06h)
	fcall	_ledOpen
	goto	l4300
	line	242
;number.c: 242: case 26:
	
l2118:	
	line	243
;number.c: 243: if(showNumBat & 0x20)
	btfss	(_showNumBat),(5)&7
	goto	u3081
	goto	u3080
u3081:
	goto	l4300
u3080:
	line	245
	
l4294:	
;number.c: 244: {
;number.c: 245: ledOpen(6,4);
	movlw	low(04h)
	movwf	(ledOpen@low)
	movlw	low(06h)
	fcall	_ledOpen
	goto	l4300
	line	84
	
l4298:	
	movf	(_ledCnt),w
	; Switch size 1, requested type "space"
; Number of cases is 27, Range of values is 0 to 26
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           61     7 (fixed)
; simple_byte           82    42 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	27
	subwf	fsr,w
skipnc
goto l4300
movlw high(S4676)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(S4676)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S4676:
	ljmp	l2065
	ljmp	l2068
	ljmp	l2070
	ljmp	l2072
	ljmp	l2074
	ljmp	l2076
	ljmp	l2078
	ljmp	l2080
	ljmp	l2082
	ljmp	l2084
	ljmp	l2086
	ljmp	l2088
	ljmp	l2090
	ljmp	l2092
	ljmp	l2094
	ljmp	l2096
	ljmp	l2098
	ljmp	l2100
	ljmp	l2102
	ljmp	l2104
	ljmp	l2106
	ljmp	l2108
	ljmp	l2110
	ljmp	l2112
	ljmp	l2114
	ljmp	l2116
	ljmp	l2118
psect	text9

	line	252
	
l4300:	
;number.c: 252: DelayUs(50);
	movlw	low(032h)
	fcall	_DelayUs
	line	253
	
l4302:	
;number.c: 253: TRISB |= 0x7E;
	movlw	low(07Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(5),f	;volatile
	line	254
	
l4304:	
;number.c: 254: PORTB &= 0x81;
	movlw	low(081h)
	andwf	(6),f	;volatile
	line	255
	
l4306:	
;number.c: 255: if(++ledCnt >= 27)
	movlw	low(01Bh)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u3091
	goto	u3090
u3091:
	goto	l2122
u3090:
	line	257
	
l4308:	
;number.c: 256: {
;number.c: 257: ledCnt = 0;
	clrf	(_ledCnt)
	line	259
	
l2122:	
	return
	opt stack 0
GLOBAL	__end_of_refreshLed
	__end_of_refreshLed:
	signat	_refreshLed,89
	global	_ledOpen

;; *************** function _ledOpen *****************
;; Defined at:
;;		line 12 in file "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;  hight           1    wreg     unsigned char 
;;  low             1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  hight           1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	12
global __ptext10
__ptext10:	;psect for function _ledOpen
psect	text10
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\number.c"
	line	12
	global	__size_of_ledOpen
	__size_of_ledOpen	equ	__end_of_ledOpen-_ledOpen
	
_ledOpen:	
;incstack = 0
	opt	stack 5
; Regs used in _ledOpen: [wreg-fsr0h+status,2+status,0]
;ledOpen@hight stored from wreg
	movwf	(ledOpen@hight)
	line	14
	
l3822:	
;number.c: 14: switch(hight)
	goto	l3826
	line	16
;number.c: 15: {
;number.c: 16: case 1:
	
l2044:	
	line	17
;number.c: 17: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	18
;number.c: 18: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	19
;number.c: 19: break;
	goto	l3830
	line	20
;number.c: 20: case 2:
	
l2046:	
	line	21
;number.c: 21: TRISB &= 0xFB;
	bcf	(5)+(2/8),(2)&7	;volatile
	line	22
;number.c: 22: RB2 = 1;
	bsf	(50/8),(50)&7	;volatile
	line	23
;number.c: 23: break;
	goto	l3830
	line	24
;number.c: 24: case 3:
	
l2047:	
	line	25
;number.c: 25: TRISB &= 0xF7;
	bcf	(5)+(3/8),(3)&7	;volatile
	line	26
;number.c: 26: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	27
;number.c: 27: break;
	goto	l3830
	line	28
;number.c: 28: case 4:
	
l2048:	
	line	29
;number.c: 29: TRISB &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	30
;number.c: 30: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	31
;number.c: 31: break;
	goto	l3830
	line	32
;number.c: 32: case 5:
	
l2049:	
	line	33
;number.c: 33: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	34
;number.c: 34: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	35
;number.c: 35: break;
	goto	l3830
	line	36
;number.c: 36: case 6:
	
l2050:	
	line	37
;number.c: 37: TRISB &= 0xBF;
	bcf	(5)+(6/8),(6)&7	;volatile
	line	38
;number.c: 38: RB6 = 1;
	bsf	(54/8),(54)&7	;volatile
	line	39
;number.c: 39: break;
	goto	l3830
	line	14
	
l3826:	
	movf	(ledOpen@hight),w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 1 to 6
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
; direct_byte           22    10 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l2044
	xorlw	2^1	; case 2
	skipnz
	goto	l2046
	xorlw	3^2	; case 3
	skipnz
	goto	l2047
	xorlw	4^3	; case 4
	skipnz
	goto	l2048
	xorlw	5^4	; case 5
	skipnz
	goto	l2049
	xorlw	6^5	; case 6
	skipnz
	goto	l2050
	goto	l3830
	opt asmopt_pop

	line	45
;number.c: 44: {
;number.c: 45: case 1:
	
l2053:	
	line	46
;number.c: 46: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	47
;number.c: 47: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	48
;number.c: 48: break;
	goto	l2061
	line	49
;number.c: 49: case 2:
	
l2055:	
	line	50
;number.c: 50: TRISB &= 0xFB;
	bcf	(5)+(2/8),(2)&7	;volatile
	line	51
;number.c: 51: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	52
;number.c: 52: break;
	goto	l2061
	line	53
;number.c: 53: case 3:
	
l2056:	
	line	54
;number.c: 54: TRISB &= 0xF7;
	bcf	(5)+(3/8),(3)&7	;volatile
	line	55
;number.c: 55: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	56
;number.c: 56: break;
	goto	l2061
	line	57
;number.c: 57: case 4:
	
l2057:	
	line	58
;number.c: 58: TRISB &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	59
;number.c: 59: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	60
;number.c: 60: break;
	goto	l2061
	line	61
;number.c: 61: case 5:
	
l2058:	
	line	62
;number.c: 62: TRISB &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	63
;number.c: 63: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	64
;number.c: 64: break;
	goto	l2061
	line	65
;number.c: 65: case 6:
	
l2059:	
	line	66
;number.c: 66: TRISB &= 0xBF;
	bcf	(5)+(6/8),(6)&7	;volatile
	line	67
;number.c: 67: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	68
;number.c: 68: break;
	goto	l2061
	line	43
	
l3830:	
	movf	(ledOpen@low),w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 1 to 6
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
; direct_byte           22    10 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l2053
	xorlw	2^1	; case 2
	skipnz
	goto	l2055
	xorlw	3^2	; case 3
	skipnz
	goto	l2056
	xorlw	4^3	; case 4
	skipnz
	goto	l2057
	xorlw	5^4	; case 5
	skipnz
	goto	l2058
	xorlw	6^5	; case 6
	skipnz
	goto	l2059
	goto	l2061
	opt asmopt_pop

	line	72
	
l2061:	
	return
	opt stack 0
GLOBAL	__end_of_ledOpen
	__end_of_ledOpen:
	signat	_ledOpen,8313
	global	_DelayUs

;; *************** function _DelayUs *****************
;; Defined at:
;;		line 267 in file "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\number.c"
;; Parameters:    Size  Location     Type
;;  Time            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Time            1    2[COMMON] unsigned char 
;;  a               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_refreshLed
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	267
global __ptext11
__ptext11:	;psect for function _DelayUs
psect	text11
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\number.c"
	line	267
	global	__size_of_DelayUs
	__size_of_DelayUs	equ	__end_of_DelayUs-_DelayUs
	
_DelayUs:	
;incstack = 0
	opt	stack 5
; Regs used in _DelayUs: [wreg+status,2+status,0]
;DelayUs@Time stored from wreg
	movwf	(DelayUs@Time)
	line	270
	
l3832:	
;number.c: 269: unsigned char a;
;number.c: 270: for(a=0;a<Time;a++)
	clrf	(DelayUs@a)
	goto	l3836
	line	271
	
l2126:	
	line	272
;number.c: 271: {
;number.c: 272: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	270
	
l3834:	
	incf	(DelayUs@a),f
	
l3836:	
	movf	(DelayUs@Time),w
	subwf	(DelayUs@a),w
	skipc
	goto	u2101
	goto	u2100
u2101:
	goto	l2126
u2100:
	line	274
	
l2128:	
	return
	opt stack 0
GLOBAL	__end_of_DelayUs
	__end_of_DelayUs:
	signat	_DelayUs,4217
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 926 in file "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  kclick          1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_keyRead
;;		_keyRead2
;;		_keyRead3
;;		_pwm1Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	926
global __ptext12
__ptext12:	;psect for function _keyCtr
psect	text12
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	926
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	928
	
l4162:	
;main.c: 928: char kclick = keyRead(0x01 & (~PORTB));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(6),w	;volatile
	andlw	01h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	929
	
l4164:	
;main.c: 929: if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l4194
u2700:
	line	931
	
l4166:	
;main.c: 930: {
;main.c: 931: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2711
	goto	u2710
u2711:
	goto	l4180
u2710:
	line	933
	
l4168:	
;main.c: 932: {
;main.c: 933: count1200s = 0;
	clrf	(_count1200s)
	clrf	(_count1200s+1)
	line	934
;main.c: 934: workStep = 0;
	clrf	(_workStep)
	line	935
;main.c: 935: showWorkStepTime = 0;
	clrf	(_showWorkStepTime)
	line	936
	
l4170:	
;main.c: 936: pwm1Stop();
	fcall	_pwm1Stop
	line	937
	
l4172:	
;main.c: 937: PORTA &= 0xE3;
	movlw	low(0E3h)
	andwf	(134)^080h,f	;volatile
	line	938
	
l4174:	
;main.c: 938: PORTC &= 0xFE;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	bcf	(262)^0100h+(0/8),(0)&7	;volatile
	line	939
	
l4176:	
;main.c: 939: motorTime = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_motorTime)
	clrf	(_motorTime+1)
	line	940
	
l4178:	
;main.c: 940: beepTime = 30;
	movlw	low(01Eh)
	movwf	(_beepTime)
	line	941
;main.c: 941: }
	goto	l4208
	line	942
	
l4180:	
;main.c: 942: else if(lowBatFlag == 0)
	movf	((_lowBatFlag)),w
	btfss	status,2
	goto	u2721
	goto	u2720
u2721:
	goto	l4190
u2720:
	line	944
	
l4182:	
;main.c: 943: {
;main.c: 944: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	945
	
l4184:	
;main.c: 945: showWorkStepTime = 200;
	movlw	low(0C8h)
	movwf	(_showWorkStepTime)
	line	946
	
l4186:	
;main.c: 946: showOffTime = 0;
	clrf	(_showOffTime)
	line	947
	
l4188:	
;main.c: 947: count1200s = 0;
	clrf	(_count1200s)
	clrf	(_count1200s+1)
	line	948
;main.c: 948: beepTime = 30;
	movlw	low(01Eh)
	movwf	(_beepTime)
	line	949
;main.c: 949: }
	goto	l4208
	line	952
	
l4190:	
;main.c: 950: else
;main.c: 951: {
;main.c: 952: showBatStep = 0;
	clrf	(_showBatStep)
	line	953
	
l4192:	
;main.c: 953: showOffTime = 200;
	movlw	low(0C8h)
	movwf	(_showOffTime)
	goto	l4208
	line	956
	
l4194:	
;main.c: 956: else if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l4208
u2730:
	line	958
	
l4196:	
;main.c: 957: {
;main.c: 958: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l4192
u2740:
	line	960
	
l4198:	
;main.c: 959: {
;main.c: 960: if(++workStep > 3)
	movlw	low(04h)
	incf	(_workStep),f
	subwf	((_workStep)),w
	skipc
	goto	u2751
	goto	u2750
u2751:
	goto	l4202
u2750:
	line	962
	
l4200:	
;main.c: 961: {
;main.c: 962: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	964
	
l4202:	
;main.c: 963: }
;main.c: 964: showWorkStepTime = 200;
	movlw	low(0C8h)
	movwf	(_showWorkStepTime)
	line	965
	
l4204:	
;main.c: 965: tempCheckTime = 0;
	clrf	(_tempCheckTime)
	line	972
;main.c: 966: }
	
l4208:	
;main.c: 970: }
;main.c: 971: }
;main.c: 972: kclick = keyRead2(0x80 & (~PORTA));
	bsf	status, 5	;RP0=1, select bank1
	comf	(134)^080h,w	;volatile
	andlw	080h
	fcall	_keyRead2
	movwf	(keyCtr@kclick)
	line	973
	
l4210:	
;main.c: 973: if(kclick == 1 && workStep > 0)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l4224
u2760:
	
l4212:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2771
	goto	u2770
u2771:
	goto	l4224
u2770:
	line	975
	
l4214:	
;main.c: 974: {
;main.c: 975: zfStep = 1;
	clrf	(_zfStep)
	incf	(_zfStep),f
	line	976
	
l4216:	
;main.c: 976: PORTA &= 0xE7;
	movlw	low(0E7h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	977
	
l4218:	
;main.c: 977: if(motorTime < 800)
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_motorTime+1),w
	movlw	020h
	skipnz
	subwf	(_motorTime),w
	skipnc
	goto	u2781
	goto	u2780
u2781:
	goto	l4222
u2780:
	line	979
	
l4220:	
;main.c: 978: {
;main.c: 979: motorTime = 1610;
	movlw	04Ah
	movwf	(_motorTime)
	movlw	06h
	movwf	((_motorTime))+1
	line	980
;main.c: 980: }
	goto	l4224
	line	983
	
l4222:	
;main.c: 981: else
;main.c: 982: {
;main.c: 983: motorTime = 0;
	clrf	(_motorTime)
	clrf	(_motorTime+1)
	line	987
	
l4224:	
;main.c: 985: }
;main.c: 986: }
;main.c: 987: kclick = keyRead3(0x01 & (~PORTA));
	bsf	status, 5	;RP0=1, select bank1
	comf	(134)^080h,w	;volatile
	andlw	01h
	fcall	_keyRead3
	movwf	(keyCtr@kclick)
	line	988
	
l4226:	
;main.c: 988: if(kclick == 1 && workStep > 0)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l1186
u2790:
	
l4228:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l1186
u2800:
	line	990
	
l4230:	
;main.c: 989: {
;main.c: 990: zfStep = 2;
	movlw	low(02h)
	movwf	(_zfStep)
	line	991
	
l4232:	
;main.c: 991: PORTA &= 0xE7;
	movlw	low(0E7h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(134)^080h,f	;volatile
	line	992
	
l4234:	
;main.c: 992: if(motorTime < 800)
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_motorTime+1),w
	movlw	020h
	skipnz
	subwf	(_motorTime),w
	skipnc
	goto	u2811
	goto	u2810
u2811:
	goto	l4238
u2810:
	line	994
	
l4236:	
;main.c: 993: {
;main.c: 994: motorTime = 1610;
	movlw	04Ah
	movwf	(_motorTime)
	movlw	06h
	movwf	((_motorTime))+1
	line	995
;main.c: 995: }
	goto	l1186
	line	998
	
l4238:	
;main.c: 996: else
;main.c: 997: {
;main.c: 998: motorTime = 0;
	clrf	(_motorTime)
	clrf	(_motorTime+1)
	line	1002
	
l1186:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead3

;; *************** function _keyRead3 *****************
;; Defined at:
;;		line 904 in file "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;  keyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyStatus       1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	904
global __ptext13
__ptext13:	;psect for function _keyRead3
psect	text13
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	904
	global	__size_of_keyRead3
	__size_of_keyRead3	equ	__end_of_keyRead3-_keyRead3
	
_keyRead3:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead3: [wreg+status,2+status,0]
;keyRead3@keyStatus stored from wreg
	movwf	(keyRead3@keyStatus)
	line	906
	
l3800:	
;main.c: 906: if(keyStatus)
	movf	((keyRead3@keyStatus)),w
	btfsc	status,2
	goto	u2071
	goto	u2070
u2071:
	goto	l3808
u2070:
	line	908
	
l3802:	
;main.c: 907: {
;main.c: 908: keyCount3++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_keyCount3),f
	line	909
	
l3804:	
;main.c: 909: if(keyCount3 >= 120)
	movlw	low(078h)
	subwf	(_keyCount3),w
	skipc
	goto	u2081
	goto	u2080
u2081:
	goto	l3818
u2080:
	line	911
	
l3806:	
;main.c: 910: {
;main.c: 911: keyCount3 = 120;
	movlw	low(078h)
	movwf	(_keyCount3)
	goto	l3818
	line	916
	
l3808:	
;main.c: 914: else
;main.c: 915: {
;main.c: 916: if(keyCount3 >= 5)
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_keyCount3),w
	skipc
	goto	u2091
	goto	u2090
u2091:
	goto	l3816
u2090:
	line	918
	
l3810:	
;main.c: 917: {
;main.c: 918: keyCount3 = 0;
	clrf	(_keyCount3)
	line	919
	
l3812:	
;main.c: 919: return 1;
	movlw	low(01h)
	goto	l1167
	line	921
	
l3816:	
;main.c: 920: }
;main.c: 921: keyCount3 = 0;
	clrf	(_keyCount3)
	line	923
	
l3818:	
;main.c: 922: }
;main.c: 923: return 0;
	movlw	low(0)
	line	924
	
l1167:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead3
	__end_of_keyRead3:
	signat	_keyRead3,4217
	global	_keyRead2

;; *************** function _keyRead2 *****************
;; Defined at:
;;		line 882 in file "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;  keyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyStatus       1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	882
global __ptext14
__ptext14:	;psect for function _keyRead2
psect	text14
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	882
	global	__size_of_keyRead2
	__size_of_keyRead2	equ	__end_of_keyRead2-_keyRead2
	
_keyRead2:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead2: [wreg+status,2+status,0]
;keyRead2@keyStatus stored from wreg
	movwf	(keyRead2@keyStatus)
	line	884
	
l3778:	
;main.c: 884: if(keyStatus)
	movf	((keyRead2@keyStatus)),w
	btfsc	status,2
	goto	u2041
	goto	u2040
u2041:
	goto	l3786
u2040:
	line	886
	
l3780:	
;main.c: 885: {
;main.c: 886: keyCount2++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_keyCount2),f
	line	887
	
l3782:	
;main.c: 887: if(keyCount2 >= 120)
	movlw	low(078h)
	subwf	(_keyCount2),w
	skipc
	goto	u2051
	goto	u2050
u2051:
	goto	l3796
u2050:
	line	889
	
l3784:	
;main.c: 888: {
;main.c: 889: keyCount2 = 120;
	movlw	low(078h)
	movwf	(_keyCount2)
	goto	l3796
	line	894
	
l3786:	
;main.c: 892: else
;main.c: 893: {
;main.c: 894: if(keyCount2 >= 5)
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_keyCount2),w
	skipc
	goto	u2061
	goto	u2060
u2061:
	goto	l3794
u2060:
	line	896
	
l3788:	
;main.c: 895: {
;main.c: 896: keyCount2 = 0;
	clrf	(_keyCount2)
	line	897
	
l3790:	
;main.c: 897: return 1;
	movlw	low(01h)
	goto	l1160
	line	899
	
l3794:	
;main.c: 898: }
;main.c: 899: keyCount2 = 0;
	clrf	(_keyCount2)
	line	901
	
l3796:	
;main.c: 900: }
;main.c: 901: return 0;
	movlw	low(0)
	line	902
	
l1160:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead2
	__end_of_keyRead2:
	signat	_keyRead2,4217
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 848 in file "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;  keyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyStatus       1    2[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	848
global __ptext15
__ptext15:	;psect for function _keyRead
psect	text15
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	848
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	850
	
l3738:	
;main.c: 850: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1991
	goto	u1990
u1991:
	goto	l3754
u1990:
	line	852
	
l3740:	
;main.c: 851: {
;main.c: 852: keyCount++;
	incf	(_keyCount),f
	line	853
	
l3742:	
;main.c: 853: if(keyCount >= 120)
	movlw	low(078h)
	subwf	(_keyCount),w
	skipc
	goto	u2001
	goto	u2000
u2001:
	goto	l3758
u2000:
	line	855
	
l3744:	
;main.c: 854: {
;main.c: 855: keyCount = 120;
	movlw	low(078h)
	movwf	(_keyCount)
	line	856
	
l3746:	
;main.c: 856: if(longPressFlag == 0)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u2011
	goto	u2010
u2011:
	goto	l3758
u2010:
	line	858
	
l3748:	
;main.c: 857: {
;main.c: 858: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	859
	
l3750:	
;main.c: 859: return 2;
	movlw	low(02h)
	goto	l1149
	line	865
	
l3754:	
;main.c: 863: else
;main.c: 864: {
;main.c: 865: if(keyCount >= 120)
	movlw	low(078h)
	subwf	(_keyCount),w
	skipc
	goto	u2021
	goto	u2020
u2021:
	goto	l3764
u2020:
	line	867
	
l3756:	
;main.c: 866: {
;main.c: 867: keyCount = 0;
	clrf	(_keyCount)
	line	868
;main.c: 868: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	869
	
l3758:	
;main.c: 869: return 0;
	movlw	low(0)
	goto	l1149
	line	871
	
l3764:	
;main.c: 871: else if(keyCount >= 5)
	movlw	low(05h)
	subwf	(_keyCount),w
	skipc
	goto	u2031
	goto	u2030
u2031:
	goto	l3756
u2030:
	line	873
	
l3766:	
;main.c: 872: {
;main.c: 873: keyCount = 0;
	clrf	(_keyCount)
	line	874
	
l3768:	
;main.c: 874: return 1;
	movlw	low(01h)
	line	880
	
l1149:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 524 in file "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pwm1Stop
;;		_setBatLed
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	524
global __ptext16
__ptext16:	;psect for function _chrgCtr
psect	text16
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	524
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	526
	
l3934:	
;main.c: 526: if(0x02 & PORTA)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(134)^080h,(1)&7	;volatile
	goto	u2261
	goto	u2260
u2261:
	goto	l3974
u2260:
	line	528
	
l3936:	
;main.c: 527: {
;main.c: 528: chrgFlag = 1;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	529
	
l3938:	
;main.c: 529: workStep = 0;
	clrf	(_workStep)
	line	530
;main.c: 530: lowBatFlag = 0;
	clrf	(_lowBatFlag)
	line	531
	
l3940:	
;main.c: 531: pwm1Stop();
	fcall	_pwm1Stop
	line	532
	
l3942:	
;main.c: 532: showNumBat &= 0x0F;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(_showNumBat),f
	line	533
	
l3944:	
;main.c: 533: firstTime = 0;
	clrf	(_firstTime)
	line	534
	
l3946:	
;main.c: 534: if(showBatStep > 4)
	movlw	low(05h)
	subwf	(_showBatStep),w
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l3950
u2270:
	line	536
	
l3948:	
;main.c: 535: {
;main.c: 536: batLedStep = 4;
	movlw	low(04h)
	movwf	(_batLedStep)
	line	537
;main.c: 537: }
	goto	l1066
	line	538
	
l3950:	
;main.c: 538: else if(count1s < 50)
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u2281
	goto	u2280
u2281:
	goto	l3956
u2280:
	line	540
	
l3952:	
;main.c: 539: {
;main.c: 540: if(showBatStep > 0)
	movf	((_showBatStep)),w
	btfsc	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l1068
u2290:
	line	542
	
l3954:	
;main.c: 541: {
;main.c: 542: batLedStep = showBatStep;
	movf	(_showBatStep),w
	movwf	(_batLedStep)
	line	543
;main.c: 543: }
	goto	l1066
	line	544
	
l1068:	
	line	546
;main.c: 544: else
;main.c: 545: {
;main.c: 546: batLedStep = 1;
	clrf	(_batLedStep)
	incf	(_batLedStep),f
	goto	l1066
	line	551
	
l3956:	
;main.c: 549: else
;main.c: 550: {
;main.c: 551: if(showBatStep > 0)
	movf	((_showBatStep)),w
	btfsc	status,2
	goto	u2301
	goto	u2300
u2301:
	goto	l3960
u2300:
	line	553
	
l3958:	
;main.c: 552: {
;main.c: 553: batLedStep = showBatStep - 1;
	movf	(_showBatStep),w
	addlw	0FFh
	movwf	(_batLedStep)
	line	554
;main.c: 554: }
	goto	l1066
	line	557
	
l3960:	
;main.c: 555: else
;main.c: 556: {
;main.c: 557: batLedStep = 0;
	clrf	(_batLedStep)
	line	559
	
l1066:	
	line	560
;main.c: 558: }
;main.c: 559: }
;main.c: 560: showNumAShi = 0;
	clrf	(_showNumAShi)
	line	561
;main.c: 561: showNumAge = 0;
	clrf	(_showNumAge)
	line	562
;main.c: 562: showNumBShi = 0;
	clrf	(_showNumBShi)
	line	563
	
l3962:	
;main.c: 563: setBatLed(batLedStep);
	movf	(_batLedStep),w
	fcall	_setBatLed
	line	564
	
l3964:	
;main.c: 564: if(showBatStep < batStep)
	movf	(_batStep),w
	subwf	(_showBatStep),w
	skipnc
	goto	u2311
	goto	u2310
u2311:
	goto	l3972
u2310:
	line	566
	
l3966:	
;main.c: 565: {
;main.c: 566: if(++chanceBatTime > 10000)
	incf	(_chanceBatTime),f
	skipnz
	incf	(_chanceBatTime+1),f
	movlw	027h
	subwf	((_chanceBatTime+1)),w
	movlw	011h
	skipnz
	subwf	((_chanceBatTime)),w
	skipc
	goto	u2321
	goto	u2320
u2321:
	goto	l1080
u2320:
	line	568
	
l3968:	
;main.c: 567: {
;main.c: 568: chanceBatTime = 0;
	clrf	(_chanceBatTime)
	clrf	(_chanceBatTime+1)
	line	569
	
l3970:	
;main.c: 569: showBatStep++;
	incf	(_showBatStep),f
	goto	l1080
	line	574
	
l3972:	
;main.c: 572: else
;main.c: 573: {
;main.c: 574: chanceBatTime = 0;
	clrf	(_chanceBatTime)
	clrf	(_chanceBatTime+1)
	goto	l1080
	line	579
	
l3974:	
;main.c: 577: else
;main.c: 578: {
;main.c: 579: chrgFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgFlag)
	line	580
	
l3976:	
;main.c: 580: if(showBatStep > 1 && showBatStep > batStep)
	movlw	low(02h)
	subwf	(_showBatStep),w
	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l3972
u2330:
	
l3978:	
	movf	(_showBatStep),w
	subwf	(_batStep),w
	skipnc
	goto	u2341
	goto	u2340
u2341:
	goto	l3972
u2340:
	line	582
	
l3980:	
;main.c: 581: {
;main.c: 582: if(++chanceBatTime > 30000)
	incf	(_chanceBatTime),f
	skipnz
	incf	(_chanceBatTime+1),f
	movlw	075h
	subwf	((_chanceBatTime+1)),w
	movlw	031h
	skipnz
	subwf	((_chanceBatTime)),w
	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l1080
u2350:
	line	584
	
l3982:	
;main.c: 583: {
;main.c: 584: chanceBatTime = 0;
	clrf	(_chanceBatTime)
	clrf	(_chanceBatTime+1)
	line	585
	
l3984:	
;main.c: 585: showBatStep--;
	decf	(_showBatStep),f
	line	593
	
l1080:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_setBatLed

;; *************** function _setBatLed *****************
;; Defined at:
;;		line 480 in file "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;  ledStep         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ledStep         1    2[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_chrgCtr
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	480
global __ptext17
__ptext17:	;psect for function _setBatLed
psect	text17
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	480
	global	__size_of_setBatLed
	__size_of_setBatLed	equ	__end_of_setBatLed-_setBatLed
	
_setBatLed:	
;incstack = 0
	opt	stack 5
; Regs used in _setBatLed: [wreg+status,2+status,0]
;setBatLed@ledStep stored from wreg
	movwf	(setBatLed@ledStep)
	line	482
	
l3678:	
;main.c: 482: showNumBat &= 0xF0;
	movlw	low(0F0h)
	andwf	(_showNumBat),f
	line	483
;main.c: 483: if(ledStep == 1)
		decf	((setBatLed@ledStep)),w
	btfss	status,2
	goto	u1861
	goto	u1860
u1861:
	goto	l3682
u1860:
	line	485
	
l3680:	
;main.c: 484: {
;main.c: 485: showNumBat |= 0x08;
	bsf	(_showNumBat)+(3/8),(3)&7
	line	486
;main.c: 486: }
	goto	l1054
	line	487
	
l3682:	
;main.c: 487: else if(ledStep == 2)
		movlw	2
	xorwf	((setBatLed@ledStep)),w
	btfss	status,2
	goto	u1871
	goto	u1870
u1871:
	goto	l3686
u1870:
	line	489
	
l3684:	
;main.c: 488: {
;main.c: 489: showNumBat |= 0x0C;
	movlw	low(0Ch)
	iorwf	(_showNumBat),f
	line	490
;main.c: 490: }
	goto	l1054
	line	491
	
l3686:	
;main.c: 491: else if(ledStep == 3)
		movlw	3
	xorwf	((setBatLed@ledStep)),w
	btfss	status,2
	goto	u1881
	goto	u1880
u1881:
	goto	l3690
u1880:
	line	493
	
l3688:	
;main.c: 492: {
;main.c: 493: showNumBat |= 0x0E;
	movlw	low(0Eh)
	iorwf	(_showNumBat),f
	line	494
;main.c: 494: }
	goto	l1054
	line	495
	
l3690:	
;main.c: 495: else if(ledStep >= 4)
	movlw	low(04h)
	subwf	(setBatLed@ledStep),w
	skipc
	goto	u1891
	goto	u1890
u1891:
	goto	l1050
u1890:
	line	497
	
l3692:	
;main.c: 496: {
;main.c: 497: showNumBat |= 0x0F;
	movlw	low(0Fh)
	iorwf	(_showNumBat),f
	goto	l1054
	line	499
	
l1050:	
	
l1054:	
	return
	opt stack 0
GLOBAL	__end_of_setBatLed
	__end_of_setBatLed:
	signat	_setBatLed,4217
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 398 in file "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ADC_Sample
;;		_pwm1Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	398
global __ptext18
__ptext18:	;psect for function _checkBatAD
psect	text18
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	398
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 5
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	401
	
l3870:	
;main.c: 401: test_adc = ADC_Sample(15, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0Fh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	402
	
l3872:	
;main.c: 402: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u2121
	goto	u2120
u2121:
	goto	l1044
u2120:
	line	404
	
l3874:	
;main.c: 403: {
;main.c: 404: batValue = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_batValue+1)
	movf	(_adresult),w	;volatile
	movwf	(_batValue)
	line	405
	
l3876:	
;main.c: 405: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2131
	goto	u2130
u2131:
	goto	l3900
u2130:
	line	407
	
l3878:	
;main.c: 406: {
;main.c: 407: if(batValue > 1540)
	movlw	06h
	subwf	(_batValue+1),w
	movlw	05h
	skipnz
	subwf	(_batValue),w
	skipc
	goto	u2141
	goto	u2140
u2141:
	goto	l3882
u2140:
	line	409
	
l3880:	
;main.c: 408: {
;main.c: 409: batStep = 5;
	movlw	low(05h)
	movwf	(_batStep)
	line	410
;main.c: 410: }
	goto	l3922
	line	411
	
l3882:	
;main.c: 411: else if(batValue > 1530)
	movlw	05h
	subwf	(_batValue+1),w
	movlw	0FBh
	skipnz
	subwf	(_batValue),w
	skipc
	goto	u2151
	goto	u2150
u2151:
	goto	l3886
u2150:
	line	413
	
l3884:	
;main.c: 412: {
;main.c: 413: batStep = 4;
	movlw	low(04h)
	movwf	(_batStep)
	line	414
;main.c: 414: }
	goto	l3922
	line	415
	
l3886:	
;main.c: 415: else if(batValue > 1480)
	movlw	05h
	subwf	(_batValue+1),w
	movlw	0C9h
	skipnz
	subwf	(_batValue),w
	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l3890
u2160:
	line	417
	
l3888:	
;main.c: 416: {
;main.c: 417: batStep = 3;
	movlw	low(03h)
	movwf	(_batStep)
	line	418
;main.c: 418: }
	goto	l3922
	line	419
	
l3890:	
;main.c: 419: else if(batValue > 1420)
	movlw	05h
	subwf	(_batValue+1),w
	movlw	08Dh
	skipnz
	subwf	(_batValue),w
	skipc
	goto	u2171
	goto	u2170
u2171:
	goto	l3894
u2170:
	line	421
	
l3892:	
;main.c: 420: {
;main.c: 421: batStep = 2;
	movlw	low(02h)
	movwf	(_batStep)
	line	422
;main.c: 422: }
	goto	l3922
	line	423
	
l3894:	
;main.c: 423: else if(batValue > 1266)
	movlw	04h
	subwf	(_batValue+1),w
	movlw	0F3h
	skipnz
	subwf	(_batValue),w
	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l3898
u2180:
	line	425
	
l3896:	
;main.c: 424: {
;main.c: 425: batStep = 1;
	clrf	(_batStep)
	incf	(_batStep),f
	line	426
;main.c: 426: }
	goto	l3922
	line	429
	
l3898:	
;main.c: 427: else
;main.c: 428: {
;main.c: 429: batStep = 0;
	clrf	(_batStep)
	goto	l3922
	line	434
	
l3900:	
;main.c: 432: else
;main.c: 433: {
;main.c: 434: if(batValue > 1530)
	movlw	05h
	subwf	(_batValue+1),w
	movlw	0FBh
	skipnz
	subwf	(_batValue),w
	skipc
	goto	u2191
	goto	u2190
u2191:
	goto	l3904
u2190:
	goto	l3880
	line	438
	
l3904:	
;main.c: 438: else if(batValue > 1480)
	movlw	05h
	subwf	(_batValue+1),w
	movlw	0C9h
	skipnz
	subwf	(_batValue),w
	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l3908
u2200:
	goto	l3884
	line	442
	
l3908:	
;main.c: 442: else if(batValue > 1460)
	movlw	05h
	subwf	(_batValue+1),w
	movlw	0B5h
	skipnz
	subwf	(_batValue),w
	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l3912
u2210:
	goto	l3888
	line	446
	
l3912:	
;main.c: 446: else if(batValue > 1420)
	movlw	05h
	subwf	(_batValue+1),w
	movlw	08Dh
	skipnz
	subwf	(_batValue),w
	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l3916
u2220:
	goto	l3892
	line	450
	
l3916:	
;main.c: 450: else if(batValue > 1380)
	movlw	05h
	subwf	(_batValue+1),w
	movlw	065h
	skipnz
	subwf	(_batValue),w
	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l3898
u2230:
	goto	l3896
	line	459
	
l3922:	
;main.c: 457: }
;main.c: 458: }
;main.c: 459: if(batValue < 931)
	movlw	03h
	subwf	(_batValue+1),w
	movlw	0A3h
	skipnz
	subwf	(_batValue),w
	skipnc
	goto	u2241
	goto	u2240
u2241:
	goto	l3932
u2240:
	line	461
	
l3924:	
;main.c: 460: {
;main.c: 461: if(++lowBatTime > 5)
	movlw	low(06h)
	incf	(_lowBatTime),f
	subwf	((_lowBatTime)),w
	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l1044
u2250:
	line	463
	
l3926:	
;main.c: 462: {
;main.c: 463: showBatStep = 0;
	clrf	(_showBatStep)
	line	464
;main.c: 464: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	465
;main.c: 465: workStep = 0;
	clrf	(_workStep)
	line	466
	
l3928:	
;main.c: 466: pwm1Stop();
	fcall	_pwm1Stop
	line	467
	
l3930:	
;main.c: 467: lowBatFlag = 1;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_lowBatFlag)
	incf	(_lowBatFlag),f
	goto	l1044
	line	472
	
l3932:	
;main.c: 470: else
;main.c: 471: {
;main.c: 472: lowBatTime = 0;
	clrf	(_lowBatTime)
	line	477
	
l1044:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_pwm1Stop

;; *************** function _pwm1Stop *****************
;; Defined at:
;;		line 1008 in file "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkBatAD
;;		_chrgCtr
;;		_workCtr
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	1008
global __ptext19
__ptext19:	;psect for function _pwm1Stop
psect	text19
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	1008
	global	__size_of_pwm1Stop
	__size_of_pwm1Stop	equ	__end_of_pwm1Stop-_pwm1Stop
	
_pwm1Stop:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm1Stop: []
	line	1010
	
l3676:	
;main.c: 1010: RA2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1074/8)^080h,(1074)&7	;volatile
	line	1011
	
l1192:	
	return
	opt stack 0
GLOBAL	__end_of_pwm1Stop
	__end_of_pwm1Stop:
	signat	_pwm1Stop,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 238 in file "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
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
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         0      13       0       0
;;      Temps:          4       0       0       0
;;      Totals:         5      13       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkTemAD
;;		_checkBatAD
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	238
global __ptext20
__ptext20:	;psect for function _ADC_Sample
psect	text20
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	238
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 3
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	240
	
l3462:	
;main.c: 240: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	241
	
l3464:	
;main.c: 241: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	242
;main.c: 242: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	244
	
l3466:	
;main.c: 244: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u1481
	goto	u1480
u1481:
	goto	l3472
u1480:
	
l3468:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u1491
	goto	u1490
u1491:
	goto	l3472
u1490:
	line	247
	
l3470:	
;main.c: 245: {
;main.c: 247: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	248
;main.c: 248: _delay((unsigned long)((100)*(8000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	66
movwf	((??_ADC_Sample+0)+0),f
	u3727:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u3727
	nop
opt asmopt_pop

	line	249
;main.c: 249: }
	goto	l3474
	line	251
	
l3472:	
;main.c: 250: else
;main.c: 251: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	253
	
l3474:	
;main.c: 253: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u1501
	goto	u1500
u1501:
	goto	l3480
u1500:
	line	255
	
l3476:	
;main.c: 254: {
;main.c: 255: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	256
	
l3478:	
;main.c: 256: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	258
	
l3480:	
	line	259
	
l3482:	
;main.c: 259: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	261
	
l3488:	
;main.c: 260: {
;main.c: 261: ADCON0 = (unsigned char)(0X41 | (adch << 2));
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u1515:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u1515
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	262
# 262 "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
nop ;# 
	line	263
# 263 "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
nop ;# 
	line	264
# 264 "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
nop ;# 
	line	265
# 265 "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
nop ;# 
psect	text20
	line	266
	
l3490:	
;main.c: 266: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	268
	
l3492:	
;main.c: 268: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	269
;main.c: 269: while (GODONE)
	goto	l971
	
l972:	
	line	271
;main.c: 270: {
;main.c: 271: _delay((unsigned long)((2)*(8000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	273
;main.c: 273: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u1521
	goto	u1520
u1521:
	goto	l971
u1520:
	line	274
	
l3494:	
;main.c: 274: return 0;
	movlw	low(0)
	goto	l974
	line	275
	
l971:	
	line	269
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u1531
	goto	u1530
u1531:
	goto	l972
u1530:
	line	277
	
l3498:	
;main.c: 275: }
;main.c: 277: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l3500:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	279
	
l3502:	
;main.c: 279: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u1541
	goto	u1540
u1541:
	goto	l3506
u1540:
	line	281
	
l3504:	
;main.c: 280: {
;main.c: 281: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	282
;main.c: 282: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	283
;main.c: 283: }
	goto	l977
	line	284
	
l3506:	
;main.c: 284: else if (ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w	;volatile
	skipz
	goto	u1555
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w	;volatile
u1555:
	skipnc
	goto	u1551
	goto	u1550
u1551:
	goto	l3510
u1550:
	line	285
	
l3508:	
;main.c: 285: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l977
	line	286
	
l3510:	
;main.c: 286: else if (ad_temp < admin)
	movf	(ADC_Sample@admin+1),w	;volatile
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u1565
	movf	(ADC_Sample@admin),w	;volatile
	subwf	(ADC_Sample@ad_temp),w	;volatile
u1565:
	skipnc
	goto	u1561
	goto	u1560
u1561:
	goto	l977
u1560:
	line	287
	
l3512:	
;main.c: 287: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	289
	
l977:	
;main.c: 289: adsum += ad_temp;
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
	goto	u1571
	addwf	(ADC_Sample@adsum+1),f	;volatile
u1571:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1572
	addwf	(ADC_Sample@adsum+2),f	;volatile
u1572:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1573
	addwf	(ADC_Sample@adsum+3),f	;volatile
u1573:

	line	259
	
l3514:	
	incf	(ADC_Sample@i),f
	
l3516:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u1581
	goto	u1580
u1581:
	goto	l3488
u1580:
	line	291
	
l3518:	
;main.c: 290: }
;main.c: 291: adsum -= admax;
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
	goto	u1595
	goto	u1596
u1595:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u1596:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1597
	goto	u1598
u1597:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u1598:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1599
	goto	u1590
u1599:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u1590:

	line	292
;main.c: 292: if (adsum >= admin)
	movf	(ADC_Sample@admin),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	3+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+3),w	;volatile
	skipz
	goto	u1605
	movf	2+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+2),w	;volatile
	skipz
	goto	u1605
	movf	1+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum+1),w	;volatile
	skipz
	goto	u1605
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),w	;volatile
u1605:
	skipc
	goto	u1601
	goto	u1600
u1601:
	goto	l981
u1600:
	line	293
	
l3520:	
;main.c: 293: adsum -= admin;
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
	goto	u1615
	goto	u1616
u1615:
	subwf	(ADC_Sample@adsum+1),f	;volatile
u1616:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1617
	goto	u1618
u1617:
	subwf	(ADC_Sample@adsum+2),f	;volatile
u1618:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1619
	goto	u1610
u1619:
	subwf	(ADC_Sample@adsum+3),f	;volatile
u1610:

	goto	l3522
	line	294
	
l981:	
	line	295
;main.c: 294: else
;main.c: 295: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	297
	
l3522:	
;main.c: 297: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w	;volatile
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w	;volatile
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w	;volatile
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u1625:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u1620:
	addlw	-1
	skipz
	goto	u1625
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	299
	
l3524:	
;main.c: 299: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	300
	
l3526:	
;main.c: 300: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	301
	
l3528:	
;main.c: 301: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	302
	
l3530:	
;main.c: 302: return 0xA5;
	movlw	low(0A5h)
	line	304
	
l974:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 170 in file "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Init_System
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	170
global __ptext21
__ptext21:	;psect for function _Sleep_Mode
psect	text21
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	170
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 5
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	172
	
l3838:	
;main.c: 172: INTCON = 0;
	clrf	(11)	;volatile
	line	174
;main.c: 174: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	176
	
l3840:	
;main.c: 176: TRISA = 0xE3;
	movlw	low(0E3h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	177
	
l3842:	
;main.c: 177: PORTA = 0x00;
	clrf	(134)^080h	;volatile
	line	178
;main.c: 178: WPUA = 0x81;
	movlw	low(081h)
	movwf	(136)^080h	;volatile
	line	179
;main.c: 179: TRISB = 0x81;
	movlw	low(081h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	180
	
l3844:	
;main.c: 180: PORTB = 0;
	clrf	(6)	;volatile
	line	181
	
l3846:	
;main.c: 181: WPUB = 0x01;
	movlw	low(01h)
	movwf	(8)	;volatile
	line	182
;main.c: 182: TRISC = 0x00;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	183
;main.c: 183: PORTC = 0;
	clrf	(262)^0100h	;volatile
	line	185
;main.c: 185: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(149)^080h	;volatile
	line	186
;main.c: 186: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	188
;main.c: 188: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	190
	
l3848:	
;main.c: 190: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	191
	
l3850:	
;main.c: 191: T2CON = 0;
	clrf	(19)	;volatile
	line	192
;main.c: 192: IOCA = 0B00000010;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(137)^080h	;volatile
	line	193
;main.c: 193: IOCB = 0B00000001;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	195
	
l3852:	
;main.c: 195: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	196
	
l3854:	
;main.c: 196: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	197
	
l3856:	
;main.c: 197: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	199
	
l3858:	
;main.c: 199: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	202
;main.c: 202: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	203
	
l3860:	
;main.c: 203: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	204
	
l3862:	
;main.c: 204: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	205
;main.c: 205: PORTB;
	movf	(6),w	;volatile
	line	207
# 207 "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
clrwdt ;# 
	line	209
# 209 "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
sleep ;# 
	line	211
# 211 "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
nop ;# 
	line	212
# 212 "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
clrwdt ;# 
psect	text21
	line	213
	
l3864:	
;main.c: 213: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u2111
	goto	u2110
u2111:
	goto	l3868
u2110:
	
l3866:	
	bcf	(107/8),(107)&7	;volatile
	line	215
	
l3868:	
;main.c: 215: Init_System();
	fcall	_Init_System
	line	216
	
l963:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 77 in file "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Sleep_Mode
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	77
global __ptext22
__ptext22:	;psect for function _Init_System
psect	text22
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
	line	77
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_System: [wreg+status,2]
	line	79
	
l3652:	
# 79 "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
nop ;# 
	line	80
# 80 "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
clrwdt ;# 
psect	text22
	line	81
	
l3654:	
;main.c: 81: INTCON = 0;
	clrf	(11)	;volatile
	line	82
	
l3656:	
;main.c: 82: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	83
	
l3658:	
;main.c: 83: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	88
;main.c: 88: TRISA = 0xE3;
	movlw	low(0E3h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	89
	
l3660:	
;main.c: 89: PORTA = 0x00;
	clrf	(134)^080h	;volatile
	line	90
	
l3662:	
;main.c: 90: WPUA = 0x81;
	movlw	low(081h)
	movwf	(136)^080h	;volatile
	line	91
	
l3664:	
;main.c: 91: TRISB = 0x81;
	movlw	low(081h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	92
	
l3666:	
;main.c: 92: PORTB = 0;
	clrf	(6)	;volatile
	line	93
;main.c: 93: WPUB = 0x01;
	movlw	low(01h)
	movwf	(8)	;volatile
	line	94
	
l3668:	
;main.c: 94: TRISC = 0x00;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	95
	
l3670:	
;main.c: 95: PORTC = 0;
	clrf	(262)^0100h	;volatile
	line	97
;main.c: 97: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(14)	;volatile
	line	98
;main.c: 98: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	99
;main.c: 99: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	101
;main.c: 101: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	102
;main.c: 102: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	103
	
l3672:	
;main.c: 103: ADON = 1;
	bsf	(1192/8)^080h,(1192)&7	;volatile
	line	104
	
l3674:	
;main.c: 104: ADCON1 = 0x00;
	clrf	(150)^080h	;volatile
	line	105
	
l943:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 129 in file "C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
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
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	line	129
global __ptext23
__ptext23:	;psect for function _Isr_Timer
psect	text23
	file	"C:\mcuproject\scm\zdt\D252_8F083_tssop20_\D252_8F083_tssop20_\main.c"
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
psect	text23
	line	131
	
i1l4314:	
;main.c: 131: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u310_21
	goto	u310_20
u310_21:
	goto	i1l4336
u310_20:
	line	133
	
i1l4316:	
;main.c: 132: {
;main.c: 133: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	134
	
i1l4318:	
;main.c: 134: if(++intCount10 > 3)
	movlw	low(04h)
	incf	(_intCount10),f
	subwf	((_intCount10)),w
	skipc
	goto	u311_21
	goto	u311_20
u311_21:
	goto	i1l4326
u311_20:
	line	136
	
i1l4320:	
;main.c: 135: {
;main.c: 136: intCount10 = 0;
	clrf	(_intCount10)
	line	137
	
i1l4322:	
;main.c: 137: if(beepFlag)
	movf	((_beepFlag)),w
	btfsc	status,2
	goto	u312_21
	goto	u312_20
u312_21:
	goto	i1l954
u312_20:
	line	139
	
i1l4324:	
;main.c: 138: {
;main.c: 139: PORTC ^= 0x02;
	movlw	low(02h)
	bsf	status, 6	;RP1=1, select bank2
	xorwf	(262)^0100h,f	;volatile
	line	140
;main.c: 140: }
	goto	i1l4326
	line	141
	
i1l954:	
	line	143
;main.c: 141: else
;main.c: 142: {
;main.c: 143: PORTC &= 0xFD;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(262)^0100h+(1/8),(1)&7	;volatile
	line	146
	
i1l4326:	
;main.c: 144: }
;main.c: 145: }
;main.c: 146: if(++MainTime >= 158)
	movlw	low(09Eh)
	bcf	status, 6	;RP1=0, select bank0
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u313_21
	goto	u313_20
u313_21:
	goto	i1l959
u313_20:
	line	148
	
i1l4328:	
;main.c: 147: {
;main.c: 148: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	149
	
i1l4330:	
;main.c: 149: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	150
	
i1l4332:	
;main.c: 150: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u314_21
	goto	u314_20
u314_21:
	goto	i1l959
u314_20:
	line	152
	
i1l4334:	
;main.c: 151: {
;main.c: 152: count1s = 0;
	clrf	(_count1s)
	goto	i1l959
	line	158
	
i1l4336:	
;main.c: 156: else
;main.c: 157: {
;main.c: 158: PIR1 = 0;
	clrf	(13)	;volatile
	line	161
	
i1l959:	
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
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
