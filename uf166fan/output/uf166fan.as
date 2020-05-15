opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1711C
opt include "E:\cms\SCMCU_IDE_V2.00.07\data\include\sc8p1711c.cgen.inc"
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
	FNCALL	_main,_Init_Config
	FNCALL	_main,_checkKeys
	FNCALL	_main,_checkUsbStatus
	FNCALL	_main,_closeFan
	FNCALL	_main,_readVrefADC
	FNCALL	_main,_scanKeys
	FNCALL	_scanKeys,_sacnKeyInput
	FNCALL	_readVrefADC,_ADC_Result
	FNCALL	_readVrefADC,_ADC_Sample
	FNCALL	_readVrefADC,_DelayXms
	FNCALL	_checkUsbStatus,_closeFan
	FNCALL	_checkKeys,_checkFan
	FNCALL	_checkKeys,_closeFan
	FNCALL	_checkKeys,_key_driver
	FNCALL	_checkKeys,_setFanLevel
	FNCALL	_checkFan,_closeFan
	FNCALL	_checkFan,_setFanLevel
	FNCALL	_setFanLevel,_Init_PWM
	FNCALL	_setFanLevel,___awdiv
	FNCALL	_setFanLevel,_setLedOn
	FNCALL	_closeFan,_Sleep_Mode
	FNCALL	_closeFan,_setLedOn
	FNCALL	_Sleep_Mode,_setLedOn
	FNCALL	_Init_Config,_Init_GPIO
	FNCALL	_Init_Config,_Init_Interupt
	FNCALL	_Init_Config,_Init_PWM
	FNCALL	_Init_Config,_Init_System
	FNCALL	_Init_Config,_resetKey
	FNROOT	_main
	FNCALL	_Timer0_Isr,i1_Init_Config
	FNCALL	i1_Init_Config,i1_Init_GPIO
	FNCALL	i1_Init_Config,i1_Init_Interupt
	FNCALL	i1_Init_Config,i1_Init_PWM
	FNCALL	i1_Init_Config,i1_Init_System
	FNCALL	i1_Init_Config,i1_resetKey
	FNCALL	intlevel1,_Timer0_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_FAN_STATUS
	global	_currentLevel
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	25

;initializer for _FAN_STATUS
	retlw	02h
	line	23

;initializer for _currentLevel
	retlw	03h
	global	_count300ms
	global	_time0Flag
	global	ADC_Sample@adsum
	global	ADC_Sample@admax
	global	ADC_Sample@admin
	global	_fan_check_time
	global	_count10Ms
	global	_countTime
	global	_adresult
	global	ADC_Sample@adtimes
	global	_lowVTime
	global	_key3
	global	_key2
	global	_key1
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_T2CON
_T2CON	set	18
	global	_INTCON
_INTCON	set	11
	global	_PORTC
_PORTC	set	7
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_TMR0
_TMR0	set	1
	global	_GODONE
_GODONE	set	249
	global	_TMR2IF
_TMR2IF	set	97
	global	_GIE
_GIE	set	95
	global	_RBIE
_RBIE	set	91
	global	_T0IF
_T0IF	set	90
	global	_RBIF
_RBIF	set	88
	global	_TO
_TO	set	28
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_IOCB
_IOCB	set	150
	global	_WPUB
_WPUB	set	149
	global	_PR2
_PR2	set	146
	global	_OSCCON
_OSCCON	set	143
	global	_TRISC
_TRISC	set	135
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_WPUC
_WPUC	set	399
	global	_WPUA
_WPUA	set	398
; #config settings
	file	"uf166fan.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_count300ms:
       ds      1

_time0Flag:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	25
_FAN_STATUS:
       ds      1

psect	dataCOMMON
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	23
_currentLevel:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
ADC_Sample@adsum:
       ds      4

ADC_Sample@admax:
       ds      2

ADC_Sample@admin:
       ds      2

_fan_check_time:
       ds      2

_count10Ms:
       ds      2

_countTime:
       ds      2

_adresult:
       ds      2

ADC_Sample@adtimes:
       ds      1

_lowVTime:
       ds      1

_key3:
       ds      7

_key2:
       ds      7

_key1:
       ds      7

	file	"uf166fan.as"
	line	#
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
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
	movlw	low((__pbssBANK0)+027h)
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
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
?_closeFan:	; 1 bytes @ 0x0
?_setLedOn:	; 1 bytes @ 0x0
?_Sleep_Mode:	; 1 bytes @ 0x0
?_sacnKeyInput:	; 1 bytes @ 0x0
?_key_driver:	; 1 bytes @ 0x0
?_Init_Config:	; 1 bytes @ 0x0
?_readVrefADC:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_Init_GPIO:	; 1 bytes @ 0x0
?_Init_Interupt:	; 1 bytes @ 0x0
?_resetKey:	; 1 bytes @ 0x0
?_checkUsbStatus:	; 1 bytes @ 0x0
?_Init_PWM:	; 1 bytes @ 0x0
?_setFanLevel:	; 1 bytes @ 0x0
?_checkFan:	; 1 bytes @ 0x0
?_scanKeys:	; 1 bytes @ 0x0
?_checkKeys:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_Timer0_Isr:	; 1 bytes @ 0x0
?_ADC_Sample:	; 1 bytes @ 0x0
?_ADC_Result:	; 1 bytes @ 0x0
?_DelayXms:	; 1 bytes @ 0x0
?i1_Init_PWM:	; 1 bytes @ 0x0
??i1_Init_PWM:	; 1 bytes @ 0x0
?i1_Init_Config:	; 1 bytes @ 0x0
?i1_resetKey:	; 1 bytes @ 0x0
??i1_resetKey:	; 1 bytes @ 0x0
?i1_Init_System:	; 1 bytes @ 0x0
??i1_Init_System:	; 1 bytes @ 0x0
?i1_Init_GPIO:	; 1 bytes @ 0x0
??i1_Init_GPIO:	; 1 bytes @ 0x0
?i1_Init_Interupt:	; 1 bytes @ 0x0
??i1_Init_Interupt:	; 1 bytes @ 0x0
	global	i1resetKey@key
i1resetKey@key:	; 1 bytes @ 0x0
	ds	1
??_Timer0_Isr:	; 1 bytes @ 0x1
??i1_Init_Config:	; 1 bytes @ 0x1
	ds	3
??_setLedOn:	; 1 bytes @ 0x4
??_sacnKeyInput:	; 1 bytes @ 0x4
??_key_driver:	; 1 bytes @ 0x4
??_Init_System:	; 1 bytes @ 0x4
??_Init_GPIO:	; 1 bytes @ 0x4
??_Init_Interupt:	; 1 bytes @ 0x4
??_resetKey:	; 1 bytes @ 0x4
??_Init_PWM:	; 1 bytes @ 0x4
??_ADC_Result:	; 1 bytes @ 0x4
??_DelayXms:	; 1 bytes @ 0x4
??___awdiv:	; 1 bytes @ 0x4
	global	setLedOn@ledIndex
setLedOn@ledIndex:	; 1 bytes @ 0x4
	global	resetKey@key
resetKey@key:	; 1 bytes @ 0x4
	ds	1
??_closeFan:	; 1 bytes @ 0x5
??_Sleep_Mode:	; 1 bytes @ 0x5
??_Init_Config:	; 1 bytes @ 0x5
??_readVrefADC:	; 1 bytes @ 0x5
??_setFanLevel:	; 1 bytes @ 0x5
	ds	1
??_scanKeys:	; 1 bytes @ 0x6
??_checkKeys:	; 1 bytes @ 0x6
??_main:	; 1 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_checkUsbStatus:	; 1 bytes @ 0x0
??_ADC_Sample:	; 1 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	sacnKeyInput@key
sacnKeyInput@key:	; 1 bytes @ 0x0
	global	key_driver@key_return
key_driver@key_return:	; 1 bytes @ 0x0
	global	ADC_Result@adch
ADC_Result@adch:	; 1 bytes @ 0x0
	global	DelayXms@x
DelayXms@x:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	key_driver@key_read
key_driver@key_read:	; 1 bytes @ 0x1
	global	ADC_Result@i
ADC_Result@i:	; 1 bytes @ 0x1
	global	DelayXms@i
DelayXms@i:	; 1 bytes @ 0x1
	ds	1
	global	key_driver@key
key_driver@key:	; 1 bytes @ 0x2
	global	DelayXms@j
DelayXms@j:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	ADC_Sample@adch
ADC_Sample@adch:	; 1 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	ds	1
	global	ADC_Sample@i
ADC_Sample@i:	; 1 bytes @ 0x5
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	ds	1
	global	ADC_Sample@ad_temp
ADC_Sample@ad_temp:	; 2 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	2
	global	setFanLevel@level
setFanLevel@level:	; 1 bytes @ 0x8
	ds	1
	global	setFanLevel@tempLevel
setFanLevel@tempLevel:	; 1 bytes @ 0x9
	ds	1
??_checkFan:	; 1 bytes @ 0xA
	ds	1
	global	checkKeys@key2Status
checkKeys@key2Status:	; 1 bytes @ 0xB
	ds	1
	global	checkKeys@key3Status
checkKeys@key3Status:	; 1 bytes @ 0xC
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        2
;!    BSS         41
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      10
;!    BANK0            80     13      52
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    resetKey@key	PTR struct Keys size(1) Largest target is 7
;!		 -> key3(BANK0[7]), key2(BANK0[7]), key1(BANK0[7]), 
;!
;!    key_driver@key	PTR struct Keys size(1) Largest target is 7
;!		 -> key3(BANK0[7]), key2(BANK0[7]), key1(BANK0[7]), 
;!
;!    sacnKeyInput@key	PTR struct Keys size(1) Largest target is 7
;!		 -> key3(BANK0[7]), key2(BANK0[7]), key1(BANK0[7]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_closeFan
;!    _main->_readVrefADC
;!    _scanKeys->_sacnKeyInput
;!    _readVrefADC->_ADC_Result
;!    _checkUsbStatus->_closeFan
;!    _checkKeys->_closeFan
;!    _checkFan->_closeFan
;!    _setFanLevel->_setLedOn
;!    _closeFan->_setLedOn
;!    _Sleep_Mode->_setLedOn
;!    _Init_Config->_resetKey
;!
;!Critical Paths under _Timer0_Isr in COMMON
;!
;!    i1_Init_Config->i1_resetKey
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_checkKeys
;!    _scanKeys->_sacnKeyInput
;!    _readVrefADC->_ADC_Sample
;!    _checkKeys->_checkFan
;!    _checkFan->_setFanLevel
;!    _setFanLevel->___awdiv
;!
;!Critical Paths under _Timer0_Isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _Timer0_Isr in BANK1
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
;! (0) _main                                                 0     0      0    3431
;!                        _Init_Config
;!                          _checkKeys
;!                     _checkUsbStatus
;!                           _closeFan
;!                        _readVrefADC
;!                           _scanKeys
;! ---------------------------------------------------------------------------------
;! (1) _scanKeys                                             0     0      0     214
;!                       _sacnKeyInput
;! ---------------------------------------------------------------------------------
;! (2) _sacnKeyInput                                         3     3      0     214
;!                                              4 COMMON     2     2      0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _readVrefADC                                          1     1      0     533
;!                                              5 COMMON     1     1      0
;!                         _ADC_Result
;!                         _ADC_Sample
;!                           _DelayXms
;! ---------------------------------------------------------------------------------
;! (2) _DelayXms                                             3     3      0     167
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Sample                                           8     8      0     291
;!                                              0 BANK0      8     8      0
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Result                                           3     3      0      65
;!                                              4 COMMON     1     1      0
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _checkUsbStatus                                       2     2      0      62
;!                                              0 BANK0      2     2      0
;!                           _closeFan
;! ---------------------------------------------------------------------------------
;! (1) _checkKeys                                            2     2      0    2391
;!                                             11 BANK0      2     2      0
;!                           _checkFan
;!                           _closeFan
;!                         _key_driver
;!                        _setFanLevel
;! ---------------------------------------------------------------------------------
;! (2) _key_driver                                           3     3      0     597
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _checkFan                                             1     1      0     863
;!                                             10 BANK0      1     1      0
;!                           _closeFan
;!                        _setFanLevel
;! ---------------------------------------------------------------------------------
;! (2) _setFanLevel                                          4     4      0     801
;!                                              8 BANK0      2     2      0
;!                           _Init_PWM
;!                            ___awdiv
;!                           _setLedOn
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              8     4      4     606
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _closeFan                                             1     1      0      62
;!                                              5 COMMON     1     1      0
;!                         _Sleep_Mode
;!                           _setLedOn
;! ---------------------------------------------------------------------------------
;! (2) _Sleep_Mode                                           0     0      0      31
;!                           _setLedOn
;! ---------------------------------------------------------------------------------
;! (2) _setLedOn                                             1     1      0      31
;!                                              4 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Init_Config                                          0     0      0     169
;!                          _Init_GPIO
;!                      _Init_Interupt
;!                           _Init_PWM
;!                        _Init_System
;!                           _resetKey
;! ---------------------------------------------------------------------------------
;! (2) _resetKey                                             1     1      0     169
;!                                              4 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _Init_PWM                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Init_Interupt                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Init_GPIO                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (6) _Timer0_Isr                                           3     3      0      88
;!                                              1 COMMON     3     3      0
;!                      i1_Init_Config
;! ---------------------------------------------------------------------------------
;! (7) i1_Init_Config                                        0     0      0      88
;!                        i1_Init_GPIO
;!                    i1_Init_Interupt
;!                         i1_Init_PWM
;!                      i1_Init_System
;!                         i1_resetKey
;! ---------------------------------------------------------------------------------
;! (8) i1_resetKey                                           1     1      0      88
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (8) i1_Init_System                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) i1_Init_PWM                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) i1_Init_Interupt                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) i1_Init_GPIO                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Init_Config
;!     _Init_GPIO
;!     _Init_Interupt
;!     _Init_PWM
;!     _Init_System
;!     _resetKey
;!   _checkKeys
;!     _checkFan
;!       _closeFan
;!         _Sleep_Mode
;!           _setLedOn
;!         _setLedOn
;!       _setFanLevel
;!         _Init_PWM
;!         ___awdiv
;!         _setLedOn
;!     _closeFan
;!       _Sleep_Mode
;!         _setLedOn
;!       _setLedOn
;!     _key_driver
;!     _setFanLevel
;!       _Init_PWM
;!       ___awdiv
;!       _setLedOn
;!   _checkUsbStatus
;!     _closeFan
;!       _Sleep_Mode
;!         _setLedOn
;!       _setLedOn
;!   _closeFan
;!     _Sleep_Mode
;!       _setLedOn
;!     _setLedOn
;!   _readVrefADC
;!     _ADC_Result
;!     _ADC_Sample
;!     _DelayXms
;!   _scanKeys
;!     _sacnKeyInput
;!
;! _Timer0_Isr (ROOT)
;!   i1_Init_Config
;!     i1_Init_GPIO
;!     i1_Init_Interupt
;!     i1_Init_PWM
;!     i1_Init_System
;!     i1_resetKey
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      D      34       5       65.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      6       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      3E       8        0.0%
;!ABS                  0      0      3E       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 276 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Init_Config
;;		_checkKeys
;;		_checkUsbStatus
;;		_closeFan
;;		_readVrefADC
;;		_scanKeys
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	276
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	276
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	278
	
l3796:	
;main.c: 278: Init_Config();
	fcall	_Init_Config
	line	279
;main.c: 279: closeFan();
	fcall	_closeFan
	line	282
	
l3798:	
;main.c: 282: if (time0Flag) {
	movf	((_time0Flag)),w
	btfsc	status,2
	goto	u1681
	goto	u1680
u1681:
	goto	l3808
u1680:
	line	283
	
l3800:	
# 283 "E:\project\project0508\scm\uf166fan\main.c"
clrwdt ;# 
psect	maintext
	line	284
	
l3802:	
;main.c: 284: time0Flag = 0;
	clrf	(_time0Flag)
	line	285
	
l3804:	
;main.c: 285: scanKeys();
	fcall	_scanKeys
	line	286
	
l3806:	
;main.c: 286: count10Ms++;
	incf	(_count10Ms),f
	skipnz
	incf	(_count10Ms+1),f
	line	290
	
l3808:	
;main.c: 287: }
;main.c: 290: if (count10Ms == 100) {
		movlw	100
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((_count10Ms)),w
iorwf	((_count10Ms+1)),w
	btfss	status,2
	goto	u1691
	goto	u1690
u1691:
	goto	l3820
u1690:
	line	291
	
l3810:	
;main.c: 291: countTime++;
	incf	(_countTime),f
	skipnz
	incf	(_countTime+1),f
	line	292
;main.c: 292: count300ms++;
	incf	(_count300ms),f
	line	293
	
l3812:	
;main.c: 293: checkKeys();
	fcall	_checkKeys
	line	294
	
l3814:	
;main.c: 294: count10Ms = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_count10Ms)
	clrf	(_count10Ms+1)
	line	296
	
l3816:	
;main.c: 296: checkUsbStatus();
	fcall	_checkUsbStatus
	line	298
	
l3818:	
;main.c: 298: readVrefADC();
	fcall	_readVrefADC
	line	301
	
l3820:	
;main.c: 299: }
;main.c: 301: if(count300ms == 10)
		movlw	10
	xorwf	((_count300ms)),w
	btfss	status,2
	goto	u1701
	goto	u1700
u1701:
	goto	l3824
u1700:
	line	303
	
l3822:	
;main.c: 302: {
;main.c: 303: count300ms = 0;
	clrf	(_count300ms)
	line	306
	
l3824:	
;main.c: 304: }
;main.c: 306: if (countTime == 50) {
		movlw	50
	xorwf	((_countTime)),w
iorwf	((_countTime+1)),w
	btfss	status,2
	goto	u1711
	goto	u1710
u1711:
	goto	l3798
u1710:
	line	307
	
l3826:	
;main.c: 307: countTime = 0;
	clrf	(_countTime)
	clrf	(_countTime+1)
	goto	l3798
	global	start
	ljmp	start
	opt stack 0
	line	312
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_scanKeys

;; *************** function _scanKeys *****************
;; Defined at:
;;		line 235 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_sacnKeyInput
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	235
global __ptext1
__ptext1:	;psect for function _scanKeys
psect	text1
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	235
	global	__size_of_scanKeys
	__size_of_scanKeys	equ	__end_of_scanKeys-_scanKeys
	
_scanKeys:	
;incstack = 0
	opt	stack 3
; Regs used in _scanKeys: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	236
	
l3718:	
;main.c: 236: key1.key_addr_result = key2.key_addr_result = key3.key_addr_result = PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	0+(_key3)+05h
	movwf	0+(_key2)+05h
	movwf	0+(_key1)+05h
	line	237
	
l3720:	
;main.c: 237: sacnKeyInput(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	238
	
l3722:	
;main.c: 238: sacnKeyInput(&key2);
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	239
	
l3724:	
;main.c: 239: sacnKeyInput(&key3);
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	241
	
l635:	
	return
	opt stack 0
GLOBAL	__end_of_scanKeys
	__end_of_scanKeys:
	signat	_scanKeys,89
	global	_sacnKeyInput

;; *************** function _sacnKeyInput *****************
;; Defined at:
;;		line 3 in file "E:\project\project0508\scm\uf166fan\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    0[BANK0 ] PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       1       0
;;      Temps:          2       0       0
;;      Totals:         2       1       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_scanKeys
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\scankey.c"
	line	3
global __ptext2
__ptext2:	;psect for function _sacnKeyInput
psect	text2
	file	"E:\project\project0508\scm\uf166fan\scankey.c"
	line	3
	global	__size_of_sacnKeyInput
	__size_of_sacnKeyInput	equ	__end_of_sacnKeyInput-_sacnKeyInput
	
_sacnKeyInput:	
;incstack = 0
	opt	stack 3
; Regs used in _sacnKeyInput: [wreg-fsr0h+status,2+status,0]
;sacnKeyInput@key stored from wreg
	movwf	(sacnKeyInput@key)
	line	4
	
l3568:	
;scankey.c: 4: key->key_input = ((key->key_addr_result) >> (key->key_index)&1);
	movf	(sacnKeyInput@key),w
	addlw	05h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_sacnKeyInput+0)+0
	movf	(sacnKeyInput@key),w
	addlw	06h
	movwf	fsr0
	incf	indf,w
	goto	u1334
u1335:
	clrc
	rrf	(??_sacnKeyInput+0)+0,f
u1334:
	addlw	-1
	skipz
	goto	u1335
	movf	0+(??_sacnKeyInput+0)+0,w
	movwf	(??_sacnKeyInput+1)+0
	movf	(sacnKeyInput@key),w
	addlw	04h
	movwf	fsr0
	movf	(??_sacnKeyInput+1)+0,w
	movwf	indf
	movf	(sacnKeyInput@key),w
	addlw	04h
	movwf	fsr0
	movlw	low(01h)
	andwf	indf,f
	line	6
	
l674:	
	return
	opt stack 0
GLOBAL	__end_of_sacnKeyInput
	__end_of_sacnKeyInput:
	signat	_sacnKeyInput,4217
	global	_readVrefADC

;; *************** function _readVrefADC *****************
;; Defined at:
;;		line 90 in file "E:\project\project0508\scm\uf166fan\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  result          1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ADC_Result
;;		_ADC_Sample
;;		_DelayXms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\adc.c"
	line	90
global __ptext3
__ptext3:	;psect for function _readVrefADC
psect	text3
	file	"E:\project\project0508\scm\uf166fan\adc.c"
	line	90
	global	__size_of_readVrefADC
	__size_of_readVrefADC	equ	__end_of_readVrefADC-_readVrefADC
	
_readVrefADC:	
;incstack = 0
	opt	stack 3
; Regs used in _readVrefADC: [wreg+status,2+status,0+pclath+cstack]
	line	92
	
l3792:	
;adc.c: 92: DelayXms(1);
	movlw	low(01h)
	fcall	_DelayXms
	line	93
;adc.c: 93: ADC_Sample(15);
	movlw	low(0Fh)
	fcall	_ADC_Sample
	line	96
	movlw	low(0Fh)
	fcall	_ADC_Result
	line	98
	
l1826:	
	return
	opt stack 0
GLOBAL	__end_of_readVrefADC
	__end_of_readVrefADC:
	signat	_readVrefADC,89
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 82 in file "E:\project\project0508\scm\uf166fan\adc.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    0[BANK0 ] unsigned char 
;;  j               1    2[BANK0 ] unsigned char 
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       3       0
;;      Temps:          0       0       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_readVrefADC
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	82
global __ptext4
__ptext4:	;psect for function _DelayXms
psect	text4
	file	"E:\project\project0508\scm\uf166fan\adc.c"
	line	82
	global	__size_of_DelayXms
	__size_of_DelayXms	equ	__end_of_DelayXms-_DelayXms
	
_DelayXms:	
;incstack = 0
	opt	stack 3
; Regs used in _DelayXms: [wreg+status,2+status,0]
;DelayXms@x stored from wreg
	movwf	(DelayXms@x)
	line	85
	
l3672:	
;adc.c: 84: unsigned char i,j;
;adc.c: 85: for(i=x;i>0;i--)
	movf	(DelayXms@x),w
	movwf	(DelayXms@i)
	
l3674:	
	movf	((DelayXms@i)),w
	btfss	status,2
	goto	u1531
	goto	u1530
u1531:
	goto	l3678
u1530:
	goto	l1823
	line	86
	
l3678:	
;adc.c: 86: for(j=153;j>0;j--);
	movlw	low(099h)
	movwf	(DelayXms@j)
	
l3684:	
	decf	(DelayXms@j),f
	
l3686:	
	movf	((DelayXms@j)),w
	btfss	status,2
	goto	u1541
	goto	u1540
u1541:
	goto	l3684
u1540:
	line	85
	
l3688:	
	decf	(DelayXms@i),f
	goto	l3674
	line	87
	
l1823:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 11 in file "E:\project\project0508\scm\uf166fan\adc.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    4[BANK0 ] unsigned char 
;;  ad_temp         2    6[BANK0 ] volatile unsigned int 
;;  i               1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       4       0
;;      Temps:          0       4       0
;;      Totals:         0       8       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_readVrefADC
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	11
global __ptext5
__ptext5:	;psect for function _ADC_Sample
psect	text5
	file	"E:\project\project0508\scm\uf166fan\adc.c"
	line	11
	global	__size_of_ADC_Sample
	__size_of_ADC_Sample	equ	__end_of_ADC_Sample-_ADC_Sample
	
_ADC_Sample:	
;incstack = 0
	opt	stack 3
; Regs used in _ADC_Sample: [wreg+status,2+status,0]
;ADC_Sample@adch stored from wreg
	movwf	(ADC_Sample@adch)
	line	17
	
l3616:	
;adc.c: 13: static unsigned long adsum = 0;
;adc.c: 14: static unsigned int admin = 0,admax = 0;
;adc.c: 15: static unsigned char adtimes = 0;
;adc.c: 16: volatile unsigned int ad_temp;
;adc.c: 17: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	18
	
l3618:	
;adc.c: 18: ADCON0 = 0X41 | (adch << 2);
	bcf	status, 5	;RP0=0, select bank0
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u1395:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u1395
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	movwf	(31)	;volatile
	line	19
# 19 "E:\project\project0508\scm\uf166fan\adc.c"
nop ;# 
	line	20
# 20 "E:\project\project0508\scm\uf166fan\adc.c"
nop ;# 
psect	text5
	line	21
	
l3620:	
;adc.c: 21: GODONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	23
	
l3622:	
;adc.c: 23: unsigned char i = 0;
	clrf	(ADC_Sample@i)
	line	24
;adc.c: 24: while(GODONE)
	goto	l1799
	
l1800:	
	line	26
;adc.c: 25: {
;adc.c: 26: if(0 == (--i))
	decfsz	(ADC_Sample@i),f
	goto	u1401
	goto	u1400
u1401:
	goto	l1799
u1400:
	goto	l1802
	line	28
	
l1799:	
	line	24
	btfsc	(249/8),(249)&7	;volatile
	goto	u1411
	goto	u1410
u1411:
	goto	l1800
u1410:
	line	30
	
l3626:	
;adc.c: 28: }
;adc.c: 30: ad_temp=(ADRESH<<4)+(ADRESL>>4);
	movf	(30),w	;volatile
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
	
l3628:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	32
	
l3630:	
;adc.c: 32: if(0 == admax)
	movf	((ADC_Sample@admax)),w
iorwf	((ADC_Sample@admax+1)),w
	btfss	status,2
	goto	u1421
	goto	u1420
u1421:
	goto	l3634
u1420:
	line	34
	
l3632:	
;adc.c: 33: {
;adc.c: 34: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)
	line	35
;adc.c: 35: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)
	line	36
;adc.c: 36: }
	goto	l1805
	line	37
	
l3634:	
;adc.c: 37: else if(ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w
	skipz
	goto	u1435
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w
u1435:
	skipnc
	goto	u1431
	goto	u1430
u1431:
	goto	l3638
u1430:
	line	38
	
l3636:	
;adc.c: 38: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)
	goto	l1805
	line	39
	
l3638:	
;adc.c: 39: else if(ad_temp < admin)
	movf	(ADC_Sample@admin+1),w
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u1445
	movf	(ADC_Sample@admin),w
	subwf	(ADC_Sample@ad_temp),w	;volatile
u1445:
	skipnc
	goto	u1441
	goto	u1440
u1441:
	goto	l1805
u1440:
	line	40
	
l3640:	
;adc.c: 40: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)
	line	42
	
l1805:	
;adc.c: 42: adsum += ad_temp;
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	0+(??_ADC_Sample+0)+0,w
	addwf	(ADC_Sample@adsum),f
	movf	1+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1451
	addwf	(ADC_Sample@adsum+1),f
u1451:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1452
	addwf	(ADC_Sample@adsum+2),f
u1452:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1453
	addwf	(ADC_Sample@adsum+3),f
u1453:

	line	43
	
l3642:	
;adc.c: 43: if(++adtimes >= 10)
	movlw	low(0Ah)
	incf	(ADC_Sample@adtimes),f
	subwf	((ADC_Sample@adtimes)),w
	skipc
	goto	u1461
	goto	u1460
u1461:
	goto	l1802
u1460:
	line	45
	
l3644:	
;adc.c: 44: {
;adc.c: 45: adsum -= admax;
	movf	(ADC_Sample@admax),w
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admax+1),w
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),f
	movf	1+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	1+(??_ADC_Sample+0)+0,w
	goto	u1475
	goto	u1476
u1475:
	subwf	(ADC_Sample@adsum+1),f
u1476:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1477
	goto	u1478
u1477:
	subwf	(ADC_Sample@adsum+2),f
u1478:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1479
	goto	u1470
u1479:
	subwf	(ADC_Sample@adsum+3),f
u1470:

	line	46
;adc.c: 46: adsum -= admin;
	movf	(ADC_Sample@admin),w
	movwf	((??_ADC_Sample+0)+0)
	movf	(ADC_Sample@admin+1),w
	movwf	((??_ADC_Sample+0)+0+1)
	clrf	((??_ADC_Sample+0)+0+2)
	clrf	((??_ADC_Sample+0)+0+3)
	movf	0+(??_ADC_Sample+0)+0,w
	subwf	(ADC_Sample@adsum),f
	movf	1+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	1+(??_ADC_Sample+0)+0,w
	goto	u1485
	goto	u1486
u1485:
	subwf	(ADC_Sample@adsum+1),f
u1486:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1487
	goto	u1488
u1487:
	subwf	(ADC_Sample@adsum+2),f
u1488:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1489
	goto	u1480
u1489:
	subwf	(ADC_Sample@adsum+3),f
u1480:

	line	48
	
l3646:	
;adc.c: 48: adresult = adsum >> 3;
	movf	(ADC_Sample@adsum),w
	movwf	(??_ADC_Sample+0)+0
	movf	(ADC_Sample@adsum+1),w
	movwf	((??_ADC_Sample+0)+0+1)
	movf	(ADC_Sample@adsum+2),w
	movwf	((??_ADC_Sample+0)+0+2)
	movf	(ADC_Sample@adsum+3),w
	movwf	((??_ADC_Sample+0)+0+3)
	movlw	03h
u1495:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u1490:
	addlw	-1
	skipz
	goto	u1495
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	50
	
l3648:	
;adc.c: 50: adsum = 0;
	clrf	(ADC_Sample@adsum)
	clrf	(ADC_Sample@adsum+1)
	clrf	(ADC_Sample@adsum+2)
	clrf	(ADC_Sample@adsum+3)
	line	51
	
l3650:	
;adc.c: 51: admin = 0;
	clrf	(ADC_Sample@admin)
	clrf	(ADC_Sample@admin+1)
	line	52
	
l3652:	
;adc.c: 52: admax = 0;
	clrf	(ADC_Sample@admax)
	clrf	(ADC_Sample@admax+1)
	line	53
	
l3654:	
;adc.c: 53: adtimes = 0;
	clrf	(ADC_Sample@adtimes)
	line	55
	
l1802:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,4217
	global	_ADC_Result

;; *************** function _ADC_Result *****************
;; Defined at:
;;		line 59 in file "E:\project\project0508\scm\uf166fan\adc.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    0[BANK0 ] unsigned char 
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          1       0       0
;;      Totals:         1       2       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_readVrefADC
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	59
global __ptext6
__ptext6:	;psect for function _ADC_Result
psect	text6
	file	"E:\project\project0508\scm\uf166fan\adc.c"
	line	59
	global	__size_of_ADC_Result
	__size_of_ADC_Result	equ	__end_of_ADC_Result-_ADC_Result
	
_ADC_Result:	
;incstack = 0
	opt	stack 3
; Regs used in _ADC_Result: [wreg+status,2+status,0]
;ADC_Result@adch stored from wreg
	movwf	(ADC_Result@adch)
	line	61
	
l3656:	
;adc.c: 61: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	62
	
l3658:	
;adc.c: 62: ADCON0 = 0X41 | (adch << 2);
	bcf	status, 5	;RP0=0, select bank0
	movf	(ADC_Result@adch),w
	movwf	(??_ADC_Result+0)+0
	movlw	(02h)-1
u1505:
	clrc
	rlf	(??_ADC_Result+0)+0,f
	addlw	-1
	skipz
	goto	u1505
	clrc
	rlf	(??_ADC_Result+0)+0,w
	iorlw	041h
	movwf	(31)	;volatile
	line	63
# 63 "E:\project\project0508\scm\uf166fan\adc.c"
nop ;# 
	line	64
# 64 "E:\project\project0508\scm\uf166fan\adc.c"
nop ;# 
psect	text6
	line	65
	
l3660:	
;adc.c: 65: GODONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	67
	
l3662:	
;adc.c: 67: unsigned char i = 0;
	clrf	(ADC_Result@i)
	line	68
;adc.c: 68: while(GODONE)
	goto	l1812
	
l1813:	
	line	70
;adc.c: 69: {
;adc.c: 70: if(0 == (--i))
	decfsz	(ADC_Result@i),f
	goto	u1511
	goto	u1510
u1511:
	goto	l1812
u1510:
	line	71
	
l3664:	
;adc.c: 71: return 0;
	movlw	low(0)
	goto	l1815
	line	72
	
l1812:	
	line	68
	btfsc	(249/8),(249)&7	;volatile
	goto	u1521
	goto	u1520
u1521:
	goto	l1813
u1520:
	line	73
	
l3668:	
;adc.c: 72: }
;adc.c: 73: return ADRESH;
	movf	(30),w	;volatile
	line	74
	
l1815:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Result
	__end_of_ADC_Result:
	signat	_ADC_Result,4217
	global	_checkUsbStatus

;; *************** function _checkUsbStatus *****************
;; Defined at:
;;		line 42 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       2       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_closeFan
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	42
global __ptext7
__ptext7:	;psect for function _checkUsbStatus
psect	text7
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	42
	global	__size_of_checkUsbStatus
	__size_of_checkUsbStatus	equ	__end_of_checkUsbStatus-_checkUsbStatus
	
_checkUsbStatus:	
;incstack = 0
	opt	stack 1
; Regs used in _checkUsbStatus: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	43
	
l3692:	
;main.c: 43: if (((PORTB) >> (2)&1) == 1) {
	movf	(6),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	btfss	0+(??_checkUsbStatus+0)+0,(0)&7
	goto	u1551
	goto	u1550
u1551:
	goto	l585
u1550:
	line	44
	
l3694:	
;main.c: 44: if (((PORTB) >> (1)&1) == 0) {
	movf	(6),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	btfsc	0+(??_checkUsbStatus+0)+0,(0)&7
	goto	u1561
	goto	u1560
u1561:
	goto	l3698
u1560:
	line	46
	
l3696:	
;main.c: 46: PORTA&=~(1<<0);
	bcf	(5)+(0/8),(0)&7	;volatile
	line	47
;main.c: 47: } else if (countTime < 15) {
	goto	l595
	
l3698:	
	movlw	0
	subwf	(_countTime+1),w
	movlw	0Fh
	skipnz
	subwf	(_countTime),w
	skipnc
	goto	u1571
	goto	u1570
u1571:
	goto	l588
u1570:
	goto	l3696
	line	50
	
l588:	
	line	51
;main.c: 51: PORTA|=(1<<0);
	bsf	(5)+(0/8),(0)&7	;volatile
	goto	l595
	line	53
	
l585:	
	line	55
;main.c: 55: PORTA|=(1<<0);
	bsf	(5)+(0/8),(0)&7	;volatile
	line	56
	
l3702:	
;main.c: 56: if((adresult/8) > 0x63 && count300ms == 0)
	movf	(_adresult+1),w	;volatile
	movwf	(??_checkUsbStatus+0)+0+1
	movf	(_adresult),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+1,f
	rrf	(??_checkUsbStatus+0)+0,f
	clrc
	rrf	(??_checkUsbStatus+0)+1,f
	rrf	(??_checkUsbStatus+0)+0,f
	clrc
	rrf	(??_checkUsbStatus+0)+1,f
	rrf	(??_checkUsbStatus+0)+0,f
	movlw	0
	subwf	1+(??_checkUsbStatus+0)+0,w
	movlw	064h
	skipnz
	subwf	0+(??_checkUsbStatus+0)+0,w
	skipc
	goto	u1581
	goto	u1580
u1581:
	goto	l3714
u1580:
	
l3704:	
	movf	((_count300ms)),w
	btfss	status,2
	goto	u1591
	goto	u1590
u1591:
	goto	l3714
u1590:
	line	58
	
l3706:	
;main.c: 57: {
;main.c: 58: if(lowVTime < 20)
	movlw	low(014h)
	subwf	(_lowVTime),w
	skipnc
	goto	u1601
	goto	u1600
u1601:
	goto	l3712
u1600:
	line	60
	
l3708:	
;main.c: 59: {
;main.c: 60: lowVTime++;
	incf	(_lowVTime),f
	line	62
	
l3710:	
;main.c: 62: PORTA^=(1<<0);
	movlw	low(01h)
	xorwf	(5),f	;volatile
	line	63
;main.c: 63: }else
	goto	l3714
	line	66
	
l3712:	
;main.c: 64: {
;main.c: 66: closeFan();
	fcall	_closeFan
	line	69
	
l3714:	
;main.c: 67: }
;main.c: 68: }
;main.c: 69: if((adresult/8) < 0x63)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_adresult+1),w	;volatile
	movwf	(??_checkUsbStatus+0)+0+1
	movf	(_adresult),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+1,f
	rrf	(??_checkUsbStatus+0)+0,f
	clrc
	rrf	(??_checkUsbStatus+0)+1,f
	rrf	(??_checkUsbStatus+0)+0,f
	clrc
	rrf	(??_checkUsbStatus+0)+1,f
	rrf	(??_checkUsbStatus+0)+0,f
	movlw	0
	subwf	1+(??_checkUsbStatus+0)+0,w
	movlw	063h
	skipnz
	subwf	0+(??_checkUsbStatus+0)+0,w
	skipnc
	goto	u1611
	goto	u1610
u1611:
	goto	l595
u1610:
	line	71
	
l3716:	
;main.c: 70: {
;main.c: 71: lowVTime = 0;
	clrf	(_lowVTime)
	line	74
	
l595:	
	return
	opt stack 0
GLOBAL	__end_of_checkUsbStatus
	__end_of_checkUsbStatus:
	signat	_checkUsbStatus,89
	global	_checkKeys

;; *************** function _checkKeys *****************
;; Defined at:
;;		line 244 in file "E:\project\project0508\scm\uf166fan\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  key3Status      1   12[BANK0 ] unsigned char 
;;  key2Status      1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          0       0       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_checkFan
;;		_closeFan
;;		_key_driver
;;		_setFanLevel
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	244
global __ptext8
__ptext8:	;psect for function _checkKeys
psect	text8
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	244
	global	__size_of_checkKeys
	__size_of_checkKeys	equ	__end_of_checkKeys-_checkKeys
	
_checkKeys:	
;incstack = 0
	opt	stack 0
; Regs used in _checkKeys: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	245
	
l3726:	
;main.c: 245: if (key_driver(&key1) == 1) {
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_key_driver
	xorlw	01h
	skipz
	goto	u1621
	goto	u1620
u1621:
	goto	l3740
u1620:
	line	248
	
l3728:	
;main.c: 248: if (FAN_STATUS == 1) {
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1631
	goto	u1630
u1631:
	goto	l3732
u1630:
	line	250
	
l3730:	
;main.c: 250: closeFan();
	fcall	_closeFan
	line	251
;main.c: 251: } else {
	goto	l641
	line	252
	
l3732:	
;main.c: 252: FAN_STATUS = 2;
	movlw	low(02h)
	movwf	(_FAN_STATUS)
	line	253
	
l3734:	
;main.c: 253: checkFan();
	fcall	_checkFan
	goto	l641
	line	256
	
l3740:	
		movlw	2
	xorwf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1641
	goto	u1640
u1641:
	goto	l642
u1640:
	line	257
	
l3742:	
;main.c: 257: checkFan();
	fcall	_checkFan
	line	260
	
l642:	
;main.c: 258: }
;main.c: 260: unsigned char key2Status = key_driver(&key2);
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	_key_driver
	movwf	(checkKeys@key2Status)
	line	261
	
l3744:	
;main.c: 261: if (key2Status == 1) {
		decf	((checkKeys@key2Status)),w
	btfss	status,2
	goto	u1651
	goto	u1650
u1651:
	goto	l3750
u1650:
	line	263
	
l3746:	
;main.c: 263: setFanLevel(1);
	movlw	low(01h)
	fcall	_setFanLevel
	goto	l641
	line	266
	
l3750:	
;main.c: 265: }
;main.c: 266: unsigned char key3Status = key_driver(&key3);
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	_key_driver
	movwf	(checkKeys@key3Status)
	line	267
	
l3752:	
;main.c: 267: if (key3Status == 1) {
		decf	((checkKeys@key3Status)),w
	btfss	status,2
	goto	u1661
	goto	u1660
u1661:
	goto	l641
u1660:
	line	269
	
l3754:	
;main.c: 269: setFanLevel(-1);
	movlw	low(0FFh)
	fcall	_setFanLevel
	line	273
	
l641:	
	return
	opt stack 0
GLOBAL	__end_of_checkKeys
	__end_of_checkKeys:
	signat	_checkKeys,89
	global	_key_driver

;; *************** function _key_driver *****************
;; Defined at:
;;		line 9 in file "E:\project\project0508\scm\uf166fan\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    2[BANK0 ] PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;;  key_read        1    1[BANK0 ] unsigned char 
;;  key_return      1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       3       0
;;      Temps:          0       0       0
;;      Totals:         0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\scankey.c"
	line	9
global __ptext9
__ptext9:	;psect for function _key_driver
psect	text9
	file	"E:\project\project0508\scm\uf166fan\scankey.c"
	line	9
	global	__size_of_key_driver
	__size_of_key_driver	equ	__end_of_key_driver-_key_driver
	
_key_driver:	
;incstack = 0
	opt	stack 3
; Regs used in _key_driver: [wreg-fsr0h+status,2+status,0]
;key_driver@key stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(key_driver@key)
	line	12
	
l3570:	
;scankey.c: 12: unsigned char key_return = 0;
	clrf	(key_driver@key_return)
	line	13
	
l3572:	
;scankey.c: 13: unsigned char key_read = key->key_input;
	movf	(key_driver@key),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(key_driver@key_read)
	line	15
;scankey.c: 15: switch (key->key_state_buffer1) {
	goto	l3604
	line	17
	
l3574:	
;scankey.c: 17: if (key_read == 0) {
	movf	((key_driver@key_read)),w
	btfss	status,2
	goto	u1341
	goto	u1340
u1341:
	goto	l3606
u1340:
	line	18
	
l3576:	
;scankey.c: 18: key->key_state_buffer1 = 1;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	incf	indf,f
	goto	l3606
	line	25
	
l3578:	
;scankey.c: 25: if (key_read == 0) {
	movf	((key_driver@key_read)),w
	btfss	status,2
	goto	u1351
	goto	u1350
u1351:
	goto	l3584
u1350:
	line	26
	
l3580:	
;scankey.c: 26: key->key_timer_cnt1 = 0;
	movf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	line	27
	
l3582:	
;scankey.c: 27: key->key_state_buffer1 = 2;
	incf	(key_driver@key),w
	movwf	fsr0
	movlw	low(02h)
	movwf	indf
	line	31
;scankey.c: 31: } else {
	goto	l3606
	line	32
	
l3584:	
;scankey.c: 32: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	goto	l3606
	line	39
	
l3586:	
;scankey.c: 39: if (key_read == 1) {
		decf	((key_driver@key_read)),w
	btfss	status,2
	goto	u1361
	goto	u1360
u1361:
	goto	l3592
u1360:
	line	40
	
l3588:	
;scankey.c: 40: key_return = 1;
	clrf	(key_driver@key_return)
	incf	(key_driver@key_return),f
	line	41
	
l3590:	
;scankey.c: 41: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	line	42
;scankey.c: 42: } else if (++(key->key_timer_cnt1) >= 100)
	goto	l3606
	
l3592:	
	movf	(key_driver@key),w
	movwf	fsr0
	incf	indf,f
	movlw	low(064h)
	subwf	(indf),w
	skipc
	goto	u1371
	goto	u1370
u1371:
	goto	l3606
u1370:
	line	44
	
l3594:	
;scankey.c: 43: {
;scankey.c: 44: key_return = 3;
	movlw	low(03h)
	movwf	(key_driver@key_return)
	line	45
	
l3596:	
;scankey.c: 45: key->key_state_buffer1 = 3;
	incf	(key_driver@key),w
	movwf	fsr0
	movlw	low(03h)
	movwf	indf
	goto	l3606
	line	51
	
l3598:	
;scankey.c: 51: if (key_read == 1)
		decf	((key_driver@key_read)),w
	btfss	status,2
	goto	u1381
	goto	u1380
u1381:
	goto	l3606
u1380:
	line	53
	
l3600:	
;scankey.c: 52: {
;scankey.c: 53: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	goto	l3606
	line	15
	
l3604:	
	incf	(key_driver@key),w
	movwf	fsr0
	movf	indf,w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           10     6 (fixed)
; simple_byte           13     7 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	4
	subwf	fsr,w
skipnc
goto l3606
movlw high(S3878)
movwf pclath
	movlw low(S3878)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S3878:
	ljmp	l3574
	ljmp	l3578
	ljmp	l3586
	ljmp	l3598
psect	text9

	line	58
	
l3606:	
;scankey.c: 58: return key_return;
	movf	(key_driver@key_return),w
	line	59
	
l690:	
	return
	opt stack 0
GLOBAL	__end_of_key_driver
	__end_of_key_driver:
	signat	_key_driver,4217
	global	_checkFan

;; *************** function _checkFan *****************
;; Defined at:
;;		line 154 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       1       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_closeFan
;;		_setFanLevel
;; This function is called by:
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	154
global __ptext10
__ptext10:	;psect for function _checkFan
psect	text10
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	154
	global	__size_of_checkFan
	__size_of_checkFan	equ	__end_of_checkFan-_checkFan
	
_checkFan:	
;incstack = 0
	opt	stack 0
; Regs used in _checkFan: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	155
	
l3546:	
;main.c: 155: TRISA&=~(1<<1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	156
;main.c: 156: PORTA|=(1<<1);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(1/8),(1)&7	;volatile
	line	158
;main.c: 158: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	159
;main.c: 159: PORTA|=(1<<2);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(2/8),(2)&7	;volatile
	line	160
	
l3548:	
;main.c: 160: T2CON = 0X04;
	movlw	low(04h)
	movwf	(18)	;volatile
	line	163
	
l3550:	
;main.c: 163: if (((PORTB) >> (6)&1) == 0) {
	movf	(6),w	;volatile
	movwf	(??_checkFan+0)+0
	movlw	06h
u1295:
	clrc
	rrf	(??_checkFan+0)+0,f
	addlw	-1
	skipz
	goto	u1295
	btfsc	0+(??_checkFan+0)+0,(0)&7
	goto	u1301
	goto	u1300
u1301:
	goto	l3554
u1300:
	line	164
	
l3552:	
;main.c: 164: FAN_STATUS = 1;
	clrf	(_FAN_STATUS)
	incf	(_FAN_STATUS),f
	line	165
;main.c: 165: } else {
	goto	l3556
	line	166
	
l3554:	
;main.c: 166: FAN_STATUS = 2;
	movlw	low(02h)
	movwf	(_FAN_STATUS)
	line	169
	
l3556:	
;main.c: 167: }
;main.c: 169: setFanLevel(0);
	movlw	low(0)
	fcall	_setFanLevel
	line	172
	
l3558:	
;main.c: 172: if (FAN_STATUS == 2) {
		movlw	2
	xorwf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1311
	goto	u1310
u1311:
	goto	l622
u1310:
	line	173
	
l3560:	
;main.c: 173: fan_check_time++;
	incf	(_fan_check_time),f
	skipnz
	incf	(_fan_check_time+1),f
	line	174
	
l3562:	
;main.c: 174: if (fan_check_time == 3000) {
		movlw	184
	xorwf	((_fan_check_time)),w
	movlw	11
	skipnz
	xorwf	((_fan_check_time+1)),w
	btfss	status,2
	goto	u1321
	goto	u1320
u1321:
	goto	l622
u1320:
	line	175
	
l3564:	
;main.c: 175: closeFan();
	fcall	_closeFan
	line	181
	
l622:	
	return
	opt stack 0
GLOBAL	__end_of_checkFan
	__end_of_checkFan:
	signat	_checkFan,89
	global	_setFanLevel

;; *************** function _setFanLevel *****************
;; Defined at:
;;		line 90 in file "E:\project\project0508\scm\uf166fan\main.c"
;; Parameters:    Size  Location     Type
;;  level           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  level           1    8[BANK0 ] unsigned char 
;;  levelWidth      2    0        unsigned int 
;;  tempLevel       1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          0       0       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Init_PWM
;;		___awdiv
;;		_setLedOn
;; This function is called by:
;;		_checkFan
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	90
global __ptext11
__ptext11:	;psect for function _setFanLevel
psect	text11
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	90
	global	__size_of_setFanLevel
	__size_of_setFanLevel	equ	__end_of_setFanLevel-_setFanLevel
	
_setFanLevel:	
;incstack = 0
	opt	stack 2
; Regs used in _setFanLevel: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setFanLevel@level stored from wreg
	movwf	(setFanLevel@level)
	line	91
	
l3510:	
;main.c: 91: Init_PWM();
	fcall	_Init_PWM
	line	92
	
l3512:	
;main.c: 92: if(level == 0)
	movf	((setFanLevel@level)),w
	btfss	status,2
	goto	u1251
	goto	u1250
u1251:
	goto	l3516
u1250:
	line	94
	
l3514:	
;main.c: 93: {
;main.c: 94: currentLevel = 3;
	movlw	low(03h)
	movwf	(_currentLevel)
	line	96
	
l3516:	
;main.c: 95: }
;main.c: 96: unsigned int levelWidth = (PR2 + 1) / 4;
	bsf	status, 5	;RP0=1, select bank1
	movf	(146)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	movlw	04h
	movwf	(___awdiv@divisor)
	clrf	(___awdiv@divisor+1)
	fcall	___awdiv
	line	97
	
l3518:	
;main.c: 97: char tempLevel = currentLevel + level;
	movf	(setFanLevel@level),w
	addwf	(_currentLevel),w
	movwf	(setFanLevel@tempLevel)
	line	98
	
l3520:	
;main.c: 98: if (tempLevel > 4) {
	movlw	low(05h)
	subwf	(setFanLevel@tempLevel),w
	skipc
	goto	u1261
	goto	u1260
u1261:
	goto	l3524
u1260:
	line	99
	
l3522:	
;main.c: 99: tempLevel = 4;
	movlw	low(04h)
	movwf	(setFanLevel@tempLevel)
	line	102
	
l3524:	
;main.c: 100: }
;main.c: 102: if (tempLevel < 1) {
	movf	((setFanLevel@tempLevel)),w
	btfss	status,2
	goto	u1271
	goto	u1270
u1271:
	goto	l3528
u1270:
	line	103
	
l3526:	
;main.c: 103: tempLevel = 1;
	clrf	(setFanLevel@tempLevel)
	incf	(setFanLevel@tempLevel),f
	line	107
	
l3528:	
;main.c: 104: }
;main.c: 107: if (FAN_STATUS == 1) {
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1281
	goto	u1280
u1281:
	goto	l611
u1280:
	line	108
	
l3530:	
;main.c: 108: currentLevel = tempLevel;
	movf	(setFanLevel@tempLevel),w
	movwf	(_currentLevel)
	line	109
;main.c: 109: switch(currentLevel)
	goto	l3542
	line	112
	
l3532:	
;main.c: 112: CCPR1L = 1;
	movlw	low(01h)
	movwf	(21)	;volatile
	line	113
;main.c: 113: break;
	goto	l3544
	line	115
	
l3534:	
;main.c: 115: CCPR1L = 2;
	movlw	low(02h)
	movwf	(21)	;volatile
	line	116
;main.c: 116: break;
	goto	l3544
	line	118
	
l3536:	
;main.c: 118: CCPR1L = 3;
	movlw	low(03h)
	movwf	(21)	;volatile
	line	119
;main.c: 119: break;
	goto	l3544
	line	121
	
l3538:	
;main.c: 121: CCPR1L = 5;
	movlw	low(05h)
	movwf	(21)	;volatile
	line	122
;main.c: 122: break;
	goto	l3544
	line	109
	
l3542:	
	movf	(_currentLevel),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           13     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l3532
	xorlw	2^1	; case 2
	skipnz
	goto	l3534
	xorlw	3^2	; case 3
	skipnz
	goto	l3536
	xorlw	4^3	; case 4
	skipnz
	goto	l3538
	goto	l3544
	opt asmopt_pop

	line	126
	
l3544:	
;main.c: 126: setLedOn(currentLevel);
	movf	(_currentLevel),w
	fcall	_setLedOn
	line	129
	
l611:	
	return
	opt stack 0
GLOBAL	__end_of_setFanLevel
	__end_of_setFanLevel:
	signat	_setFanLevel,4217
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "E:\cms\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] int 
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       4       0
;;      Locals:         0       4       0
;;      Temps:          0       0       0
;;      Totals:         0       8       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setFanLevel
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\cms\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
	line	6
global __ptext12
__ptext12:	;psect for function ___awdiv
psect	text12
	file	"E:\cms\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l3442:	
	clrf	(___awdiv@sign)
	line	15
	
l3444:	
	btfss	(___awdiv@divisor+1),7
	goto	u1171
	goto	u1170
u1171:
	goto	l3450
u1170:
	line	16
	
l3446:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l3448:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	19
	
l3450:	
	btfss	(___awdiv@dividend+1),7
	goto	u1181
	goto	u1180
u1181:
	goto	l3456
u1180:
	line	20
	
l3452:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l3454:	
	movlw	low(01h)
	xorwf	(___awdiv@sign),f
	line	23
	
l3456:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l3458:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u1191
	goto	u1190
u1191:
	goto	l3478
u1190:
	line	25
	
l3460:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l3464
	line	27
	
l3462:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	28
	incf	(___awdiv@counter),f
	line	26
	
l3464:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1201
	goto	u1200
u1201:
	goto	l3462
u1200:
	line	31
	
l3466:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	32
	
l3468:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1215
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1215:
	skipc
	goto	u1211
	goto	u1210
u1211:
	goto	l3474
u1210:
	line	33
	
l3470:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l3472:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	36
	
l3474:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	37
	
l3476:	
	decfsz	(___awdiv@counter),f
	goto	u1221
	goto	u1220
u1221:
	goto	l3466
u1220:
	line	39
	
l3478:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u1231
	goto	u1230
u1231:
	goto	l3482
u1230:
	line	40
	
l3480:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	41
	
l3482:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	42
	
l1962:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_closeFan

;; *************** function _closeFan *****************
;; Defined at:
;;		line 132 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          1       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Sleep_Mode
;;		_setLedOn
;; This function is called by:
;;		_checkUsbStatus
;;		_checkFan
;;		_checkKeys
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	132
global __ptext13
__ptext13:	;psect for function _closeFan
psect	text13
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	132
	global	__size_of_closeFan
	__size_of_closeFan	equ	__end_of_closeFan-_closeFan
	
_closeFan:	
;incstack = 0
	opt	stack 2
; Regs used in _closeFan: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	133
	
l3486:	
;main.c: 133: CCP1CON = 0x00;
	clrf	(23)	;volatile
	line	134
;main.c: 134: T2CON = 0X00;
	clrf	(18)	;volatile
	line	136
	
l3488:	
;main.c: 136: currentLevel = 2;
	movlw	low(02h)
	movwf	(_currentLevel)
	line	137
	
l3490:	
;main.c: 137: setLedOn(5);
	movlw	low(05h)
	fcall	_setLedOn
	line	138
	
l3492:	
;main.c: 138: PORTA|=(1<<0);
	bsf	(5)+(0/8),(0)&7	;volatile
	line	140
	
l3494:	
;main.c: 140: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	141
	
l3496:	
;main.c: 141: PORTC&=~(1<<2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(7)+(2/8),(2)&7	;volatile
	line	142
	
l3498:	
;main.c: 142: TRISA&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	143
	
l3500:	
;main.c: 143: PORTA&=~(1<<2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(2/8),(2)&7	;volatile
	line	144
	
l3502:	
;main.c: 144: fan_check_time = 0;
	clrf	(_fan_check_time)
	clrf	(_fan_check_time+1)
	line	145
	
l3504:	
;main.c: 145: FAN_STATUS = 0;
	clrf	(_FAN_STATUS)
	line	147
	
l3506:	
;main.c: 147: if (((PORTB) >> (2)&1) == 0) {
	movf	(6),w	;volatile
	movwf	(??_closeFan+0)+0
	clrc
	rrf	(??_closeFan+0)+0,f
	clrc
	rrf	(??_closeFan+0)+0,f
	btfsc	0+(??_closeFan+0)+0,(0)&7
	goto	u1241
	goto	u1240
u1241:
	goto	l615
u1240:
	line	148
	
l3508:	
;main.c: 148: Sleep_Mode();
	fcall	_Sleep_Mode
	line	150
	
l615:	
	return
	opt stack 0
GLOBAL	__end_of_closeFan
	__end_of_closeFan:
	signat	_closeFan,89
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 345 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_setLedOn
;; This function is called by:
;;		_closeFan
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	345
global __ptext14
__ptext14:	;psect for function _Sleep_Mode
psect	text14
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	345
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 2
; Regs used in _Sleep_Mode: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	346
	
l3416:	
;main.c: 346: INTCON = 0;
	clrf	(11)	;volatile
	line	348
;main.c: 348: OPTION_REG = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(129)^080h	;volatile
	line	350
;main.c: 350: TRISA = 0B00000000;
	clrf	(133)^080h	;volatile
	line	351
	
l3418:	
;main.c: 351: PORTA = 0B01000001;
	movlw	low(041h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	352
	
l3420:	
;main.c: 352: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(398)^0180h	;volatile
	line	354
;main.c: 354: TRISB = 0B00100100;
	movlw	low(024h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	355
;main.c: 355: PORTB = 0B01000000;
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	357
	
l3422:	
;main.c: 357: TRISC = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(135)^080h	;volatile
	line	358
	
l3424:	
;main.c: 358: PORTC = 0B00000011;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(7)	;volatile
	line	359
	
l3426:	
;main.c: 359: setLedOn(5);
	movlw	low(05h)
	fcall	_setLedOn
	line	360
	
l3428:	
;main.c: 360: WPUB = 0B00100000;
	movlw	low(020h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	363
	
l3430:	
;main.c: 363: IOCB = 0B00100100;
	movlw	low(024h)
	movwf	(150)^080h	;volatile
	line	364
	
l3432:	
;main.c: 364: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	365
	
l3434:	
;main.c: 365: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	367
	
l3436:	
;main.c: 367: ADCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(31)	;volatile
	line	369
	
l3438:	
;main.c: 369: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	371
	
l3440:	
;main.c: 371: PORTB;
	bcf	status, 5	;RP0=0, select bank0
	movf	(6),w	;volatile
	line	373
# 373 "E:\project\project0508\scm\uf166fan\main.c"
clrwdt ;# 
	line	375
# 375 "E:\project\project0508\scm\uf166fan\main.c"
sleep ;# 
	line	377
# 377 "E:\project\project0508\scm\uf166fan\main.c"
nop ;# 
psect	text14
	line	382
	
l664:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_setLedOn

;; *************** function _setLedOn *****************
;; Defined at:
;;		line 185 in file "E:\project\project0508\scm\uf166fan\main.c"
;; Parameters:    Size  Location     Type
;;  ledIndex        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ledIndex        1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
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
;;		Nothing
;; This function is called by:
;;		_setFanLevel
;;		_closeFan
;;		_Sleep_Mode
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	185
global __ptext15
__ptext15:	;psect for function _setLedOn
psect	text15
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	185
	global	__size_of_setLedOn
	__size_of_setLedOn	equ	__end_of_setLedOn-_setLedOn
	
_setLedOn:	
;incstack = 0
	opt	stack 3
; Regs used in _setLedOn: [wreg-fsr0h+status,2+status,0]
;setLedOn@ledIndex stored from wreg
	movwf	(setLedOn@ledIndex)
	line	186
	
l3394:	
;main.c: 186: switch(ledIndex) {
	goto	l3398
	line	187
;main.c: 187: case 1:
	
l626:	
	line	189
;main.c: 189: TRISC&=~(1<<1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	190
;main.c: 190: TRISA|=(1<<7);
	bsf	(133)^080h+(7/8),(7)&7	;volatile
	line	191
;main.c: 191: TRISC&=~(1<<0);
	bcf	(135)^080h+(0/8),(0)&7	;volatile
	line	192
;main.c: 192: PORTA&=~(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(7/8),(7)&7	;volatile
	line	193
;main.c: 193: PORTC|=(1<<0);
	bsf	(7)+(0/8),(0)&7	;volatile
	line	194
;main.c: 194: PORTC&=~(1<<1);
	bcf	(7)+(1/8),(1)&7	;volatile
	line	195
;main.c: 195: break;
	goto	l632
	line	196
;main.c: 196: case 2:
	
l628:	
	line	197
;main.c: 197: TRISC&=~(1<<1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	198
;main.c: 198: TRISA|=(1<<7);
	bsf	(133)^080h+(7/8),(7)&7	;volatile
	line	199
;main.c: 199: TRISC&=~(1<<0);
	bcf	(135)^080h+(0/8),(0)&7	;volatile
	line	200
;main.c: 200: PORTA&=~(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(7/8),(7)&7	;volatile
	line	201
;main.c: 201: PORTC&=~(1<<0);
	bcf	(7)+(0/8),(0)&7	;volatile
	line	202
;main.c: 202: PORTC|=(1<<1);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	203
;main.c: 203: break;
	goto	l632
	line	204
;main.c: 204: case 3:
	
l629:	
	line	206
;main.c: 206: TRISC|=(1<<0);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(0/8),(0)&7	;volatile
	line	207
;main.c: 207: TRISA&=~(1<<7);
	bcf	(133)^080h+(7/8),(7)&7	;volatile
	line	208
;main.c: 208: TRISC&=~(1<<1);
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	209
;main.c: 209: PORTA|=(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(7/8),(7)&7	;volatile
	line	210
;main.c: 210: PORTC&=~(1<<0);
	bcf	(7)+(0/8),(0)&7	;volatile
	line	211
;main.c: 211: PORTC&=~(1<<1);
	bcf	(7)+(1/8),(1)&7	;volatile
	line	212
;main.c: 212: break;
	goto	l632
	line	213
;main.c: 213: case 4:
	
l630:	
	line	214
;main.c: 214: TRISC|=(1<<0);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(0/8),(0)&7	;volatile
	line	215
;main.c: 215: TRISA&=~(1<<7);
	bcf	(133)^080h+(7/8),(7)&7	;volatile
	line	216
;main.c: 216: TRISC&=~(1<<1);
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	217
;main.c: 217: PORTA&=~(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(7/8),(7)&7	;volatile
	line	218
;main.c: 218: PORTC|=(1<<0);
	bsf	(7)+(0/8),(0)&7	;volatile
	line	219
;main.c: 219: PORTC|=(1<<1);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	220
;main.c: 220: break;
	goto	l632
	line	221
;main.c: 221: case 5:
	
l631:	
	line	223
;main.c: 223: TRISC|=(1<<0);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(0/8),(0)&7	;volatile
	line	224
;main.c: 224: TRISA|=(1<<7);
	bsf	(133)^080h+(7/8),(7)&7	;volatile
	line	225
;main.c: 225: TRISC|=(1<<1);
	bsf	(135)^080h+(1/8),(1)&7	;volatile
	line	226
;main.c: 226: PORTA|=(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(7/8),(7)&7	;volatile
	line	227
;main.c: 227: PORTC|=(1<<0);
	bsf	(7)+(0/8),(0)&7	;volatile
	line	228
;main.c: 228: PORTC|=(1<<1);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	229
;main.c: 229: break;
	goto	l632
	line	186
	
l3398:	
	movf	(setLedOn@ledIndex),w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 1 to 5
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           14     9 (fixed)
; simple_byte           16     9 (average)
; jumptable            263     9 (fixed)
;	Chosen strategy is direct_byte

	addlw	-1
	skipc
goto l632
	movwf fsr
	movlw	5
	subwf	fsr,w
skipnc
goto l632
movlw high(S3880)
movwf pclath
	movlw low(S3880)
	addwf fsr,w
	movwf pc
psect	swtext2,local,class=CONST,delta=2
global __pswtext2
__pswtext2:
S3880:
	ljmp	l626
	ljmp	l628
	ljmp	l629
	ljmp	l630
	ljmp	l631
psect	text15

	line	231
	
l632:	
	return
	opt stack 0
GLOBAL	__end_of_setLedOn
	__end_of_setLedOn:
	signat	_setLedOn,4217
	global	_Init_Config

;; *************** function _Init_Config *****************
;; Defined at:
;;		line 314 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Init_GPIO
;;		_Init_Interupt
;;		_Init_PWM
;;		_Init_System
;;		_resetKey
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	314
global __ptext16
__ptext16:	;psect for function _Init_Config
psect	text16
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	314
	global	__size_of_Init_Config
	__size_of_Init_Config	equ	__end_of_Init_Config-_Init_Config
	
_Init_Config:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_Config: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	315
	
l3758:	
;main.c: 315: if(FAN_STATUS == 1)
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1671
	goto	u1670
u1671:
	goto	l3762
u1670:
	goto	l661
	line	319
	
l3762:	
;main.c: 318: }
;main.c: 319: Init_System();
	fcall	_Init_System
	line	320
;main.c: 320: Init_GPIO();
	fcall	_Init_GPIO
	line	321
;main.c: 321: Init_Interupt();
	fcall	_Init_Interupt
	line	322
;main.c: 322: Init_PWM();
	fcall	_Init_PWM
	line	324
	
l3764:	
;main.c: 324: IOCB = 0x04;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(150)^080h	;volatile
	line	325
	
l3766:	
;main.c: 325: TMR0 = 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	326
	
l3768:	
;main.c: 326: TO = 0;
	bcf	(28/8),(28)&7	;volatile
	line	329
	
l3770:	
;main.c: 329: key1.key_index = 5;
	movlw	low(05h)
	movwf	0+(_key1)+06h
	line	331
	
l3772:	
;main.c: 331: key2.key_index = 4;
	movlw	low(04h)
	movwf	0+(_key2)+06h
	line	333
	
l3774:	
;main.c: 333: key3.key_index = 3;
	movlw	low(03h)
	movwf	0+(_key3)+06h
	line	334
	
l3776:	
;main.c: 334: resetKey(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	335
	
l3778:	
;main.c: 335: resetKey(&key2);
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	336
	
l3780:	
;main.c: 336: resetKey(&key3);
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	338
	
l3782:	
;main.c: 338: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	339
	
l3784:	
;main.c: 339: TRISB = 0x7E;
	movlw	low(07Eh)
	movwf	(134)^080h	;volatile
	line	340
	
l3786:	
;main.c: 340: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	341
	
l3788:	
;main.c: 341: lowVTime = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_lowVTime)
	line	342
	
l3790:	
;main.c: 342: Init_PWM();
	fcall	_Init_PWM
	line	343
	
l661:	
	return
	opt stack 0
GLOBAL	__end_of_Init_Config
	__end_of_Init_Config:
	signat	_Init_Config,89
	global	_resetKey

;; *************** function _resetKey *****************
;; Defined at:
;;		line 100 in file "E:\project\project0508\scm\uf166fan\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    4[COMMON] PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 800/0
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
;;		Nothing
;; This function is called by:
;;		_Init_Config
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\scankey.c"
	line	100
global __ptext17
__ptext17:	;psect for function _resetKey
psect	text17
	file	"E:\project\project0508\scm\uf166fan\scankey.c"
	line	100
	global	__size_of_resetKey
	__size_of_resetKey	equ	__end_of_resetKey-_resetKey
	
_resetKey:	
;incstack = 0
	opt	stack 3
; Regs used in _resetKey: [wreg-fsr0h+status,2+status,0]
;resetKey@key stored from wreg
	movwf	(resetKey@key)
	line	101
	
l3042:	
;scankey.c: 101: key->key_timer_cnt1 = key->key_timer_cnt2 = key->key_state_buffer1 = key->key_state_buffer2 = 0;
	movf	(resetKey@key),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	(resetKey@key),w
	movwf	fsr0
	clrf	indf
	movf	(resetKey@key),w
	addlw	02h
	movwf	fsr0
	clrf	indf
	movf	(resetKey@key),w
	movwf	fsr0
	clrf	indf
	line	102
	
l705:	
	return
	opt stack 0
GLOBAL	__end_of_resetKey
	__end_of_resetKey:
	signat	_resetKey,4217
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 3 in file "E:\project\project0508\scm\uf166fan\init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/100
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
;;		Nothing
;; This function is called by:
;;		_Init_Config
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\init.c"
	line	3
global __ptext18
__ptext18:	;psect for function _Init_System
psect	text18
	file	"E:\project\project0508\scm\uf166fan\init.c"
	line	3
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_System: [wreg+status,2]
	line	4
	
l3016:	
# 4 "E:\project\project0508\scm\uf166fan\init.c"
nop ;# 
	line	5
# 5 "E:\project\project0508\scm\uf166fan\init.c"
clrwdt ;# 
psect	text18
	line	6
	
l3018:	
;init.c: 6: INTCON = 0;
	clrf	(11)	;volatile
	line	7
	
l3020:	
;init.c: 7: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	8
	
l3022:	
;init.c: 8: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	10
	
l1244:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Init_PWM

;; *************** function _Init_PWM *****************
;; Defined at:
;;		line 76 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;;		On exit  : 300/0
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
;;		Nothing
;; This function is called by:
;;		_setFanLevel
;;		_Init_Config
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	76
global __ptext19
__ptext19:	;psect for function _Init_PWM
psect	text19
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	76
	global	__size_of_Init_PWM
	__size_of_Init_PWM	equ	__end_of_Init_PWM-_Init_PWM
	
_Init_PWM:	
;incstack = 0
	opt	stack 2
; Regs used in _Init_PWM: [wreg+status,2]
	line	77
	
l3404:	
;main.c: 77: CCP1CON = 0x0F;
	movlw	low(0Fh)
	movwf	(23)	;volatile
	line	78
	
l3406:	
;main.c: 78: T2CON = 0;
	clrf	(18)	;volatile
	line	79
	
l3408:	
;main.c: 79: PR2 = 7;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	81
;main.c: 81: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	82
	
l3410:	
;main.c: 82: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	83
;main.c: 83: T2CON = 0;
	clrf	(18)	;volatile
	line	85
	
l3412:	
;main.c: 85: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	86
	
l3414:	
;main.c: 86: T2CON = 0X04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	87
	
l598:	
	return
	opt stack 0
GLOBAL	__end_of_Init_PWM
	__end_of_Init_PWM:
	signat	_Init_PWM,89
	global	_Init_Interupt

;; *************** function _Init_Interupt *****************
;; Defined at:
;;		line 27 in file "E:\project\project0508\scm\uf166fan\init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/0
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
;;		Nothing
;; This function is called by:
;;		_Init_Config
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\init.c"
	line	27
global __ptext20
__ptext20:	;psect for function _Init_Interupt
psect	text20
	file	"E:\project\project0508\scm\uf166fan\init.c"
	line	27
	global	__size_of_Init_Interupt
	__size_of_Init_Interupt	equ	__end_of_Init_Interupt-_Init_Interupt
	
_Init_Interupt:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_Interupt: [wreg+status,2]
	line	28
	
l3038:	
;init.c: 28: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	29
;init.c: 29: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	30
	
l3040:	
;init.c: 30: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(11)	;volatile
	line	32
	
l1250:	
	return
	opt stack 0
GLOBAL	__end_of_Init_Interupt
	__end_of_Init_Interupt:
	signat	_Init_Interupt,89
	global	_Init_GPIO

;; *************** function _Init_GPIO *****************
;; Defined at:
;;		line 13 in file "E:\project\project0508\scm\uf166fan\init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
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
;;		Nothing
;; This function is called by:
;;		_Init_Config
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext21
__ptext21:	;psect for function _Init_GPIO
psect	text21
	file	"E:\project\project0508\scm\uf166fan\init.c"
	line	13
	global	__size_of_Init_GPIO
	__size_of_Init_GPIO	equ	__end_of_Init_GPIO-_Init_GPIO
	
_Init_GPIO:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_GPIO: [wreg+status,2]
	line	14
	
l3024:	
;init.c: 14: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	15
;init.c: 15: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	16
;init.c: 16: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	17
	
l3026:	
;init.c: 17: WPUA = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	18
	
l3028:	
;init.c: 18: WPUB = 0xFF;
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	19
	
l3030:	
;init.c: 19: WPUC = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	20
	
l3032:	
;init.c: 20: PORTA = 0xFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	21
	
l3034:	
;init.c: 21: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(6)	;volatile
	line	22
	
l3036:	
;init.c: 22: PORTC = 0xFF;
	movlw	low(0FFh)
	movwf	(7)	;volatile
	line	23
;init.c: 23: IOCB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	25
	
l1247:	
	return
	opt stack 0
GLOBAL	__end_of_Init_GPIO
	__end_of_Init_GPIO:
	signat	_Init_GPIO,89
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 395 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          3       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_Init_Config
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	395
global __ptext22
__ptext22:	;psect for function _Timer0_Isr
psect	text22
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	395
	global	__size_of_Timer0_Isr
	__size_of_Timer0_Isr	equ	__end_of_Timer0_Isr-_Timer0_Isr
	
_Timer0_Isr:	
;incstack = 0
	opt	stack 0
; Regs used in _Timer0_Isr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_Timer0_Isr+0)
	movf	fsr0,w
	movwf	(??_Timer0_Isr+1)
	movf	pclath,w
	movwf	(??_Timer0_Isr+2)
	ljmp	_Timer0_Isr
psect	text22
	line	396
	
i1l3330:	
;main.c: 396: if (T0IF) {
	btfss	(90/8),(90)&7	;volatile
	goto	u115_21
	goto	u115_20
u115_21:
	goto	i1l3338
u115_20:
	line	398
	
i1l3332:	
;main.c: 398: TMR0 += 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(1),f	;volatile
	line	401
	
i1l3334:	
;main.c: 401: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	402
	
i1l3336:	
;main.c: 402: time0Flag = 1;
	clrf	(_time0Flag)
	incf	(_time0Flag),f
	line	406
	
i1l3338:	
;main.c: 404: }
;main.c: 406: if (RBIF) {
	btfss	(88/8),(88)&7	;volatile
	goto	u116_21
	goto	u116_20
u116_21:
	goto	i1l671
u116_20:
	line	407
	
i1l3340:	
;main.c: 407: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	408
	
i1l3342:	
;main.c: 408: Init_Config();
	fcall	i1_Init_Config
	line	410
	
i1l671:	
	movf	(??_Timer0_Isr+2),w
	movwf	pclath
	movf	(??_Timer0_Isr+1),w
	movwf	fsr0
	swapf	(??_Timer0_Isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Timer0_Isr
	__end_of_Timer0_Isr:
	signat	_Timer0_Isr,89
	global	i1_Init_Config

;; *************** function i1_Init_Config *****************
;; Defined at:
;;		line 314 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;;		i1_Init_GPIO
;;		i1_Init_Interupt
;;		i1_Init_PWM
;;		i1_Init_System
;;		i1_resetKey
;; This function is called by:
;;		_Timer0_Isr
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	line	314
global __ptext23
__ptext23:	;psect for function i1_Init_Config
psect	text23
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	314
	global	__size_ofi1_Init_Config
	__size_ofi1_Init_Config	equ	__end_ofi1_Init_Config-i1_Init_Config
	
i1_Init_Config:	
;incstack = 0
	opt	stack 0
; Regs used in i1_Init_Config: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	315
	
i1l3264:	
;main.c: 315: if(FAN_STATUS == 1)
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u110_21
	goto	u110_20
u110_21:
	goto	i1l3268
u110_20:
	goto	i1l661
	line	319
	
i1l3268:	
;main.c: 318: }
;main.c: 319: Init_System();
	fcall	i1_Init_System
	line	320
;main.c: 320: Init_GPIO();
	fcall	i1_Init_GPIO
	line	321
;main.c: 321: Init_Interupt();
	fcall	i1_Init_Interupt
	line	322
;main.c: 322: Init_PWM();
	fcall	i1_Init_PWM
	line	324
	
i1l3270:	
;main.c: 324: IOCB = 0x04;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(150)^080h	;volatile
	line	325
	
i1l3272:	
;main.c: 325: TMR0 = 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	326
	
i1l3274:	
;main.c: 326: TO = 0;
	bcf	(28/8),(28)&7	;volatile
	line	329
	
i1l3276:	
;main.c: 329: key1.key_index = 5;
	movlw	low(05h)
	movwf	0+(_key1)+06h
	line	331
	
i1l3278:	
;main.c: 331: key2.key_index = 4;
	movlw	low(04h)
	movwf	0+(_key2)+06h
	line	333
	
i1l3280:	
;main.c: 333: key3.key_index = 3;
	movlw	low(03h)
	movwf	0+(_key3)+06h
	line	334
	
i1l3282:	
;main.c: 334: resetKey(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	i1_resetKey
	line	335
	
i1l3284:	
;main.c: 335: resetKey(&key2);
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	i1_resetKey
	line	336
	
i1l3286:	
;main.c: 336: resetKey(&key3);
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	i1_resetKey
	line	338
	
i1l3288:	
;main.c: 338: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	339
	
i1l3290:	
;main.c: 339: TRISB = 0x7E;
	movlw	low(07Eh)
	movwf	(134)^080h	;volatile
	line	340
	
i1l3292:	
;main.c: 340: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	341
	
i1l3294:	
;main.c: 341: lowVTime = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_lowVTime)
	line	342
	
i1l3296:	
;main.c: 342: Init_PWM();
	fcall	i1_Init_PWM
	line	343
	
i1l661:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_Config
	__end_ofi1_Init_Config:
	signat	i1_Init_Config,89
	global	i1_resetKey

;; *************** function i1_resetKey *****************
;; Defined at:
;;		line 100 in file "E:\project\project0508\scm\uf166fan\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    0[COMMON] PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 800/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_Init_Config
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\scankey.c"
	line	100
global __ptext24
__ptext24:	;psect for function i1_resetKey
psect	text24
	file	"E:\project\project0508\scm\uf166fan\scankey.c"
	line	100
	global	__size_ofi1_resetKey
	__size_ofi1_resetKey	equ	__end_ofi1_resetKey-i1_resetKey
	
i1_resetKey:	
;incstack = 0
	opt	stack 0
; Regs used in i1_resetKey: [wreg-fsr0h+status,2+status,0]
;i1resetKey@key stored from wreg
	movwf	(i1resetKey@key)
	line	101
	
i1l3132:	
;scankey.c: 101: key->key_timer_cnt1 = key->key_timer_cnt2 = key->key_state_buffer1 = key->key_state_buffer2 = 0;
	movf	(i1resetKey@key),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	(i1resetKey@key),w
	movwf	fsr0
	clrf	indf
	movf	(i1resetKey@key),w
	addlw	02h
	movwf	fsr0
	clrf	indf
	movf	(i1resetKey@key),w
	movwf	fsr0
	clrf	indf
	line	102
	
i1l705:	
	return
	opt stack 0
GLOBAL	__end_ofi1_resetKey
	__end_ofi1_resetKey:
	signat	i1_resetKey,89
	global	i1_Init_System

;; *************** function i1_Init_System *****************
;; Defined at:
;;		line 3 in file "E:\project\project0508\scm\uf166fan\init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/100
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
;;		i1_Init_Config
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\init.c"
	line	3
global __ptext25
__ptext25:	;psect for function i1_Init_System
psect	text25
	file	"E:\project\project0508\scm\uf166fan\init.c"
	line	3
	global	__size_ofi1_Init_System
	__size_ofi1_Init_System	equ	__end_ofi1_Init_System-i1_Init_System
	
i1_Init_System:	
;incstack = 0
	opt	stack 0
; Regs used in i1_Init_System: [wreg+status,2]
	line	4
	
i1l3134:	
# 4 "E:\project\project0508\scm\uf166fan\init.c"
nop ;# 
	line	5
# 5 "E:\project\project0508\scm\uf166fan\init.c"
clrwdt ;# 
psect	text25
	line	6
	
i1l3136:	
;init.c: 6: INTCON = 0;
	clrf	(11)	;volatile
	line	7
	
i1l3138:	
;init.c: 7: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	8
	
i1l3140:	
;init.c: 8: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	10
	
i1l1244:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_System
	__end_ofi1_Init_System:
	signat	i1_Init_System,89
	global	i1_Init_PWM

;; *************** function i1_Init_PWM *****************
;; Defined at:
;;		line 76 in file "E:\project\project0508\scm\uf166fan\main.c"
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
;;		On exit  : 300/0
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
;;		i1_Init_Config
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	76
global __ptext26
__ptext26:	;psect for function i1_Init_PWM
psect	text26
	file	"E:\project\project0508\scm\uf166fan\main.c"
	line	76
	global	__size_ofi1_Init_PWM
	__size_ofi1_Init_PWM	equ	__end_ofi1_Init_PWM-i1_Init_PWM
	
i1_Init_PWM:	
;incstack = 0
	opt	stack 0
; Regs used in i1_Init_PWM: [wreg+status,2]
	line	77
	
i1l3120:	
;main.c: 77: CCP1CON = 0x0F;
	movlw	low(0Fh)
	movwf	(23)	;volatile
	line	78
	
i1l3122:	
;main.c: 78: T2CON = 0;
	clrf	(18)	;volatile
	line	79
	
i1l3124:	
;main.c: 79: PR2 = 7;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	81
;main.c: 81: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	82
	
i1l3126:	
;main.c: 82: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	83
;main.c: 83: T2CON = 0;
	clrf	(18)	;volatile
	line	85
	
i1l3128:	
;main.c: 85: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	86
	
i1l3130:	
;main.c: 86: T2CON = 0X04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	87
	
i1l598:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_PWM
	__end_ofi1_Init_PWM:
	signat	i1_Init_PWM,89
	global	i1_Init_Interupt

;; *************** function i1_Init_Interupt *****************
;; Defined at:
;;		line 27 in file "E:\project\project0508\scm\uf166fan\init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/0
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
;;		i1_Init_Config
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\uf166fan\init.c"
	line	27
global __ptext27
__ptext27:	;psect for function i1_Init_Interupt
psect	text27
	file	"E:\project\project0508\scm\uf166fan\init.c"
	line	27
	global	__size_ofi1_Init_Interupt
	__size_ofi1_Init_Interupt	equ	__end_ofi1_Init_Interupt-i1_Init_Interupt
	
i1_Init_Interupt:	
;incstack = 0
	opt	stack 0
; Regs used in i1_Init_Interupt: [wreg+status,2]
	line	28
	
i1l3156:	
;init.c: 28: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	29
;init.c: 29: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	30
	
i1l3158:	
;init.c: 30: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(11)	;volatile
	line	32
	
i1l1250:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_Interupt
	__end_ofi1_Init_Interupt:
	signat	i1_Init_Interupt,89
	global	i1_Init_GPIO

;; *************** function i1_Init_GPIO *****************
;; Defined at:
;;		line 13 in file "E:\project\project0508\scm\uf166fan\init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
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
;;		i1_Init_Config
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext28
__ptext28:	;psect for function i1_Init_GPIO
psect	text28
	file	"E:\project\project0508\scm\uf166fan\init.c"
	line	13
	global	__size_ofi1_Init_GPIO
	__size_ofi1_Init_GPIO	equ	__end_ofi1_Init_GPIO-i1_Init_GPIO
	
i1_Init_GPIO:	
;incstack = 0
	opt	stack 0
; Regs used in i1_Init_GPIO: [wreg+status,2]
	line	14
	
i1l3142:	
;init.c: 14: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	15
;init.c: 15: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	16
;init.c: 16: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	17
	
i1l3144:	
;init.c: 17: WPUA = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	18
	
i1l3146:	
;init.c: 18: WPUB = 0xFF;
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	19
	
i1l3148:	
;init.c: 19: WPUC = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	20
	
i1l3150:	
;init.c: 20: PORTA = 0xFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	21
	
i1l3152:	
;init.c: 21: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(6)	;volatile
	line	22
	
i1l3154:	
;init.c: 22: PORTC = 0xFF;
	movlw	low(0FFh)
	movwf	(7)	;volatile
	line	23
;init.c: 23: IOCB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	25
	
i1l1247:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_GPIO
	__end_ofi1_Init_GPIO:
	signat	i1_Init_GPIO,89
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
