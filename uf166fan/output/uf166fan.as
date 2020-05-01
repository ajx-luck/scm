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
	FNCALL	_main,_scanKeys
	FNCALL	_scanKeys,_sacnKeyInput
	FNCALL	_checkKeys,_checkFan
	FNCALL	_checkKeys,_closeFan
	FNCALL	_checkKeys,_key_read
	FNCALL	_checkKeys,_setFanLevel
	FNCALL	_key_read,_key_driver
	FNCALL	_checkFan,_closeFan
	FNCALL	_checkFan,_setFanLevel
	FNCALL	_setFanLevel,___awdiv
	FNCALL	_setFanLevel,___bmul
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
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	24

;initializer for _FAN_STATUS
	retlw	02h
	line	22

;initializer for _currentLevel
	retlw	02h
	global	_countTime
	global	_time0Flag
	global	_fan_check_time
	global	_count10Ms
	global	_key3
	global	_key2
	global	_key1
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
	global	_TMR2IF
_TMR2IF	set	97
	global	_T0IF
_T0IF	set	90
	global	_RBIF
_RBIF	set	88
	global	_TO
_TO	set	28
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
_countTime:
       ds      2

_time0Flag:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_fan_check_time:
       ds      2

_count10Ms:
       ds      2

_key3:
       ds      7

_key2:
       ds      7

_key1:
       ds      7

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	24
_FAN_STATUS:
       ds      1

psect	dataBANK0
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	22
_currentLevel:
       ds      1

	file	"uf166fan.as"
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
	movlw	low((__pbssBANK0)+019h)
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
?_setLedOn:	; 1 bytes @ 0x0
?_sacnKeyInput:	; 1 bytes @ 0x0
?_key_read:	; 1 bytes @ 0x0
?_Init_Config:	; 1 bytes @ 0x0
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
?_key_driver:	; 1 bytes @ 0x0
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
??_Init_System:	; 1 bytes @ 0x4
??_Init_GPIO:	; 1 bytes @ 0x4
??_Init_Interupt:	; 1 bytes @ 0x4
??_resetKey:	; 1 bytes @ 0x4
??_checkUsbStatus:	; 1 bytes @ 0x4
??_Init_PWM:	; 1 bytes @ 0x4
??_key_driver:	; 1 bytes @ 0x4
?___bmul:	; 1 bytes @ 0x4
??___awdiv:	; 1 bytes @ 0x4
	global	setLedOn@ledIndex
setLedOn@ledIndex:	; 1 bytes @ 0x4
	global	key_driver@key_return
key_driver@key_return:	; 1 bytes @ 0x4
	global	resetKey@key
resetKey@key:	; 1 bytes @ 0x4
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x4
	ds	1
??_Init_Config:	; 1 bytes @ 0x5
??_closeFan:	; 1 bytes @ 0x5
??___bmul:	; 1 bytes @ 0x5
	global	key_driver@key_read
key_driver@key_read:	; 1 bytes @ 0x5
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x5
	ds	1
	global	sacnKeyInput@key
sacnKeyInput@key:	; 1 bytes @ 0x6
	global	key_driver@key
key_driver@key:	; 1 bytes @ 0x6
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x6
	ds	1
??_key_read:	; 1 bytes @ 0x7
??_setFanLevel:	; 1 bytes @ 0x7
??_scanKeys:	; 1 bytes @ 0x7
??_checkKeys:	; 1 bytes @ 0x7
??_main:	; 1 bytes @ 0x7
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	key_read@key_return
key_read@key_return:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	key_read@key_read
key_read@key_read:	; 1 bytes @ 0x1
	ds	1
	global	key_read@key
key_read@key:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	2
	global	setFanLevel@levelWidth
setFanLevel@levelWidth:	; 2 bytes @ 0x8
	ds	2
	global	setFanLevel@level
setFanLevel@level:	; 1 bytes @ 0xA
	ds	1
	global	setFanLevel@tempLevel
setFanLevel@tempLevel:	; 1 bytes @ 0xB
	ds	1
??_checkFan:	; 1 bytes @ 0xC
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        2
;!    BSS         28
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      10
;!    BANK0            80     13      40
;!    BANK1            80      0       0

;!
;!Pointer List with Targets:
;!
;!    resetKey@key	PTR struct Keys size(1) Largest target is 7
;!		 -> key3(BANK0[7]), key2(BANK0[7]), key1(BANK0[7]), 
;!
;!    key_read@key	PTR struct Keys size(1) Largest target is 7
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
;!    _key_read->_key_driver
;!    _setFanLevel->___bmul
;!    _closeFan->_setLedOn
;!    _Init_Config->_resetKey
;!
;!Critical Paths under _Timer0_Isr in COMMON
;!
;!    i1_Init_Config->i1_resetKey
;!
;!Critical Paths under _main in BANK0
;!
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
;! (0) _main                                                 0     0      0    3277
;!                        _Init_Config
;!                          _checkKeys
;!                     _checkUsbStatus
;!                           _scanKeys
;! ---------------------------------------------------------------------------------
;! (1) _scanKeys                                             0     0      0     169
;!                       _sacnKeyInput
;! ---------------------------------------------------------------------------------
;! (2) _sacnKeyInput                                         3     3      0     169
;!                                              4 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _checkUsbStatus                                       1     1      0       0
;!                                              4 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _checkKeys                                            0     0      0    2939
;!                           _checkFan
;!                           _closeFan
;!                           _key_read
;!                        _setFanLevel
;! ---------------------------------------------------------------------------------
;! (2) _key_read                                             3     3      0     953
;!                                              0 BANK0      3     3      0
;!                         _key_driver
;! ---------------------------------------------------------------------------------
;! (3) _key_driver                                           3     3      0     507
;!                                              4 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _checkFan                                             1     1      0     993
;!                                             12 BANK0      1     1      0
;!                           _closeFan
;!                        _setFanLevel
;! ---------------------------------------------------------------------------------
;! (2) _setFanLevel                                          4     4      0     971
;!                                              8 BANK0      4     4      0
;!                            ___awdiv
;!                             ___bmul
;!                           _setLedOn
;! ---------------------------------------------------------------------------------
;! (3) ___bmul                                               3     2      1     145
;!                                              4 COMMON     3     2      1
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
;!         ___bmul
;!         _setLedOn
;!     _closeFan
;!       _Init_PWM
;!       _setLedOn
;!     _key_read
;!       _key_driver
;!     _setFanLevel
;!       ___awdiv
;!       ___bmul
;!       _setLedOn
;!   _checkUsbStatus
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
;!BANK0               50      D      28       5       50.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      7       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      32       8        0.0%
;!ABS                  0      0      32       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 227 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
;;		_scanKeys
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	227
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	227
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	228
	
l2726:	
;main.c: 228: Init_Config();
	fcall	_Init_Config
	line	231
	
l2728:	
;main.c: 231: if (time0Flag) {
	movf	((_time0Flag)),w
	btfsc	status,2
	goto	u1071
	goto	u1070
u1071:
	goto	l2736
u1070:
	line	232
	
l2730:	
# 232 "C:\SCMCU WorkSpace\uf166fan\main.c"
clrwdt ;# 
psect	maintext
	line	233
	
l2732:	
;main.c: 233: time0Flag = 0;
	clrf	(_time0Flag)
	line	234
	
l2734:	
;main.c: 234: scanKeys();
	fcall	_scanKeys
	line	238
	
l2736:	
;main.c: 235: }
;main.c: 238: if (count10Ms == 10) {
		movlw	10
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_count10Ms)),w
iorwf	((_count10Ms+1)),w
	btfss	status,2
	goto	u1081
	goto	u1080
u1081:
	goto	l2744
u1080:
	line	239
	
l2738:	
;main.c: 239: checkKeys();
	fcall	_checkKeys
	line	240
	
l2740:	
;main.c: 240: count10Ms = 0;
	clrf	(_count10Ms)
	clrf	(_count10Ms+1)
	line	242
	
l2742:	
;main.c: 242: checkUsbStatus();
	fcall	_checkUsbStatus
	line	245
	
l2744:	
;main.c: 243: }
;main.c: 245: if (countTime == 1000) {
		movlw	232
	xorwf	((_countTime)),w
	movlw	3
	skipnz
	xorwf	((_countTime+1)),w
	btfss	status,2
	goto	u1091
	goto	u1090
u1091:
	goto	l2728
u1090:
	line	246
	
l2746:	
;main.c: 246: countTime = 0;
	clrf	(_countTime)
	clrf	(_countTime+1)
	goto	l2728
	global	start
	ljmp	start
	opt stack 0
	line	250
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_scanKeys

;; *************** function _scanKeys *****************
;; Defined at:
;;		line 185 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
	line	185
global __ptext1
__ptext1:	;psect for function _scanKeys
psect	text1
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	185
	global	__size_of_scanKeys
	__size_of_scanKeys	equ	__end_of_scanKeys-_scanKeys
	
_scanKeys:	
;incstack = 0
	opt	stack 3
; Regs used in _scanKeys: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	186
	
l2354:	
;main.c: 186: key1.key_addr_result = key2.key_addr_result = key3.key_addr_result = PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	0+(_key3)+05h
	movwf	0+(_key2)+05h
	movwf	0+(_key1)+05h
	line	187
	
l2356:	
;main.c: 187: sacnKeyInput(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	188
	
l2358:	
;main.c: 188: sacnKeyInput(&key2);
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	189
	
l2360:	
;main.c: 189: sacnKeyInput(&key3);
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	190
	
l2362:	
;main.c: 190: countTime++;
	incf	(_countTime),f
	skipnz
	incf	(_countTime+1),f
	line	191
	
l2364:	
;main.c: 191: count10Ms++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_count10Ms),f
	skipnz
	incf	(_count10Ms+1),f
	line	192
	
l611:	
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
	
l2246:	
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
	goto	u624
u625:
	clrc
	rrf	(??_sacnKeyInput+0)+0,f
u624:
	addlw	-1
	skipz
	goto	u625
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
	
l648:	
	return
	opt stack 0
GLOBAL	__end_of_sacnKeyInput
	__end_of_sacnKeyInput:
	signat	_sacnKeyInput,4217
	global	_checkUsbStatus

;; *************** function _checkUsbStatus *****************
;; Defined at:
;;		line 36 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	36
global __ptext3
__ptext3:	;psect for function _checkUsbStatus
psect	text3
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	36
	global	__size_of_checkUsbStatus
	__size_of_checkUsbStatus	equ	__end_of_checkUsbStatus-_checkUsbStatus
	
_checkUsbStatus:	
;incstack = 0
	opt	stack 4
; Regs used in _checkUsbStatus: [wreg+status,2+status,0]
	line	37
	
l2344:	
;main.c: 37: if (((PORTB) >> (2)&1) == 1) {
	movf	(6),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	btfss	0+(??_checkUsbStatus+0)+0,(0)&7
	goto	u661
	goto	u660
u661:
	goto	l573
u660:
	line	38
	
l2346:	
;main.c: 38: if (((PORTB) >> (1)&1) == 1) {
	movf	(6),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	btfss	0+(??_checkUsbStatus+0)+0,(0)&7
	goto	u671
	goto	u670
u671:
	goto	l2350
u670:
	line	40
	
l2348:	
;main.c: 40: PORTA&=~(1<<0);
	bcf	(5)+(0/8),(0)&7	;volatile
	line	41
;main.c: 41: } else if (countTime == 1000) {
	goto	l578
	
l2350:	
		movlw	232
	xorwf	((_countTime)),w
	movlw	3
	skipnz
	xorwf	((_countTime+1)),w
	btfss	status,2
	goto	u681
	goto	u680
u681:
	goto	l578
u680:
	line	43
	
l2352:	
;main.c: 43: PORTA^=(1<<0);
	movlw	low(01h)
	xorwf	(5),f	;volatile
	goto	l578
	line	45
	
l573:	
	line	47
;main.c: 47: PORTA|=(1<<0);
	bsf	(5)+(0/8),(0)&7	;volatile
	line	49
	
l578:	
	return
	opt stack 0
GLOBAL	__end_of_checkUsbStatus
	__end_of_checkUsbStatus:
	signat	_checkUsbStatus,89
	global	_checkKeys

;; *************** function _checkKeys *****************
;; Defined at:
;;		line 195 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_checkFan
;;		_closeFan
;;		_key_read
;;		_setFanLevel
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	195
global __ptext4
__ptext4:	;psect for function _checkKeys
psect	text4
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	195
	global	__size_of_checkKeys
	__size_of_checkKeys	equ	__end_of_checkKeys-_checkKeys
	
_checkKeys:	
;incstack = 0
	opt	stack 1
; Regs used in _checkKeys: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	196
	
l2698:	
;main.c: 196: if (key_read(&key1) != 0) {
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_key_read
	xorlw	0
	skipnz
	goto	u1021
	goto	u1020
u1021:
	goto	l2712
u1020:
	line	199
	
l2700:	
;main.c: 199: if (FAN_STATUS == 1) {
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1031
	goto	u1030
u1031:
	goto	l2704
u1030:
	line	201
	
l2702:	
;main.c: 201: closeFan();
	fcall	_closeFan
	line	202
;main.c: 202: } else {
	goto	l617
	line	203
	
l2704:	
;main.c: 203: FAN_STATUS = 2;
	movlw	low(02h)
	movwf	(_FAN_STATUS)
	line	204
	
l2706:	
;main.c: 204: checkFan();
	fcall	_checkFan
	goto	l617
	line	207
	
l2712:	
		movlw	2
	xorwf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u1041
	goto	u1040
u1041:
	goto	l618
u1040:
	line	208
	
l2714:	
;main.c: 208: checkFan();
	fcall	_checkFan
	line	212
	
l618:	
;main.c: 209: }
;main.c: 212: if (key_read(&key2) != 0) {
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	_key_read
	xorlw	0
	skipnz
	goto	u1051
	goto	u1050
u1051:
	goto	l2720
u1050:
	line	214
	
l2716:	
;main.c: 214: setFanLevel(1);
	movlw	low(01h)
	fcall	_setFanLevel
	goto	l617
	line	218
	
l2720:	
;main.c: 216: }
;main.c: 218: if (key_read(&key3) != 0) {
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	_key_read
	xorlw	0
	skipnz
	goto	u1061
	goto	u1060
u1061:
	goto	l617
u1060:
	line	220
	
l2722:	
;main.c: 220: setFanLevel(-1);
	movlw	low(0FFh)
	fcall	_setFanLevel
	line	224
	
l617:	
	return
	opt stack 0
GLOBAL	__end_of_checkKeys
	__end_of_checkKeys:
	signat	_checkKeys,89
	global	_key_read

;; *************** function _key_read *****************
;; Defined at:
;;		line 66 in file "C:\SCMCU WorkSpace\uf166fan\scankey.c"
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
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_key_driver
;; This function is called by:
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\scankey.c"
	line	66
global __ptext5
__ptext5:	;psect for function _key_read
psect	text5
	file	"C:\SCMCU WorkSpace\uf166fan\scankey.c"
	line	66
	global	__size_of_key_read
	__size_of_key_read	equ	__end_of_key_read-_key_read
	
_key_read:	
;incstack = 0
	opt	stack 2
; Regs used in _key_read: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;key_read@key stored from wreg
	movwf	(key_read@key)
	line	68
	
l2668:	
;scankey.c: 68: unsigned char key_return = 0;
	clrf	(key_read@key_return)
	line	69
	
l2670:	
;scankey.c: 69: unsigned char key_read = key_driver(key);
	movf	(key_read@key),w
	fcall	_key_driver
	movwf	(key_read@key_read)
	line	71
;scankey.c: 71: switch (key->key_state_buffer2) {
	goto	l2692
	line	73
	
l2672:	
;scankey.c: 73: if (key_read == 1) {
		decf	((key_read@key_read)),w
	btfss	status,2
	goto	u991
	goto	u990
u991:
	goto	l2676
u990:
	line	74
	
l2674:	
;scankey.c: 74: key->key_timer_cnt2 = 0;
	movf	(key_read@key),w
	addlw	02h
	movwf	fsr0
	clrf	indf
	line	75
;scankey.c: 75: key->key_state_buffer2 = 1;
	movf	(key_read@key),w
	addlw	03h
	movwf	fsr0
	clrf	indf
	incf	indf,f
	line	76
;scankey.c: 76: } else
	goto	l2694
	line	77
	
l2676:	
;scankey.c: 77: key_return = key_read;
	movf	(key_read@key_read),w
	movwf	(key_read@key_return)
	goto	l2694
	line	81
	
l2678:	
;scankey.c: 81: if (key_read == 1)
		decf	((key_read@key_read)),w
	btfss	status,2
	goto	u1001
	goto	u1000
u1001:
	goto	l2684
u1000:
	line	83
	
l2680:	
;scankey.c: 82: {
;scankey.c: 83: key_return = 2;
	movlw	low(02h)
	movwf	(key_read@key_return)
	line	84
	
l2682:	
;scankey.c: 84: key->key_state_buffer2 = 0;
	movf	(key_read@key),w
	addlw	03h
	movwf	fsr0
	clrf	indf
	line	85
;scankey.c: 85: } else if (++(key->key_timer_cnt2) >= 50) {
	goto	l2694
	
l2684:	
	movf	(key_read@key),w
	addlw	02h
	movwf	fsr0
	incf	indf,f
	movlw	low(032h)
	subwf	(indf),w
	skipc
	goto	u1011
	goto	u1010
u1011:
	goto	l2694
u1010:
	line	89
	
l2686:	
;scankey.c: 89: key_return = 1;
	clrf	(key_read@key_return)
	incf	(key_read@key_return),f
	line	90
	
l2688:	
;scankey.c: 90: key->key_state_buffer2 = 0;
	movf	(key_read@key),w
	addlw	03h
	movwf	fsr0
	clrf	indf
	goto	l2694
	line	71
	
l2692:	
	movf	(key_read@key),w
	addlw	03h
	movwf	fsr0
	movf	indf,w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte            8     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2672
	xorlw	1^0	; case 1
	skipnz
	goto	l2678
	goto	l2694
	opt asmopt_pop

	line	96
	
l2694:	
;scankey.c: 96: return key_return;
	movf	(key_read@key_return),w
	line	97
	
l676:	
	return
	opt stack 0
GLOBAL	__end_of_key_read
	__end_of_key_read:
	signat	_key_read,4217
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
;;		On entry : 300/0
;;		On exit  : B00/0
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
;;		_key_read
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	9
global __ptext6
__ptext6:	;psect for function _key_driver
psect	text6
	file	"C:\SCMCU WorkSpace\uf166fan\scankey.c"
	line	9
	global	__size_of_key_driver
	__size_of_key_driver	equ	__end_of_key_driver-_key_driver
	
_key_driver:	
;incstack = 0
	opt	stack 2
; Regs used in _key_driver: [wreg-fsr0h+status,2+status,0]
;key_driver@key stored from wreg
	movwf	(key_driver@key)
	line	12
	
l2600:	
;scankey.c: 12: unsigned char key_return = 0;
	clrf	(key_driver@key_return)
	line	13
	
l2602:	
;scankey.c: 13: unsigned char key_read = key->key_input;
	movf	(key_driver@key),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(key_driver@key_read)
	line	15
;scankey.c: 15: switch (key->key_state_buffer1) {
	goto	l2634
	line	17
	
l2604:	
;scankey.c: 17: if (key_read == 0) {
	movf	((key_driver@key_read)),w
	btfss	status,2
	goto	u901
	goto	u900
u901:
	goto	l2636
u900:
	line	18
	
l2606:	
;scankey.c: 18: key->key_state_buffer1 = 1;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	incf	indf,f
	goto	l2636
	line	25
	
l2608:	
;scankey.c: 25: if (key_read == 0) {
	movf	((key_driver@key_read)),w
	btfss	status,2
	goto	u911
	goto	u910
u911:
	goto	l2614
u910:
	line	26
	
l2610:	
;scankey.c: 26: key->key_timer_cnt1 = 0;
	movf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	line	27
	
l2612:	
;scankey.c: 27: key->key_state_buffer1 = 2;
	incf	(key_driver@key),w
	movwf	fsr0
	movlw	low(02h)
	movwf	indf
	line	31
;scankey.c: 31: } else {
	goto	l2636
	line	32
	
l2614:	
;scankey.c: 32: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	goto	l2636
	line	39
	
l2616:	
;scankey.c: 39: if (key_read == 1) {
		decf	((key_driver@key_read)),w
	btfss	status,2
	goto	u921
	goto	u920
u921:
	goto	l2622
u920:
	line	40
	
l2618:	
;scankey.c: 40: key_return = 1;
	clrf	(key_driver@key_return)
	incf	(key_driver@key_return),f
	line	41
	
l2620:	
;scankey.c: 41: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	line	42
;scankey.c: 42: } else if (++(key->key_timer_cnt1) >= 100)
	goto	l2636
	
l2622:	
	movf	(key_driver@key),w
	movwf	fsr0
	incf	indf,f
	movlw	low(064h)
	subwf	(indf),w
	skipc
	goto	u931
	goto	u930
u931:
	goto	l2636
u930:
	line	44
	
l2624:	
;scankey.c: 43: {
;scankey.c: 44: key_return = 3;
	movlw	low(03h)
	movwf	(key_driver@key_return)
	line	45
	
l2626:	
;scankey.c: 45: key->key_state_buffer1 = 3;
	incf	(key_driver@key),w
	movwf	fsr0
	movlw	low(03h)
	movwf	indf
	goto	l2636
	line	51
	
l2628:	
;scankey.c: 51: if (key_read == 1)
		decf	((key_driver@key_read)),w
	btfss	status,2
	goto	u941
	goto	u940
u941:
	goto	l2636
u940:
	line	53
	
l2630:	
;scankey.c: 52: {
;scankey.c: 53: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	goto	l2636
	line	15
	
l2634:	
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
goto l2636
movlw high(S2798)
movwf pclath
	movlw low(S2798)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S2798:
	ljmp	l2604
	ljmp	l2608
	ljmp	l2616
	ljmp	l2628
psect	text6

	line	58
	
l2636:	
;scankey.c: 58: return key_return;
	movf	(key_driver@key_return),w
	line	59
	
l664:	
	return
	opt stack 0
GLOBAL	__end_of_key_driver
	__end_of_key_driver:
	signat	_key_driver,4217
	global	_checkFan

;; *************** function _checkFan *****************
;; Defined at:
;;		line 104 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_closeFan
;;		_setFanLevel
;; This function is called by:
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	104
global __ptext7
__ptext7:	;psect for function _checkFan
psect	text7
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	104
	global	__size_of_checkFan
	__size_of_checkFan	equ	__end_of_checkFan-_checkFan
	
_checkFan:	
;incstack = 0
	opt	stack 1
; Regs used in _checkFan: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	106
	
l2646:	
;main.c: 106: PORTA|=(1<<1);
	bsf	(5)+(1/8),(1)&7	;volatile
	line	108
;main.c: 108: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	109
;main.c: 109: PORTA|=(1<<2);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(2/8),(2)&7	;volatile
	line	110
	
l2648:	
;main.c: 110: T2CON = 0X04;
	movlw	low(04h)
	movwf	(18)	;volatile
	line	113
	
l2650:	
;main.c: 113: if (((PORTB) >> (6)&1) == 0) {
	movf	(6),w	;volatile
	movwf	(??_checkFan+0)+0
	movlw	06h
u955:
	clrc
	rrf	(??_checkFan+0)+0,f
	addlw	-1
	skipz
	goto	u955
	btfsc	0+(??_checkFan+0)+0,(0)&7
	goto	u961
	goto	u960
u961:
	goto	l2654
u960:
	line	114
	
l2652:	
;main.c: 114: FAN_STATUS = 1;
	clrf	(_FAN_STATUS)
	incf	(_FAN_STATUS),f
	line	115
;main.c: 115: } else {
	goto	l2656
	line	116
	
l2654:	
;main.c: 116: FAN_STATUS = 2;
	movlw	low(02h)
	movwf	(_FAN_STATUS)
	line	119
	
l2656:	
;main.c: 117: }
;main.c: 119: setFanLevel(0);
	movlw	low(0)
	fcall	_setFanLevel
	line	122
	
l2658:	
;main.c: 122: if (FAN_STATUS == 2) {
		movlw	2
	xorwf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u971
	goto	u970
u971:
	goto	l598
u970:
	line	123
	
l2660:	
;main.c: 123: fan_check_time++;
	incf	(_fan_check_time),f
	skipnz
	incf	(_fan_check_time+1),f
	line	124
	
l2662:	
;main.c: 124: if (fan_check_time == 3000) {
		movlw	184
	xorwf	((_fan_check_time)),w
	movlw	11
	skipnz
	xorwf	((_fan_check_time+1)),w
	btfss	status,2
	goto	u981
	goto	u980
u981:
	goto	l598
u980:
	line	125
	
l2664:	
;main.c: 125: closeFan();
	fcall	_closeFan
	line	131
	
l598:	
	return
	opt stack 0
GLOBAL	__end_of_checkFan
	__end_of_checkFan:
	signat	_checkFan,89
	global	_setFanLevel

;; *************** function _setFanLevel *****************
;; Defined at:
;;		line 65 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
;; Parameters:    Size  Location     Type
;;  level           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  level           1   10[BANK0 ] unsigned char 
;;  levelWidth      2    8[BANK0 ] unsigned int 
;;  tempLevel       1   11[BANK0 ] unsigned char 
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
;;      Locals:         0       4       0
;;      Temps:          0       0       0
;;      Totals:         0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awdiv
;;		___bmul
;;		_setLedOn
;; This function is called by:
;;		_checkFan
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	65
global __ptext8
__ptext8:	;psect for function _setFanLevel
psect	text8
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	65
	global	__size_of_setFanLevel
	__size_of_setFanLevel	equ	__end_of_setFanLevel-_setFanLevel
	
_setFanLevel:	
;incstack = 0
	opt	stack 2
; Regs used in _setFanLevel: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setFanLevel@level stored from wreg
	movwf	(setFanLevel@level)
	line	66
	
l2576:	
;main.c: 66: if(level == 0)
	movf	((setFanLevel@level)),w
	btfss	status,2
	goto	u861
	goto	u860
u861:
	goto	l2580
u860:
	line	68
	
l2578:	
;main.c: 67: {
;main.c: 68: currentLevel = 2;
	movlw	low(02h)
	movwf	(_currentLevel)
	line	70
	
l2580:	
;main.c: 69: }
;main.c: 70: unsigned int levelWidth = (PR2 + 1) / 4;
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
	movf	(1+(?___awdiv)),w
	movwf	(setFanLevel@levelWidth+1)
	movf	(0+(?___awdiv)),w
	movwf	(setFanLevel@levelWidth)
	line	71
	
l2582:	
;main.c: 71: char tempLevel = currentLevel + level;
	movf	(setFanLevel@level),w
	addwf	(_currentLevel),w
	movwf	(setFanLevel@tempLevel)
	line	72
	
l2584:	
;main.c: 72: if (tempLevel > 4) {
	movlw	low(05h)
	subwf	(setFanLevel@tempLevel),w
	skipc
	goto	u871
	goto	u870
u871:
	goto	l2588
u870:
	line	73
	
l2586:	
;main.c: 73: tempLevel = 4;
	movlw	low(04h)
	movwf	(setFanLevel@tempLevel)
	line	76
	
l2588:	
;main.c: 74: }
;main.c: 76: if (tempLevel < 1) {
	movf	((setFanLevel@tempLevel)),w
	btfss	status,2
	goto	u881
	goto	u880
u881:
	goto	l2592
u880:
	line	77
	
l2590:	
;main.c: 77: tempLevel = 1;
	clrf	(setFanLevel@tempLevel)
	incf	(setFanLevel@tempLevel),f
	line	80
	
l2592:	
;main.c: 78: }
;main.c: 80: if (FAN_STATUS == 1) {
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u891
	goto	u890
u891:
	goto	l588
u890:
	line	81
	
l2594:	
;main.c: 81: currentLevel = tempLevel;
	movf	(setFanLevel@tempLevel),w
	movwf	(_currentLevel)
	line	83
	
l2596:	
;main.c: 83: CCPR1L = levelWidth * currentLevel;
	movf	(setFanLevel@levelWidth),w
	movwf	(___bmul@multiplicand)
	movf	(_currentLevel),w
	fcall	___bmul
	movwf	(21)	;volatile
	line	84
	
l2598:	
;main.c: 84: setLedOn(currentLevel);
	movf	(_currentLevel),w
	fcall	_setLedOn
	line	87
	
l588:	
	return
	opt stack 0
GLOBAL	__end_of_setFanLevel
	__end_of_setFanLevel:
	signat	_setFanLevel,4217
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    6[COMMON] unsigned char 
;;  product         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : B00/0
;;		Unchanged: B00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setFanLevel
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\Umul8.c"
	line	4
global __ptext9
__ptext9:	;psect for function ___bmul
psect	text9
	file	"C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 2
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	6
	
l2082:	
	clrf	(___bmul@product)
	line	43
	
l2084:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u401
	goto	u400
u401:
	goto	l2088
u400:
	line	44
	
l2086:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	45
	
l2088:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	46
	
l2090:	
	clrc
	rrf	(___bmul@multiplier),f
	line	47
	movf	((___bmul@multiplier)),w
	btfss	status,2
	goto	u411
	goto	u410
u411:
	goto	l2084
u410:
	line	50
	
l2092:	
	movf	(___bmul@product),w
	line	51
	
l1248:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
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
psect	text10,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
	line	6
global __ptext10
__ptext10:	;psect for function ___awdiv
psect	text10
	file	"C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l2532:	
	clrf	(___awdiv@sign)
	line	15
	
l2534:	
	btfss	(___awdiv@divisor+1),7
	goto	u791
	goto	u790
u791:
	goto	l2540
u790:
	line	16
	
l2536:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l2538:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	19
	
l2540:	
	btfss	(___awdiv@dividend+1),7
	goto	u801
	goto	u800
u801:
	goto	l2546
u800:
	line	20
	
l2542:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l2544:	
	movlw	low(01h)
	xorwf	(___awdiv@sign),f
	line	23
	
l2546:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l2548:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u811
	goto	u810
u811:
	goto	l2568
u810:
	line	25
	
l2550:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l2554
	line	27
	
l2552:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	28
	incf	(___awdiv@counter),f
	line	26
	
l2554:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u821
	goto	u820
u821:
	goto	l2552
u820:
	line	31
	
l2556:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	32
	
l2558:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u835
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u835:
	skipc
	goto	u831
	goto	u830
u831:
	goto	l2564
u830:
	line	33
	
l2560:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l2562:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	36
	
l2564:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	37
	
l2566:	
	decfsz	(___awdiv@counter),f
	goto	u841
	goto	u840
u841:
	goto	l2556
u840:
	line	39
	
l2568:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u851
	goto	u850
u851:
	goto	l2572
u850:
	line	40
	
l2570:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	41
	
l2572:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	42
	
l1360:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_closeFan

;; *************** function _closeFan *****************
;; Defined at:
;;		line 90 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	90
global __ptext11
__ptext11:	;psect for function _closeFan
psect	text11
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	90
	global	__size_of_closeFan
	__size_of_closeFan	equ	__end_of_closeFan-_closeFan
	
_closeFan:	
;incstack = 0
	opt	stack 2
; Regs used in _closeFan: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	91
	
l2164:	
;main.c: 91: Init_PWM();
	fcall	_Init_PWM
	line	92
	
l2166:	
;main.c: 92: currentLevel = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_currentLevel)
	line	93
	
l2168:	
;main.c: 93: setLedOn(5);
	movlw	low(05h)
	fcall	_setLedOn
	line	94
	
l2170:	
;main.c: 94: PORTA|=(1<<0);
	bsf	(5)+(0/8),(0)&7	;volatile
	line	96
	
l2172:	
;main.c: 96: TRISC|=(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(2/8),(2)&7	;volatile
	line	97
	
l2174:	
;main.c: 97: fan_check_time = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_fan_check_time)
	clrf	(_fan_check_time+1)
	line	98
	
l2176:	
;main.c: 98: FAN_STATUS = 0;
	clrf	(_FAN_STATUS)
	line	100
	
l591:	
	return
	opt stack 0
GLOBAL	__end_of_closeFan
	__end_of_closeFan:
	signat	_closeFan,89
	global	_setLedOn

;; *************** function _setLedOn *****************
;; Defined at:
;;		line 135 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	135
global __ptext12
__ptext12:	;psect for function _setLedOn
psect	text12
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	135
	global	__size_of_setLedOn
	__size_of_setLedOn	equ	__end_of_setLedOn-_setLedOn
	
_setLedOn:	
;incstack = 0
	opt	stack 2
; Regs used in _setLedOn: [wreg-fsr0h+status,2+status,0]
;setLedOn@ledIndex stored from wreg
	movwf	(setLedOn@ledIndex)
	line	136
	
l2072:	
;main.c: 136: switch(ledIndex) {
	goto	l2076
	line	137
;main.c: 137: case 1:
	
l602:	
	line	139
;main.c: 139: TRISC&=~(1<<1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	140
;main.c: 140: TRISB|=(1<<7);
	bsf	(134)^080h+(7/8),(7)&7	;volatile
	line	141
;main.c: 141: TRISC&=~(1<<0);
	bcf	(135)^080h+(0/8),(0)&7	;volatile
	line	142
;main.c: 142: PORTB&=~(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(6)+(7/8),(7)&7	;volatile
	line	143
;main.c: 143: PORTC|=(1<<0);
	bsf	(7)+(0/8),(0)&7	;volatile
	line	144
;main.c: 144: PORTC&=~(1<<1);
	bcf	(7)+(1/8),(1)&7	;volatile
	line	145
;main.c: 145: break;
	goto	l608
	line	146
;main.c: 146: case 2:
	
l604:	
	line	147
;main.c: 147: TRISC&=~(1<<1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	148
;main.c: 148: TRISB|=(1<<7);
	bsf	(134)^080h+(7/8),(7)&7	;volatile
	line	149
;main.c: 149: TRISC&=~(1<<0);
	bcf	(135)^080h+(0/8),(0)&7	;volatile
	line	150
;main.c: 150: PORTB&=~(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(6)+(7/8),(7)&7	;volatile
	line	151
;main.c: 151: PORTC&=~(1<<0);
	bcf	(7)+(0/8),(0)&7	;volatile
	line	152
;main.c: 152: PORTC|=(1<<1);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	153
;main.c: 153: break;
	goto	l608
	line	154
;main.c: 154: case 3:
	
l605:	
	line	156
;main.c: 156: TRISC|=(1<<0);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(0/8),(0)&7	;volatile
	line	157
;main.c: 157: TRISB&=~(1<<7);
	bcf	(134)^080h+(7/8),(7)&7	;volatile
	line	158
;main.c: 158: TRISC&=~(1<<1);
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	159
;main.c: 159: PORTB|=(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(6)+(7/8),(7)&7	;volatile
	line	160
;main.c: 160: PORTC&=~(1<<0);
	bcf	(7)+(0/8),(0)&7	;volatile
	line	161
;main.c: 161: PORTC&=~(1<<1);
	bcf	(7)+(1/8),(1)&7	;volatile
	line	162
;main.c: 162: break;
	goto	l608
	line	163
;main.c: 163: case 4:
	
l606:	
	line	164
;main.c: 164: TRISC|=(1<<0);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(0/8),(0)&7	;volatile
	line	165
;main.c: 165: TRISB&=~(1<<7);
	bcf	(134)^080h+(7/8),(7)&7	;volatile
	line	166
;main.c: 166: TRISC&=~(1<<1);
	bcf	(135)^080h+(1/8),(1)&7	;volatile
	line	167
;main.c: 167: PORTB&=~(1<<7);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(6)+(7/8),(7)&7	;volatile
	line	168
;main.c: 168: PORTC|=(1<<0);
	bsf	(7)+(0/8),(0)&7	;volatile
	line	169
;main.c: 169: PORTC|=(1<<1);
	bsf	(7)+(1/8),(1)&7	;volatile
	line	170
;main.c: 170: break;
	goto	l608
	line	171
;main.c: 171: case 5:
	
l607:	
	line	173
;main.c: 173: TRISC|=(1<<0);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(0/8),(0)&7	;volatile
	line	174
;main.c: 174: TRISB|=(1<<7);
	bsf	(134)^080h+(7/8),(7)&7	;volatile
	line	175
;main.c: 175: TRISC|=(1<<1);
	bsf	(135)^080h+(1/8),(1)&7	;volatile
	line	176
;main.c: 176: PORTC&=~(1<<0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(7)+(0/8),(0)&7	;volatile
	line	177
;main.c: 177: PORTB&=~(1<<7);
	bcf	(6)+(7/8),(7)&7	;volatile
	line	178
;main.c: 178: PORTC&=~(1<<1);
	bcf	(7)+(1/8),(1)&7	;volatile
	line	179
;main.c: 179: break;
	goto	l608
	line	136
	
l2076:	
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
goto l608
	movwf fsr
	movlw	5
	subwf	fsr,w
skipnc
goto l608
movlw high(S2800)
movwf pclath
	movlw low(S2800)
	addwf fsr,w
	movwf pc
psect	swtext2,local,class=CONST,delta=2
global __pswtext2
__pswtext2:
S2800:
	ljmp	l602
	ljmp	l604
	ljmp	l605
	ljmp	l606
	ljmp	l607
psect	text12

	line	181
	
l608:	
	return
	opt stack 0
GLOBAL	__end_of_setLedOn
	__end_of_setLedOn:
	signat	_setLedOn,4217
	global	_Init_Config

;; *************** function _Init_Config *****************
;; Defined at:
;;		line 252 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	252
global __ptext13
__ptext13:	;psect for function _Init_Config
psect	text13
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	252
	global	__size_of_Init_Config
	__size_of_Init_Config	equ	__end_of_Init_Config-_Init_Config
	
_Init_Config:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_Config: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	254
	
l2394:	
;main.c: 254: Init_System();
	fcall	_Init_System
	line	255
;main.c: 255: Init_GPIO();
	fcall	_Init_GPIO
	line	256
;main.c: 256: Init_Interupt();
	fcall	_Init_Interupt
	line	257
;main.c: 257: Init_PWM();
	fcall	_Init_PWM
	line	259
	
l2396:	
;main.c: 259: IOCB = 0x04;
	movlw	low(04h)
	movwf	(150)^080h	;volatile
	line	260
	
l2398:	
;main.c: 260: TMR0 = 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	261
	
l2400:	
;main.c: 261: TO = 0;
	bcf	(28/8),(28)&7	;volatile
	line	264
	
l2402:	
;main.c: 264: key1.key_index = 5;
	movlw	low(05h)
	movwf	0+(_key1)+06h
	line	266
	
l2404:	
;main.c: 266: key2.key_index = 4;
	movlw	low(04h)
	movwf	0+(_key2)+06h
	line	268
	
l2406:	
;main.c: 268: key3.key_index = 3;
	movlw	low(03h)
	movwf	0+(_key3)+06h
	line	269
	
l2408:	
;main.c: 269: resetKey(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	270
	
l2410:	
;main.c: 270: resetKey(&key2);
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	271
	
l2412:	
;main.c: 271: resetKey(&key3);
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	273
	
l2414:	
;main.c: 273: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	274
	
l2416:	
;main.c: 274: TRISB = 0x7E;
	movlw	low(07Eh)
	movwf	(134)^080h	;volatile
	line	275
	
l2418:	
;main.c: 275: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	276
	
l635:	
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
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\scankey.c"
	line	100
global __ptext14
__ptext14:	;psect for function _resetKey
psect	text14
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
	
l2304:	
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
	
l679:	
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
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	3
global __ptext15
__ptext15:	;psect for function _Init_System
psect	text15
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	3
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_System: [wreg+status,2]
	line	4
	
l2278:	
# 4 "C:\SCMCU WorkSpace\uf166fan\init.c"
nop ;# 
	line	5
# 5 "C:\SCMCU WorkSpace\uf166fan\init.c"
clrwdt ;# 
psect	text15
	line	6
	
l2280:	
;init.c: 6: INTCON = 0;
	clrf	(11)	;volatile
	line	7
	
l2282:	
;init.c: 7: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	8
	
l2284:	
;init.c: 8: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	10
	
l1218:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Init_PWM

;; *************** function _Init_PWM *****************
;; Defined at:
;;		line 51 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_closeFan
;;		_Init_Config
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	51
global __ptext16
__ptext16:	;psect for function _Init_PWM
psect	text16
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	51
	global	__size_of_Init_PWM
	__size_of_Init_PWM	equ	__end_of_Init_PWM-_Init_PWM
	
_Init_PWM:	
;incstack = 0
	opt	stack 2
; Regs used in _Init_PWM: [wreg+status,2]
	line	52
	
l2062:	
;main.c: 52: CCP1CON = 0x0F;
	movlw	low(0Fh)
	movwf	(23)	;volatile
	line	53
	
l2064:	
;main.c: 53: T2CON = 0;
	clrf	(18)	;volatile
	line	54
	
l2066:	
;main.c: 54: PR2 = 7;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	56
;main.c: 56: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	57
	
l2068:	
;main.c: 57: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	58
;main.c: 58: T2CON = 0;
	clrf	(18)	;volatile
	line	60
	
l2070:	
;main.c: 60: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	62
	
l581:	
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
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	27
global __ptext17
__ptext17:	;psect for function _Init_Interupt
psect	text17
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	27
	global	__size_of_Init_Interupt
	__size_of_Init_Interupt	equ	__end_of_Init_Interupt-_Init_Interupt
	
_Init_Interupt:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_Interupt: [wreg+status,2]
	line	28
	
l2300:	
;init.c: 28: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	29
;init.c: 29: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	30
	
l2302:	
;init.c: 30: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(11)	;volatile
	line	32
	
l1224:	
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
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext18
__ptext18:	;psect for function _Init_GPIO
psect	text18
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	13
	global	__size_of_Init_GPIO
	__size_of_Init_GPIO	equ	__end_of_Init_GPIO-_Init_GPIO
	
_Init_GPIO:	
;incstack = 0
	opt	stack 3
; Regs used in _Init_GPIO: [wreg+status,2]
	line	14
	
l2286:	
;init.c: 14: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	15
;init.c: 15: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	16
;init.c: 16: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	17
	
l2288:	
;init.c: 17: WPUA = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	18
	
l2290:	
;init.c: 18: WPUB = 0xFF;
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	19
	
l2292:	
;init.c: 19: WPUC = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	20
	
l2294:	
;init.c: 20: PORTA = 0xFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	21
	
l2296:	
;init.c: 21: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(6)	;volatile
	line	22
	
l2298:	
;init.c: 22: PORTC = 0xFF;
	movlw	low(0FFh)
	movwf	(7)	;volatile
	line	23
;init.c: 23: IOCB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	25
	
l1221:	
	return
	opt stack 0
GLOBAL	__end_of_Init_GPIO
	__end_of_Init_GPIO:
	signat	_Init_GPIO,89
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 322 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	322
global __ptext19
__ptext19:	;psect for function _Timer0_Isr
psect	text19
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	322
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
psect	text19
	line	323
	
i1l2468:	
;main.c: 323: if (T0IF) {
	btfss	(90/8),(90)&7	;volatile
	goto	u77_21
	goto	u77_20
u77_21:
	goto	i1l2476
u77_20:
	line	325
	
i1l2470:	
;main.c: 325: TMR0 += 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(1),f	;volatile
	line	328
	
i1l2472:	
;main.c: 328: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	329
	
i1l2474:	
;main.c: 329: time0Flag = 1;
	clrf	(_time0Flag)
	incf	(_time0Flag),f
	line	333
	
i1l2476:	
;main.c: 331: }
;main.c: 333: if (RBIF) {
	btfss	(88/8),(88)&7	;volatile
	goto	u78_21
	goto	u78_20
u78_21:
	goto	i1l645
u78_20:
	line	334
	
i1l2478:	
;main.c: 334: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	335
	
i1l2480:	
;main.c: 335: Init_Config();
	fcall	i1_Init_Config
	line	337
	
i1l645:	
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
;;		line 252 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	252
global __ptext20
__ptext20:	;psect for function i1_Init_Config
psect	text20
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	252
	global	__size_ofi1_Init_Config
	__size_ofi1_Init_Config	equ	__end_ofi1_Init_Config-i1_Init_Config
	
i1_Init_Config:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_Config: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	254
	
i1l2420:	
;main.c: 254: Init_System();
	fcall	i1_Init_System
	line	255
;main.c: 255: Init_GPIO();
	fcall	i1_Init_GPIO
	line	256
;main.c: 256: Init_Interupt();
	fcall	i1_Init_Interupt
	line	257
;main.c: 257: Init_PWM();
	fcall	i1_Init_PWM
	line	259
	
i1l2422:	
;main.c: 259: IOCB = 0x04;
	movlw	low(04h)
	movwf	(150)^080h	;volatile
	line	260
	
i1l2424:	
;main.c: 260: TMR0 = 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	261
	
i1l2426:	
;main.c: 261: TO = 0;
	bcf	(28/8),(28)&7	;volatile
	line	264
	
i1l2428:	
;main.c: 264: key1.key_index = 5;
	movlw	low(05h)
	movwf	0+(_key1)+06h
	line	266
	
i1l2430:	
;main.c: 266: key2.key_index = 4;
	movlw	low(04h)
	movwf	0+(_key2)+06h
	line	268
	
i1l2432:	
;main.c: 268: key3.key_index = 3;
	movlw	low(03h)
	movwf	0+(_key3)+06h
	line	269
	
i1l2434:	
;main.c: 269: resetKey(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	i1_resetKey
	line	270
	
i1l2436:	
;main.c: 270: resetKey(&key2);
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	i1_resetKey
	line	271
	
i1l2438:	
;main.c: 271: resetKey(&key3);
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	i1_resetKey
	line	273
	
i1l2440:	
;main.c: 273: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	274
	
i1l2442:	
;main.c: 274: TRISB = 0x7E;
	movlw	low(07Eh)
	movwf	(134)^080h	;volatile
	line	275
	
i1l2444:	
;main.c: 275: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	276
	
i1l635:	
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
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\scankey.c"
	line	100
global __ptext21
__ptext21:	;psect for function i1_resetKey
psect	text21
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
	
i1l2316:	
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
	
i1l679:	
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
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	3
global __ptext22
__ptext22:	;psect for function i1_Init_System
psect	text22
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	3
	global	__size_ofi1_Init_System
	__size_ofi1_Init_System	equ	__end_ofi1_Init_System-i1_Init_System
	
i1_Init_System:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_System: [wreg+status,2]
	line	4
	
i1l2318:	
# 4 "C:\SCMCU WorkSpace\uf166fan\init.c"
nop ;# 
	line	5
# 5 "C:\SCMCU WorkSpace\uf166fan\init.c"
clrwdt ;# 
psect	text22
	line	6
	
i1l2320:	
;init.c: 6: INTCON = 0;
	clrf	(11)	;volatile
	line	7
	
i1l2322:	
;init.c: 7: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	8
	
i1l2324:	
;init.c: 8: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	10
	
i1l1218:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Init_System
	__end_ofi1_Init_System:
	signat	i1_Init_System,89
	global	i1_Init_PWM

;; *************** function i1_Init_PWM *****************
;; Defined at:
;;		line 51 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	51
global __ptext23
__ptext23:	;psect for function i1_Init_PWM
psect	text23
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	51
	global	__size_ofi1_Init_PWM
	__size_ofi1_Init_PWM	equ	__end_ofi1_Init_PWM-i1_Init_PWM
	
i1_Init_PWM:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_PWM: [wreg+status,2]
	line	52
	
i1l2306:	
;main.c: 52: CCP1CON = 0x0F;
	movlw	low(0Fh)
	movwf	(23)	;volatile
	line	53
	
i1l2308:	
;main.c: 53: T2CON = 0;
	clrf	(18)	;volatile
	line	54
	
i1l2310:	
;main.c: 54: PR2 = 7;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	56
;main.c: 56: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	57
	
i1l2312:	
;main.c: 57: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	58
;main.c: 58: T2CON = 0;
	clrf	(18)	;volatile
	line	60
	
i1l2314:	
;main.c: 60: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	62
	
i1l581:	
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
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	27
global __ptext24
__ptext24:	;psect for function i1_Init_Interupt
psect	text24
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	27
	global	__size_ofi1_Init_Interupt
	__size_ofi1_Init_Interupt	equ	__end_ofi1_Init_Interupt-i1_Init_Interupt
	
i1_Init_Interupt:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_Interupt: [wreg+status,2]
	line	28
	
i1l2340:	
;init.c: 28: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	29
;init.c: 29: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	30
	
i1l2342:	
;init.c: 30: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(11)	;volatile
	line	32
	
i1l1224:	
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
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	line	13
global __ptext25
__ptext25:	;psect for function i1_Init_GPIO
psect	text25
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	13
	global	__size_ofi1_Init_GPIO
	__size_ofi1_Init_GPIO	equ	__end_ofi1_Init_GPIO-i1_Init_GPIO
	
i1_Init_GPIO:	
;incstack = 0
	opt	stack 1
; Regs used in i1_Init_GPIO: [wreg+status,2]
	line	14
	
i1l2326:	
;init.c: 14: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	15
;init.c: 15: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	16
;init.c: 16: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	17
	
i1l2328:	
;init.c: 17: WPUA = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	18
	
i1l2330:	
;init.c: 18: WPUB = 0xFF;
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	19
	
i1l2332:	
;init.c: 19: WPUC = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	20
	
i1l2334:	
;init.c: 20: PORTA = 0xFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	21
	
i1l2336:	
;init.c: 21: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(6)	;volatile
	line	22
	
i1l2338:	
;init.c: 22: PORTC = 0xFF;
	movlw	low(0FFh)
	movwf	(7)	;volatile
	line	23
;init.c: 23: IOCB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	25
	
i1l1221:	
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
