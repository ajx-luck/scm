opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	79F123
opt include "E:\ZWPROJ~1\2020PR~1\推广工作\产品推广\79FT61~1\02仿真~1\CMS_ID~1.18_\data\include\79f123.cgen.inc"
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
	FNCALL	_main,_AD_Testing
	FNROOT	_main
	global	AD_Testing@admax
	global	AD_Testing@admin
	global	AD_Testing@adtimes
	global	AD_Testing@adsum
	global	_AD_Result
	global	_ADCON0
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_GODONE
_GODONE	set	249
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISA
_TRISA	set	133
	global	_ANSEL
_ANSEL	set	392
; #config settings
	file	"ADC_Demo.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
AD_Testing@admax:
       ds      2

AD_Testing@admin:
       ds      2

AD_Testing@adtimes:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
AD_Testing@adsum:
       ds      2

_AD_Result:
       ds      2

	file	"ADC_Demo.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
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
?_AD_Testing:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	AD_Testing@ad_ch
AD_Testing@ad_ch:	; 1 bytes @ 0x0
	ds	1
	global	AD_Testing@ad_lr
AD_Testing@ad_lr:	; 1 bytes @ 0x1
	ds	1
??_AD_Testing:	; 1 bytes @ 0x2
	ds	2
	global	AD_Testing@ad_fd
AD_Testing@ad_fd:	; 1 bytes @ 0x4
	ds	1
	global	AD_Testing@i
AD_Testing@i:	; 1 bytes @ 0x5
	ds	1
	global	AD_Testing@data
AD_Testing@data:	; 2 bytes @ 0x6
	ds	2
??_main:	; 1 bytes @ 0x8
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         9
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      13
;!    BANK0            80      0       4
;!    BANK1            80      0       0
;!    BANK3            88      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_AD_Testing
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
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
;! (0) _main                                                 0     0      0     379
;!                         _AD_Testing
;! ---------------------------------------------------------------------------------
;! (1) _AD_Testing                                           8     6      2     379
;!                                              0 COMMON     8     6      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _AD_Testing
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      8       D       1       92.9%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      11       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       4       5        5.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            58      0       0       8        0.0%
;!BANK3               58      0       0       9        0.0%
;!BITBANK2            50      0       0      10        0.0%
;!BANK2               50      0       0      11        0.0%
;!DATA                 0      0      11      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 21 in file "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\ADC\ADC.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_AD_Testing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\ADC\ADC.c"
	line	21
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\ADC\ADC.c"
	line	21
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l1252:	
# 23 "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\ADC\ADC.c"
nop ;# 
	line	24
# 24 "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\ADC\ADC.c"
clrwdt ;# 
psect	maintext
	line	26
	
l1254:	
;ADC.c: 26: TRISA = 0B00000010;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	27
;ADC.c: 27: ANSEL = 0B00000010;
	movlw	low(02h)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	32
	
l1256:	
;ADC.c: 31: {
;ADC.c: 32: AD_Testing(1,1,1);
	clrf	(AD_Testing@ad_ch)
	incf	(AD_Testing@ad_ch),f
	clrf	(AD_Testing@ad_lr)
	incf	(AD_Testing@ad_lr),f
	movlw	low(01h)
	fcall	_AD_Testing
	line	33
# 33 "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\ADC\ADC.c"
clrwdt ;# 
psect	maintext
	goto	l1256
	global	start
	ljmp	start
	opt stack 0
	line	35
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_AD_Testing

;; *************** function _AD_Testing *****************
;; Defined at:
;;		line 47 in file "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\ADC\ADC.c"
;; Parameters:    Size  Location     Type
;;  ad_fd           1    wreg     unsigned char 
;;  ad_ch           1    0[COMMON] unsigned char 
;;  ad_lr           1    1[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ad_fd           1    4[COMMON] unsigned char 
;;  data            2    6[COMMON] volatile unsigned int 
;;  i               1    5[COMMON] volatile unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/300
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	47
global __ptext1
__ptext1:	;psect for function _AD_Testing
psect	text1
	file	"E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\ADC\ADC.c"
	line	47
	global	__size_of_AD_Testing
	__size_of_AD_Testing	equ	__end_of_AD_Testing-_AD_Testing
	
_AD_Testing:	
;incstack = 0
	opt	stack 7
; Regs used in _AD_Testing: [wreg+status,2+status,0]
;AD_Testing@ad_fd stored from wreg
	movwf	(AD_Testing@ad_fd)
	line	53
	
l1192:	
;ADC.c: 49: static volatile unsigned char adtimes;
;ADC.c: 50: static volatile unsigned int admin,admax,adsum;
;ADC.c: 51: volatile unsigned int data;
;ADC.c: 53: volatile unsigned char i = 0;
	clrf	(AD_Testing@i)	;volatile
	line	55
	
l1194:	
;ADC.c: 55: if(!ad_lr)
	movf	((AD_Testing@ad_lr)),w
	btfss	status,2
	goto	u111
	goto	u110
u111:
	goto	l1198
u110:
	line	56
	
l1196:	
;ADC.c: 56: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(159)^080h	;volatile
	goto	l1200
	line	58
	
l1198:	
;ADC.c: 57: else
;ADC.c: 58: ADCON1 = 0x80;
	movlw	low(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	60
	
l1200:	
;ADC.c: 60: if(ad_ch & 0x10)
	btfss	(AD_Testing@ad_ch),(4)&7
	goto	u121
	goto	u120
u121:
	goto	l1204
u120:
	line	61
	
l1202:	
;ADC.c: 61: ADCON1 |= 0x40;
	bsf	(159)^080h+(6/8),(6)&7	;volatile
	line	63
	
l1204:	
;ADC.c: 63: ADCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(31)	;volatile
	line	64
	
l1206:	
;ADC.c: 64: ad_ch &= 0x0f;
	movlw	low(0Fh)
	andwf	(AD_Testing@ad_ch),f
	line	65
	
l1208:	
;ADC.c: 65: ADCON0 |= (unsigned char)(ad_fd << 6);
	movf	(AD_Testing@ad_fd),w
	movwf	(??_AD_Testing+0)+0
	rrf	(??_AD_Testing+0)+0,f
	rrf	(??_AD_Testing+0)+0,f
	rrf	(??_AD_Testing+0)+0,w
	andlw	0c0h
	iorwf	(31),f	;volatile
	line	66
	
l1210:	
;ADC.c: 66: ADCON0 |= (unsigned char)(ad_ch << 2);
	movf	(AD_Testing@ad_ch),w
	movwf	(??_AD_Testing+0)+0
	movlw	(02h)-1
u135:
	clrc
	rlf	(??_AD_Testing+0)+0,f
	addlw	-1
	skipz
	goto	u135
	clrc
	rlf	(??_AD_Testing+0)+0,w
	iorwf	(31),f	;volatile
	line	67
	
l1212:	
;ADC.c: 67: ADCON0 |= 0x01;
	bsf	(31)+(0/8),(0)&7	;volatile
	line	69
# 69 "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\ADC\ADC.c"
nop ;# 
	line	70
# 70 "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\ADC\ADC.c"
nop ;# 
psect	text1
	line	71
	
l1214:	
;ADC.c: 71: GODONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	73
;ADC.c: 73: while(GODONE)
	goto	l738
	
l739:	
	line	75
# 75 "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\ADC\ADC.c"
nop ;# 
	line	76
# 76 "E:\ZW PROJECT\DEMO程序\模板\79F系列_Demo(C语言)\CMS79F123程序（C版）\ADC\ADC.c"
nop ;# 
psect	text1
	line	77
;ADC.c: 77: if((--i) == 0)
	decfsz	(AD_Testing@i),f	;volatile
	goto	u141
	goto	u140
u141:
	goto	l738
u140:
	goto	l741
	line	79
	
l738:	
	line	73
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(249/8),(249)&7	;volatile
	goto	u151
	goto	u150
u151:
	goto	l739
u150:
	line	81
	
l1218:	
;ADC.c: 79: }
;ADC.c: 81: if(!ad_lr)
	movf	((AD_Testing@ad_lr)),w
	btfss	status,2
	goto	u161
	goto	u160
u161:
	goto	l1224
u160:
	line	83
	
l1220:	
;ADC.c: 82: {
;ADC.c: 83: data = (unsigned int)(ADRESH<<4);
	movf	(30),w	;volatile
	movwf	(AD_Testing@data)	;volatile
	clrf	(AD_Testing@data+1)	;volatile
	swapf	(AD_Testing@data),f	;volatile
	swapf	(AD_Testing@data+1),f	;volatile
	movlw	0f0h
	andwf	(AD_Testing@data+1),f	;volatile
	movf	(AD_Testing@data),w	;volatile
	andlw	0fh
	iorwf	(AD_Testing@data+1),f	;volatile
	movlw	0f0h
	andwf	(AD_Testing@data),f	;volatile
	line	84
	
l1222:	
;ADC.c: 84: data |= (unsigned int)(ADRESL>>4);
	bsf	status, 5	;RP0=1, select bank1
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	iorwf	(AD_Testing@data),f	;volatile
	line	85
;ADC.c: 85: }
	goto	l1226
	line	88
	
l1224:	
;ADC.c: 86: else
;ADC.c: 87: {
;ADC.c: 88: data = (unsigned int)(ADRESH<<8);
	movf	(30),w	;volatile
	movwf	(AD_Testing@data+1)	;volatile
	clrf	(AD_Testing@data)	;volatile
	line	89
;ADC.c: 89: data |= (unsigned int)ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	iorwf	(AD_Testing@data),f	;volatile
	line	92
	
l1226:	
;ADC.c: 90: }
;ADC.c: 92: if(adtimes == 0)
	movf	((AD_Testing@adtimes)),w	;volatile
	btfss	status,2
	goto	u171
	goto	u170
u171:
	goto	l1230
u170:
	line	94
	
l1228:	
;ADC.c: 93: {
;ADC.c: 94: admax = data;
	movf	(AD_Testing@data+1),w	;volatile
	movwf	(AD_Testing@admax+1)	;volatile
	movf	(AD_Testing@data),w	;volatile
	movwf	(AD_Testing@admax)	;volatile
	line	95
;ADC.c: 95: admin = data;
	movf	(AD_Testing@data+1),w	;volatile
	movwf	(AD_Testing@admin+1)	;volatile
	movf	(AD_Testing@data),w	;volatile
	movwf	(AD_Testing@admin)	;volatile
	line	96
;ADC.c: 96: }
	goto	l746
	line	97
	
l1230:	
;ADC.c: 97: else if(data > admax)
	movf	(AD_Testing@data+1),w	;volatile
	subwf	(AD_Testing@admax+1),w	;volatile
	skipz
	goto	u185
	movf	(AD_Testing@data),w	;volatile
	subwf	(AD_Testing@admax),w	;volatile
u185:
	skipnc
	goto	u181
	goto	u180
u181:
	goto	l1234
u180:
	line	99
	
l1232:	
;ADC.c: 98: {
;ADC.c: 99: admax = data;
	movf	(AD_Testing@data+1),w	;volatile
	movwf	(AD_Testing@admax+1)	;volatile
	movf	(AD_Testing@data),w	;volatile
	movwf	(AD_Testing@admax)	;volatile
	line	100
;ADC.c: 100: }
	goto	l746
	line	101
	
l1234:	
;ADC.c: 101: else if(data < admin)
	movf	(AD_Testing@admin+1),w	;volatile
	subwf	(AD_Testing@data+1),w	;volatile
	skipz
	goto	u195
	movf	(AD_Testing@admin),w	;volatile
	subwf	(AD_Testing@data),w	;volatile
u195:
	skipnc
	goto	u191
	goto	u190
u191:
	goto	l746
u190:
	line	103
	
l1236:	
;ADC.c: 102: {
;ADC.c: 103: admin = data;
	movf	(AD_Testing@data+1),w	;volatile
	movwf	(AD_Testing@admin+1)	;volatile
	movf	(AD_Testing@data),w	;volatile
	movwf	(AD_Testing@admin)	;volatile
	line	106
	
l746:	
;ADC.c: 104: }
;ADC.c: 106: adsum += data;
	movf	(AD_Testing@data),w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	addwf	(AD_Testing@adsum),f	;volatile
	skipnc
	incf	(AD_Testing@adsum+1),f	;volatile
	movf	(AD_Testing@data+1),w	;volatile
	addwf	(AD_Testing@adsum+1),f	;volatile
	line	107
	
l1238:	
;ADC.c: 107: if(++adtimes >= 10)
	movlw	low(0Ah)
	incf	(AD_Testing@adtimes),f	;volatile
	subwf	((AD_Testing@adtimes)),w	;volatile
	skipc
	goto	u201
	goto	u200
u201:
	goto	l741
u200:
	line	109
	
l1240:	
;ADC.c: 108: {
;ADC.c: 109: adsum -= admax;
	movf	(AD_Testing@admax),w	;volatile
	subwf	(AD_Testing@adsum),f	;volatile
	movf	(AD_Testing@admax+1),w	;volatile
	skipc
	decf	(AD_Testing@adsum+1),f	;volatile
	subwf	(AD_Testing@adsum+1),f	;volatile
	line	110
;ADC.c: 110: adsum -= admin;
	movf	(AD_Testing@admin),w	;volatile
	subwf	(AD_Testing@adsum),f	;volatile
	movf	(AD_Testing@admin+1),w	;volatile
	skipc
	decf	(AD_Testing@adsum+1),f	;volatile
	subwf	(AD_Testing@adsum+1),f	;volatile
	line	112
	
l1242:	
;ADC.c: 112: AD_Result = adsum >> 3;
	movf	(AD_Testing@adsum+1),w	;volatile
	movwf	(??_AD_Testing+0)+0+1
	movf	(AD_Testing@adsum),w	;volatile
	movwf	(??_AD_Testing+0)+0
	clrc
	rrf	(??_AD_Testing+0)+1,f
	rrf	(??_AD_Testing+0)+0,f
	clrc
	rrf	(??_AD_Testing+0)+1,f
	rrf	(??_AD_Testing+0)+0,f
	clrc
	rrf	(??_AD_Testing+0)+1,f
	rrf	(??_AD_Testing+0)+0,f
	movf	0+(??_AD_Testing+0)+0,w
	movwf	(_AD_Result)	;volatile
	movf	1+(??_AD_Testing+0)+0,w
	movwf	(_AD_Result+1)	;volatile
	line	114
	
l1244:	
;ADC.c: 114: adsum = 0;
	clrf	(AD_Testing@adsum)	;volatile
	clrf	(AD_Testing@adsum+1)	;volatile
	line	115
	
l1246:	
;ADC.c: 115: admin = 0;
	clrf	(AD_Testing@admin)	;volatile
	clrf	(AD_Testing@admin+1)	;volatile
	line	116
	
l1248:	
;ADC.c: 116: admax = 0;
	clrf	(AD_Testing@admax)	;volatile
	clrf	(AD_Testing@admax+1)	;volatile
	line	117
	
l1250:	
;ADC.c: 117: adtimes = 0;
	clrf	(AD_Testing@adtimes)	;volatile
	line	119
	
l741:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Testing
	__end_of_AD_Testing:
	signat	_AD_Testing,12409
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
