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
	FNCALL	_main,_Memory_Read
	FNCALL	_main,_Memory_Write
	FNROOT	_main
	global	_t
	global	_GIE
psect	text0,local,class=CODE,delta=2,merge=1
global __ptext0
__ptext0:
_GIE	set	95
	global	_RA0
_RA0	set	40
	global	_EEADR
_EEADR	set	144
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
	file	"SC8F577X_EEprom_Demo.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_t:
       ds      2

	file	"SC8F577X_EEprom_Demo.as"
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
?_Memory_Write:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	?_Memory_Read
?_Memory_Read:	; 2 bytes @ 0x0
	global	Memory_Write@Value
Memory_Write@Value:	; 1 bytes @ 0x0
	ds	1
??_Memory_Write:	; 1 bytes @ 0x1
	global	Memory_Write@Addr
Memory_Write@Addr:	; 1 bytes @ 0x1
	ds	2
??_Memory_Read:	; 1 bytes @ 0x3
	global	Memory_Read@Addr
Memory_Read@Addr:	; 1 bytes @ 0x3
	ds	1
??_main:	; 1 bytes @ 0x4
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      4       6
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
;! (0) _main                                                 0     0      0     109
;!                        _Memory_Read
;!                       _Memory_Write
;! ---------------------------------------------------------------------------------
;! (1) _Memory_Write                                         2     1      1      87
;!                                              0 COMMON     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) _Memory_Read                                          4     1      3      22
;!                                              0 COMMON     4     1      3
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Memory_Read
;!   _Memory_Write
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      4       6       1       42.9%
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
;!ABS                  0      0       6       8        0.0%
;!DATA                 0      0       6       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 15 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_EEPRom_Demo\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Memory_Read
;;		_Memory_Write
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_EEPRom_Demo\main.c"
	line	15
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_EEPRom_Demo\main.c"
	line	15
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	17
	
l1325:	
# 17 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_EEPRom_Demo\main.c"
nop ;# 
	line	18
# 18 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_EEPRom_Demo\main.c"
clrwdt ;# 
psect	maintext
	line	19
	
l1327:	
;main.c: 19: TRISA = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	21
	
l1329:	
;main.c: 21: Memory_Write(0x08,120);
	movlw	low(078h)
	movwf	(Memory_Write@Value)
	movlw	low(08h)
	fcall	_Memory_Write
	line	22
	
l1331:	
;main.c: 22: t = Memory_Read(0x08);
	movlw	low(08h)
	fcall	_Memory_Read
	movf	(1+(?_Memory_Read)),w
	movwf	(_t+1)	;volatile
	movf	(0+(?_Memory_Read)),w
	movwf	(_t)	;volatile
	line	23
	
l1333:	
;main.c: 23: if ( t!= 0x96 ) RA0 = 1;
		movlw	150
	xorwf	((_t)),w	;volatile
iorwf	((_t+1)),w	;volatile
	btfsc	status,2
	goto	u41
	goto	u40
u41:
	goto	l875
u40:
	
l1335:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(40/8),(40)&7	;volatile
	goto	l877
	line	24
	
l875:	
;main.c: 24: else RA0 = 0 ;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	line	25
;main.c: 25: while(1)
	
l877:	
	line	27
# 27 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_EEPRom_Demo\main.c"
clrwdt ;# 
psect	maintext
	goto	l877
	global	start
	ljmp	start
	opt stack 0
	line	29
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Memory_Write

;; *************** function _Memory_Write *****************
;; Defined at:
;;		line 40 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_EEPRom_Demo\main.c"
;; Parameters:    Size  Location     Type
;;  Addr            1    wreg     unsigned char 
;;  Value           1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Addr            1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         1       0       0       0
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
	line	40
global __ptext1
__ptext1:	;psect for function _Memory_Write
psect	text1
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_EEPRom_Demo\main.c"
	line	40
	global	__size_of_Memory_Write
	__size_of_Memory_Write	equ	__end_of_Memory_Write-_Memory_Write
	
_Memory_Write:	
;incstack = 0
	opt	stack 7
; Regs used in _Memory_Write: [wreg]
;Memory_Write@Addr stored from wreg
	movwf	(Memory_Write@Addr)
	line	43
	
l1301:	
;main.c: 43: EEADR = Addr;
	movf	(Memory_Write@Addr),w
	movwf	(144)^080h	;volatile
	line	44
	
l1303:	
;main.c: 44: EEPGD = 0;
	bcf	(1127/8)^080h,(1127)&7	;volatile
	line	47
;main.c: 47: EEDAT = Value;
	movf	(Memory_Write@Value),w
	movwf	(142)^080h	;volatile
	line	49
	
l1305:	
;main.c: 49: WREN = 1;
	bsf	(1122/8)^080h,(1122)&7	;volatile
	line	50
	
l1307:	
;main.c: 50: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	52
;main.c: 52: while(GIE) GIE = 0;
	goto	l883
	
l884:	
	bcf	(95/8),(95)&7	;volatile
	
l883:	
	btfsc	(95/8),(95)&7	;volatile
	goto	u31
	goto	u30
u31:
	goto	l1307
u30:
	
l885:	
	line	54
# 54 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_EEPRom_Demo\main.c"
clrwdt ;# 
psect	text1
	line	56
	
l1309:	
;main.c: 56: EECON2 = 0x55;
	movlw	low(055h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(141)^080h	;volatile
	line	57
;main.c: 57: EECON2 = 0xaa;
	movlw	low(0AAh)
	movwf	(141)^080h	;volatile
	line	58
	
l1311:	
;main.c: 58: WR = 1;
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	59
# 59 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_EEPRom_Demo\main.c"
nop ;# 
	line	60
# 60 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_EEPRom_Demo\main.c"
nop ;# 
psect	text1
	line	61
	
l1313:	
;main.c: 61: WREN = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1122/8)^080h,(1122)&7	;volatile
	line	62
	
l1315:	
;main.c: 62: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	64
	
l886:	
	return
	opt stack 0
GLOBAL	__end_of_Memory_Write
	__end_of_Memory_Write:
	signat	_Memory_Write,8313
	global	_Memory_Read

;; *************** function _Memory_Read *****************
;; Defined at:
;;		line 74 in file "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_EEPRom_Demo\main.c"
;; Parameters:    Size  Location     Type
;;  Addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Addr            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         3       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	74
global __ptext2
__ptext2:	;psect for function _Memory_Read
psect	text2
	file	"H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_EEPRom_Demo\main.c"
	line	74
	global	__size_of_Memory_Read
	__size_of_Memory_Read	equ	__end_of_Memory_Read-_Memory_Read
	
_Memory_Read:	
;incstack = 0
	opt	stack 7
; Regs used in _Memory_Read: [wreg]
;Memory_Read@Addr stored from wreg
	movwf	(Memory_Read@Addr)
	line	77
	
l1317:	
;main.c: 77: EEADR = Addr;
	movf	(Memory_Read@Addr),w
	movwf	(144)^080h	;volatile
	line	78
	
l1319:	
;main.c: 78: EEPGD = 0;
	bcf	(1127/8)^080h,(1127)&7	;volatile
	line	80
	
l1321:	
;main.c: 80: RD=1;
	bsf	(1120/8)^080h,(1120)&7	;volatile
	line	81
# 81 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_EEPRom_Demo\main.c"
nop ;# 
	line	82
# 82 "H:\MyDownloads\说明书&测试报告\开发包\SC8F577X开发包\SC8F577X_DEMO\SC8F577X_EEPRom_Demo\main.c"
nop ;# 
psect	text2
	line	84
;main.c: 84: return EEDAT;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(142)^080h,w	;volatile
	movwf	(?_Memory_Read)
	clrf	(?_Memory_Read+1)
	line	85
	
l889:	
	return
	opt stack 0
GLOBAL	__end_of_Memory_Read
	__end_of_Memory_Read:
	signat	_Memory_Read,4218
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
