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
	FNCALL	_main,_checkOutA
	FNCALL	_main,_chrgCtr
	FNCALL	_main,_keyCtr
	FNCALL	_main,_ledCtr
	FNCALL	_main,_refreshLed
	FNCALL	_main,_workCtr
	FNCALL	_workCtr,___lwdiv
	FNCALL	_workCtr,_pwm1Init
	FNCALL	_workCtr,_pwm1Stop
	FNCALL	_refreshLed,_DelayUs
	FNCALL	_refreshLed,_ledOpen
	FNCALL	_ledCtr,___lbdiv
	FNCALL	_ledCtr,___lbmod
	FNCALL	_ledCtr,___lwdiv
	FNCALL	_keyCtr,_keyRead
	FNCALL	_keyCtr,_keyRead2
	FNCALL	_keyCtr,_keyRead3
	FNCALL	_keyCtr,_keyRead4
	FNCALL	_chrgCtr,___lwmod
	FNCALL	_chrgCtr,_pwm1Stop
	FNCALL	_chrgCtr,_pwm2Init
	FNCALL	_chrgCtr,_pwm2Stop
	FNCALL	_checkOutA,_ADC_Sample
	FNCALL	_checkOutA,_pwm2Stop
	FNCALL	_checkBatAD,_ADC_Sample
	FNCALL	_checkBatAD,_pwm2Stop
	FNCALL	_Sleep_Mode,_Init_System
	FNROOT	_main
	FNCALL	intlevel1,_Isr_Timer
	global	intlevel1
	FNROOT	intlevel1
	global	_showNumAge
	global	_showNumAShi
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\number.c"
	line	7

;initializer for _showNumAge
	retlw	07Fh
	line	6

;initializer for _showNumAShi
	retlw	07Fh
	global	_stopTime
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
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	17
_stopTime:
	retlw	05Ah
	retlw	050h
	retlw	04Bh
	retlw	046h
	retlw	041h
	retlw	03Ch
	retlw	031h
	retlw	027h
	retlw	020h
	retlw	01Bh
	retlw	019h
	retlw	016h
	retlw	013h
	retlw	012h
	retlw	010h
	retlw	0Eh
	retlw	0Ch
	global __end_of_stopTime
__end_of_stopTime:
	global	_startTime
psect	strings
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	16
_startTime:
	retlw	0D2h
	retlw	0BEh
	retlw	0B4h
	retlw	0A0h
	retlw	08Ch
	retlw	078h
	retlw	064h
	retlw	056h
	retlw	047h
	retlw	03Ch
	retlw	035h
	retlw	02Fh
	retlw	02Bh
	retlw	027h
	retlw	023h
	retlw	01Fh
	retlw	01Fh
	global __end_of_startTime
__end_of_startTime:
	global	_numArray
psect	strings
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	15
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
	global	_stopTime
	global	_startTime
	global	_numArray
	global	_tempData
	global	_B_OnOff
	global	_B_MainLoop
	global	_power_ad
	global	_result
	global	_adresult
	global	_workTime
	global	_sumBatValue
	global	_chrgAD
	global	_closeCount
	global	_count900s
	global	_count5s
	global	_sleepTime
	global	_ledCnt
	global	_test_adc
	global	_chrgPWMFlag
	global	_motorPWMFlag
	global	_showWorkTime
	global	_shanshuoTime
	global	_showWorkFlag
	global	_modelStep
	global	_beepTime
	global	_firstCheckTime
	global	_protectFlag
	global	_fullCount
	global	_chrgMaxAD
	global	_lockCount
	global	_chrgBatCount
	global	_chrgMode
	global	_intCount10
	global	_countHalfFull
	global	_chrgWaitTime
	global	_addTime
	global	_subTime
	global	_chrgFullFlag
	global	_maxduty
	global	_preBatValue
	global	_workDuty
	global	_batValue
	global	_keyCount4
	global	_keyCount3
	global	_keyCount2
	global	_keyCount
	global	_longPressFlag
	global	_workStep
	global	_count1s
	global	_chrgFlag
	global	_MainTime
	global	_firstShowCount
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_firstShowCount:
       ds      1

	global	_PWMD01H
_PWMD01H	set	30
	global	_PWMCON2
_PWMCON2	set	29
	global	_PWMT4L
_PWMT4L	set	28
	global	_PWMD4L
_PWMD4L	set	27
	global	_PWMD0L
_PWMD0L	set	25
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
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
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
	global	_RA3
_RA3	set	1075
	global	_RA7
_RA7	set	1079
	global	_PORTC
_PORTC	set	262
	global	_TRISC
_TRISC	set	261
; #config settings
	file	"D257_8F083_tssop20_.as"
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
_tempData:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_power_ad:
       ds      2

_result:
       ds      2

_adresult:
       ds      2

_workTime:
       ds      2

_sumBatValue:
       ds      2

_chrgAD:
       ds      2

_closeCount:
       ds      2

_count900s:
       ds      2

_count5s:
       ds      2

_sleepTime:
       ds      2

_ledCnt:
       ds      1

_test_adc:
       ds      1

_chrgPWMFlag:
       ds      1

_motorPWMFlag:
       ds      1

_showWorkTime:
       ds      1

_shanshuoTime:
       ds      1

_showWorkFlag:
       ds      1

_modelStep:
       ds      1

_beepTime:
       ds      1

_firstCheckTime:
       ds      1

_protectFlag:
       ds      1

_fullCount:
       ds      1

_chrgMaxAD:
       ds      1

_lockCount:
       ds      1

_chrgBatCount:
       ds      1

_chrgMode:
       ds      1

_intCount10:
       ds      1

_countHalfFull:
       ds      1

_chrgWaitTime:
       ds      1

_addTime:
       ds      1

_subTime:
       ds      1

_chrgFullFlag:
       ds      1

_maxduty:
       ds      1

_preBatValue:
       ds      1

_workDuty:
       ds      1

_batValue:
       ds      1

_keyCount4:
       ds      1

_keyCount3:
       ds      1

_keyCount2:
       ds      1

_keyCount:
       ds      1

_longPressFlag:
       ds      1

_workStep:
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
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\number.c"
	line	7
_showNumAge:
       ds      1

psect	dataBANK0
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\number.c"
	line	6
_showNumAShi:
       ds      1

	file	"D257_8F083_tssop20_.as"
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
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
	movlw	low((__pbssBANK0)+037h)
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
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
?_pwm2Stop:	; 1 bytes @ 0x0
?_refreshLed:	; 1 bytes @ 0x0
?_DelayUs:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_Isr_Timer:	; 1 bytes @ 0x0
??_Isr_Timer:	; 1 bytes @ 0x0
?_Sleep_Mode:	; 1 bytes @ 0x0
?_checkOutA:	; 1 bytes @ 0x0
?_checkBatAD:	; 1 bytes @ 0x0
?_pwm1Init:	; 1 bytes @ 0x0
?_pwm1Stop:	; 1 bytes @ 0x0
?_pwm2Init:	; 1 bytes @ 0x0
?_chrgCtr:	; 1 bytes @ 0x0
?_workCtr:	; 1 bytes @ 0x0
?_keyRead:	; 1 bytes @ 0x0
?_keyRead2:	; 1 bytes @ 0x0
?_keyRead3:	; 1 bytes @ 0x0
?_keyRead4:	; 1 bytes @ 0x0
?_keyCtr:	; 1 bytes @ 0x0
?_ledCtr:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	ds	2
??_pwm2Stop:	; 1 bytes @ 0x2
??_DelayUs:	; 1 bytes @ 0x2
??_Init_System:	; 1 bytes @ 0x2
??_Sleep_Mode:	; 1 bytes @ 0x2
?_ADC_Sample:	; 1 bytes @ 0x2
??_pwm1Init:	; 1 bytes @ 0x2
??_pwm1Stop:	; 1 bytes @ 0x2
??_pwm2Init:	; 1 bytes @ 0x2
??_keyRead:	; 1 bytes @ 0x2
??_keyRead2:	; 1 bytes @ 0x2
??_keyRead3:	; 1 bytes @ 0x2
??_keyRead4:	; 1 bytes @ 0x2
?_ledOpen:	; 1 bytes @ 0x2
?___lbdiv:	; 1 bytes @ 0x2
?___lbmod:	; 1 bytes @ 0x2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x2
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x2
	global	ADC_Sample@adldo
ADC_Sample@adldo:	; 1 bytes @ 0x2
	global	keyRead@keyStatus
keyRead@keyStatus:	; 1 bytes @ 0x2
	global	keyRead2@keyStatus
keyRead2@keyStatus:	; 1 bytes @ 0x2
	global	keyRead3@keyStatus
keyRead3@keyStatus:	; 1 bytes @ 0x2
	global	keyRead4@keyStatus
keyRead4@keyStatus:	; 1 bytes @ 0x2
	global	ledOpen@low
ledOpen@low:	; 1 bytes @ 0x2
	global	DelayUs@Time
DelayUs@Time:	; 1 bytes @ 0x2
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x2
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
	ds	1
??_ADC_Sample:	; 1 bytes @ 0x3
??_keyCtr:	; 1 bytes @ 0x3
??_ledOpen:	; 1 bytes @ 0x3
??___lbdiv:	; 1 bytes @ 0x3
??___lbmod:	; 1 bytes @ 0x3
	global	keyCtr@kclick
keyCtr@kclick:	; 1 bytes @ 0x3
	global	ledOpen@hight
ledOpen@hight:	; 1 bytes @ 0x3
	global	DelayUs@a
DelayUs@a:	; 1 bytes @ 0x3
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x3
	ds	1
??_refreshLed:	; 1 bytes @ 0x4
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x4
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x4
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x4
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x4
	ds	1
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x5
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x5
	ds	1
??___lwdiv:	; 1 bytes @ 0x6
??___lwmod:	; 1 bytes @ 0x6
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x6
	ds	1
??_checkOutA:	; 1 bytes @ 0x7
??_checkBatAD:	; 1 bytes @ 0x7
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x7
	ds	2
??_main:	; 1 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_chrgCtr:	; 1 bytes @ 0x0
??_workCtr:	; 1 bytes @ 0x0
??_ledCtr:	; 1 bytes @ 0x0
	global	ADC_Sample@j
ADC_Sample@j:	; 1 bytes @ 0x0
	ds	1
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x1
	global	ledCtr@tempMinute
ledCtr@tempMinute:	; 1 bytes @ 0x1
	ds	1
	global	ADC_Sample@i
ADC_Sample@i:	; 1 bytes @ 0x2
	global	workCtr@tempStopTime
workCtr@tempStopTime:	; 2 bytes @ 0x2
	ds	1
	global	ADC_Sample@adsum
ADC_Sample@adsum:	; 4 bytes @ 0x3
	ds	1
	global	workCtr@tempStartTime
workCtr@tempStartTime:	; 2 bytes @ 0x4
	ds	3
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
;!    Constant    47
;!    Data        2
;!    BSS         57
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      12
;!    BANK0            80     13      71
;!    BANK1            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_checkBatAD
;!    _workCtr->___lwdiv
;!    _refreshLed->_DelayUs
;!    _refreshLed->_ledOpen
;!    _ledCtr->___lwdiv
;!    _keyCtr->_keyRead
;!    _keyCtr->_keyRead2
;!    _keyCtr->_keyRead3
;!    _keyCtr->_keyRead4
;!    _chrgCtr->___lwmod
;!    _checkOutA->_ADC_Sample
;!    _checkBatAD->_ADC_Sample
;!
;!Critical Paths under _Isr_Timer in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
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
;! (0) _main                                                 0     0      0    4877
;!                        _Init_System
;!                         _Sleep_Mode
;!                         _checkBatAD
;!                          _checkOutA
;!                            _chrgCtr
;!                             _keyCtr
;!                             _ledCtr
;!                         _refreshLed
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              6     6      0     600
;!                                              0 BANK0      6     6      0
;!                            ___lwdiv
;!                           _pwm1Init
;!                           _pwm1Stop
;! ---------------------------------------------------------------------------------
;! (2) _pwm1Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _refreshLed                                           0     0      0     832
;!                            _DelayUs
;!                            _ledOpen
;! ---------------------------------------------------------------------------------
;! (2) _ledOpen                                              2     1      1     786
;!                                              2 COMMON     2     1      1
;! ---------------------------------------------------------------------------------
;! (2) _DelayUs                                              2     2      0      46
;!                                              2 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _ledCtr                                               2     2      0    1624
;!                                              0 BANK0      2     2      0
;!                            ___lbdiv
;!                            ___lbmod
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     501
;!                                              2 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (2) ___lbmod                                              5     4      1     557
;!                                              2 COMMON     5     4      1
;! ---------------------------------------------------------------------------------
;! (2) ___lbdiv                                              4     3      1     501
;!                                              2 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _keyCtr                                               1     1      0     180
;!                                              3 COMMON     1     1      0
;!                            _keyRead
;!                           _keyRead2
;!                           _keyRead3
;!                           _keyRead4
;! ---------------------------------------------------------------------------------
;! (2) _keyRead4                                             1     1      0      22
;!                                              2 COMMON     1     1      0
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
;! (1) _chrgCtr                                              3     3      0     265
;!                                              0 BANK0      3     3      0
;!                            ___lwmod
;!                           _pwm1Stop
;!                           _pwm2Init
;!                           _pwm2Stop
;! ---------------------------------------------------------------------------------
;! (2) _pwm2Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _pwm1Stop                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     265
;!                                              2 COMMON     5     1      4
;! ---------------------------------------------------------------------------------
;! (1) _checkOutA                                            0     0      0     688
;!                         _ADC_Sample
;!                           _pwm2Stop
;! ---------------------------------------------------------------------------------
;! (1) _checkBatAD                                           2     2      0     688
;!                                              7 COMMON     2     2      0
;!                         _ADC_Sample
;!                           _pwm2Stop
;! ---------------------------------------------------------------------------------
;! (2) _pwm2Stop                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Sample                                          18    17      1     688
;!                                              2 COMMON     5     4      1
;!                                              0 BANK0     13    13      0
;! ---------------------------------------------------------------------------------
;! (1) _Sleep_Mode                                           0     0      0       0
;!                        _Init_System
;! ---------------------------------------------------------------------------------
;! (2) _Init_System                                          0     0      0       0
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
;!   _Init_System
;!   _Sleep_Mode
;!     _Init_System
;!   _checkBatAD
;!     _ADC_Sample
;!     _pwm2Stop
;!   _checkOutA
;!     _ADC_Sample
;!     _pwm2Stop
;!   _chrgCtr
;!     ___lwmod
;!     _pwm1Stop
;!     _pwm2Init
;!     _pwm2Stop
;!   _keyCtr
;!     _keyRead
;!     _keyRead2
;!     _keyRead3
;!     _keyRead4
;!   _ledCtr
;!     ___lbdiv
;!     ___lbmod
;!     ___lwdiv
;!   _refreshLed
;!     _DelayUs
;!     _ledOpen
;!   _workCtr
;!     ___lwdiv
;!     _pwm1Init
;!     _pwm1Stop
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
;!BANK0               50      D      47       4       88.8%
;!BITBANK0            50      0       0       3        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      9       C       1       85.7%
;!BITCOMMON            E      0       1       0        7.1%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      53       9        0.0%
;!ABS                  0      0      53       8        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 976 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Init_System
;;		_Sleep_Mode
;;		_checkBatAD
;;		_checkOutA
;;		_chrgCtr
;;		_keyCtr
;;		_ledCtr
;;		_refreshLed
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	976
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	976
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	979
	
l4703:	
;main.c: 979: Init_System();
	fcall	_Init_System
	line	981
	
l4705:	
;main.c: 981: firstShowCount = 200;
	movlw	low(0C8h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_firstShowCount)
	line	984
	
l4707:	
;main.c: 983: {
;main.c: 984: refreshLed();
	fcall	_refreshLed
	line	985
	
l4709:	
;main.c: 985: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	goto	u3771
	goto	u3770
u3771:
	goto	l4707
u3770:
	line	987
	
l4711:	
;main.c: 986: {
;main.c: 987: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	988
# 988 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
clrwdt ;# 
psect	maintext
	line	989
	
l4713:	
;main.c: 989: checkOutA();
	fcall	_checkOutA
	line	990
	
l4715:	
;main.c: 990: ledCtr();
	fcall	_ledCtr
	line	991
	
l4717:	
;main.c: 991: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3781
	goto	u3780
u3781:
	goto	l4721
u3780:
	line	992
	
l4719:	
;main.c: 992: keyCtr();
	fcall	_keyCtr
	line	993
	
l4721:	
;main.c: 993: workCtr();
	fcall	_workCtr
	line	994
	
l4723:	
;main.c: 994: chrgCtr();
	fcall	_chrgCtr
	line	995
	
l4725:	
;main.c: 995: checkBatAD();
	fcall	_checkBatAD
	line	996
	
l4727:	
;main.c: 996: if(workStep == 0 && keyCount == 0 && chrgFlag == 0 && firstShowCount == 0 && showWorkTime == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u3791
	goto	u3790
u3791:
	goto	l4743
u3790:
	
l4729:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u3801
	goto	u3800
u3801:
	goto	l4743
u3800:
	
l4731:	
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u3811
	goto	u3810
u3811:
	goto	l4743
u3810:
	
l4733:	
	movf	((_firstShowCount)),w
	btfss	status,2
	goto	u3821
	goto	u3820
u3821:
	goto	l4743
u3820:
	
l4735:	
	movf	((_showWorkTime)),w
	btfss	status,2
	goto	u3831
	goto	u3830
u3831:
	goto	l4743
u3830:
	line	999
	
l4737:	
;main.c: 997: {
;main.c: 999: if(++sleepTime > 250)
	incf	(_sleepTime),f
	skipnz
	incf	(_sleepTime+1),f
	movlw	0
	subwf	((_sleepTime+1)),w
	movlw	0FBh
	skipnz
	subwf	((_sleepTime)),w
	skipc
	goto	u3841
	goto	u3840
u3841:
	goto	l1184
u3840:
	line	1001
	
l4739:	
;main.c: 1000: {
;main.c: 1001: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	line	1002
	
l4741:	
;main.c: 1002: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l4707
	line	1007
	
l4743:	
;main.c: 1005: else
;main.c: 1006: {
;main.c: 1007: sleepTime = 0;
	clrf	(_sleepTime)
	clrf	(_sleepTime+1)
	goto	l4707
	line	1011
	
l1184:	
	goto	l4707
	global	start
	ljmp	start
	opt stack 0
	line	1013
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 625 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempStartTim    2    4[BANK0 ] unsigned int 
;;  tempStopTime    2    2[BANK0 ] unsigned int 
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
;;      Locals:         0       4       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;;		_pwm1Init
;;		_pwm1Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	625
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	625
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _workCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	627
	
l4561:	
;main.c: 627: if(++count5s >= 6000)
	incf	(_count5s),f
	skipnz
	incf	(_count5s+1),f
	movlw	017h
	subwf	((_count5s+1)),w
	movlw	070h
	skipnz
	subwf	((_count5s)),w
	skipc
	goto	u3441
	goto	u3440
u3441:
	goto	l4581
u3440:
	line	629
	
l4563:	
;main.c: 628: {
;main.c: 629: count5s = 0;
	clrf	(_count5s)
	clrf	(_count5s+1)
	line	630
	
l4565:	
;main.c: 630: if(chrgFlag && preBatValue < 99 && batValue >= preBatValue)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3451
	goto	u3450
u3451:
	goto	l4573
u3450:
	
l4567:	
	movlw	low(063h)
	subwf	(_preBatValue),w
	skipnc
	goto	u3461
	goto	u3460
u3461:
	goto	l4573
u3460:
	
l4569:	
	movf	(_preBatValue),w
	subwf	(_batValue),w
	skipc
	goto	u3471
	goto	u3470
u3471:
	goto	l4573
u3470:
	line	632
	
l4571:	
;main.c: 631: {
;main.c: 632: preBatValue = preBatValue+1;
	incf	(_preBatValue),f
	line	634
	
l4573:	
;main.c: 633: }
;main.c: 634: if(chrgFlag && chrgFullFlag && preBatValue < 99)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3481
	goto	u3480
u3481:
	goto	l4581
u3480:
	
l4575:	
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u3491
	goto	u3490
u3491:
	goto	l4581
u3490:
	
l4577:	
	movlw	low(063h)
	subwf	(_preBatValue),w
	skipnc
	goto	u3501
	goto	u3500
u3501:
	goto	l4581
u3500:
	line	636
	
l4579:	
;main.c: 635: {
;main.c: 636: preBatValue = preBatValue+1;
	incf	(_preBatValue),f
	line	639
	
l4581:	
;main.c: 637: }
;main.c: 638: }
;main.c: 639: if(beepTime > 0)
	movf	((_beepTime)),w
	btfsc	status,2
	goto	u3511
	goto	u3510
u3511:
	goto	l1091
u3510:
	line	641
	
l4583:	
;main.c: 640: {
;main.c: 641: beepTime--;
	decf	(_beepTime),f
	line	642
;main.c: 642: }
	goto	l4585
	line	643
	
l1091:	
	line	645
;main.c: 643: else
;main.c: 644: {
;main.c: 645: PORTA &= 0x7F;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(7/8),(7)&7	;volatile
	line	647
	
l4585:	
;main.c: 646: }
;main.c: 647: if(firstShowCount > 0 && firstShowCount < 150)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_firstShowCount)),w
	btfsc	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l4593
u3520:
	
l4587:	
	movlw	low(096h)
	subwf	(_firstShowCount),w
	skipnc
	goto	u3531
	goto	u3530
u3531:
	goto	l4593
u3530:
	line	649
	
l4589:	
;main.c: 648: {
;main.c: 649: sumBatValue += batValue;
	movf	(_batValue),w
	addwf	(_sumBatValue),f
	skipnc
	incf	(_sumBatValue+1),f
	line	650
	
l4591:	
;main.c: 650: firstCheckTime++;
	incf	(_firstCheckTime),f
	line	651
;main.c: 651: }
	goto	l4601
	line	654
	
l4593:	
;main.c: 652: else
;main.c: 653: {
;main.c: 654: if(sumBatValue > 0)
	movf	((_sumBatValue)),w
iorwf	((_sumBatValue+1)),w
	btfsc	status,2
	goto	u3541
	goto	u3540
u3541:
	goto	l4597
u3540:
	line	656
	
l4595:	
;main.c: 655: {
;main.c: 656: preBatValue = sumBatValue/firstCheckTime;
	movf	(_firstCheckTime),w
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(_sumBatValue+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(_sumBatValue),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(_preBatValue)
	line	658
	
l4597:	
;main.c: 657: }
;main.c: 658: firstCheckTime = 0;
	clrf	(_firstCheckTime)
	line	659
	
l4599:	
;main.c: 659: sumBatValue = 0;
	clrf	(_sumBatValue)
	clrf	(_sumBatValue+1)
	line	661
	
l4601:	
;main.c: 660: }
;main.c: 661: if(firstShowCount > 0)
	movf	((_firstShowCount)),w
	btfsc	status,2
	goto	u3551
	goto	u3550
u3551:
	goto	l4605
u3550:
	line	663
	
l4603:	
;main.c: 662: {
;main.c: 663: firstShowCount--;
	decf	(_firstShowCount),f
	line	666
	
l4605:	
;main.c: 664: }
;main.c: 666: if(batValue < 5 && workStep > 0)
	movlw	low(05h)
	subwf	(_batValue),w
	skipnc
	goto	u3561
	goto	u3560
u3561:
	goto	l4615
u3560:
	
l4607:	
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3571
	goto	u3570
u3571:
	goto	l4615
u3570:
	line	668
	
l4609:	
;main.c: 667: {
;main.c: 668: if(++closeCount >= 1000)
	incf	(_closeCount),f
	skipnz
	incf	(_closeCount+1),f
	movlw	03h
	subwf	((_closeCount+1)),w
	movlw	0E8h
	skipnz
	subwf	((_closeCount)),w
	skipc
	goto	u3581
	goto	u3580
u3581:
	goto	l4617
u3580:
	line	670
	
l4611:	
;main.c: 669: {
;main.c: 670: closeCount = 0;
	clrf	(_closeCount)
	clrf	(_closeCount+1)
	line	671
;main.c: 671: preBatValue = 0;
	clrf	(_preBatValue)
	line	672
;main.c: 672: workStep = 0;
	clrf	(_workStep)
	line	673
	
l4613:	
;main.c: 673: pwm1Stop();
	fcall	_pwm1Stop
	goto	l4617
	line	678
	
l4615:	
;main.c: 676: else
;main.c: 677: {
;main.c: 678: closeCount = 0;
	clrf	(_closeCount)
	clrf	(_closeCount+1)
	line	680
	
l4617:	
;main.c: 679: }
;main.c: 680: if(count1s == 0)
	movf	((_count1s)),w
	btfss	status,2
	goto	u3591
	goto	u3590
u3591:
	goto	l4625
u3590:
	line	682
	
l4619:	
;main.c: 681: {
;main.c: 682: if(workStep)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3601
	goto	u3600
u3601:
	goto	l4623
u3600:
	line	684
	
l4621:	
;main.c: 683: {
;main.c: 684: ++count900s;
	incf	(_count900s),f
	skipnz
	incf	(_count900s+1),f
	line	685
;main.c: 685: }
	goto	l4625
	line	688
	
l4623:	
;main.c: 686: else
;main.c: 687: {
;main.c: 688: count900s = 0;
	clrf	(_count900s)
	clrf	(_count900s+1)
	line	691
	
l4625:	
;main.c: 689: }
;main.c: 690: }
;main.c: 691: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3611
	goto	u3610
u3611:
	goto	l4631
u3610:
	line	693
	
l4627:	
;main.c: 692: {
;main.c: 693: workDuty = 64 + (workStep*2);
	clrc
	rlf	(_workStep),w
	addlw	040h
	movwf	(_workDuty)
	line	695
	
l4629:	
;main.c: 695: PWMD0L = workDuty;
	movf	(_workDuty),w
	movwf	(25)	;volatile
	line	696
;main.c: 696: }
	goto	l4635
	line	699
	
l4631:	
;main.c: 697: else
;main.c: 698: {
;main.c: 699: pwm1Stop();
	fcall	_pwm1Stop
	line	700
	
l4633:	
;main.c: 700: modelStep = 0;
	clrf	(_modelStep)
	line	702
	
l4635:	
;main.c: 701: }
;main.c: 702: if(modelStep == 1)
		decf	((_modelStep)),w
	btfss	status,2
	goto	u3621
	goto	u3620
u3621:
	goto	l4639
u3620:
	line	704
	
l4637:	
;main.c: 703: {
;main.c: 704: pwm1Init();
	fcall	_pwm1Init
	line	705
;main.c: 705: }
	goto	l4653
	line	706
	
l4639:	
;main.c: 706: else if(modelStep > 1)
	movlw	low(02h)
	subwf	(_modelStep),w
	skipc
	goto	u3631
	goto	u3630
u3631:
	goto	l4653
u3630:
	line	708
	
l4641:	
;main.c: 707: {
;main.c: 708: unsigned int tempStartTime = startTime[modelStep - 2];
	movf	(_modelStep),w
	addlw	low((((_startTime)-__stringbase)|8000h)+0FEh)
	movwf	fsr0
	fcall	stringdir
	movwf	(workCtr@tempStartTime)
	clrf	(workCtr@tempStartTime+1)
	line	709
;main.c: 709: unsigned int tempStopTime = stopTime[modelStep - 2];
	movf	(_modelStep),w
	addlw	low((((_stopTime)-__stringbase)|8000h)+0FEh)
	movwf	fsr0
	fcall	stringdir
	movwf	(workCtr@tempStopTime)
	clrf	(workCtr@tempStopTime+1)
	line	710
	
l4643:	
;main.c: 710: if(++workTime > (tempStartTime + tempStopTime))
	incf	(_workTime),f
	skipnz
	incf	(_workTime+1),f
	movf	(workCtr@tempStopTime),w
	addwf	(workCtr@tempStartTime),w
	movwf	(??_workCtr+0)+0
	movf	(workCtr@tempStopTime+1),w
	skipnc
	incf	(workCtr@tempStopTime+1),w
	addwf	(workCtr@tempStartTime+1),w
	movwf	1+(??_workCtr+0)+0
	movf	((_workTime+1)),w
	subwf	1+(??_workCtr+0)+0,w
	skipz
	goto	u3645
	movf	((_workTime)),w
	subwf	0+(??_workCtr+0)+0,w
u3645:
	skipnc
	goto	u3641
	goto	u3640
u3641:
	goto	l4647
u3640:
	line	712
	
l4645:	
;main.c: 711: {
;main.c: 712: workTime = 0;
	clrf	(_workTime)
	clrf	(_workTime+1)
	line	714
	
l4647:	
;main.c: 713: }
;main.c: 714: if(workTime < tempStartTime)
	movf	(workCtr@tempStartTime+1),w
	subwf	(_workTime+1),w
	skipz
	goto	u3655
	movf	(workCtr@tempStartTime),w
	subwf	(_workTime),w
u3655:
	skipnc
	goto	u3651
	goto	u3650
u3651:
	goto	l4651
u3650:
	goto	l4637
	line	720
	
l4651:	
;main.c: 718: else
;main.c: 719: {
;main.c: 720: pwm1Stop();
	fcall	_pwm1Stop
	line	724
	
l4653:	
;main.c: 721: }
;main.c: 722: }
;main.c: 724: if(count900s >= 900)
	movlw	03h
	subwf	(_count900s+1),w
	movlw	084h
	skipnz
	subwf	(_count900s),w
	skipc
	goto	u3661
	goto	u3660
u3661:
	goto	l1112
u3660:
	line	726
	
l4655:	
;main.c: 725: {
;main.c: 726: workStep = 0;
	clrf	(_workStep)
	line	727
	
l4657:	
;main.c: 727: pwm1Stop();
	fcall	_pwm1Stop
	line	729
	
l1112:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_pwm1Init

;; *************** function _pwm1Init *****************
;; Defined at:
;;		line 442 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	442
global __ptext2
__ptext2:	;psect for function _pwm1Init
psect	text2
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	442
	global	__size_of_pwm1Init
	__size_of_pwm1Init	equ	__end_of_pwm1Init-_pwm1Init
	
_pwm1Init:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm1Init: [wreg+status,2+status,0]
	line	444
	
l3527:	
;main.c: 444: if(motorPWMFlag)
	movf	((_motorPWMFlag)),w
	btfsc	status,2
	goto	u1631
	goto	u1630
u1631:
	goto	l3531
u1630:
	goto	l1042
	line	448
	
l3531:	
;main.c: 447: }
;main.c: 448: PWMTH = 0x00;
	clrf	(24)	;volatile
	line	449
	
l3533:	
;main.c: 449: PWMTL = 100;
	movlw	low(064h)
	movwf	(23)	;volatile
	line	450
	
l3535:	
;main.c: 450: PWMD01H = 0x00;
	clrf	(30)	;volatile
	line	451
;main.c: 451: PWMD0L = 66;
	movlw	low(042h)
	movwf	(25)	;volatile
	line	452
;main.c: 452: PWMCON1 = 0xC0;
	movlw	low(0C0h)
	movwf	(22)	;volatile
	line	453
	
l3537:	
;main.c: 453: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	454
	
l3539:	
;main.c: 454: PWMCON0 |= 0x61;
	movlw	low(061h)
	iorwf	(21),f	;volatile
	line	455
	
l3541:	
;main.c: 455: motorPWMFlag = 1;
	clrf	(_motorPWMFlag)
	incf	(_motorPWMFlag),f
	line	456
	
l1042:	
	return
	opt stack 0
GLOBAL	__end_of_pwm1Init
	__end_of_pwm1Init:
	signat	_pwm1Init,89
	global	_refreshLed

;; *************** function _refreshLed *****************
;; Defined at:
;;		line 69 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\number.c"
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
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\number.c"
	line	69
global __ptext3
__ptext3:	;psect for function _refreshLed
psect	text3
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\number.c"
	line	69
	global	__size_of_refreshLed
	__size_of_refreshLed	equ	__end_of_refreshLed-_refreshLed
	
_refreshLed:	
;incstack = 0
	opt	stack 5
; Regs used in _refreshLed: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	73
	
l4227:	
;number.c: 73: TRISB |= 0x1F;
	movlw	low(01Fh)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(5),f	;volatile
	line	74
;number.c: 74: PORTB &= 0xE0;
	movlw	low(0E0h)
	andwf	(6),f	;volatile
	line	76
;number.c: 76: switch(ledCnt)
	goto	l4259
	line	78
;number.c: 77: {
;number.c: 78: case 0:
	
l2050:	
	line	79
;number.c: 79: if(showNumAShi & 0x01)
	btfss	(_showNumAShi),(0)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l4261
u2810:
	line	81
	
l4229:	
;number.c: 80: {
;number.c: 81: ledOpen(3,2);
	movlw	low(02h)
	movwf	(ledOpen@low)
	movlw	low(03h)
	fcall	_ledOpen
	goto	l4261
	line	84
;number.c: 84: case 1:
	
l2053:	
	line	85
;number.c: 85: if(showNumAShi & 0x02)
	btfss	(_showNumAShi),(1)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l4261
u2820:
	line	87
	
l4231:	
;number.c: 86: {
;number.c: 87: ledOpen(2,3);
	movlw	low(03h)
	movwf	(ledOpen@low)
	movlw	low(02h)
	fcall	_ledOpen
	goto	l4261
	line	90
;number.c: 90: case 2:
	
l2055:	
	line	91
;number.c: 91: if(showNumAShi & 0x04)
	btfss	(_showNumAShi),(2)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l4261
u2830:
	line	93
	
l4233:	
;number.c: 92: {
;number.c: 93: ledOpen(3,4);
	movlw	low(04h)
	movwf	(ledOpen@low)
	movlw	low(03h)
	fcall	_ledOpen
	goto	l4261
	line	96
;number.c: 96: case 3:
	
l2057:	
	line	97
;number.c: 97: if(showNumAShi & 0x08)
	btfss	(_showNumAShi),(3)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l4261
u2840:
	line	99
	
l4235:	
;number.c: 98: {
;number.c: 99: ledOpen(2,4);
	movlw	low(04h)
	movwf	(ledOpen@low)
	movlw	low(02h)
	fcall	_ledOpen
	goto	l4261
	line	102
;number.c: 102: case 4:
	
l2059:	
	line	103
;number.c: 103: if(showNumAShi & 0x10)
	btfss	(_showNumAShi),(4)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l4261
u2850:
	line	105
	
l4237:	
;number.c: 104: {
;number.c: 105: ledOpen(2,5);
	movlw	low(05h)
	movwf	(ledOpen@low)
	movlw	low(02h)
	fcall	_ledOpen
	goto	l4261
	line	108
;number.c: 108: case 5:
	
l2061:	
	line	109
;number.c: 109: if(showNumAShi & 0x20)
	btfss	(_showNumAShi),(5)&7
	goto	u2861
	goto	u2860
u2861:
	goto	l4261
u2860:
	line	111
	
l4239:	
;number.c: 110: {
;number.c: 111: ledOpen(3,5);
	movlw	low(05h)
	movwf	(ledOpen@low)
	movlw	low(03h)
	fcall	_ledOpen
	goto	l4261
	line	114
;number.c: 114: case 6:
	
l2063:	
	line	115
;number.c: 115: if(showNumAShi & 0x40)
	btfss	(_showNumAShi),(6)&7
	goto	u2871
	goto	u2870
u2871:
	goto	l4261
u2870:
	line	117
	
l4241:	
;number.c: 116: {
;number.c: 117: ledOpen(4,5);
	movlw	low(05h)
	movwf	(ledOpen@low)
	movlw	low(04h)
	fcall	_ledOpen
	goto	l4261
	line	120
;number.c: 120: case 7:
	
l2065:	
	line	121
;number.c: 121: if(showNumAge & 0x01)
	btfss	(_showNumAge),(0)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l4261
u2880:
	line	123
	
l4243:	
;number.c: 122: {
;number.c: 123: ledOpen(2,1);
	clrf	(ledOpen@low)
	incf	(ledOpen@low),f
	movlw	low(02h)
	fcall	_ledOpen
	goto	l4261
	line	126
;number.c: 126: case 8:
	
l2067:	
	line	127
;number.c: 127: if(showNumAge & 0x02)
	btfss	(_showNumAge),(1)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l4261
u2890:
	line	129
	
l4245:	
;number.c: 128: {
;number.c: 129: ledOpen(1,2);
	movlw	low(02h)
	movwf	(ledOpen@low)
	movlw	low(01h)
	fcall	_ledOpen
	goto	l4261
	line	132
;number.c: 132: case 9:
	
l2069:	
	line	133
;number.c: 133: if(showNumAge & 0x04)
	btfss	(_showNumAge),(2)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l4261
u2900:
	line	135
	
l4247:	
;number.c: 134: {
;number.c: 135: ledOpen(3,1);
	clrf	(ledOpen@low)
	incf	(ledOpen@low),f
	movlw	low(03h)
	fcall	_ledOpen
	goto	l4261
	line	138
;number.c: 138: case 10:
	
l2071:	
	line	139
;number.c: 139: if(showNumAge & 0x08)
	btfss	(_showNumAge),(3)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l4261
u2910:
	line	141
	
l4249:	
;number.c: 140: {
;number.c: 141: ledOpen(1,3);
	movlw	low(03h)
	movwf	(ledOpen@low)
	movlw	low(01h)
	fcall	_ledOpen
	goto	l4261
	line	144
;number.c: 144: case 11:
	
l2073:	
	line	145
;number.c: 145: if(showNumAge & 0x10)
	btfss	(_showNumAge),(4)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l4261
u2920:
	line	147
	
l4251:	
;number.c: 146: {
;number.c: 147: ledOpen(4,1);
	clrf	(ledOpen@low)
	incf	(ledOpen@low),f
	movlw	low(04h)
	fcall	_ledOpen
	goto	l4261
	line	150
;number.c: 150: case 12:
	
l2075:	
	line	151
;number.c: 151: if(showNumAge & 0x20)
	btfss	(_showNumAge),(5)&7
	goto	u2931
	goto	u2930
u2931:
	goto	l4261
u2930:
	line	153
	
l4253:	
;number.c: 152: {
;number.c: 153: ledOpen(1,4);
	movlw	low(04h)
	movwf	(ledOpen@low)
	movlw	low(01h)
	fcall	_ledOpen
	goto	l4261
	line	156
;number.c: 156: case 13:
	
l2077:	
	line	157
;number.c: 157: if(showNumAge & 0x40)
	btfss	(_showNumAge),(6)&7
	goto	u2941
	goto	u2940
u2941:
	goto	l4261
u2940:
	line	159
	
l4255:	
;number.c: 158: {
;number.c: 159: ledOpen(1,5);
	movlw	low(05h)
	movwf	(ledOpen@low)
	movlw	low(01h)
	fcall	_ledOpen
	goto	l4261
	line	76
	
l4259:	
	movf	(_ledCnt),w
	; Switch size 1, requested type "space"
; Number of cases is 14, Range of values is 0 to 13
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           35     7 (fixed)
; simple_byte           43    22 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	14
	subwf	fsr,w
skipnc
goto l4261
movlw high(S4765)
movwf pclath
	clrc
	rlf fsr,w
	addlw low(S4765)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S4765:
	ljmp	l2050
	ljmp	l2053
	ljmp	l2055
	ljmp	l2057
	ljmp	l2059
	ljmp	l2061
	ljmp	l2063
	ljmp	l2065
	ljmp	l2067
	ljmp	l2069
	ljmp	l2071
	ljmp	l2073
	ljmp	l2075
	ljmp	l2077
psect	text3

	line	165
	
l4261:	
;number.c: 165: DelayUs(50);
	movlw	low(032h)
	fcall	_DelayUs
	line	166
	
l4263:	
;number.c: 166: TRISB |= 0x1F;
	movlw	low(01Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(5),f	;volatile
	line	167
	
l4265:	
;number.c: 167: PORTB &= 0xE0;
	movlw	low(0E0h)
	andwf	(6),f	;volatile
	line	168
	
l4267:	
;number.c: 168: if(++ledCnt > 13)
	movlw	low(0Eh)
	incf	(_ledCnt),f
	subwf	((_ledCnt)),w
	skipc
	goto	u2951
	goto	u2950
u2951:
	goto	l2081
u2950:
	line	170
	
l4269:	
;number.c: 169: {
;number.c: 170: ledCnt = 0;
	clrf	(_ledCnt)
	line	172
	
l2081:	
	return
	opt stack 0
GLOBAL	__end_of_refreshLed
	__end_of_refreshLed:
	signat	_refreshLed,89
	global	_ledOpen

;; *************** function _ledOpen *****************
;; Defined at:
;;		line 12 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\number.c"
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
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	12
global __ptext4
__ptext4:	;psect for function _ledOpen
psect	text4
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\number.c"
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
	
l3671:	
;number.c: 14: switch(hight)
	goto	l3675
	line	16
;number.c: 15: {
;number.c: 16: case 1:
	
l2031:	
	line	17
;number.c: 17: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	18
;number.c: 18: RB1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	19
;number.c: 19: break;
	goto	l3679
	line	20
;number.c: 20: case 2:
	
l2033:	
	line	21
;number.c: 21: TRISB &= 0xFB;
	bcf	(5)+(2/8),(2)&7	;volatile
	line	22
;number.c: 22: RB2 = 1;
	bsf	(50/8),(50)&7	;volatile
	line	23
;number.c: 23: break;
	goto	l3679
	line	24
;number.c: 24: case 3:
	
l2034:	
	line	25
;number.c: 25: TRISB &= 0xF7;
	bcf	(5)+(3/8),(3)&7	;volatile
	line	26
;number.c: 26: RB3 = 1;
	bsf	(51/8),(51)&7	;volatile
	line	27
;number.c: 27: break;
	goto	l3679
	line	28
;number.c: 28: case 4:
	
l2035:	
	line	29
;number.c: 29: TRISB &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	30
;number.c: 30: RB4 = 1;
	bsf	(52/8),(52)&7	;volatile
	line	31
;number.c: 31: break;
	goto	l3679
	line	32
;number.c: 32: case 5:
	
l2036:	
	line	33
;number.c: 33: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	34
;number.c: 34: RB0 = 1;
	bsf	(48/8),(48)&7	;volatile
	line	35
;number.c: 35: break;
	goto	l3679
	line	14
	
l3675:	
	movf	(ledOpen@hight),w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 1 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           20    10 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l2031
	xorlw	2^1	; case 2
	skipnz
	goto	l2033
	xorlw	3^2	; case 3
	skipnz
	goto	l2034
	xorlw	4^3	; case 4
	skipnz
	goto	l2035
	xorlw	5^4	; case 5
	skipnz
	goto	l2036
	goto	l3679
	opt asmopt_pop

	line	41
;number.c: 40: {
;number.c: 41: case 1:
	
l2039:	
	line	42
;number.c: 42: TRISB &= 0xFD;
	bcf	(5)+(1/8),(1)&7	;volatile
	line	43
;number.c: 43: RB1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	44
;number.c: 44: break;
	goto	l2046
	line	45
;number.c: 45: case 2:
	
l2041:	
	line	46
;number.c: 46: TRISB &= 0xFB;
	bcf	(5)+(2/8),(2)&7	;volatile
	line	47
;number.c: 47: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	48
;number.c: 48: break;
	goto	l2046
	line	49
;number.c: 49: case 3:
	
l2042:	
	line	50
;number.c: 50: TRISB &= 0xF7;
	bcf	(5)+(3/8),(3)&7	;volatile
	line	51
;number.c: 51: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	52
;number.c: 52: break;
	goto	l2046
	line	53
;number.c: 53: case 4:
	
l2043:	
	line	54
;number.c: 54: TRISB &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	55
;number.c: 55: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	56
;number.c: 56: break;
	goto	l2046
	line	57
;number.c: 57: case 5:
	
l2044:	
	line	58
;number.c: 58: TRISB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	59
;number.c: 59: RB0 = 0;
	bcf	(48/8),(48)&7	;volatile
	line	60
;number.c: 60: break;
	goto	l2046
	line	39
	
l3679:	
	movf	(ledOpen@low),w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 1 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           20    10 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l2039
	xorlw	2^1	; case 2
	skipnz
	goto	l2041
	xorlw	3^2	; case 3
	skipnz
	goto	l2042
	xorlw	4^3	; case 4
	skipnz
	goto	l2043
	xorlw	5^4	; case 5
	skipnz
	goto	l2044
	goto	l2046
	opt asmopt_pop

	line	64
	
l2046:	
	return
	opt stack 0
GLOBAL	__end_of_ledOpen
	__end_of_ledOpen:
	signat	_ledOpen,8313
	global	_DelayUs

;; *************** function _DelayUs *****************
;; Defined at:
;;		line 180 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\number.c"
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
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	180
global __ptext5
__ptext5:	;psect for function _DelayUs
psect	text5
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\number.c"
	line	180
	global	__size_of_DelayUs
	__size_of_DelayUs	equ	__end_of_DelayUs-_DelayUs
	
_DelayUs:	
;incstack = 0
	opt	stack 5
; Regs used in _DelayUs: [wreg+status,2+status,0]
;DelayUs@Time stored from wreg
	movwf	(DelayUs@Time)
	line	183
	
l3681:	
;number.c: 182: unsigned char a;
;number.c: 183: for(a=0;a<Time;a++)
	clrf	(DelayUs@a)
	goto	l3685
	line	184
	
l2085:	
	line	185
;number.c: 184: {
;number.c: 185: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	183
	
l3683:	
	incf	(DelayUs@a),f
	
l3685:	
	movf	(DelayUs@Time),w
	subwf	(DelayUs@a),w
	skipc
	goto	u1791
	goto	u1790
u1791:
	goto	l2085
u1790:
	line	187
	
l2087:	
	return
	opt stack 0
GLOBAL	__end_of_DelayUs
	__end_of_DelayUs:
	signat	_DelayUs,4217
	global	_ledCtr

;; *************** function _ledCtr *****************
;; Defined at:
;;		line 916 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempMinute      1    1[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lbdiv
;;		___lbmod
;;		___lwdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	916
global __ptext6
__ptext6:	;psect for function _ledCtr
psect	text6
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	916
	global	__size_of_ledCtr
	__size_of_ledCtr	equ	__end_of_ledCtr-_ledCtr
	
_ledCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _ledCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	918
	
l4659:	
;main.c: 918: if(showWorkTime > 0)
	movf	((_showWorkTime)),w
	btfsc	status,2
	goto	u3671
	goto	u3670
u3671:
	goto	l4663
u3670:
	line	920
	
l4661:	
;main.c: 919: {
;main.c: 920: showWorkTime--;
	decf	(_showWorkTime),f
	line	922
	
l4663:	
;main.c: 921: }
;main.c: 922: if(shanshuoTime > 0)
	movf	((_shanshuoTime)),w
	btfsc	status,2
	goto	u3681
	goto	u3680
u3681:
	goto	l4667
u3680:
	line	924
	
l4665:	
;main.c: 923: {
;main.c: 924: shanshuoTime--;
	decf	(_shanshuoTime),f
	line	926
	
l4667:	
;main.c: 925: }
;main.c: 926: if(firstShowCount > 0)
	movf	((_firstShowCount)),w
	btfsc	status,2
	goto	u3691
	goto	u3690
u3691:
	goto	l4671
u3690:
	line	928
	
l4669:	
;main.c: 927: {
;main.c: 928: showNumAShi = 0x7F;
	movlw	low(07Fh)
	movwf	(_showNumAShi)
	line	929
;main.c: 929: showNumAge = 0x7F;
	movlw	low(07Fh)
	movwf	(_showNumAge)
	line	930
;main.c: 930: }
	goto	l1178
	line	931
	
l4671:	
;main.c: 931: else if(shanshuoTime > 0 && (shanshuoTime % 100) < 50)
	movf	((_shanshuoTime)),w
	btfsc	status,2
	goto	u3701
	goto	u3700
u3701:
	goto	l4677
u3700:
	
l4673:	
	movlw	low(064h)
	movwf	(___lbmod@divisor)
	movf	(_shanshuoTime),w
	fcall	___lbmod
	movwf	(??_ledCtr+0)+0
	movlw	032h
	subwf	(??_ledCtr+0)+0,w
	skipnc
	goto	u3711
	goto	u3710
u3711:
	goto	l4677
u3710:
	line	933
	
l4675:	
;main.c: 932: {
;main.c: 933: showNumAShi = 0;
	clrf	(_showNumAShi)
	line	934
;main.c: 934: showNumAge = 0;
	clrf	(_showNumAge)
	line	935
;main.c: 935: }
	goto	l1178
	line	936
	
l4677:	
;main.c: 936: else if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u3721
	goto	u3720
u3721:
	goto	l4681
u3720:
	line	938
	
l4679:	
;main.c: 937: {
;main.c: 938: showNumAShi = numArray[preBatValue/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_preBatValue),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAShi)
	line	939
;main.c: 939: showNumAge = numArray[preBatValue%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_preBatValue),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAge)
	line	940
;main.c: 940: }
	goto	l1178
	line	941
	
l4681:	
;main.c: 941: else if(showWorkTime)
	movf	((_showWorkTime)),w
	btfsc	status,2
	goto	u3731
	goto	u3730
u3731:
	goto	l4693
u3730:
	line	943
	
l4683:	
;main.c: 942: {
;main.c: 943: if(workStep == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u3741
	goto	u3740
u3741:
	goto	l4687
u3740:
	line	945
	
l4685:	
;main.c: 944: {
;main.c: 945: showNumAShi = numArray[0];
	movlw	low((_numArray-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAShi)
	line	946
;main.c: 946: showNumAge = numArray[10];
	movlw	low((((_numArray+0Ah)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAge)
	line	947
;main.c: 947: }
	goto	l1178
	line	948
	
l4687:	
;main.c: 948: else if(showWorkFlag == 1)
		decf	((_showWorkFlag)),w
	btfss	status,2
	goto	u3751
	goto	u3750
u3751:
	goto	l4691
u3750:
	line	950
	
l4689:	
;main.c: 949: {
;main.c: 950: showNumAShi = numArray[workStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_workStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAShi)
	line	951
;main.c: 951: showNumAge = numArray[workStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_workStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAge)
	line	952
;main.c: 952: }
	goto	l1178
	line	955
	
l4691:	
;main.c: 953: else
;main.c: 954: {
;main.c: 955: showNumAShi = numArray[modelStep/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(_modelStep),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAShi)
	line	956
;main.c: 956: showNumAge = numArray[modelStep%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(_modelStep),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAge)
	goto	l1178
	line	959
	
l4693:	
;main.c: 959: else if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u3761
	goto	u3760
u3761:
	goto	l4675
u3760:
	line	961
	
l4695:	
;main.c: 960: {
;main.c: 961: unsigned char tempMinute = 15 - (count900s/60);
	movlw	03Ch
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(_count900s+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(_count900s),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	sublw	0Fh
	movwf	(ledCtr@tempMinute)
	line	962
	
l4697:	
;main.c: 962: showNumAShi = numArray[tempMinute/10];
	movlw	low(0Ah)
	movwf	(___lbdiv@divisor)
	movf	(ledCtr@tempMinute),w
	fcall	___lbdiv
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAShi)
	line	963
	
l4699:	
;main.c: 963: showNumAge = numArray[tempMinute%10];
	movlw	low(0Ah)
	movwf	(___lbmod@divisor)
	movf	(ledCtr@tempMinute),w
	fcall	___lbmod
	addlw	low((((_numArray)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(_showNumAge)
	line	970
;main.c: 964: }
	
l1178:	
	return
	opt stack 0
GLOBAL	__end_of_ledCtr
	__end_of_ledCtr:
	signat	_ledCtr,89
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] unsigned int 
;;  counter         1    6[COMMON] unsigned char 
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
;;		_workCtr
;;		_ledCtr
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
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l4403:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l4405:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u3161
	goto	u3160
u3161:
	goto	l4425
u3160:
	line	16
	
l4407:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l4411
	line	18
	
l4409:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l4411:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l4409
u3170:
	line	22
	
l4413:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l4415:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3185
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3185:
	skipc
	goto	u3181
	goto	u3180
u3181:
	goto	l4421
u3180:
	line	24
	
l4417:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l4419:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l4421:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l4423:	
	decfsz	(___lwdiv@counter),f
	goto	u3191
	goto	u3190
u3191:
	goto	l4413
u3190:
	line	30
	
l4425:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l2446:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
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
;;		_ledCtr
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lbmod.c"
	line	4
global __ptext8
__ptext8:	;psect for function ___lbmod
psect	text8
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
	
l4385:	
	movlw	low(08h)
	movwf	(___lbmod@counter)
	line	10
	
l4387:	
	clrf	(___lbmod@rem)
	line	12
	
l4389:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u3135:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u3135
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l4391:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l4393:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u3141
	goto	u3140
u3141:
	goto	l4397
u3140:
	line	15
	
l4395:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l4397:	
	decfsz	(___lbmod@counter),f
	goto	u3151
	goto	u3150
u3151:
	goto	l4389
u3150:
	line	17
	
l4399:	
	movf	(___lbmod@rem),w
	line	18
	
l2378:	
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
;;  divisor         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    3[COMMON] unsigned char 
;;  quotient        1    5[COMMON] unsigned char 
;;  counter         1    4[COMMON] unsigned char 
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
;;      Temps:          0       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ledCtr
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
	opt	stack 5
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	movwf	(___lbdiv@dividend)
	line	9
	
l4361:	
	clrf	(___lbdiv@quotient)
	line	10
	
l4363:	
	movf	((___lbdiv@divisor)),w
	btfsc	status,2
	goto	u3091
	goto	u3090
u3091:
	goto	l4381
u3090:
	line	11
	
l4365:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l4369
	
l2367:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l4367:	
	incf	(___lbdiv@counter),f
	line	12
	
l4369:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u3101
	goto	u3100
u3101:
	goto	l2367
u3100:
	line	16
	
l2369:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l4371:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u3111
	goto	u3110
u3111:
	goto	l4377
u3110:
	line	19
	
l4373:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l4375:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l4377:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l4379:	
	decfsz	(___lbdiv@counter),f
	goto	u3121
	goto	u3120
u3121:
	goto	l2369
u3120:
	line	25
	
l4381:	
	movf	(___lbdiv@quotient),w
	line	26
	
l2372:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 832 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  kclick          1    3[COMMON] unsigned char 
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
;;		_keyRead4
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	832
global __ptext10
__ptext10:	;psect for function _keyCtr
psect	text10
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	832
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	834
	
l4111:	
;main.c: 834: TRISA = 0xE2;
	movlw	low(0E2h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	835
;main.c: 835: WPUA = 0xC0;
	movlw	low(0C0h)
	movwf	(136)^080h	;volatile
	line	836
;main.c: 836: TRISB = 0xE0;
	movlw	low(0E0h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	837
;main.c: 837: WPUB = 0x80;
	movlw	low(080h)
	movwf	(8)	;volatile
	line	838
	
l4113:	
;main.c: 838: RA3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	line	839
	
l4115:	
;main.c: 839: char kclick = keyRead(0x80 & (~PORTB));
	bcf	status, 5	;RP0=0, select bank0
	comf	(6),w	;volatile
	andlw	080h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	840
	
l4117:	
;main.c: 840: if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l4129
u2590:
	line	842
	
l4119:	
;main.c: 841: {
;main.c: 842: if(workStep > 0)
	movf	((_workStep)),w
	btfsc	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l1147
u2600:
	line	844
	
l4121:	
;main.c: 845: closeTime = 0;
	clrf	(_workStep)
	line	846
	
l4123:	
;main.c: 846: beepTime = 30;
	movlw	low(01Eh)
	movwf	(_beepTime)
	line	847
	
l4125:	
;main.c: 847: showWorkTime = 250;
	movlw	low(0FAh)
	movwf	(_showWorkTime)
	line	848
;main.c: 848: }
	goto	l4129
	line	849
	
l1147:	
	line	851
;main.c: 849: else
;main.c: 850: {
;main.c: 851: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	852
;main.c: 852: modelStep = 1;
	clrf	(_modelStep)
	incf	(_modelStep),f
	line	853
;main.c: 853: showWorkFlag = 1;
	clrf	(_showWorkFlag)
	incf	(_showWorkFlag),f
	line	854
	
l4127:	
;main.c: 854: showWorkTime = 250;
	movlw	low(0FAh)
	movwf	(_showWorkTime)
	line	855
;main.c: 855: beepTime = 30;
	movlw	low(01Eh)
	movwf	(_beepTime)
	line	858
	
l4129:	
;main.c: 856: }
;main.c: 857: }
;main.c: 858: if(workStep == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l4133
u2610:
	goto	l1150
	line	862
	
l4133:	
;main.c: 861: }
;main.c: 862: kclick = keyRead4(0x40 & (~PORTA));
	bsf	status, 5	;RP0=1, select bank1
	comf	(134)^080h,w	;volatile
	andlw	040h
	fcall	_keyRead4
	movwf	(keyCtr@kclick)
	line	863
	
l4135:	
;main.c: 863: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l1151
u2620:
	line	865
	
l4137:	
;main.c: 864: {
;main.c: 865: if(workStep < 18)
	movlw	low(012h)
	subwf	(_workStep),w
	skipnc
	goto	u2631
	goto	u2630
u2631:
	goto	l1152
u2630:
	line	867
	
l4139:	
;main.c: 866: {
;main.c: 867: workStep++;
	incf	(_workStep),f
	line	868
	
l4141:	
;main.c: 868: beepTime = 30;
	movlw	low(01Eh)
	movwf	(_beepTime)
	line	869
	
l1152:	
	line	870
;main.c: 869: }
;main.c: 870: if(showWorkFlag == 0)
	movf	((_showWorkFlag)),w
	btfss	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l1153
u2640:
	line	872
	
l4143:	
;main.c: 871: {
;main.c: 872: showWorkFlag = 1;
	clrf	(_showWorkFlag)
	incf	(_showWorkFlag),f
	line	873
	
l4145:	
;main.c: 873: shanshuoTime = 200;
	movlw	low(0C8h)
	movwf	(_shanshuoTime)
	line	874
	
l1153:	
	line	875
;main.c: 874: }
;main.c: 875: showWorkTime = 250;
	movlw	low(0FAh)
	movwf	(_showWorkTime)
	line	876
	
l1151:	
	line	877
;main.c: 876: }
;main.c: 877: TRISA = 0x6A;
	movlw	low(06Ah)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	878
;main.c: 878: WPUA = 0x48;
	movlw	low(048h)
	movwf	(136)^080h	;volatile
	line	879
;main.c: 879: TRISB = 0xE0;
	movlw	low(0E0h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	880
;main.c: 880: WPUB = 0x80;
	movlw	low(080h)
	movwf	(8)	;volatile
	line	881
	
l4147:	
;main.c: 881: RA7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1079/8)^080h,(1079)&7	;volatile
	line	882
	
l4149:	
;main.c: 882: kclick = keyRead2(0x80 & (~PORTB));
	bcf	status, 5	;RP0=0, select bank0
	comf	(6),w	;volatile
	andlw	080h
	fcall	_keyRead2
	movwf	(keyCtr@kclick)
	line	883
	
l4151:	
;main.c: 883: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l4169
u2650:
	line	885
	
l4153:	
;main.c: 884: {
;main.c: 885: if(++modelStep > 18)
	movlw	low(013h)
	incf	(_modelStep),f
	subwf	((_modelStep)),w
	skipc
	goto	u2661
	goto	u2660
u2661:
	goto	l4157
u2660:
	line	887
	
l4155:	
;main.c: 886: {
;main.c: 887: modelStep = 1;
	clrf	(_modelStep)
	incf	(_modelStep),f
	line	889
	
l4157:	
;main.c: 888: }
;main.c: 889: beepTime = 30;
	movlw	low(01Eh)
	movwf	(_beepTime)
	line	890
	
l4159:	
;main.c: 890: workTime = 0;
	clrf	(_workTime)
	clrf	(_workTime+1)
	line	891
	
l4161:	
;main.c: 891: if(showWorkFlag == 1)
		decf	((_showWorkFlag)),w
	btfss	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l4167
u2670:
	line	893
	
l4163:	
;main.c: 892: {
;main.c: 893: showWorkFlag = 0;
	clrf	(_showWorkFlag)
	line	894
	
l4165:	
;main.c: 894: shanshuoTime = 200;
	movlw	low(0C8h)
	movwf	(_shanshuoTime)
	line	896
	
l4167:	
;main.c: 895: }
;main.c: 896: showWorkTime = 250;
	movlw	low(0FAh)
	movwf	(_showWorkTime)
	line	898
	
l4169:	
;main.c: 897: }
;main.c: 898: kclick = keyRead3(0x40 & (~PORTA));
	bsf	status, 5	;RP0=1, select bank1
	comf	(134)^080h,w	;volatile
	andlw	040h
	fcall	_keyRead3
	movwf	(keyCtr@kclick)
	line	899
	
l4171:	
;main.c: 899: if(kclick == 1)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l1150
u2680:
	line	901
	
l4173:	
;main.c: 900: {
;main.c: 901: if(workStep > 1)
	movlw	low(02h)
	subwf	(_workStep),w
	skipc
	goto	u2691
	goto	u2690
u2691:
	goto	l1158
u2690:
	line	903
	
l4175:	
;main.c: 902: {
;main.c: 903: workStep--;
	decf	(_workStep),f
	line	904
	
l4177:	
;main.c: 904: beepTime = 30;
	movlw	low(01Eh)
	movwf	(_beepTime)
	line	905
	
l1158:	
	line	906
;main.c: 905: }
;main.c: 906: if(showWorkFlag == 0)
	movf	((_showWorkFlag)),w
	btfss	status,2
	goto	u2701
	goto	u2700
u2701:
	goto	l1159
u2700:
	line	908
	
l4179:	
;main.c: 907: {
;main.c: 908: showWorkFlag = 1;
	clrf	(_showWorkFlag)
	incf	(_showWorkFlag),f
	line	909
	
l4181:	
;main.c: 909: shanshuoTime = 200;
	movlw	low(0C8h)
	movwf	(_shanshuoTime)
	line	910
	
l1159:	
	line	911
;main.c: 910: }
;main.c: 911: showWorkTime = 250;
	movlw	low(0FAh)
	movwf	(_showWorkTime)
	line	913
	
l1150:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead4

;; *************** function _keyRead4 *****************
;; Defined at:
;;		line 810 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	810
global __ptext11
__ptext11:	;psect for function _keyRead4
psect	text11
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	810
	global	__size_of_keyRead4
	__size_of_keyRead4	equ	__end_of_keyRead4-_keyRead4
	
_keyRead4:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead4: [wreg+status,2+status,0]
;keyRead4@keyStatus stored from wreg
	movwf	(keyRead4@keyStatus)
	line	812
	
l3649:	
;main.c: 812: if(keyStatus)
	movf	((keyRead4@keyStatus)),w
	btfsc	status,2
	goto	u1761
	goto	u1760
u1761:
	goto	l3657
u1760:
	line	814
	
l3651:	
;main.c: 813: {
;main.c: 814: keyCount4++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_keyCount4),f
	line	815
	
l3653:	
;main.c: 815: if(keyCount4 >= 120)
	movlw	low(078h)
	subwf	(_keyCount4),w
	skipc
	goto	u1771
	goto	u1770
u1771:
	goto	l3667
u1770:
	line	817
	
l3655:	
;main.c: 816: {
;main.c: 817: keyCount4 = 120;
	movlw	low(078h)
	movwf	(_keyCount4)
	goto	l3667
	line	822
	
l3657:	
;main.c: 820: else
;main.c: 821: {
;main.c: 822: if(keyCount4 >= 5)
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_keyCount4),w
	skipc
	goto	u1781
	goto	u1780
u1781:
	goto	l3665
u1780:
	line	824
	
l3659:	
;main.c: 823: {
;main.c: 824: keyCount4 = 0;
	clrf	(_keyCount4)
	line	825
	
l3661:	
;main.c: 825: return 1;
	movlw	low(01h)
	goto	l1143
	line	827
	
l3665:	
;main.c: 826: }
;main.c: 827: keyCount4 = 0;
	clrf	(_keyCount4)
	line	829
	
l3667:	
;main.c: 828: }
;main.c: 829: return 0;
	movlw	low(0)
	line	830
	
l1143:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead4
	__end_of_keyRead4:
	signat	_keyRead4,4217
	global	_keyRead3

;; *************** function _keyRead3 *****************
;; Defined at:
;;		line 788 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	788
global __ptext12
__ptext12:	;psect for function _keyRead3
psect	text12
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	788
	global	__size_of_keyRead3
	__size_of_keyRead3	equ	__end_of_keyRead3-_keyRead3
	
_keyRead3:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead3: [wreg+status,2+status,0]
;keyRead3@keyStatus stored from wreg
	movwf	(keyRead3@keyStatus)
	line	790
	
l3627:	
;main.c: 790: if(keyStatus)
	movf	((keyRead3@keyStatus)),w
	btfsc	status,2
	goto	u1731
	goto	u1730
u1731:
	goto	l3635
u1730:
	line	792
	
l3629:	
;main.c: 791: {
;main.c: 792: keyCount3++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_keyCount3),f
	line	793
	
l3631:	
;main.c: 793: if(keyCount3 >= 120)
	movlw	low(078h)
	subwf	(_keyCount3),w
	skipc
	goto	u1741
	goto	u1740
u1741:
	goto	l3645
u1740:
	line	795
	
l3633:	
;main.c: 794: {
;main.c: 795: keyCount3 = 120;
	movlw	low(078h)
	movwf	(_keyCount3)
	goto	l3645
	line	800
	
l3635:	
;main.c: 798: else
;main.c: 799: {
;main.c: 800: if(keyCount3 >= 5)
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_keyCount3),w
	skipc
	goto	u1751
	goto	u1750
u1751:
	goto	l3643
u1750:
	line	802
	
l3637:	
;main.c: 801: {
;main.c: 802: keyCount3 = 0;
	clrf	(_keyCount3)
	line	803
	
l3639:	
;main.c: 803: return 1;
	movlw	low(01h)
	goto	l1136
	line	805
	
l3643:	
;main.c: 804: }
;main.c: 805: keyCount3 = 0;
	clrf	(_keyCount3)
	line	807
	
l3645:	
;main.c: 806: }
;main.c: 807: return 0;
	movlw	low(0)
	line	808
	
l1136:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead3
	__end_of_keyRead3:
	signat	_keyRead3,4217
	global	_keyRead2

;; *************** function _keyRead2 *****************
;; Defined at:
;;		line 766 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	766
global __ptext13
__ptext13:	;psect for function _keyRead2
psect	text13
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	766
	global	__size_of_keyRead2
	__size_of_keyRead2	equ	__end_of_keyRead2-_keyRead2
	
_keyRead2:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead2: [wreg+status,2+status,0]
;keyRead2@keyStatus stored from wreg
	movwf	(keyRead2@keyStatus)
	line	768
	
l3605:	
;main.c: 768: if(keyStatus)
	movf	((keyRead2@keyStatus)),w
	btfsc	status,2
	goto	u1701
	goto	u1700
u1701:
	goto	l3613
u1700:
	line	770
	
l3607:	
;main.c: 769: {
;main.c: 770: keyCount2++;
	incf	(_keyCount2),f
	line	771
	
l3609:	
;main.c: 771: if(keyCount2 >= 120)
	movlw	low(078h)
	subwf	(_keyCount2),w
	skipc
	goto	u1711
	goto	u1710
u1711:
	goto	l3623
u1710:
	line	773
	
l3611:	
;main.c: 772: {
;main.c: 773: keyCount2 = 120;
	movlw	low(078h)
	movwf	(_keyCount2)
	goto	l3623
	line	778
	
l3613:	
;main.c: 776: else
;main.c: 777: {
;main.c: 778: if(keyCount2 >= 5)
	movlw	low(05h)
	subwf	(_keyCount2),w
	skipc
	goto	u1721
	goto	u1720
u1721:
	goto	l3621
u1720:
	line	780
	
l3615:	
;main.c: 779: {
;main.c: 780: keyCount2 = 0;
	clrf	(_keyCount2)
	line	781
	
l3617:	
;main.c: 781: return 1;
	movlw	low(01h)
	goto	l1129
	line	783
	
l3621:	
;main.c: 782: }
;main.c: 783: keyCount2 = 0;
	clrf	(_keyCount2)
	line	785
	
l3623:	
;main.c: 784: }
;main.c: 785: return 0;
	movlw	low(0)
	line	786
	
l1129:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead2
	__end_of_keyRead2:
	signat	_keyRead2,4217
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 732 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	732
global __ptext14
__ptext14:	;psect for function _keyRead
psect	text14
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	732
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	734
	
l3565:	
;main.c: 734: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u1651
	goto	u1650
u1651:
	goto	l3581
u1650:
	line	736
	
l3567:	
;main.c: 735: {
;main.c: 736: keyCount++;
	incf	(_keyCount),f
	line	737
	
l3569:	
;main.c: 737: if(keyCount >= 120)
	movlw	low(078h)
	subwf	(_keyCount),w
	skipc
	goto	u1661
	goto	u1660
u1661:
	goto	l3585
u1660:
	line	739
	
l3571:	
;main.c: 738: {
;main.c: 739: keyCount = 120;
	movlw	low(078h)
	movwf	(_keyCount)
	line	740
	
l3573:	
;main.c: 740: if(longPressFlag == 0)
	movf	((_longPressFlag)),w
	btfss	status,2
	goto	u1671
	goto	u1670
u1671:
	goto	l3585
u1670:
	line	742
	
l3575:	
;main.c: 741: {
;main.c: 742: longPressFlag = 1;
	clrf	(_longPressFlag)
	incf	(_longPressFlag),f
	line	743
	
l3577:	
;main.c: 743: return 2;
	movlw	low(02h)
	goto	l1118
	line	749
	
l3581:	
;main.c: 747: else
;main.c: 748: {
;main.c: 749: if(keyCount >= 120)
	movlw	low(078h)
	subwf	(_keyCount),w
	skipc
	goto	u1681
	goto	u1680
u1681:
	goto	l3591
u1680:
	line	751
	
l3583:	
;main.c: 750: {
;main.c: 751: keyCount = 0;
	clrf	(_keyCount)
	line	752
;main.c: 752: longPressFlag = 0;
	clrf	(_longPressFlag)
	line	753
	
l3585:	
;main.c: 753: return 0;
	movlw	low(0)
	goto	l1118
	line	755
	
l3591:	
;main.c: 755: else if(keyCount >= 5)
	movlw	low(05h)
	subwf	(_keyCount),w
	skipc
	goto	u1691
	goto	u1690
u1691:
	goto	l3583
u1690:
	line	757
	
l3593:	
;main.c: 756: {
;main.c: 757: keyCount = 0;
	clrf	(_keyCount)
	line	758
	
l3595:	
;main.c: 758: return 1;
	movlw	low(01h)
	line	764
	
l1118:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 490 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwmod
;;		_pwm1Stop
;;		_pwm2Init
;;		_pwm2Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	490
global __ptext15
__ptext15:	;psect for function _chrgCtr
psect	text15
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	490
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _chrgCtr: [wreg+status,2+status,0+pclath+cstack]
	line	492
	
l4429:	
;main.c: 492: if(0x02 & PORTA)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(134)^080h,(1)&7	;volatile
	goto	u3201
	goto	u3200
u3201:
	goto	l4543
u3200:
	line	495
	
l4431:	
;main.c: 493: {
;main.c: 495: chrgFlag = 1;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	496
	
l4433:	
;main.c: 497: ledLightTime = 0;
	clrf	(_workStep)
	line	498
	
l4435:	
;main.c: 498: pwm1Stop();
	fcall	_pwm1Stop
	line	499
	
l4437:	
;main.c: 499: if(protectFlag)
	movf	((_protectFlag)),w
	btfsc	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l4451
u3210:
	line	501
	
l4439:	
;main.c: 500: {
;main.c: 501: pwm2Stop();
	fcall	_pwm2Stop
	line	502
	
l4441:	
;main.c: 502: maxduty = 0;
	clrf	(_maxduty)
	line	503
	
l4443:	
;main.c: 503: if(protectFlag == 1 && tempData < 1530)
		decf	((_protectFlag)),w
	btfss	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l1058
u3220:
	
l4445:	
	movlw	05h
	subwf	(_tempData+1),w
	movlw	0FAh
	skipnz
	subwf	(_tempData),w
	skipnc
	goto	u3231
	goto	u3230
u3231:
	goto	l1058
u3230:
	line	505
	
l4447:	
;main.c: 504: {
;main.c: 505: protectFlag = 0;
	clrf	(_protectFlag)
	line	506
;main.c: 506: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	goto	l1058
	line	510
	
l4451:	
;main.c: 509: }
;main.c: 510: if(tempData < 1118)
	movlw	04h
	subwf	(_tempData+1),w
	movlw	05Eh
	skipnz
	subwf	(_tempData),w
	skipnc
	goto	u3241
	goto	u3240
u3241:
	goto	l4457
u3240:
	line	512
	
l4453:	
;main.c: 511: {
;main.c: 512: chrgMode = 0;
	clrf	(_chrgMode)
	line	513
;main.c: 513: lockCount = 0;
	clrf	(_lockCount)
	line	514
	
l4455:	
;main.c: 514: chrgMaxAD = 5;
	movlw	low(05h)
	movwf	(_chrgMaxAD)
	line	515
;main.c: 515: }
	goto	l4487
	line	516
	
l4457:	
;main.c: 516: else if(tempData < 1230)
	movlw	04h
	subwf	(_tempData+1),w
	movlw	0CEh
	skipnz
	subwf	(_tempData),w
	skipnc
	goto	u3251
	goto	u3250
u3251:
	goto	l4463
u3250:
	line	518
	
l4459:	
;main.c: 517: {
;main.c: 518: chrgMode = 0;
	clrf	(_chrgMode)
	line	519
;main.c: 519: lockCount = 0;
	clrf	(_lockCount)
	line	520
	
l4461:	
;main.c: 520: chrgMaxAD = 9;
	movlw	low(09h)
	movwf	(_chrgMaxAD)
	line	521
;main.c: 521: }
	goto	l4487
	line	522
	
l4463:	
;main.c: 522: else if(tempData < 1530)
	movlw	05h
	subwf	(_tempData+1),w
	movlw	0FAh
	skipnz
	subwf	(_tempData),w
	skipnc
	goto	u3261
	goto	u3260
u3261:
	goto	l4477
u3260:
	line	524
	
l4465:	
;main.c: 523: {
;main.c: 524: chrgMode = 1;
	clrf	(_chrgMode)
	incf	(_chrgMode),f
	line	525
	
l4467:	
;main.c: 525: chrgMaxAD = 30;
	movlw	low(01Eh)
	movwf	(_chrgMaxAD)
	line	526
	
l4469:	
;main.c: 526: lockCount = 0;
	clrf	(_lockCount)
	line	527
	
l4471:	
;main.c: 527: if(++chrgBatCount > 200)
	movlw	low(0C9h)
	incf	(_chrgBatCount),f
	subwf	((_chrgBatCount)),w
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l1062
u3270:
	line	529
	
l4473:	
;main.c: 528: {
;main.c: 529: chrgBatCount = 200;
	movlw	low(0C8h)
	movwf	(_chrgBatCount)
	line	530
	
l4475:	
;main.c: 530: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	goto	l4487
	line	537
	
l4477:	
;main.c: 535: {
;main.c: 537: if(++lockCount > 200)
	movlw	low(0C9h)
	incf	(_lockCount),f
	subwf	((_lockCount)),w
	skipc
	goto	u3281
	goto	u3280
u3281:
	goto	l4485
u3280:
	line	539
	
l4479:	
;main.c: 538: {
;main.c: 539: lockCount = 200;
	movlw	low(0C8h)
	movwf	(_lockCount)
	line	540
	
l4481:	
;main.c: 540: chrgBatCount = 0;
	clrf	(_chrgBatCount)
	line	541
	
l4483:	
;main.c: 541: chrgMode = 2;
	movlw	low(02h)
	movwf	(_chrgMode)
	line	543
	
l4485:	
;main.c: 542: }
;main.c: 543: chrgMaxAD = 30;
	movlw	low(01Eh)
	movwf	(_chrgMaxAD)
	goto	l4487
	line	545
	
l1062:	
	
l4487:	
;main.c: 544: }
;main.c: 545: if(chrgMode == 2 && chrgAD < 4)
		movlw	2
	xorwf	((_chrgMode)),w
	btfss	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l4497
u3290:
	
l4489:	
	movlw	0
	subwf	(_chrgAD+1),w
	movlw	04h
	skipnz
	subwf	(_chrgAD),w
	skipnc
	goto	u3301
	goto	u3300
u3301:
	goto	l4497
u3300:
	line	547
	
l4491:	
;main.c: 546: {
;main.c: 547: if(++fullCount >= 250)
	movlw	low(0FAh)
	incf	(_fullCount),f
	subwf	((_fullCount)),w
	skipc
	goto	u3311
	goto	u3310
u3311:
	goto	l4499
u3310:
	line	549
	
l4493:	
;main.c: 548: {
;main.c: 549: fullCount = 250;
	movlw	low(0FAh)
	movwf	(_fullCount)
	line	550
	
l4495:	
;main.c: 550: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	goto	l4499
	line	555
	
l4497:	
;main.c: 553: else
;main.c: 554: {
;main.c: 555: fullCount = 0;
	clrf	(_fullCount)
	line	558
	
l4499:	
;main.c: 556: }
;main.c: 558: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u3321
	goto	u3320
u3321:
	goto	l4505
u3320:
	line	560
	
l4501:	
;main.c: 559: {
;main.c: 560: pwm2Stop();
	fcall	_pwm2Stop
	line	561
	
l4503:	
;main.c: 561: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	line	562
;main.c: 562: }
	goto	l1058
	line	567
	
l4505:	
;main.c: 563: else
;main.c: 564: {
;main.c: 567: if(tempData > 1550 || chrgAD >chrgMaxAD)
	movlw	06h
	subwf	(_tempData+1),w
	movlw	0Fh
	skipnz
	subwf	(_tempData),w
	skipnc
	goto	u3331
	goto	u3330
u3331:
	goto	l4509
u3330:
	
l4507:	
	movf	(_chrgMaxAD),w
	movwf	(??_chrgCtr+0)+0
	clrf	(??_chrgCtr+0)+0+1
	movf	(_chrgAD+1),w
	subwf	1+(??_chrgCtr+0)+0,w
	skipz
	goto	u3345
	movf	(_chrgAD),w
	subwf	0+(??_chrgCtr+0)+0,w
u3345:
	skipnc
	goto	u3341
	goto	u3340
u3341:
	goto	l4519
u3340:
	line	569
	
l4509:	
;main.c: 568: {
;main.c: 569: if(++subTime > chrgWaitTime)
	incf	(_subTime),f
	movf	((_subTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u3351
	goto	u3350
u3351:
	goto	l4517
u3350:
	line	571
	
l4511:	
;main.c: 570: {
;main.c: 571: maxduty = maxduty - 1;
	movlw	low(0FFh)
	addwf	(_maxduty),f
	line	572
	
l4513:	
;main.c: 572: subTime = 0;
	clrf	(_subTime)
	line	573
	
l4515:	
;main.c: 573: chrgWaitTime = 40;
	movlw	low(028h)
	movwf	(_chrgWaitTime)
	line	575
	
l4517:	
;main.c: 574: }
;main.c: 575: addTime = 0;
	clrf	(_addTime)
	line	576
;main.c: 576: }
	goto	l4533
	line	577
	
l4519:	
;main.c: 577: else if(tempData < 1550 && chrgAD <chrgMaxAD)
	movlw	06h
	subwf	(_tempData+1),w
	movlw	0Eh
	skipnz
	subwf	(_tempData),w
	skipnc
	goto	u3361
	goto	u3360
u3361:
	goto	l4533
u3360:
	
l4521:	
	movf	(_chrgMaxAD),w
	movwf	(??_chrgCtr+0)+0
	clrf	(??_chrgCtr+0)+0+1
	movf	1+(??_chrgCtr+0)+0,w
	subwf	(_chrgAD+1),w
	skipz
	goto	u3375
	movf	0+(??_chrgCtr+0)+0,w
	subwf	(_chrgAD),w
u3375:
	skipnc
	goto	u3371
	goto	u3370
u3371:
	goto	l4533
u3370:
	line	579
	
l4523:	
;main.c: 578: {
;main.c: 579: if(++addTime > chrgWaitTime)
	incf	(_addTime),f
	movf	((_addTime)),w
	subwf	(_chrgWaitTime),w
	skipnc
	goto	u3381
	goto	u3380
u3381:
	goto	l4531
u3380:
	line	581
	
l4525:	
;main.c: 580: {
;main.c: 581: if(chrgAD < (chrgMaxAD-3))
	movf	(_chrgMaxAD),w
	addlw	low(0FFFDh)
	movwf	(??_chrgCtr+0)+0
	movlw	high(0FFFDh)
	skipnc
	movlw	(high(0FFFDh)+1)&0ffh
	movwf	((??_chrgCtr+0)+0)+1
	movf	1+(??_chrgCtr+0)+0,w
	subwf	(_chrgAD+1),w
	skipz
	goto	u3395
	movf	0+(??_chrgCtr+0)+0,w
	subwf	(_chrgAD),w
u3395:
	skipnc
	goto	u3391
	goto	u3390
u3391:
	goto	l4529
u3390:
	line	583
	
l4527:	
;main.c: 582: {
;main.c: 583: maxduty = maxduty + 1;
	incf	(_maxduty),f
	line	585
	
l4529:	
;main.c: 584: }
;main.c: 585: addTime = 0;
	clrf	(_addTime)
	line	587
	
l4531:	
;main.c: 586: }
;main.c: 587: subTime = 0;
	clrf	(_subTime)
	line	589
	
l4533:	
;main.c: 588: }
;main.c: 589: if(maxduty < 1)
	movf	((_maxduty)),w
	btfss	status,2
	goto	u3401
	goto	u3400
u3401:
	goto	l4537
u3400:
	line	590
	
l4535:	
;main.c: 590: maxduty = 1;
	clrf	(_maxduty)
	incf	(_maxduty),f
	line	591
	
l4537:	
;main.c: 591: if(maxduty > 45)
	movlw	low(02Eh)
	subwf	(_maxduty),w
	skipc
	goto	u3411
	goto	u3410
u3411:
	goto	l1082
u3410:
	line	592
	
l4539:	
;main.c: 592: maxduty = 45;
	movlw	low(02Dh)
	movwf	(_maxduty)
	
l1082:	
	line	593
;main.c: 593: PWMD4L = maxduty;
	movf	(_maxduty),w
	movwf	(27)	;volatile
	line	594
	
l4541:	
;main.c: 594: pwm2Init();
	fcall	_pwm2Init
	goto	l1058
	line	603
	
l4543:	
;main.c: 601: else
;main.c: 602: {
;main.c: 603: protectFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_protectFlag)
	line	604
	
l4545:	
;main.c: 604: chrgWaitTime = 20;
	movlw	low(014h)
	movwf	(_chrgWaitTime)
	line	605
	
l4547:	
;main.c: 605: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	606
	
l4549:	
;main.c: 606: maxduty = 0;
	clrf	(_maxduty)
	line	607
	
l4551:	
;main.c: 607: pwm2Stop();
	fcall	_pwm2Stop
	line	608
	
l4553:	
;main.c: 608: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	611
	
l4555:	
;main.c: 611: if(preBatValue > batValue + 1)
	movf	(_batValue),w
	addlw	low(01h)
	movwf	(??_chrgCtr+0)+0
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((??_chrgCtr+0)+0)+1
	movf	1+(??_chrgCtr+0)+0,w
	xorlw	80h
	movwf	(??_chrgCtr+2)+0
	movlw	80h
	subwf	(??_chrgCtr+2)+0,w
	skipz
	goto	u3425
	movf	(_preBatValue),w
	subwf	0+(??_chrgCtr+0)+0,w
u3425:

	skipnc
	goto	u3421
	goto	u3420
u3421:
	goto	l1058
u3420:
	line	613
	
l4557:	
;main.c: 612: {
;main.c: 613: if(count5s % 1000 == 0)
	movlw	0E8h
	movwf	(___lwmod@divisor)
	movlw	03h
	movwf	((___lwmod@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_count5s+1),w
	movwf	(___lwmod@dividend+1)
	movf	(_count5s),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	((0+(?___lwmod))),w
iorwf	((1+(?___lwmod))),w
	btfss	status,2
	goto	u3431
	goto	u3430
u3431:
	goto	l1058
u3430:
	line	616
	
l4559:	
;main.c: 614: {
;main.c: 616: preBatValue = preBatValue - 1;
	movlw	low(0FFh)
	addwf	(_preBatValue),f
	line	621
	
l1058:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_pwm2Init

;; *************** function _pwm2Init *****************
;; Defined at:
;;		line 466 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_chrgCtr
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	466
global __ptext16
__ptext16:	;psect for function _pwm2Init
psect	text16
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	466
	global	__size_of_pwm2Init
	__size_of_pwm2Init	equ	__end_of_pwm2Init-_pwm2Init
	
_pwm2Init:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm2Init: [wreg+status,2+status,0]
	line	468
	
l3549:	
;main.c: 468: if(chrgPWMFlag)
	movf	((_chrgPWMFlag)),w
	btfsc	status,2
	goto	u1641
	goto	u1640
u1641:
	goto	l1048
u1640:
	goto	l1049
	line	471
	
l1048:	
	line	472
;main.c: 471: }
;main.c: 472: chrgPWMFlag = 1;
	clrf	(_chrgPWMFlag)
	incf	(_chrgPWMFlag),f
	line	473
	
l3553:	
;main.c: 473: PWMTH = 0x00;
	clrf	(24)	;volatile
	line	474
	
l3555:	
;main.c: 474: PWMT4L = 70;
	movlw	low(046h)
	movwf	(28)	;volatile
	line	475
	
l3557:	
;main.c: 475: PWMD4L = 5;
	movlw	low(05h)
	movwf	(27)	;volatile
	line	476
	
l3559:	
;main.c: 476: PWMCON1 = 0xC0;
	movlw	low(0C0h)
	movwf	(22)	;volatile
	line	477
	
l3561:	
;main.c: 477: PWMCON2 = 0x00;
	clrf	(29)	;volatile
	line	478
	
l3563:	
;main.c: 478: PWMCON0 |= 0x30;
	movlw	low(030h)
	iorwf	(21),f	;volatile
	line	479
	
l1049:	
	return
	opt stack 0
GLOBAL	__end_of_pwm2Init
	__end_of_pwm2Init:
	signat	_pwm2Init,89
	global	_pwm1Stop

;; *************** function _pwm1Stop *****************
;; Defined at:
;;		line 458 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_chrgCtr
;;		_workCtr
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	458
global __ptext17
__ptext17:	;psect for function _pwm1Stop
psect	text17
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	458
	global	__size_of_pwm1Stop
	__size_of_pwm1Stop	equ	__end_of_pwm1Stop-_pwm1Stop
	
_pwm1Stop:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm1Stop: [status,2]
	line	460
	
l3543:	
;main.c: 460: PWMD0L = 0;
	clrf	(25)	;volatile
	line	461
	
l3545:	
;main.c: 461: PWMCON0 &= 0xFE;
	bcf	(21)+(0/8),(0)&7	;volatile
	line	462
	
l3547:	
;main.c: 462: PORTA &= 0xFE;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(0/8),(0)&7	;volatile
	line	463
;main.c: 463: motorPWMFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_motorPWMFlag)
	line	464
	
l1045:	
	return
	opt stack 0
GLOBAL	__end_of_pwm1Stop
	__end_of_pwm1Stop:
	signat	_pwm1Stop,89
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    6[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_chrgCtr
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
	line	6
global __ptext18
__ptext18:	;psect for function ___lwmod
psect	text18
	file	"C:\mcuproject\scm\SCMCU_IDE_V2.00.16_Beta5\SCMCU_IDE_V2.00.16_Beta5\data\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l3755:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u1911
	goto	u1910
u1911:
	goto	l3771
u1910:
	line	14
	
l3757:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l3761
	line	16
	
l3759:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l3761:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u1921
	goto	u1920
u1921:
	goto	l3759
u1920:
	line	20
	
l3763:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u1935
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u1935:
	skipc
	goto	u1931
	goto	u1930
u1931:
	goto	l3767
u1930:
	line	21
	
l3765:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l3767:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l3769:	
	decfsz	(___lwmod@counter),f
	goto	u1941
	goto	u1940
u1941:
	goto	l3763
u1940:
	line	25
	
l3771:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l2456:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	_checkOutA

;; *************** function _checkOutA *****************
;; Defined at:
;;		line 359 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
;;		_pwm2Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	359
global __ptext19
__ptext19:	;psect for function _checkOutA
psect	text19
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	359
	global	__size_of_checkOutA
	__size_of_checkOutA	equ	__end_of_checkOutA-_checkOutA
	
_checkOutA:	
;incstack = 0
	opt	stack 5
; Regs used in _checkOutA: [wreg+status,2+status,0+pclath+cstack]
	line	362
	
l3807:	
;main.c: 362: test_adc = ADC_Sample(5, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(05h)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	363
	
l3809:	
;main.c: 363: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u1961
	goto	u1960
u1961:
	goto	l1019
u1960:
	line	365
	
l3811:	
;main.c: 364: {
;main.c: 365: chrgAD = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_chrgAD+1)
	movf	(_adresult),w	;volatile
	movwf	(_chrgAD)
	line	366
	
l3813:	
;main.c: 366: if(chrgFlag && adresult > 100)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u1971
	goto	u1970
u1971:
	goto	l1019
u1970:
	
l3815:	
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	065h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u1981
	goto	u1980
u1981:
	goto	l1019
u1980:
	line	368
	
l3817:	
;main.c: 367: {
;main.c: 368: pwm2Stop();
	fcall	_pwm2Stop
	line	369
	
l3819:	
;main.c: 369: PORTB &= 0xF7;
	bcf	(6)+(3/8),(3)&7	;volatile
	line	370
	
l3821:	
;main.c: 370: protectFlag = 1;
	clrf	(_protectFlag)
	incf	(_protectFlag),f
	line	371
	
l3823:	
;main.c: 371: PWMD4L = 0;
	clrf	(27)	;volatile
	line	372
	
l3825:	
;main.c: 372: maxduty = 0;
	clrf	(_maxduty)
	line	376
	
l1019:	
	return
	opt stack 0
GLOBAL	__end_of_checkOutA
	__end_of_checkOutA:
	signat	_checkOutA,89
	global	_checkBatAD

;; *************** function _checkBatAD *****************
;; Defined at:
;;		line 378 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ADC_Sample
;;		_pwm2Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	378
global __ptext20
__ptext20:	;psect for function _checkBatAD
psect	text20
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	378
	global	__size_of_checkBatAD
	__size_of_checkBatAD	equ	__end_of_checkBatAD-_checkBatAD
	
_checkBatAD:	
;incstack = 0
	opt	stack 5
; Regs used in _checkBatAD: [wreg+status,2+status,0+pclath+cstack]
	line	381
	
l3827:	
;main.c: 381: test_adc = ADC_Sample(13, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0Dh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	382
	
l3829:	
;main.c: 382: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u1991
	goto	u1990
u1991:
	goto	l3863
u1990:
	line	384
	
l3831:	
;main.c: 383: {
;main.c: 384: tempData = adresult;
	movf	(_adresult+1),w	;volatile
	movwf	(_tempData+1)
	movf	(_adresult),w	;volatile
	movwf	(_tempData)
	line	385
	
l3833:	
;main.c: 385: if(chrgFlag && tempData > 1676)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u2001
	goto	u2000
u2001:
	goto	l3845
u2000:
	
l3835:	
	movlw	06h
	subwf	(_tempData+1),w
	movlw	08Dh
	skipnz
	subwf	(_tempData),w
	skipc
	goto	u2011
	goto	u2010
u2011:
	goto	l3845
u2010:
	line	387
	
l3837:	
;main.c: 386: {
;main.c: 387: pwm2Stop();
	fcall	_pwm2Stop
	line	388
	
l3839:	
;main.c: 388: protectFlag = 1;
	clrf	(_protectFlag)
	incf	(_protectFlag),f
	line	389
	
l3841:	
;main.c: 389: PWMD4L = 0;
	clrf	(27)	;volatile
	line	390
	
l3843:	
;main.c: 390: maxduty = 0;
	clrf	(_maxduty)
	line	392
	
l3845:	
;main.c: 391: }
;main.c: 392: if(tempData < 1118)
	movlw	04h
	subwf	(_tempData+1),w
	movlw	05Eh
	skipnz
	subwf	(_tempData),w
	skipnc
	goto	u2021
	goto	u2020
u2021:
	goto	l3849
u2020:
	line	394
	
l3847:	
;main.c: 395: fullTime = 0;
	clrf	(_batValue)
	line	396
;main.c: 396: }
	goto	l3863
	line	400
	
l3849:	
;main.c: 400: if(tempData >= 1400)
	movlw	05h
	subwf	(_tempData+1),w
	movlw	078h
	skipnz
	subwf	(_tempData),w
	skipc
	goto	u2031
	goto	u2030
u2031:
	goto	l3853
u2030:
	line	403
	
l3851:	
;main.c: 401: {
;main.c: 403: batValue = ((tempData - 1400) /2) + 31;
	movf	(_tempData),w
	addlw	low(0FA88h)
	movwf	(??_checkBatAD+0)+0
	movf	(_tempData+1),w
	skipnc
	addlw	1
	addlw	high(0FA88h)
	movwf	1+(??_checkBatAD+0)+0
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	movf	0+(??_checkBatAD+0)+0,w
	addlw	01Fh
	movwf	(_batValue)
	line	404
;main.c: 404: }
	goto	l3859
	line	405
	
l3853:	
;main.c: 405: else if(tempData >= 1340)
	movlw	05h
	subwf	(_tempData+1),w
	movlw	03Ch
	skipnz
	subwf	(_tempData),w
	skipc
	goto	u2041
	goto	u2040
u2041:
	goto	l3857
u2040:
	line	408
	
l3855:	
;main.c: 406: {
;main.c: 408: batValue = ((tempData - 1340) /4) + 16;
	movf	(_tempData),w
	addlw	low(0FAC4h)
	movwf	(??_checkBatAD+0)+0
	movf	(_tempData+1),w
	skipnc
	addlw	1
	addlw	high(0FAC4h)
	movwf	1+(??_checkBatAD+0)+0
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	movf	0+(??_checkBatAD+0)+0,w
	addlw	010h
	movwf	(_batValue)
	line	409
;main.c: 409: }
	goto	l3859
	line	412
	
l3857:	
;main.c: 410: else
;main.c: 411: {
;main.c: 412: batValue = (tempData - 1118) / 16;
	movf	(_tempData),w
	addlw	low(0FBA2h)
	movwf	(??_checkBatAD+0)+0
	movf	(_tempData+1),w
	skipnc
	addlw	1
	addlw	high(0FBA2h)
	movwf	1+(??_checkBatAD+0)+0
	movlw	04h
u2055:
	clrc
	rrf	(??_checkBatAD+0)+1,f
	rrf	(??_checkBatAD+0)+0,f
	addlw	-1
	skipz
	goto	u2055
	movf	0+(??_checkBatAD+0)+0,w
	movwf	(_batValue)
	line	414
	
l3859:	
;main.c: 413: }
;main.c: 414: if(batValue > 99)
	movlw	low(064h)
	subwf	(_batValue),w
	skipc
	goto	u2061
	goto	u2060
u2061:
	goto	l3863
u2060:
	line	415
	
l3861:	
;main.c: 415: batValue = 99;
	movlw	low(063h)
	movwf	(_batValue)
	line	420
	
l3863:	
;main.c: 417: }
;main.c: 419: }
;main.c: 420: test_adc = ADC_Sample(14, 5);
	movlw	low(05h)
	movwf	(ADC_Sample@adldo)
	movlw	low(0Eh)
	fcall	_ADC_Sample
	movwf	(_test_adc)	;volatile
	line	421
	
l3865:	
;main.c: 421: if (0xA5 == test_adc)
		movlw	165
	xorwf	((_test_adc)),w	;volatile
	btfss	status,2
	goto	u2071
	goto	u2070
u2071:
	goto	l1038
u2070:
	line	423
	
l3867:	
;main.c: 422: {
;main.c: 423: if(adresult > 100)
	movlw	0
	subwf	(_adresult+1),w	;volatile
	movlw	065h
	skipnz
	subwf	(_adresult),w	;volatile
	skipc
	goto	u2081
	goto	u2080
u2081:
	goto	l1038
u2080:
	line	425
	
l3869:	
;main.c: 424: {
;main.c: 425: if(adresult > 800 || (tempData - adresult) > 800)
	movlw	03h
	subwf	(_adresult+1),w	;volatile
	movlw	021h
	skipnz
	subwf	(_adresult),w	;volatile
	skipnc
	goto	u2091
	goto	u2090
u2091:
	goto	l3873
u2090:
	
l3871:	
	movf	(_adresult),w	;volatile
	subwf	(_tempData),w
	movwf	(??_checkBatAD+0)+0
	movf	(_adresult+1),w	;volatile
	skipc
	incf	(_adresult+1),w	;volatile
	subwf	(_tempData+1),w
	movwf	1+(??_checkBatAD+0)+0
	movlw	03h
	subwf	1+(??_checkBatAD+0)+0,w
	movlw	021h
	skipnz
	subwf	0+(??_checkBatAD+0)+0,w
	skipc
	goto	u2101
	goto	u2100
u2101:
	goto	l3879
u2100:
	line	428
	
l3873:	
;main.c: 426: {
;main.c: 428: if(++countHalfFull > 200)
	movlw	low(0C9h)
	incf	(_countHalfFull),f
	subwf	((_countHalfFull)),w
	skipc
	goto	u2111
	goto	u2110
u2111:
	goto	l1032
u2110:
	line	430
	
l3875:	
;main.c: 429: {
;main.c: 430: countHalfFull = 0;
	clrf	(_countHalfFull)
	line	431
	
l3877:	
;main.c: 431: protectFlag = 2;
	movlw	low(02h)
	movwf	(_protectFlag)
	goto	l1038
	line	436
	
l3879:	
;main.c: 434: else
;main.c: 435: {
;main.c: 436: countHalfFull = 0;
	clrf	(_countHalfFull)
	goto	l1038
	line	438
	
l1032:	
	line	440
	
l1038:	
	return
	opt stack 0
GLOBAL	__end_of_checkBatAD
	__end_of_checkBatAD:
	signat	_checkBatAD,89
	global	_pwm2Stop

;; *************** function _pwm2Stop *****************
;; Defined at:
;;		line 481 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkOutA
;;		_checkBatAD
;;		_chrgCtr
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	481
global __ptext21
__ptext21:	;psect for function _pwm2Stop
psect	text21
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	481
	global	__size_of_pwm2Stop
	__size_of_pwm2Stop	equ	__end_of_pwm2Stop-_pwm2Stop
	
_pwm2Stop:	
;incstack = 0
	opt	stack 5
; Regs used in _pwm2Stop: [status,2]
	line	483
	
l3521:	
;main.c: 483: PWMD4L = 0;
	clrf	(27)	;volatile
	line	484
	
l3523:	
;main.c: 484: PWMCON0 &= 0xEF;
	bcf	(21)+(4/8),(4)&7	;volatile
	line	485
	
l3525:	
;main.c: 485: PORTA &= 0xEF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(4/8),(4)&7	;volatile
	line	486
;main.c: 486: chrgPWMFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgPWMFlag)
	line	487
	
l1052:	
	return
	opt stack 0
GLOBAL	__end_of_pwm2Stop
	__end_of_pwm2Stop:
	signat	_pwm2Stop,89
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 287 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
;;		_checkOutA
;;		_checkBatAD
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	287
global __ptext22
__ptext22:	;psect for function _ADC_Sample
psect	text22
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	287
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 5
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ADC_Sample@adch)
	line	289
	
l3449:	
;main.c: 289: volatile unsigned long adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	290
	
l3451:	
;main.c: 290: volatile unsigned int admin = 0, admax = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	291
;main.c: 291: volatile unsigned int ad_temp = 0;
	clrf	(ADC_Sample@ad_temp)	;volatile
	clrf	(ADC_Sample@ad_temp+1)	;volatile
	line	293
	
l3453:	
;main.c: 293: if ((!LDO_EN) && (adldo & 0x04) )
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1202/8)^080h,(1202)&7	;volatile
	goto	u1481
	goto	u1480
u1481:
	goto	l3459
u1480:
	
l3455:	
	btfss	(ADC_Sample@adldo),(2)&7
	goto	u1491
	goto	u1490
u1491:
	goto	l3459
u1490:
	line	296
	
l3457:	
;main.c: 294: {
;main.c: 296: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	297
;main.c: 297: _delay((unsigned long)((100)*(8000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	66
movwf	((??_ADC_Sample+0)+0),f
	u3857:
decfsz	(??_ADC_Sample+0)+0,f
	goto	u3857
	nop
opt asmopt_pop

	line	298
;main.c: 298: }
	goto	l3461
	line	300
	
l3459:	
;main.c: 299: else
;main.c: 300: ADCON1 = adldo;
	movf	(ADC_Sample@adldo),w
	movwf	(150)^080h	;volatile
	line	302
	
l3461:	
;main.c: 302: if(adch & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(ADC_Sample@adch),(4)&7
	goto	u1501
	goto	u1500
u1501:
	goto	l3467
u1500:
	line	304
	
l3463:	
;main.c: 303: {
;main.c: 304: CHS4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1206/8)^080h,(1206)&7	;volatile
	line	305
	
l3465:	
;main.c: 305: adch &= 0x0f;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(ADC_Sample@adch),f
	line	307
	
l3467:	
	line	308
	
l3469:	
;main.c: 308: for (i = 0; i < 10; i++)
	clrf	(ADC_Sample@i)
	line	310
	
l3475:	
;main.c: 309: {
;main.c: 310: ADCON0 = (unsigned char)(0X41 | (adch << 2));
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
	line	311
# 311 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
nop ;# 
	line	312
# 312 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
nop ;# 
	line	313
# 313 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
nop ;# 
	line	314
# 314 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
nop ;# 
psect	text22
	line	315
	
l3477:	
;main.c: 315: GODONE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1193/8)^080h,(1193)&7	;volatile
	line	317
	
l3479:	
;main.c: 317: unsigned char j = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ADC_Sample@j)
	line	318
;main.c: 318: while (GODONE)
	goto	l1003
	
l1004:	
	line	320
;main.c: 319: {
;main.c: 320: _delay((unsigned long)((2)*(8000000/4000000.0)));
		opt asmopt_push
	opt asmopt_off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	opt asmopt_pop

	line	322
;main.c: 322: if (0 == (--j))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decfsz	(ADC_Sample@j),f
	goto	u1521
	goto	u1520
u1521:
	goto	l1003
u1520:
	line	323
	
l3481:	
;main.c: 323: return 0;
	movlw	low(0)
	goto	l1006
	line	324
	
l1003:	
	line	318
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1193/8)^080h,(1193)&7	;volatile
	goto	u1531
	goto	u1530
u1531:
	goto	l1004
u1530:
	line	326
	
l3485:	
;main.c: 324: }
;main.c: 326: ad_temp = (unsigned int)((ADRESH << 4) + (ADRESL >> 4));
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
	
l3487:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(152)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	328
	
l3489:	
;main.c: 328: if (0 == admax)
	movf	((ADC_Sample@admax)),w	;volatile
iorwf	((ADC_Sample@admax+1)),w	;volatile
	btfss	status,2
	goto	u1541
	goto	u1540
u1541:
	goto	l3493
u1540:
	line	330
	
l3491:	
;main.c: 329: {
;main.c: 330: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	line	331
;main.c: 331: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	332
;main.c: 332: }
	goto	l1009
	line	333
	
l3493:	
;main.c: 333: else if (ad_temp > admax)
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
	goto	l3497
u1550:
	line	334
	
l3495:	
;main.c: 334: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)	;volatile
	goto	l1009
	line	335
	
l3497:	
;main.c: 335: else if (ad_temp < admin)
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
	goto	l1009
u1560:
	line	336
	
l3499:	
;main.c: 336: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)	;volatile
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)	;volatile
	line	338
	
l1009:	
;main.c: 338: adsum += ad_temp;
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

	line	308
	
l3501:	
	incf	(ADC_Sample@i),f
	
l3503:	
	movlw	low(0Ah)
	subwf	(ADC_Sample@i),w
	skipc
	goto	u1581
	goto	u1580
u1581:
	goto	l3475
u1580:
	line	340
	
l3505:	
;main.c: 339: }
;main.c: 340: adsum -= admax;
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

	line	341
;main.c: 341: if (adsum >= admin)
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
	goto	l1013
u1600:
	line	342
	
l3507:	
;main.c: 342: adsum -= admin;
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

	goto	l3509
	line	343
	
l1013:	
	line	344
;main.c: 343: else
;main.c: 344: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	346
	
l3509:	
;main.c: 346: adresult = adsum >> 3;
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
	line	348
	
l3511:	
;main.c: 348: adsum = 0;
	clrf	(ADC_Sample@adsum)	;volatile
	clrf	(ADC_Sample@adsum+1)	;volatile
	clrf	(ADC_Sample@adsum+2)	;volatile
	clrf	(ADC_Sample@adsum+3)	;volatile
	line	349
	
l3513:	
;main.c: 349: admin = 0;
	clrf	(ADC_Sample@admin)	;volatile
	clrf	(ADC_Sample@admin+1)	;volatile
	line	350
	
l3515:	
;main.c: 350: admax = 0;
	clrf	(ADC_Sample@admax)	;volatile
	clrf	(ADC_Sample@admax+1)	;volatile
	line	351
	
l3517:	
;main.c: 351: return 0xA5;
	movlw	low(0A5h)
	line	353
	
l1006:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,8313
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 219 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	line	219
global __ptext23
__ptext23:	;psect for function _Sleep_Mode
psect	text23
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	219
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 5
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	221
	
l3775:	
;main.c: 221: INTCON = 0;
	clrf	(11)	;volatile
	line	223
;main.c: 223: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	225
	
l3777:	
;main.c: 225: TRISA = 0xE2;
	movlw	low(0E2h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	226
	
l3779:	
;main.c: 226: PORTA = 0x00;
	clrf	(134)^080h	;volatile
	line	227
;main.c: 227: WPUA = 0xC0;
	movlw	low(0C0h)
	movwf	(136)^080h	;volatile
	line	228
;main.c: 228: TRISB = 0xE0;
	movlw	low(0E0h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	229
	
l3781:	
;main.c: 229: PORTB = 0;
	clrf	(6)	;volatile
	line	230
	
l3783:	
;main.c: 230: WPUB = 0x80;
	movlw	low(080h)
	movwf	(8)	;volatile
	line	231
;main.c: 231: TRISC = 0x00;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	232
;main.c: 232: PORTC = 0;
	clrf	(262)^0100h	;volatile
	line	234
;main.c: 234: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(149)^080h	;volatile
	line	235
;main.c: 235: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	237
;main.c: 237: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	239
	
l3785:	
;main.c: 239: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	240
	
l3787:	
;main.c: 240: T2CON = 0;
	clrf	(19)	;volatile
	line	241
;main.c: 241: IOCA = 0B00000010;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(137)^080h	;volatile
	line	242
;main.c: 242: IOCB = 0B10000000;
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	244
	
l3789:	
;main.c: 244: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	245
	
l3791:	
;main.c: 245: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	246
	
l3793:	
;main.c: 246: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	248
	
l3795:	
;main.c: 248: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	251
;main.c: 251: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	252
	
l3797:	
;main.c: 252: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	253
	
l3799:	
;main.c: 253: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	254
;main.c: 254: PORTB;
	movf	(6),w	;volatile
	line	256
# 256 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
clrwdt ;# 
	line	258
# 258 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
sleep ;# 
	line	260
# 260 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
nop ;# 
	line	261
# 261 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
clrwdt ;# 
psect	text23
	line	262
	
l3801:	
;main.c: 262: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u1951
	goto	u1950
u1951:
	goto	l3805
u1950:
	
l3803:	
	bcf	(107/8),(107)&7	;volatile
	line	264
	
l3805:	
;main.c: 264: Init_System();
	fcall	_Init_System
	line	265
	
l995:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 126 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	126
global __ptext24
__ptext24:	;psect for function _Init_System
psect	text24
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	126
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_System: [wreg+status,2]
	line	128
	
l3425:	
# 128 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
nop ;# 
	line	129
# 129 "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
clrwdt ;# 
psect	text24
	line	130
	
l3427:	
;main.c: 130: INTCON = 0;
	clrf	(11)	;volatile
	line	131
	
l3429:	
;main.c: 131: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	132
	
l3431:	
;main.c: 132: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	137
;main.c: 137: TRISA = 0xE2;
	movlw	low(0E2h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	138
	
l3433:	
;main.c: 138: PORTA = 0x00;
	clrf	(134)^080h	;volatile
	line	139
	
l3435:	
;main.c: 139: WPUA = 0xC0;
	movlw	low(0C0h)
	movwf	(136)^080h	;volatile
	line	140
	
l3437:	
;main.c: 140: TRISB = 0xE0;
	movlw	low(0E0h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	141
	
l3439:	
;main.c: 141: PORTB = 0;
	clrf	(6)	;volatile
	line	142
;main.c: 142: WPUB = 0x80;
	movlw	low(080h)
	movwf	(8)	;volatile
	line	143
	
l3441:	
;main.c: 143: TRISC = 0x00;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	144
	
l3443:	
;main.c: 144: PORTC = 0;
	clrf	(262)^0100h	;volatile
	line	146
;main.c: 146: PIE1 = 2;
	movlw	low(02h)
	bcf	status, 6	;RP1=0, select bank0
	movwf	(14)	;volatile
	line	147
;main.c: 147: PR2 = 250;
	movlw	low(0FAh)
	movwf	(17)	;volatile
	line	148
;main.c: 148: T2CON = 4;
	movlw	low(04h)
	movwf	(19)	;volatile
	line	150
;main.c: 150: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	151
;main.c: 151: ADCON0 = 0X41;
	movlw	low(041h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	152
	
l3445:	
;main.c: 152: ADON = 1;
	bsf	(1192/8)^080h,(1192)&7	;volatile
	line	153
	
l3447:	
;main.c: 153: ADCON1 = 0x00;
	clrf	(150)^080h	;volatile
	line	154
	
l975:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Isr_Timer

;; *************** function _Isr_Timer *****************
;; Defined at:
;;		line 178 in file "C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
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
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	line	178
global __ptext25
__ptext25:	;psect for function _Isr_Timer
psect	text25
	file	"C:\mcuproject\scm\zdt\D257_8F083_tssop20_\D257_8F083_tssop20_\main.c"
	line	178
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
psect	text25
	line	180
	
i1l4275:	
;main.c: 180: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(105/8),(105)&7	;volatile
	goto	u296_21
	goto	u296_20
u296_21:
	goto	i1l4297
u296_20:
	line	182
	
i1l4277:	
;main.c: 181: {
;main.c: 182: TMR2IF = 0;
	bcf	(105/8),(105)&7	;volatile
	line	183
	
i1l4279:	
;main.c: 183: if(++intCount10 > 3)
	movlw	low(04h)
	incf	(_intCount10),f
	subwf	((_intCount10)),w
	skipc
	goto	u297_21
	goto	u297_20
u297_21:
	goto	i1l4287
u297_20:
	line	185
	
i1l4281:	
;main.c: 184: {
;main.c: 185: intCount10 = 0;
	clrf	(_intCount10)
	line	186
	
i1l4283:	
;main.c: 186: if(beepTime > 0)
	movf	((_beepTime)),w
	btfsc	status,2
	goto	u298_21
	goto	u298_20
u298_21:
	goto	i1l986
u298_20:
	line	188
	
i1l4285:	
;main.c: 187: {
;main.c: 188: PORTA ^= 0x04;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	xorwf	(134)^080h,f	;volatile
	line	189
;main.c: 189: }
	goto	i1l4287
	line	190
	
i1l986:	
	line	192
;main.c: 190: else
;main.c: 191: {
;main.c: 192: PORTA &= 0xFB;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(2/8),(2)&7	;volatile
	line	195
	
i1l4287:	
;main.c: 193: }
;main.c: 194: }
;main.c: 195: if(++MainTime >= 158)
	movlw	low(09Eh)
	bcf	status, 5	;RP0=0, select bank0
	incf	(_MainTime),f	;volatile
	subwf	((_MainTime)),w	;volatile
	skipc
	goto	u299_21
	goto	u299_20
u299_21:
	goto	i1l991
u299_20:
	line	197
	
i1l4289:	
;main.c: 196: {
;main.c: 197: MainTime = 0;
	clrf	(_MainTime)	;volatile
	line	198
	
i1l4291:	
;main.c: 198: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7	;volatile
	line	199
	
i1l4293:	
;main.c: 199: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u300_21
	goto	u300_20
u300_21:
	goto	i1l991
u300_20:
	line	201
	
i1l4295:	
;main.c: 200: {
;main.c: 201: count1s = 0;
	clrf	(_count1s)
	goto	i1l991
	line	207
	
i1l4297:	
;main.c: 205: else
;main.c: 206: {
;main.c: 207: PIR1 = 0;
	clrf	(13)	;volatile
	line	210
	
i1l991:	
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
