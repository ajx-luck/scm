opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1711C
opt include "C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\include\sc8p1711c.cgen.inc"
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
	FNCALL	_main,_readVrefADC
	FNCALL	_main,_scanKeys
	FNCALL	_scanKeys,_sacnKeyInput
	FNCALL	_readVrefADC,_ADC_Result
	FNCALL	_readVrefADC,_ADC_Sample
	FNCALL	_readVrefADC,_DelayXms
	FNCALL	_checkKeys,_checkFan
	FNCALL	_checkKeys,_closeFan
	FNCALL	_checkKeys,_key_driver
	FNCALL	_checkKeys,_setFanLevel
	FNCALL	_checkFan,_closeFan
	FNCALL	_checkFan,_setFanLevel
	FNCALL	_setFanLevel,___awdiv
	FNCALL	_setFanLevel,_setLedOn
	FNCALL	_closeFan,_Init_PWM
	FNCALL	_closeFan,_setLedOn
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
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	25

;initializer for _FAN_STATUS
	retlw	02h
	line	23

;initializer for _currentLevel
	retlw	03h
	global	_time0Flag
	global	ADC_Sample@adsum
	global	ADC_Sample@admax
	global	ADC_Sample@admin
	global	_fan_check_time
	global	_count10Ms
	global	_countTime
	global	_adresult
	global	ADC_Sample@adtimes
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
_time0Flag:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	25
_FAN_STATUS:
       ds      1

psect	dataCOMMON
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
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
	movlw	low((__pbssBANK0)+026h)
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
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
?_setLedOn:	; 1 bytes @ 0x0
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
?_closeFan:	; 1 bytes @ 0x0
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
??_checkUsbStatus:	; 1 bytes @ 0x4
??_Init_PWM:	; 1 bytes @ 0x4
??_ADC_Result:	; 1 bytes @ 0x4
??_DelayXms:	; 1 bytes @ 0x4
??___awdiv:	; 1 bytes @ 0x4
	global	setLedOn@ledIndex
setLedOn@ledIndex:	; 1 bytes @ 0x4
	global	key_driver@key_return
key_driver@key_return:	; 1 bytes @ 0x4
	global	resetKey@key
resetKey@key:	; 1 bytes @ 0x4
	global	DelayXms@x
DelayXms@x:	; 1 bytes @ 0x4
	ds	1
??_Init_Config:	; 1 bytes @ 0x5
??_setFanLevel:	; 1 bytes @ 0x5
??_closeFan:	; 1 bytes @ 0x5
	global	setFanLevel@level
setFanLevel@level:	; 1 bytes @ 0x5
	global	key_driver@key_read
key_driver@key_read:	; 1 bytes @ 0x5
	global	ADC_Result@adch
ADC_Result@adch:	; 1 bytes @ 0x5
	global	DelayXms@i
DelayXms@i:	; 1 bytes @ 0x5
	ds	1
	global	setFanLevel@tempLevel
setFanLevel@tempLevel:	; 1 bytes @ 0x6
	global	sacnKeyInput@key
sacnKeyInput@key:	; 1 bytes @ 0x6
	global	key_driver@key
key_driver@key:	; 1 bytes @ 0x6
	global	ADC_Result@i
ADC_Result@i:	; 1 bytes @ 0x6
	global	DelayXms@j
DelayXms@j:	; 1 bytes @ 0x6
	ds	1
??_readVrefADC:	; 1 bytes @ 0x7
??_scanKeys:	; 1 bytes @ 0x7
??_checkKeys:	; 1 bytes @ 0x7
??_main:	; 1 bytes @ 0x7
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_ADC_Sample:	; 1 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	2
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
??_checkFan:	; 1 bytes @ 0x8
	ds	1
	global	checkKeys@key2Status
checkKeys@key2Status:	; 1 bytes @ 0x9
	ds	1
	global	checkKeys@key3Status
checkKeys@key3Status:	; 1 bytes @ 0xA
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        2
;!    BSS         39
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      10
;!    BANK0            80     11      49
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
;!    _scanKeys->_sacnKeyInput
;!    _readVrefADC->_ADC_Result
;!    _readVrefADC->_DelayXms
;!    _checkKeys->_key_driver
;!    _checkKeys->_setFanLevel
;!    _checkFan->_setFanLevel
;!    _setFanLevel->_setLedOn
;!    _closeFan->_setLedOn
;!    _Init_Config->_resetKey
;!
;!Critical Paths under _Timer0_Isr in COMMON
;!
;!    i1_Init_Config->i1_resetKey
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_checkKeys
;!    _readVrefADC->_ADC_Sample
;!    _checkKeys->_checkFan
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
;! (0) _main                                                 0     0      0    3009
;!                        _Init_Config
;!                          _checkKeys
;!                     _checkUsbStatus
;!                        _readVrefADC
;!                           _scanKeys
;! ---------------------------------------------------------------------------------
;! (1) _scanKeys                                             0     0      0     169
;!                       _sacnKeyInput
;! ---------------------------------------------------------------------------------
;! (2) _sacnKeyInput                                         3     3      0     169
;!                                              4 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _readVrefADC                                          1     1      0     533
;!                                              8 BANK0      1     1      0
;!                         _ADC_Result
;!                         _ADC_Sample
;!                           _DelayXms
;! ---------------------------------------------------------------------------------
;! (2) _DelayXms                                             3     3      0     167
;!                                              4 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Sample                                           8     8      0     291
;!                                              0 BANK0      8     8      0
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Result                                           3     3      0      65
;!                                              4 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _checkUsbStatus                                       1     1      0       0
;!                                              4 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _checkKeys                                            2     2      0    2138
;!                                              9 BANK0      2     2      0
;!                           _checkFan
;!                           _closeFan
;!                         _key_driver
;!                        _setFanLevel
;! ---------------------------------------------------------------------------------
;! (2) _key_driver                                           3     3      0     442
;!                                              4 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _checkFan                                             1     1      0     814
;!                                              8 BANK0      1     1      0
;!                           _closeFan
;!                        _setFanLevel
;! ---------------------------------------------------------------------------------
;! (2) _setFanLevel                                          4     4      0     792
;!                                              5 COMMON     2     2      0
;!                            ___awdiv
;!                           _setLedOn
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              8     4      4     606
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (2) _closeFan                                             0     0      0      22
;!                           _Init_PWM
;!                           _setLedOn
;! ---------------------------------------------------------------------------------
;! (3) _setLedOn                                             1     1      0      22
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
;! (5) _Timer0_Isr                                           3     3      0      88
;!                                              1 COMMON     3     3      0
;!                      i1_Init_Config
;! ---------------------------------------------------------------------------------
;! (6) i1_Init_Config                                        0     0      0      88
;!                        i1_Init_GPIO
;!                    i1_Init_Interupt
;!                         i1_Init_PWM
;!                      i1_Init_System
;!                         i1_resetKey
;! ---------------------------------------------------------------------------------
;! (7) i1_resetKey                                           1     1      0      88
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (7) i1_Init_System                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) i1_Init_PWM                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) i1_Init_Interupt                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) i1_Init_GPIO                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
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
;!         _Init_PWM
;!         _setLedOn
;!       _setFanLevel
;!         ___awdiv
;!         _setLedOn
;!     _closeFan
;!       _Init_PWM
;!       _setLedOn
;!     _key_driver
;!     _setFanLevel
;!       ___awdiv
;!       _setLedOn
;!   _checkUsbStatus
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
;!BANK0               50      B      31       5       61.3%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      7       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      3B       8        0.0%
;!ABS                  0      0      3B       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 244 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Init_Config
;;		_checkKeys
;;		_checkUsbStatus
;;		_readVrefADC
;;		_scanKeys
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	244
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	244
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	245
	
l3434:	
;main.c: 245: Init_Config();
	fcall	_Init_Config
	line	248
	
l3436:	
;main.c: 248: if (time0Flag) {
	movf	((_time0Flag)),w
	btfsc	status,2
	goto	u1371
	goto	u1370
u1371:
	goto	l3446
u1370:
	line	249
	
l3438:	
# 249 "C:\SCMCU WorkSpace\uf166fan\main.c"
clrwdt ;# 
psect	maintext
	line	250
	
l3440:	
;main.c: 250: time0Flag = 0;
	clrf	(_time0Flag)
	line	251
	
l3442:	
;main.c: 251: scanKeys();
	fcall	_scanKeys
	line	252
	
l3444:	
;main.c: 252: count10Ms++;
	incf	(_count10Ms),f
	skipnz
	incf	(_count10Ms+1),f
	line	256
	
l3446:	
;main.c: 253: }
;main.c: 256: if (count10Ms == 100) {
		movlw	100
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_count10Ms)),w
iorwf	((_count10Ms+1)),w
	btfss	status,2
	goto	u1381
	goto	u1380
u1381:
	goto	l3456
u1380:
	line	257
	
l3448:	
;main.c: 257: checkKeys();
	fcall	_checkKeys
	line	258
	
l3450:	
;main.c: 258: count10Ms = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_count10Ms)
	clrf	(_count10Ms+1)
	line	260
	
l3452:	
;main.c: 260: checkUsbStatus();
	fcall	_checkUsbStatus
	line	261
	
l3454:	
;main.c: 261: readVrefADC();
	fcall	_readVrefADC
	line	264
	
l3456:	
;main.c: 262: }
;main.c: 264: if (countTime == 1000) {
		movlw	232
	xorwf	((_countTime)),w
	movlw	3
	skipnz
	xorwf	((_countTime+1)),w
	btfss	status,2
	goto	u1391
	goto	u1390
u1391:
	goto	l3436
u1390:
	line	265
	
l3458:	
;main.c: 265: countTime = 0;
	clrf	(_countTime)
	clrf	(_countTime+1)
	goto	l3436
	global	start
	ljmp	start
	opt stack 0
	line	270
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_scanKeys

;; *************** function _scanKeys *****************
;; Defined at:
;;		line 202 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
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
	line	202
global __ptext1
__ptext1:	;psect for function _scanKeys
psect	text1
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	202
	global	__size_of_scanKeys
	__size_of_scanKeys	equ	__end_of_scanKeys-_scanKeys
	
_scanKeys:	
;incstack = 0
	opt	stack 3
; Regs used in _scanKeys: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	203
	
l3034:	
;main.c: 203: key1.key_addr_result = key2.key_addr_result = key3.key_addr_result = PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	0+(_key3)+05h
	movwf	0+(_key2)+05h
	movwf	0+(_key1)+05h
	line	204
	
l3036:	
;main.c: 204: sacnKeyInput(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	205
	
l3038:	
;main.c: 205: sacnKeyInput(&key2);
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	206
	
l3040:	
;main.c: 206: sacnKeyInput(&key3);
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	207
	
l3042:	
;main.c: 207: countTime++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_countTime),f
	skipnz
	incf	(_countTime+1),f
	line	209
	
l621:	
	return
	opt stack 0
GLOBAL	__end_of_scanKeys
	__end_of_scanKeys:
	signat	_scanKeys,89
	global	_sacnKeyInput

;; *************** function _sacnKeyInput *****************
;; Defined at:
;;		line 3 in file "C:\SCMCU WorkSpace\uf166fan\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    6[COMMON] PTR struct Keys
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
;;      Temps:          2       0       0
;;      Totals:         3       0       0
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
	file	"C:\SCMCU WorkSpace\uf166fan\scankey.c"
	line	3
global __ptext2
__ptext2:	;psect for function _sacnKeyInput
psect	text2
	file	"C:\SCMCU WorkSpace\uf166fan\scankey.c"
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
	
l2834:	
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
	goto	u664
u665:
	clrc
	rrf	(??_sacnKeyInput+0)+0,f
u664:
	addlw	-1
	skipz
	goto	u665
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
	
l658:	
	return
	opt stack 0
GLOBAL	__end_of_sacnKeyInput
	__end_of_sacnKeyInput:
	signat	_sacnKeyInput,4217
	global	_readVrefADC

;; *************** function _readVrefADC *****************
;; Defined at:
;;		line 90 in file "C:\SCMCU WorkSpace\uf166fan\adc.c"
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
;;      Locals:         0       1       0
;;      Temps:          0       0       0
;;      Totals:         0       1       0
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
	file	"C:\SCMCU WorkSpace\uf166fan\adc.c"
	line	90
global __ptext3
__ptext3:	;psect for function _readVrefADC
psect	text3
	file	"C:\SCMCU WorkSpace\uf166fan\adc.c"
	line	90
	global	__size_of_readVrefADC
	__size_of_readVrefADC	equ	__end_of_readVrefADC-_readVrefADC
	
_readVrefADC:	
;incstack = 0
	opt	stack 3
; Regs used in _readVrefADC: [wreg+status,2+status,0+pclath+cstack]
	line	92
	
l3430:	
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
	
l1810:	
	return
	opt stack 0
GLOBAL	__end_of_readVrefADC
	__end_of_readVrefADC:
	signat	_readVrefADC,89
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 82 in file "C:\SCMCU WorkSpace\uf166fan\adc.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    4[COMMON] unsigned char 
;;  j               1    6[COMMON] unsigned char 
;;  i               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         3       0       0
;;      Temps:          0       0       0
;;      Totals:         3       0       0
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
	file	"C:\SCMCU WorkSpace\uf166fan\adc.c"
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
	
l3378:	
;adc.c: 84: unsigned char i,j;
;adc.c: 85: for(i=x;i>0;i--)
	movf	(DelayXms@x),w
	movwf	(DelayXms@i)
	
l3380:	
	movf	((DelayXms@i)),w
	btfss	status,2
	goto	u1301
	goto	u1300
u1301:
	goto	l3384
u1300:
	goto	l1807
	line	86
	
l3384:	
;adc.c: 86: for(j=153;j>0;j--);
	movlw	low(099h)
	movwf	(DelayXms@j)
	
l3390:	
	decf	(DelayXms@j),f
	
l3392:	
	movf	((DelayXms@j)),w
	btfss	status,2
	goto	u1311
	goto	u1310
u1311:
	goto	l3390
u1310:
	line	85
	
l3394:	
	decf	(DelayXms@i),f
	goto	l3380
	line	87
	
l1807:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 11 in file "C:\SCMCU WorkSpace\uf166fan\adc.c"
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
	file	"C:\SCMCU WorkSpace\uf166fan\adc.c"
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
	
l3322:	
;adc.c: 13: static unsigned long adsum = 0;
;adc.c: 14: static unsigned int admin = 0,admax = 0;
;adc.c: 15: static unsigned char adtimes = 0;
;adc.c: 16: volatile unsigned int ad_temp;
;adc.c: 17: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	18
	
l3324:	
;adc.c: 18: ADCON0 = 0X41 | (adch << 2);
	bcf	status, 5	;RP0=0, select bank0
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u1165:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u1165
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	movwf	(31)	;volatile
	line	19
# 19 "C:\SCMCU WorkSpace\uf166fan\adc.c"
nop ;# 
	line	20
# 20 "C:\SCMCU WorkSpace\uf166fan\adc.c"
nop ;# 
psect	text5
	line	21
	
l3326:	
;adc.c: 21: GODONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	23
	
l3328:	
;adc.c: 23: unsigned char i = 0;
	clrf	(ADC_Sample@i)
	line	24
;adc.c: 24: while(GODONE)
	goto	l1783
	
l1784:	
	line	26
;adc.c: 25: {
;adc.c: 26: if(0 == (--i))
	decfsz	(ADC_Sample@i),f
	goto	u1171
	goto	u1170
u1171:
	goto	l1783
u1170:
	goto	l1786
	line	28
	
l1783:	
	line	24
	btfsc	(249/8),(249)&7	;volatile
	goto	u1181
	goto	u1180
u1181:
	goto	l1784
u1180:
	line	30
	
l3332:	
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
	
l3334:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	32
	
l3336:	
;adc.c: 32: if(0 == admax)
	movf	((ADC_Sample@admax)),w
iorwf	((ADC_Sample@admax+1)),w
	btfss	status,2
	goto	u1191
	goto	u1190
u1191:
	goto	l3340
u1190:
	line	34
	
l3338:	
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
	goto	l1789
	line	37
	
l3340:	
;adc.c: 37: else if(ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w
	skipz
	goto	u1205
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w
u1205:
	skipnc
	goto	u1201
	goto	u1200
u1201:
	goto	l3344
u1200:
	line	38
	
l3342:	
;adc.c: 38: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)
	goto	l1789
	line	39
	
l3344:	
;adc.c: 39: else if(ad_temp < admin)
	movf	(ADC_Sample@admin+1),w
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u1215
	movf	(ADC_Sample@admin),w
	subwf	(ADC_Sample@ad_temp),w	;volatile
u1215:
	skipnc
	goto	u1211
	goto	u1210
u1211:
	goto	l1789
u1210:
	line	40
	
l3346:	
;adc.c: 40: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)
	line	42
	
l1789:	
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
	goto	u1221
	addwf	(ADC_Sample@adsum+1),f
u1221:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1222
	addwf	(ADC_Sample@adsum+2),f
u1222:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1223
	addwf	(ADC_Sample@adsum+3),f
u1223:

	line	43
	
l3348:	
;adc.c: 43: if(++adtimes >= 10)
	movlw	low(0Ah)
	incf	(ADC_Sample@adtimes),f
	subwf	((ADC_Sample@adtimes)),w
	skipc
	goto	u1231
	goto	u1230
u1231:
	goto	l1786
u1230:
	line	45
	
l3350:	
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
	goto	u1245
	goto	u1246
u1245:
	subwf	(ADC_Sample@adsum+1),f
u1246:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1247
	goto	u1248
u1247:
	subwf	(ADC_Sample@adsum+2),f
u1248:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1249
	goto	u1240
u1249:
	subwf	(ADC_Sample@adsum+3),f
u1240:

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
	goto	u1255
	goto	u1256
u1255:
	subwf	(ADC_Sample@adsum+1),f
u1256:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1257
	goto	u1258
u1257:
	subwf	(ADC_Sample@adsum+2),f
u1258:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1259
	goto	u1250
u1259:
	subwf	(ADC_Sample@adsum+3),f
u1250:

	line	48
	
l3352:	
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
u1265:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u1260:
	addlw	-1
	skipz
	goto	u1265
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	50
	
l3354:	
;adc.c: 50: adsum = 0;
	clrf	(ADC_Sample@adsum)
	clrf	(ADC_Sample@adsum+1)
	clrf	(ADC_Sample@adsum+2)
	clrf	(ADC_Sample@adsum+3)
	line	51
	
l3356:	
;adc.c: 51: admin = 0;
	clrf	(ADC_Sample@admin)
	clrf	(ADC_Sample@admin+1)
	line	52
	
l3358:	
;adc.c: 52: admax = 0;
	clrf	(ADC_Sample@admax)
	clrf	(ADC_Sample@admax+1)
	line	53
	
l3360:	
;adc.c: 53: adtimes = 0;
	clrf	(ADC_Sample@adtimes)
	line	55
	
l1786:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,4217
	global	_ADC_Result

;; *************** function _ADC_Result *****************
;; Defined at:
;;		line 59 in file "C:\SCMCU WorkSpace\uf166fan\adc.c"
;; Parameters:    Size  Location     Type
;;  adch            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  adch            1    5[COMMON] unsigned char 
;;  i               1    6[COMMON] unsigned char 
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
;;      Locals:         2       0       0
;;      Temps:          1       0       0
;;      Totals:         3       0       0
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
	file	"C:\SCMCU WorkSpace\uf166fan\adc.c"
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
	
l3362:	
;adc.c: 61: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	62
	
l3364:	
;adc.c: 62: ADCON0 = 0X41 | (adch << 2);
	movf	(ADC_Result@adch),w
	movwf	(??_ADC_Result+0)+0
	movlw	(02h)-1
u1275:
	clrc
	rlf	(??_ADC_Result+0)+0,f
	addlw	-1
	skipz
	goto	u1275
	clrc
	rlf	(??_ADC_Result+0)+0,w
	iorlw	041h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	63
# 63 "C:\SCMCU WorkSpace\uf166fan\adc.c"
nop ;# 
	line	64
# 64 "C:\SCMCU WorkSpace\uf166fan\adc.c"
nop ;# 
psect	text6
	line	65
	
l3366:	
;adc.c: 65: GODONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	67
	
l3368:	
;adc.c: 67: unsigned char i = 0;
	clrf	(ADC_Result@i)
	line	68
;adc.c: 68: while(GODONE)
	goto	l1796
	
l1797:	
	line	70
;adc.c: 69: {
;adc.c: 70: if(0 == (--i))
	decfsz	(ADC_Result@i),f
	goto	u1281
	goto	u1280
u1281:
	goto	l1796
u1280:
	line	71
	
l3370:	
;adc.c: 71: return 0;
	movlw	low(0)
	goto	l1799
	line	72
	
l1796:	
	line	68
	btfsc	(249/8),(249)&7	;volatile
	goto	u1291
	goto	u1290
u1291:
	goto	l1797
u1290:
	line	73
	
l3374:	
;adc.c: 72: }
;adc.c: 73: return ADRESH;
	movf	(30),w	;volatile
	line	74
	
l1799:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Result
	__end_of_ADC_Result:
	signat	_ADC_Result,4217
	global	_checkUsbStatus

;; *************** function _checkUsbStatus *****************
;; Defined at:
;;		line 37 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          1       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	37
global __ptext7
__ptext7:	;psect for function _checkUsbStatus
psect	text7
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	37
	global	__size_of_checkUsbStatus
	__size_of_checkUsbStatus	equ	__end_of_checkUsbStatus-_checkUsbStatus
	
_checkUsbStatus:	
;incstack = 0
	opt	stack 4
; Regs used in _checkUsbStatus: [wreg+status,2+status,0]
	line	38
	
l3024:	
;main.c: 38: if (((PORTB) >> (2)&1) == 1) {
	movf	(6),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	btfss	0+(??_checkUsbStatus+0)+0,(0)&7
	goto	u881
	goto	u880
u881:
	goto	l577
u880:
	line	39
	
l3026:	
;main.c: 39: if (((PORTB) >> (1)&1) == 1) {
	movf	(6),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	btfss	0+(??_checkUsbStatus+0)+0,(0)&7
	goto	u891
	goto	u890
u891:
	goto	l3030
u890:
	line	41
	
l3028:	
;main.c: 41: PORTA&=~(1<<0);
	bcf	(5)+(0/8),(0)&7	;volatile
	line	42
;main.c: 42: } else if (countTime == 1000) {
	goto	l582
	
l3030:	
		movlw	232
	xorwf	((_countTime)),w
	movlw	3
	skipnz
	xorwf	((_countTime+1)),w
	btfss	status,2
	goto	u901
	goto	u900
u901:
	goto	l582
u900:
	line	44
	
l3032:	
;main.c: 44: PORTA^=(1<<0);
	movlw	low(01h)
	xorwf	(5),f	;volatile
	goto	l582
	line	46
	
l577:	
	line	48
;main.c: 48: PORTA|=(1<<0);
	bsf	(5)+(0/8),(0)&7	;volatile
	line	50
	
l582:	
	return
	opt stack 0
GLOBAL	__end_of_checkUsbStatus
	__end_of_checkUsbStatus:
	signat	_checkUsbStatus,89
	global	_checkKeys

;; *************** function _checkKeys *****************
;; Defined at:
;;		line 212 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  key3Status      1   10[BANK0 ] unsigned char 
;;  key2Status      1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          0       0       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
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
	line	212
global __ptext8
__ptext8:	;psect for function _checkKeys
psect	text8
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	212
	global	__size_of_checkKeys
	__size_of_checkKeys	equ	__end_of_checkKeys-_checkKeys
	
_checkKeys:	
;incstack = 0
	opt	stack 1
; Regs used in _checkKeys: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	213
	
l3398:	
;main.c: 213: if (key_driver(&key1) == 1) {
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_key_driver
	xorlw	01h
	skipz
	goto	u1321
	goto	u1320
u1321:
	goto	l3412
u1320:
	line	216
	
l3400:	
;main.c: 216: if (FAN_STATUS == 1) {
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1331
	goto	u1330
u1331:
	goto	l3404
u1330:
	line	218
	
l3402:	
;main.c: 218: closeFan();
	fcall	_closeFan
	line	219
;main.c: 219: } else {
	goto	l627
	line	220
	
l3404:	
;main.c: 220: FAN_STATUS = 2;
	movlw	low(02h)
	movwf	(_FAN_STATUS)
	line	221
	
l3406:	
;main.c: 221: checkFan();
	fcall	_checkFan
	goto	l627
	line	224
	
l3412:	
		movlw	2
	xorwf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1341
	goto	u1340
u1341:
	goto	l628
u1340:
	line	225
	
l3414:	
;main.c: 225: checkFan();
	fcall	_checkFan
	line	228
	
l628:	
;main.c: 226: }
;main.c: 228: unsigned char key2Status = key_driver(&key2);
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	_key_driver
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(checkKeys@key2Status)
	line	229
	
l3416:	
;main.c: 229: if (key2Status == 1) {
		decf	((checkKeys@key2Status)),w
	btfss	status,2
	goto	u1351
	goto	u1350
u1351:
	goto	l3422
u1350:
	line	231
	
l3418:	
;main.c: 231: setFanLevel(1);
	movlw	low(01h)
	fcall	_setFanLevel
	goto	l627
	line	234
	
l3422:	
;main.c: 233: }
;main.c: 234: unsigned char key3Status = key_driver(&key3);
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	_key_driver
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(checkKeys@key3Status)
	line	235
	
l3424:	
;main.c: 235: if (key3Status == 1) {
		decf	((checkKeys@key3Status)),w
	btfss	status,2
	goto	u1361
	goto	u1360
u1361:
	goto	l627
u1360:
	line	237
	
l3426:	
;main.c: 237: setFanLevel(-1);
	movlw	low(0FFh)
	fcall	_setFanLevel
	line	241
	
l627:	
	return
	opt stack 0
GLOBAL	__end_of_checkKeys
	__end_of_checkKeys:
	signat	_checkKeys,89
	global	_key_driver

;; *************** function _key_driver *****************
;; Defined at:
;;		line 9 in file "C:\SCMCU WorkSpace\uf166fan\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    6[COMMON] PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;;  key_read        1    5[COMMON] unsigned char 
;;  key_return      1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 800/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         3       0       0
;;      Temps:          0       0       0
;;      Totals:         3       0       0
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
	file	"C:\SCMCU WorkSpace\uf166fan\scankey.c"
	line	9
global __ptext9
__ptext9:	;psect for function _key_driver
psect	text9
	file	"C:\SCMCU WorkSpace\uf166fan\scankey.c"
	line	9
	global	__size_of_key_driver
	__size_of_key_driver	equ	__end_of_key_driver-_key_driver
	
_key_driver:	
;incstack = 0
	opt	stack 3
; Regs used in _key_driver: [wreg-fsr0h+status,2+status,0]
;key_driver@key stored from wreg
	movwf	(key_driver@key)
	line	12
	
l2836:	
;scankey.c: 12: unsigned char key_return = 0;
	clrf	(key_driver@key_return)
	line	13
	
l2838:	
;scankey.c: 13: unsigned char key_read = key->key_input;
	movf	(key_driver@key),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(key_driver@key_read)
	line	15
;scankey.c: 15: switch (key->key_state_buffer1) {
	goto	l2870
	line	17
	
l2840:	
;scankey.c: 17: if (key_read == 0) {
	movf	((key_driver@key_read)),w
	btfss	status,2
	goto	u671
	goto	u670
u671:
	goto	l2872
u670:
	line	18
	
l2842:	
;scankey.c: 18: key->key_state_buffer1 = 1;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	incf	indf,f
	goto	l2872
	line	25
	
l2844:	
;scankey.c: 25: if (key_read == 0) {
	movf	((key_driver@key_read)),w
	btfss	status,2
	goto	u681
	goto	u680
u681:
	goto	l2850
u680:
	line	26
	
l2846:	
;scankey.c: 26: key->key_timer_cnt1 = 0;
	movf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	line	27
	
l2848:	
;scankey.c: 27: key->key_state_buffer1 = 2;
	incf	(key_driver@key),w
	movwf	fsr0
	movlw	low(02h)
	movwf	indf
	line	31
;scankey.c: 31: } else {
	goto	l2872
	line	32
	
l2850:	
;scankey.c: 32: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	goto	l2872
	line	39
	
l2852:	
;scankey.c: 39: if (key_read == 1) {
		decf	((key_driver@key_read)),w
	btfss	status,2
	goto	u691
	goto	u690
u691:
	goto	l2858
u690:
	line	40
	
l2854:	
;scankey.c: 40: key_return = 1;
	clrf	(key_driver@key_return)
	incf	(key_driver@key_return),f
	line	41
	
l2856:	
;scankey.c: 41: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	line	42
;scankey.c: 42: } else if (++(key->key_timer_cnt1) >= 100)
	goto	l2872
	
l2858:	
	movf	(key_driver@key),w
	movwf	fsr0
	incf	indf,f
	movlw	low(064h)
	subwf	(indf),w
	skipc
	goto	u701
	goto	u700
u701:
	goto	l2872
u700:
	line	44
	
l2860:	
;scankey.c: 43: {
;scankey.c: 44: key_return = 3;
	movlw	low(03h)
	movwf	(key_driver@key_return)
	line	45
	
l2862:	
;scankey.c: 45: key->key_state_buffer1 = 3;
	incf	(key_driver@key),w
	movwf	fsr0
	movlw	low(03h)
	movwf	indf
	goto	l2872
	line	51
	
l2864:	
;scankey.c: 51: if (key_read == 1)
		decf	((key_driver@key_read)),w
	btfss	status,2
	goto	u711
	goto	u710
u711:
	goto	l2872
u710:
	line	53
	
l2866:	
;scankey.c: 52: {
;scankey.c: 53: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	goto	l2872
	line	15
	
l2870:	
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
goto l2872
movlw high(S3510)
movwf pclath
	movlw low(S3510)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S3510:
	ljmp	l2840
	ljmp	l2844
	ljmp	l2852
	ljmp	l2864
psect	text9

	line	58
	
l2872:	
;scankey.c: 58: return key_return;
	movf	(key_driver@key_return),w
	line	59
	
l674:	
	return
	opt stack 0
GLOBAL	__end_of_key_driver
	__end_of_key_driver:
	signat	_key_driver,4217
	global	_checkFan

;; *************** function _checkFan *****************
;; Defined at:
;;		line 121 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 800/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       1       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_closeFan
;;		_setFanLevel
;; This function is called by:
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	121
global __ptext10
__ptext10:	;psect for function _checkFan
psect	text10
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	121
	global	__size_of_checkFan
	__size_of_checkFan	equ	__end_of_checkFan-_checkFan
	
_checkFan:	
;incstack = 0
	opt	stack 1
; Regs used in _checkFan: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	122
	
l3300:	
;main.c: 122: TRISA&=~(1<<1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	123
;main.c: 123: PORTA|=(1<<1);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(1/8),(1)&7	;volatile
	line	125
;main.c: 125: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	126
;main.c: 126: PORTA|=(1<<2);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(2/8),(2)&7	;volatile
	line	127
	
l3302:	
;main.c: 127: T2CON = 0X04;
	movlw	low(04h)
	movwf	(18)	;volatile
	line	130
	
l3304:	
;main.c: 130: if (((PORTB) >> (6)&1) == 0) {
	movf	(6),w	;volatile
	movwf	(??_checkFan+0)+0
	movlw	06h
u1125:
	clrc
	rrf	(??_checkFan+0)+0,f
	addlw	-1
	skipz
	goto	u1125
	btfsc	0+(??_checkFan+0)+0,(0)&7
	goto	u1131
	goto	u1130
u1131:
	goto	l3308
u1130:
	line	131
	
l3306:	
;main.c: 131: FAN_STATUS = 1;
	clrf	(_FAN_STATUS)
	incf	(_FAN_STATUS),f
	line	132
;main.c: 132: } else {
	goto	l3310
	line	133
	
l3308:	
;main.c: 133: FAN_STATUS = 2;
	movlw	low(02h)
	movwf	(_FAN_STATUS)
	line	136
	
l3310:	
;main.c: 134: }
;main.c: 136: setFanLevel(0);
	movlw	low(0)
	fcall	_setFanLevel
	line	139
	
l3312:	
;main.c: 139: if (FAN_STATUS == 2) {
		movlw	2
	xorwf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1141
	goto	u1140
u1141:
	goto	l608
u1140:
	line	140
	
l3314:	
;main.c: 140: fan_check_time++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_fan_check_time),f
	skipnz
	incf	(_fan_check_time+1),f
	line	141
	
l3316:	
;main.c: 141: if (fan_check_time == 3000) {
		movlw	184
	xorwf	((_fan_check_time)),w
	movlw	11
	skipnz
	xorwf	((_fan_check_time+1)),w
	btfss	status,2
	goto	u1151
	goto	u1150
u1151:
	goto	l608
u1150:
	line	142
	
l3318:	
;main.c: 142: closeFan();
	fcall	_closeFan
	line	148
	
l608:	
	return
	opt stack 0
GLOBAL	__end_of_checkFan
	__end_of_checkFan:
	signat	_checkFan,89
	global	_setFanLevel

;; *************** function _setFanLevel *****************
;; Defined at:
;;		line 66 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
;; Parameters:    Size  Location     Type
;;  level           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  level           1    5[COMMON] unsigned char 
;;  levelWidth      2    0        unsigned int 
;;  tempLevel       1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awdiv
;;		_setLedOn
;; This function is called by:
;;		_checkFan
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	66
global __ptext11
__ptext11:	;psect for function _setFanLevel
psect	text11
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	66
	global	__size_of_setFanLevel
	__size_of_setFanLevel	equ	__end_of_setFanLevel-_setFanLevel
	
_setFanLevel:	
;incstack = 0
	opt	stack 2
; Regs used in _setFanLevel: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setFanLevel@level stored from wreg
	movwf	(setFanLevel@level)
	line	67
	
l3266:	
;main.c: 67: if(level == 0)
	movf	((setFanLevel@level)),w
	btfss	status,2
	goto	u1081
	goto	u1080
u1081:
	goto	l3270
u1080:
	line	69
	
l3268:	
;main.c: 68: {
;main.c: 69: currentLevel = 3;
	movlw	low(03h)
	movwf	(_currentLevel)
	line	71
	
l3270:	
;main.c: 70: }
;main.c: 71: unsigned int levelWidth = (PR2 + 1) / 4;
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
	line	72
	
l3272:	
;main.c: 72: char tempLevel = currentLevel + level;
	movf	(setFanLevel@level),w
	addwf	(_currentLevel),w
	movwf	(setFanLevel@tempLevel)
	line	73
	
l3274:	
;main.c: 73: if (tempLevel > 4) {
	movlw	low(05h)
	subwf	(setFanLevel@tempLevel),w
	skipc
	goto	u1091
	goto	u1090
u1091:
	goto	l3278
u1090:
	line	74
	
l3276:	
;main.c: 74: tempLevel = 4;
	movlw	low(04h)
	movwf	(setFanLevel@tempLevel)
	line	77
	
l3278:	
;main.c: 75: }
;main.c: 77: if (tempLevel < 1) {
	movf	((setFanLevel@tempLevel)),w
	btfss	status,2
	goto	u1101
	goto	u1100
u1101:
	goto	l3282
u1100:
	line	78
	
l3280:	
;main.c: 78: tempLevel = 1;
	clrf	(setFanLevel@tempLevel)
	incf	(setFanLevel@tempLevel),f
	line	82
	
l3282:	
;main.c: 79: }
;main.c: 82: if (FAN_STATUS == 1) {
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1111
	goto	u1110
u1111:
	goto	l598
u1110:
	line	83
	
l3284:	
;main.c: 83: currentLevel = tempLevel;
	movf	(setFanLevel@tempLevel),w
	movwf	(_currentLevel)
	line	84
;main.c: 84: switch(currentLevel)
	goto	l3296
	line	87
	
l3286:	
;main.c: 87: CCPR1L = 1;
	movlw	low(01h)
	movwf	(21)	;volatile
	line	88
;main.c: 88: break;
	goto	l3298
	line	90
	
l3288:	
;main.c: 90: CCPR1L = 2;
	movlw	low(02h)
	movwf	(21)	;volatile
	line	91
;main.c: 91: break;
	goto	l3298
	line	93
	
l3290:	
;main.c: 93: CCPR1L = 3;
	movlw	low(03h)
	movwf	(21)	;volatile
	line	94
;main.c: 94: break;
	goto	l3298
	line	96
	
l3292:	
;main.c: 96: CCPR1L = 5;
	movlw	low(05h)
	movwf	(21)	;volatile
	line	97
;main.c: 97: break;
	goto	l3298
	line	84
	
l3296:	
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
	goto	l3286
	xorlw	2^1	; case 2
	skipnz
	goto	l3288
	xorlw	3^2	; case 3
	skipnz
	goto	l3290
	xorlw	4^3	; case 4
	skipnz
	goto	l3292
	goto	l3298
	opt asmopt_pop

	line	101
	
l3298:	
;main.c: 101: setLedOn(currentLevel);
	movf	(_currentLevel),w
	fcall	_setLedOn
	line	104
	
l598:	
	return
	opt stack 0
GLOBAL	__end_of_setFanLevel
	__end_of_setFanLevel:
	signat	_setFanLevel,4217
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
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
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: 800/0
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
	file	"C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
	line	6
global __ptext12
__ptext12:	;psect for function ___awdiv
psect	text12
	file	"C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l3222:	
	clrf	(___awdiv@sign)
	line	15
	
l3224:	
	btfss	(___awdiv@divisor+1),7
	goto	u1011
	goto	u1010
u1011:
	goto	l3230
u1010:
	line	16
	
l3226:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l3228:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	19
	
l3230:	
	btfss	(___awdiv@dividend+1),7
	goto	u1021
	goto	u1020
u1021:
	goto	l3236
u1020:
	line	20
	
l3232:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l3234:	
	movlw	low(01h)
	xorwf	(___awdiv@sign),f
	line	23
	
l3236:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l3238:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u1031
	goto	u1030
u1031:
	goto	l3258
u1030:
	line	25
	
l3240:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l3244
	line	27
	
l3242:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	28
	incf	(___awdiv@counter),f
	line	26
	
l3244:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1041
	goto	u1040
u1041:
	goto	l3242
u1040:
	line	31
	
l3246:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	32
	
l3248:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1055
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1055:
	skipc
	goto	u1051
	goto	u1050
u1051:
	goto	l3254
u1050:
	line	33
	
l3250:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l3252:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	36
	
l3254:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	37
	
l3256:	
	decfsz	(___awdiv@counter),f
	goto	u1061
	goto	u1060
u1061:
	goto	l3246
u1060:
	line	39
	
l3258:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u1071
	goto	u1070
u1071:
	goto	l3262
u1070:
	line	40
	
l3260:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	41
	
l3262:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	42
	
l1946:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_closeFan

;; *************** function _closeFan *****************
;; Defined at:
;;		line 107 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
;;		_Init_PWM
;;		_setLedOn
;; This function is called by:
;;		_checkFan
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	107
global __ptext13
__ptext13:	;psect for function _closeFan
psect	text13
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	107
	global	__size_of_closeFan
	__size_of_closeFan	equ	__end_of_closeFan-_closeFan
	
_closeFan:	
;incstack = 0
	opt	stack 2
; Regs used in _closeFan: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	108
	
l2798:	
;main.c: 108: Init_PWM();
	fcall	_Init_PWM
	line	109
	
l2800:	
;main.c: 109: currentLevel = 2;
	movlw	low(02h)
	movwf	(_currentLevel)
	line	110
	
l2802:	
;main.c: 110: setLedOn(5);
	movlw	low(05h)
	fcall	_setLedOn
	line	111
	
l2804:	
;main.c: 111: PORTA|=(1<<0);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(0/8),(0)&7	;volatile
	line	113
	
l2806:	
;main.c: 113: TRISC|=(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(2/8),(2)&7	;volatile
	line	114
	
l2808:	
;main.c: 114: fan_check_time = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_fan_check_time)
	clrf	(_fan_check_time+1)
	line	115
	
l2810:	
;main.c: 115: FAN_STATUS = 0;
	clrf	(_FAN_STATUS)
	line	117
	
l601:	
	return
	opt stack 0
GLOBAL	__end_of_closeFan
	__end_of_closeFan:
	signat	_closeFan,89
	global	_setLedOn

;; *************** function _setLedOn *****************
;; Defined at:
;;		line 152 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
;; Parameters:    Size  Location     Type
;;  ledIndex        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ledIndex        1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 200/0
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
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	152
global __ptext14
__ptext14:	;psect for function _setLedOn
psect	text14
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	152
	global	__size_of_setLedOn
	__size_of_setLedOn	equ	__end_of_setLedOn-_setLedOn
	
_setLedOn:	
;incstack = 0
	opt	stack 2
; Regs used in _setLedOn: [wreg-fsr0h+status,2+status,0]
;setLedOn@ledIndex stored from wreg
	movwf	(setLedOn@ledIndex)
	line	153
	
l2710:	
;main.c: 153: switch(ledIndex) {
	goto	l2714
	line	154
;main.c: 154: case 1:
	
l612:	
	line	156
;main.c: 156: TRISC&=~(1<<1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	157
;main.c: 157: TRISA|=(1<<7);
	bsf	(133)^080h+(7/8),(7)&7	;volatile
	line	158
;main.c: 158: TRISC&=~(1<<0);
	bcf	(135)^080h+(0/8),(0)&7	;volatile
	line	159
;main.c: 159: PORTA&=~(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(7/8),(7)&7	;volatile
	line	160
;main.c: 160: PORTC|=(1<<0);
	bsf	(7)+(0/8),(0)&7	;volatile
	line	161
;main.c: 161: PORTC&=~(1<<1);
	bcf	(7)+(1/8),(1)&7	;volatile
	line	162
;main.c: 162: break;
	goto	l618
	line	163
;main.c: 163: case 2:
	
l614:	
	line	164
;main.c: 164: TRISC&=~(1<<1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	165
;main.c: 165: TRISA|=(1<<7);
	bsf	(133)^080h+(7/8),(7)&7	;volatile
	line	166
;main.c: 166: TRISC&=~(1<<0);
	bcf	(135)^080h+(0/8),(0)&7	;volatile
	line	167
;main.c: 167: PORTA&=~(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(7/8),(7)&7	;volatile
	line	168
;main.c: 168: PORTC&=~(1<<0);
	bcf	(7)+(0/8),(0)&7	;volatile
	line	169
;main.c: 169: PORTC|=(1<<1);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	170
;main.c: 170: break;
	goto	l618
	line	171
;main.c: 171: case 3:
	
l615:	
	line	173
;main.c: 173: TRISC|=(1<<0);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(0/8),(0)&7	;volatile
	line	174
;main.c: 174: TRISA&=~(1<<7);
	bcf	(133)^080h+(7/8),(7)&7	;volatile
	line	175
;main.c: 175: TRISC&=~(1<<1);
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	176
;main.c: 176: PORTA|=(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(7/8),(7)&7	;volatile
	line	177
;main.c: 177: PORTC&=~(1<<0);
	bcf	(7)+(0/8),(0)&7	;volatile
	line	178
;main.c: 178: PORTC&=~(1<<1);
	bcf	(7)+(1/8),(1)&7	;volatile
	line	179
;main.c: 179: break;
	goto	l618
	line	180
;main.c: 180: case 4:
	
l616:	
	line	181
;main.c: 181: TRISC|=(1<<0);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(0/8),(0)&7	;volatile
	line	182
;main.c: 182: TRISA&=~(1<<7);
	bcf	(133)^080h+(7/8),(7)&7	;volatile
	line	183
;main.c: 183: TRISC&=~(1<<1);
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	184
;main.c: 184: PORTA&=~(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(7/8),(7)&7	;volatile
	line	185
;main.c: 185: PORTC|=(1<<0);
	bsf	(7)+(0/8),(0)&7	;volatile
	line	186
;main.c: 186: PORTC|=(1<<1);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	187
;main.c: 187: break;
	goto	l618
	line	188
;main.c: 188: case 5:
	
l617:	
	line	190
;main.c: 190: TRISC|=(1<<0);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(0/8),(0)&7	;volatile
	line	191
;main.c: 191: TRISA|=(1<<7);
	bsf	(133)^080h+(7/8),(7)&7	;volatile
	line	192
;main.c: 192: TRISC|=(1<<1);
	bsf	(135)^080h+(1/8),(1)&7	;volatile
	line	193
;main.c: 193: PORTC&=~(1<<0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(7)+(0/8),(0)&7	;volatile
	line	194
;main.c: 194: PORTA&=~(1<<7);
	bcf	(5)+(7/8),(7)&7	;volatile
	line	195
;main.c: 195: PORTC&=~(1<<1);
	bcf	(7)+(1/8),(1)&7	;volatile
	line	196
;main.c: 196: break;
	goto	l618
	line	153
	
l2714:	
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
goto l618
	movwf fsr
	movlw	5
	subwf	fsr,w
skipnc
goto l618
movlw high(S3512)
movwf pclath
	movlw low(S3512)
	addwf fsr,w
	movwf pc
psect	swtext2,local,class=CONST,delta=2
global __pswtext2
__pswtext2:
S3512:
	ljmp	l612
	ljmp	l614
	ljmp	l615
	ljmp	l616
	ljmp	l617
psect	text14

	line	198
	
l618:	
	return
	opt stack 0
GLOBAL	__end_of_setLedOn
	__end_of_setLedOn:
	signat	_setLedOn,4217
	global	_Init_Config

;; *************** function _Init_Config *****************
;; Defined at:
;;		line 272 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
;;		On exit  : B00/100
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
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	272
global __ptext15
__ptext15:	;psect for function _Init_Config
psect	text15
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	272
	global	__size_of_Init_Config
	__size_of_Init_Config	equ	__end_of_Init_Config-_Init_Config
	
_Init_Config:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_Config: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	274
	
l3076:	
;main.c: 274: Init_System();
	fcall	_Init_System
	line	275
;main.c: 275: Init_GPIO();
	fcall	_Init_GPIO
	line	276
;main.c: 276: Init_Interupt();
	fcall	_Init_Interupt
	line	277
;main.c: 277: Init_PWM();
	fcall	_Init_PWM
	line	279
	
l3078:	
;main.c: 279: IOCB = 0x04;
	movlw	low(04h)
	movwf	(150)^080h	;volatile
	line	280
	
l3080:	
;main.c: 280: TMR0 = 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	281
	
l3082:	
;main.c: 281: TO = 0;
	bcf	(28/8),(28)&7	;volatile
	line	284
	
l3084:	
;main.c: 284: key1.key_index = 5;
	movlw	low(05h)
	movwf	0+(_key1)+06h
	line	286
	
l3086:	
;main.c: 286: key2.key_index = 4;
	movlw	low(04h)
	movwf	0+(_key2)+06h
	line	288
	
l3088:	
;main.c: 288: key3.key_index = 3;
	movlw	low(03h)
	movwf	0+(_key3)+06h
	line	289
	
l3090:	
;main.c: 289: resetKey(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	290
	
l3092:	
;main.c: 290: resetKey(&key2);
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	291
	
l3094:	
;main.c: 291: resetKey(&key3);
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	293
	
l3096:	
;main.c: 293: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	294
	
l3098:	
;main.c: 294: TRISB = 0x7E;
	movlw	low(07Eh)
	movwf	(134)^080h	;volatile
	line	295
	
l3100:	
;main.c: 295: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	296
	
l645:	
	return
	opt stack 0
GLOBAL	__end_of_Init_Config
	__end_of_Init_Config:
	signat	_Init_Config,89
	global	_resetKey

;; *************** function _resetKey *****************
;; Defined at:
;;		line 100 in file "C:\SCMCU WorkSpace\uf166fan\scankey.c"
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
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\scankey.c"
	line	100
global __ptext16
__ptext16:	;psect for function _resetKey
psect	text16
	file	"C:\SCMCU WorkSpace\uf166fan\scankey.c"
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
	
l2908:	
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
	
l689:	
	return
	opt stack 0
GLOBAL	__end_of_resetKey
	__end_of_resetKey:
	signat	_resetKey,4217
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 3 in file "C:\SCMCU WorkSpace\uf166fan\init.c"
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
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	3
global __ptext17
__ptext17:	;psect for function _Init_System
psect	text17
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	3
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_System: [wreg+status,2]
	line	4
	
l2882:	
# 4 "C:\SCMCU WorkSpace\uf166fan\init.c"
nop ;# 
	line	5
# 5 "C:\SCMCU WorkSpace\uf166fan\init.c"
clrwdt ;# 
psect	text17
	line	6
	
l2884:	
;init.c: 6: INTCON = 0;
	clrf	(11)	;volatile
	line	7
	
l2886:	
;init.c: 7: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	8
	
l2888:	
;init.c: 8: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	10
	
l1228:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Init_PWM

;; *************** function _Init_PWM *****************
;; Defined at:
;;		line 52 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_closeFan
;;		_Init_Config
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	52
global __ptext18
__ptext18:	;psect for function _Init_PWM
psect	text18
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	52
	global	__size_of_Init_PWM
	__size_of_Init_PWM	equ	__end_of_Init_PWM-_Init_PWM
	
_Init_PWM:	
;incstack = 0
	opt	stack 2
; Regs used in _Init_PWM: [wreg+status,2]
	line	53
	
l2700:	
;main.c: 53: CCP1CON = 0x0F;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	54
	
l2702:	
;main.c: 54: T2CON = 0;
	clrf	(18)	;volatile
	line	55
	
l2704:	
;main.c: 55: PR2 = 7;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	57
;main.c: 57: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	58
	
l2706:	
;main.c: 58: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	59
;main.c: 59: T2CON = 0;
	clrf	(18)	;volatile
	line	61
	
l2708:	
;main.c: 61: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	63
	
l585:	
	return
	opt stack 0
GLOBAL	__end_of_Init_PWM
	__end_of_Init_PWM:
	signat	_Init_PWM,89
	global	_Init_Interupt

;; *************** function _Init_Interupt *****************
;; Defined at:
;;		line 27 in file "C:\SCMCU WorkSpace\uf166fan\init.c"
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
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	27
global __ptext19
__ptext19:	;psect for function _Init_Interupt
psect	text19
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	27
	global	__size_of_Init_Interupt
	__size_of_Init_Interupt	equ	__end_of_Init_Interupt-_Init_Interupt
	
_Init_Interupt:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_Interupt: [wreg+status,2]
	line	28
	
l2904:	
;init.c: 28: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	29
;init.c: 29: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	30
	
l2906:	
;init.c: 30: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(11)	;volatile
	line	32
	
l1234:	
	return
	opt stack 0
GLOBAL	__end_of_Init_Interupt
	__end_of_Init_Interupt:
	signat	_Init_Interupt,89
	global	_Init_GPIO

;; *************** function _Init_GPIO *****************
;; Defined at:
;;		line 13 in file "C:\SCMCU WorkSpace\uf166fan\init.c"
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
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext20
__ptext20:	;psect for function _Init_GPIO
psect	text20
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	13
	global	__size_of_Init_GPIO
	__size_of_Init_GPIO	equ	__end_of_Init_GPIO-_Init_GPIO
	
_Init_GPIO:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_GPIO: [wreg+status,2]
	line	14
	
l2890:	
;init.c: 14: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	15
;init.c: 15: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	16
;init.c: 16: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	17
	
l2892:	
;init.c: 17: WPUA = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	18
	
l2894:	
;init.c: 18: WPUB = 0xFF;
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	19
	
l2896:	
;init.c: 19: WPUC = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	20
	
l2898:	
;init.c: 20: PORTA = 0xFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	21
	
l2900:	
;init.c: 21: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(6)	;volatile
	line	22
	
l2902:	
;init.c: 22: PORTC = 0xFF;
	movlw	low(0FFh)
	movwf	(7)	;volatile
	line	23
;init.c: 23: IOCB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	25
	
l1231:	
	return
	opt stack 0
GLOBAL	__end_of_Init_GPIO
	__end_of_Init_GPIO:
	signat	_Init_GPIO,89
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 342 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	342
global __ptext21
__ptext21:	;psect for function _Timer0_Isr
psect	text21
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	342
	global	__size_of_Timer0_Isr
	__size_of_Timer0_Isr	equ	__end_of_Timer0_Isr-_Timer0_Isr
	
_Timer0_Isr:	
;incstack = 0
	opt	stack 1
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
psect	text21
	line	343
	
i1l3158:	
;main.c: 343: if (T0IF) {
	btfss	(90/8),(90)&7	;volatile
	goto	u99_21
	goto	u99_20
u99_21:
	goto	i1l3166
u99_20:
	line	345
	
i1l3160:	
;main.c: 345: TMR0 += 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(1),f	;volatile
	line	348
	
i1l3162:	
;main.c: 348: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	349
	
i1l3164:	
;main.c: 349: time0Flag = 1;
	clrf	(_time0Flag)
	incf	(_time0Flag),f
	line	353
	
i1l3166:	
;main.c: 351: }
;main.c: 353: if (RBIF) {
	btfss	(88/8),(88)&7	;volatile
	goto	u100_21
	goto	u100_20
u100_21:
	goto	i1l655
u100_20:
	line	354
	
i1l3168:	
;main.c: 354: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	355
	
i1l3170:	
;main.c: 355: Init_Config();
	fcall	i1_Init_Config
	line	357
	
i1l655:	
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
;;		line 272 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
;;		On exit  : B00/100
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
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	272
global __ptext22
__ptext22:	;psect for function i1_Init_Config
psect	text22
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	272
	global	__size_ofi1_Init_Config
	__size_ofi1_Init_Config	equ	__end_ofi1_Init_Config-i1_Init_Config
	
i1_Init_Config:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_Config: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	274
	
i1l3106:	
;main.c: 274: Init_System();
	fcall	i1_Init_System
	line	275
;main.c: 275: Init_GPIO();
	fcall	i1_Init_GPIO
	line	276
;main.c: 276: Init_Interupt();
	fcall	i1_Init_Interupt
	line	277
;main.c: 277: Init_PWM();
	fcall	i1_Init_PWM
	line	279
	
i1l3108:	
;main.c: 279: IOCB = 0x04;
	movlw	low(04h)
	movwf	(150)^080h	;volatile
	line	280
	
i1l3110:	
;main.c: 280: TMR0 = 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	281
	
i1l3112:	
;main.c: 281: TO = 0;
	bcf	(28/8),(28)&7	;volatile
	line	284
	
i1l3114:	
;main.c: 284: key1.key_index = 5;
	movlw	low(05h)
	movwf	0+(_key1)+06h
	line	286
	
i1l3116:	
;main.c: 286: key2.key_index = 4;
	movlw	low(04h)
	movwf	0+(_key2)+06h
	line	288
	
i1l3118:	
;main.c: 288: key3.key_index = 3;
	movlw	low(03h)
	movwf	0+(_key3)+06h
	line	289
	
i1l3120:	
;main.c: 289: resetKey(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	i1_resetKey
	line	290
	
i1l3122:	
;main.c: 290: resetKey(&key2);
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	i1_resetKey
	line	291
	
i1l3124:	
;main.c: 291: resetKey(&key3);
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	i1_resetKey
	line	293
	
i1l3126:	
;main.c: 293: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	294
	
i1l3128:	
;main.c: 294: TRISB = 0x7E;
	movlw	low(07Eh)
	movwf	(134)^080h	;volatile
	line	295
	
i1l3130:	
;main.c: 295: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	296
	
i1l645:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_Config
	__end_ofi1_Init_Config:
	signat	i1_Init_Config,89
	global	i1_resetKey

;; *************** function i1_resetKey *****************
;; Defined at:
;;		line 100 in file "C:\SCMCU WorkSpace\uf166fan\scankey.c"
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
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\scankey.c"
	line	100
global __ptext23
__ptext23:	;psect for function i1_resetKey
psect	text23
	file	"C:\SCMCU WorkSpace\uf166fan\scankey.c"
	line	100
	global	__size_ofi1_resetKey
	__size_ofi1_resetKey	equ	__end_ofi1_resetKey-i1_resetKey
	
i1_resetKey:	
;incstack = 0
	opt	stack 1
; Regs used in i1_resetKey: [wreg-fsr0h+status,2+status,0]
;i1resetKey@key stored from wreg
	movwf	(i1resetKey@key)
	line	101
	
i1l2996:	
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
	
i1l689:	
	return
	opt stack 0
GLOBAL	__end_ofi1_resetKey
	__end_ofi1_resetKey:
	signat	i1_resetKey,89
	global	i1_Init_System

;; *************** function i1_Init_System *****************
;; Defined at:
;;		line 3 in file "C:\SCMCU WorkSpace\uf166fan\init.c"
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
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	3
global __ptext24
__ptext24:	;psect for function i1_Init_System
psect	text24
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	3
	global	__size_ofi1_Init_System
	__size_ofi1_Init_System	equ	__end_ofi1_Init_System-i1_Init_System
	
i1_Init_System:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_System: [wreg+status,2]
	line	4
	
i1l2998:	
# 4 "C:\SCMCU WorkSpace\uf166fan\init.c"
nop ;# 
	line	5
# 5 "C:\SCMCU WorkSpace\uf166fan\init.c"
clrwdt ;# 
psect	text24
	line	6
	
i1l3000:	
;init.c: 6: INTCON = 0;
	clrf	(11)	;volatile
	line	7
	
i1l3002:	
;init.c: 7: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	8
	
i1l3004:	
;init.c: 8: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	10
	
i1l1228:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_System
	__end_ofi1_Init_System:
	signat	i1_Init_System,89
	global	i1_Init_PWM

;; *************** function i1_Init_PWM *****************
;; Defined at:
;;		line 52 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	52
global __ptext25
__ptext25:	;psect for function i1_Init_PWM
psect	text25
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	52
	global	__size_ofi1_Init_PWM
	__size_ofi1_Init_PWM	equ	__end_ofi1_Init_PWM-i1_Init_PWM
	
i1_Init_PWM:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_PWM: [wreg+status,2]
	line	53
	
i1l2986:	
;main.c: 53: CCP1CON = 0x0F;
	movlw	low(0Fh)
	movwf	(23)	;volatile
	line	54
	
i1l2988:	
;main.c: 54: T2CON = 0;
	clrf	(18)	;volatile
	line	55
	
i1l2990:	
;main.c: 55: PR2 = 7;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	57
;main.c: 57: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	58
	
i1l2992:	
;main.c: 58: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	59
;main.c: 59: T2CON = 0;
	clrf	(18)	;volatile
	line	61
	
i1l2994:	
;main.c: 61: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	63
	
i1l585:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_PWM
	__end_ofi1_Init_PWM:
	signat	i1_Init_PWM,89
	global	i1_Init_Interupt

;; *************** function i1_Init_Interupt *****************
;; Defined at:
;;		line 27 in file "C:\SCMCU WorkSpace\uf166fan\init.c"
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
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	27
global __ptext26
__ptext26:	;psect for function i1_Init_Interupt
psect	text26
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	27
	global	__size_ofi1_Init_Interupt
	__size_ofi1_Init_Interupt	equ	__end_ofi1_Init_Interupt-i1_Init_Interupt
	
i1_Init_Interupt:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_Interupt: [wreg+status,2]
	line	28
	
i1l3020:	
;init.c: 28: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	29
;init.c: 29: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	30
	
i1l3022:	
;init.c: 30: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(11)	;volatile
	line	32
	
i1l1234:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_Interupt
	__end_ofi1_Init_Interupt:
	signat	i1_Init_Interupt,89
	global	i1_Init_GPIO

;; *************** function i1_Init_GPIO *****************
;; Defined at:
;;		line 13 in file "C:\SCMCU WorkSpace\uf166fan\init.c"
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
psect	text27,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext27
__ptext27:	;psect for function i1_Init_GPIO
psect	text27
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	13
	global	__size_ofi1_Init_GPIO
	__size_ofi1_Init_GPIO	equ	__end_ofi1_Init_GPIO-i1_Init_GPIO
	
i1_Init_GPIO:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_GPIO: [wreg+status,2]
	line	14
	
i1l3006:	
;init.c: 14: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	15
;init.c: 15: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	16
;init.c: 16: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	17
	
i1l3008:	
;init.c: 17: WPUA = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	18
	
i1l3010:	
;init.c: 18: WPUB = 0xFF;
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	19
	
i1l3012:	
;init.c: 19: WPUC = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	20
	
i1l3014:	
;init.c: 20: PORTA = 0xFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	21
	
i1l3016:	
;init.c: 21: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(6)	;volatile
	line	22
	
i1l3018:	
;init.c: 22: PORTC = 0xFF;
	movlw	low(0FFh)
	movwf	(7)	;volatile
	line	23
;init.c: 23: IOCB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	25
	
i1l1231:	
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
