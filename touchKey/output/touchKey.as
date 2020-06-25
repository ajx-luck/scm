opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F2852
opt include "C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\include\sc8f2852.cgen.inc"
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
	FNCALL	_main,_checkKey0TouchKey
	FNCALL	_main,_checkKey1TouchKey
	FNCALL	_main,_initSys
	FNCALL	_initSys,_initPWM
	FNCALL	_initSys,_initTimer0
	FNROOT	_main
	FNCALL	intlevel1,_Timer0_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_tempKey1L
	global	_tempKey1H
	global	_tempKey0L
	global	_tempKey0H
	global	_IntFlag
	global	_PWMCON2
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_PWMCON2	set	29
	global	_PWMD01H
_PWMD01H	set	28
	global	_PWMD1L
_PWMD1L	set	24
	global	_PWMD0L
_PWMD0L	set	23
	global	_PWMTH
_PWMTH	set	22
	global	_PWMTL
_PWMTL	set	21
	global	_PWMCON1
_PWMCON1	set	20
	global	_PWMCON0
_PWMCON0	set	19
	global	_INTCON
_INTCON	set	11
	global	_WPUB
_WPUB	set	8
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_TMR0
_TMR0	set	1
	global	_T0IF
_T0IF	set	90
	global	_KEYDATAH
_KEYDATAH	set	149
	global	_KEYDATAL
_KEYDATAL	set	148
	global	_KEYCON1
_KEYCON1	set	147
	global	_KEYCON0
_KEYCON0	set	146
	global	_OSCCON
_OSCCON	set	136
	global	_TRISB
_TRISB	set	134
	global	_OPTION_REG
_OPTION_REG	set	129
; #config settings
	file	"touchKey.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_tempKey1L:
       ds      1

_tempKey1H:
       ds      1

_tempKey0L:
       ds      1

_tempKey0H:
       ds      1

_IntFlag:
       ds      1

	file	"touchKey.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
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
?_initSys:	; 1 bytes @ 0x0
?_checkKey0TouchKey:	; 1 bytes @ 0x0
?_checkKey1TouchKey:	; 1 bytes @ 0x0
?_initTimer0:	; 1 bytes @ 0x0
?_initPWM:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_Timer0_Isr:	; 1 bytes @ 0x0
??_Timer0_Isr:	; 1 bytes @ 0x0
	ds	2
??_initSys:	; 1 bytes @ 0x2
??_checkKey0TouchKey:	; 1 bytes @ 0x2
??_checkKey1TouchKey:	; 1 bytes @ 0x2
??_initTimer0:	; 1 bytes @ 0x2
??_initPWM:	; 1 bytes @ 0x2
	ds	3
??_main:	; 1 bytes @ 0x5
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         5
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5      10
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_checkKey0TouchKey
;!    _main->_checkKey1TouchKey
;!
;!Critical Paths under _Timer0_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
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
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _Timer0_Isr in BANK2
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
;! (0) _main                                                 0     0      0       0
;!                  _checkKey0TouchKey
;!                  _checkKey1TouchKey
;!                            _initSys
;! ---------------------------------------------------------------------------------
;! (1) _initSys                                              0     0      0       0
;!                            _initPWM
;!                         _initTimer0
;! ---------------------------------------------------------------------------------
;! (2) _initTimer0                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _initPWM                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkKey1TouchKey                                    3     3      0       0
;!                                              2 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _checkKey0TouchKey                                    3     3      0       0
;!                                              2 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _Timer0_Isr                                           2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _checkKey0TouchKey
;!   _checkKey1TouchKey
;!   _initSys
;!     _initPWM
;!     _initTimer0
;!
;! _Timer0_Isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      5       A       1       71.4%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               50      0       0       3        0.0%
;!ABS                  0      0       A       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK2            50      0       0       8        0.0%
;!BANK2               50      0       0       9        0.0%
;!DATA                 0      0       A      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 22 in file "C:\SCMCU WorkSpace\touchKey\main.c"
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
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_checkKey0TouchKey
;;		_checkKey1TouchKey
;;		_initSys
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\SCMCU WorkSpace\touchKey\main.c"
	line	22
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\SCMCU WorkSpace\touchKey\main.c"
	line	22
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	24
	
l973:	
;main.c: 24: initSys();
	fcall	_initSys
	line	25
;main.c: 25: while(1)
	
l431:	
	line	27
# 27 "C:\SCMCU WorkSpace\touchKey\main.c"
clrwdt ;# 
psect	maintext
	line	28
	
l975:	
;main.c: 28: if(!IntFlag)
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u131
	goto	u130
u131:
	goto	l979
u130:
	goto	l431
	line	30
	
l979:	
;main.c: 30: IntFlag = 0;
	clrf	(_IntFlag)
	line	31
	
l981:	
;main.c: 31: checkKey0TouchKey();
	fcall	_checkKey0TouchKey
	line	32
	
l983:	
;main.c: 32: checkKey1TouchKey();
	fcall	_checkKey1TouchKey
	goto	l431
	global	start
	ljmp	start
	opt stack 0
	line	34
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_initSys

;; *************** function _initSys *****************
;; Defined at:
;;		line 36 in file "C:\SCMCU WorkSpace\touchKey\main.c"
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
;;		_initPWM
;;		_initTimer0
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	36
global __ptext1
__ptext1:	;psect for function _initSys
psect	text1
	file	"C:\SCMCU WorkSpace\touchKey\main.c"
	line	36
	global	__size_of_initSys
	__size_of_initSys	equ	__end_of_initSys-_initSys
	
_initSys:	
;incstack = 0
	opt	stack 5
; Regs used in _initSys: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l911:	
;main.c: 38: initTimer0();
	fcall	_initTimer0
	line	39
;main.c: 39: initPWM();
	fcall	_initPWM
	line	40
	
l438:	
	return
	opt stack 0
GLOBAL	__end_of_initSys
	__end_of_initSys:
	signat	_initSys,89
	global	_initTimer0

;; *************** function _initTimer0 *****************
;; Defined at:
;;		line 233 in file "C:\SCMCU WorkSpace\touchKey\main.c"
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
;;		_initSys
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	233
global __ptext2
__ptext2:	;psect for function _initTimer0
psect	text2
	file	"C:\SCMCU WorkSpace\touchKey\main.c"
	line	233
	global	__size_of_initTimer0
	__size_of_initTimer0	equ	__end_of_initTimer0-_initTimer0
	
_initTimer0:	
;incstack = 0
	opt	stack 5
; Regs used in _initTimer0: [wreg+status,2]
	line	235
	
l883:	
# 235 "C:\SCMCU WorkSpace\touchKey\main.c"
nop ;# 
	line	236
# 236 "C:\SCMCU WorkSpace\touchKey\main.c"
clrwdt ;# 
psect	text2
	line	237
	
l885:	
;main.c: 237: INTCON = 0;
	clrf	(11)	;volatile
	line	238
	
l887:	
;main.c: 238: TRISB = 0x04;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	239
	
l889:	
;main.c: 239: WPUB = 0xFF;
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	240
	
l891:	
;main.c: 240: PORTA = 0xFF;
	movlw	low(0FFh)
	movwf	(5)	;volatile
	line	241
	
l893:	
;main.c: 241: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(6)	;volatile
	line	242
	
l895:	
;main.c: 242: OSCCON = 0X52;
	movlw	low(052h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(136)^080h	;volatile
	line	243
	
l897:	
;main.c: 243: OPTION_REG = 0x07;
	movlw	low(07h)
	movwf	(129)^080h	;volatile
	line	244
	
l899:	
;main.c: 244: TMR0 = 99;
	movlw	low(063h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	249
	
l901:	
;main.c: 249: INTCON = 0xA0;
	movlw	low(0A0h)
	movwf	(11)	;volatile
	line	250
	
l501:	
	return
	opt stack 0
GLOBAL	__end_of_initTimer0
	__end_of_initTimer0:
	signat	_initTimer0,89
	global	_initPWM

;; *************** function _initPWM *****************
;; Defined at:
;;		line 43 in file "C:\SCMCU WorkSpace\touchKey\main.c"
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
;;		_initSys
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	43
global __ptext3
__ptext3:	;psect for function _initPWM
psect	text3
	file	"C:\SCMCU WorkSpace\touchKey\main.c"
	line	43
	global	__size_of_initPWM
	__size_of_initPWM	equ	__end_of_initPWM-_initPWM
	
_initPWM:	
;incstack = 0
	opt	stack 5
; Regs used in _initPWM: [wreg+status,2]
	line	45
	
l903:	
;main.c: 45: PWMCON1 = 0x40;
	movlw	low(040h)
	movwf	(20)	;volatile
	line	46
;main.c: 46: PWMCON0 = 0x40;
	movlw	low(040h)
	movwf	(19)	;volatile
	line	47
	
l905:	
;main.c: 47: PWMCON2 = 0;
	clrf	(29)	;volatile
	line	48
	
l907:	
;main.c: 48: PWMTH = 0;
	clrf	(22)	;volatile
	line	49
;main.c: 49: PWMTL = 31;
	movlw	low(01Fh)
	movwf	(21)	;volatile
	line	50
;main.c: 50: PWMD0L = 1;
	movlw	low(01h)
	movwf	(23)	;volatile
	line	51
;main.c: 51: PWMD1L = 1;
	movlw	low(01h)
	movwf	(24)	;volatile
	line	52
	
l909:	
;main.c: 52: PWMD01H = 0;
	clrf	(28)	;volatile
	line	53
	
l441:	
	return
	opt stack 0
GLOBAL	__end_of_initPWM
	__end_of_initPWM:
	signat	_initPWM,89
	global	_checkKey1TouchKey

;; *************** function _checkKey1TouchKey *****************
;; Defined at:
;;		line 186 in file "C:\SCMCU WorkSpace\touchKey\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          3       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	186
global __ptext4
__ptext4:	;psect for function _checkKey1TouchKey
psect	text4
	file	"C:\SCMCU WorkSpace\touchKey\main.c"
	line	186
	global	__size_of_checkKey1TouchKey
	__size_of_checkKey1TouchKey	equ	__end_of_checkKey1TouchKey-_checkKey1TouchKey
	
_checkKey1TouchKey:	
;incstack = 0
	opt	stack 6
; Regs used in _checkKey1TouchKey: [wreg+status,2+status,0]
	line	188
	
l943:	
;main.c: 188: TRISB |= 0x03;
	movlw	low(03h)
	iorwf	(134)^080h,f	;volatile
	line	189
	
l945:	
;main.c: 189: KEYCON1 = 0x01;
	movlw	low(01h)
	movwf	(147)^080h	;volatile
	line	190
	
l947:	
;main.c: 190: KEYCON0 = 0x03;
	movlw	low(03h)
	movwf	(146)^080h	;volatile
	line	191
;main.c: 191: while(!(KEYCON0, 7));
	
l949:	
	movf	(146)^080h,w	;volatile
	line	193
	
l951:	
;main.c: 193: if(tempKey1L)
	movf	((_tempKey1L)),w
	btfsc	status,2
	goto	u71
	goto	u70
u71:
	goto	l957
u70:
	line	195
	
l953:	
;main.c: 194: {
;main.c: 195: if(tempKey1L > (KEYDATAL + 10) && tempKey1H >= KEYDATAH)
	movf	(148)^080h,w	;volatile
	addlw	low(0Ah)
	movwf	(??_checkKey1TouchKey+0)+0
	movlw	high(0Ah)
	skipnc
	movlw	(high(0Ah)+1)&0ffh
	movwf	((??_checkKey1TouchKey+0)+0)+1
	movf	1+(??_checkKey1TouchKey+0)+0,w
	xorlw	80h
	movwf	(??_checkKey1TouchKey+2)+0
	movlw	80h
	subwf	(??_checkKey1TouchKey+2)+0,w
	skipz
	goto	u85
	movf	(_tempKey1L),w
	subwf	0+(??_checkKey1TouchKey+0)+0,w
u85:

	skipnc
	goto	u81
	goto	u80
u81:
	goto	l957
u80:
	
l955:	
;main.c: 196: {
;main.c: 197: key1Flag = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(149)^080h,w	;volatile
	line	202
	
l957:	
;main.c: 198: }
;main.c: 199: }
;main.c: 202: if(tempKey1H)
	movf	((_tempKey1H)),w
	btfsc	status,2
	goto	u91
	goto	u90
u91:
	goto	l971
u90:
	line	204
	
l959:	
;main.c: 203: {
;main.c: 204: if(tempKey1H > KEYDATAH)
	movf	(_tempKey1H),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(149)^080h,w	;volatile
	skipnc
	goto	u101
	goto	u100
u101:
	goto	l971
u100:
	line	206
	
l961:	
;main.c: 207: {
;main.c: 208: key1Flag = 1;
	movf	(149)^080h,w	;volatile
	addlw	low(01h)
	movwf	(??_checkKey1TouchKey+0)+0
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((??_checkKey1TouchKey+0)+0)+1
	movf	1+(??_checkKey1TouchKey+0)+0,w
	xorlw	80h
	movwf	(??_checkKey1TouchKey+2)+0
	movlw	80h
	subwf	(??_checkKey1TouchKey+2)+0,w
	skipz
	goto	u115
	movf	(_tempKey1H),w
	subwf	0+(??_checkKey1TouchKey+0)+0,w
u115:

	skipnc
	goto	u111
	goto	u110
u111:
	goto	l965
u110:
	goto	l971
	line	213
	
l965:	
;main.c: 214: {
;main.c: 215: key1Flag = 1;
	movf	(_tempKey1L),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(148)^080h,w	;volatile
	skipnc
	goto	u121
	goto	u120
u121:
	goto	l969
u120:
	goto	l971
	line	217
	
l969:	
;main.c: 218: {
;main.c: 219: key1Flag = 1;
	movf	(148)^080h,w	;volatile
	line	224
	
l971:	
;main.c: 220: }
;main.c: 221: }
;main.c: 222: }
;main.c: 223: }
;main.c: 224: tempKey1H = KEYDATAH;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(149)^080h,w	;volatile
	movwf	(_tempKey1H)
	line	225
;main.c: 225: tempKey1L = KEYDATAL;
	movf	(148)^080h,w	;volatile
	movwf	(_tempKey1L)
	line	228
	
l498:	
	return
	opt stack 0
GLOBAL	__end_of_checkKey1TouchKey
	__end_of_checkKey1TouchKey:
	signat	_checkKey1TouchKey,89
	global	_checkKey0TouchKey

;; *************** function _checkKey0TouchKey *****************
;; Defined at:
;;		line 142 in file "C:\SCMCU WorkSpace\touchKey\main.c"
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
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          3       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	142
global __ptext5
__ptext5:	;psect for function _checkKey0TouchKey
psect	text5
	file	"C:\SCMCU WorkSpace\touchKey\main.c"
	line	142
	global	__size_of_checkKey0TouchKey
	__size_of_checkKey0TouchKey	equ	__end_of_checkKey0TouchKey-_checkKey0TouchKey
	
_checkKey0TouchKey:	
;incstack = 0
	opt	stack 6
; Regs used in _checkKey0TouchKey: [wreg+status,2+status,0]
	line	144
	
l913:	
;main.c: 144: TRISB |= 0x03;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(134)^080h,f	;volatile
	line	145
	
l915:	
;main.c: 145: KEYCON1 = 0x00;
	clrf	(147)^080h	;volatile
	line	146
	
l917:	
;main.c: 146: KEYCON0 = 0x03;
	movlw	low(03h)
	movwf	(146)^080h	;volatile
	line	147
;main.c: 147: while(!(KEYCON0, 7));
	
l919:	
	movf	(146)^080h,w	;volatile
	line	149
	
l921:	
;main.c: 149: if(tempKey0L)
	movf	((_tempKey0L)),w
	btfsc	status,2
	goto	u11
	goto	u10
u11:
	goto	l927
u10:
	line	151
	
l923:	
;main.c: 150: {
;main.c: 151: if(tempKey0L > (KEYDATAL + 10) && tempKey0H >= KEYDATAH)
	movf	(148)^080h,w	;volatile
	addlw	low(0Ah)
	movwf	(??_checkKey0TouchKey+0)+0
	movlw	high(0Ah)
	skipnc
	movlw	(high(0Ah)+1)&0ffh
	movwf	((??_checkKey0TouchKey+0)+0)+1
	movf	1+(??_checkKey0TouchKey+0)+0,w
	xorlw	80h
	movwf	(??_checkKey0TouchKey+2)+0
	movlw	80h
	subwf	(??_checkKey0TouchKey+2)+0,w
	skipz
	goto	u25
	movf	(_tempKey0L),w
	subwf	0+(??_checkKey0TouchKey+0)+0,w
u25:

	skipnc
	goto	u21
	goto	u20
u21:
	goto	l927
u20:
	
l925:	
;main.c: 152: {
;main.c: 153: key0Flag = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(149)^080h,w	;volatile
	line	158
	
l927:	
;main.c: 154: }
;main.c: 155: }
;main.c: 158: if(tempKey0H)
	movf	((_tempKey0H)),w
	btfsc	status,2
	goto	u31
	goto	u30
u31:
	goto	l941
u30:
	line	160
	
l929:	
;main.c: 159: {
;main.c: 160: if(tempKey0H > KEYDATAH)
	movf	(_tempKey0H),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(149)^080h,w	;volatile
	skipnc
	goto	u41
	goto	u40
u41:
	goto	l941
u40:
	line	162
	
l931:	
;main.c: 163: {
;main.c: 164: key0Flag = 1;
	movf	(149)^080h,w	;volatile
	addlw	low(01h)
	movwf	(??_checkKey0TouchKey+0)+0
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((??_checkKey0TouchKey+0)+0)+1
	movf	1+(??_checkKey0TouchKey+0)+0,w
	xorlw	80h
	movwf	(??_checkKey0TouchKey+2)+0
	movlw	80h
	subwf	(??_checkKey0TouchKey+2)+0,w
	skipz
	goto	u55
	movf	(_tempKey0H),w
	subwf	0+(??_checkKey0TouchKey+0)+0,w
u55:

	skipnc
	goto	u51
	goto	u50
u51:
	goto	l935
u50:
	goto	l941
	line	169
	
l935:	
;main.c: 170: {
;main.c: 171: key0Flag = 1;
	movf	(_tempKey0L),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(148)^080h,w	;volatile
	skipnc
	goto	u61
	goto	u60
u61:
	goto	l939
u60:
	goto	l941
	line	173
	
l939:	
;main.c: 174: {
;main.c: 175: key0Flag = 1;
	movf	(148)^080h,w	;volatile
	line	180
	
l941:	
;main.c: 176: }
;main.c: 177: }
;main.c: 178: }
;main.c: 179: }
;main.c: 180: tempKey0H = KEYDATAH;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(149)^080h,w	;volatile
	movwf	(_tempKey0H)
	line	181
;main.c: 181: tempKey0L = KEYDATAL;
	movf	(148)^080h,w	;volatile
	movwf	(_tempKey0L)
	line	184
	
l483:	
	return
	opt stack 0
GLOBAL	__end_of_checkKey0TouchKey
	__end_of_checkKey0TouchKey:
	signat	_checkKey0TouchKey,89
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 252 in file "C:\SCMCU WorkSpace\touchKey\main.c"
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
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	252
global __ptext6
__ptext6:	;psect for function _Timer0_Isr
psect	text6
	file	"C:\SCMCU WorkSpace\touchKey\main.c"
	line	252
	global	__size_of_Timer0_Isr
	__size_of_Timer0_Isr	equ	__end_of_Timer0_Isr-_Timer0_Isr
	
_Timer0_Isr:	
;incstack = 0
	opt	stack 5
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
psect	text6
	line	254
	
i1l985:	
;main.c: 254: if(T0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u14_21
	goto	u14_20
u14_21:
	goto	i1l507
u14_20:
	line	257
	
i1l987:	
;main.c: 255: {
;main.c: 257: TMR0 += 99;
	movlw	low(063h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(1),f	;volatile
	line	258
	
i1l989:	
;main.c: 258: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	260
	
i1l991:	
;main.c: 260: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	263
	
i1l507:	
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
