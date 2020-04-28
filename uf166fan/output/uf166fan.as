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
	FNCALL	_main,_Init_GPIO
	FNCALL	_main,_Init_Interupt
	FNCALL	_main,_Init_PWM
	FNCALL	_main,_Init_System
	FNCALL	_main,_checkKeys
	FNCALL	_main,_checkUsbStatus
	FNCALL	_main,_resetKey
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
	FNROOT	_main
	FNCALL	intlevel1,_Timer0_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_FAN_STATUS
	global	_currentLevel
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	21

;initializer for _FAN_STATUS
	retlw	02h
	line	19

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
	line	21
_FAN_STATUS:
       ds      1

psect	dataBANK0
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	19
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
?_sacnKeyInput:	; 1 bytes @ 0x0
?_key_read:	; 1 bytes @ 0x0
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
??_Timer0_Isr:	; 1 bytes @ 0x0
?_key_driver:	; 1 bytes @ 0x0
	ds	2
?_setLedOn:	; 1 bytes @ 0x2
??_sacnKeyInput:	; 1 bytes @ 0x2
??_Init_System:	; 1 bytes @ 0x2
??_Init_GPIO:	; 1 bytes @ 0x2
??_Init_Interupt:	; 1 bytes @ 0x2
??_resetKey:	; 1 bytes @ 0x2
??_checkUsbStatus:	; 1 bytes @ 0x2
??_Init_PWM:	; 1 bytes @ 0x2
??_key_driver:	; 1 bytes @ 0x2
?___bmul:	; 1 bytes @ 0x2
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x2
	global	key_driver@key_return
key_driver@key_return:	; 1 bytes @ 0x2
	global	resetKey@key
resetKey@key:	; 1 bytes @ 0x2
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x2
	global	setLedOn@ledIndex
setLedOn@ledIndex:	; 2 bytes @ 0x2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x2
	ds	1
??___bmul:	; 1 bytes @ 0x3
	global	key_driver@key_read
key_driver@key_read:	; 1 bytes @ 0x3
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x3
	ds	1
??_setLedOn:	; 1 bytes @ 0x4
??_closeFan:	; 1 bytes @ 0x4
	global	sacnKeyInput@key
sacnKeyInput@key:	; 1 bytes @ 0x4
	global	key_driver@key
key_driver@key:	; 1 bytes @ 0x4
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x4
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x4
	ds	1
??_key_read:	; 1 bytes @ 0x5
??_scanKeys:	; 1 bytes @ 0x5
	global	key_read@key_return
key_read@key_return:	; 1 bytes @ 0x5
	ds	1
??_setFanLevel:	; 1 bytes @ 0x6
??_checkFan:	; 1 bytes @ 0x6
??___awdiv:	; 1 bytes @ 0x6
	global	key_read@key_read
key_read@key_read:	; 1 bytes @ 0x6
	ds	1
	global	key_read@key
key_read@key:	; 1 bytes @ 0x7
	ds	1
??_checkKeys:	; 1 bytes @ 0x8
??_main:	; 1 bytes @ 0x8
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x0
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x2
	ds	2
	global	setFanLevel@level
setFanLevel@level:	; 1 bytes @ 0x4
	ds	1
	global	setFanLevel@levelWidth
setFanLevel@levelWidth:	; 2 bytes @ 0x5
	ds	2
	global	setFanLevel@tempLevel
setFanLevel@tempLevel:	; 1 bytes @ 0x7
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
;!    COMMON           14      8      11
;!    BANK0            80      8      35
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
;!    _checkKeys->_key_read
;!    _key_read->_key_driver
;!    _setFanLevel->___awdiv
;!    _closeFan->_setLedOn
;!
;!Critical Paths under _Timer0_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _checkKeys->_setFanLevel
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
;! (0) _main                                                 0     0      0    3375
;!                          _Init_GPIO
;!                      _Init_Interupt
;!                           _Init_PWM
;!                        _Init_System
;!                          _checkKeys
;!                     _checkUsbStatus
;!                           _resetKey
;!                           _scanKeys
;! ---------------------------------------------------------------------------------
;! (1) _scanKeys                                             0     0      0     169
;!                       _sacnKeyInput
;! ---------------------------------------------------------------------------------
;! (2) _sacnKeyInput                                         3     3      0     169
;!                                              2 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _resetKey                                             1     1      0     169
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _checkUsbStatus                                       1     1      0       0
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _checkKeys                                            0     0      0    3037
;!                           _checkFan
;!                           _closeFan
;!                           _key_read
;!                        _setFanLevel
;! ---------------------------------------------------------------------------------
;! (2) _key_read                                             3     3      0     689
;!                                              5 COMMON     3     3      0
;!                         _key_driver
;! ---------------------------------------------------------------------------------
;! (3) _key_driver                                           3     3      0     361
;!                                              2 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _checkFan                                             1     1      0    1174
;!                                              6 COMMON     1     1      0
;!                           _closeFan
;!                        _setFanLevel
;! ---------------------------------------------------------------------------------
;! (2) _setFanLevel                                          4     4      0    1046
;!                                              4 BANK0      4     4      0
;!                            ___awdiv
;!                             ___bmul
;!                           _setLedOn
;! ---------------------------------------------------------------------------------
;! (3) ___bmul                                               3     2      1     145
;!                                              2 COMMON     3     2      1
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              8     4      4     606
;!                                              2 COMMON     4     0      4
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (2) _closeFan                                             0     0      0     128
;!                           _Init_PWM
;!                           _setLedOn
;! ---------------------------------------------------------------------------------
;! (3) _setLedOn                                             2     0      2     128
;!                                              2 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! (3) _Init_PWM                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Init_Interupt                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Init_GPIO                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _Timer0_Isr                                           2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Init_GPIO
;!   _Init_Interupt
;!   _Init_PWM
;!   _Init_System
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
;!   _resetKey
;!   _scanKeys
;!     _sacnKeyInput
;!
;! _Timer0_Isr (ROOT)
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
;!BANK0               50      8      23       5       43.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      8       B       1       78.6%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      2E       8        0.0%
;!ABS                  0      0      2E       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 214 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Init_GPIO
;;		_Init_Interupt
;;		_Init_PWM
;;		_Init_System
;;		_checkKeys
;;		_checkUsbStatus
;;		_resetKey
;;		_scanKeys
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	214
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	214
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	216
	
l2490:	
;main.c: 216: Init_System();
	fcall	_Init_System
	line	217
;main.c: 217: Init_GPIO();
	fcall	_Init_GPIO
	line	218
;main.c: 218: Init_Interupt();
	fcall	_Init_Interupt
	line	219
;main.c: 219: Init_PWM();
	fcall	_Init_PWM
	line	221
	
l2492:	
;main.c: 221: IOCB = 0x04;
	movlw	low(04h)
	movwf	(150)^080h	;volatile
	line	222
	
l2494:	
;main.c: 222: TMR0 = 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	223
	
l2496:	
;main.c: 223: TO = 0;
	bcf	(28/8),(28)&7	;volatile
	line	226
	
l2498:	
;main.c: 226: key1.key_index = 5;
	movlw	low(05h)
	movwf	0+(_key1)+06h
	line	228
	
l2500:	
;main.c: 228: key2.key_index = 4;
	movlw	low(04h)
	movwf	0+(_key2)+06h
	line	230
	
l2502:	
;main.c: 230: key3.key_index = 3;
	movlw	low(03h)
	movwf	0+(_key3)+06h
	line	231
	
l2504:	
;main.c: 231: resetKey(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	232
	
l2506:	
;main.c: 232: resetKey(&key2);
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	233
	
l2508:	
;main.c: 233: resetKey(&key3);
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	_resetKey
	line	235
	
l2510:	
;main.c: 235: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	236
	
l2512:	
;main.c: 236: TRISB = 0x7E;
	movlw	low(07Eh)
	movwf	(134)^080h	;volatile
	line	237
	
l2514:	
;main.c: 237: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	241
	
l2516:	
;main.c: 239: {
;main.c: 241: if(time0Flag)
	movf	((_time0Flag)),w
	btfsc	status,2
	goto	u931
	goto	u930
u931:
	goto	l2524
u930:
	line	243
	
l2518:	
# 243 "C:\SCMCU WorkSpace\uf166fan\main.c"
clrwdt ;# 
psect	maintext
	line	244
	
l2520:	
;main.c: 244: time0Flag = 0;
	clrf	(_time0Flag)
	line	245
	
l2522:	
;main.c: 245: scanKeys();
	fcall	_scanKeys
	line	249
	
l2524:	
;main.c: 246: }
;main.c: 249: if(count10Ms == 10)
		movlw	10
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_count10Ms)),w
iorwf	((_count10Ms+1)),w
	btfss	status,2
	goto	u941
	goto	u940
u941:
	goto	l2532
u940:
	line	251
	
l2526:	
;main.c: 250: {
;main.c: 251: checkKeys();
	fcall	_checkKeys
	line	252
	
l2528:	
;main.c: 252: count10Ms = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_count10Ms)
	clrf	(_count10Ms+1)
	line	254
	
l2530:	
;main.c: 254: checkUsbStatus();
	fcall	_checkUsbStatus
	line	257
	
l2532:	
;main.c: 255: }
;main.c: 257: if(countTime == 1000)
		movlw	232
	xorwf	((_countTime)),w
	movlw	3
	skipnz
	xorwf	((_countTime+1)),w
	btfss	status,2
	goto	u951
	goto	u950
u951:
	goto	l2516
u950:
	line	259
	
l2534:	
;main.c: 258: {
;main.c: 259: countTime = 0;
	clrf	(_countTime)
	clrf	(_countTime+1)
	goto	l2516
	global	start
	ljmp	start
	opt stack 0
	line	263
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_scanKeys

;; *************** function _scanKeys *****************
;; Defined at:
;;		line 162 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_sacnKeyInput
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	162
global __ptext1
__ptext1:	;psect for function _scanKeys
psect	text1
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	162
	global	__size_of_scanKeys
	__size_of_scanKeys	equ	__end_of_scanKeys-_scanKeys
	
_scanKeys:	
;incstack = 0
	opt	stack 5
; Regs used in _scanKeys: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	164
	
l2208:	
;main.c: 164: key1.key_addr_result = key2.key_addr_result = key3.key_addr_result = PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	0+(_key3)+05h
	movwf	0+(_key2)+05h
	movwf	0+(_key1)+05h
	line	165
	
l2210:	
;main.c: 165: sacnKeyInput(&key1);
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	166
	
l2212:	
;main.c: 166: sacnKeyInput(&key2);
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	167
	
l2214:	
;main.c: 167: sacnKeyInput(&key3);
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	_sacnKeyInput
	line	168
	
l2216:	
;main.c: 168: countTime++;
	incf	(_countTime),f
	skipnz
	incf	(_countTime+1),f
	line	169
	
l2218:	
;main.c: 169: count10Ms++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_count10Ms),f
	skipnz
	incf	(_count10Ms+1),f
	line	170
	
l608:	
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
;;      Temps:          2       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
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
	opt	stack 5
; Regs used in _sacnKeyInput: [wreg-fsr0h+status,2+status,0]
;sacnKeyInput@key stored from wreg
	movwf	(sacnKeyInput@key)
	line	5
	
l2166:	
;scankey.c: 5: key->key_input = ((key->key_addr_result) >> (key->key_index)&1);
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
	goto	u594
u595:
	clrc
	rrf	(??_sacnKeyInput+0)+0,f
u594:
	addlw	-1
	skipz
	goto	u595
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
	line	7
	
l638:	
	return
	opt stack 0
GLOBAL	__end_of_sacnKeyInput
	__end_of_sacnKeyInput:
	signat	_sacnKeyInput,4217
	global	_resetKey

;; *************** function _resetKey *****************
;; Defined at:
;;		line 115 in file "C:\SCMCU WorkSpace\uf166fan\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    2[COMMON] PTR struct Keys
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	115
global __ptext3
__ptext3:	;psect for function _resetKey
psect	text3
	file	"C:\SCMCU WorkSpace\uf166fan\scankey.c"
	line	115
	global	__size_of_resetKey
	__size_of_resetKey	equ	__end_of_resetKey-_resetKey
	
_resetKey:	
;incstack = 0
	opt	stack 6
; Regs used in _resetKey: [wreg-fsr0h+status,2+status,0]
;resetKey@key stored from wreg
	movwf	(resetKey@key)
	line	117
	
l2276:	
;scankey.c: 117: key->key_timer_cnt1 =key->key_timer_cnt2 = key->key_state_buffer1 = key->key_state_buffer2 = 0;
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
	line	118
	
l669:	
	return
	opt stack 0
GLOBAL	__end_of_resetKey
	__end_of_resetKey:
	signat	_resetKey,4217
	global	_checkUsbStatus

;; *************** function _checkUsbStatus *****************
;; Defined at:
;;		line 29 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	29
global __ptext4
__ptext4:	;psect for function _checkUsbStatus
psect	text4
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	29
	global	__size_of_checkUsbStatus
	__size_of_checkUsbStatus	equ	__end_of_checkUsbStatus-_checkUsbStatus
	
_checkUsbStatus:	
;incstack = 0
	opt	stack 6
; Regs used in _checkUsbStatus: [wreg+status,2+status,0]
	line	31
	
l2198:	
;main.c: 31: if(((PORTB) >> (2)&1) == 1){
	movf	(6),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	btfss	0+(??_checkUsbStatus+0)+0,(0)&7
	goto	u631
	goto	u630
u631:
	goto	l571
u630:
	line	32
	
l2200:	
;main.c: 32: if(((PORTB) >> (1)&1) == 1){
	movf	(6),w	;volatile
	movwf	(??_checkUsbStatus+0)+0
	clrc
	rrf	(??_checkUsbStatus+0)+0,f
	btfss	0+(??_checkUsbStatus+0)+0,(0)&7
	goto	u641
	goto	u640
u641:
	goto	l2204
u640:
	line	34
	
l2202:	
;main.c: 34: PORTA&=~(1<<0);
	bcf	(5)+(0/8),(0)&7	;volatile
	line	35
;main.c: 35: }else if(countTime == 1000){
	goto	l576
	
l2204:	
		movlw	232
	xorwf	((_countTime)),w
	movlw	3
	skipnz
	xorwf	((_countTime+1)),w
	btfss	status,2
	goto	u651
	goto	u650
u651:
	goto	l576
u650:
	line	37
	
l2206:	
;main.c: 37: PORTA^=(1<<0);
	movlw	low(01h)
	xorwf	(5),f	;volatile
	goto	l576
	line	39
	
l571:	
	line	41
;main.c: 41: PORTA|=(1<<0);
	bsf	(5)+(0/8),(0)&7	;volatile
	line	43
	
l576:	
	return
	opt stack 0
GLOBAL	__end_of_checkUsbStatus
	__end_of_checkUsbStatus:
	signat	_checkUsbStatus,89
	global	_checkKeys

;; *************** function _checkKeys *****************
;; Defined at:
;;		line 173 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
;;		_checkFan
;;		_closeFan
;;		_key_read
;;		_setFanLevel
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	173
global __ptext5
__ptext5:	;psect for function _checkKeys
psect	text5
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	173
	global	__size_of_checkKeys
	__size_of_checkKeys	equ	__end_of_checkKeys-_checkKeys
	
_checkKeys:	
;incstack = 0
	opt	stack 3
; Regs used in _checkKeys: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	175
	
l2462:	
;main.c: 175: if(key_read(&key1) != 0)
	movlw	(low(_key1|((0x0)<<8)))&0ffh
	fcall	_key_read
	xorlw	0
	skipnz
	goto	u881
	goto	u880
u881:
	goto	l2476
u880:
	line	179
	
l2464:	
;main.c: 176: {
;main.c: 179: if(FAN_STATUS == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u891
	goto	u890
u891:
	goto	l2468
u890:
	line	182
	
l2466:	
;main.c: 180: {
;main.c: 182: closeFan();
	fcall	_closeFan
	line	183
;main.c: 183: }else
	goto	l614
	line	185
	
l2468:	
;main.c: 184: {
;main.c: 185: FAN_STATUS = 2;
	movlw	low(02h)
	movwf	(_FAN_STATUS)
	line	186
	
l2470:	
;main.c: 186: checkFan();
	fcall	_checkFan
	goto	l614
	line	190
	
l2476:	
;main.c: 190: else if(FAN_STATUS == 2)
		movlw	2
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u901
	goto	u900
u901:
	goto	l615
u900:
	line	192
	
l2478:	
;main.c: 191: {
;main.c: 192: checkFan();
	fcall	_checkFan
	line	197
	
l615:	
;main.c: 193: }
;main.c: 197: if(key_read(&key2) != 0)
	movlw	(low(_key2|((0x0)<<8)))&0ffh
	fcall	_key_read
	xorlw	0
	skipnz
	goto	u911
	goto	u910
u911:
	goto	l2484
u910:
	line	200
	
l2480:	
;main.c: 198: {
;main.c: 200: setFanLevel(1);
	movlw	low(01h)
	fcall	_setFanLevel
	goto	l614
	line	204
	
l2484:	
;main.c: 202: }
;main.c: 204: if(key_read(&key3) != 0)
	movlw	(low(_key3|((0x0)<<8)))&0ffh
	fcall	_key_read
	xorlw	0
	skipnz
	goto	u921
	goto	u920
u921:
	goto	l614
u920:
	line	207
	
l2486:	
;main.c: 205: {
;main.c: 207: setFanLevel(-1);
	movlw	low(0FFh)
	fcall	_setFanLevel
	line	211
	
l614:	
	return
	opt stack 0
GLOBAL	__end_of_checkKeys
	__end_of_checkKeys:
	signat	_checkKeys,89
	global	_key_read

;; *************** function _key_read *****************
;; Defined at:
;;		line 75 in file "C:\SCMCU WorkSpace\uf166fan\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    7[COMMON] PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;;  key_read        1    6[COMMON] unsigned char 
;;  key_return      1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_key_driver
;; This function is called by:
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\scankey.c"
	line	75
global __ptext6
__ptext6:	;psect for function _key_read
psect	text6
	file	"C:\SCMCU WorkSpace\uf166fan\scankey.c"
	line	75
	global	__size_of_key_read
	__size_of_key_read	equ	__end_of_key_read-_key_read
	
_key_read:	
;incstack = 0
	opt	stack 4
; Regs used in _key_read: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;key_read@key stored from wreg
	movwf	(key_read@key)
	line	78
	
l2168:	
;scankey.c: 78: unsigned char key_return = 0;
	clrf	(key_read@key_return)
	line	79
	
l2170:	
;scankey.c: 79: unsigned char key_read = key_driver(key);
	movf	(key_read@key),w
	fcall	_key_driver
	movwf	(key_read@key_read)
	line	81
;scankey.c: 81: switch(key->key_state_buffer2)
	goto	l2192
	line	84
	
l2172:	
;scankey.c: 84: if(key_read == 1)
		decf	((key_read@key_read)),w
	btfss	status,2
	goto	u601
	goto	u600
u601:
	goto	l2176
u600:
	line	86
	
l2174:	
;scankey.c: 85: {
;scankey.c: 86: key->key_timer_cnt2 = 0;
	movf	(key_read@key),w
	addlw	02h
	movwf	fsr0
	clrf	indf
	line	87
;scankey.c: 87: key->key_state_buffer2 = 1;
	movf	(key_read@key),w
	addlw	03h
	movwf	fsr0
	clrf	indf
	incf	indf,f
	line	88
;scankey.c: 88: }
	goto	l2194
	line	90
	
l2176:	
;scankey.c: 89: else
;scankey.c: 90: key_return = key_read;
	movf	(key_read@key_read),w
	movwf	(key_read@key_return)
	goto	l2194
	line	94
	
l2178:	
;scankey.c: 94: if(key_read == 1)
		decf	((key_read@key_read)),w
	btfss	status,2
	goto	u611
	goto	u610
u611:
	goto	l2184
u610:
	line	96
	
l2180:	
;scankey.c: 95: {
;scankey.c: 96: key_return = 2;
	movlw	low(02h)
	movwf	(key_read@key_return)
	line	97
	
l2182:	
;scankey.c: 97: key->key_state_buffer2 = 0;
	movf	(key_read@key),w
	addlw	03h
	movwf	fsr0
	clrf	indf
	line	98
;scankey.c: 98: }
	goto	l2194
	line	99
	
l2184:	
;scankey.c: 99: else if(++(key->key_timer_cnt2) >= 50)
	movf	(key_read@key),w
	addlw	02h
	movwf	fsr0
	incf	indf,f
	movlw	low(032h)
	subwf	(indf),w
	skipc
	goto	u621
	goto	u620
u621:
	goto	l2194
u620:
	line	104
	
l2186:	
;scankey.c: 100: {
;scankey.c: 104: key_return = 1;
	clrf	(key_read@key_return)
	incf	(key_read@key_return),f
	line	105
	
l2188:	
;scankey.c: 105: key->key_state_buffer2 = 0;
	movf	(key_read@key),w
	addlw	03h
	movwf	fsr0
	clrf	indf
	goto	l2194
	line	81
	
l2192:	
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
	goto	l2172
	xorlw	1^0	; case 1
	skipnz
	goto	l2178
	goto	l2194
	opt asmopt_pop

	line	111
	
l2194:	
;scankey.c: 111: return key_return;
	movf	(key_read@key_return),w
	line	112
	
l666:	
	return
	opt stack 0
GLOBAL	__end_of_key_read
	__end_of_key_read:
	signat	_key_read,4217
	global	_key_driver

;; *************** function _key_driver *****************
;; Defined at:
;;		line 10 in file "C:\SCMCU WorkSpace\uf166fan\scankey.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;; Auto vars:     Size  Location     Type
;;  key             1    4[COMMON] PTR struct Keys
;;		 -> key3(7), key2(7), key1(7), 
;;  key_read        1    3[COMMON] unsigned char 
;;  key_return      1    2[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_key_read
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	10
global __ptext7
__ptext7:	;psect for function _key_driver
psect	text7
	file	"C:\SCMCU WorkSpace\uf166fan\scankey.c"
	line	10
	global	__size_of_key_driver
	__size_of_key_driver	equ	__end_of_key_driver-_key_driver
	
_key_driver:	
;incstack = 0
	opt	stack 4
; Regs used in _key_driver: [wreg-fsr0h+status,2+status,0]
;key_driver@key stored from wreg
	movwf	(key_driver@key)
	line	14
	
l2096:	
;scankey.c: 14: unsigned char key_return = 0;
	clrf	(key_driver@key_return)
	line	15
	
l2098:	
;scankey.c: 15: unsigned char key_read = key->key_input;
	movf	(key_driver@key),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(key_driver@key_read)
	line	17
;scankey.c: 17: switch(key->key_state_buffer1)
	goto	l2130
	line	20
	
l2100:	
;scankey.c: 20: if(key_read == 0)
	movf	((key_driver@key_read)),w
	btfss	status,2
	goto	u501
	goto	u500
u501:
	goto	l2132
u500:
	line	22
	
l2102:	
;scankey.c: 21: {
;scankey.c: 22: key->key_state_buffer1 = 1;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	incf	indf,f
	goto	l2132
	line	29
	
l2104:	
;scankey.c: 29: if(key_read == 0)
	movf	((key_driver@key_read)),w
	btfss	status,2
	goto	u511
	goto	u510
u511:
	goto	l2110
u510:
	line	31
	
l2106:	
;scankey.c: 30: {
;scankey.c: 31: key->key_timer_cnt1 = 0;
	movf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	line	32
	
l2108:	
;scankey.c: 32: key->key_state_buffer1 = 2;
	incf	(key_driver@key),w
	movwf	fsr0
	movlw	low(02h)
	movwf	indf
	line	36
;scankey.c: 36: }
	goto	l2132
	line	39
	
l2110:	
;scankey.c: 37: else
;scankey.c: 38: {
;scankey.c: 39: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	goto	l2132
	line	46
	
l2112:	
;scankey.c: 46: if(key_read == 1)
		decf	((key_driver@key_read)),w
	btfss	status,2
	goto	u521
	goto	u520
u521:
	goto	l2118
u520:
	line	48
	
l2114:	
;scankey.c: 47: {
;scankey.c: 48: key_return = 1;
	clrf	(key_driver@key_return)
	incf	(key_driver@key_return),f
	line	49
	
l2116:	
;scankey.c: 49: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	line	50
;scankey.c: 50: }
	goto	l2132
	line	51
	
l2118:	
;scankey.c: 51: else if(++(key->key_timer_cnt1) >= 100)
	movf	(key_driver@key),w
	movwf	fsr0
	incf	indf,f
	movlw	low(064h)
	subwf	(indf),w
	skipc
	goto	u531
	goto	u530
u531:
	goto	l2132
u530:
	line	53
	
l2120:	
;scankey.c: 52: {
;scankey.c: 53: key_return = 3;
	movlw	low(03h)
	movwf	(key_driver@key_return)
	line	54
	
l2122:	
;scankey.c: 54: key->key_state_buffer1 = 3;
	incf	(key_driver@key),w
	movwf	fsr0
	movlw	low(03h)
	movwf	indf
	goto	l2132
	line	60
	
l2124:	
;scankey.c: 60: if(key_read == 1)
		decf	((key_driver@key_read)),w
	btfss	status,2
	goto	u541
	goto	u540
u541:
	goto	l2132
u540:
	line	62
	
l2126:	
;scankey.c: 61: {
;scankey.c: 62: key->key_state_buffer1 = 0;
	incf	(key_driver@key),w
	movwf	fsr0
	clrf	indf
	goto	l2132
	line	17
	
l2130:	
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
goto l2132
movlw high(S2586)
movwf pclath
	movlw low(S2586)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S2586:
	ljmp	l2100
	ljmp	l2104
	ljmp	l2112
	ljmp	l2124
psect	text7

	line	67
	
l2132:	
;scankey.c: 67: return key_return;
	movf	(key_driver@key_return),w
	line	68
	
l654:	
	return
	opt stack 0
GLOBAL	__end_of_key_driver
	__end_of_key_driver:
	signat	_key_driver,4217
	global	_checkFan

;; *************** function _checkFan *****************
;; Defined at:
;;		line 99 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
;;      Temps:          1       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_closeFan
;;		_setFanLevel
;; This function is called by:
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	99
global __ptext8
__ptext8:	;psect for function _checkFan
psect	text8
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	99
	global	__size_of_checkFan
	__size_of_checkFan	equ	__end_of_checkFan-_checkFan
	
_checkFan:	
;incstack = 0
	opt	stack 3
; Regs used in _checkFan: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	102
	
l2438:	
;main.c: 102: PORTA|=(1<<1);
	bsf	(5)+(1/8),(1)&7	;volatile
	line	103
	
l2440:	
;main.c: 103: setFanLevel(0);
	movlw	low(0)
	fcall	_setFanLevel
	line	105
	
l2442:	
;main.c: 105: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	106
	
l2444:	
;main.c: 106: T2CON = 0X04;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	109
	
l2446:	
;main.c: 109: if(((PORTB) >> (6)&1) == 0)
	movf	(6),w	;volatile
	movwf	(??_checkFan+0)+0
	movlw	06h
u845:
	clrc
	rrf	(??_checkFan+0)+0,f
	addlw	-1
	skipz
	goto	u845
	btfsc	0+(??_checkFan+0)+0,(0)&7
	goto	u851
	goto	u850
u851:
	goto	l2450
u850:
	line	111
	
l2448:	
;main.c: 110: {
;main.c: 111: FAN_STATUS = 1;
	clrf	(_FAN_STATUS)
	incf	(_FAN_STATUS),f
	line	112
;main.c: 112: }else
	goto	l2452
	line	114
	
l2450:	
;main.c: 113: {
;main.c: 114: FAN_STATUS = 2;
	movlw	low(02h)
	movwf	(_FAN_STATUS)
	line	118
	
l2452:	
;main.c: 115: }
;main.c: 118: if(FAN_STATUS == 2)
		movlw	2
	xorwf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u861
	goto	u860
u861:
	goto	l595
u860:
	line	120
	
l2454:	
;main.c: 119: {
;main.c: 120: fan_check_time++;
	incf	(_fan_check_time),f
	skipnz
	incf	(_fan_check_time+1),f
	line	121
	
l2456:	
;main.c: 121: if(fan_check_time == 3000)
		movlw	184
	xorwf	((_fan_check_time)),w
	movlw	11
	skipnz
	xorwf	((_fan_check_time+1)),w
	btfss	status,2
	goto	u871
	goto	u870
u871:
	goto	l595
u870:
	line	123
	
l2458:	
;main.c: 122: {
;main.c: 123: closeFan();
	fcall	_closeFan
	line	131
	
l595:	
	return
	opt stack 0
GLOBAL	__end_of_checkFan
	__end_of_checkFan:
	signat	_checkFan,89
	global	_setFanLevel

;; *************** function _setFanLevel *****************
;; Defined at:
;;		line 60 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
;; Parameters:    Size  Location     Type
;;  level           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  level           1    4[BANK0 ] unsigned char 
;;  levelWidth      2    5[BANK0 ] unsigned int 
;;  tempLevel       1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 800/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       4       0
;;      Temps:          0       0       0
;;      Totals:         0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;;		___bmul
;;		_setLedOn
;; This function is called by:
;;		_checkFan
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	60
global __ptext9
__ptext9:	;psect for function _setFanLevel
psect	text9
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	60
	global	__size_of_setFanLevel
	__size_of_setFanLevel	equ	__end_of_setFanLevel-_setFanLevel
	
_setFanLevel:	
;incstack = 0
	opt	stack 4
; Regs used in _setFanLevel: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;setFanLevel@level stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(setFanLevel@level)
	line	62
	
l2418:	
;main.c: 62: unsigned int levelWidth = (PR2+1)/4;
	bsf	status, 5	;RP0=1, select bank1
	movf	(146)^080h,w	;volatile
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
	line	63
	
l2420:	
;main.c: 63: char tempLevel = currentLevel + level;
	movf	(setFanLevel@level),w
	addwf	(_currentLevel),w
	movwf	(setFanLevel@tempLevel)
	line	64
	
l2422:	
;main.c: 64: if(tempLevel > 4)
	movlw	low(05h)
	subwf	(setFanLevel@tempLevel),w
	skipc
	goto	u811
	goto	u810
u811:
	goto	l2426
u810:
	line	66
	
l2424:	
;main.c: 65: {
;main.c: 66: tempLevel = 4;
	movlw	low(04h)
	movwf	(setFanLevel@tempLevel)
	line	69
	
l2426:	
;main.c: 67: }
;main.c: 69: if(tempLevel < 1)
	movf	((setFanLevel@tempLevel)),w
	btfss	status,2
	goto	u821
	goto	u820
u821:
	goto	l2430
u820:
	line	71
	
l2428:	
;main.c: 70: {
;main.c: 71: tempLevel = 1;
	clrf	(setFanLevel@tempLevel)
	incf	(setFanLevel@tempLevel),f
	line	73
	
l2430:	
;main.c: 72: }
;main.c: 73: currentLevel = tempLevel;
	movf	(setFanLevel@tempLevel),w
	movwf	(_currentLevel)
	line	75
	
l2432:	
;main.c: 75: CCPR1L = levelWidth*currentLevel;
	movf	(setFanLevel@levelWidth),w
	movwf	(___bmul@multiplicand)
	movf	(_currentLevel),w
	fcall	___bmul
	movwf	(21)	;volatile
	line	76
	
l2434:	
;main.c: 76: if(FAN_STATUS == 1)
		decf	((_FAN_STATUS)),w
	btfss	status,2
	goto	u831
	goto	u830
u831:
	goto	l585
u830:
	line	78
	
l2436:	
;main.c: 77: {
;main.c: 78: setLedOn(currentLevel);
	movf	(_currentLevel),w
	movwf	(setLedOn@ledIndex)
	clrf	(setLedOn@ledIndex+1)
	fcall	_setLedOn
	line	81
	
l585:	
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
;;  multiplicand    1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    4[COMMON] unsigned char 
;;  product         1    3[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setFanLevel
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\Umul8.c"
	line	4
global __ptext10
__ptext10:	;psect for function ___bmul
psect	text10
	file	"C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\Umul8.c"
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
	
l2004:	
	clrf	(___bmul@product)
	line	43
	
l2006:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u381
	goto	u380
u381:
	goto	l2010
u380:
	line	44
	
l2008:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	45
	
l2010:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	46
	
l2012:	
	clrc
	rrf	(___bmul@multiplier),f
	line	47
	movf	((___bmul@multiplier)),w
	btfss	status,2
	goto	u391
	goto	u390
u391:
	goto	l2006
u390:
	line	50
	
l2014:	
	movf	(___bmul@product),w
	line	51
	
l1238:	
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
;;  divisor         2    2[COMMON] int 
;;  dividend        2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    2[BANK0 ] int 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/100
;;		On exit  : B00/0
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         0       4       0
;;      Temps:          0       0       0
;;      Totals:         4       4       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setFanLevel
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=1
	file	"C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
	line	6
global __ptext11
__ptext11:	;psect for function ___awdiv
psect	text11
	file	"C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l2374:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(___awdiv@sign)
	line	15
	
l2376:	
	btfss	(___awdiv@divisor+1),7
	goto	u741
	goto	u740
u741:
	goto	l2382
u740:
	line	16
	
l2378:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l2380:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	19
	
l2382:	
	btfss	(___awdiv@dividend+1),7
	goto	u751
	goto	u750
u751:
	goto	l2388
u750:
	line	20
	
l2384:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l2386:	
	movlw	low(01h)
	xorwf	(___awdiv@sign),f
	line	23
	
l2388:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l2390:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u761
	goto	u760
u761:
	goto	l2410
u760:
	line	25
	
l2392:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l2396
	line	27
	
l2394:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	28
	incf	(___awdiv@counter),f
	line	26
	
l2396:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u771
	goto	u770
u771:
	goto	l2394
u770:
	line	31
	
l2398:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	32
	
l2400:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u785
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u785:
	skipc
	goto	u781
	goto	u780
u781:
	goto	l2406
u780:
	line	33
	
l2402:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l2404:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	36
	
l2406:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	37
	
l2408:	
	decfsz	(___awdiv@counter),f
	goto	u791
	goto	u790
u791:
	goto	l2398
u790:
	line	39
	
l2410:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u801
	goto	u800
u801:
	goto	l2414
u800:
	line	40
	
l2412:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	41
	
l2414:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	42
	
l1350:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_closeFan

;; *************** function _closeFan *****************
;; Defined at:
;;		line 84 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Init_PWM
;;		_setLedOn
;; This function is called by:
;;		_checkFan
;;		_checkKeys
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	84
global __ptext12
__ptext12:	;psect for function _closeFan
psect	text12
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	84
	global	__size_of_closeFan
	__size_of_closeFan	equ	__end_of_closeFan-_closeFan
	
_closeFan:	
;incstack = 0
	opt	stack 4
; Regs used in _closeFan: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	86
	
l2082:	
;main.c: 86: Init_PWM();
	fcall	_Init_PWM
	line	87
	
l2084:	
;main.c: 87: currentLevel = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_currentLevel)
	line	88
	
l2086:	
;main.c: 88: setLedOn(5);
	movlw	05h
	movwf	(setLedOn@ledIndex)
	clrf	(setLedOn@ledIndex+1)
	fcall	_setLedOn
	line	89
	
l2088:	
;main.c: 89: PORTA|=(1<<0);
	bsf	(5)+(0/8),(0)&7	;volatile
	line	91
	
l2090:	
;main.c: 91: TRISC|=(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h+(2/8),(2)&7	;volatile
	line	92
	
l2092:	
;main.c: 92: fan_check_time = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_fan_check_time)
	clrf	(_fan_check_time+1)
	line	93
	
l2094:	
;main.c: 93: FAN_STATUS = 0;
	clrf	(_FAN_STATUS)
	line	95
	
l588:	
	return
	opt stack 0
GLOBAL	__end_of_closeFan
	__end_of_closeFan:
	signat	_closeFan,89
	global	_setLedOn

;; *************** function _setLedOn *****************
;; Defined at:
;;		line 138 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
;; Parameters:    Size  Location     Type
;;  ledIndex        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_setFanLevel
;;		_closeFan
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	138
global __ptext13
__ptext13:	;psect for function _setLedOn
psect	text13
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	138
	global	__size_of_setLedOn
	__size_of_setLedOn	equ	__end_of_setLedOn-_setLedOn
	
_setLedOn:	
;incstack = 0
	opt	stack 4
; Regs used in _setLedOn: [wreg-fsr0h+status,2+status,0]
	line	140
	
l1992:	
;main.c: 140: switch(ledIndex)
	goto	l1998
	line	142
;main.c: 141: {
;main.c: 142: case 1:
	
l599:	
	line	143
;main.c: 143: PORTB&=~(1<<7); PORTC|=(1<<0); PORTC&=~(1<<1);
	bcf	(6)+(7/8),(7)&7	;volatile
	bsf	(7)+(0/8),(0)&7	;volatile
	bcf	(7)+(1/8),(1)&7	;volatile
	line	144
;main.c: 144: break;
	goto	l605
	line	145
;main.c: 145: case 2:
	
l601:	
	line	146
;main.c: 146: PORTB|=(1<<7); PORTC&=~(1<<0); PORTC|=(1<<1);
	bsf	(6)+(7/8),(7)&7	;volatile
	bcf	(7)+(0/8),(0)&7	;volatile
	bsf	(7)+(1/8),(1)&7	;volatile
	line	147
;main.c: 147: break;
	goto	l605
	line	149
;main.c: 149: case 3:
	
l602:	
	line	150
;main.c: 150: PORTB|=(1<<7); PORTC&=~(1<<0); PORTC&=~(1<<1);
	bsf	(6)+(7/8),(7)&7	;volatile
	bcf	(7)+(0/8),(0)&7	;volatile
	bcf	(7)+(1/8),(1)&7	;volatile
	line	151
;main.c: 151: break;
	goto	l605
	line	152
;main.c: 152: case 4:
	
l603:	
	line	153
;main.c: 153: PORTB&=~(1<<7); PORTC|=(1<<0); PORTC|=(1<<1);
	bcf	(6)+(7/8),(7)&7	;volatile
	bsf	(7)+(0/8),(0)&7	;volatile
	bsf	(7)+(1/8),(1)&7	;volatile
	line	154
;main.c: 154: break;
	goto	l605
	line	155
;main.c: 155: default:
	
l604:	
	line	156
;main.c: 156: PORTB&=~(1<<7); PORTC&=~(1<<0); PORTC&=~(1<<1);
	bcf	(6)+(7/8),(7)&7	;volatile
	bcf	(7)+(0/8),(0)&7	;volatile
	bcf	(7)+(1/8),(1)&7	;volatile
	line	157
;main.c: 157: break;
	goto	l605
	line	140
	
l1998:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            7     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (setLedOn@ledIndex+1),w
	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2588
	goto	l604
	opt asmopt_pop
	
l2588:	
; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           13     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (setLedOn@ledIndex),w
	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l599
	xorlw	2^1	; case 2
	skipnz
	goto	l601
	xorlw	3^2	; case 3
	skipnz
	goto	l602
	xorlw	4^3	; case 4
	skipnz
	goto	l603
	goto	l604
	opt asmopt_pop

	line	159
	
l605:	
	return
	opt stack 0
GLOBAL	__end_of_setLedOn
	__end_of_setLedOn:
	signat	_setLedOn,4217
	global	_Init_PWM

;; *************** function _Init_PWM *****************
;; Defined at:
;;		line 45 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_closeFan
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	45
global __ptext14
__ptext14:	;psect for function _Init_PWM
psect	text14
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	45
	global	__size_of_Init_PWM
	__size_of_Init_PWM	equ	__end_of_Init_PWM-_Init_PWM
	
_Init_PWM:	
;incstack = 0
	opt	stack 4
; Regs used in _Init_PWM: [wreg+status,2]
	line	47
	
l1982:	
;main.c: 47: CCP1CON = 0x0F;
	movlw	low(0Fh)
	movwf	(23)	;volatile
	line	48
	
l1984:	
;main.c: 48: T2CON = 0;
	clrf	(18)	;volatile
	line	49
	
l1986:	
;main.c: 49: PR2 = 199;
	movlw	low(0C7h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(146)^080h	;volatile
	line	51
;main.c: 51: CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	52
	
l1988:	
;main.c: 52: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	53
;main.c: 53: T2CON = 0;
	clrf	(18)	;volatile
	line	55
	
l1990:	
;main.c: 55: TRISC&=~(1<<2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(135)^080h+(2/8),(2)&7	;volatile
	line	57
	
l579:	
	return
	opt stack 0
GLOBAL	__end_of_Init_PWM
	__end_of_Init_PWM:
	signat	_Init_PWM,89
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
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
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	5
	
l2248:	
# 5 "C:\SCMCU WorkSpace\uf166fan\init.c"
nop ;# 
	line	6
# 6 "C:\SCMCU WorkSpace\uf166fan\init.c"
clrwdt ;# 
psect	text15
	line	7
	
l2250:	
;init.c: 7: INTCON = 0;
	clrf	(11)	;volatile
	line	8
	
l2252:	
;init.c: 8: OSCCON = 0X71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	9
	
l2254:	
;init.c: 9: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	10
	
l2256:	
;init.c: 10: INTCON = 0x00;
	clrf	(11)	;volatile
	line	14
	
l1208:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_Init_Interupt

;; *************** function _Init_Interupt *****************
;; Defined at:
;;		line 32 in file "C:\SCMCU WorkSpace\uf166fan\init.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	32
global __ptext16
__ptext16:	;psect for function _Init_Interupt
psect	text16
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	32
	global	__size_of_Init_Interupt
	__size_of_Init_Interupt	equ	__end_of_Init_Interupt-_Init_Interupt
	
_Init_Interupt:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_Interupt: [wreg+status,2]
	line	34
	
l2272:	
;init.c: 34: OPTION_REG = 0x00;
	clrf	(129)^080h	;volatile
	line	35
;init.c: 35: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(1)	;volatile
	line	36
	
l2274:	
;init.c: 36: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(11)	;volatile
	line	38
	
l1214:	
	return
	opt stack 0
GLOBAL	__end_of_Init_Interupt
	__end_of_Init_Interupt:
	signat	_Init_Interupt,89
	global	_Init_GPIO

;; *************** function _Init_GPIO *****************
;; Defined at:
;;		line 17 in file "C:\SCMCU WorkSpace\uf166fan\init.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	line	17
global __ptext17
__ptext17:	;psect for function _Init_GPIO
psect	text17
	file	"C:\SCMCU WorkSpace\uf166fan\init.c"
	line	17
	global	__size_of_Init_GPIO
	__size_of_Init_GPIO	equ	__end_of_Init_GPIO-_Init_GPIO
	
_Init_GPIO:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_GPIO: [wreg+status,2]
	line	19
	
l2258:	
;init.c: 19: TRISA = 0;
	clrf	(133)^080h	;volatile
	line	20
;init.c: 20: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	21
;init.c: 21: TRISC = 0;
	clrf	(135)^080h	;volatile
	line	22
	
l2260:	
;init.c: 22: WPUA = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	23
	
l2262:	
;init.c: 23: WPUB = 0xFF;
	movlw	low(0FFh)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	24
	
l2264:	
;init.c: 24: WPUC = 0xFF;
	movlw	low(0FFh)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	25
	
l2266:	
;init.c: 25: PORTA = 0xFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	26
	
l2268:	
;init.c: 26: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(6)	;volatile
	line	27
	
l2270:	
;init.c: 27: PORTC = 0xFF;
	movlw	low(0FFh)
	movwf	(7)	;volatile
	line	28
;init.c: 28: IOCB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h	;volatile
	line	30
	
l1211:	
	return
	opt stack 0
GLOBAL	__end_of_Init_GPIO
	__end_of_Init_GPIO:
	signat	_Init_GPIO,89
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 273 in file "C:\SCMCU WorkSpace\uf166fan\main.c"
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
;;		On exit  : 0/0
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
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	273
global __ptext18
__ptext18:	;psect for function _Timer0_Isr
psect	text18
	file	"C:\SCMCU WorkSpace\uf166fan\main.c"
	line	273
	global	__size_of_Timer0_Isr
	__size_of_Timer0_Isr	equ	__end_of_Timer0_Isr-_Timer0_Isr
	
_Timer0_Isr:	
;incstack = 0
	opt	stack 3
; Regs used in _Timer0_Isr: [wreg+status,2+status,0]
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
	movf	pclath,w
	movwf	(??_Timer0_Isr+1)
	ljmp	_Timer0_Isr
psect	text18
	line	275
	
i1l1934:	
;main.c: 275: if(T0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u37_21
	goto	u37_20
u37_21:
	goto	i1l635
u37_20:
	line	278
	
i1l1936:	
;main.c: 276: {
;main.c: 278: TMR0 += 155;
	movlw	low(09Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(1),f	;volatile
	line	281
	
i1l1938:	
;main.c: 281: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	282
	
i1l1940:	
;main.c: 282: time0Flag =1;
	clrf	(_time0Flag)
	incf	(_time0Flag),f
	line	286
	
i1l635:	
	movf	(??_Timer0_Isr+1),w
	movwf	pclath
	swapf	(??_Timer0_Isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Timer0_Isr
	__end_of_Timer0_Isr:
	signat	_Timer0_Isr,89
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
