opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8P1153A
opt include "C:\工具\单片机学习资料\SC8P\SCMCU_IDE_V2.00.07\data\include\sc8p1153a.cgen.inc"
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
	FNCALL	_main,_InitSys
	FNCALL	_main,_chrgCtr
	FNCALL	_main,_gotoSleep
	FNCALL	_main,_keyCtr
	FNCALL	_main,_showRGB
	FNCALL	_main,_workCtr
	FNCALL	_workCtr,_rainbow
	FNCALL	_keyCtr,_keyRead
	FNROOT	_main
	FNCALL	intlevel1,_Timer0_Isr
	global	intlevel1
	FNROOT	intlevel1
	global	_sleepTime
	global	_chrgFullCount
	global	_chrgFlag
	global	_keyCount
	global	_ledCount
	global	_count1s
	global	_workTime
	global	_waitTime
	global	_workStep
	global	_delayTime
	global	_lastBlue
	global	_blue
	global	_lastGreen
	global	_green
	global	_lastRed
	global	_red
	global	_colorStep
	global	_intCount
	global	_IntFlag
	global	_TRISA
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_TRISA	set	24
	global	_PORTA
_PORTA	set	23
	global	_IOCB
_IOCB	set	14
	global	_WPUB
_WPUB	set	13
	global	_PDCONB
_PDCONB	set	11
	global	_INTCON
_INTCON	set	9
	global	_OSCCON
_OSCCON	set	8
	global	_OPTION_REG
_OPTION_REG	set	7
	global	_TRISB
_TRISB	set	6
	global	_PORTB
_PORTB	set	5
	global	_TMR0
_TMR0	set	1
	global	_RBIF
_RBIF	set	72
	global	_T0IF
_T0IF	set	74
	global	_RBIE
_RBIE	set	75
	global	_GIE
_GIE	set	79
; #config settings
	file	"Z302_1153A_SOP14_.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_sleepTime:
       ds      1

_chrgFullCount:
       ds      1

_chrgFlag:
       ds      1

_keyCount:
       ds      1

_ledCount:
       ds      1

_count1s:
       ds      1

_workTime:
       ds      1

_waitTime:
       ds      1

_workStep:
       ds      1

_delayTime:
       ds      1

_lastBlue:
       ds      1

_blue:
       ds      1

_lastGreen:
       ds      1

_green:
       ds      1

_lastRed:
       ds      1

_red:
       ds      1

_colorStep:
       ds      1

_intCount:
       ds      1

_IntFlag:
       ds      1

	file	"Z302_1153A_SOP14_.as"
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
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+013h)
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
??_InitSys:	; 1 bytes @ 0x0
??_showRGB:	; 1 bytes @ 0x0
??_chrgCtr:	; 1 bytes @ 0x0
??_keyCtr:	; 1 bytes @ 0x0
??_workCtr:	; 1 bytes @ 0x0
??_gotoSleep:	; 1 bytes @ 0x0
??_rainbow:	; 1 bytes @ 0x0
??_keyRead:	; 1 bytes @ 0x0
??_main:	; 1 bytes @ 0x0
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_InitSys:	; 1 bytes @ 0x0
?_showRGB:	; 1 bytes @ 0x0
?_chrgCtr:	; 1 bytes @ 0x0
?_keyCtr:	; 1 bytes @ 0x0
?_workCtr:	; 1 bytes @ 0x0
?_gotoSleep:	; 1 bytes @ 0x0
?_rainbow:	; 1 bytes @ 0x0
?_keyRead:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_Timer0_Isr:	; 1 bytes @ 0x0
??_Timer0_Isr:	; 1 bytes @ 0x0
	ds	2
	global	keyRead@KeyStatus
keyRead@KeyStatus:	; 1 bytes @ 0x2
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         19
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON            0      0       0
;!    BANK0            46      3      22

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _Timer0_Isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _keyCtr->_keyRead
;!
;!Critical Paths under _Timer0_Isr in BANK0
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
;! (0) _main                                                 0     0      0      22
;!                            _InitSys
;!                            _chrgCtr
;!                          _gotoSleep
;!                             _keyCtr
;!                            _showRGB
;!                            _workCtr
;! ---------------------------------------------------------------------------------
;! (1) _workCtr                                              0     0      0       0
;!                            _rainbow
;! ---------------------------------------------------------------------------------
;! (2) _rainbow                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _showRGB                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _keyCtr                                               0     0      0      22
;!                            _keyRead
;! ---------------------------------------------------------------------------------
;! (2) _keyRead                                              1     1      0      22
;!                                              2 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _gotoSleep                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _InitSys                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _Timer0_Isr                                           2     2      0       0
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _InitSys
;!   _chrgCtr
;!   _gotoSleep
;!   _keyCtr
;!     _keyRead
;!   _showRGB
;!   _workCtr
;!     _rainbow
;!
;! _Timer0_Isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            0      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               0      0       0       1        0.0%
;!STACK                0      0       0       2        0.0%
;!BANK0               2E      3      16       3       47.8%
;!ABS                  0      0      16       4        0.0%
;!BITBANK0            2E      0       0       5        0.0%
;!DATA                 0      0      16       6        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 36 in file "C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_InitSys
;;		_chrgCtr
;;		_gotoSleep
;;		_keyCtr
;;		_showRGB
;;		_workCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
	line	36
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
	line	36
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l1435:	
;main.c: 38: InitSys();
	fcall	_InitSys
	line	39
;main.c: 39: while(1)
	
l401:	
	line	41
# 41 "C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
clrwdt ;# 
psect	maintext
	line	42
	
l1437:	
;main.c: 42: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u921
	goto	u920
u921:
	goto	l1441
u920:
	line	44
	
l1439:	
;main.c: 43: {
;main.c: 44: showRGB();
	fcall	_showRGB
	line	46
	
l1441:	
;main.c: 45: }
;main.c: 46: if(!IntFlag)
	movf	((_IntFlag)),w
	btfss	status,2
	goto	u931
	goto	u930
u931:
	goto	l1445
u930:
	goto	l401
	line	48
	
l1445:	
;main.c: 48: IntFlag = 0;
	clrf	(_IntFlag)
	line	49
	
l1447:	
;main.c: 49: chrgCtr();
	fcall	_chrgCtr
	line	50
	
l1449:	
;main.c: 50: if(chrgFlag == 0)
	movf	((_chrgFlag)),w
	btfss	status,2
	goto	u941
	goto	u940
u941:
	goto	l405
u940:
	line	51
	
l1451:	
;main.c: 51: keyCtr();
	fcall	_keyCtr
	
l405:	
	line	52
;main.c: 52: workCtr();
	fcall	_workCtr
	line	53
	
l1453:	
;main.c: 53: if((0x10 & PORTB) == 0 && keyCount == 0 && workStep == 0)
	btfsc	(5),(4)&7	;volatile
	goto	u951
	goto	u950
u951:
	goto	l401
u950:
	
l1455:	
	movf	((_keyCount)),w
	btfss	status,2
	goto	u961
	goto	u960
u961:
	goto	l401
u960:
	
l1457:	
	movf	((_workStep)),w
	btfss	status,2
	goto	u971
	goto	u970
u971:
	goto	l401
u970:
	line	55
	
l1459:	
;main.c: 54: {
;main.c: 55: if(++sleepTime > 200)
	movlw	low(0C9h)
	incf	(_sleepTime),f
	subwf	((_sleepTime)),w
	skipc
	goto	u981
	goto	u980
u981:
	goto	l401
u980:
	line	57
	
l1461:	
;main.c: 56: {
;main.c: 57: sleepTime = 0;
	clrf	(_sleepTime)
	line	58
	
l1463:	
;main.c: 58: gotoSleep();
	fcall	_gotoSleep
	goto	l401
	global	start
	ljmp	start
	opt stack 0
	line	62
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_workCtr

;; *************** function _workCtr *****************
;; Defined at:
;;		line 135 in file "C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
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
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_rainbow
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	135
global __ptext1
__ptext1:	;psect for function _workCtr
psect	text1
	file	"C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
	line	135
	global	__size_of_workCtr
	__size_of_workCtr	equ	__end_of_workCtr-_workCtr
	
_workCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _workCtr: [wreg+status,2+status,0+pclath+cstack]
	line	137
	
l1379:	
;main.c: 137: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u861
	goto	u860
u861:
	goto	l1389
u860:
	line	139
	
l1381:	
;main.c: 138: {
;main.c: 139: PORTA |= 0x06;
	movlw	low(06h)
	iorwf	(23),f	;volatile
	line	140
	
l1383:	
;main.c: 140: rainbow();
	fcall	_rainbow
	line	141
	
l1385:	
;main.c: 141: if(workTime == 0)
	movf	((_workTime)),w
	btfss	status,2
	goto	u871
	goto	u870
u871:
	goto	l434
u870:
	line	143
	
l1387:	
;main.c: 142: {
;main.c: 143: workStep = 2;
	movlw	low(02h)
	movwf	(_workStep)
	goto	l434
	line	146
	
l1389:	
;main.c: 146: else if(workStep == 0)
	movf	((_workStep)),w
	btfss	status,2
	goto	u881
	goto	u880
u881:
	goto	l1399
u880:
	line	148
	
l1391:	
;main.c: 147: {
;main.c: 148: if(chrgFlag)
	movf	((_chrgFlag)),w
	btfsc	status,2
	goto	u891
	goto	u890
u891:
	goto	l1397
u890:
	line	150
	
l1393:	
;main.c: 149: {
;main.c: 150: PORTA &= 0x01;
	movlw	low(01h)
	andwf	(23),f	;volatile
	line	152
	
l1395:	
;main.c: 152: PORTB &= 0xFE;
	bcf	(5)+(0/8),(0)&7	;volatile
	line	153
;main.c: 153: }
	goto	l434
	line	156
	
l1397:	
;main.c: 154: else
;main.c: 155: {
;main.c: 156: PORTA = 0x00;
	clrf	(23)	;volatile
	line	157
;main.c: 157: PORTB = 0x00;
	clrf	(5)	;volatile
	goto	l434
	line	160
	
l1399:	
;main.c: 160: else if(workStep == 2)
		movlw	2
	xorwf	((_workStep)),w
	btfss	status,2
	goto	u901
	goto	u900
u901:
	goto	l434
u900:
	line	162
	
l1401:	
;main.c: 161: {
;main.c: 162: PORTB &= 0xF9;
	movlw	low(0F9h)
	andwf	(5),f	;volatile
	line	163
	
l1403:	
;main.c: 163: PORTA = 0x00;
	clrf	(23)	;volatile
	line	167
	
l1405:	
;main.c: 167: PORTB |= 0x41;
	movlw	low(041h)
	iorwf	(5),f	;volatile
	line	168
	
l1407:	
;main.c: 168: if(waitTime == 0)
	movf	((_waitTime)),w
	btfss	status,2
	goto	u911
	goto	u910
u911:
	goto	l434
u910:
	line	170
	
l1409:	
;main.c: 169: {
;main.c: 170: workStep = 0;
	clrf	(_workStep)
	line	173
	
l434:	
	return
	opt stack 0
GLOBAL	__end_of_workCtr
	__end_of_workCtr:
	signat	_workCtr,89
	global	_rainbow

;; *************** function _rainbow *****************
;; Defined at:
;;		line 276 in file "C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
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
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       0
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
	line	276
global __ptext2
__ptext2:	;psect for function _rainbow
psect	text2
	file	"C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
	line	276
	global	__size_of_rainbow
	__size_of_rainbow	equ	__end_of_rainbow-_rainbow
	
_rainbow:	
;incstack = 0
	opt	stack 5
; Regs used in _rainbow: [wreg+status,2+status,0]
	line	279
	
l1183:	
;main.c: 279: if(red > lastRed)
	movf	(_red),w
	subwf	(_lastRed),w
	skipnc
	goto	u531
	goto	u530
u531:
	goto	l1187
u530:
	line	280
	
l1185:	
;main.c: 280: red--;
	decf	(_red),f
	line	281
	
l1187:	
;main.c: 281: if(green > lastGreen)
	movf	(_green),w
	subwf	(_lastGreen),w
	skipnc
	goto	u541
	goto	u540
u541:
	goto	l1191
u540:
	line	282
	
l1189:	
;main.c: 282: green--;
	decf	(_green),f
	line	283
	
l1191:	
;main.c: 283: if(blue > lastBlue)
	movf	(_blue),w
	subwf	(_lastBlue),w
	skipnc
	goto	u551
	goto	u550
u551:
	goto	l1195
u550:
	line	284
	
l1193:	
;main.c: 284: blue--;
	decf	(_blue),f
	line	285
	
l1195:	
;main.c: 285: if(red < lastRed)
	movf	(_lastRed),w
	subwf	(_red),w
	skipnc
	goto	u561
	goto	u560
u561:
	goto	l1199
u560:
	line	286
	
l1197:	
;main.c: 286: red++;
	incf	(_red),f
	line	287
	
l1199:	
;main.c: 287: if(green < lastGreen)
	movf	(_lastGreen),w
	subwf	(_green),w
	skipnc
	goto	u571
	goto	u570
u571:
	goto	l1203
u570:
	line	288
	
l1201:	
;main.c: 288: green++;
	incf	(_green),f
	line	289
	
l1203:	
;main.c: 289: if(blue < lastBlue)
	movf	(_lastBlue),w
	subwf	(_blue),w
	skipnc
	goto	u581
	goto	u580
u581:
	goto	l1207
u580:
	line	290
	
l1205:	
;main.c: 290: blue++;
	incf	(_blue),f
	line	291
	
l1207:	
;main.c: 291: if(delayTime > 0)
	movf	((_delayTime)),w
	btfsc	status,2
	goto	u591
	goto	u590
u591:
	goto	l1213
u590:
	line	293
	
l1209:	
;main.c: 292: {
;main.c: 293: delayTime--;
	decf	(_delayTime),f
	goto	l470
	line	296
	
l1213:	
;main.c: 295: }
;main.c: 296: if(colorStep == 1)
		decf	((_colorStep)),w
	btfss	status,2
	goto	u601
	goto	u600
u601:
	goto	l1221
u600:
	line	298
	
l1215:	
;main.c: 297: {
;main.c: 298: lastRed = 255;
	movlw	low(0FFh)
	movwf	(_lastRed)
	line	299
	
l1217:	
;main.c: 299: lastGreen = 0;
	clrf	(_lastGreen)
	line	300
	
l1219:	
;main.c: 300: lastBlue = 0;
	clrf	(_lastBlue)
	line	302
;main.c: 302: }
	goto	l472
	line	303
	
l1221:	
;main.c: 303: else if(colorStep == 2)
		movlw	2
	xorwf	((_colorStep)),w
	btfss	status,2
	goto	u611
	goto	u610
u611:
	goto	l1227
u610:
	line	305
	
l1223:	
;main.c: 304: {
;main.c: 305: lastRed = 255;
	movlw	low(0FFh)
	movwf	(_lastRed)
	line	306
;main.c: 306: lastGreen = 255;
	movlw	low(0FFh)
	movwf	(_lastGreen)
	goto	l1219
	line	309
	
l1227:	
;main.c: 309: else if(colorStep == 3)
		movlw	3
	xorwf	((_colorStep)),w
	btfss	status,2
	goto	u621
	goto	u620
u621:
	goto	l1235
u620:
	line	311
	
l1229:	
;main.c: 310: {
;main.c: 311: lastRed = 0;
	clrf	(_lastRed)
	line	312
	
l1231:	
;main.c: 312: lastGreen = 255;
	movlw	low(0FFh)
	movwf	(_lastGreen)
	goto	l1219
	line	315
	
l1235:	
;main.c: 315: else if(colorStep == 4)
		movlw	4
	xorwf	((_colorStep)),w
	btfss	status,2
	goto	u631
	goto	u630
u631:
	goto	l1241
u630:
	line	317
	
l1237:	
;main.c: 316: {
;main.c: 317: lastRed = 0;
	clrf	(_lastRed)
	line	318
;main.c: 318: lastGreen = 0;
	clrf	(_lastGreen)
	line	319
	
l1239:	
;main.c: 319: lastBlue = 255;
	movlw	low(0FFh)
	movwf	(_lastBlue)
	line	320
;main.c: 320: }
	goto	l472
	line	321
	
l1241:	
;main.c: 321: else if(colorStep == 5)
		movlw	5
	xorwf	((_colorStep)),w
	btfss	status,2
	goto	u641
	goto	u640
u641:
	goto	l1249
u640:
	line	323
	
l1243:	
;main.c: 322: {
;main.c: 323: lastRed = 255;
	movlw	low(0FFh)
	movwf	(_lastRed)
	line	324
	
l1245:	
;main.c: 324: lastGreen = 0;
	clrf	(_lastGreen)
	goto	l1239
	line	327
	
l1249:	
;main.c: 327: else if(colorStep == 6)
		movlw	6
	xorwf	((_colorStep)),w
	btfss	status,2
	goto	u651
	goto	u650
u651:
	goto	l1257
u650:
	goto	l1215
	line	333
	
l1257:	
;main.c: 333: else if(colorStep == 7)
		movlw	7
	xorwf	((_colorStep)),w
	btfss	status,2
	goto	u661
	goto	u660
u661:
	goto	l1263
u660:
	goto	l1223
	line	339
	
l1263:	
;main.c: 339: else if(colorStep == 8)
		movlw	8
	xorwf	((_colorStep)),w
	btfss	status,2
	goto	u671
	goto	u670
u671:
	goto	l480
u670:
	goto	l1229
	line	347
	
l480:	
	
l472:	
;main.c: 344: }
;main.c: 347: if(red == lastRed && blue == lastBlue && green == lastGreen)
	movf	(_red),w
	xorwf	(_lastRed),w
	skipz
	goto	u681
	goto	u680
u681:
	goto	l470
u680:
	
l1271:	
	movf	(_blue),w
	xorwf	(_lastBlue),w
	skipz
	goto	u691
	goto	u690
u691:
	goto	l470
u690:
	
l1273:	
	movf	(_green),w
	xorwf	(_lastGreen),w
	skipz
	goto	u701
	goto	u700
u701:
	goto	l470
u700:
	line	349
	
l1275:	
;main.c: 348: {
;main.c: 349: if(++colorStep > 8)
	movlw	low(09h)
	incf	(_colorStep),f
	subwf	((_colorStep)),w
	skipc
	goto	u711
	goto	u710
u711:
	goto	l1279
u710:
	line	351
	
l1277:	
;main.c: 350: {
;main.c: 351: colorStep = 4;
	movlw	low(04h)
	movwf	(_colorStep)
	line	353
	
l1279:	
;main.c: 352: }
;main.c: 353: if(delayTime == 0)
	movf	((_delayTime)),w
	btfss	status,2
	goto	u721
	goto	u720
u721:
	goto	l470
u720:
	line	354
	
l1281:	
;main.c: 354: delayTime = 90;
	movlw	low(05Ah)
	movwf	(_delayTime)
	line	356
	
l470:	
	return
	opt stack 0
GLOBAL	__end_of_rainbow
	__end_of_rainbow:
	signat	_rainbow,89
	global	_showRGB

;; *************** function _showRGB *****************
;; Defined at:
;;		line 176 in file "C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
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
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	176
global __ptext3
__ptext3:	;psect for function _showRGB
psect	text3
	file	"C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
	line	176
	global	__size_of_showRGB
	__size_of_showRGB	equ	__end_of_showRGB-_showRGB
	
_showRGB:	
;incstack = 0
	opt	stack 6
; Regs used in _showRGB: [wreg+status,2+status,0]
	line	179
	
l1323:	
;main.c: 179: if(blue > ledCount)
	movf	(_blue),w
	subwf	(_ledCount),w
	skipnc
	goto	u761
	goto	u760
u761:
	goto	l1327
u760:
	line	181
	
l1325:	
;main.c: 180: {
;main.c: 181: PORTB |= 0x41;
	movlw	low(041h)
	iorwf	(5),f	;volatile
	line	182
;main.c: 182: }
	goto	l1329
	line	185
	
l1327:	
;main.c: 183: else
;main.c: 184: {
;main.c: 185: PORTB &= 0xBE;
	movlw	low(0BEh)
	andwf	(5),f	;volatile
	line	188
	
l1329:	
;main.c: 186: }
;main.c: 188: if(red > ledCount)
	movf	(_red),w
	subwf	(_ledCount),w
	skipnc
	goto	u771
	goto	u770
u771:
	goto	l439
u770:
	line	190
	
l1331:	
;main.c: 189: {
;main.c: 190: PORTA |= 0x01;
	bsf	(23)+(0/8),(0)&7	;volatile
	line	191
;main.c: 191: PORTB |= 0x04;
	bsf	(5)+(2/8),(2)&7	;volatile
	line	192
;main.c: 192: }
	goto	l1333
	line	193
	
l439:	
	line	195
;main.c: 193: else
;main.c: 194: {
;main.c: 195: PORTA &= 0xFE;
	bcf	(23)+(0/8),(0)&7	;volatile
	line	196
;main.c: 196: PORTB &= 0xFB;
	bcf	(5)+(2/8),(2)&7	;volatile
	line	199
	
l1333:	
;main.c: 197: }
;main.c: 199: if(green > ledCount)
	movf	(_green),w
	subwf	(_ledCount),w
	skipnc
	goto	u781
	goto	u780
u781:
	goto	l1337
u780:
	line	201
	
l1335:	
;main.c: 200: {
;main.c: 201: PORTB |= 0x82;
	movlw	low(082h)
	iorwf	(5),f	;volatile
	line	202
;main.c: 202: }
	goto	l442
	line	205
	
l1337:	
;main.c: 203: else
;main.c: 204: {
;main.c: 205: PORTB &= 0x7D;
	movlw	low(07Dh)
	andwf	(5),f	;volatile
	line	206
	
l442:	
	line	207
;main.c: 206: }
;main.c: 207: if(++ledCount > 254)
	incf	(_ledCount),f
		incf	(((_ledCount))),w
	btfss	status,2
	goto	u791
	goto	u790
u791:
	goto	l444
u790:
	line	208
	
l1339:	
;main.c: 208: ledCount = 0;
	clrf	(_ledCount)
	line	209
	
l444:	
	return
	opt stack 0
GLOBAL	__end_of_showRGB
	__end_of_showRGB:
	signat	_showRGB,89
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 234 in file "C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
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
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_keyRead
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	234
global __ptext4
__ptext4:	;psect for function _keyCtr
psect	text4
	file	"C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
	line	234
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	236
	
l1369:	
;main.c: 236: PORTB;
	movf	(5),w	;volatile
	line	237
	
l1371:	
;main.c: 237: if(keyRead(0x08 & (~PORTB)))
	comf	(5),w	;volatile
	andlw	08h
	fcall	_keyRead
	xorlw	0
	skipnz
	goto	u841
	goto	u840
u841:
	goto	l453
u840:
	line	239
	
l1373:	
;main.c: 238: {
;main.c: 239: if(workStep == 1)
		decf	((_workStep)),w
	btfss	status,2
	goto	u851
	goto	u850
u851:
	goto	l451
u850:
	line	241
	
l1375:	
;main.c: 240: {
;main.c: 241: workStep = 2;
	movlw	low(02h)
	movwf	(_workStep)
	line	242
;main.c: 242: waitTime = 30;
	movlw	low(01Eh)
	movwf	(_waitTime)
	line	243
;main.c: 243: }
	goto	l453
	line	244
	
l451:	
	line	246
;main.c: 244: else
;main.c: 245: {
;main.c: 246: workStep = 1;
	clrf	(_workStep)
	incf	(_workStep),f
	line	247
;main.c: 247: colorStep = 1;
	clrf	(_colorStep)
	incf	(_colorStep),f
	line	248
	
l1377:	
;main.c: 248: workTime = 120;
	movlw	low(078h)
	movwf	(_workTime)
	line	251
	
l453:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 253 in file "C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
;; Parameters:    Size  Location     Type
;;  KeyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  KeyStatus       1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       1
;;      Temps:          0       0
;;      Totals:         0       1
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	253
global __ptext5
__ptext5:	;psect for function _keyRead
psect	text5
	file	"C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
	line	253
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 5
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@KeyStatus stored from wreg
	movwf	(keyRead@KeyStatus)
	line	255
	
l1283:	
;main.c: 255: if (KeyStatus)
	movf	((keyRead@KeyStatus)),w
	btfsc	status,2
	goto	u731
	goto	u730
u731:
	goto	l1289
u730:
	line	257
	
l1285:	
;main.c: 256: {
;main.c: 257: if(++keyCount >= 150)
	movlw	low(096h)
	incf	(_keyCount),f
	subwf	((_keyCount)),w
	skipc
	goto	u741
	goto	u740
u741:
	goto	l1299
u740:
	line	259
	
l1287:	
;main.c: 258: {
;main.c: 259: keyCount = 150;
	movlw	low(096h)
	movwf	(_keyCount)
	goto	l1299
	line	264
	
l1289:	
;main.c: 262: else
;main.c: 263: {
;main.c: 264: if(keyCount >= 5)
	movlw	low(05h)
	subwf	(_keyCount),w
	skipc
	goto	u751
	goto	u750
u751:
	goto	l1297
u750:
	line	266
	
l1291:	
;main.c: 265: {
;main.c: 266: keyCount = 0;
	clrf	(_keyCount)
	line	267
	
l1293:	
;main.c: 267: return 1;
	movlw	low(01h)
	goto	l460
	line	269
	
l1297:	
;main.c: 268: }
;main.c: 269: keyCount = 0;
	clrf	(_keyCount)
	line	271
	
l1299:	
;main.c: 270: }
;main.c: 271: return 0;
	movlw	low(0)
	line	272
	
l460:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_gotoSleep

;; *************** function _gotoSleep *****************
;; Defined at:
;;		line 65 in file "C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	65
global __ptext6
__ptext6:	;psect for function _gotoSleep
psect	text6
	file	"C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
	line	65
	global	__size_of_gotoSleep
	__size_of_gotoSleep	equ	__end_of_gotoSleep-_gotoSleep
	
_gotoSleep:	
;incstack = 0
	opt	stack 6
; Regs used in _gotoSleep: [wreg+status,2]
	line	67
	
l1411:	
;main.c: 67: sleepTime = 0;
	clrf	(_sleepTime)
	line	68
	
l1413:	
;main.c: 68: RBIE = 1;
	bsf	(75/8),(75)&7	;volatile
	line	69
	
l1415:	
;main.c: 69: GIE = 0;
	bcf	(79/8),(79)&7	;volatile
	line	71
	
l1417:	
;main.c: 71: IOCB = 0x18;
	movlw	low(018h)
	movwf	(14)	;volatile
	line	72
	
l1419:	
;main.c: 72: OSCCON = 0X71;
	movlw	low(071h)
	movwf	(8)	;volatile
	line	73
	
l1421:	
;main.c: 73: PORTA;
	movf	(23),w	;volatile
	line	74
	
l1423:	
;main.c: 74: PORTB;
	movf	(5),w	;volatile
	line	76
# 76 "C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
clrwdt ;# 
	line	78
# 78 "C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
sleep ;# 
	line	80
# 80 "C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
nop ;# 
psect	text6
	line	81
	
l1425:	
;main.c: 81: OSCCON = 0X81;
	movlw	low(081h)
	movwf	(8)	;volatile
	line	82
	
l1427:	
;main.c: 82: PORTA;
	movf	(23),w	;volatile
	line	83
	
l1429:	
;main.c: 83: PORTB;
	movf	(5),w	;volatile
	line	84
	
l1431:	
;main.c: 84: IOCB = 0x00;
	clrf	(14)	;volatile
	line	85
	
l1433:	
;main.c: 85: RBIE = 0;
	bcf	(75/8),(75)&7	;volatile
	line	86
	
l412:	
	return
	opt stack 0
GLOBAL	__end_of_gotoSleep
	__end_of_gotoSleep:
	signat	_gotoSleep,89
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 89 in file "C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
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
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	89
global __ptext7
__ptext7:	;psect for function _chrgCtr
psect	text7
	file	"C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
	line	89
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 6
; Regs used in _chrgCtr: [wreg+status,2+status,0]
	line	91
	
l1341:	
;main.c: 91: if(0x10 & PORTB)
	btfss	(5),(4)&7	;volatile
	goto	u801
	goto	u800
u801:
	goto	l1367
u800:
	line	94
	
l1343:	
;main.c: 92: {
;main.c: 94: workStep = 0;
	clrf	(_workStep)
	line	95
;main.c: 95: waitTime = 0;
	clrf	(_waitTime)
	line	96
;main.c: 96: workTime = 0;
	clrf	(_workTime)
	line	97
	
l1345:	
;main.c: 97: chrgFlag = 1;
	clrf	(_chrgFlag)
	incf	(_chrgFlag),f
	line	98
	
l1347:	
;main.c: 98: if(0x20 & PORTB)
	btfss	(5),(5)&7	;volatile
	goto	u811
	goto	u810
u811:
	goto	l1359
u810:
	line	101
	
l1349:	
;main.c: 99: {
;main.c: 101: if(++chrgFullCount > 200)
	movlw	low(0C9h)
	incf	(_chrgFullCount),f
	subwf	((_chrgFullCount)),w
	skipc
	goto	u821
	goto	u820
u821:
	goto	l422
u820:
	line	103
	
l1351:	
;main.c: 102: {
;main.c: 103: chrgFullCount = 200;
	movlw	low(0C8h)
	movwf	(_chrgFullCount)
	line	105
	
l1353:	
;main.c: 105: PORTA &= 0xFE;
	bcf	(23)+(0/8),(0)&7	;volatile
	line	106
	
l1355:	
;main.c: 106: PORTB &= 0xFB;
	bcf	(5)+(2/8),(2)&7	;volatile
	line	108
	
l1357:	
;main.c: 108: PORTB |= 0x82;
	movlw	low(082h)
	iorwf	(5),f	;volatile
	goto	l422
	line	113
	
l1359:	
;main.c: 111: else
;main.c: 112: {
;main.c: 113: chrgFullCount = 0;
	clrf	(_chrgFullCount)
	line	115
	
l1361:	
;main.c: 115: PORTB &= 0x79;
	movlw	low(079h)
	andwf	(5),f	;volatile
	line	116
	
l1363:	
;main.c: 116: if(count1s < 50)
	movlw	low(032h)
	subwf	(_count1s),w
	skipnc
	goto	u831
	goto	u830
u831:
	goto	l419
u830:
	line	118
	
l1365:	
;main.c: 117: {
;main.c: 118: PORTA |= 0x01;
	bsf	(23)+(0/8),(0)&7	;volatile
	line	119
;main.c: 119: PORTB |= 0x04;
	bsf	(5)+(2/8),(2)&7	;volatile
	line	120
;main.c: 120: }
	goto	l422
	line	121
	
l419:	
	line	123
;main.c: 121: else
;main.c: 122: {
;main.c: 123: PORTA &= 0xFE;
	bcf	(23)+(0/8),(0)&7	;volatile
	line	124
;main.c: 124: PORTB &= 0xFB;
	bcf	(5)+(2/8),(2)&7	;volatile
	goto	l422
	line	130
	
l1367:	
;main.c: 128: else
;main.c: 129: {
;main.c: 130: chrgFlag = 0;
	clrf	(_chrgFlag)
	line	132
	
l422:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_InitSys

;; *************** function _InitSys *****************
;; Defined at:
;;		line 213 in file "C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	213
global __ptext8
__ptext8:	;psect for function _InitSys
psect	text8
	file	"C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
	line	213
	global	__size_of_InitSys
	__size_of_InitSys	equ	__end_of_InitSys-_InitSys
	
_InitSys:	
;incstack = 0
	opt	stack 6
; Regs used in _InitSys: [wreg+status,2]
	line	215
	
l1303:	
# 215 "C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
nop ;# 
	line	216
# 216 "C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
clrwdt ;# 
psect	text8
	line	217
	
l1305:	
;main.c: 217: PORTA = 0x01;
	movlw	low(01h)
	movwf	(23)	;volatile
	line	218
;main.c: 218: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(5)	;volatile
	line	219
	
l1307:	
;main.c: 219: INTCON = 0;
	clrf	(9)	;volatile
	line	220
	
l1309:	
;main.c: 220: OSCCON = 0X71;
	movlw	low(071h)
	movwf	(8)	;volatile
	line	221
;main.c: 221: OPTION_REG = 0x00;
	clrf	(7)	;volatile
	line	222
	
l1311:	
;main.c: 222: TMR0 = 155;
	movlw	low(09Bh)
	movwf	(1)	;volatile
	line	223
	
l1313:	
;main.c: 223: INTCON = 0xE0;
	movlw	low(0E0h)
	movwf	(9)	;volatile
	line	224
;main.c: 224: TRISA = 0x00;
	clrf	(24)	;volatile
	line	225
	
l1315:	
;main.c: 225: TRISB = 0x38;
	movlw	low(038h)
	movwf	(6)	;volatile
	line	226
	
l1317:	
;main.c: 226: PORTA = 0x01;
	movlw	low(01h)
	movwf	(23)	;volatile
	line	227
	
l1319:	
;main.c: 227: PORTB = 0xFF;
	movlw	low(0FFh)
	movwf	(5)	;volatile
	line	228
	
l1321:	
;main.c: 228: PDCONB = 0x00;
	clrf	(11)	;volatile
	line	229
;main.c: 229: WPUB = 0x28;
	movlw	low(028h)
	movwf	(13)	;volatile
	line	232
	
l447:	
	return
	opt stack 0
GLOBAL	__end_of_InitSys
	__end_of_InitSys:
	signat	_InitSys,89
	global	_Timer0_Isr

;; *************** function _Timer0_Isr *****************
;; Defined at:
;;		line 365 in file "C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
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
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       2
;;      Totals:         0       2
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	365
global __ptext9
__ptext9:	;psect for function _Timer0_Isr
psect	text9
	file	"C:\mcuproject\scm\xfx\Z302_1153A_SOP14_低有效\main.c"
	line	365
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
psect	text9
	line	366
	
i1l1157:	
;main.c: 366: if (T0IF) {
	btfss	(74/8),(74)&7	;volatile
	goto	u47_21
	goto	u47_20
u47_21:
	goto	i1l1179
u47_20:
	line	368
	
i1l1159:	
;main.c: 368: TMR0 += 155;
	movlw	low(09Bh)
	addwf	(1),f	;volatile
	line	371
	
i1l1161:	
;main.c: 371: T0IF = 0;
	bcf	(74/8),(74)&7	;volatile
	line	372
;main.c: 372: if(++intCount >= 100)
	movlw	low(064h)
	incf	(_intCount),f
	subwf	((_intCount)),w
	skipc
	goto	u48_21
	goto	u48_20
u48_21:
	goto	i1l1179
u48_20:
	line	374
	
i1l1163:	
;main.c: 373: {
;main.c: 374: IntFlag = 1;
	clrf	(_IntFlag)
	incf	(_IntFlag),f
	line	375
	
i1l1165:	
;main.c: 375: intCount = 0;
	clrf	(_intCount)
	line	376
	
i1l1167:	
;main.c: 376: if(++count1s >= 100)
	movlw	low(064h)
	incf	(_count1s),f
	subwf	((_count1s)),w
	skipc
	goto	u49_21
	goto	u49_20
u49_21:
	goto	i1l1179
u49_20:
	line	378
	
i1l1169:	
;main.c: 377: {
;main.c: 378: count1s = 0;
	clrf	(_count1s)
	line	379
	
i1l1171:	
;main.c: 379: if(workTime > 0)
	movf	((_workTime)),w
	btfsc	status,2
	goto	u50_21
	goto	u50_20
u50_21:
	goto	i1l1175
u50_20:
	line	380
	
i1l1173:	
;main.c: 380: workTime--;
	decf	(_workTime),f
	line	381
	
i1l1175:	
;main.c: 381: if(waitTime > 0)
	movf	((_waitTime)),w
	btfsc	status,2
	goto	u51_21
	goto	u51_20
u51_21:
	goto	i1l494
u51_20:
	line	382
	
i1l1177:	
;main.c: 382: waitTime--;
	decf	(_waitTime),f
	goto	i1l1179
	line	384
	
i1l494:	
	line	388
	
i1l1179:	
;main.c: 383: }
;main.c: 384: }
;main.c: 386: }
;main.c: 388: if (RBIF) {
	btfss	(72/8),(72)&7	;volatile
	goto	u52_21
	goto	u52_20
u52_21:
	goto	i1l499
u52_20:
	line	389
	
i1l1181:	
;main.c: 389: RBIF = 0;
	bcf	(72/8),(72)&7	;volatile
	line	391
	
i1l499:	
	movf	(??_Timer0_Isr+1),w
	movwf	pclath
	swapf	(??_Timer0_Isr+0)^00h,w
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
	btemp set 04Eh

	DABS	1,78,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
