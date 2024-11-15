opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	SC8F2892B
opt include "H:\MyDownloads\IDE_RAR\SCMCU_IDE_V2.00.11_Beta4\data\include\sc8f2892b.cgen.inc"
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
	FNCALL	_main,_Memory_Read
	FNCALL	_main,_Memory_Write
	FNCALL	_main,_Program_Read
	FNROOT	_main
	global	_tmp4
	global	_tmp4_absaddr
_tmp4_absaddr	set	0xF03
	global	_tmp3
	global	_tmp3_absaddr
_tmp3_absaddr	set	0xF02
	global	_tmp2
	global	_tmp2_absaddr
_tmp2_absaddr	set	0xF01
	global	_tmp1
	global	_tmp1_absaddr
_tmp1_absaddr	set	0xF00
	global	_tmp4
	global	_tmp4_absaddr
_tmp4_absaddr	set	0xF03
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
psect	_tmp4_text,class=CODE,delta=2,noexec
global __p_tmp4_text
__p_tmp4_text:
psect	strings
psect	_tmp4_text
_tmp4:
psect	strings
psect	_tmp4_text
psect	strings
psect	_tmp4_text
	retlw	0AAh
psect	strings
psect	_tmp4_text
	global __end_of_tmp4
psect	strings
psect	_tmp4_text
__end_of_tmp4:
	global	_tmp3
	global	_tmp3_absaddr
_tmp3_absaddr	set	0xF02
psect	strings
psect	_tmp3_text,class=CODE,delta=2,noexec
global __p_tmp3_text
__p_tmp3_text:
psect	strings
psect	_tmp3_text
_tmp3:
psect	strings
psect	_tmp3_text
psect	strings
psect	_tmp3_text
	retlw	0AAh
psect	strings
psect	_tmp3_text
	global __end_of_tmp3
psect	strings
psect	_tmp3_text
__end_of_tmp3:
	global	_tmp2
	global	_tmp2_absaddr
_tmp2_absaddr	set	0xF01
psect	strings
psect	_tmp2_text,class=CODE,delta=2,noexec
global __p_tmp2_text
__p_tmp2_text:
psect	strings
psect	_tmp2_text
_tmp2:
psect	strings
psect	_tmp2_text
psect	strings
psect	_tmp2_text
	retlw	0AAh
psect	strings
psect	_tmp2_text
	global __end_of_tmp2
psect	strings
psect	_tmp2_text
__end_of_tmp2:
	global	_tmp1
	global	_tmp1_absaddr
_tmp1_absaddr	set	0xF00
psect	strings
psect	_tmp1_text,class=CODE,delta=2,noexec
global __p_tmp1_text
__p_tmp1_text:
psect	strings
psect	_tmp1_text
_tmp1:
psect	strings
psect	_tmp1_text
psect	strings
psect	_tmp1_text
	retlw	0AAh
psect	strings
psect	_tmp1_text
	global __end_of_tmp1
psect	strings
psect	_tmp1_text
__end_of_tmp1:
	global	_read_data
	global	_t
	global	_read_rom_data
	global	_data
	global	_datanum
psect	nvCOMMON,class=COMMON,space=1,noexec
global __pnvCOMMON
__pnvCOMMON:
_datanum:
       ds      1

	global	_GIE
_GIE	set	95
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_EEADRH
_EEADRH	set	150
	global	_EEADR
_EEADR	set	144
	global	_EEDATH
_EEDATH	set	143
	global	_EEDAT
_EEDAT	set	142
	global	_EECON2
_EECON2	set	141
	global	_TRISA
_TRISA	set	133
	global	_RD
_RD	set	1120
	global	_WR
_WR	set	1121
	global	_WREN
_WREN	set	1122
	global	_EEPGD
_EEPGD	set	1127
; #config settings
	file	"EEPROM_Demo.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_read_data:
       ds      2

_t:
       ds      2

_read_rom_data:
       ds      1

_data:
       ds      1

	file	"EEPROM_Demo.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
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
?_Memory_Write:	; 1 bytes @ 0x0
?_Memory_Read:	; 1 bytes @ 0x0
??_Memory_Read:	; 1 bytes @ 0x0
?_Program_Read:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	Memory_Write@Value
Memory_Write@Value:	; 2 bytes @ 0x0
	global	Program_Read@P_Addr
Program_Read@P_Addr:	; 2 bytes @ 0x0
	ds	2
??_Memory_Write:	; 1 bytes @ 0x2
??_Program_Read:	; 1 bytes @ 0x2
	global	Memory_Write@Addr
Memory_Write@Addr:	; 1 bytes @ 0x2
	global	Memory_Read@Addr
Memory_Read@Addr:	; 1 bytes @ 0x2
	ds	1
??_main:	; 1 bytes @ 0x3
	global	main@read_addr
main@read_addr:	; 2 bytes @ 0x3
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         6
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5      12
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
;!    _main->_Memory_Read
;!    _main->_Memory_Write
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
;! (0) _main                                                 2     2      0     257
;!                                              3 COMMON     2     2      0
;!                        _Memory_Read
;!                       _Memory_Write
;!                       _Program_Read
;! ---------------------------------------------------------------------------------
;! (1) _Program_Read                                         2     0      2      98
;!                                              0 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! (1) _Memory_Write                                         3     1      2     120
;!                                              0 COMMON     3     1      2
;! ---------------------------------------------------------------------------------
;! (1) _Memory_Read                                          3     3      0      15
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Memory_Read
;!   _Memory_Write
;!   _Program_Read
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      5       C       1       85.7%
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
;!ABS                  0      0       C       8        0.0%
;!DATA                 0      0       C       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 23 in file "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_EEPRom_Demo\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  read_addr       2    3[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Memory_Read
;;		_Memory_Write
;;		_Program_Read
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_EEPRom_Demo\main.c"
	line	23
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_EEPRom_Demo\main.c"
	line	23
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	25
	
l1278:	
# 25 "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_EEPRom_Demo\main.c"
nop ;# 
	line	26
# 26 "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_EEPRom_Demo\main.c"
clrwdt ;# 
psect	maintext
	line	27
	
l1280:	
;main.c: 27: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	28
;main.c: 28: data=0;
	clrf	(_data)	;volatile
	line	47
;main.c: 47: while(1)
	
l771:	
	line	49
# 49 "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_EEPRom_Demo\main.c"
clrwdt ;# 
psect	maintext
	line	50
;main.c: 50: for(datanum=0;datanum<32;datanum++)
	clrf	(_datanum)	;volatile
	
l1282:	
	movlw	low(020h)
	subwf	(_datanum),w	;volatile
	skipc
	goto	u111
	goto	u110
u111:
	goto	l1286
u110:
	goto	l1296
	line	52
	
l1286:	
;main.c: 51: {
;main.c: 52: Memory_Write(datanum,0x55aa);
	movlw	0AAh
	movwf	(Memory_Write@Value)
	movlw	055h
	movwf	((Memory_Write@Value))+1
	movf	(_datanum),w	;volatile
	fcall	_Memory_Write
	line	53
	
l1288:	
;main.c: 53: Memory_Read(datanum);
	movf	(_datanum),w	;volatile
	fcall	_Memory_Read
	line	54
	
l1290:	
;main.c: 54: if(0x55aa == read_data)
		movlw	170
	xorwf	((_read_data)),w	;volatile
	movlw	85
	skipnz
	xorwf	((_read_data+1)),w	;volatile
	btfss	status,2
	goto	u121
	goto	u120
u121:
	goto	l774
u120:
	line	56
	
l1292:	
;main.c: 55: {
;main.c: 56: data++;
	incf	(_data),f	;volatile
	line	57
	
l774:	
	line	50
	incf	(_datanum),f	;volatile
	
l1294:	
	movlw	low(020h)
	subwf	(_datanum),w	;volatile
	skipc
	goto	u131
	goto	u130
u131:
	goto	l1286
u130:
	line	60
	
l1296:	
;main.c: 57: }
;main.c: 59: }
;main.c: 60: if(data == 32)
		movlw	32
	xorwf	((_data)),w	;volatile
	btfss	status,2
	goto	u141
	goto	u140
u141:
	goto	l775
u140:
	line	62
	
l1298:	
;main.c: 61: {
;main.c: 62: RA0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7	;volatile
	line	63
	
l1300:	
;main.c: 63: data=0;
	clrf	(_data)	;volatile
	line	64
;main.c: 64: }
	goto	l1302
	line	65
	
l775:	
;main.c: 65: else RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	67
	
l1302:	
;main.c: 67: for(datanum=0;datanum<4;datanum++)
	clrf	(_datanum)	;volatile
	
l1304:	
	movlw	low(04h)
	subwf	(_datanum),w	;volatile
	skipc
	goto	u151
	goto	u150
u151:
	goto	l1308
u150:
	goto	l1318
	line	69
	
l1308:	
;main.c: 68: {
;main.c: 69: unsigned int read_addr = 0x0f00;
	movlw	0
	movwf	(main@read_addr)
	movlw	0Fh
	movwf	((main@read_addr))+1
	line	70
;main.c: 70: read_addr = read_addr + datanum;
	movf	(_datanum),w	;volatile
	addwf	(main@read_addr),f
	skipnc
	incf	(main@read_addr+1),f
	line	71
	
l1310:	
;main.c: 71: Program_Read(read_addr);
	movf	(main@read_addr+1),w
	movwf	(Program_Read@P_Addr+1)
	movf	(main@read_addr),w
	movwf	(Program_Read@P_Addr)
	fcall	_Program_Read
	line	72
	
l1312:	
;main.c: 72: if(0xaa == read_rom_data)
		movlw	170
	xorwf	((_read_rom_data)),w	;volatile
	btfss	status,2
	goto	u161
	goto	u160
u161:
	goto	l779
u160:
	line	74
	
l1314:	
;main.c: 73: {
;main.c: 74: data++;
	incf	(_data),f	;volatile
	line	75
	
l779:	
	line	67
	incf	(_datanum),f	;volatile
	
l1316:	
	movlw	low(04h)
	subwf	(_datanum),w	;volatile
	skipc
	goto	u171
	goto	u170
u171:
	goto	l1308
u170:
	line	78
	
l1318:	
;main.c: 75: }
;main.c: 77: }
;main.c: 78: if(data == 4)
		movlw	4
	xorwf	((_data)),w	;volatile
	btfss	status,2
	goto	u181
	goto	u180
u181:
	goto	l780
u180:
	line	80
	
l1320:	
;main.c: 79: {
;main.c: 80: RA1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(41/8),(41)&7	;volatile
	line	81
	
l1322:	
;main.c: 81: data=0;
	clrf	(_data)	;volatile
	line	82
;main.c: 82: }
	goto	l771
	line	83
	
l780:	
;main.c: 83: else RA1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(41/8),(41)&7	;volatile
	goto	l771
	global	start
	ljmp	start
	opt stack 0
	line	86
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Program_Read

;; *************** function _Program_Read *****************
;; Defined at:
;;		line 152 in file "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_EEPRom_Demo\main.c"
;; Parameters:    Size  Location     Type
;;  P_Addr          2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	152
global __ptext1
__ptext1:	;psect for function _Program_Read
psect	text1
	file	"J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_EEPRom_Demo\main.c"
	line	152
	global	__size_of_Program_Read
	__size_of_Program_Read	equ	__end_of_Program_Read-_Program_Read
	
_Program_Read:	
;incstack = 0
	opt	stack 7
; Regs used in _Program_Read: [wreg]
	line	155
	
l1272:	
;main.c: 155: EEADR = P_Addr & 0x00ff;
	movf	(Program_Read@P_Addr),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(144)^080h	;volatile
	line	156
;main.c: 156: EEADRH = (P_Addr & 0xff00)>>8;
	movf	0+(Program_Read@P_Addr)+01h,w
	movwf	(150)^080h	;volatile
	line	158
	
l1274:	
;main.c: 158: EEPGD = 1;
	bsf	(1127/8)^080h,(1127)&7	;volatile
	line	160
	
l1276:	
;main.c: 160: RD=1;
	bsf	(1120/8)^080h,(1120)&7	;volatile
	line	161
# 161 "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_EEPRom_Demo\main.c"
nop ;# 
	line	162
# 162 "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_EEPRom_Demo\main.c"
nop ;# 
psect	text1
	line	164
;main.c: 164: read_rom_data = EEDAT;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(142)^080h,w	;volatile
	movwf	(_read_rom_data)	;volatile
	line	166
	
l796:	
	return
	opt stack 0
GLOBAL	__end_of_Program_Read
	__end_of_Program_Read:
	signat	_Program_Read,4217
	global	_Memory_Write

;; *************** function _Memory_Write *****************
;; Defined at:
;;		line 97 in file "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_EEPRom_Demo\main.c"
;; Parameters:    Size  Location     Type
;;  Addr            1    wreg     unsigned char 
;;  Value           2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  Addr            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         1       0       0       0
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
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	97
global __ptext2
__ptext2:	;psect for function _Memory_Write
psect	text2
	file	"J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_EEPRom_Demo\main.c"
	line	97
	global	__size_of_Memory_Write
	__size_of_Memory_Write	equ	__end_of_Memory_Write-_Memory_Write
	
_Memory_Write:	
;incstack = 0
	opt	stack 7
; Regs used in _Memory_Write: [wreg]
;Memory_Write@Addr stored from wreg
	movwf	(Memory_Write@Addr)
	line	100
	
l1254:	
# 100 "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_EEPRom_Demo\main.c"
clrwdt ;# 
psect	text2
	line	101
	
l1256:	
;main.c: 101: EEADR = Addr;
	movf	(Memory_Write@Addr),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(144)^080h	;volatile
	line	102
	
l1258:	
;main.c: 102: EEPGD = 0;
	bcf	(1127/8)^080h,(1127)&7	;volatile
	line	104
;main.c: 104: EEDAT = Value & 0x00ff;
	movf	(Memory_Write@Value),w
	movwf	(142)^080h	;volatile
	line	105
;main.c: 105: EEDATH = (Value & 0xff00)>>8;
	movf	0+(Memory_Write@Value)+01h,w
	movwf	(143)^080h	;volatile
	line	107
	
l1260:	
;main.c: 107: WREN = 1;
	bsf	(1122/8)^080h,(1122)&7	;volatile
	line	108
	
l1262:	
;main.c: 108: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	110
;main.c: 110: while(GIE) GIE = 0;
	
l787:	
	btfsc	(95/8),(95)&7	;volatile
	goto	u101
	goto	u100
u101:
	goto	l1262
u100:
	line	112
	
l1264:	
;main.c: 112: EECON2 = 0x55;
	movlw	low(055h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(141)^080h	;volatile
	line	113
;main.c: 113: EECON2 = 0xaa;
	movlw	low(0AAh)
	movwf	(141)^080h	;volatile
	line	114
	
l1266:	
;main.c: 114: WR = 1;
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	115
# 115 "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_EEPRom_Demo\main.c"
nop ;# 
	line	116
# 116 "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_EEPRom_Demo\main.c"
nop ;# 
psect	text2
	line	117
	
l1268:	
;main.c: 117: WREN = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1122/8)^080h,(1122)&7	;volatile
	line	118
	
l1270:	
;main.c: 118: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	120
	
l790:	
	return
	opt stack 0
GLOBAL	__end_of_Memory_Write
	__end_of_Memory_Write:
	signat	_Memory_Write,8313
	global	_Memory_Read

;; *************** function _Memory_Read *****************
;; Defined at:
;;		line 130 in file "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_EEPRom_Demo\main.c"
;; Parameters:    Size  Location     Type
;;  Addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Addr            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, btemp+1
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          2       0       0       0
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
	line	130
global __ptext3
__ptext3:	;psect for function _Memory_Read
psect	text3
	file	"J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_EEPRom_Demo\main.c"
	line	130
	global	__size_of_Memory_Read
	__size_of_Memory_Read	equ	__end_of_Memory_Read-_Memory_Read
	
_Memory_Read:	
;incstack = 0
	opt	stack 7
; Regs used in _Memory_Read: [wreg+btemp+1]
;Memory_Read@Addr stored from wreg
	movwf	(Memory_Read@Addr)
	line	133
	
l1194:	
;main.c: 133: EEADR = Addr;
	movf	(Memory_Read@Addr),w
	movwf	(144)^080h	;volatile
	line	134
	
l1196:	
;main.c: 134: EEPGD = 0;
	bcf	(1127/8)^080h,(1127)&7	;volatile
	line	136
	
l1198:	
;main.c: 136: RD=1;
	bsf	(1120/8)^080h,(1120)&7	;volatile
	line	137
# 137 "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_EEPRom_Demo\main.c"
nop ;# 
	line	138
# 138 "J:\yun_down\SC8F289XB开发包\SC8F289XB_DEMO_C\SC8F289XB_EEPRom_Demo\main.c"
nop ;# 
psect	text3
	line	140
;main.c: 140: read_data=EEDAT;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(142)^080h,w	;volatile
	movwf	(_read_data)	;volatile
	clrf	(_read_data+1)	;volatile
	line	141
	
l1200:	
;main.c: 141: read_data= read_data | (int)(EEDATH<<8);
	movf	(143)^080h,w	;volatile
	movwf	(??_Memory_Read+0)+0
	clrf	(??_Memory_Read+0)+0+1
	movf	(??_Memory_Read+0)+0,w
	movwf	(??_Memory_Read+0)+1
	clrf	(??_Memory_Read+0)+0
	movf	0+(??_Memory_Read+0)+0,w
	iorwf	(_read_data),f	;volatile
	movf	1+(??_Memory_Read+0)+0,w
	iorwf	(_read_data+1),f	;volatile
	line	143
	
l793:	
	return
	opt stack 0
GLOBAL	__end_of_Memory_Read
	__end_of_Memory_Read:
	signat	_Memory_Read,4217
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
