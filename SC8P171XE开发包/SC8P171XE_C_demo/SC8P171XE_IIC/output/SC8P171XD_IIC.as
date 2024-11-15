opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	SC8P1712D
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
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_I2C_WriteStart
	FNCALL	_main,_I2C_Write1Byte
	FNCALL	_main,_I2C_WriteStop
	FNCALL	_main,_I2C_Read1Byte
	FNCALL	_I2C_Read1Byte,_I2C_WaitMoment
	FNCALL	_I2C_WriteStop,_I2C_WaitMoment
	FNCALL	_I2C_Write1Byte,_I2C_WaitMoment
	FNCALL	_I2C_WriteStart,_I2C_WaitMoment
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_Sendbuffer
	global	_Recebuffer
	global	ISR@tcount
	global	_B_MainLoop
	global	_INTCON
psect	text230,local,class=CODE,delta=2
global __ptext230
__ptext230:
_INTCON	set	11
	global	_PIR1
_PIR1	set	12
	global	_PORTB
_PORTB	set	6
	global	_T2CON
_T2CON	set	18
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_TMR2IF
_TMR2IF	set	97
	global	_OSCCON
_OSCCON	set	143
	global	_PIE1
_PIE1	set	140
	global	_PR2
_PR2	set	146
	global	_TRISB
_TRISB	set	134
	global	_TMR2IE
_TMR2IE	set	1121
	global	_TRISA0
_TRISA0	set	1064
	global	_TRISA1
_TRISA1	set	1065
	file	"SC8P171XD_IIC.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_B_MainLoop:
       ds      1

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_Recebuffer:
       ds      5

ISR@tcount:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_Sendbuffer:
       ds      5

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_I2C_WriteStart
?_I2C_WriteStart:	; 0 bytes @ 0x0
	global	?_I2C_WriteStop
?_I2C_WriteStop:	; 0 bytes @ 0x0
	global	?_I2C_WaitMoment
?_I2C_WaitMoment:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_I2C_Write1Byte
?_I2C_Write1Byte:	; 1 bytes @ 0x0
	global	?_I2C_Read1Byte
?_I2C_Read1Byte:	; 1 bytes @ 0x0
	ds	2
	global	??_I2C_WriteStart
??_I2C_WriteStart:	; 0 bytes @ 0x2
	global	??_I2C_Write1Byte
??_I2C_Write1Byte:	; 0 bytes @ 0x2
	global	??_I2C_WriteStop
??_I2C_WriteStop:	; 0 bytes @ 0x2
	global	??_I2C_Read1Byte
??_I2C_Read1Byte:	; 0 bytes @ 0x2
	global	??_I2C_WaitMoment
??_I2C_WaitMoment:	; 0 bytes @ 0x2
	global	I2C_Write1Byte@data
I2C_Write1Byte@data:	; 1 bytes @ 0x2
	global	I2C_Read1Byte@ack
I2C_Read1Byte@ack:	; 1 bytes @ 0x2
	ds	1
	global	I2C_Write1Byte@i
I2C_Write1Byte@i:	; 1 bytes @ 0x3
	global	I2C_Read1Byte@data
I2C_Read1Byte@data:	; 1 bytes @ 0x3
	ds	1
	global	I2C_Read1Byte@i
I2C_Read1Byte@i:	; 1 bytes @ 0x4
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@time1s
main@time1s:	; 1 bytes @ 0x0
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 11, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5      12
;; BANK0           80      1       6
;; BANK1           80      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_I2C_Read1Byte
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK1
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0     254
;;                                              0 BANK0      1     1      0
;;                     _I2C_WriteStart
;;                     _I2C_Write1Byte
;;                      _I2C_WriteStop
;;                      _I2C_Read1Byte
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Read1Byte                                        3     3      0     142
;;                                              2 COMMON     3     3      0
;;                     _I2C_WaitMoment
;; ---------------------------------------------------------------------------------
;; (1) _I2C_WriteStop                                        0     0      0       0
;;                     _I2C_WaitMoment
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Write1Byte                                       2     2      0      78
;;                                              2 COMMON     2     2      0
;;                     _I2C_WaitMoment
;; ---------------------------------------------------------------------------------
;; (1) _I2C_WriteStart                                       0     0      0       0
;;                     _I2C_WaitMoment
;; ---------------------------------------------------------------------------------
;; (2) _I2C_WaitMoment                                       0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (3) _ISR                                                  2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _I2C_WriteStart
;;     _I2C_WaitMoment
;;   _I2C_Write1Byte
;;     _I2C_WaitMoment
;;   _I2C_WriteStop
;;     _I2C_WaitMoment
;;   _I2C_Read1Byte
;;     _I2C_WaitMoment
;;
;; _ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       1       0        7.1%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      5       C       1       85.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;BITBANK0            50      0       0       3        0.0%
;;BANK0               50      1       6       4        7.5%
;;BITBANK1            50      0       0       5        0.0%
;;BANK1               50      0       0       6        0.0%
;;ABS                  0      0      12       7        0.0%
;;DATA                 0      0      14       8        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 31 in file "F:\TEST_CODE\SC8P171XD_C\SC8P171XD_IIC\SC8P171XD_IIC_Soft_Master.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  time1s          1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       1       0
;;      Temps:          0       0       0
;;      Totals:         0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_I2C_WriteStart
;;		_I2C_Write1Byte
;;		_I2C_WriteStop
;;		_I2C_Read1Byte
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\TEST_CODE\SC8P171XD_C\SC8P171XD_IIC\SC8P171XD_IIC_Soft_Master.c"
	line	31
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l1233:	
;SC8P171XD_IIC_Soft_Master.c: 32: _nop();
	nop
	line	33
# 33 "F:\TEST_CODE\SC8P171XD_C\SC8P171XD_IIC\SC8P171XD_IIC_Soft_Master.c"
clrwdt ;#
psect	maintext
	line	34
	
l1235:	
;SC8P171XD_IIC_Soft_Master.c: 34: OSCCON = 0x70;
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(143)^080h	;volatile
	line	36
	
l1237:	
;SC8P171XD_IIC_Soft_Master.c: 36: INTCON = 0;
	clrf	(11)	;volatile
	line	37
	
l1239:	
;SC8P171XD_IIC_Soft_Master.c: 37: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	38
	
l1241:	
;SC8P171XD_IIC_Soft_Master.c: 38: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	40
	
l1243:	
;SC8P171XD_IIC_Soft_Master.c: 40: PIR1 = 0;
	clrf	(12)	;volatile
	line	41
	
l1245:	
;SC8P171XD_IIC_Soft_Master.c: 41: PIE1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(140)^080h	;volatile
	line	44
	
l1247:	
;SC8P171XD_IIC_Soft_Master.c: 44: PR2 = 250;
	movlw	(0FAh)
	movwf	(146)^080h	;volatile
	line	45
	
l1249:	
;SC8P171XD_IIC_Soft_Master.c: 45: T2CON = 4;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	46
	
l1251:	
;SC8P171XD_IIC_Soft_Master.c: 46: TMR2IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1121/8)^080h,(1121)&7
	line	48
	
l1253:	
;SC8P171XD_IIC_Soft_Master.c: 48: INTCON = 0XC0;
	movlw	(0C0h)
	movwf	(11)	;volatile
	line	54
	
l1255:	
;SC8P171XD_IIC_Soft_Master.c: 53: {
;SC8P171XD_IIC_Soft_Master.c: 54: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7
	goto	u281
	goto	u280
u281:
	goto	l1255
u280:
	line	56
	
l1257:	
;SC8P171XD_IIC_Soft_Master.c: 55: {
;SC8P171XD_IIC_Soft_Master.c: 56: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7
	line	57
# 57 "F:\TEST_CODE\SC8P171XD_C\SC8P171XD_IIC\SC8P171XD_IIC_Soft_Master.c"
clrwdt ;#
psect	maintext
	line	59
	
l1259:	
;SC8P171XD_IIC_Soft_Master.c: 59: if(++time1s >= 200)
	movlw	(0C8h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(main@time1s),f
	subwf	((main@time1s)),w
	skipc
	goto	u291
	goto	u290
u291:
	goto	l1255
u290:
	line	61
	
l1261:	
;SC8P171XD_IIC_Soft_Master.c: 60: {
;SC8P171XD_IIC_Soft_Master.c: 61: time1s = 0;
	clrf	(main@time1s)
	line	62
	
l1263:	
;SC8P171XD_IIC_Soft_Master.c: 62: Sendbuffer[0]++;
	incf	(_Sendbuffer),f	;volatile
	line	65
	
l1265:	
;SC8P171XD_IIC_Soft_Master.c: 65: I2C_WriteStart();
	fcall	_I2C_WriteStart
	line	66
	
l1267:	
;SC8P171XD_IIC_Soft_Master.c: 66: I2C_Write1Byte(0xa0);
	movlw	(0A0h)
	fcall	_I2C_Write1Byte
	line	67
	
l1269:	
;SC8P171XD_IIC_Soft_Master.c: 67: I2C_Write1Byte(0x4);
	movlw	(04h)
	fcall	_I2C_Write1Byte
	line	68
	
l1271:	
;SC8P171XD_IIC_Soft_Master.c: 68: I2C_Write1Byte(Sendbuffer[0]);
	bcf	status, 5	;RP0=0, select bank0
	movf	(_Sendbuffer),w	;volatile
	fcall	_I2C_Write1Byte
	line	69
	
l1273:	
;SC8P171XD_IIC_Soft_Master.c: 69: I2C_Write1Byte(~Sendbuffer[0]);
	bcf	status, 5	;RP0=0, select bank0
	comf	(_Sendbuffer),w	;volatile
	fcall	_I2C_Write1Byte
	line	70
	
l1275:	
;SC8P171XD_IIC_Soft_Master.c: 70: I2C_Write1Byte(0x3);
	movlw	(03h)
	fcall	_I2C_Write1Byte
	line	71
	
l1277:	
;SC8P171XD_IIC_Soft_Master.c: 71: I2C_WriteStop();
	fcall	_I2C_WriteStop
	line	74
	
l1279:	
;SC8P171XD_IIC_Soft_Master.c: 74: I2C_WriteStart();
	fcall	_I2C_WriteStart
	line	75
	
l1281:	
;SC8P171XD_IIC_Soft_Master.c: 75: I2C_Write1Byte(0xa1);
	movlw	(0A1h)
	fcall	_I2C_Write1Byte
	line	76
	
l1283:	
;SC8P171XD_IIC_Soft_Master.c: 76: Recebuffer[0] = I2C_Read1Byte(0);
	movlw	(0)
	fcall	_I2C_Read1Byte
	movwf	(_Recebuffer)	;volatile
	line	77
	
l1285:	
;SC8P171XD_IIC_Soft_Master.c: 77: Recebuffer[1] = I2C_Read1Byte(0);
	movlw	(0)
	fcall	_I2C_Read1Byte
	movwf	0+(_Recebuffer)+01h	;volatile
	line	78
	
l1287:	
;SC8P171XD_IIC_Soft_Master.c: 78: Recebuffer[2] = I2C_Read1Byte(0);
	movlw	(0)
	fcall	_I2C_Read1Byte
	movwf	0+(_Recebuffer)+02h	;volatile
	line	79
	
l1289:	
;SC8P171XD_IIC_Soft_Master.c: 79: Recebuffer[3] = I2C_Read1Byte(1);
	movlw	(01h)
	fcall	_I2C_Read1Byte
	movwf	0+(_Recebuffer)+03h	;volatile
	line	80
	
l1291:	
;SC8P171XD_IIC_Soft_Master.c: 80: I2C_WriteStop();
	fcall	_I2C_WriteStop
	goto	l1255
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	84
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_I2C_Read1Byte
psect	text231,local,class=CODE,delta=2
global __ptext231
__ptext231:

;; *************** function _I2C_Read1Byte *****************
;; Defined at:
;;		line 194 in file "F:\TEST_CODE\SC8P171XD_C\SC8P171XD_IIC\SC8P171XD_IIC_Soft_Master.c"
;; Parameters:    Size  Location     Type
;;  ack             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ack             1    2[COMMON] unsigned char 
;;  i               1    4[COMMON] unsigned char 
;;  data            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 20/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         3       0       0
;;      Temps:          0       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_I2C_WaitMoment
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text231
	file	"F:\TEST_CODE\SC8P171XD_C\SC8P171XD_IIC\SC8P171XD_IIC_Soft_Master.c"
	line	194
	global	__size_of_I2C_Read1Byte
	__size_of_I2C_Read1Byte	equ	__end_of_I2C_Read1Byte-_I2C_Read1Byte
	
_I2C_Read1Byte:	
	opt	stack 5
; Regs used in _I2C_Read1Byte: [wreg+status,2+status,0+pclath+cstack]
;I2C_Read1Byte@ack stored from wreg
	line	196
	movwf	(I2C_Read1Byte@ack)
	
l1195:	
;SC8P171XD_IIC_Soft_Master.c: 195: unsigned char i,data;
;SC8P171XD_IIC_Soft_Master.c: 196: TRISA1 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1065/8)^080h,(1065)&7
	line	197
;SC8P171XD_IIC_Soft_Master.c: 197: TRISA0 = 1;
	bsf	(1064/8)^080h,(1064)&7
	line	198
	
l1197:	
;SC8P171XD_IIC_Soft_Master.c: 198: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	200
;SC8P171XD_IIC_Soft_Master.c: 200: while(!RA0);
	
l456:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(40/8),(40)&7
	goto	u231
	goto	u230
u231:
	goto	l456
u230:
	
l458:	
	line	201
;SC8P171XD_IIC_Soft_Master.c: 201: TRISA0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1064/8)^080h,(1064)&7
	line	202
;SC8P171XD_IIC_Soft_Master.c: 202: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(40/8),(40)&7
	line	203
	
l1199:	
;SC8P171XD_IIC_Soft_Master.c: 203: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	205
	
l1201:	
;SC8P171XD_IIC_Soft_Master.c: 205: data <<= 1;
	clrc
	rlf	(I2C_Read1Byte@data),f
	line	206
	
l1203:	
;SC8P171XD_IIC_Soft_Master.c: 206: if(RA1) data |= 0x1;
	bcf	status, 5	;RP0=0, select bank0
	btfss	(41/8),(41)&7
	goto	u241
	goto	u240
u241:
	goto	l1207
u240:
	
l1205:	
	bsf	(I2C_Read1Byte@data)+(0/8),(0)&7
	line	209
	
l1207:	
;SC8P171XD_IIC_Soft_Master.c: 209: for(i = 0; i < 7; i++)
	clrf	(I2C_Read1Byte@i)
	line	210
	
l460:	
	line	211
;SC8P171XD_IIC_Soft_Master.c: 210: {
;SC8P171XD_IIC_Soft_Master.c: 211: RA0 = 1;
	bsf	(40/8),(40)&7
	line	212
;SC8P171XD_IIC_Soft_Master.c: 212: data <<= 1;
	clrc
	rlf	(I2C_Read1Byte@data),f
	line	213
;SC8P171XD_IIC_Soft_Master.c: 213: if(RA1) data |= 0x1;
	btfss	(41/8),(41)&7
	goto	u251
	goto	u250
u251:
	goto	l462
u250:
	
l1213:	
	bsf	(I2C_Read1Byte@data)+(0/8),(0)&7
	
l462:	
	line	214
;SC8P171XD_IIC_Soft_Master.c: 214: RA0 = 0;
	bcf	(40/8),(40)&7
	line	209
	
l1215:	
	incf	(I2C_Read1Byte@i),f
	
l1217:	
	movlw	(07h)
	subwf	(I2C_Read1Byte@i),w
	skipc
	goto	u261
	goto	u260
u261:
	goto	l460
u260:
	
l461:	
	line	217
;SC8P171XD_IIC_Soft_Master.c: 215: }
;SC8P171XD_IIC_Soft_Master.c: 217: TRISA1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1065/8)^080h,(1065)&7
	line	219
	
l1219:	
;SC8P171XD_IIC_Soft_Master.c: 219: if(ack)RA1 = 1;
	movf	(I2C_Read1Byte@ack),w
	skipz
	goto	u270
	goto	l463
u270:
	
l1221:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(41/8),(41)&7
	goto	l1223
	line	220
	
l463:	
;SC8P171XD_IIC_Soft_Master.c: 220: else RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(41/8),(41)&7
	line	222
	
l1223:	
;SC8P171XD_IIC_Soft_Master.c: 222: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	223
	
l1225:	
;SC8P171XD_IIC_Soft_Master.c: 223: RA0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(40/8),(40)&7
	line	224
;SC8P171XD_IIC_Soft_Master.c: 224: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	225
	
l1227:	
;SC8P171XD_IIC_Soft_Master.c: 225: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(40/8),(40)&7
	line	226
	
l1229:	
;SC8P171XD_IIC_Soft_Master.c: 226: return data;
	movf	(I2C_Read1Byte@data),w
	line	227
	
l465:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Read1Byte
	__end_of_I2C_Read1Byte:
;; =============== function _I2C_Read1Byte ends ============

	signat	_I2C_Read1Byte,4217
	global	_I2C_WriteStop
psect	text232,local,class=CODE,delta=2
global __ptext232
__ptext232:

;; *************** function _I2C_WriteStop *****************
;; Defined at:
;;		line 135 in file "F:\TEST_CODE\SC8P171XD_C\SC8P171XD_IIC\SC8P171XD_IIC_Soft_Master.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_I2C_WaitMoment
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text232
	file	"F:\TEST_CODE\SC8P171XD_C\SC8P171XD_IIC\SC8P171XD_IIC_Soft_Master.c"
	line	135
	global	__size_of_I2C_WriteStop
	__size_of_I2C_WriteStop	equ	__end_of_I2C_WriteStop-_I2C_WriteStop
	
_I2C_WriteStop:	
	opt	stack 5
; Regs used in _I2C_WriteStop: [status,2+status,0+pclath+cstack]
	line	136
	
l1183:	
;SC8P171XD_IIC_Soft_Master.c: 136: TRISA1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1065/8)^080h,(1065)&7
	line	137
;SC8P171XD_IIC_Soft_Master.c: 137: TRISA0 = 0;
	bcf	(1064/8)^080h,(1064)&7
	line	138
	
l1185:	
;SC8P171XD_IIC_Soft_Master.c: 138: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	140
	
l1187:	
;SC8P171XD_IIC_Soft_Master.c: 140: RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(41/8),(41)&7
	line	141
	
l1189:	
;SC8P171XD_IIC_Soft_Master.c: 141: RA0 = 1;
	bsf	(40/8),(40)&7
	line	142
;SC8P171XD_IIC_Soft_Master.c: 142: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	143
	
l1191:	
;SC8P171XD_IIC_Soft_Master.c: 143: RA1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(41/8),(41)&7
	line	145
;SC8P171XD_IIC_Soft_Master.c: 145: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	146
	
l1193:	
;SC8P171XD_IIC_Soft_Master.c: 146: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(40/8),(40)&7
	line	147
;SC8P171XD_IIC_Soft_Master.c: 147: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	148
	
l446:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_WriteStop
	__end_of_I2C_WriteStop:
;; =============== function _I2C_WriteStop ends ============

	signat	_I2C_WriteStop,88
	global	_I2C_Write1Byte
psect	text233,local,class=CODE,delta=2
global __ptext233
__ptext233:

;; *************** function _I2C_Write1Byte *****************
;; Defined at:
;;		line 157 in file "F:\TEST_CODE\SC8P171XD_C\SC8P171XD_IIC\SC8P171XD_IIC_Soft_Master.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    2[COMMON] unsigned char 
;;  i               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 20/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         2       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_I2C_WaitMoment
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text233
	file	"F:\TEST_CODE\SC8P171XD_C\SC8P171XD_IIC\SC8P171XD_IIC_Soft_Master.c"
	line	157
	global	__size_of_I2C_Write1Byte
	__size_of_I2C_Write1Byte	equ	__end_of_I2C_Write1Byte-_I2C_Write1Byte
	
_I2C_Write1Byte:	
	opt	stack 5
; Regs used in _I2C_Write1Byte: [wreg+status,2+status,0+pclath+cstack]
;I2C_Write1Byte@data stored from wreg
	movwf	(I2C_Write1Byte@data)
	line	158
	
l1159:	
;SC8P171XD_IIC_Soft_Master.c: 158: unsigned char i = 8;
	movlw	(08h)
	movwf	(I2C_Write1Byte@i)
	line	159
	
l1161:	
;SC8P171XD_IIC_Soft_Master.c: 159: TRISA1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1065/8)^080h,(1065)&7
	line	160
	
l1163:	
;SC8P171XD_IIC_Soft_Master.c: 160: TRISA0 = 0;
	bcf	(1064/8)^080h,(1064)&7
	line	163
	
l1165:	
;SC8P171XD_IIC_Soft_Master.c: 162: {
;SC8P171XD_IIC_Soft_Master.c: 163: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(40/8),(40)&7
	line	164
	
l1167:	
;SC8P171XD_IIC_Soft_Master.c: 164: if(data&0x80)
	btfss	(I2C_Write1Byte@data),(7)&7
	goto	u211
	goto	u210
u211:
	goto	l450
u210:
	line	165
	
l1169:	
;SC8P171XD_IIC_Soft_Master.c: 165: RA1 = 1;
	bsf	(41/8),(41)&7
	goto	l451
	line	166
	
l450:	
	line	167
;SC8P171XD_IIC_Soft_Master.c: 166: else
;SC8P171XD_IIC_Soft_Master.c: 167: RA1 = 0;
	bcf	(41/8),(41)&7
	
l451:	
	line	169
;SC8P171XD_IIC_Soft_Master.c: 169: RA0 = 1;
	bsf	(40/8),(40)&7
	line	170
;SC8P171XD_IIC_Soft_Master.c: 170: data <<= 1;
	clrc
	rlf	(I2C_Write1Byte@data),f
	line	172
;SC8P171XD_IIC_Soft_Master.c: 171: }
;SC8P171XD_IIC_Soft_Master.c: 172: while(--i);
	decfsz	(I2C_Write1Byte@i),f
	goto	u221
	goto	u220
u221:
	goto	l1165
u220:
	
l452:	
	line	173
;SC8P171XD_IIC_Soft_Master.c: 173: RA0 = 0;
	bcf	(40/8),(40)&7
	line	175
;SC8P171XD_IIC_Soft_Master.c: 175: TRISA1 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1065/8)^080h,(1065)&7
	line	177
	
l1171:	
;SC8P171XD_IIC_Soft_Master.c: 177: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	178
	
l1173:	
;SC8P171XD_IIC_Soft_Master.c: 178: RA0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(40/8),(40)&7
	line	179
;SC8P171XD_IIC_Soft_Master.c: 179: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	181
	
l1175:	
	line	182
	
l1177:	
;SC8P171XD_IIC_Soft_Master.c: 182: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(40/8),(40)&7
	line	183
	
l1179:	
;SC8P171XD_IIC_Soft_Master.c: 183: TRISA1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1065/8)^080h,(1065)&7
	line	185
	
l453:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Write1Byte
	__end_of_I2C_Write1Byte:
;; =============== function _I2C_Write1Byte ends ============

	signat	_I2C_Write1Byte,4217
	global	_I2C_WriteStart
psect	text234,local,class=CODE,delta=2
global __ptext234
__ptext234:

;; *************** function _I2C_WriteStart *****************
;; Defined at:
;;		line 113 in file "F:\TEST_CODE\SC8P171XD_C\SC8P171XD_IIC\SC8P171XD_IIC_Soft_Master.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_I2C_WaitMoment
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text234
	file	"F:\TEST_CODE\SC8P171XD_C\SC8P171XD_IIC\SC8P171XD_IIC_Soft_Master.c"
	line	113
	global	__size_of_I2C_WriteStart
	__size_of_I2C_WriteStart	equ	__end_of_I2C_WriteStart-_I2C_WriteStart
	
_I2C_WriteStart:	
	opt	stack 5
; Regs used in _I2C_WriteStart: [status,2+status,0+pclath+cstack]
	line	114
	
l1147:	
;SC8P171XD_IIC_Soft_Master.c: 114: TRISA1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1065/8)^080h,(1065)&7
	line	115
;SC8P171XD_IIC_Soft_Master.c: 115: TRISA0 = 0;
	bcf	(1064/8)^080h,(1064)&7
	line	116
	
l1149:	
;SC8P171XD_IIC_Soft_Master.c: 116: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	118
	
l1151:	
;SC8P171XD_IIC_Soft_Master.c: 118: RA1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(41/8),(41)&7
	line	119
	
l1153:	
;SC8P171XD_IIC_Soft_Master.c: 119: RA0 = 1;
	bsf	(40/8),(40)&7
	line	120
;SC8P171XD_IIC_Soft_Master.c: 120: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	121
	
l1155:	
;SC8P171XD_IIC_Soft_Master.c: 121: RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(41/8),(41)&7
	line	123
;SC8P171XD_IIC_Soft_Master.c: 123: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	124
	
l1157:	
;SC8P171XD_IIC_Soft_Master.c: 124: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(40/8),(40)&7
	line	125
;SC8P171XD_IIC_Soft_Master.c: 125: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	126
	
l443:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_WriteStart
	__end_of_I2C_WriteStart:
;; =============== function _I2C_WriteStart ends ============

	signat	_I2C_WriteStart,88
	global	_I2C_WaitMoment
psect	text235,local,class=CODE,delta=2
global __ptext235
__ptext235:

;; *************** function _I2C_WaitMoment *****************
;; Defined at:
;;		line 231 in file "F:\TEST_CODE\SC8P171XD_C\SC8P171XD_IIC\SC8P171XD_IIC_Soft_Master.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 0/0
;;		Unchanged: FFE00/0
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
;;		_I2C_WriteStart
;;		_I2C_WriteStop
;;		_I2C_Write1Byte
;;		_I2C_Read1Byte
;; This function uses a non-reentrant model
;;
psect	text235
	file	"F:\TEST_CODE\SC8P171XD_C\SC8P171XD_IIC\SC8P171XD_IIC_Soft_Master.c"
	line	231
	global	__size_of_I2C_WaitMoment
	__size_of_I2C_WaitMoment	equ	__end_of_I2C_WaitMoment-_I2C_WaitMoment
	
_I2C_WaitMoment:	
	opt	stack 5
; Regs used in _I2C_WaitMoment: []
	line	232
	
l1145:	
# 232 "F:\TEST_CODE\SC8P171XD_C\SC8P171XD_IIC\SC8P171XD_IIC_Soft_Master.c"
nop ;#
	line	233
# 233 "F:\TEST_CODE\SC8P171XD_C\SC8P171XD_IIC\SC8P171XD_IIC_Soft_Master.c"
nop ;#
psect	text235
	line	234
	
l468:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_WaitMoment
	__end_of_I2C_WaitMoment:
;; =============== function _I2C_WaitMoment ends ============

	signat	_I2C_WaitMoment,88
	global	_ISR
psect	text236,local,class=CODE,delta=2
global __ptext236
__ptext236:

;; *************** function _ISR *****************
;; Defined at:
;;		line 88 in file "F:\TEST_CODE\SC8P171XD_C\SC8P171XD_IIC\SC8P171XD_IIC_Soft_Master.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 20/0
;;		Unchanged: FFFDF/0
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
psect	text236
	file	"F:\TEST_CODE\SC8P171XD_C\SC8P171XD_IIC\SC8P171XD_IIC_Soft_Master.c"
	line	88
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 5
; Regs used in _ISR: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	pclath,w
	movwf	(??_ISR+1)
	ljmp	_ISR
psect	text236
	line	90
	
i1l837:	
;SC8P171XD_IIC_Soft_Master.c: 89: static unsigned char tcount;
;SC8P171XD_IIC_Soft_Master.c: 90: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(97/8),(97)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l847
u1_20:
	line	92
	
i1l839:	
;SC8P171XD_IIC_Soft_Master.c: 91: {
;SC8P171XD_IIC_Soft_Master.c: 92: TMR2IF = 0;
	bcf	(97/8),(97)&7
	line	94
	
i1l841:	
;SC8P171XD_IIC_Soft_Master.c: 94: if(++tcount >= 40)
	movlw	(028h)
	incf	(ISR@tcount),f
	subwf	((ISR@tcount)),w
	skipc
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l440
u2_20:
	line	96
	
i1l843:	
;SC8P171XD_IIC_Soft_Master.c: 95: {
;SC8P171XD_IIC_Soft_Master.c: 96: tcount = 0;
	clrf	(ISR@tcount)
	line	97
	
i1l845:	
;SC8P171XD_IIC_Soft_Master.c: 97: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7
	goto	i1l440
	line	102
	
i1l847:	
;SC8P171XD_IIC_Soft_Master.c: 100: else
;SC8P171XD_IIC_Soft_Master.c: 101: {
;SC8P171XD_IIC_Soft_Master.c: 102: PIR1 = 0;
	clrf	(12)	;volatile
	line	104
	
i1l440:	
	movf	(??_ISR+1),w
	movwf	pclath
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	text237,local,class=CODE,delta=2
global __ptext237
__ptext237:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
