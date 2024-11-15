opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F5773
opt include "H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.09_Beta4\SCMCU_IDE_V2.00.09_Beta4\data\include\sc8f5773.cgen.inc"
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
	FNCALL	_main,_Init_System
	FNCALL	_main,_Read_ADC
	FNROOT	_main
	global	_Adc_Result0
	global	_Adc_Result2
psect	nvCOMMON,class=COMMON,space=1,noexec
global __pnvCOMMON
__pnvCOMMON:
_Adc_Result2:
       ds      2

	global	_Adc_Result1
_Adc_Result1:
       ds      2

	global	_INTCON
_INTCON	set	11
	global	_WPUB
_WPUB	set	8
	global	_WPUA
_WPUA	set	7
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_ADRESL
_ADRESL	set	159
	global	_ADRESH
_ADRESH	set	158
	global	_ADCON0
_ADCON0	set	157
	global	_ADCON1
_ADCON1	set	156
	global	_PGACON
_PGACON	set	154
	global	_OSCCON
_OSCCON	set	136
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_GODONE
_GODONE	set	1257
	global	_CHS4
_CHS4	set	1254
	global	_ECIGEN
_ECIGEN	set	1247
	global	_PGACH
_PGACH	set	1238
; #config settings
	file	"SC8F577X_PGA_Demo.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_Adc_Result0:
       ds      2

	file	"SC8F577X_PGA_Demo.as"
	line	#
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
?_Init_System:	; 1 bytes @ 0x0
??_Init_System:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	?_Read_ADC
?_Read_ADC:	; 2 bytes @ 0x0
	global	Read_ADC@ADCLDORef
Read_ADC@ADCLDORef:	; 1 bytes @ 0x0
	ds	2
??_Read_ADC:	; 1 bytes @ 0x2
	ds	1
	global	Read_ADC@Adc_Result
Read_ADC@Adc_Result:	; 2 bytes @ 0x3
	ds	2
	global	Read_ADC@i
Read_ADC@i:	; 1 bytes @ 0x5
	ds	1
	global	Read_ADC@ADCchannel
Read_ADC@ADCchannel:	; 1 bytes @ 0x6
	ds	1
??_main:	; 1 bytes @ 0x7
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         2
;!    Persistent  4
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      13
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
;!    _main->_Read_ADC
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
;! (0) _main                                                 0     0      0     224
;!                        _Init_System
;!                           _Read_ADC
;! ---------------------------------------------------------------------------------
;! (1) _Read_ADC                                             7     5      2     224
;!                                              0 COMMON     7     5      2
;! ---------------------------------------------------------------------------------
;! (1) _Init_System                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Init_System
;!   _Read_ADC
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      7       D       1       92.9%
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
;!ABS                  0      0       D       8        0.0%
;!DATA                 0      0       D       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 18 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_PGA+恒流源_Demo\main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Init_System
;;		_Read_ADC
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_PGA+恒流源_Demo\main.c"
	line	18
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_PGA+恒流源_Demo\main.c"
	line	18
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l1382:	
;main.c: 20: Init_System();
	fcall	_Init_System
	line	22
	
l1384:	
;main.c: 22: TRISA |= 0x01;
	bsf	(133)^080h+(0/8),(0)&7	;volatile
	line	23
	
l1386:	
;main.c: 23: PGACON = 0b10000011;
	movlw	low(083h)
	movwf	(154)^080h	;volatile
	line	25
	
l1388:	
;main.c: 25: ECIGEN =1;
	bsf	(1247/8)^080h,(1247)&7	;volatile
	line	29
	
l1390:	
;main.c: 27: {
;main.c: 29: PGACH =0;
	bcf	(1238/8)^080h,(1238)&7	;volatile
	line	30
	
l1392:	
;main.c: 30: Adc_Result1 = Read_ADC(20,1);
	clrf	(Read_ADC@ADCLDORef)
	incf	(Read_ADC@ADCLDORef),f
	movlw	low(014h)
	fcall	_Read_ADC
	movf	(1+(?_Read_ADC)),w
	movwf	(_Adc_Result1+1)	;volatile
	movf	(0+(?_Read_ADC)),w
	movwf	(_Adc_Result1)	;volatile
	line	31
	
l1394:	
;main.c: 31: PGACH =1;
	bsf	(1238/8)^080h,(1238)&7	;volatile
	line	32
	
l1396:	
;main.c: 32: Adc_Result2 = Read_ADC(20,1);
	clrf	(Read_ADC@ADCLDORef)
	incf	(Read_ADC@ADCLDORef),f
	movlw	low(014h)
	fcall	_Read_ADC
	movf	(1+(?_Read_ADC)),w
	movwf	(_Adc_Result2+1)	;volatile
	movf	(0+(?_Read_ADC)),w
	movwf	(_Adc_Result2)	;volatile
	line	34
	
l1398:	
;main.c: 34: Adc_Result1 += Adc_Result2;
	movf	(_Adc_Result2),w	;volatile
	addwf	(_Adc_Result1),f	;volatile
	skipnc
	incf	(_Adc_Result1+1),f	;volatile
	movf	(_Adc_Result2+1),w	;volatile
	addwf	(_Adc_Result1+1),f	;volatile
	line	35
	
l1400:	
;main.c: 35: Adc_Result1 >>=1;
	clrc
	rrf	(_Adc_Result1+1),f	;volatile
	rrf	(_Adc_Result1),f	;volatile
	goto	l1390
	global	start
	ljmp	start
	opt stack 0
	line	40
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Read_ADC

;; *************** function _Read_ADC *****************
;; Defined at:
;;		line 53 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_PGA+恒流源_Demo\main.c"
;; Parameters:    Size  Location     Type
;;  ADCchannel      1    wreg     unsigned char 
;;  ADCLDORef       1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ADCchannel      1    6[COMMON] unsigned char 
;;  Adc_Result      2    3[COMMON] unsigned int 
;;  i               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         4       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	53
global __ptext1
__ptext1:	;psect for function _Read_ADC
psect	text1
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_PGA+恒流源_Demo\main.c"
	line	53
	global	__size_of_Read_ADC
	__size_of_Read_ADC	equ	__end_of_Read_ADC-_Read_ADC
	
_Read_ADC:	
;incstack = 0
	opt	stack 7
; Regs used in _Read_ADC: [wreg+status,2+status,0]
;Read_ADC@ADCchannel stored from wreg
	movwf	(Read_ADC@ADCchannel)
	line	56
	
l1348:	
;main.c: 55: unsigned int Adc_Result;
;main.c: 56: unsigned char i=200;
	movlw	low(0C8h)
	movwf	(Read_ADC@i)
	line	59
	
l1350:	
;main.c: 59: if(ADCLDORef==0)
	movf	((Read_ADC@ADCLDORef)),w
	btfss	status,2
	goto	u71
	goto	u70
u71:
	goto	l1354
u70:
	line	61
	
l1352:	
;main.c: 60: {
;main.c: 61: ADCON1 = 0B00000000;
	clrf	(156)^080h	;volatile
	line	62
;main.c: 62: }
	goto	l1360
	line	63
	
l1354:	
;main.c: 63: else if(ADCLDORef==1)
		decf	((Read_ADC@ADCLDORef)),w
	btfss	status,2
	goto	u81
	goto	u80
u81:
	goto	l1358
u80:
	line	65
	
l1356:	
;main.c: 64: {
;main.c: 65: ADCON1 = 0B00000101;
	movlw	low(05h)
	movwf	(156)^080h	;volatile
	line	66
;main.c: 66: }
	goto	l1360
	line	69
	
l1358:	
;main.c: 67: else
;main.c: 68: {
;main.c: 69: ADCON1 = 0B00000110;
	movlw	low(06h)
	movwf	(156)^080h	;volatile
	line	72
	
l1360:	
;main.c: 70: }
;main.c: 72: CHS4 = 0;
	bcf	(1254/8)^080h,(1254)&7	;volatile
	line	73
;main.c: 73: if(ADCchannel >=16)
	movlw	low(010h)
	subwf	(Read_ADC@ADCchannel),w
	skipc
	goto	u91
	goto	u90
u91:
	goto	l889
u90:
	line	75
	
l1362:	
;main.c: 74: {
;main.c: 75: ADCchannel -= 16;
	movlw	010h
	subwf	(Read_ADC@ADCchannel),f
	line	76
	
l1364:	
;main.c: 76: CHS4 = 1;
	bsf	(1254/8)^080h,(1254)&7	;volatile
	line	77
	
l889:	
	line	79
;main.c: 77: }
;main.c: 79: ADCON0 &= 0b11000011;
	movlw	low(0C3h)
	andwf	(157)^080h,f	;volatile
	line	80
;main.c: 80: ADCON0 |= ADCchannel<<2;
	movf	(Read_ADC@ADCchannel),w
	movwf	(??_Read_ADC+0)+0
	movlw	(02h)-1
u105:
	clrc
	rlf	(??_Read_ADC+0)+0,f
	addlw	-1
	skipz
	goto	u105
	clrc
	rlf	(??_Read_ADC+0)+0,w
	iorwf	(157)^080h,f	;volatile
	line	81
# 81 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_PGA+恒流源_Demo\main.c"
nop ;# 
psect	text1
	line	82
	
l1366:	
;main.c: 82: GODONE =1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1257/8)^080h,(1257)&7	;volatile
	line	83
;main.c: 83: while(GODONE==1&&i>0)
	goto	l1370
	line	85
	
l1368:	
;main.c: 84: {
;main.c: 85: i--;
	decf	(Read_ADC@i),f
	line	86
# 86 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_PGA+恒流源_Demo\main.c"
nop ;# 
psect	text1
	line	83
	
l1370:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1257/8)^080h,(1257)&7	;volatile
	goto	u111
	goto	u110
u111:
	goto	l1374
u110:
	
l1372:	
	movf	((Read_ADC@i)),w
	btfss	status,2
	goto	u121
	goto	u120
u121:
	goto	l1368
u120:
	line	88
	
l1374:	
;main.c: 87: }
;main.c: 88: Adc_Result = ADRESH<<4;
	movf	(158)^080h,w	;volatile
	movwf	(Read_ADC@Adc_Result)
	clrf	(Read_ADC@Adc_Result+1)
	swapf	(Read_ADC@Adc_Result),f
	swapf	(Read_ADC@Adc_Result+1),f
	movlw	0f0h
	andwf	(Read_ADC@Adc_Result+1),f
	movf	(Read_ADC@Adc_Result),w
	andlw	0fh
	iorwf	(Read_ADC@Adc_Result+1),f
	movlw	0f0h
	andwf	(Read_ADC@Adc_Result),f
	line	89
	
l1376:	
;main.c: 89: Adc_Result += ADRESL>>4;
	swapf	(159)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	addwf	(Read_ADC@Adc_Result),f
	skipnc
	incf	(Read_ADC@Adc_Result+1),f
	line	91
	
l1378:	
;main.c: 91: return Adc_Result;
	movf	(Read_ADC@Adc_Result+1),w
	movwf	(?_Read_ADC+1)
	movf	(Read_ADC@Adc_Result),w
	movwf	(?_Read_ADC)
	line	93
	
l895:	
	return
	opt stack 0
GLOBAL	__end_of_Read_ADC
	__end_of_Read_ADC:
	signat	_Read_ADC,8314
	global	_Init_System

;; *************** function _Init_System *****************
;; Defined at:
;;		line 103 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_PGA+恒流源_Demo\main.c"
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
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	103
global __ptext2
__ptext2:	;psect for function _Init_System
psect	text2
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_PGA+恒流源_Demo\main.c"
	line	103
	global	__size_of_Init_System
	__size_of_Init_System	equ	__end_of_Init_System-_Init_System
	
_Init_System:	
;incstack = 0
	opt	stack 7
; Regs used in _Init_System: [wreg+status,2]
	line	105
	
l1274:	
# 105 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_PGA+恒流源_Demo\main.c"
nop ;# 
	line	106
# 106 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_PGA+恒流源_Demo\main.c"
clrwdt ;# 
psect	text2
	line	107
	
l1276:	
;main.c: 107: INTCON = 0;
	clrf	(11)	;volatile
	line	108
	
l1278:	
;main.c: 108: OSCCON = 0X70;
	movlw	low(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	109
	
l1280:	
;main.c: 109: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	111
	
l1282:	
;main.c: 111: WPUA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	112
	
l1284:	
;main.c: 112: WPUB = 0B00001000;
	movlw	low(08h)
	movwf	(8)	;volatile
	line	115
	
l1286:	
;main.c: 115: TRISA = 0B00000001;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(133)^080h	;volatile
	line	116
	
l1288:	
;main.c: 116: TRISB = 0B00001000;
	movlw	low(08h)
	movwf	(134)^080h	;volatile
	line	118
;main.c: 118: PORTA = 0B00000000;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	119
;main.c: 119: PORTB = 0B00000000;
	clrf	(6)	;volatile
	line	121
	
l1290:	
;main.c: 121: ADCON0 = 0B10000001;
	movlw	low(081h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(157)^080h	;volatile
	line	122
	
l1292:	
;main.c: 122: ADCON1 = 0B00000011;
	movlw	low(03h)
	movwf	(156)^080h	;volatile
	line	125
	
l898:	
	return
	opt stack 0
GLOBAL	__end_of_Init_System
	__end_of_Init_System:
	signat	_Init_System,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
