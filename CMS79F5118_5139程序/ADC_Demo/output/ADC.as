opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	79F5139
opt include "C:\Edward_work_FILE\work_file\开发文件\中微开发工具\CMS_IDE_V2.03.18_Beta3\data\include\79f5139.cgen.inc"
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
; #config settings
	file	"ADC.as"
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

	file	"ADC.as"
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
;! (0) _main                                                 0     0      0     356
;!                         _AD_Testing
;! ---------------------------------------------------------------------------------
;! (1) _AD_Testing                                           8     6      2     356
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
;;		line 22 in file "C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\ADC_Demo\ADC.c"
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
	file	"C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\ADC_Demo\ADC.c"
	line	22
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\ADC_Demo\ADC.c"
	line	22
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	24
	
l1239:	
# 24 "C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\ADC_Demo\ADC.c"
nop ;# 
	line	25
# 25 "C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\ADC_Demo\ADC.c"
clrwdt ;# 
psect	maintext
	line	27
	
l1241:	
;ADC.c: 27: TRISA = 0B00000010;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	31
	
l1243:	
;ADC.c: 30: {
;ADC.c: 31: AD_Testing(1,1,1);
	clrf	(AD_Testing@ad_ch)
	incf	(AD_Testing@ad_ch),f
	clrf	(AD_Testing@ad_lr)
	incf	(AD_Testing@ad_lr),f
	movlw	low(01h)
	fcall	_AD_Testing
	line	32
# 32 "C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\ADC_Demo\ADC.c"
clrwdt ;# 
psect	maintext
	goto	l1243
	global	start
	ljmp	start
	opt stack 0
	line	34
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_AD_Testing

;; *************** function _AD_Testing *****************
;; Defined at:
;;		line 48 in file "C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\ADC_Demo\ADC.c"
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
;;		On entry : 0/100
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
	line	48
global __ptext1
__ptext1:	;psect for function _AD_Testing
psect	text1
	file	"C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\ADC_Demo\ADC.c"
	line	48
	global	__size_of_AD_Testing
	__size_of_AD_Testing	equ	__end_of_AD_Testing-_AD_Testing
	
_AD_Testing:	
;incstack = 0
	opt	stack 7
; Regs used in _AD_Testing: [wreg+status,2+status,0]
;AD_Testing@ad_fd stored from wreg
	movwf	(AD_Testing@ad_fd)
	line	53
	
l1185:	
;ADC.c: 50: static volatile unsigned char adtimes;
;ADC.c: 51: static volatile unsigned int admin,admax,adsum;
;ADC.c: 52: volatile unsigned int data;
;ADC.c: 53: volatile unsigned char i = 0;
	clrf	(AD_Testing@i)	;volatile
	line	56
	
l1187:	
;ADC.c: 56: if(!ad_lr)
	movf	((AD_Testing@ad_lr)),w
	btfss	status,2
	goto	u101
	goto	u100
u101:
	goto	l1191
u100:
	line	57
	
l1189:	
;ADC.c: 57: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(159)^080h	;volatile
	goto	l1193
	line	59
	
l1191:	
;ADC.c: 58: else
;ADC.c: 59: ADCON1 = 0x80;
	movlw	low(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	61
	
l1193:	
;ADC.c: 61: ADCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(31)	;volatile
	line	62
	
l1195:	
;ADC.c: 62: ADCON0 |= (unsigned char)(ad_fd << 6);
	movf	(AD_Testing@ad_fd),w
	movwf	(??_AD_Testing+0)+0
	rrf	(??_AD_Testing+0)+0,f
	rrf	(??_AD_Testing+0)+0,f
	rrf	(??_AD_Testing+0)+0,w
	andlw	0c0h
	iorwf	(31),f	;volatile
	line	63
	
l1197:	
;ADC.c: 63: ADCON0 |= (unsigned char)(ad_ch << 2);
	movf	(AD_Testing@ad_ch),w
	movwf	(??_AD_Testing+0)+0
	movlw	(02h)-1
u115:
	clrc
	rlf	(??_AD_Testing+0)+0,f
	addlw	-1
	skipz
	goto	u115
	clrc
	rlf	(??_AD_Testing+0)+0,w
	iorwf	(31),f	;volatile
	line	64
	
l1199:	
;ADC.c: 64: ADCON0 |= 0x01;
	bsf	(31)+(0/8),(0)&7	;volatile
	line	66
# 66 "C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\ADC_Demo\ADC.c"
nop ;# 
	line	67
# 67 "C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\ADC_Demo\ADC.c"
nop ;# 
psect	text1
	line	68
	
l1201:	
;ADC.c: 68: GODONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	70
;ADC.c: 70: while(GODONE)
	goto	l737
	
l738:	
	line	72
# 72 "C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\ADC_Demo\ADC.c"
nop ;# 
	line	73
# 73 "C:\Edward_work_FILE\work_file\开发文件\雾化器\CMS79F5139_VER\雾化器开发包20201203\CMS79F5118_5139程序\ADC_Demo\ADC.c"
nop ;# 
psect	text1
	line	74
;ADC.c: 74: if(0 == (--i))
	decfsz	(AD_Testing@i),f	;volatile
	goto	u121
	goto	u120
u121:
	goto	l737
u120:
	goto	l740
	line	76
	
l737:	
	line	70
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(249/8),(249)&7	;volatile
	goto	u131
	goto	u130
u131:
	goto	l738
u130:
	line	78
	
l1205:	
;ADC.c: 76: }
;ADC.c: 78: if(!ad_lr)
	movf	((AD_Testing@ad_lr)),w
	btfss	status,2
	goto	u141
	goto	u140
u141:
	goto	l1211
u140:
	line	80
	
l1207:	
;ADC.c: 79: {
;ADC.c: 80: data = (unsigned int)(ADRESH<<4);
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
	line	81
	
l1209:	
;ADC.c: 81: data |= (unsigned int)(ADRESL>>4);
	bsf	status, 5	;RP0=1, select bank1
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	iorwf	(AD_Testing@data),f	;volatile
	line	82
;ADC.c: 82: }
	goto	l1213
	line	85
	
l1211:	
;ADC.c: 83: else
;ADC.c: 84: {
;ADC.c: 85: data = (unsigned int)(ADRESH<<8);
	movf	(30),w	;volatile
	movwf	(AD_Testing@data+1)	;volatile
	clrf	(AD_Testing@data)	;volatile
	line	86
;ADC.c: 86: data |= (unsigned int)ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	iorwf	(AD_Testing@data),f	;volatile
	line	89
	
l1213:	
;ADC.c: 87: }
;ADC.c: 89: if(0 == adtimes)
	movf	((AD_Testing@adtimes)),w	;volatile
	btfss	status,2
	goto	u151
	goto	u150
u151:
	goto	l1217
u150:
	line	91
	
l1215:	
;ADC.c: 90: {
;ADC.c: 91: admax = data;
	movf	(AD_Testing@data+1),w	;volatile
	movwf	(AD_Testing@admax+1)	;volatile
	movf	(AD_Testing@data),w	;volatile
	movwf	(AD_Testing@admax)	;volatile
	line	92
;ADC.c: 92: admin = data;
	movf	(AD_Testing@data+1),w	;volatile
	movwf	(AD_Testing@admin+1)	;volatile
	movf	(AD_Testing@data),w	;volatile
	movwf	(AD_Testing@admin)	;volatile
	line	93
;ADC.c: 93: }
	goto	l745
	line	94
	
l1217:	
;ADC.c: 94: else if(data > admax)
	movf	(AD_Testing@data+1),w	;volatile
	subwf	(AD_Testing@admax+1),w	;volatile
	skipz
	goto	u165
	movf	(AD_Testing@data),w	;volatile
	subwf	(AD_Testing@admax),w	;volatile
u165:
	skipnc
	goto	u161
	goto	u160
u161:
	goto	l1221
u160:
	line	96
	
l1219:	
;ADC.c: 95: {
;ADC.c: 96: admax = data;
	movf	(AD_Testing@data+1),w	;volatile
	movwf	(AD_Testing@admax+1)	;volatile
	movf	(AD_Testing@data),w	;volatile
	movwf	(AD_Testing@admax)	;volatile
	line	97
;ADC.c: 97: }
	goto	l745
	line	98
	
l1221:	
;ADC.c: 98: else if(data < admin)
	movf	(AD_Testing@admin+1),w	;volatile
	subwf	(AD_Testing@data+1),w	;volatile
	skipz
	goto	u175
	movf	(AD_Testing@admin),w	;volatile
	subwf	(AD_Testing@data),w	;volatile
u175:
	skipnc
	goto	u171
	goto	u170
u171:
	goto	l745
u170:
	line	100
	
l1223:	
;ADC.c: 99: {
;ADC.c: 100: admin = data;
	movf	(AD_Testing@data+1),w	;volatile
	movwf	(AD_Testing@admin+1)	;volatile
	movf	(AD_Testing@data),w	;volatile
	movwf	(AD_Testing@admin)	;volatile
	line	103
	
l745:	
;ADC.c: 101: }
;ADC.c: 103: adsum += data;
	movf	(AD_Testing@data),w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	addwf	(AD_Testing@adsum),f	;volatile
	skipnc
	incf	(AD_Testing@adsum+1),f	;volatile
	movf	(AD_Testing@data+1),w	;volatile
	addwf	(AD_Testing@adsum+1),f	;volatile
	line	104
	
l1225:	
;ADC.c: 104: if(++adtimes >= 10)
	movlw	low(0Ah)
	incf	(AD_Testing@adtimes),f	;volatile
	subwf	((AD_Testing@adtimes)),w	;volatile
	skipc
	goto	u181
	goto	u180
u181:
	goto	l740
u180:
	line	106
	
l1227:	
;ADC.c: 105: {
;ADC.c: 106: adsum -= admax;
	movf	(AD_Testing@admax),w	;volatile
	subwf	(AD_Testing@adsum),f	;volatile
	movf	(AD_Testing@admax+1),w	;volatile
	skipc
	decf	(AD_Testing@adsum+1),f	;volatile
	subwf	(AD_Testing@adsum+1),f	;volatile
	line	107
;ADC.c: 107: adsum -= admin;
	movf	(AD_Testing@admin),w	;volatile
	subwf	(AD_Testing@adsum),f	;volatile
	movf	(AD_Testing@admin+1),w	;volatile
	skipc
	decf	(AD_Testing@adsum+1),f	;volatile
	subwf	(AD_Testing@adsum+1),f	;volatile
	line	109
	
l1229:	
;ADC.c: 109: AD_Result = adsum >> 3;
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
	line	111
	
l1231:	
;ADC.c: 111: adsum = 0;
	clrf	(AD_Testing@adsum)	;volatile
	clrf	(AD_Testing@adsum+1)	;volatile
	line	112
	
l1233:	
;ADC.c: 112: admin = 0;
	clrf	(AD_Testing@admin)	;volatile
	clrf	(AD_Testing@admin+1)	;volatile
	line	113
	
l1235:	
;ADC.c: 113: admax = 0;
	clrf	(AD_Testing@admax)	;volatile
	clrf	(AD_Testing@admax+1)	;volatile
	line	114
	
l1237:	
;ADC.c: 114: adtimes = 0;
	clrf	(AD_Testing@adtimes)	;volatile
	line	116
	
l740:	
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
