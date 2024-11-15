opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F2892B
opt include "H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.09_Beta7\SCMCU_IDE_V2.00.09_Beta7\data\include\sc8f2892b.cgen.inc"
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
	FNCALL	_main,_I2C_Read1Byte
	FNCALL	_main,_I2C_Write1Byte
	FNCALL	_main,_I2C_WriteStart
	FNCALL	_main,_I2C_WriteStop
	FNCALL	_I2C_WriteStop,_I2C_WaitMoment
	FNCALL	_I2C_WriteStart,_I2C_WaitMoment
	FNCALL	_I2C_Write1Byte,_I2C_WaitMoment
	FNCALL	_I2C_Read1Byte,_I2C_WaitMoment
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_Recebuffer
	global	ISR@tcount
	global	_B_MainLoop
	global	_Sendbuffer
	global	_T2CON
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_T2CON	set	18
	global	_PIE1
_PIE1	set	13
	global	_PIR1
_PIR1	set	12
	global	_INTCON
_INTCON	set	11
	global	_PORTB
_PORTB	set	6
	global	_TMR2IE
_TMR2IE	set	105
	global	_TMR2IF
_TMR2IF	set	97
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_PR2
_PR2	set	145
	global	_OSCCON
_OSCCON	set	136
	global	_TRISB
_TRISB	set	134
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_TRISA0
_TRISA0	set	1064
	global	_TRISA1
_TRISA1	set	1065
; #config settings
	file	"SC8F289XB_IIC_Demo.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_B_MainLoop:
       ds      1

psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_Recebuffer:
       ds      5

ISR@tcount:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_Sendbuffer:
       ds      5

	file	"SC8F289XB_IIC_Demo.as"
	line	#
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
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
?_I2C_WriteStart:	; 1 bytes @ 0x0
?_I2C_Write1Byte:	; 1 bytes @ 0x0
?_I2C_WriteStop:	; 1 bytes @ 0x0
?_I2C_Read1Byte:	; 1 bytes @ 0x0
?_I2C_WaitMoment:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_ISR:	; 1 bytes @ 0x0
??_ISR:	; 1 bytes @ 0x0
	ds	2
??_I2C_WriteStart:	; 1 bytes @ 0x2
??_I2C_Write1Byte:	; 1 bytes @ 0x2
??_I2C_WriteStop:	; 1 bytes @ 0x2
??_I2C_Read1Byte:	; 1 bytes @ 0x2
??_I2C_WaitMoment:	; 1 bytes @ 0x2
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
??_main:	; 1 bytes @ 0x5
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	main@time1s
main@time1s:	; 1 bytes @ 0x0
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         11
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5      12
;!    BANK0            80      1       6
;!    BANK1            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_I2C_Read1Byte
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
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
;! (0) _main                                                 1     1      0     257
;!                                              0 BANK0      1     1      0
;!                      _I2C_Read1Byte
;!                     _I2C_Write1Byte
;!                     _I2C_WriteStart
;!                      _I2C_WriteStop
;! ---------------------------------------------------------------------------------
;! (1) _I2C_WriteStop                                        0     0      0       0
;!                     _I2C_WaitMoment
;! ---------------------------------------------------------------------------------
;! (1) _I2C_WriteStart                                       0     0      0       0
;!                     _I2C_WaitMoment
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Write1Byte                                       2     2      0      78
;!                                              2 COMMON     2     2      0
;!                     _I2C_WaitMoment
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Read1Byte                                        3     3      0     145
;!                                              2 COMMON     3     3      0
;!                     _I2C_WaitMoment
;! ---------------------------------------------------------------------------------
;! (2) _I2C_WaitMoment                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _ISR                                                  2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _I2C_Read1Byte
;!     _I2C_WaitMoment
;!   _I2C_Write1Byte
;!     _I2C_WaitMoment
;!   _I2C_WriteStart
;!     _I2C_WaitMoment
;!   _I2C_WriteStop
;!     _I2C_WaitMoment
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       1       0        7.1%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      5       C       1       85.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50      1       6       4        7.5%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!BANK2               50      0       0       7        0.0%
;!ABS                  0      0      12       8        0.0%
;!DATA                 0      0      12       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 30 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Demo\SC8F289XB_IIC_Demo_Master.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  time1s          1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_I2C_Read1Byte
;;		_I2C_Write1Byte
;;		_I2C_WriteStart
;;		_I2C_WriteStop
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Demo\SC8F289XB_IIC_Demo_Master.c"
	line	30
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Demo\SC8F289XB_IIC_Demo_Master.c"
	line	30
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l1422:	
;SC8F289XB_IIC_Demo_Master.c: 32: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	33
# 33 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Demo\SC8F289XB_IIC_Demo_Master.c"
clrwdt ;# 
psect	maintext
	line	34
	
l1424:	
;SC8F289XB_IIC_Demo_Master.c: 34: OSCCON = 0x72;
	movlw	low(072h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	35
	
l1426:	
;SC8F289XB_IIC_Demo_Master.c: 35: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	37
	
l1428:	
;SC8F289XB_IIC_Demo_Master.c: 37: INTCON = 0;
	clrf	(11)	;volatile
	line	38
	
l1430:	
;SC8F289XB_IIC_Demo_Master.c: 38: TRISB = 0;
	clrf	(134)^080h	;volatile
	line	39
	
l1432:	
;SC8F289XB_IIC_Demo_Master.c: 39: PORTB = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	41
	
l1434:	
;SC8F289XB_IIC_Demo_Master.c: 41: PIR1 = 0;
	clrf	(12)	;volatile
	line	42
	
l1436:	
;SC8F289XB_IIC_Demo_Master.c: 42: PIE1 = 0;
	clrf	(13)	;volatile
	line	45
;SC8F289XB_IIC_Demo_Master.c: 45: PR2 = 250;
	movlw	low(0FAh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(145)^080h	;volatile
	line	46
;SC8F289XB_IIC_Demo_Master.c: 46: T2CON = 4;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	47
	
l1438:	
;SC8F289XB_IIC_Demo_Master.c: 47: TMR2IE = 1;
	bsf	(105/8),(105)&7	;volatile
	line	49
;SC8F289XB_IIC_Demo_Master.c: 49: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	55
	
l1440:	
;SC8F289XB_IIC_Demo_Master.c: 54: {
;SC8F289XB_IIC_Demo_Master.c: 55: if(B_MainLoop)
	btfss	(_B_MainLoop/8),(_B_MainLoop)&7
	goto	u281
	goto	u280
u281:
	goto	l1440
u280:
	line	57
	
l1442:	
;SC8F289XB_IIC_Demo_Master.c: 56: {
;SC8F289XB_IIC_Demo_Master.c: 57: B_MainLoop = 0;
	bcf	(_B_MainLoop/8),(_B_MainLoop)&7
	line	58
# 58 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Demo\SC8F289XB_IIC_Demo_Master.c"
clrwdt ;# 
psect	maintext
	line	60
	
l1444:	
;SC8F289XB_IIC_Demo_Master.c: 60: if(++time1s >= 200)
	movlw	low(0C8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(main@time1s),f
	subwf	((main@time1s)),w
	skipc
	goto	u291
	goto	u290
u291:
	goto	l1440
u290:
	line	62
	
l1446:	
;SC8F289XB_IIC_Demo_Master.c: 61: {
;SC8F289XB_IIC_Demo_Master.c: 62: time1s = 0;
	clrf	(main@time1s)
	line	63
	
l1448:	
;SC8F289XB_IIC_Demo_Master.c: 63: Sendbuffer[0]++;
	incf	(_Sendbuffer),f	;volatile
	line	66
	
l1450:	
;SC8F289XB_IIC_Demo_Master.c: 66: I2C_WriteStart();
	fcall	_I2C_WriteStart
	line	67
	
l1452:	
;SC8F289XB_IIC_Demo_Master.c: 67: I2C_Write1Byte(0xa0);
	movlw	low(0A0h)
	fcall	_I2C_Write1Byte
	line	68
	
l1454:	
;SC8F289XB_IIC_Demo_Master.c: 68: I2C_Write1Byte(0x4);
	movlw	low(04h)
	fcall	_I2C_Write1Byte
	line	69
	
l1456:	
;SC8F289XB_IIC_Demo_Master.c: 69: I2C_Write1Byte(Sendbuffer[0]);
	bcf	status, 5	;RP0=0, select bank0
	movf	(_Sendbuffer),w	;volatile
	fcall	_I2C_Write1Byte
	line	70
	
l1458:	
;SC8F289XB_IIC_Demo_Master.c: 70: I2C_Write1Byte(~Sendbuffer[0]);
	bcf	status, 5	;RP0=0, select bank0
	comf	(_Sendbuffer),w	;volatile
	fcall	_I2C_Write1Byte
	line	71
	
l1460:	
;SC8F289XB_IIC_Demo_Master.c: 71: I2C_Write1Byte(0x3);
	movlw	low(03h)
	fcall	_I2C_Write1Byte
	line	72
	
l1462:	
;SC8F289XB_IIC_Demo_Master.c: 72: I2C_WriteStop();
	fcall	_I2C_WriteStop
	line	75
	
l1464:	
;SC8F289XB_IIC_Demo_Master.c: 75: I2C_WriteStart();
	fcall	_I2C_WriteStart
	line	76
	
l1466:	
;SC8F289XB_IIC_Demo_Master.c: 76: I2C_Write1Byte(0xa1);
	movlw	low(0A1h)
	fcall	_I2C_Write1Byte
	line	77
	
l1468:	
;SC8F289XB_IIC_Demo_Master.c: 77: Recebuffer[0] = I2C_Read1Byte(0);
	movlw	low(0)
	fcall	_I2C_Read1Byte
	movwf	(_Recebuffer)	;volatile
	line	78
	
l1470:	
;SC8F289XB_IIC_Demo_Master.c: 78: Recebuffer[1] = I2C_Read1Byte(0);
	movlw	low(0)
	fcall	_I2C_Read1Byte
	movwf	0+(_Recebuffer)+01h	;volatile
	line	79
	
l1472:	
;SC8F289XB_IIC_Demo_Master.c: 79: Recebuffer[2] = I2C_Read1Byte(0);
	movlw	low(0)
	fcall	_I2C_Read1Byte
	movwf	0+(_Recebuffer)+02h	;volatile
	line	80
	
l1474:	
;SC8F289XB_IIC_Demo_Master.c: 80: Recebuffer[3] = I2C_Read1Byte(1);
	movlw	low(01h)
	fcall	_I2C_Read1Byte
	movwf	0+(_Recebuffer)+03h	;volatile
	line	81
	
l1476:	
;SC8F289XB_IIC_Demo_Master.c: 81: I2C_WriteStop();
	fcall	_I2C_WriteStop
	goto	l1440
	global	start
	ljmp	start
	opt stack 0
	line	85
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_I2C_WriteStop

;; *************** function _I2C_WriteStop *****************
;; Defined at:
;;		line 136 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Demo\SC8F289XB_IIC_Demo_Master.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 200/100
;;		On exit  : 0/0
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
;;		_I2C_WaitMoment
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	136
global __ptext1
__ptext1:	;psect for function _I2C_WriteStop
psect	text1
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Demo\SC8F289XB_IIC_Demo_Master.c"
	line	136
	global	__size_of_I2C_WriteStop
	__size_of_I2C_WriteStop	equ	__end_of_I2C_WriteStop-_I2C_WriteStop
	
_I2C_WriteStop:	
;incstack = 0
	opt	stack 5
; Regs used in _I2C_WriteStop: [status,2+status,0+pclath+cstack]
	line	138
	
l1368:	
;SC8F289XB_IIC_Demo_Master.c: 138: TRISA1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1065/8)^080h,(1065)&7	;volatile
	line	139
;SC8F289XB_IIC_Demo_Master.c: 139: TRISA0 = 0;
	bcf	(1064/8)^080h,(1064)&7	;volatile
	line	140
	
l1370:	
;SC8F289XB_IIC_Demo_Master.c: 140: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	142
	
l1372:	
;SC8F289XB_IIC_Demo_Master.c: 142: RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7	;volatile
	line	143
	
l1374:	
;SC8F289XB_IIC_Demo_Master.c: 143: RA0 = 1;
	bsf	(40/8),(40)&7	;volatile
	line	144
;SC8F289XB_IIC_Demo_Master.c: 144: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	145
	
l1376:	
;SC8F289XB_IIC_Demo_Master.c: 145: RA1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7	;volatile
	line	147
;SC8F289XB_IIC_Demo_Master.c: 147: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	148
	
l1378:	
;SC8F289XB_IIC_Demo_Master.c: 148: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	149
;SC8F289XB_IIC_Demo_Master.c: 149: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	150
	
l622:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_WriteStop
	__end_of_I2C_WriteStop:
	signat	_I2C_WriteStop,89
	global	_I2C_WriteStart

;; *************** function _I2C_WriteStart *****************
;; Defined at:
;;		line 114 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Demo\SC8F289XB_IIC_Demo_Master.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		_I2C_WaitMoment
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	114
global __ptext2
__ptext2:	;psect for function _I2C_WriteStart
psect	text2
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Demo\SC8F289XB_IIC_Demo_Master.c"
	line	114
	global	__size_of_I2C_WriteStart
	__size_of_I2C_WriteStart	equ	__end_of_I2C_WriteStart-_I2C_WriteStart
	
_I2C_WriteStart:	
;incstack = 0
	opt	stack 5
; Regs used in _I2C_WriteStart: [status,2+status,0+pclath+cstack]
	line	116
	
l1332:	
;SC8F289XB_IIC_Demo_Master.c: 116: TRISA1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1065/8)^080h,(1065)&7	;volatile
	line	117
;SC8F289XB_IIC_Demo_Master.c: 117: TRISA0 = 0;
	bcf	(1064/8)^080h,(1064)&7	;volatile
	line	118
	
l1334:	
;SC8F289XB_IIC_Demo_Master.c: 118: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	120
	
l1336:	
;SC8F289XB_IIC_Demo_Master.c: 120: RA1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7	;volatile
	line	121
	
l1338:	
;SC8F289XB_IIC_Demo_Master.c: 121: RA0 = 1;
	bsf	(40/8),(40)&7	;volatile
	line	122
;SC8F289XB_IIC_Demo_Master.c: 122: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	123
	
l1340:	
;SC8F289XB_IIC_Demo_Master.c: 123: RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7	;volatile
	line	125
;SC8F289XB_IIC_Demo_Master.c: 125: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	126
	
l1342:	
;SC8F289XB_IIC_Demo_Master.c: 126: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	127
;SC8F289XB_IIC_Demo_Master.c: 127: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	128
	
l619:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_WriteStart
	__end_of_I2C_WriteStart:
	signat	_I2C_WriteStart,89
	global	_I2C_Write1Byte

;; *************** function _I2C_Write1Byte *****************
;; Defined at:
;;		line 158 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Demo\SC8F289XB_IIC_Demo_Master.c"
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
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_I2C_WaitMoment
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	158
global __ptext3
__ptext3:	;psect for function _I2C_Write1Byte
psect	text3
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Demo\SC8F289XB_IIC_Demo_Master.c"
	line	158
	global	__size_of_I2C_Write1Byte
	__size_of_I2C_Write1Byte	equ	__end_of_I2C_Write1Byte-_I2C_Write1Byte
	
_I2C_Write1Byte:	
;incstack = 0
	opt	stack 5
; Regs used in _I2C_Write1Byte: [wreg+status,2+status,0+pclath+cstack]
;I2C_Write1Byte@data stored from wreg
	movwf	(I2C_Write1Byte@data)
	line	160
	
l1344:	
;SC8F289XB_IIC_Demo_Master.c: 160: unsigned char i = 8;
	movlw	low(08h)
	movwf	(I2C_Write1Byte@i)
	line	161
	
l1346:	
;SC8F289XB_IIC_Demo_Master.c: 161: TRISA1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1065/8)^080h,(1065)&7	;volatile
	line	162
	
l1348:	
;SC8F289XB_IIC_Demo_Master.c: 162: TRISA0 = 0;
	bcf	(1064/8)^080h,(1064)&7	;volatile
	line	165
	
l1350:	
;SC8F289XB_IIC_Demo_Master.c: 164: {
;SC8F289XB_IIC_Demo_Master.c: 165: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	166
	
l1352:	
;SC8F289XB_IIC_Demo_Master.c: 166: if(data&0x80)
	btfss	(I2C_Write1Byte@data),(7)&7
	goto	u211
	goto	u210
u211:
	goto	l626
u210:
	line	167
	
l1354:	
;SC8F289XB_IIC_Demo_Master.c: 167: RA1 = 1;
	bsf	(41/8),(41)&7	;volatile
	goto	l627
	line	168
	
l626:	
	line	169
;SC8F289XB_IIC_Demo_Master.c: 168: else
;SC8F289XB_IIC_Demo_Master.c: 169: RA1 = 0;
	bcf	(41/8),(41)&7	;volatile
	
l627:	
	line	171
;SC8F289XB_IIC_Demo_Master.c: 171: RA0 = 1;
	bsf	(40/8),(40)&7	;volatile
	line	172
;SC8F289XB_IIC_Demo_Master.c: 172: data <<= 1;
	clrc
	rlf	(I2C_Write1Byte@data),f
	line	174
;SC8F289XB_IIC_Demo_Master.c: 173: }
;SC8F289XB_IIC_Demo_Master.c: 174: while(--i);
	decfsz	(I2C_Write1Byte@i),f
	goto	u221
	goto	u220
u221:
	goto	l1350
u220:
	
l628:	
	line	175
;SC8F289XB_IIC_Demo_Master.c: 175: RA0 = 0;
	bcf	(40/8),(40)&7	;volatile
	line	177
;SC8F289XB_IIC_Demo_Master.c: 177: TRISA1 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1065/8)^080h,(1065)&7	;volatile
	line	179
	
l1356:	
;SC8F289XB_IIC_Demo_Master.c: 179: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	180
	
l1358:	
;SC8F289XB_IIC_Demo_Master.c: 180: RA0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7	;volatile
	line	181
;SC8F289XB_IIC_Demo_Master.c: 181: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	183
	
l1360:	
	line	184
	
l1362:	
;SC8F289XB_IIC_Demo_Master.c: 184: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	185
	
l1364:	
;SC8F289XB_IIC_Demo_Master.c: 185: TRISA1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1065/8)^080h,(1065)&7	;volatile
	line	187
	
l629:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Write1Byte
	__end_of_I2C_Write1Byte:
	signat	_I2C_Write1Byte,4217
	global	_I2C_Read1Byte

;; *************** function _I2C_Read1Byte *****************
;; Defined at:
;;		line 195 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Demo\SC8F289XB_IIC_Demo_Master.c"
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
;;		On entry : 200/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_I2C_WaitMoment
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	195
global __ptext4
__ptext4:	;psect for function _I2C_Read1Byte
psect	text4
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Demo\SC8F289XB_IIC_Demo_Master.c"
	line	195
	global	__size_of_I2C_Read1Byte
	__size_of_I2C_Read1Byte	equ	__end_of_I2C_Read1Byte-_I2C_Read1Byte
	
_I2C_Read1Byte:	
;incstack = 0
	opt	stack 5
; Regs used in _I2C_Read1Byte: [wreg+status,2+status,0+pclath+cstack]
;I2C_Read1Byte@ack stored from wreg
	movwf	(I2C_Read1Byte@ack)
	line	198
	
l1380:	
;SC8F289XB_IIC_Demo_Master.c: 197: unsigned char i;
;SC8F289XB_IIC_Demo_Master.c: 198: unsigned char data = 0;
	clrf	(I2C_Read1Byte@data)
	line	199
	
l1382:	
;SC8F289XB_IIC_Demo_Master.c: 199: TRISA1 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1065/8)^080h,(1065)&7	;volatile
	line	200
	
l1384:	
;SC8F289XB_IIC_Demo_Master.c: 200: TRISA0 = 1;
	bsf	(1064/8)^080h,(1064)&7	;volatile
	line	201
	
l1386:	
;SC8F289XB_IIC_Demo_Master.c: 201: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	203
;SC8F289XB_IIC_Demo_Master.c: 203: while(!RA0);
	
l632:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7	;volatile
	goto	u231
	goto	u230
u231:
	goto	l632
u230:
	
l634:	
	line	204
;SC8F289XB_IIC_Demo_Master.c: 204: TRISA0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1064/8)^080h,(1064)&7	;volatile
	line	205
;SC8F289XB_IIC_Demo_Master.c: 205: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	206
	
l1388:	
;SC8F289XB_IIC_Demo_Master.c: 206: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	208
	
l1390:	
;SC8F289XB_IIC_Demo_Master.c: 208: data <<= 1;
	clrc
	rlf	(I2C_Read1Byte@data),f
	line	209
	
l1392:	
;SC8F289XB_IIC_Demo_Master.c: 209: if(RA1) data |= 0x1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7	;volatile
	goto	u241
	goto	u240
u241:
	goto	l1396
u240:
	
l1394:	
	bsf	(I2C_Read1Byte@data)+(0/8),(0)&7
	line	212
	
l1396:	
;SC8F289XB_IIC_Demo_Master.c: 212: for(i = 0; i < 7; i++)
	clrf	(I2C_Read1Byte@i)
	line	213
	
l636:	
	line	214
;SC8F289XB_IIC_Demo_Master.c: 213: {
;SC8F289XB_IIC_Demo_Master.c: 214: RA0 = 1;
	bsf	(40/8),(40)&7	;volatile
	line	215
;SC8F289XB_IIC_Demo_Master.c: 215: data <<= 1;
	clrc
	rlf	(I2C_Read1Byte@data),f
	line	216
;SC8F289XB_IIC_Demo_Master.c: 216: if(RA1) data |= 0x1;
	btfss	(41/8),(41)&7	;volatile
	goto	u251
	goto	u250
u251:
	goto	l638
u250:
	
l1402:	
	bsf	(I2C_Read1Byte@data)+(0/8),(0)&7
	
l638:	
	line	217
;SC8F289XB_IIC_Demo_Master.c: 217: RA0 = 0;
	bcf	(40/8),(40)&7	;volatile
	line	212
	
l1404:	
	incf	(I2C_Read1Byte@i),f
	
l1406:	
	movlw	low(07h)
	subwf	(I2C_Read1Byte@i),w
	skipc
	goto	u261
	goto	u260
u261:
	goto	l636
u260:
	
l637:	
	line	220
;SC8F289XB_IIC_Demo_Master.c: 218: }
;SC8F289XB_IIC_Demo_Master.c: 220: TRISA1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1065/8)^080h,(1065)&7	;volatile
	line	222
	
l1408:	
;SC8F289XB_IIC_Demo_Master.c: 222: if(ack) RA1 = 1;
	movf	((I2C_Read1Byte@ack)),w
	btfsc	status,2
	goto	u271
	goto	u270
u271:
	goto	l639
u270:
	
l1410:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(41/8),(41)&7	;volatile
	goto	l1412
	line	223
	
l639:	
;SC8F289XB_IIC_Demo_Master.c: 223: else RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(41/8),(41)&7	;volatile
	line	225
	
l1412:	
;SC8F289XB_IIC_Demo_Master.c: 225: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	226
	
l1414:	
;SC8F289XB_IIC_Demo_Master.c: 226: RA0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7	;volatile
	line	227
;SC8F289XB_IIC_Demo_Master.c: 227: I2C_WaitMoment();
	fcall	_I2C_WaitMoment
	line	228
	
l1416:	
;SC8F289XB_IIC_Demo_Master.c: 228: RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	229
	
l1418:	
;SC8F289XB_IIC_Demo_Master.c: 229: return data;
	movf	(I2C_Read1Byte@data),w
	line	230
	
l641:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Read1Byte
	__end_of_I2C_Read1Byte:
	signat	_I2C_Read1Byte,4217
	global	_I2C_WaitMoment

;; *************** function _I2C_WaitMoment *****************
;; Defined at:
;;		line 233 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Demo\SC8F289XB_IIC_Demo_Master.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 200/100
;;		On exit  : 0/0
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
;;		_I2C_WriteStart
;;		_I2C_WriteStop
;;		_I2C_Write1Byte
;;		_I2C_Read1Byte
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	233
global __ptext5
__ptext5:	;psect for function _I2C_WaitMoment
psect	text5
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Demo\SC8F289XB_IIC_Demo_Master.c"
	line	233
	global	__size_of_I2C_WaitMoment
	__size_of_I2C_WaitMoment	equ	__end_of_I2C_WaitMoment-_I2C_WaitMoment
	
_I2C_WaitMoment:	
;incstack = 0
	opt	stack 5
; Regs used in _I2C_WaitMoment: []
	line	235
	
l1330:	
# 235 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Demo\SC8F289XB_IIC_Demo_Master.c"
nop ;# 
	line	236
# 236 "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Demo\SC8F289XB_IIC_Demo_Master.c"
nop ;# 
psect	text5
	line	237
	
l644:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_WaitMoment
	__end_of_I2C_WaitMoment:
	signat	_I2C_WaitMoment,89
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 88 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Demo\SC8F289XB_IIC_Demo_Master.c"
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
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	88
global __ptext6
__ptext6:	;psect for function _ISR
psect	text6
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_IIC_Demo\SC8F289XB_IIC_Demo_Master.c"
	line	88
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
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
psect	text6
	line	91
	
i1l1168:	
;SC8F289XB_IIC_Demo_Master.c: 90: static unsigned char tcount;
;SC8F289XB_IIC_Demo_Master.c: 91: if(TMR2IF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u10_21
	goto	u10_20
u10_21:
	goto	i1l1178
u10_20:
	line	93
	
i1l1170:	
;SC8F289XB_IIC_Demo_Master.c: 92: {
;SC8F289XB_IIC_Demo_Master.c: 93: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	95
	
i1l1172:	
;SC8F289XB_IIC_Demo_Master.c: 95: if(++tcount >= 40)
	movlw	low(028h)
	incf	(ISR@tcount),f
	subwf	((ISR@tcount)),w
	skipc
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l616
u11_20:
	line	97
	
i1l1174:	
;SC8F289XB_IIC_Demo_Master.c: 96: {
;SC8F289XB_IIC_Demo_Master.c: 97: tcount = 0;
	clrf	(ISR@tcount)
	line	98
	
i1l1176:	
;SC8F289XB_IIC_Demo_Master.c: 98: B_MainLoop = 1;
	bsf	(_B_MainLoop/8),(_B_MainLoop)&7
	goto	i1l616
	line	103
	
i1l1178:	
;SC8F289XB_IIC_Demo_Master.c: 101: else
;SC8F289XB_IIC_Demo_Master.c: 102: {
;SC8F289XB_IIC_Demo_Master.c: 103: PIR1 = 0;
	clrf	(12)	;volatile
	line	104
	
i1l1180:	
;SC8F289XB_IIC_Demo_Master.c: 104: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	106
	
i1l616:	
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
	signat	_ISR,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
