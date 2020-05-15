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
	FNCALL	_main,_Sleep_Mode
	FNCALL	_main,_checkKeys
	FNCALL	_main,_checkUsbStatus
	FNCALL	_main,_readVrefADC
	FNCALL	_main,_scanKeys
	FNCALL	_scanKeys,_sacnKeyInput
	FNCALL	_readVrefADC,_ADC_Sample
	FNCALL	_readVrefADC,_DelayXms
	FNCALL	_checkUsbStatus,_closeFan
	FNCALL	_checkKeys,_checkFan
	FNCALL	_checkKeys,_key_driver
	FNCALL	_checkKeys,_setFanLevel
	FNCALL	_setFanLevel,_Init_PWM
	FNCALL	_setFanLevel,___awdiv
	FNCALL	_setFanLevel,_closeFan
	FNCALL	_closeFan,_Sleep_Mode
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
	global	_currentLevel
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	20

;initializer for _currentLevel
	retlw	01h
	global	_FAN_STATUS
	global	_count500ms
	global	_time0Flag
	global	ADC_Sample@adsum
	global	ADC_Sample@admax
	global	ADC_Sample@admin
	global	_count10Ms
	global	_countTime
	global	_adresult
	global	ADC_Sample@adtimes
	global	_lowVTime
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
	file	"n9fan.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_FAN_STATUS:
       ds      1

_count500ms:
       ds      1

_time0Flag:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	20
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

_key1:
       ds      7

	file	"n9fan.as"
	line	#
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
	movlw	low((__pbssBANK0)+017h)
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
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
?_Sleep_Mode:	; 1 bytes @ 0x0
?_sacnKeyInput:	; 1 bytes @ 0x0
?_key_driver:	; 1 bytes @ 0x0
?_Init_Config:	; 1 bytes @ 0x0
?_resetKey:	; 1 bytes @ 0x0
?_Init_System:	; 1 bytes @ 0x0
?_Init_GPIO:	; 1 bytes @ 0x0
?_Init_Interupt:	; 1 bytes @ 0x0
?_checkUsbStatus:	; 1 bytes @ 0x0
?_Init_PWM:	; 1 bytes @ 0x0
?_setFanLevel:	; 1 bytes @ 0x0
?_checkFan:	; 1 bytes @ 0x0
?_scanKeys:	; 1 bytes @ 0x0
?_checkKeys:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_Timer0_Isr:	; 1 bytes @ 0x0
?_ADC_Sample:	; 1 bytes @ 0x0
?_DelayXms:	; 1 bytes @ 0x0
?i1_Init_System:	; 1 bytes @ 0x0
??i1_Init_System:	; 1 bytes @ 0x0
?i1_Init_GPIO:	; 1 bytes @ 0x0
??i1_Init_GPIO:	; 1 bytes @ 0x0
?i1_Init_Interupt:	; 1 bytes @ 0x0
??i1_Init_Interupt:	; 1 bytes @ 0x0
?i1_Init_PWM:	; 1 bytes @ 0x0
??i1_Init_PWM:	; 1 bytes @ 0x0
?i1_Init_Config:	; 1 bytes @ 0x0
?i1_resetKey:	; 1 bytes @ 0x0
??i1_resetKey:	; 1 bytes @ 0x0
?_readVrefADC:	; 2 bytes @ 0x0
	global	i1resetKey@key
i1resetKey@key:	; 1 bytes @ 0x0
	ds	1
??_Timer0_Isr:	; 1 bytes @ 0x1
??i1_Init_Config:	; 1 bytes @ 0x1
	ds	3
??_closeFan:	; 1 bytes @ 0x4
??_Sleep_Mode:	; 1 bytes @ 0x4
??_sacnKeyInput:	; 1 bytes @ 0x4
??_key_driver:	; 1 bytes @ 0x4
??_readVrefADC:	; 1 bytes @ 0x4
??_resetKey:	; 1 bytes @ 0x4
??_Init_System:	; 1 bytes @ 0x4
??_Init_GPIO:	; 1 bytes @ 0x4
??_Init_Interupt:	; 1 bytes @ 0x4
??_Init_PWM:	; 1 bytes @ 0x4
??_checkFan:	; 1 bytes @ 0x4
??_DelayXms:	; 1 bytes @ 0x4
??___awdiv:	; 1 bytes @ 0x4
	global	resetKey@key
resetKey@key:	; 1 bytes @ 0x4
	ds	1
??_Init_Config:	; 1 bytes @ 0x5
??_setFanLevel:	; 1 bytes @ 0x5
??_checkKeys:	; 1 bytes @ 0x5
	ds	1
??_scanKeys:	; 1 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_checkUsbStatus:	; 1 bytes @ 0x0
??_ADC_Sample:	; 1 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	DelayXms@x
DelayXms@x:	; 1 bytes @ 0x0
	global	sacnKeyInput@key
sacnKeyInput@key:	; 1 bytes @ 0x0
	global	key_driver@key_return
key_driver@key_return:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	DelayXms@i
DelayXms@i:	; 1 bytes @ 0x1
	global	key_driver@key_read
key_driver@key_read:	; 1 bytes @ 0x1
	ds	1
	global	DelayXms@j
DelayXms@j:	; 1 bytes @ 0x2
	global	key_driver@key
key_driver@key:	; 1 bytes @ 0x2
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
??_main:	; 1 bytes @ 0xA
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        1
;!    BSS         26
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      10
;!    BANK0            80     11      34
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    resetKey@key	PTR struct Keys size(1) Largest target is 7
;!		 -> key1(BANK0[7]), 
;!
;!    key_driver@key	PTR struct Keys size(1) Largest target is 7
;!		 -> key1(BANK0[7]), 
;!
;!    sacnKeyInput@key	PTR struct Keys size(1) Largest target is 7
;!		 -> key1(BANK0[7]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _scanKeys->_sacnKeyInput
;!    _checkUsbStatus->_closeFan
;!    _setFanLevel->_closeFan
;!    _Init_Config->_resetKey
;!
;!Critical Paths under _Timer0_Isr in COMMON
;!
;!    i1_Init_Config->i1_resetKey
;!
;!Critical Paths under _main in BANK0
;!
;!    _scanKeys->_sacnKeyInput
;!    _readVrefADC->_ADC_Sample
;!    _checkKeys->_setFanLevel
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0    2000
;!                                             10 BANK0      1     1      0
;!                        _Init_Config
;!                         _Sleep_Mode
;!                          _checkKeys
;!                     _checkUsbStatus
;!                        _readVrefADC
;!                           _scanKeys
;! ---------------------------------------------------------------------------------
;! (1) _scanKeys                                             0     0      0     154
;!                       _sacnKeyInput
;! ---------------------------------------------------------------------------------
;! (2) _sacnKeyInput                                         3     3      0     154
;!                                              4 COMMON     2     2      0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _readVrefADC                                          0     0      0     458
;!                         _ADC_Sample
;!                           _DelayXms
;! ---------------------------------------------------------------------------------
;! (2) _DelayXms                                             3     3      0     167
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Sample                                           8     8      0     291
;!                                              0 BANK0      8     8      0
;! ---------------------------------------------------------------------------------
;! (1) _checkUsbStatus                                       2     2      0       0
;!                                              0 BANK0      2     2      0
;!                           _closeFan
;! ---------------------------------------------------------------------------------
;! (1) _checkKeys                                            0     0      0    1273
;!                           _checkFan
;!                         _key_driver
;!                        _setFanLevel
;! ---------------------------------------------------------------------------------
;! (2) _setFanLevel                                          4     4      0     736
;!                                              8 BANK0      2     2      0
;!                           _Init_PWM
;!                            ___awdiv
;!                           _closeFan
;! ---------------------------------------------------------------------------------
;! (2) _closeFan                                             1     1      0       0
;!                                              4 COMMON     1     1      0
;!                         _Sleep_Mode
;! ---------------------------------------------------------------------------------
;! (3) _Sleep_Mode                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              8     4      4     606
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (2) _key_driver                                           3     3      0     537
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _checkFan                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Init_Config                                          0     0      0     115
;!                          _Init_GPIO
;!                      _Init_Interupt
;!                           _Init_PWM
;!                        _Init_System
;!                           _resetKey
;! ---------------------------------------------------------------------------------
;! (2) _resetKey                                             1     1      0     115
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
;!   _Sleep_Mode
;!   _checkKeys
;!     _checkFan
;!     _key_driver
;!     _setFanLevel
;!       _Init_PWM
;!       ___awdiv
;!       _closeFan
;!         _Sleep_Mode
;!   _checkUsbStatus
;!     _closeFan
;!       _Sleep_Mode
;!   _readVrefADC
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
;!BANK0               50      B      22       5       42.5%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      6       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      2C       8        0.0%
;!ABS                  0      0      2C       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 211 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
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
;;      Temps:          0       1       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Init_Config
;;		_Sleep_Mode
;;		_checkKeys
;;		_checkUsbStatus
;;		_readVrefADC
;;		_scanKeys
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	211
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	211
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	212
	
l3441:	
;main.c: 212: if (((PORTB) >> (2)&1) == 0) {
	movf	(6),w	;volatile
	movwf	(??_main+0)+0
	clrc
	rrf	(??_main+0)+0,f
	clrc
	rrf	(??_main+0)+0,f
	btfsc	0+(??_main+0)+0,(0)&7
	goto	u1371
	goto	u1370
u1371:
	goto	l3445
u1370:
	line	213
	
l3443:	
;main.c: 213: Sleep_Mode();
	fcall	_Sleep_Mode
	line	216
	
l3445:	
;main.c: 214: }
;main.c: 216: Init_Config();
	fcall	_Init_Config
	line	219
	
l3447:	
;main.c: 219: if (time0Flag) {
	movf	((_time0Flag)),w
	btfsc	status,2
	goto	u1381
	goto	u1380
u1381:
	goto	l3457
u1380:
	line	220
	
l3449:	
# 220 "E:\project\project0508\scm\n9_fan_no_led\main.c"
clrwdt ;# 
psect	maintext
	line	221
	
l3451:	
;main.c: 221: time0Flag = 0;
	clrf	(_time0Flag)
	line	222
	
l3453:	
;main.c: 222: scanKeys();
	fcall	_scanKeys
	line	223
	
l3455:	
;main.c: 223: count10Ms++;
	incf	(_count10Ms),f
	skipnz
	incf	(_count10Ms+1),f
	line	227
	
l3457:	
;main.c: 224: }
;main.c: 227: if (count10Ms == 100) {
		movlw	100
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((_count10Ms)),w
iorwf	((_count10Ms+1)),w
	btfss	status,2
	goto	u1391
	goto	u1390
u1391:
	goto	l3469
u1390:
	line	228
	
l3459:	
;main.c: 228: countTime++;
	incf	(_countTime),f
	skipnz
	incf	(_countTime+1),f
	line	229
;main.c: 229: count500ms++;
	incf	(_count500ms),f
	line	230
	
l3461:	
;main.c: 230: checkKeys();
	fcall	_checkKeys
	line	231
	
l3463:	
;main.c: 231: count10Ms = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_count10Ms)
	clrf	(_count10Ms+1)
	line	233
	
l3465:	
;main.c: 233: checkUsbStatus();
	fcall	_checkUsbStatus
	line	235
	
l3467:	
;main.c: 235: readVrefADC();
	fcall	_readVrefADC
	line	238
	
l3469:	
;main.c: 236: }
;main.c: 238: if(count500ms == 50)
		movlw	50
	xorwf	((_count500ms)),w
	btfss	status,2
	goto	u1401
	goto	u1400
u1401:
	goto	l3473
u1400:
	line	240
	
l3471:	
;main.c: 239: {
;main.c: 240: count500ms = 0;
	clrf	(_count500ms)
	line	243
	
l3473:	
;main.c: 241: }
;main.c: 243: if (countTime == 50) {
		movlw	50
	xorwf	((_countTime)),w
iorwf	((_countTime+1)),w
	btfss	status,2
	goto	u1411
	goto	u1410
u1411:
	goto	l3447
u1410:
	line	244
	
l3475:	
;main.c: 244: countTime = 0;
	clrf	(_countTime)
	clrf	(_countTime+1)
	goto	l3447
	global	start
	ljmp	start
	opt stack 0
	line	249
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_scanKeys

;; *************** function _scanKeys *****************
;; Defined at:
;;		line 181 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
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
	line	181
global __ptext1
__ptext1:	;psect for function _scanKeys
psect	text1
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	181
	global	__size_of_scanKeys
	__size_of_scanKeys	equ	__end_of_scanKeys-_scanKeys
	
_scanKeys:	
;incstack = 0
	opt	stack 3
; Regs used in _scanKeys: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	182
	
l3391:	
;main.c: 182: key1.key_addr_result = PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	0+(_key1)+05h
	line	183
	
l3393:	
;main.c: 183: sacnKeyInput(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	186
	
l1158:	
	return
	opt stack 0
GLOBAL	__end_of_scanKeys
	__end_of_scanKeys:
	signat	_scanKeys,89
	global	_sacnKeyInput

;; *************** function _sacnKeyInput *****************
;; Defined at:
;;		line 3 in file "E:\project\project0508\scm\n9_fan_no_led\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    0[BANK0 ] PTR struct Keys
;;		 -> key1(7), 
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
	file	"E:\project\project0508\scm\n9_fan_no_led\scankey.c"
	line	3
global __ptext2
__ptext2:	;psect for function _sacnKeyInput
psect	text2
	file	"E:\project\project0508\scm\n9_fan_no_led\scankey.c"
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
	
l3259:	
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
	goto	u1084
u1085:
	clrc
	rrf	(??_sacnKeyInput+0)+0,f
u1084:
	addlw	-1
	skipz
	goto	u1085
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
	
l1772:	
	return
	opt stack 0
GLOBAL	__end_of_sacnKeyInput
	__end_of_sacnKeyInput:
	signat	_sacnKeyInput,4217
	global	_readVrefADC

;; *************** function _readVrefADC *****************
;; Defined at:
;;		line 90 in file "E:\project\project0508\scm\n9_fan_no_led\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  557[None  ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;;		_ADC_Sample
;;		_DelayXms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\adc.c"
	line	90
global __ptext3
__ptext3:	;psect for function _readVrefADC
psect	text3
	file	"E:\project\project0508\scm\n9_fan_no_led\adc.c"
	line	90
	global	__size_of_readVrefADC
	__size_of_readVrefADC	equ	__end_of_readVrefADC-_readVrefADC
	
_readVrefADC:	
;incstack = 0
	opt	stack 3
; Regs used in _readVrefADC: [wreg+status,2+status,0+pclath+cstack]
	line	92
	
l3437:	
;adc.c: 92: DelayXms(1);
	movlw	low(01h)
	fcall	_DelayXms
	line	93
;adc.c: 93: ADC_Sample(15);
	movlw	low(0Fh)
	fcall	_ADC_Sample
	line	98
	
l1769:	
	return
	opt stack 0
GLOBAL	__end_of_readVrefADC
	__end_of_readVrefADC:
	signat	_readVrefADC,90
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 82 in file "E:\project\project0508\scm\n9_fan_no_led\adc.c"
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
;;		On entry : 0/0
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
	file	"E:\project\project0508\scm\n9_fan_no_led\adc.c"
	line	82
	global	__size_of_DelayXms
	__size_of_DelayXms	equ	__end_of_DelayXms-_DelayXms
	
_DelayXms:	
;incstack = 0
	opt	stack 3
; Regs used in _DelayXms: [wreg+status,2+status,0]
;DelayXms@x stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(DelayXms@x)
	line	85
	
l3347:	
;adc.c: 84: unsigned char i,j;
;adc.c: 85: for(i=x;i>0;i--)
	movf	(DelayXms@x),w
	movwf	(DelayXms@i)
	
l3349:	
	movf	((DelayXms@i)),w
	btfss	status,2
	goto	u1251
	goto	u1250
u1251:
	goto	l3353
u1250:
	goto	l1766
	line	86
	
l3353:	
;adc.c: 86: for(j=153;j>0;j--);
	movlw	low(099h)
	movwf	(DelayXms@j)
	
l3359:	
	decf	(DelayXms@j),f
	
l3361:	
	movf	((DelayXms@j)),w
	btfss	status,2
	goto	u1261
	goto	u1260
u1261:
	goto	l3359
u1260:
	line	85
	
l3363:	
	decf	(DelayXms@i),f
	goto	l3349
	line	87
	
l1766:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
	global	_ADC_Sample

;; *************** function _ADC_Sample *****************
;; Defined at:
;;		line 11 in file "E:\project\project0508\scm\n9_fan_no_led\adc.c"
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
	file	"E:\project\project0508\scm\n9_fan_no_led\adc.c"
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
	
l3307:	
;adc.c: 13: static unsigned long adsum = 0;
;adc.c: 14: static unsigned int admin = 0,admax = 0;
;adc.c: 15: static unsigned char adtimes = 0;
;adc.c: 16: volatile unsigned int ad_temp;
;adc.c: 17: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	18
	
l3309:	
;adc.c: 18: ADCON0 = 0X41 | (adch << 2);
	bcf	status, 5	;RP0=0, select bank0
	movf	(ADC_Sample@adch),w
	movwf	(??_ADC_Sample+0)+0
	movlw	(02h)-1
u1145:
	clrc
	rlf	(??_ADC_Sample+0)+0,f
	addlw	-1
	skipz
	goto	u1145
	clrc
	rlf	(??_ADC_Sample+0)+0,w
	iorlw	041h
	movwf	(31)	;volatile
	line	19
# 19 "E:\project\project0508\scm\n9_fan_no_led\adc.c"
nop ;# 
	line	20
# 20 "E:\project\project0508\scm\n9_fan_no_led\adc.c"
nop ;# 
psect	text5
	line	21
	
l3311:	
;adc.c: 21: GODONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	23
	
l3313:	
;adc.c: 23: unsigned char i = 0;
	clrf	(ADC_Sample@i)
	line	24
;adc.c: 24: while(GODONE)
	goto	l1742
	
l1743:	
	line	26
;adc.c: 25: {
;adc.c: 26: if(0 == (--i))
	decfsz	(ADC_Sample@i),f
	goto	u1151
	goto	u1150
u1151:
	goto	l1742
u1150:
	goto	l1745
	line	28
	
l1742:	
	line	24
	btfsc	(249/8),(249)&7	;volatile
	goto	u1161
	goto	u1160
u1161:
	goto	l1743
u1160:
	line	30
	
l3317:	
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
	
l3319:	
	bsf	status, 5	;RP0=1, select bank1
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ADC_Sample@ad_temp),f	;volatile
	skipnc
	incf	(ADC_Sample@ad_temp+1),f	;volatile
	line	32
	
l3321:	
;adc.c: 32: if(0 == admax)
	movf	((ADC_Sample@admax)),w
iorwf	((ADC_Sample@admax+1)),w
	btfss	status,2
	goto	u1171
	goto	u1170
u1171:
	goto	l3325
u1170:
	line	34
	
l3323:	
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
	goto	l1748
	line	37
	
l3325:	
;adc.c: 37: else if(ad_temp > admax)
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	subwf	(ADC_Sample@admax+1),w
	skipz
	goto	u1185
	movf	(ADC_Sample@ad_temp),w	;volatile
	subwf	(ADC_Sample@admax),w
u1185:
	skipnc
	goto	u1181
	goto	u1180
u1181:
	goto	l3329
u1180:
	line	38
	
l3327:	
;adc.c: 38: admax = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admax+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admax)
	goto	l1748
	line	39
	
l3329:	
;adc.c: 39: else if(ad_temp < admin)
	movf	(ADC_Sample@admin+1),w
	subwf	(ADC_Sample@ad_temp+1),w	;volatile
	skipz
	goto	u1195
	movf	(ADC_Sample@admin),w
	subwf	(ADC_Sample@ad_temp),w	;volatile
u1195:
	skipnc
	goto	u1191
	goto	u1190
u1191:
	goto	l1748
u1190:
	line	40
	
l3331:	
;adc.c: 40: admin = ad_temp;
	movf	(ADC_Sample@ad_temp+1),w	;volatile
	movwf	(ADC_Sample@admin+1)
	movf	(ADC_Sample@ad_temp),w	;volatile
	movwf	(ADC_Sample@admin)
	line	42
	
l1748:	
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
	goto	u1201
	addwf	(ADC_Sample@adsum+1),f
u1201:
	movf	2+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1202
	addwf	(ADC_Sample@adsum+2),f
u1202:
	movf	3+(??_ADC_Sample+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1203
	addwf	(ADC_Sample@adsum+3),f
u1203:

	line	43
	
l3333:	
;adc.c: 43: if(++adtimes >= 10)
	movlw	low(0Ah)
	incf	(ADC_Sample@adtimes),f
	subwf	((ADC_Sample@adtimes)),w
	skipc
	goto	u1211
	goto	u1210
u1211:
	goto	l1745
u1210:
	line	45
	
l3335:	
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
	goto	u1225
	goto	u1226
u1225:
	subwf	(ADC_Sample@adsum+1),f
u1226:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1227
	goto	u1228
u1227:
	subwf	(ADC_Sample@adsum+2),f
u1228:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1229
	goto	u1220
u1229:
	subwf	(ADC_Sample@adsum+3),f
u1220:

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
	goto	u1235
	goto	u1236
u1235:
	subwf	(ADC_Sample@adsum+1),f
u1236:
	movf	2+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	2+(??_ADC_Sample+0)+0,w
	goto	u1237
	goto	u1238
u1237:
	subwf	(ADC_Sample@adsum+2),f
u1238:
	movf	3+(??_ADC_Sample+0)+0,w
	skipc
	incfsz	3+(??_ADC_Sample+0)+0,w
	goto	u1239
	goto	u1230
u1239:
	subwf	(ADC_Sample@adsum+3),f
u1230:

	line	48
	
l3337:	
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
u1245:
	clrc
	rrf	(??_ADC_Sample+0)+3,f
	rrf	(??_ADC_Sample+0)+2,f
	rrf	(??_ADC_Sample+0)+1,f
	rrf	(??_ADC_Sample+0)+0,f
u1240:
	addlw	-1
	skipz
	goto	u1245
	movf	1+(??_ADC_Sample+0)+0,w
	movwf	(_adresult+1)	;volatile
	movf	0+(??_ADC_Sample+0)+0,w
	movwf	(_adresult)	;volatile
	line	50
	
l3339:	
;adc.c: 50: adsum = 0;
	clrf	(ADC_Sample@adsum)
	clrf	(ADC_Sample@adsum+1)
	clrf	(ADC_Sample@adsum+2)
	clrf	(ADC_Sample@adsum+3)
	line	51
	
l3341:	
;adc.c: 51: admin = 0;
	clrf	(ADC_Sample@admin)
	clrf	(ADC_Sample@admin+1)
	line	52
	
l3343:	
;adc.c: 52: admax = 0;
	clrf	(ADC_Sample@admax)
	clrf	(ADC_Sample@admax+1)
	line	53
	
l3345:	
;adc.c: 53: adtimes = 0;
	clrf	(ADC_Sample@adtimes)
	line	55
	
l1745:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Sample
	__end_of_ADC_Sample:
	signat	_ADC_Sample,4217
	global	_checkUsbStatus

;; *************** function _checkUsbStatus *****************
;; Defined at:
;;		line 37 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       2       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_closeFan
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	37
global __ptext6
__ptext6:	;psect for function _checkUsbStatus
psect	text6
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	37
	global	__size_of_checkUsbStatus
	__size_of_checkUsbStatus	equ	__end_of_checkUsbStatus-_checkUsbStatus
	
_checkUsbStatus:	
;incstack = 0
	opt	stack 2
; Regs used in _checkUsbStatus: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l3367:	
;main.c: 40: if (((PORTB) >> (2)&1) == 1) {
	movf	(6),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	btfss	0+(??_checkUsbStatus+0)+0,(0)&7
	goto	u1271
	goto	u1270
u1271:
	goto	l1124
u1270:
	line	42
	
l3369:	
;main.c: 42: lowVTime = 0;
	clrf	(_lowVTime)
	line	43
	
l3371:	
;main.c: 43: if (((PORTB) >> (1)&1) == 0) {
	movf	(6),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	btfsc	0+(??_checkUsbStatus+0)+0,(0)&7
	goto	u1281
	goto	u1280
u1281:
	goto	l3375
u1280:
	line	45
	
l3373:	
;main.c: 45: PORTC&=~(1<<1);
	bcf	(7)+(1/8),(1)&7	;volatile
	line	46
;main.c: 46: PORTA|=(1<<0);
	bsf	(5)+(0/8),(0)&7	;volatile
	line	47
;main.c: 47: } else if (countTime < 15) {
	goto	l1133
	
l3375:	
	movlw	0
	subwf	(_countTime+1),w
	movlw	0Fh
	skipnz
	subwf	(_countTime),w
	skipnc
	goto	u1291
	goto	u1290
u1291:
	goto	l1127
u1290:
	line	48
	
l3377:	
;main.c: 48: PORTC|=(1<<1);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	50
;main.c: 50: PORTA&=~(1<<0);
	bcf	(5)+(0/8),(0)&7	;volatile
	line	51
;main.c: 51: }else{
	goto	l1133
	
l1127:	
	line	52
;main.c: 52: PORTA|=(1<<0);
	bsf	(5)+(0/8),(0)&7	;volatile
	goto	l1133
	line	54
	
l1124:	
	line	56
;main.c: 56: PORTC|=(1<<1);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	59
	
l3379:	
;main.c: 59: if((adresult/8) > 0x63 && count500ms == 10)
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
	goto	u1301
	goto	u1300
u1301:
	goto	l1133
u1300:
	
l3381:	
		movlw	10
	xorwf	((_count500ms)),w
	btfss	status,2
	goto	u1311
	goto	u1310
u1311:
	goto	l1133
u1310:
	line	61
	
l3383:	
;main.c: 60: {
;main.c: 61: if(lowVTime < 10)
	movlw	low(0Ah)
	subwf	(_lowVTime),w
	skipnc
	goto	u1321
	goto	u1320
u1321:
	goto	l3389
u1320:
	line	63
	
l3385:	
;main.c: 62: {
;main.c: 63: lowVTime++;
	incf	(_lowVTime),f
	line	65
	
l3387:	
;main.c: 65: PORTA^=(1<<0);
	movlw	low(01h)
	xorwf	(5),f	;volatile
	line	66
;main.c: 66: }else
	goto	l1133
	line	69
	
l3389:	
;main.c: 67: {
;main.c: 69: closeFan();
	fcall	_closeFan
	line	73
	
l1133:	
	return
	opt stack 0
GLOBAL	__end_of_checkUsbStatus
	__end_of_checkUsbStatus:
	signat	_checkUsbStatus,89
	global	_checkKeys

;; *************** function _checkKeys *****************
;; Defined at:
;;		line 189 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_checkFan
;;		_key_driver
;;		_setFanLevel
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	189
global __ptext7
__ptext7:	;psect for function _checkKeys
psect	text7
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	189
	global	__size_of_checkKeys
	__size_of_checkKeys	equ	__end_of_checkKeys-_checkKeys
	
_checkKeys:	
;incstack = 0
	opt	stack 1
; Regs used in _checkKeys: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	190
	
l3395:	
;main.c: 190: if (key_driver(&key1) == 1) {
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_key_driver
	xorlw	01h
	skipz
	goto	u1331
	goto	u1330
u1331:
	goto	l3409
u1330:
	line	193
	
l3397:	
;main.c: 193: if (FAN_STATUS == 1) {
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1341
	goto	u1340
u1341:
	goto	l1162
u1340:
	line	195
	
l3399:	
;main.c: 195: setFanLevel(1);
	movlw	low(01h)
	fcall	_setFanLevel
	line	197
;main.c: 197: } else {
	goto	l1164
	
l1162:	
	line	198
;main.c: 198: FAN_STATUS = 1;
	clrf	(_FAN_STATUS)
	incf	(_FAN_STATUS),f
	line	199
	
l3401:	
;main.c: 199: setFanLevel(0);
	movlw	low(0)
	fcall	_setFanLevel
	line	200
	
l3403:	
;main.c: 200: checkFan();
	fcall	_checkFan
	goto	l1164
	line	203
	
l3409:	
		movlw	2
	xorwf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1351
	goto	u1350
u1351:
	goto	l1164
u1350:
	goto	l3403
	line	208
	
l1164:	
	return
	opt stack 0
GLOBAL	__end_of_checkKeys
	__end_of_checkKeys:
	signat	_checkKeys,89
	global	_setFanLevel

;; *************** function _setFanLevel *****************
;; Defined at:
;;		line 89 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       2       0
;;      Temps:          0       0       0
;;      Totals:         0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Init_PWM
;;		___awdiv
;;		_closeFan
;; This function is called by:
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	89
global __ptext8
__ptext8:	;psect for function _setFanLevel
psect	text8
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	89
	global	__size_of_setFanLevel
	__size_of_setFanLevel	equ	__end_of_setFanLevel-_setFanLevel
	
_setFanLevel:	
;incstack = 0
	opt	stack 1
; Regs used in _setFanLevel: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setFanLevel@level stored from wreg
	movwf	(setFanLevel@level)
	line	90
	
l3229:	
;main.c: 90: Init_PWM();
	fcall	_Init_PWM
	line	91
	
l3231:	
;main.c: 91: if(level == 0)
	movf	((setFanLevel@level)),w
	btfss	status,2
	goto	u1051
	goto	u1050
u1051:
	goto	l3235
u1050:
	line	93
	
l3233:	
;main.c: 92: {
;main.c: 93: currentLevel = 2;
	movlw	low(02h)
	movwf	(_currentLevel)
	line	95
	
l3235:	
;main.c: 94: }
;main.c: 95: unsigned int levelWidth = (PR2 + 1) / 4;
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
	line	96
	
l3237:	
;main.c: 96: char tempLevel = currentLevel + level;
	movf	(setFanLevel@level),w
	addwf	(_currentLevel),w
	movwf	(setFanLevel@tempLevel)
	line	97
	
l3239:	
;main.c: 97: if (tempLevel > 4) {
	movlw	low(05h)
	subwf	(setFanLevel@tempLevel),w
	skipc
	goto	u1061
	goto	u1060
u1061:
	goto	l3243
u1060:
	line	98
	
l3241:	
;main.c: 98: tempLevel = 1;
	clrf	(setFanLevel@tempLevel)
	incf	(setFanLevel@tempLevel),f
	line	102
	
l3243:	
;main.c: 99: }
;main.c: 102: if (FAN_STATUS == 1) {
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1071
	goto	u1070
u1071:
	goto	l1148
u1070:
	line	103
	
l3245:	
;main.c: 103: currentLevel = tempLevel;
	movf	(setFanLevel@tempLevel),w
	movwf	(_currentLevel)
	line	104
;main.c: 104: switch(currentLevel)
	goto	l3257
	line	107
	
l3247:	
;main.c: 107: closeFan();
	fcall	_closeFan
	line	108
;main.c: 108: break;
	goto	l1148
	line	110
	
l3249:	
;main.c: 110: CCPR1L = 2;
	movlw	low(02h)
	movwf	(21)	;volatile
	line	111
;main.c: 111: break;
	goto	l1148
	line	113
	
l3251:	
;main.c: 113: CCPR1L = 3;
	movlw	low(03h)
	movwf	(21)	;volatile
	line	114
;main.c: 114: break;
	goto	l1148
	line	116
	
l3253:	
;main.c: 116: CCPR1L = 5;
	movlw	low(05h)
	movwf	(21)	;volatile
	line	117
;main.c: 117: break;
	goto	l1148
	line	104
	
l3257:	
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
	goto	l3247
	xorlw	2^1	; case 2
	skipnz
	goto	l3249
	xorlw	3^2	; case 3
	skipnz
	goto	l3251
	xorlw	4^3	; case 4
	skipnz
	goto	l3253
	goto	l1148
	opt asmopt_pop

	line	124
	
l1148:	
	return
	opt stack 0
GLOBAL	__end_of_setFanLevel
	__end_of_setFanLevel:
	signat	_setFanLevel,4217
	global	_closeFan

;; *************** function _closeFan *****************
;; Defined at:
;;		line 127 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          1       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Sleep_Mode
;; This function is called by:
;;		_checkUsbStatus
;;		_setFanLevel
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	127
global __ptext9
__ptext9:	;psect for function _closeFan
psect	text9
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	127
	global	__size_of_closeFan
	__size_of_closeFan	equ	__end_of_closeFan-_closeFan
	
_closeFan:	
;incstack = 0
	opt	stack 2
; Regs used in _closeFan: [wreg+status,2+status,0+pclath+cstack]
	line	128
	
l3155:	
;main.c: 128: CCP1CON = 0x00;
	clrf	(23)	;volatile
	line	129
;main.c: 129: T2CON = 0X00;
	clrf	(18)	;volatile
	line	130
	
l3157:	
;main.c: 130: currentLevel = 1;
	clrf	(_currentLevel)
	incf	(_currentLevel),f
	line	131
	
l3159:	
;main.c: 131: PORTA|=(1<<0);
	bsf	(5)+(0/8),(0)&7	;volatile
	line	133
	
l3161:	
;main.c: 133: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	134
	
l3163:	
;main.c: 134: PORTC&=~(1<<2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(7)+(2/8),(2)&7	;volatile
	line	135
	
l3165:	
;main.c: 135: TRISA&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	line	136
	
l3167:	
;main.c: 137: fan_check_time = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(2/8),(2)&7	;volatile
	line	138
;main.c: 138: FAN_STATUS = 0;
	clrf	(_FAN_STATUS)
	line	140
;main.c: 140: lowVTime = 0;
	clrf	(_lowVTime)
	line	141
	
l3169:	
;main.c: 141: if (((PORTB) >> (2)&1) == 0) {
	movf	(6),w	;volatile
	movwf	(??_closeFan+0)+0
	clrc
	rrf	(??_closeFan+0)+0,f
	clrc
	rrf	(??_closeFan+0)+0,f
	btfsc	0+(??_closeFan+0)+0,(0)&7
	goto	u971
	goto	u970
u971:
	goto	l1152
u970:
	line	142
	
l3171:	
;main.c: 142: Sleep_Mode();
	fcall	_Sleep_Mode
	line	145
	
l1152:	
	return
	opt stack 0
GLOBAL	__end_of_closeFan
	__end_of_closeFan:
	signat	_closeFan,89
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 278 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
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
;;		On exit  : 0/0
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	278
global __ptext10
__ptext10:	;psect for function _Sleep_Mode
psect	text10
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	278
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 2
; Regs used in _Sleep_Mode: [wreg+status,2]
	line	279
	
l3135:	
;main.c: 279: FAN_STATUS = 0;
	clrf	(_FAN_STATUS)
	line	280
;main.c: 280: INTCON = 0;
	clrf	(11)	;volatile
	line	282
;main.c: 282: OPTION_REG = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(129)^080h	;volatile
	line	284
;main.c: 284: TRISA = 0B00000000;
	clrf	(133)^080h	;volatile
	line	285
	
l3137:	
;main.c: 285: PORTA = 0B00000001;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	286
	
l3139:	
;main.c: 286: WPUA = 0B00000000;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(398)^0180h	;volatile
	line	288
;main.c: 288: TRISB = 0B00100100;
	movlw	low(024h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	289
	
l3141:	
;main.c: 289: PORTB = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	291
	
l3143:	
;main.c: 291: TRISC = 0B00000000;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(135)^080h	;volatile
	line	292
;main.c: 292: PORTC = 0B00000010;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(7)	;volatile
	line	294
;main.c: 294: WPUB = 0B00100000;
	movlw	low(020h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(149)^080h	;volatile
	line	296
;main.c: 296: IOCB = 0B00100100;
	movlw	low(024h)
	movwf	(150)^080h	;volatile
	line	297
	
l3145:	
;main.c: 297: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	298
	
l3147:	
;main.c: 298: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	300
	
l3149:	
;main.c: 300: ADCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(31)	;volatile
	line	302
	
l3151:	
;main.c: 302: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	304
	
l3153:	
;main.c: 304: PORTB;
	bcf	status, 5	;RP0=0, select bank0
	movf	(6),w	;volatile
	line	306
# 306 "E:\project\project0508\scm\n9_fan_no_led\main.c"
clrwdt ;# 
	line	308
# 308 "E:\project\project0508\scm\n9_fan_no_led\main.c"
sleep ;# 
	line	310
# 310 "E:\project\project0508\scm\n9_fan_no_led\main.c"
nop ;# 
psect	text10
	line	315
	
l1186:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
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
psect	text11,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\cms\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
	line	6
global __ptext11
__ptext11:	;psect for function ___awdiv
psect	text11
	file	"E:\cms\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l3185:	
	clrf	(___awdiv@sign)
	line	15
	
l3187:	
	btfss	(___awdiv@divisor+1),7
	goto	u981
	goto	u980
u981:
	goto	l3193
u980:
	line	16
	
l3189:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l3191:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	19
	
l3193:	
	btfss	(___awdiv@dividend+1),7
	goto	u991
	goto	u990
u991:
	goto	l3199
u990:
	line	20
	
l3195:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l3197:	
	movlw	low(01h)
	xorwf	(___awdiv@sign),f
	line	23
	
l3199:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l3201:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u1001
	goto	u1000
u1001:
	goto	l3221
u1000:
	line	25
	
l3203:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l3207
	line	27
	
l3205:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	28
	incf	(___awdiv@counter),f
	line	26
	
l3207:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1011
	goto	u1010
u1011:
	goto	l3205
u1010:
	line	31
	
l3209:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	32
	
l3211:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1025
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1025:
	skipc
	goto	u1021
	goto	u1020
u1021:
	goto	l3217
u1020:
	line	33
	
l3213:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l3215:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	36
	
l3217:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	37
	
l3219:	
	decfsz	(___awdiv@counter),f
	goto	u1031
	goto	u1030
u1031:
	goto	l3209
u1030:
	line	39
	
l3221:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u1041
	goto	u1040
u1041:
	goto	l3225
u1040:
	line	40
	
l3223:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	41
	
l3225:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	42
	
l1939:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_key_driver

;; *************** function _key_driver *****************
;; Defined at:
;;		line 9 in file "E:\project\project0508\scm\n9_fan_no_led\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    2[BANK0 ] PTR struct Keys
;;		 -> key1(7), 
;;  key_read        1    1[BANK0 ] unsigned char 
;;  key_return      1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
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
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\scankey.c"
	line	9
global __ptext12
__ptext12:	;psect for function _key_driver
psect	text12
	file	"E:\project\project0508\scm\n9_fan_no_led\scankey.c"
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
	
l3261:	
;scankey.c: 12: unsigned char key_return = 0;
	clrf	(key_driver@key_return)
	line	13
	
l3263:	
;scankey.c: 13: unsigned char key_read = key->key_input;
	movf	(key_driver@key),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(key_driver@key_read)
	line	15
;scankey.c: 15: switch (key->key_state_buffer1) {
	goto	l3295
	line	17
	
l3265:	
;scankey.c: 17: if (key_read == 0) {
	movf	((key_driver@key_read)),w
	btfss	status,2
	goto	u1091
	goto	u1090
u1091:
	goto	l3297
u1090:
	line	18
	
l3267:	
;scankey.c: 18: key->key_state_buffer1 = 1;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	incf	indf,f
	goto	l3297
	line	25
	
l3269:	
;scankey.c: 25: if (key_read == 0) {
	movf	((key_driver@key_read)),w
	btfss	status,2
	goto	u1101
	goto	u1100
u1101:
	goto	l3275
u1100:
	line	26
	
l3271:	
;scankey.c: 26: key->key_timer_cnt1 = 0;
	movf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	line	27
	
l3273:	
;scankey.c: 27: key->key_state_buffer1 = 2;
	incf	(key_driver@key),w
	movwf	fsr0
	movlw	low(02h)
	movwf	indf
	line	31
;scankey.c: 31: } else {
	goto	l3297
	line	32
	
l3275:	
;scankey.c: 32: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	goto	l3297
	line	39
	
l3277:	
;scankey.c: 39: if (key_read == 1) {
		decf	((key_driver@key_read)),w
	btfss	status,2
	goto	u1111
	goto	u1110
u1111:
	goto	l3283
u1110:
	line	40
	
l3279:	
;scankey.c: 40: key_return = 1;
	clrf	(key_driver@key_return)
	incf	(key_driver@key_return),f
	line	41
	
l3281:	
;scankey.c: 41: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	line	42
;scankey.c: 42: } else if (++(key->key_timer_cnt1) >= 100)
	goto	l3297
	
l3283:	
	movf	(key_driver@key),w
	movwf	fsr0
	incf	indf,f
	movlw	low(064h)
	subwf	(indf),w
	skipc
	goto	u1121
	goto	u1120
u1121:
	goto	l3297
u1120:
	line	44
	
l3285:	
;scankey.c: 43: {
;scankey.c: 44: key_return = 3;
	movlw	low(03h)
	movwf	(key_driver@key_return)
	line	45
	
l3287:	
;scankey.c: 45: key->key_state_buffer1 = 3;
	incf	(key_driver@key),w
	movwf	fsr0
	movlw	low(03h)
	movwf	indf
	goto	l3297
	line	51
	
l3289:	
;scankey.c: 51: if (key_read == 1)
		decf	((key_driver@key_read)),w
	btfss	status,2
	goto	u1131
	goto	u1130
u1131:
	goto	l3297
u1130:
	line	53
	
l3291:	
;scankey.c: 52: {
;scankey.c: 53: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	goto	l3297
	line	15
	
l3295:	
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
goto l3297
movlw high(S3507)
movwf pclath
	movlw low(S3507)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S3507:
	ljmp	l3265
	ljmp	l3269
	ljmp	l3277
	ljmp	l3289
psect	text12

	line	58
	
l3297:	
;scankey.c: 58: return key_return;
	movf	(key_driver@key_return),w
	line	59
	
l1788:	
	return
	opt stack 0
GLOBAL	__end_of_key_driver
	__end_of_key_driver:
	signat	_key_driver,4217
	global	_checkFan

;; *************** function _checkFan *****************
;; Defined at:
;;		line 149 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	149
global __ptext13
__ptext13:	;psect for function _checkFan
psect	text13
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	149
	global	__size_of_checkFan
	__size_of_checkFan	equ	__end_of_checkFan-_checkFan
	
_checkFan:	
;incstack = 0
	opt	stack 3
; Regs used in _checkFan: [wreg]
	line	150
	
l2803:	
;main.c: 150: TRISA&=~(1<<1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	line	151
;main.c: 151: PORTA&=~(1<<1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(1/8),(1)&7	;volatile
	line	153
;main.c: 153: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	154
;main.c: 154: PORTA|=(1<<2);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(2/8),(2)&7	;volatile
	line	155
	
l2805:	
;main.c: 155: T2CON = 0X04;
	movlw	low(04h)
	movwf	(18)	;volatile
	line	175
	
l1155:	
	return
	opt stack 0
GLOBAL	__end_of_checkFan
	__end_of_checkFan:
	signat	_checkFan,89
	global	_Init_Config

;; *************** function _Init_Config *****************
;; Defined at:
;;		line 251 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
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
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	251
global __ptext14
__ptext14:	;psect for function _Init_Config
psect	text14
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	251
	global	__size_of_Init_Config
	__size_of_Init_Config	equ	__end_of_Init_Config-_Init_Config
	
_Init_Config:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_Config: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	252
	
l3413:	
;main.c: 252: if(FAN_STATUS == 1)
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1361
	goto	u1360
u1361:
	goto	l3417
u1360:
	goto	l1183
	line	256
	
l3417:	
;main.c: 255: }
;main.c: 256: Init_System();
	fcall	_Init_System
	line	257
;main.c: 257: Init_GPIO();
	fcall	_Init_GPIO
	line	258
;main.c: 258: Init_Interupt();
	fcall	_Init_Interupt
	line	259
;main.c: 259: Init_PWM();
	fcall	_Init_PWM
	line	261
	
l3419:	
;main.c: 261: IOCB = 0x04;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(150)^080h	;volatile
	line	262
	
l3421:	
;main.c: 262: TMR0 = 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	263
	
l3423:	
;main.c: 263: TO = 0;
	bcf	(28/8),(28)&7	;volatile
	line	266
	
l3425:	
;main.c: 266: key1.key_index = 5;
	movlw	low(05h)
	movwf	0+(_key1)+06h
	line	268
	
l3427:	
;main.c: 268: resetKey(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	271
	
l3429:	
;main.c: 271: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	272
	
l3431:	
;main.c: 272: TRISB = 0x7E;
	movlw	low(07Eh)
	movwf	(134)^080h	;volatile
	line	273
	
l3433:	
;main.c: 273: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	274
	
l3435:	
;main.c: 274: Init_PWM();
	fcall	_Init_PWM
	line	275
	
l1183:	
	return
	opt stack 0
GLOBAL	__end_of_Init_Config
	__end_of_Init_Config:
	signat	_Init_Config,89
	global	_resetKey

;; *************** function _resetKey *****************
;; Defined at:
;;		line 100 in file "E:\project\project0508\scm\n9_fan_no_led\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    4[COMMON] PTR struct Keys
;;		 -> key1(7), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 300/0
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
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\scankey.c"
	line	100
global __ptext15
__ptext15:	;psect for function _resetKey
psect	text15
	file	"E:\project\project0508\scm\n9_fan_no_led\scankey.c"
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
	
l2855:	
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
	
l1803:	
	return
	opt stack 0
GLOBAL	__end_of_resetKey
	__end_of_resetKey:
	signat	_resetKey,4217
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 3 in file "E:\project\project0508\scm\n9_fan_no_led\init.c"
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
;;		_Init_Config
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\init.c"
	line	3
global __ptext16
__ptext16:	;psect for function _Init_System
psect	text16
	file	"E:\project\project0508\scm\n9_fan_no_led\init.c"
	line	3
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_System: [wreg+status,2]
	line	4
	
l2747:	
# 4 "E:\project\project0508\scm\n9_fan_no_led\init.c"
nop ;# 
	line	5
# 5 "E:\project\project0508\scm\n9_fan_no_led\init.c"
clrwdt ;# 
psect	text16
	line	6
	
l2749:	
;init.c: 6: INTCON = 0;
	clrf	(11)	;volatile
	line	7
	
l2751:	
;init.c: 7: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	8
	
l2753:	
;init.c: 8: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	10
	
l539:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Init_PWM

;; *************** function _Init_PWM *****************
;; Defined at:
;;		line 75 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 200/0
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
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	75
global __ptext17
__ptext17:	;psect for function _Init_PWM
psect	text17
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	75
	global	__size_of_Init_PWM
	__size_of_Init_PWM	equ	__end_of_Init_PWM-_Init_PWM
	
_Init_PWM:	
;incstack = 0
	opt	stack 2
; Regs used in _Init_PWM: [wreg+status,2]
	line	76
	
l3173:	
;main.c: 76: CCP1CON = 0x0F;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(23)	;volatile
	line	77
	
l3175:	
;main.c: 77: T2CON = 0;
	clrf	(18)	;volatile
	line	78
	
l3177:	
;main.c: 78: PR2 = 7;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	80
;main.c: 80: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	81
	
l3179:	
;main.c: 81: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	82
;main.c: 82: T2CON = 0;
	clrf	(18)	;volatile
	line	84
	
l3181:	
;main.c: 84: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	85
	
l3183:	
;main.c: 85: T2CON = 0X04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	86
	
l1136:	
	return
	opt stack 0
GLOBAL	__end_of_Init_PWM
	__end_of_Init_PWM:
	signat	_Init_PWM,89
	global	_Init_Interupt

;; *************** function _Init_Interupt *****************
;; Defined at:
;;		line 27 in file "E:\project\project0508\scm\n9_fan_no_led\init.c"
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
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\init.c"
	line	27
global __ptext18
__ptext18:	;psect for function _Init_Interupt
psect	text18
	file	"E:\project\project0508\scm\n9_fan_no_led\init.c"
	line	27
	global	__size_of_Init_Interupt
	__size_of_Init_Interupt	equ	__end_of_Init_Interupt-_Init_Interupt
	
_Init_Interupt:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_Interupt: [wreg+status,2]
	line	28
	
l2769:	
;init.c: 28: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	29
;init.c: 29: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	30
	
l2771:	
;init.c: 30: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(11)	;volatile
	line	32
	
l545:	
	return
	opt stack 0
GLOBAL	__end_of_Init_Interupt
	__end_of_Init_Interupt:
	signat	_Init_Interupt,89
	global	_Init_GPIO

;; *************** function _Init_GPIO *****************
;; Defined at:
;;		line 13 in file "E:\project\project0508\scm\n9_fan_no_led\init.c"
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
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext19
__ptext19:	;psect for function _Init_GPIO
psect	text19
	file	"E:\project\project0508\scm\n9_fan_no_led\init.c"
	line	13
	global	__size_of_Init_GPIO
	__size_of_Init_GPIO	equ	__end_of_Init_GPIO-_Init_GPIO
	
_Init_GPIO:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_GPIO: [wreg+status,2]
	line	14
	
l2755:	
;init.c: 14: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	15
;init.c: 15: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	16
;init.c: 16: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	17
	
l2757:	
;init.c: 17: WPUA = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	18
	
l2759:	
;init.c: 18: WPUB = 0xFF;
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	19
	
l2761:	
;init.c: 19: WPUC = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	20
	
l2763:	
;init.c: 20: PORTA = 0xFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	21
	
l2765:	
;init.c: 21: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(6)	;volatile
	line	22
	
l2767:	
;init.c: 22: PORTC = 0xFF;
	movlw	low(0FFh)
	movwf	(7)	;volatile
	line	23
;init.c: 23: IOCB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	25
	
l542:	
	return
	opt stack 0
GLOBAL	__end_of_Init_GPIO
	__end_of_Init_GPIO:
	signat	_Init_GPIO,89
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 325 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
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
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	325
global __ptext20
__ptext20:	;psect for function _Timer0_Isr
psect	text20
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	325
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
psect	text20
	line	326
	
i1l3091:	
;main.c: 326: if (T0IF) {
	btfss	(90/8),(90)&7	;volatile
	goto	u95_21
	goto	u95_20
u95_21:
	goto	i1l3099
u95_20:
	line	328
	
i1l3093:	
;main.c: 328: TMR0 += 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(1),f	;volatile
	line	331
	
i1l3095:	
;main.c: 331: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	332
	
i1l3097:	
;main.c: 332: time0Flag = 1;
	clrf	(_time0Flag)
	incf	(_time0Flag),f
	line	336
	
i1l3099:	
;main.c: 334: }
;main.c: 336: if (RBIF) {
	btfss	(88/8),(88)&7	;volatile
	goto	u96_21
	goto	u96_20
u96_21:
	goto	i1l1193
u96_20:
	line	337
	
i1l3101:	
;main.c: 337: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	338
	
i1l3103:	
;main.c: 338: Init_Config();
	fcall	i1_Init_Config
	line	340
	
i1l1193:	
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
;;		line 251 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
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
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	251
global __ptext21
__ptext21:	;psect for function i1_Init_Config
psect	text21
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	251
	global	__size_ofi1_Init_Config
	__size_ofi1_Init_Config	equ	__end_ofi1_Init_Config-i1_Init_Config
	
i1_Init_Config:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_Config: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	252
	
i1l3031:	
;main.c: 252: if(FAN_STATUS == 1)
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u89_21
	goto	u89_20
u89_21:
	goto	i1l3035
u89_20:
	goto	i1l1183
	line	256
	
i1l3035:	
;main.c: 255: }
;main.c: 256: Init_System();
	fcall	i1_Init_System
	line	257
;main.c: 257: Init_GPIO();
	fcall	i1_Init_GPIO
	line	258
;main.c: 258: Init_Interupt();
	fcall	i1_Init_Interupt
	line	259
;main.c: 259: Init_PWM();
	fcall	i1_Init_PWM
	line	261
	
i1l3037:	
;main.c: 261: IOCB = 0x04;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(150)^080h	;volatile
	line	262
	
i1l3039:	
;main.c: 262: TMR0 = 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	263
	
i1l3041:	
;main.c: 263: TO = 0;
	bcf	(28/8),(28)&7	;volatile
	line	266
	
i1l3043:	
;main.c: 266: key1.key_index = 5;
	movlw	low(05h)
	movwf	0+(_key1)+06h
	line	268
	
i1l3045:	
;main.c: 268: resetKey(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	i1_resetKey
	line	271
	
i1l3047:	
;main.c: 271: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(133)^080h	;volatile
	line	272
	
i1l3049:	
;main.c: 272: TRISB = 0x7E;
	movlw	low(07Eh)
	movwf	(134)^080h	;volatile
	line	273
	
i1l3051:	
;main.c: 273: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	274
	
i1l3053:	
;main.c: 274: Init_PWM();
	fcall	i1_Init_PWM
	line	275
	
i1l1183:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_Config
	__end_ofi1_Init_Config:
	signat	i1_Init_Config,89
	global	i1_resetKey

;; *************** function i1_resetKey *****************
;; Defined at:
;;		line 100 in file "E:\project\project0508\scm\n9_fan_no_led\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    0[COMMON] PTR struct Keys
;;		 -> key1(7), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 300/0
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
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\scankey.c"
	line	100
global __ptext22
__ptext22:	;psect for function i1_resetKey
psect	text22
	file	"E:\project\project0508\scm\n9_fan_no_led\scankey.c"
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
	
i1l2955:	
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
	
i1l1803:	
	return
	opt stack 0
GLOBAL	__end_ofi1_resetKey
	__end_ofi1_resetKey:
	signat	i1_resetKey,89
	global	i1_Init_System

;; *************** function i1_Init_System *****************
;; Defined at:
;;		line 3 in file "E:\project\project0508\scm\n9_fan_no_led\init.c"
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
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\init.c"
	line	3
global __ptext23
__ptext23:	;psect for function i1_Init_System
psect	text23
	file	"E:\project\project0508\scm\n9_fan_no_led\init.c"
	line	3
	global	__size_ofi1_Init_System
	__size_ofi1_Init_System	equ	__end_ofi1_Init_System-i1_Init_System
	
i1_Init_System:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_System: [wreg+status,2]
	line	4
	
i1l2917:	
# 4 "E:\project\project0508\scm\n9_fan_no_led\init.c"
nop ;# 
	line	5
# 5 "E:\project\project0508\scm\n9_fan_no_led\init.c"
clrwdt ;# 
psect	text23
	line	6
	
i1l2919:	
;init.c: 6: INTCON = 0;
	clrf	(11)	;volatile
	line	7
	
i1l2921:	
;init.c: 7: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	8
	
i1l2923:	
;init.c: 8: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	10
	
i1l539:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_System
	__end_ofi1_Init_System:
	signat	i1_Init_System,89
	global	i1_Init_PWM

;; *************** function i1_Init_PWM *****************
;; Defined at:
;;		line 75 in file "E:\project\project0508\scm\n9_fan_no_led\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 200/0
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
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	75
global __ptext24
__ptext24:	;psect for function i1_Init_PWM
psect	text24
	file	"E:\project\project0508\scm\n9_fan_no_led\main.c"
	line	75
	global	__size_ofi1_Init_PWM
	__size_ofi1_Init_PWM	equ	__end_ofi1_Init_PWM-i1_Init_PWM
	
i1_Init_PWM:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_PWM: [wreg+status,2]
	line	76
	
i1l2943:	
;main.c: 76: CCP1CON = 0x0F;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(23)	;volatile
	line	77
	
i1l2945:	
;main.c: 77: T2CON = 0;
	clrf	(18)	;volatile
	line	78
	
i1l2947:	
;main.c: 78: PR2 = 7;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	80
;main.c: 80: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	81
	
i1l2949:	
;main.c: 81: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	82
;main.c: 82: T2CON = 0;
	clrf	(18)	;volatile
	line	84
	
i1l2951:	
;main.c: 84: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	85
	
i1l2953:	
;main.c: 85: T2CON = 0X04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	86
	
i1l1136:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_PWM
	__end_ofi1_Init_PWM:
	signat	i1_Init_PWM,89
	global	i1_Init_Interupt

;; *************** function i1_Init_Interupt *****************
;; Defined at:
;;		line 27 in file "E:\project\project0508\scm\n9_fan_no_led\init.c"
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
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	file	"E:\project\project0508\scm\n9_fan_no_led\init.c"
	line	27
global __ptext25
__ptext25:	;psect for function i1_Init_Interupt
psect	text25
	file	"E:\project\project0508\scm\n9_fan_no_led\init.c"
	line	27
	global	__size_ofi1_Init_Interupt
	__size_ofi1_Init_Interupt	equ	__end_ofi1_Init_Interupt-i1_Init_Interupt
	
i1_Init_Interupt:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_Interupt: [wreg+status,2]
	line	28
	
i1l2939:	
;init.c: 28: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	29
;init.c: 29: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	30
	
i1l2941:	
;init.c: 30: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(11)	;volatile
	line	32
	
i1l545:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_Interupt
	__end_ofi1_Init_Interupt:
	signat	i1_Init_Interupt,89
	global	i1_Init_GPIO

;; *************** function i1_Init_GPIO *****************
;; Defined at:
;;		line 13 in file "E:\project\project0508\scm\n9_fan_no_led\init.c"
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
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext26
__ptext26:	;psect for function i1_Init_GPIO
psect	text26
	file	"E:\project\project0508\scm\n9_fan_no_led\init.c"
	line	13
	global	__size_ofi1_Init_GPIO
	__size_ofi1_Init_GPIO	equ	__end_ofi1_Init_GPIO-i1_Init_GPIO
	
i1_Init_GPIO:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_GPIO: [wreg+status,2]
	line	14
	
i1l2925:	
;init.c: 14: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	15
;init.c: 15: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	16
;init.c: 16: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	17
	
i1l2927:	
;init.c: 17: WPUA = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	18
	
i1l2929:	
;init.c: 18: WPUB = 0xFF;
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	19
	
i1l2931:	
;init.c: 19: WPUC = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	20
	
i1l2933:	
;init.c: 20: PORTA = 0xFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	21
	
i1l2935:	
;init.c: 21: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(6)	;volatile
	line	22
	
i1l2937:	
;init.c: 22: PORTC = 0xFF;
	movlw	low(0FFh)
	movwf	(7)	;volatile
	line	23
;init.c: 23: IOCB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	25
	
i1l542:	
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
