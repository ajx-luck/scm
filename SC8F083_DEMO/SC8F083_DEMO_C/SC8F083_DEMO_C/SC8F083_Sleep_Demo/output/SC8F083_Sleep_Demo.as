opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F083
opt include "D:\触摸\SC芯片demo程序改写\SCMCU_IDE_V2.00.16_Beta2\SCMCU_IDE_V2.00.16_Beta2\data\include\sc8f083.cgen.inc"
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
	FNCALL	_main,_DelayXms
	FNCALL	_main,_Init_System
	FNCALL	_main,_Sleep_Mode
	FNCALL	_Sleep_Mode,_Init_System
	FNROOT	_main
	global	_PWMCON0
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_PWMCON0	set	21
	global	_OSCCON
_OSCCON	set	20
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
	global	_RB6
_RB6	set	54
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
	global	_WPUC
_WPUC	set	264
	global	_PORTC
_PORTC	set	262
	global	_TRISC
_TRISC	set	261
; #config settings
	file	"SC8F083_Sleep_Demo.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
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
?_Init_System:	; 1 bytes @ 0x0
??_Init_System:	; 1 bytes @ 0x0
?_Sleep_Mode:	; 1 bytes @ 0x0
??_Sleep_Mode:	; 1 bytes @ 0x0
?_DelayXms:	; 1 bytes @ 0x0
??_DelayXms:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	DelayXms@x
DelayXms@x:	; 1 bytes @ 0x0
	ds	1
	global	DelayXms@i
DelayXms@i:	; 1 bytes @ 0x1
	ds	1
	global	DelayXms@j
DelayXms@j:	; 1 bytes @ 0x2
	ds	1
??_main:	; 1 bytes @ 0x3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      3       3
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
;!    _main->_DelayXms
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
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
;! (0) _main                                                 0     0      0      75
;!                           _DelayXms
;!                        _Init_System
;!                         _Sleep_Mode
;! ---------------------------------------------------------------------------------
;! (1) _Sleep_Mode                                           0     0      0       0
;!                        _Init_System
;! ---------------------------------------------------------------------------------
;! (2) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _DelayXms                                             3     3      0      75
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _DelayXms
;!   _Init_System
;!   _Sleep_Mode
;!     _Init_System
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      3       3       1       21.4%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!BANK2               50      0       0       7        0.0%
;!ABS                  0      0       0       8        0.0%
;!DATA                 0      0       0       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 37 in file "D:\资料\RISC\073-083sleep\SC8F083_Sleep_Demo\SC8F083_Sleep_Demo.c"
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
;;		On exit  : 300/200
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayXms
;;		_Init_System
;;		_Sleep_Mode
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"D:\资料\RISC\073-083sleep\SC8F083_Sleep_Demo\SC8F083_Sleep_Demo.c"
	line	37
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\资料\RISC\073-083sleep\SC8F083_Sleep_Demo\SC8F083_Sleep_Demo.c"
	line	37
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	39
	
l1307:	
;SC8F083_Sleep_Demo.c: 39: Init_System();
	fcall	_Init_System
	line	42
	
l1309:	
;SC8F083_Sleep_Demo.c: 41: {
;SC8F083_Sleep_Demo.c: 42: RB6=1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7	;volatile
	line	43
;SC8F083_Sleep_Demo.c: 43: DelayXms(100);
	movlw	low(064h)
	fcall	_DelayXms
	line	44
	
l1311:	
;SC8F083_Sleep_Demo.c: 44: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7	;volatile
	line	45
;SC8F083_Sleep_Demo.c: 45: DelayXms(100);
	movlw	low(064h)
	fcall	_DelayXms
	line	46
	
l1313:	
;SC8F083_Sleep_Demo.c: 46: RB6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7	;volatile
	line	47
;SC8F083_Sleep_Demo.c: 47: DelayXms(100);
	movlw	low(064h)
	fcall	_DelayXms
	line	48
;SC8F083_Sleep_Demo.c: 48: Sleep_Mode();
	fcall	_Sleep_Mode
	goto	l1309
	global	start
	ljmp	start
	opt stack 0
	line	50
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Sleep_Mode

;; *************** function _Sleep_Mode *****************
;; Defined at:
;;		line 60 in file "D:\资料\RISC\073-083sleep\SC8F083_Sleep_Demo\SC8F083_Sleep_Demo.c"
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
;;		On exit  : 300/200
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
;;		_Init_System
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	60
global __ptext1
__ptext1:	;psect for function _Sleep_Mode
psect	text1
	file	"D:\资料\RISC\073-083sleep\SC8F083_Sleep_Demo\SC8F083_Sleep_Demo.c"
	line	60
	global	__size_of_Sleep_Mode
	__size_of_Sleep_Mode	equ	__end_of_Sleep_Mode-_Sleep_Mode
	
_Sleep_Mode:	
;incstack = 0
	opt	stack 6
; Regs used in _Sleep_Mode: [wreg+status,2+status,0+pclath+cstack]
	line	62
	
l1265:	
;SC8F083_Sleep_Demo.c: 62: INTCON = 0;
	clrf	(11)	;volatile
	line	64
;SC8F083_Sleep_Demo.c: 64: OPTION_REG = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	66
	
l1267:	
;SC8F083_Sleep_Demo.c: 66: TRISA = 0B00000001;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	67
	
l1269:	
;SC8F083_Sleep_Demo.c: 67: PORTA = 0B00000000;
	clrf	(134)^080h	;volatile
	line	68
;SC8F083_Sleep_Demo.c: 68: WPUA = 0B00000001;
	movlw	low(01h)
	movwf	(136)^080h	;volatile
	line	70
;SC8F083_Sleep_Demo.c: 70: TRISB = 0B00001000;
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	71
	
l1271:	
;SC8F083_Sleep_Demo.c: 71: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	72
	
l1273:	
;SC8F083_Sleep_Demo.c: 72: WPUB = 0B00001000;
	movlw	low(08h)
	movwf	(8)	;volatile
	line	74
;SC8F083_Sleep_Demo.c: 74: TRISC = 0B00000000;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	75
;SC8F083_Sleep_Demo.c: 75: PORTC = 0B00000000;
	clrf	(262)^0100h	;volatile
	line	77
;SC8F083_Sleep_Demo.c: 77: ADCON0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(149)^080h	;volatile
	line	78
;SC8F083_Sleep_Demo.c: 78: ADCON1 = 0;
	clrf	(150)^080h	;volatile
	line	80
;SC8F083_Sleep_Demo.c: 80: PWMCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(21)	;volatile
	line	82
	
l1275:	
;SC8F083_Sleep_Demo.c: 82: OSCCON = 0X70;
	movlw	low(070h)
	movwf	(20)	;volatile
	line	84
	
l1277:	
;SC8F083_Sleep_Demo.c: 84: IOCA = 0B00000001;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(137)^080h	;volatile
	line	85
	
l1279:	
;SC8F083_Sleep_Demo.c: 85: IOCB = 0B00001000;
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(9)	;volatile
	line	87
	
l1281:	
;SC8F083_Sleep_Demo.c: 87: RAIE = 1;
	bsf	(115/8),(115)&7	;volatile
	line	88
	
l1283:	
;SC8F083_Sleep_Demo.c: 88: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	89
	
l1285:	
;SC8F083_Sleep_Demo.c: 89: RBIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	90
	
l1287:	
;SC8F083_Sleep_Demo.c: 90: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	93
	
l1289:	
;SC8F083_Sleep_Demo.c: 93: PORTA;
	bsf	status, 5	;RP0=1, select bank1
	movf	(134)^080h,w	;volatile
	line	94
	
l1291:	
;SC8F083_Sleep_Demo.c: 94: RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(107/8),(107)&7	;volatile
	line	95
	
l1293:	
;SC8F083_Sleep_Demo.c: 95: PORTB;
	movf	(6),w	;volatile
	line	96
	
l1295:	
;SC8F083_Sleep_Demo.c: 96: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	97
# 97 "D:\资料\RISC\073-083sleep\SC8F083_Sleep_Demo\SC8F083_Sleep_Demo.c"
clrwdt ;# 
	line	99
# 99 "D:\资料\RISC\073-083sleep\SC8F083_Sleep_Demo\SC8F083_Sleep_Demo.c"
sleep ;# 
	line	101
# 101 "D:\资料\RISC\073-083sleep\SC8F083_Sleep_Demo\SC8F083_Sleep_Demo.c"
nop ;# 
	line	102
# 102 "D:\资料\RISC\073-083sleep\SC8F083_Sleep_Demo\SC8F083_Sleep_Demo.c"
clrwdt ;# 
psect	text1
	line	103
	
l1297:	
;SC8F083_Sleep_Demo.c: 103: if(RAIF) RAIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(107/8),(107)&7	;volatile
	goto	u31
	goto	u30
u31:
	goto	l844
u30:
	
l1299:	
	bcf	(107/8),(107)&7	;volatile
	
l844:	
	line	104
;SC8F083_Sleep_Demo.c: 104: if(RBIF) RBIF = 0;
	btfss	(88/8),(88)&7	;volatile
	goto	u41
	goto	u40
u41:
	goto	l1303
u40:
	
l1301:	
	bcf	(88/8),(88)&7	;volatile
	line	105
	
l1303:	
;SC8F083_Sleep_Demo.c: 105: PORTA ^= 0X08;
	movlw	low(08h)
	bsf	status, 5	;RP0=1, select bank1
	xorwf	(134)^080h,f	;volatile
	line	106
	
l1305:	
;SC8F083_Sleep_Demo.c: 106: Init_System();
	fcall	_Init_System
	line	107
	
l846:	
	return
	opt stack 0
GLOBAL	__end_of_Sleep_Mode
	__end_of_Sleep_Mode:
	signat	_Sleep_Mode,89
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 116 in file "D:\资料\RISC\073-083sleep\SC8F083_Sleep_Demo\SC8F083_Sleep_Demo.c"
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
;;		On exit  : 300/200
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
;;		_main
;;		_Sleep_Mode
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	116
global __ptext2
__ptext2:	;psect for function _Init_System
psect	text2
	file	"D:\资料\RISC\073-083sleep\SC8F083_Sleep_Demo\SC8F083_Sleep_Demo.c"
	line	116
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 6
; Regs used in _Init_System: [wreg+status,2]
	line	118
	
l1225:	
# 118 "D:\资料\RISC\073-083sleep\SC8F083_Sleep_Demo\SC8F083_Sleep_Demo.c"
nop ;# 
	line	119
# 119 "D:\资料\RISC\073-083sleep\SC8F083_Sleep_Demo\SC8F083_Sleep_Demo.c"
clrwdt ;# 
psect	text2
	line	120
	
l1227:	
;SC8F083_Sleep_Demo.c: 120: INTCON = 0;
	clrf	(11)	;volatile
	line	121
	
l1229:	
;SC8F083_Sleep_Demo.c: 121: OSCCON = 0X72;
	movlw	low(072h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	122
	
l1231:	
;SC8F083_Sleep_Demo.c: 122: OPTION_REG = 0;
	clrf	(1)	;volatile
	line	124
;SC8F083_Sleep_Demo.c: 124: WPUA = 0B00000001;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(136)^080h	;volatile
	line	125
;SC8F083_Sleep_Demo.c: 125: WPUB = 0B00001000;
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(8)	;volatile
	line	126
	
l1233:	
;SC8F083_Sleep_Demo.c: 126: WPUC = 0B00000000;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(264)^0100h	;volatile
	line	128
	
l1235:	
;SC8F083_Sleep_Demo.c: 128: TRISA = 0B00000001;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	129
	
l1237:	
;SC8F083_Sleep_Demo.c: 129: TRISB = 0B00001000;
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(5)	;volatile
	line	130
	
l1239:	
;SC8F083_Sleep_Demo.c: 130: TRISC = 0B00000000;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(261)^0100h	;volatile
	line	133
	
l1241:	
;SC8F083_Sleep_Demo.c: 133: PORTB = 0B00000000;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	134
	
l1243:	
;SC8F083_Sleep_Demo.c: 134: PORTC = 0B00000000;
	bsf	status, 6	;RP1=1, select bank2
	clrf	(262)^0100h	;volatile
	line	135
	
l849:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
	global	_DelayXms

;; *************** function _DelayXms *****************
;; Defined at:
;;		line 25 in file "D:\资料\RISC\073-083sleep\SC8F083_Sleep_Demo\SC8F083_Sleep_Demo.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    0[COMMON] unsigned char 
;;  j               1    2[COMMON] unsigned char 
;;  i               1    1[COMMON] unsigned char 
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
;;      Locals:         3       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	25
global __ptext3
__ptext3:	;psect for function _DelayXms
psect	text3
	file	"D:\资料\RISC\073-083sleep\SC8F083_Sleep_Demo\SC8F083_Sleep_Demo.c"
	line	25
	global	__size_of_DelayXms
	__size_of_DelayXms	equ	__end_of_DelayXms-_DelayXms
	
_DelayXms:	
;incstack = 0
	opt	stack 7
; Regs used in _DelayXms: [wreg+status,2+status,0]
;DelayXms@x stored from wreg
	movwf	(DelayXms@x)
	line	28
	
l1245:	
;SC8F083_Sleep_Demo.c: 27: unsigned char i,j;
;SC8F083_Sleep_Demo.c: 28: for(i=x;i>0;i--)
	movf	(DelayXms@x),w
	movwf	(DelayXms@i)
	
l1247:	
	movf	((DelayXms@i)),w
	btfss	status,2
	goto	u11
	goto	u10
u11:
	goto	l829
u10:
	goto	l833
	line	29
	
l829:	
	line	30
# 30 "D:\资料\RISC\073-083sleep\SC8F083_Sleep_Demo\SC8F083_Sleep_Demo.c"
clrwdt ;# 
psect	text3
	line	31
	
l1251:	
;SC8F083_Sleep_Demo.c: 31: for(j=153;j>0;j--);
	movlw	low(099h)
	movwf	(DelayXms@j)
	
l1257:	
	decf	(DelayXms@j),f
	
l1259:	
	movf	((DelayXms@j)),w
	btfss	status,2
	goto	u21
	goto	u20
u21:
	goto	l1257
u20:
	line	28
	
l1261:	
	decf	(DelayXms@i),f
	goto	l1247
	line	33
	
l833:	
	return
	opt stack 0
GLOBAL	__end_of_DelayXms
	__end_of_DelayXms:
	signat	_DelayXms,4217
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
