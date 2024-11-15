opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	79F5135
opt include "C:\mcuproject\scm\CMS_IDE_V2.03.26\CMS_IDE_V2.03.26\data\include\79f5135.cgen.inc"
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
	FNCALL	_main,_Delay_nms
	FNCALL	_main,_Init_ic
	FNCALL	_main,_Init_ram
	FNCALL	_main,_Pwm_Test
	FNCALL	_main,_Set_CCP_PWM
	FNCALL	_main,_Set_Usart_Async
	FNCALL	_main,_Set_Work
	FNCALL	_main,_Sys_set
	FNCALL	_main,_checkVoll
	FNCALL	_main,_chrgCtr
	FNCALL	_main,_closePWM
	FNCALL	_main,_keyCtr
	FNCALL	_main,_uartSendCtr
	FNCALL	_keyCtr,_keyRead
	FNCALL	_keyCtr,_keyRead2
	FNCALL	_keyCtr,_keyRead3
	FNCALL	_Pwm_Test,_Test_Pwm
	FNCALL	_Test_Pwm,_Get_CUR_Dat
	FNCALL	_Test_Pwm,_PFG_read_fst
	FNCALL	_Test_Pwm,_Test_PWM_Fst
	FNCALL	_Test_Pwm,_Test_Pwm_Cur
	FNCALL	_Test_Pwm,_Test_water
	FNCALL	_Test_Pwm,_Work_RAM_CLR
	FNCALL	_Test_Pwm,_YTPFG_Flash
	FNCALL	_Test_PWM_Fst,_Test_Pwm_Cur
	FNCALL	_Test_PWM_Fst,_YTPFG_Flash
	FNCALL	_Test_Pwm_Cur,_Pwm_add
	FNCALL	_Test_Pwm_Cur,_Pwm_dec
	FNCALL	_PFG_read_fst,_Set_jiyi_re
	FNCALL	_Get_CUR_Dat,___awdiv
	FNCALL	_Delay_nms,_Delay
	FNROOT	_main
	FNCALL	_time0,_Set_Pwm_Onoff
	FNCALL	intlevel1,_time0
	global	intlevel1
	FNROOT	intlevel1
	global	_pfg_select
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\WHQ_TP_ZPGS.h"
	line	179
_pfg_select:
	retlw	02h
	global __end_of_pfg_select
__end_of_pfg_select:
psect	strings
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\WHQ_TP_ZPGS.h"
	line	195
_curset:
	retlw	01Eh
	global __end_of_curset
__end_of_curset:
psect	strings
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\WHQ_TP_ZPGS.h"
	line	181
_Cur_Adcon:
	retlw	04h
	global __end_of_Cur_Adcon
__end_of_Cur_Adcon:
	global	_pfg_select
	global	_pfgonetemp
	global	_whFlag
	global	_currDuty
	global	Test_Pwm@curokf1
	global	Test_water@watnof
	global	Set_Pwm_Onoff@adonf
	global	_PfgChangef
	global	_curupf
	global	_onoff_fst
	global	_PFGchgf
	global	_curokf
	global	_ponecf
	global	_pwmtonf
	global	_pwmtf1
	global	_pwmtf
	global	_on_off
	global	_onoff
	global	_errff
	global	_errf
	global	Test_water@curstrold
	global	_pwmlv
	global	_pwmold
	global	_cursum
	global	_pwmnold
	global	_pwmlst
	global	_pwmfst
	global	_adonetemp
	global	AD_Testing@adsum
	global	AD_Testing@admax
	global	AD_Testing@admin
	global	_AD_Result
	global	Test_Pwm@ondly
	global	Set_Pwm_Onoff@funold
	global	Set_Pwm_Onoff@cur_adcl
	global	Set_Pwm_Onoff@pwmcl
	global	Test_Pwm_Cur@curdowncl
	global	Test_Pwm_Cur@curupcl
	global	_curmax
	global	_pwmlc
	global	_pwmhc
	global	_whavecl
	global	_wnoncl
	global	_Ytzpcl
	global	_curokcl
	global	_cur_addatold2
	global	_cur_addatold1
	global	_cur_addatold0
	global	_curdownc
	global	_curupc
	global	_ponesec
	global	_cur_addat
	global	AD_Testing@adtimes
	global	_ganshaoCheckTime
	global	_rececount
	global	_chrgFullTime
	global	_chrgFullFlag
	global	_longKey3PressFlag
	global	_longKeyPressFlag
	global	_keyCount3
	global	_keyCount2
	global	_chrgStep
	global	_led2Step
	global	_led1Step
	global	_sendcount
	global	_waitSendTime
	global	_keyCount
	global	_subTime
	global	_addTime
	global	_tcount
	global	_Recebuffer
	global	_Sendbuffer
	global	Test_water@strupc
	global	Set_Pwm_Onoff@cursumt
	global	_chrgGreenLedTime
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_RCREG
_RCREG	set	26
	global	_TXREG
_TXREG	set	25
	global	_T2CON
_T2CON	set	18
	global	_PIR2
_PIR2	set	13
	global	_PIR1
_PIR1	set	12
	global	_INTCON
_INTCON	set	11
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_GODONE
_GODONE	set	249
	global	_OERR
_OERR	set	193
	global	_CREN
_CREN	set	196
	global	_RX9EN
_RX9EN	set	198
	global	_SPEN
_SPEN	set	199
	global	_TMR2IF
_TMR2IF	set	97
	global	_RCIF
_RCIF	set	101
	global	_GIE
_GIE	set	95
	global	_PFGSTOP
_PFGSTOP	set	136
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_SPBRG
_SPBRG	set	153
	global	_IOCB
_IOCB	set	150
	global	_WPUB
_WPUB	set	149
	global	_PWM23DT
_PWM23DT	set	148
	global	_PWM01DT
_PWM01DT	set	147
	global	_PR2
_PR2	set	146
	global	_OSCCON
_OSCCON	set	143
	global	_PIE2
_PIE2	set	141
	global	_PIE1
_PIE1	set	140
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_TRMT
_TRMT	set	1217
	global	_SCKP
_SCKP	set	1219
	global	_SYNC
_SYNC	set	1220
	global	_TXEN
_TXEN	set	1221
	global	_TX9EN
_TX9EN	set	1222
	global	_TXIE
_TXIE	set	1124
	global	_RCIE
_RCIE	set	1125
	global	_PFGCON1
_PFGCON1	set	286
	global	_PFGCON
_PFGCON	set	283
	global	_PFGADJ
_PFGADJ	set	281
	global	_PFGDATA1
_PFGDATA1	set	287
	global	_PWMD01H
_PWMD01H	set	284
	global	_EEADR
_EEADR	set	269
	global	_EEDAT
_EEDAT	set	268
	global	_PWMCON2
_PWMCON2	set	265
	global	_PWMCON1
_PWMCON1	set	264
	global	_PWMCON0
_PWMCON0	set	263
	global	_WDTCON
_WDTCON	set	261
	global	_PWMD1L
_PWMD1L	set	404
	global	_PWMT4L
_PWMT4L	set	401
	global	_PWMTH
_PWMTH	set	400
	global	_PWMTL
_PWMTL	set	399
	global	_WPUA
_WPUA	set	398
	global	_RD
_RD	set	3168
	global	_EEPGD
_EEPGD	set	3175
; #config settings
	file	"CMS-TPWHQ-ZPGS.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
Test_Pwm@curokf1:
       ds      1

Test_water@watnof:
       ds      1

Set_Pwm_Onoff@adonf:
       ds      1

_PfgChangef:
       ds      1

_curupf:
       ds      1

_onoff_fst:
       ds      1

_PFGchgf:
       ds      1

_curokf:
       ds      1

_ponecf:
       ds      1

_pwmtonf:
       ds      1

_pwmtf1:
       ds      1

_pwmtf:
       ds      1

_on_off:
       ds      1

_onoff:
       ds      1

_errff:
       ds      1

_errf:
       ds      1

psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_pfgonetemp:
       ds      2

_whFlag:
       ds      1

_currDuty:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
Test_water@curstrold:
       ds      2

_pwmlv:
       ds      2

_pwmold:
       ds      2

_cursum:
       ds      2

_pwmnold:
       ds      2

_pwmlst:
       ds      2

_pwmfst:
       ds      2

_adonetemp:
       ds      2

AD_Testing@adsum:
       ds      2

AD_Testing@admax:
       ds      2

AD_Testing@admin:
       ds      2

_AD_Result:
       ds      2

Test_Pwm@ondly:
       ds      1

Set_Pwm_Onoff@funold:
       ds      1

Set_Pwm_Onoff@cur_adcl:
       ds      1

Set_Pwm_Onoff@pwmcl:
       ds      1

Test_Pwm_Cur@curdowncl:
       ds      1

Test_Pwm_Cur@curupcl:
       ds      1

_curmax:
       ds      1

_pwmlc:
       ds      1

_pwmhc:
       ds      1

_whavecl:
       ds      1

_wnoncl:
       ds      1

_Ytzpcl:
       ds      1

_curokcl:
       ds      1

_cur_addatold2:
       ds      1

_cur_addatold1:
       ds      1

_cur_addatold0:
       ds      1

_curdownc:
       ds      1

_curupc:
       ds      1

_ponesec:
       ds      1

_cur_addat:
       ds      1

AD_Testing@adtimes:
       ds      1

_ganshaoCheckTime:
       ds      1

_rececount:
       ds      1

_chrgFullTime:
       ds      1

_chrgFullFlag:
       ds      1

_longKey3PressFlag:
       ds      1

_longKeyPressFlag:
       ds      1

_keyCount3:
       ds      1

_keyCount2:
       ds      1

_chrgStep:
       ds      1

_led2Step:
       ds      1

_led1Step:
       ds      1

_sendcount:
       ds      1

_waitSendTime:
       ds      1

_keyCount:
       ds      1

_subTime:
       ds      1

_addTime:
       ds      1

_tcount:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_Recebuffer:
       ds      4

_Sendbuffer:
       ds      4

Test_water@strupc:
       ds      2

Set_Pwm_Onoff@cursumt:
       ds      2

_chrgGreenLedTime:
       ds      2

	file	"CMS-TPWHQ-ZPGS.as"
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

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
	clrf	((__pbitbssCOMMON/8)+1)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+03Eh)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+0Eh)
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
?_Set_jiyi_re:	; 1 bytes @ 0x0
?_Test_Pwm:	; 1 bytes @ 0x0
?_Set_Pwm_Onoff:	; 1 bytes @ 0x0
??_Set_Pwm_Onoff:	; 1 bytes @ 0x0
?_Set_Usart_Async:	; 1 bytes @ 0x0
?_Set_CCP_PWM:	; 1 bytes @ 0x0
?_checkVoll:	; 1 bytes @ 0x0
?_closePWM:	; 1 bytes @ 0x0
?_keyCtr:	; 1 bytes @ 0x0
?_chrgCtr:	; 1 bytes @ 0x0
?_uartSendCtr:	; 1 bytes @ 0x0
?_Init_ic:	; 1 bytes @ 0x0
?_Init_ram:	; 1 bytes @ 0x0
?_Sys_set:	; 1 bytes @ 0x0
?_Pwm_Test:	; 1 bytes @ 0x0
?_Set_Work:	; 1 bytes @ 0x0
?_time0:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_keyRead:	; 1 bytes @ 0x0
?_keyRead2:	; 1 bytes @ 0x0
?_keyRead3:	; 1 bytes @ 0x0
?_Test_Pwm_Cur:	; 1 bytes @ 0x0
?_PFG_read_fst:	; 1 bytes @ 0x0
?_Work_RAM_CLR:	; 1 bytes @ 0x0
?_Get_CUR_Dat:	; 1 bytes @ 0x0
?_YTPFG_Flash:	; 1 bytes @ 0x0
?_Test_PWM_Fst:	; 1 bytes @ 0x0
?_Test_water:	; 1 bytes @ 0x0
	ds	1
	global	Set_Pwm_Onoff@funod
Set_Pwm_Onoff@funod:	; 1 bytes @ 0x1
	ds	1
	global	Set_Pwm_Onoff@fun
Set_Pwm_Onoff@fun:	; 1 bytes @ 0x2
	ds	1
??_time0:	; 1 bytes @ 0x3
	ds	3
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_Set_jiyi_re:	; 1 bytes @ 0x0
??_Set_Usart_Async:	; 1 bytes @ 0x0
?_AD_Testing:	; 1 bytes @ 0x0
??_Set_CCP_PWM:	; 1 bytes @ 0x0
??_checkVoll:	; 1 bytes @ 0x0
??_closePWM:	; 1 bytes @ 0x0
??_chrgCtr:	; 1 bytes @ 0x0
??_uartSendCtr:	; 1 bytes @ 0x0
?_Delay:	; 1 bytes @ 0x0
??_Init_ic:	; 1 bytes @ 0x0
??_Init_ram:	; 1 bytes @ 0x0
??_Sys_set:	; 1 bytes @ 0x0
??_Set_Work:	; 1 bytes @ 0x0
??_keyRead:	; 1 bytes @ 0x0
??_keyRead2:	; 1 bytes @ 0x0
??_keyRead3:	; 1 bytes @ 0x0
?_Pwm_add:	; 1 bytes @ 0x0
?_Pwm_dec:	; 1 bytes @ 0x0
??_Work_RAM_CLR:	; 1 bytes @ 0x0
??_YTPFG_Flash:	; 1 bytes @ 0x0
??_Test_water:	; 1 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	Set_jiyi_re@raddr
Set_jiyi_re@raddr:	; 1 bytes @ 0x0
	global	AD_Testing@ad_ch
AD_Testing@ad_ch:	; 1 bytes @ 0x0
	global	keyRead@keyStatus
keyRead@keyStatus:	; 1 bytes @ 0x0
	global	keyRead2@keyStatus
keyRead2@keyStatus:	; 1 bytes @ 0x0
	global	keyRead3@keyStatus
keyRead3@keyStatus:	; 1 bytes @ 0x0
	global	Delay@dtemp
Delay@dtemp:	; 2 bytes @ 0x0
	global	Pwm_add@pwmlset
Pwm_add@pwmlset:	; 2 bytes @ 0x0
	global	Pwm_dec@pwmfset
Pwm_dec@pwmfset:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	1
??_keyCtr:	; 1 bytes @ 0x1
	global	Set_jiyi_re@redata
Set_jiyi_re@redata:	; 1 bytes @ 0x1
	global	AD_Testing@ad_lr
AD_Testing@ad_lr:	; 1 bytes @ 0x1
	global	keyCtr@kclick
keyCtr@kclick:	; 1 bytes @ 0x1
	ds	1
??_AD_Testing:	; 1 bytes @ 0x2
??_Delay:	; 1 bytes @ 0x2
?_Delay_nms:	; 1 bytes @ 0x2
??_Pwm_add:	; 1 bytes @ 0x2
??_Pwm_dec:	; 1 bytes @ 0x2
??_PFG_read_fst:	; 1 bytes @ 0x2
	global	YTPFG_Flash@templ
YTPFG_Flash@templ:	; 1 bytes @ 0x2
	global	Delay_nms@inittempl
Delay_nms@inittempl:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	Test_water@temph
Test_water@temph:	; 1 bytes @ 0x3
	global	YTPFG_Flash@temp
YTPFG_Flash@temp:	; 2 bytes @ 0x3
	ds	1
??_Delay_nms:	; 1 bytes @ 0x4
??___awdiv:	; 1 bytes @ 0x4
	global	AD_Testing@ad_fd
AD_Testing@ad_fd:	; 1 bytes @ 0x4
	global	Pwm_add@addcl
Pwm_add@addcl:	; 1 bytes @ 0x4
	global	Pwm_dec@deccl
Pwm_dec@deccl:	; 1 bytes @ 0x4
	global	PFG_read_fst@templ
PFG_read_fst@templ:	; 1 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	Delay_nms@i
Delay_nms@i:	; 2 bytes @ 0x4
	global	Test_water@temp
Test_water@temp:	; 2 bytes @ 0x4
	ds	1
	global	AD_Testing@i
AD_Testing@i:	; 1 bytes @ 0x5
	global	PFG_read_fst@temph
PFG_read_fst@temph:	; 1 bytes @ 0x5
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	Pwm_add@temp
Pwm_add@temp:	; 2 bytes @ 0x5
	global	Pwm_dec@temp
Pwm_dec@temp:	; 2 bytes @ 0x5
	ds	1
	global	Delay_nms@gtemp
Delay_nms@gtemp:	; 1 bytes @ 0x6
	global	PFG_read_fst@pfgconset
PFG_read_fst@pfgconset:	; 1 bytes @ 0x6
	global	AD_Testing@data
AD_Testing@data:	; 2 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	1
??_Test_Pwm_Cur:	; 1 bytes @ 0x7
	global	Test_Pwm_Cur@temph
Test_Pwm_Cur@temph:	; 1 bytes @ 0x7
	global	PFG_read_fst@temp
PFG_read_fst@temp:	; 2 bytes @ 0x7
	ds	1
??_Get_CUR_Dat:	; 1 bytes @ 0x8
	global	Test_Pwm_Cur@templ
Test_Pwm_Cur@templ:	; 1 bytes @ 0x8
	ds	1
??_Test_PWM_Fst:	; 1 bytes @ 0x9
	global	Test_PWM_Fst@templ
Test_PWM_Fst@templ:	; 1 bytes @ 0x9
	ds	1
??_Test_Pwm:	; 1 bytes @ 0xA
	ds	4
	global	Test_Pwm@templ
Test_Pwm@templ:	; 1 bytes @ 0xE
	ds	1
??_Pwm_Test:	; 1 bytes @ 0xF
	global	Pwm_Test@templ
Pwm_Test@templ:	; 1 bytes @ 0xF
	ds	1
??_main:	; 1 bytes @ 0x10
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    3
;!    Data        0
;!    BSS         80
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      12
;!    BANK0            80     16      78
;!    BANK1            80      0      14
;!    BANK3            88      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _time0 in COMMON
;!
;!    _time0->_Set_Pwm_Onoff
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_Pwm_Test
;!    _keyCtr->_keyRead
;!    _keyCtr->_keyRead2
;!    _keyCtr->_keyRead3
;!    _Pwm_Test->_Test_Pwm
;!    _Test_Pwm->_Get_CUR_Dat
;!    _Test_Pwm->_Test_PWM_Fst
;!    _Test_PWM_Fst->_Test_Pwm_Cur
;!    _Test_Pwm_Cur->_Pwm_add
;!    _Test_Pwm_Cur->_Pwm_dec
;!    _PFG_read_fst->_Set_jiyi_re
;!    _Get_CUR_Dat->___awdiv
;!    _Delay_nms->_Delay
;!
;!Critical Paths under _time0 in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _time0 in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _time0 in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _time0 in BANK2
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
;! (0) _main                                                 0     0      0    3829
;!                         _AD_Testing
;!                          _Delay_nms
;!                            _Init_ic
;!                           _Init_ram
;!                           _Pwm_Test
;!                        _Set_CCP_PWM
;!                    _Set_Usart_Async
;!                           _Set_Work
;!                            _Sys_set
;!                          _checkVoll
;!                            _chrgCtr
;!                           _closePWM
;!                             _keyCtr
;!                        _uartSendCtr
;! ---------------------------------------------------------------------------------
;! (1) _uartSendCtr                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _keyCtr                                               1     1      0     226
;!                                              1 BANK0      1     1      0
;!                            _keyRead
;!                           _keyRead2
;!                           _keyRead3
;! ---------------------------------------------------------------------------------
;! (2) _keyRead3                                             1     1      0      31
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _keyRead2                                             1     1      0      31
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _keyRead                                              1     1      0      31
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _closePWM                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _chrgCtr                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkVoll                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Sys_set                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Set_Work                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Set_Usart_Async                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Set_CCP_PWM                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Pwm_Test                                             1     1      0    2661
;!                                             15 BANK0      1     1      0
;!                           _Test_Pwm
;! ---------------------------------------------------------------------------------
;! (2) _Test_Pwm                                             5     5      0    2596
;!                                             10 BANK0      5     5      0
;!                        _Get_CUR_Dat
;!                       _PFG_read_fst
;!                       _Test_PWM_Fst
;!                       _Test_Pwm_Cur
;!                         _Test_water
;!                       _Work_RAM_CLR
;!                        _YTPFG_Flash
;! ---------------------------------------------------------------------------------
;! (3) _Work_RAM_CLR                                         2     2      0       0
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) _Test_water                                           6     6      0     121
;!                                              0 BANK0      6     6      0
;! ---------------------------------------------------------------------------------
;! (3) _Test_PWM_Fst                                         1     1      0     684
;!                                              9 BANK0      1     1      0
;!                       _Test_Pwm_Cur
;!                        _YTPFG_Flash
;! ---------------------------------------------------------------------------------
;! (3) _YTPFG_Flash                                          5     5      0     108
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! (3) _Test_Pwm_Cur                                         2     2      0     511
;!                                              7 BANK0      2     2      0
;!                            _Pwm_add
;!                            _Pwm_dec
;! ---------------------------------------------------------------------------------
;! (4) _Pwm_dec                                              7     5      2     203
;!                                              0 BANK0      7     5      2
;! ---------------------------------------------------------------------------------
;! (4) _Pwm_add                                              7     5      2     203
;!                                              0 BANK0      7     5      2
;! ---------------------------------------------------------------------------------
;! (3) _PFG_read_fst                                         7     7      0     327
;!                                              2 BANK0      7     7      0
;!                        _Set_jiyi_re
;! ---------------------------------------------------------------------------------
;! (4) _Set_jiyi_re                                          2     2      0      65
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) _Get_CUR_Dat                                          2     2      0     746
;!                                              8 BANK0      2     2      0
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (4) ___awdiv                                              8     4      4     746
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _Init_ram                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Init_ic                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Delay_nms                                            5     3      2     344
;!                                              2 BANK0      5     3      2
;!                              _Delay
;! ---------------------------------------------------------------------------------
;! (2) _Delay                                                2     0      2     135
;!                                              0 BANK0      2     0      2
;! ---------------------------------------------------------------------------------
;! (1) _AD_Testing                                           8     6      2     598
;!                                              0 BANK0      8     6      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (6) _time0                                                3     3      0     179
;!                                              3 COMMON     3     3      0
;!                      _Set_Pwm_Onoff
;! ---------------------------------------------------------------------------------
;! (7) _Set_Pwm_Onoff                                        3     3      0     179
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _AD_Testing
;!   _Delay_nms
;!     _Delay
;!   _Init_ic
;!   _Init_ram
;!   _Pwm_Test
;!     _Test_Pwm
;!       _Get_CUR_Dat
;!         ___awdiv
;!       _PFG_read_fst
;!         _Set_jiyi_re
;!       _Test_PWM_Fst
;!         _Test_Pwm_Cur
;!           _Pwm_add
;!           _Pwm_dec
;!         _YTPFG_Flash
;!       _Test_Pwm_Cur
;!         _Pwm_add
;!         _Pwm_dec
;!       _Test_water
;!       _Work_RAM_CLR
;!       _YTPFG_Flash
;!   _Set_CCP_PWM
;!   _Set_Usart_Async
;!   _Set_Work
;!   _Sys_set
;!   _checkVoll
;!   _chrgCtr
;!   _closePWM
;!   _keyCtr
;!     _keyRead
;!     _keyRead2
;!     _keyRead3
;!   _uartSendCtr
;!
;! _time0 (ROOT)
;!   _Set_Pwm_Onoff
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       2       0       14.3%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      6       C       1       85.7%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      68       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     10      4E       5       97.5%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       E       7       17.5%
;!BITBANK3            58      0       0       8        0.0%
;!BANK3               58      0       0       9        0.0%
;!BITBANK2            50      0       0      10        0.0%
;!BANK2               50      0       0      11        0.0%
;!DATA                 0      0      68      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 208 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_AD_Testing
;;		_Delay_nms
;;		_Init_ic
;;		_Init_ram
;;		_Pwm_Test
;;		_Set_CCP_PWM
;;		_Set_Usart_Async
;;		_Set_Work
;;		_Sys_set
;;		_checkVoll
;;		_chrgCtr
;;		_closePWM
;;		_keyCtr
;;		_uartSendCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
	line	208
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
	line	208
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	212
	
l8461:	
# 212 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
clrwdt ;# 
psect	maintext
	line	213
	
l8463:	
;main.c: 213: Init_ic();
	fcall	_Init_ic
	line	214
;main.c: 214: Delay_nms(200);
	movlw	0C8h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(Delay_nms@inittempl)
	clrf	(Delay_nms@inittempl+1)
	fcall	_Delay_nms
	line	215
;main.c: 215: Init_ram();
	fcall	_Init_ram
	line	216
;main.c: 216: Set_Usart_Async();
	fcall	_Set_Usart_Async
	line	219
	
l8465:	
;main.c: 218: {
;main.c: 219: if(tcount >= 40)
	movlw	low(028h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_tcount),w	;volatile
	skipc
	goto	u4181
	goto	u4180
u4181:
	goto	l8465
u4180:
	line	221
	
l8467:	
;main.c: 220: {
;main.c: 221: tcount = 0;
	clrf	(_tcount)	;volatile
	line	222
	
l8469:	
;main.c: 222: Sys_set();
	fcall	_Sys_set
	line	226
	
l8471:	
;main.c: 226: if(whFlag)
	movf	((_whFlag)),w
	btfsc	status,2
	goto	u4191
	goto	u4190
u4191:
	goto	l8485
u4190:
	line	228
	
l8473:	
;main.c: 227: {
;main.c: 228: Set_Work();
	fcall	_Set_Work
	line	230
	
l8475:	
;main.c: 230: onoff=1;
	bsf	(_onoff/8),(_onoff)&7	;volatile
	line	231
	
l8477:	
;main.c: 231: AD_Testing(1,13,1);
	movlw	low(0Dh)
	movwf	(AD_Testing@ad_ch)
	clrf	(AD_Testing@ad_lr)
	incf	(AD_Testing@ad_lr),f
	movlw	low(01h)
	fcall	_AD_Testing
	line	232
	
l8479:	
;main.c: 232: Set_CCP_PWM();
	fcall	_Set_CCP_PWM
	line	233
	
l8481:	
;main.c: 233: checkVoll();
	fcall	_checkVoll
	line	235
	
l8483:	
;main.c: 235: PORTA |= 0x08;
	bsf	(5)+(3/8),(3)&7	;volatile
	line	236
;main.c: 236: }
	goto	l8491
	line	239
	
l8485:	
;main.c: 237: else
;main.c: 238: {
;main.c: 239: closePWM();
	fcall	_closePWM
	line	240
	
l8487:	
;main.c: 240: onoff=0;
	bcf	(_onoff/8),(_onoff)&7	;volatile
	line	241
	
l8489:	
;main.c: 241: PORTA &= 0xF7;
	bcf	status, 6	;RP1=0, select bank0
	bcf	(5)+(3/8),(3)&7	;volatile
	line	243
	
l8491:	
;main.c: 242: }
;main.c: 243: Pwm_Test();
	fcall	_Pwm_Test
	line	244
	
l8493:	
;main.c: 244: keyCtr();
	fcall	_keyCtr
	line	245
	
l8495:	
;main.c: 245: chrgCtr();
	fcall	_chrgCtr
	line	246
	
l8497:	
;main.c: 246: uartSendCtr();
	fcall	_uartSendCtr
	line	248
	
l8499:	
;main.c: 248: if(PORTB & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(6),(4)&7	;volatile
	goto	u4201
	goto	u4200
u4201:
	goto	l8503
u4200:
	line	250
	
l8501:	
;main.c: 249: {
;main.c: 250: ganshaoCheckTime = 0;
	clrf	(_ganshaoCheckTime)
	line	251
;main.c: 251: }
	goto	l8465
	line	254
	
l8503:	
;main.c: 252: else
;main.c: 253: {
;main.c: 254: if(++ganshaoCheckTime > 10)
	movlw	low(0Bh)
	incf	(_ganshaoCheckTime),f
	subwf	((_ganshaoCheckTime)),w
	skipc
	goto	u4211
	goto	u4210
u4211:
	goto	l2327
u4210:
	line	256
	
l8505:	
;main.c: 255: {
;main.c: 256: ganshaoCheckTime = 0;
	clrf	(_ganshaoCheckTime)
	line	257
;main.c: 257: whFlag = 0;
	clrf	(_whFlag)
	line	258
;main.c: 258: led1Step = 0;
	clrf	(_led1Step)
	line	259
;main.c: 259: led2Step = 0;
	clrf	(_led2Step)
	goto	l8465
	line	262
	
l2327:	
	goto	l8465
	global	start
	ljmp	start
	opt stack 0
	line	264
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_uartSendCtr

;; *************** function _uartSendCtr *****************
;; Defined at:
;;		line 612 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	612
global __ptext1
__ptext1:	;psect for function _uartSendCtr
psect	text1
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
	line	612
	global	__size_of_uartSendCtr
	__size_of_uartSendCtr	equ	__end_of_uartSendCtr-_uartSendCtr
	
_uartSendCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _uartSendCtr: [wreg-fsr0h+status,2+status,0]
	line	614
	
l8445:	
;main.c: 614: Sendbuffer[0] = whFlag;
	movf	(_whFlag),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_Sendbuffer)^080h
	line	615
;main.c: 615: Sendbuffer[1] = led1Step;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_led1Step),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_Sendbuffer)^080h+01h
	line	616
;main.c: 616: Sendbuffer[2] = led2Step;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_led2Step),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_Sendbuffer)^080h+02h
	line	617
;main.c: 617: Sendbuffer[3] = chrgStep;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_chrgStep),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_Sendbuffer)^080h+03h
	line	618
	
l8447:	
;main.c: 618: if(waitSendTime > 0)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_waitSendTime)),w
	btfsc	status,2
	goto	u4151
	goto	u4150
u4151:
	goto	l2437
u4150:
	line	620
	
l8449:	
;main.c: 619: {
;main.c: 620: waitSendTime--;
	decf	(_waitSendTime),f
	line	621
;main.c: 621: }
	goto	l2441
	line	622
	
l2437:	
;main.c: 622: else if(TRMT)
	bsf	status, 5	;RP0=1, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u4161
	goto	u4160
u4161:
	goto	l2441
u4160:
	line	626
	
l8451:	
;main.c: 623: {
;main.c: 626: TXREG = Sendbuffer[sendcount];
	bcf	status, 5	;RP0=0, select bank0
	movf	(_sendcount),w
	addlw	low(_Sendbuffer|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(25)	;volatile
	line	630
	
l8453:	
;main.c: 630: sendcount++;
	incf	(_sendcount),f
	line	631
	
l8455:	
;main.c: 631: if(sendcount >= 4)
	movlw	low(04h)
	subwf	(_sendcount),w
	skipc
	goto	u4171
	goto	u4170
u4171:
	goto	l2441
u4170:
	line	633
	
l8457:	
;main.c: 632: {
;main.c: 633: sendcount = 0;
	clrf	(_sendcount)
	line	634
	
l8459:	
;main.c: 634: waitSendTime = 100;
	movlw	low(064h)
	movwf	(_waitSendTime)
	line	637
	
l2441:	
	return
	opt stack 0
GLOBAL	__end_of_uartSendCtr
	__end_of_uartSendCtr:
	signat	_uartSendCtr,89
	global	_keyCtr

;; *************** function _keyCtr *****************
;; Defined at:
;;		line 490 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  kclick          1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_keyRead
;;		_keyRead2
;;		_keyRead3
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	490
global __ptext2
__ptext2:	;psect for function _keyCtr
psect	text2
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
	line	490
	global	__size_of_keyCtr
	__size_of_keyCtr	equ	__end_of_keyCtr-_keyCtr
	
_keyCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _keyCtr: [wreg+status,2+status,0+pclath+cstack]
	line	492
	
l8385:	
;main.c: 492: char kclick = keyRead(0x20 & (~PORTA));
	comf	(5),w	;volatile
	andlw	020h
	fcall	_keyRead
	movwf	(keyCtr@kclick)
	line	493
	
l8387:	
;main.c: 493: if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u3991
	goto	u3990
u3991:
	goto	l8393
u3990:
	line	495
	
l8389:	
;main.c: 494: {
;main.c: 495: if(whFlag)
	movf	((_whFlag)),w
	btfsc	status,2
	goto	u4001
	goto	u4000
u4001:
	goto	l2401
u4000:
	line	497
	
l8391:	
;main.c: 496: {
;main.c: 497: whFlag = 0;
	clrf	(_whFlag)
	line	498
;main.c: 498: led1Step = 0;
	clrf	(_led1Step)
	line	499
;main.c: 499: led2Step = 0;
	clrf	(_led2Step)
	line	500
;main.c: 500: }
	goto	l8393
	line	501
	
l2401:	
	line	503
;main.c: 501: else
;main.c: 502: {
;main.c: 503: whFlag = 1;
	clrf	(_whFlag)
	incf	(_whFlag),f
	line	504
;main.c: 504: led1Step = 1;
	clrf	(_led1Step)
	incf	(_led1Step),f
	line	505
;main.c: 505: led2Step = 1;
	clrf	(_led2Step)
	incf	(_led2Step),f
	line	509
	
l8393:	
;main.c: 506: }
;main.c: 508: }
;main.c: 509: kclick = keyRead2(0x10 & (~PORTA));
	comf	(5),w	;volatile
	andlw	010h
	fcall	_keyRead2
	movwf	(keyCtr@kclick)
	line	510
	
l8395:	
;main.c: 510: if(whFlag && kclick == 1)
	movf	((_whFlag)),w
	btfsc	status,2
	goto	u4011
	goto	u4010
u4011:
	goto	l8403
u4010:
	
l8397:	
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u4021
	goto	u4020
u4021:
	goto	l8403
u4020:
	line	512
	
l8399:	
;main.c: 511: {
;main.c: 512: if(++led1Step > 3)
	movlw	low(04h)
	incf	(_led1Step),f
	subwf	((_led1Step)),w
	skipc
	goto	u4031
	goto	u4030
u4031:
	goto	l8403
u4030:
	line	514
	
l8401:	
;main.c: 513: {
;main.c: 514: led1Step = 1;
	clrf	(_led1Step)
	incf	(_led1Step),f
	line	517
	
l8403:	
;main.c: 515: }
;main.c: 516: }
;main.c: 517: kclick = keyRead3(0x04 & (~PORTA));
	comf	(5),w	;volatile
	andlw	04h
	fcall	_keyRead3
	movwf	(keyCtr@kclick)
	line	518
	
l8405:	
;main.c: 518: if(whFlag)
	movf	((_whFlag)),w
	btfsc	status,2
	goto	u4041
	goto	u4040
u4041:
	goto	l2412
u4040:
	line	520
	
l8407:	
;main.c: 519: {
;main.c: 520: if(kclick == 1 && led2Step)
		decf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u4051
	goto	u4050
u4051:
	goto	l8415
u4050:
	
l8409:	
	movf	((_led2Step)),w
	btfsc	status,2
	goto	u4061
	goto	u4060
u4061:
	goto	l8415
u4060:
	line	522
	
l8411:	
;main.c: 521: {
;main.c: 522: if(++led2Step > 3)
	movlw	low(04h)
	incf	(_led2Step),f
	subwf	((_led2Step)),w
	skipc
	goto	u4071
	goto	u4070
u4071:
	goto	l2412
u4070:
	line	524
	
l8413:	
;main.c: 523: {
;main.c: 524: led2Step = 1;
	clrf	(_led2Step)
	incf	(_led2Step),f
	goto	l2412
	line	527
	
l8415:	
;main.c: 527: else if(kclick == 2)
		movlw	2
	xorwf	((keyCtr@kclick)),w
	btfss	status,2
	goto	u4081
	goto	u4080
u4081:
	goto	l2412
u4080:
	line	529
	
l8417:	
;main.c: 528: {
;main.c: 529: if(led2Step)
	movf	((_led2Step)),w
	btfsc	status,2
	goto	u4091
	goto	u4090
u4091:
	goto	l8413
u4090:
	line	531
	
l8419:	
;main.c: 530: {
;main.c: 531: led2Step = 0;
	clrf	(_led2Step)
	line	539
;main.c: 532: }
	
l2412:	
	return
	opt stack 0
GLOBAL	__end_of_keyCtr
	__end_of_keyCtr:
	signat	_keyCtr,89
	global	_keyRead3

;; *************** function _keyRead3 *****************
;; Defined at:
;;		line 455 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
;; Parameters:    Size  Location     Type
;;  keyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyStatus       1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	455
global __ptext3
__ptext3:	;psect for function _keyRead3
psect	text3
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
	line	455
	global	__size_of_keyRead3
	__size_of_keyRead3	equ	__end_of_keyRead3-_keyRead3
	
_keyRead3:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead3: [wreg+status,2+status,0]
;keyRead3@keyStatus stored from wreg
	movwf	(keyRead3@keyStatus)
	line	457
	
l8145:	
;main.c: 457: if(keyStatus)
	movf	((keyRead3@keyStatus)),w
	btfsc	status,2
	goto	u3721
	goto	u3720
u3721:
	goto	l8161
u3720:
	line	459
	
l8147:	
;main.c: 458: {
;main.c: 459: keyCount3++;
	incf	(_keyCount3),f
	line	460
	
l8149:	
;main.c: 460: if(keyCount3 >= 100)
	movlw	low(064h)
	subwf	(_keyCount3),w
	skipc
	goto	u3731
	goto	u3730
u3731:
	goto	l8165
u3730:
	line	462
	
l8151:	
;main.c: 461: {
;main.c: 462: keyCount3 = 100;
	movlw	low(064h)
	movwf	(_keyCount3)
	line	463
	
l8153:	
;main.c: 463: if(longKey3PressFlag == 0)
	movf	((_longKey3PressFlag)),w
	btfss	status,2
	goto	u3741
	goto	u3740
u3741:
	goto	l8165
u3740:
	line	465
	
l8155:	
;main.c: 464: {
;main.c: 465: longKey3PressFlag = 1;
	clrf	(_longKey3PressFlag)
	incf	(_longKey3PressFlag),f
	line	466
	
l8157:	
;main.c: 466: return 2;
	movlw	low(02h)
	goto	l2393
	line	472
	
l8161:	
;main.c: 470: else
;main.c: 471: {
;main.c: 472: if(keyCount3 >= 100)
	movlw	low(064h)
	subwf	(_keyCount3),w
	skipc
	goto	u3751
	goto	u3750
u3751:
	goto	l8171
u3750:
	line	474
	
l8163:	
;main.c: 473: {
;main.c: 474: keyCount3 = 0;
	clrf	(_keyCount3)
	line	475
;main.c: 475: longKey3PressFlag = 0;
	clrf	(_longKey3PressFlag)
	line	476
	
l8165:	
;main.c: 476: return 0;
	movlw	low(0)
	goto	l2393
	line	478
	
l8171:	
;main.c: 478: else if(keyCount3 >= 4)
	movlw	low(04h)
	subwf	(_keyCount3),w
	skipc
	goto	u3761
	goto	u3760
u3761:
	goto	l8179
u3760:
	line	480
	
l8173:	
;main.c: 479: {
;main.c: 480: keyCount3 = 0;
	clrf	(_keyCount3)
	line	481
	
l8175:	
;main.c: 481: return 1;
	movlw	low(01h)
	goto	l2393
	line	483
	
l8179:	
;main.c: 482: }
;main.c: 483: longKey3PressFlag = 0;
	clrf	(_longKey3PressFlag)
	line	484
;main.c: 484: keyCount3 = 0;
	clrf	(_keyCount3)
	goto	l8165
	line	487
	
l2393:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead3
	__end_of_keyRead3:
	signat	_keyRead3,4217
	global	_keyRead2

;; *************** function _keyRead2 *****************
;; Defined at:
;;		line 433 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
;; Parameters:    Size  Location     Type
;;  keyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyStatus       1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	433
global __ptext4
__ptext4:	;psect for function _keyRead2
psect	text4
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
	line	433
	global	__size_of_keyRead2
	__size_of_keyRead2	equ	__end_of_keyRead2-_keyRead2
	
_keyRead2:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead2: [wreg+status,2+status,0]
;keyRead2@keyStatus stored from wreg
	movwf	(keyRead2@keyStatus)
	line	435
	
l8123:	
;main.c: 435: if(keyStatus)
	movf	((keyRead2@keyStatus)),w
	btfsc	status,2
	goto	u3691
	goto	u3690
u3691:
	goto	l8131
u3690:
	line	437
	
l8125:	
;main.c: 436: {
;main.c: 437: keyCount2++;
	incf	(_keyCount2),f
	line	438
	
l8127:	
;main.c: 438: if(keyCount2 >= 100)
	movlw	low(064h)
	subwf	(_keyCount2),w
	skipc
	goto	u3701
	goto	u3700
u3701:
	goto	l8141
u3700:
	line	440
	
l8129:	
;main.c: 439: {
;main.c: 440: keyCount2 = 100;
	movlw	low(064h)
	movwf	(_keyCount2)
	goto	l8141
	line	445
	
l8131:	
;main.c: 443: else
;main.c: 444: {
;main.c: 445: if(keyCount2 >= 4)
	movlw	low(04h)
	subwf	(_keyCount2),w
	skipc
	goto	u3711
	goto	u3710
u3711:
	goto	l8139
u3710:
	line	447
	
l8133:	
;main.c: 446: {
;main.c: 447: keyCount2 = 0;
	clrf	(_keyCount2)
	line	448
	
l8135:	
;main.c: 448: return 1;
	movlw	low(01h)
	goto	l2387
	line	450
	
l8139:	
;main.c: 449: }
;main.c: 450: keyCount2 = 0;
	clrf	(_keyCount2)
	line	452
	
l8141:	
;main.c: 451: }
;main.c: 452: return 0;
	movlw	low(0)
	line	453
	
l2387:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead2
	__end_of_keyRead2:
	signat	_keyRead2,4217
	global	_keyRead

;; *************** function _keyRead *****************
;; Defined at:
;;		line 400 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
;; Parameters:    Size  Location     Type
;;  keyStatus       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyStatus       1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_keyCtr
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	400
global __ptext5
__ptext5:	;psect for function _keyRead
psect	text5
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
	line	400
	global	__size_of_keyRead
	__size_of_keyRead	equ	__end_of_keyRead-_keyRead
	
_keyRead:	
;incstack = 0
	opt	stack 4
; Regs used in _keyRead: [wreg+status,2+status,0]
;keyRead@keyStatus stored from wreg
	movwf	(keyRead@keyStatus)
	line	402
	
l8083:	
;main.c: 402: if(keyStatus)
	movf	((keyRead@keyStatus)),w
	btfsc	status,2
	goto	u3641
	goto	u3640
u3641:
	goto	l8099
u3640:
	line	404
	
l8085:	
;main.c: 403: {
;main.c: 404: keyCount++;
	incf	(_keyCount),f
	line	405
	
l8087:	
;main.c: 405: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u3651
	goto	u3650
u3651:
	goto	l8103
u3650:
	line	407
	
l8089:	
;main.c: 406: {
;main.c: 407: keyCount = 100;
	movlw	low(064h)
	movwf	(_keyCount)
	line	408
	
l8091:	
;main.c: 408: if(longKeyPressFlag == 0)
	movf	((_longKeyPressFlag)),w
	btfss	status,2
	goto	u3661
	goto	u3660
u3661:
	goto	l8103
u3660:
	line	410
	
l8093:	
;main.c: 409: {
;main.c: 410: longKeyPressFlag = 1;
	clrf	(_longKeyPressFlag)
	incf	(_longKeyPressFlag),f
	line	411
	
l8095:	
;main.c: 411: return 2;
	movlw	low(02h)
	goto	l2376
	line	417
	
l8099:	
;main.c: 415: else
;main.c: 416: {
;main.c: 417: if(keyCount >= 100)
	movlw	low(064h)
	subwf	(_keyCount),w
	skipc
	goto	u3671
	goto	u3670
u3671:
	goto	l8109
u3670:
	line	419
	
l8101:	
;main.c: 418: {
;main.c: 419: keyCount = 0;
	clrf	(_keyCount)
	line	420
;main.c: 420: longKeyPressFlag = 0;
	clrf	(_longKeyPressFlag)
	line	421
	
l8103:	
;main.c: 421: return 0;
	movlw	low(0)
	goto	l2376
	line	423
	
l8109:	
;main.c: 423: else if(keyCount >= 4)
	movlw	low(04h)
	subwf	(_keyCount),w
	skipc
	goto	u3681
	goto	u3680
u3681:
	goto	l8117
u3680:
	line	425
	
l8111:	
;main.c: 424: {
;main.c: 425: keyCount = 0;
	clrf	(_keyCount)
	line	426
	
l8113:	
;main.c: 426: return 1;
	movlw	low(01h)
	goto	l2376
	line	428
	
l8117:	
;main.c: 427: }
;main.c: 428: keyCount = 0;
	clrf	(_keyCount)
	goto	l8103
	line	431
	
l2376:	
	return
	opt stack 0
GLOBAL	__end_of_keyRead
	__end_of_keyRead:
	signat	_keyRead,4217
	global	_closePWM

;; *************** function _closePWM *****************
;; Defined at:
;;		line 390 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/200
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	390
global __ptext6
__ptext6:	;psect for function _closePWM
psect	text6
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
	line	390
	global	__size_of_closePWM
	__size_of_closePWM	equ	__end_of_closePWM-_closePWM
	
_closePWM:	
;incstack = 0
	opt	stack 5
; Regs used in _closePWM: [status,2]
	line	392
	
l8383:	
;main.c: 392: PWMD1L = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(404)^0180h	;volatile
	line	393
;main.c: 393: PWMD01H = 0x00;
	bcf	status, 5	;RP0=0, select bank2
	clrf	(284)^0100h	;volatile
	line	394
;main.c: 394: PWMCON2 = 0B00000000;
	clrf	(265)^0100h	;volatile
	line	395
;main.c: 395: PWMCON1 = 0B00000000;
	clrf	(264)^0100h	;volatile
	line	396
;main.c: 396: PWMCON0 = 0B00000000;
	clrf	(263)^0100h	;volatile
	line	397
	
l2370:	
	return
	opt stack 0
GLOBAL	__end_of_closePWM
	__end_of_closePWM:
	signat	_closePWM,89
	global	_chrgCtr

;; *************** function _chrgCtr *****************
;; Defined at:
;;		line 541 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	541
global __ptext7
__ptext7:	;psect for function _chrgCtr
psect	text7
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
	line	541
	global	__size_of_chrgCtr
	__size_of_chrgCtr	equ	__end_of_chrgCtr-_chrgCtr
	
_chrgCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _chrgCtr: [wreg+status,2+status,0]
	line	543
	
l8421:	
;main.c: 544: {
;main.c: 545: chrgFlag = 1;
	btfss	(5),(6)&7	;volatile
	goto	u4101
	goto	u4100
u4101:
	goto	l8443
u4100:
	line	546
	
l8423:	
;main.c: 546: if(0x80 & PORTA)
	btfss	(5),(7)&7	;volatile
	goto	u4111
	goto	u4110
u4111:
	goto	l8429
u4110:
	line	548
	
l8425:	
;main.c: 547: {
;main.c: 548: if(++chrgFullTime > 200)
	movlw	low(0C9h)
	incf	(_chrgFullTime),f
	subwf	((_chrgFullTime)),w
	skipc
	goto	u4121
	goto	u4120
u4121:
	goto	l8433
u4120:
	line	550
	
l8427:	
;main.c: 549: {
;main.c: 550: chrgFullFlag = 1;
	clrf	(_chrgFullFlag)
	incf	(_chrgFullFlag),f
	line	551
	
l8429:	
;main.c: 551: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	line	558
	
l8433:	
;main.c: 557: }
;main.c: 558: if(chrgFullFlag)
	movf	((_chrgFullFlag)),w
	btfsc	status,2
	goto	u4131
	goto	u4130
u4131:
	goto	l2419
u4130:
	line	560
	
l8435:	
;main.c: 559: {
;main.c: 560: if(++chrgGreenLedTime > 1000)
	bsf	status, 5	;RP0=1, select bank1
	incf	(_chrgGreenLedTime)^080h,f
	skipnz
	incf	(_chrgGreenLedTime+1)^080h,f
	movlw	03h
	subwf	((_chrgGreenLedTime+1)^080h),w
	movlw	0E9h
	skipnz
	subwf	((_chrgGreenLedTime)^080h),w
	skipc
	goto	u4141
	goto	u4140
u4141:
	goto	l8441
u4140:
	line	562
	
l8437:	
;main.c: 561: {
;main.c: 562: chrgGreenLedTime = 1000;
	movlw	0E8h
	movwf	(_chrgGreenLedTime)^080h
	movlw	03h
	movwf	((_chrgGreenLedTime)^080h)+1
	line	563
	
l8439:	
;main.c: 563: chrgStep = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_chrgStep)
	line	564
;main.c: 564: }
	goto	l2424
	line	567
	
l8441:	
;main.c: 565: else
;main.c: 566: {
;main.c: 567: chrgStep = 2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_chrgStep)
	goto	l2424
	line	570
	
l2419:	
	line	572
;main.c: 570: else
;main.c: 571: {
;main.c: 572: chrgStep = 1;
	clrf	(_chrgStep)
	incf	(_chrgStep),f
	goto	l2424
	line	577
	
l8443:	
;main.c: 578: chrgFlag = 0;
	clrf	(_chrgStep)
	line	579
;main.c: 579: chrgFullFlag = 0;
	clrf	(_chrgFullFlag)
	line	580
;main.c: 580: chrgFullTime = 0;
	clrf	(_chrgFullTime)
	line	581
;main.c: 581: chrgGreenLedTime = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(_chrgGreenLedTime)^080h
	clrf	(_chrgGreenLedTime+1)^080h
	line	583
	
l2424:	
	return
	opt stack 0
GLOBAL	__end_of_chrgCtr
	__end_of_chrgCtr:
	signat	_chrgCtr,89
	global	_checkVoll

;; *************** function _checkVoll *****************
;; Defined at:
;;		line 585 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/200
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	585
global __ptext8
__ptext8:	;psect for function _checkVoll
psect	text8
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
	line	585
	global	__size_of_checkVoll
	__size_of_checkVoll	equ	__end_of_checkVoll-_checkVoll
	
_checkVoll:	
;incstack = 0
	opt	stack 5
; Regs used in _checkVoll: [wreg+status,2+status,0]
	line	587
	
l8361:	
;main.c: 587: if(AD_Result > 182)
	movlw	0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_AD_Result+1),w	;volatile
	movlw	0B7h
	skipnz
	subwf	(_AD_Result),w	;volatile
	skipc
	goto	u3931
	goto	u3930
u3931:
	goto	l8373
u3930:
	line	589
	
l8363:	
;main.c: 588: {
;main.c: 589: if(++addTime > 5)
	movlw	low(06h)
	incf	(_addTime),f	;volatile
	subwf	((_addTime)),w	;volatile
	skipc
	goto	u3941
	goto	u3940
u3941:
	goto	l8371
u3940:
	line	591
	
l8365:	
;main.c: 590: {
;main.c: 591: addTime = 0;
	clrf	(_addTime)	;volatile
	line	592
	
l8367:	
;main.c: 592: if(currDuty > 1)
	movlw	low(02h)
	subwf	(_currDuty),w	;volatile
	skipc
	goto	u3951
	goto	u3950
u3951:
	goto	l8371
u3950:
	line	594
	
l8369:	
;main.c: 593: {
;main.c: 594: currDuty--;
	decf	(_currDuty),f	;volatile
	line	597
	
l8371:	
;main.c: 595: }
;main.c: 596: }
;main.c: 597: subTime = 0;
	clrf	(_subTime)	;volatile
	line	598
;main.c: 598: }
	goto	l2434
	line	599
	
l8373:	
;main.c: 599: else if(AD_Result < 166)
	movlw	0
	subwf	(_AD_Result+1),w	;volatile
	movlw	0A6h
	skipnz
	subwf	(_AD_Result),w	;volatile
	skipnc
	goto	u3961
	goto	u3960
u3961:
	goto	l2434
u3960:
	line	601
	
l8375:	
;main.c: 600: {
;main.c: 601: if(++subTime > 5)
	movlw	low(06h)
	incf	(_subTime),f	;volatile
	subwf	((_subTime)),w	;volatile
	skipc
	goto	u3971
	goto	u3970
u3971:
	goto	l8381
u3970:
	line	603
	
l8377:	
;main.c: 602: {
;main.c: 603: if(currDuty < 74)
	movlw	low(04Ah)
	subwf	(_currDuty),w	;volatile
	skipnc
	goto	u3981
	goto	u3980
u3981:
	goto	l8381
u3980:
	line	605
	
l8379:	
;main.c: 604: {
;main.c: 605: currDuty++;
	incf	(_currDuty),f	;volatile
	line	608
	
l8381:	
;main.c: 606: }
;main.c: 607: }
;main.c: 608: addTime = 0;
	clrf	(_addTime)	;volatile
	line	610
	
l2434:	
	return
	opt stack 0
GLOBAL	__end_of_checkVoll
	__end_of_checkVoll:
	signat	_checkVoll,89
	global	_Sys_set

;; *************** function _Sys_set *****************
;; Defined at:
;;		line 113 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	113
global __ptext9
__ptext9:	;psect for function _Sys_set
psect	text9
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
	line	113
	global	__size_of_Sys_set
	__size_of_Sys_set	equ	__end_of_Sys_set-_Sys_set
	
_Sys_set:	
;incstack = 0
	opt	stack 5
; Regs used in _Sys_set: [wreg+status,2+status,0]
	line	115
	
l8237:	
# 115 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
clrwdt ;# 
psect	text9
	line	116
	
l8239:	
;main.c: 116: WDTCON = 0x01;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(261)^0100h	;volatile
	line	117
;main.c: 117: TRISA = 0xf6;
	movlw	low(0F6h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	118
;main.c: 118: TRISB = 0xdd;
	movlw	low(0DDh)
	movwf	(134)^080h	;volatile
	line	119
	
l8241:	
;main.c: 119: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	120
	
l8243:	
;main.c: 120: PIE1 = 0B00000010;
	movlw	low(02h)
	movwf	(140)^080h	;volatile
	line	121
	
l8245:	
;main.c: 121: PR2 = 250;
	movlw	low(0FAh)
	movwf	(146)^080h	;volatile
	line	122
	
l8247:	
;main.c: 122: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	123
	
l8249:	
;main.c: 123: if(5 != T2CON)
		movlw	5
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((18)),w	;volatile
	btfsc	status,2
	goto	u3801
	goto	u3800
u3801:
	goto	l2297
u3800:
	line	124
	
l8251:	
;main.c: 124: T2CON = 5;
	movlw	low(05h)
	movwf	(18)	;volatile
	line	125
	
l2297:	
	return
	opt stack 0
GLOBAL	__end_of_Sys_set
	__end_of_Sys_set:
	signat	_Sys_set,89
	global	_Set_Work

;; *************** function _Set_Work *****************
;; Defined at:
;;		line 150 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	150
global __ptext10
__ptext10:	;psect for function _Set_Work
psect	text10
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
	line	150
	global	__size_of_Set_Work
	__size_of_Set_Work	equ	__end_of_Set_Work-_Set_Work
	
_Set_Work:	
;incstack = 0
	opt	stack 5
; Regs used in _Set_Work: [status,2]
	line	152
	
l8263:	
;main.c: 152: if(errf)
	btfss	(_errf/8),(_errf)&7	;volatile
	goto	u3831
	goto	u3830
u3831:
	goto	l2307
u3830:
	line	154
	
l8265:	
;main.c: 153: {
;main.c: 154: errf = 0;
	bcf	(_errf/8),(_errf)&7	;volatile
	line	155
;main.c: 155: onoff = 0;
	bcf	(_onoff/8),(_onoff)&7	;volatile
	line	156
	
l8267:	
;main.c: 156: whFlag = 0;
	clrf	(_whFlag)
	line	158
	
l2307:	
	return
	opt stack 0
GLOBAL	__end_of_Set_Work
	__end_of_Set_Work:
	signat	_Set_Work,89
	global	_Set_Usart_Async

;; *************** function _Set_Usart_Async *****************
;; Defined at:
;;		line 648 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	648
global __ptext11
__ptext11:	;psect for function _Set_Usart_Async
psect	text11
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
	line	648
	global	__size_of_Set_Usart_Async
	__size_of_Set_Usart_Async	equ	__end_of_Set_Usart_Async-_Set_Usart_Async
	
_Set_Usart_Async:	
;incstack = 0
	opt	stack 5
; Regs used in _Set_Usart_Async: [wreg]
	line	650
	
l8269:	
;main.c: 650: SPBRG = 95;
	movlw	low(05Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(153)^080h	;volatile
	line	652
	
l8271:	
;main.c: 652: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7	;volatile
	line	653
	
l8273:	
;main.c: 653: SCKP = 0;
	bcf	(1219/8)^080h,(1219)&7	;volatile
	line	655
	
l8275:	
;main.c: 655: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7	;volatile
	line	656
	
l8277:	
;main.c: 656: RCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1125/8)^080h,(1125)&7	;volatile
	line	657
	
l8279:	
;main.c: 657: TXIE = 0;
	bcf	(1124/8)^080h,(1124)&7	;volatile
	line	658
	
l8281:	
;main.c: 658: RX9EN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(198/8),(198)&7	;volatile
	line	659
	
l8283:	
;main.c: 659: TX9EN = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1222/8)^080h,(1222)&7	;volatile
	line	660
	
l8285:	
;main.c: 660: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(196/8),(196)&7	;volatile
	line	661
	
l8287:	
;main.c: 661: TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1221/8)^080h,(1221)&7	;volatile
	line	662
	
l2444:	
	return
	opt stack 0
GLOBAL	__end_of_Set_Usart_Async
	__end_of_Set_Usart_Async:
	signat	_Set_Usart_Async,89
	global	_Set_CCP_PWM

;; *************** function _Set_CCP_PWM *****************
;; Defined at:
;;		line 369 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
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
;;		On exit  : 300/200
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	369
global __ptext12
__ptext12:	;psect for function _Set_CCP_PWM
psect	text12
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
	line	369
	global	__size_of_Set_CCP_PWM
	__size_of_Set_CCP_PWM	equ	__end_of_Set_CCP_PWM-_Set_CCP_PWM
	
_Set_CCP_PWM:	
;incstack = 0
	opt	stack 5
; Regs used in _Set_CCP_PWM: [wreg+status,2]
	line	371
	
l8343:	
;main.c: 371: PWMTL = 108;
	movlw	low(06Ch)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	372
	
l8345:	
;main.c: 372: PWMTH = 0x00;
	clrf	(400)^0180h	;volatile
	line	373
	
l8347:	
;main.c: 373: PWMT4L = 0x00;
	clrf	(401)^0180h	;volatile
	line	377
;main.c: 377: PWMD1L = currDuty;
	movf	(_currDuty),w	;volatile
	movwf	(404)^0180h	;volatile
	line	378
	
l8349:	
;main.c: 378: PWMD01H = 0x00;
	bcf	status, 5	;RP0=0, select bank2
	clrf	(284)^0100h	;volatile
	line	381
	
l8351:	
;main.c: 381: PWM01DT = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(147)^080h	;volatile
	line	382
	
l8353:	
;main.c: 382: PWM23DT = 0;
	clrf	(148)^080h	;volatile
	line	384
	
l8355:	
;main.c: 384: PWMCON2 = 0B00000000;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(265)^0100h	;volatile
	line	385
	
l8357:	
;main.c: 385: PWMCON1 = 0B00000000;
	clrf	(264)^0100h	;volatile
	line	386
	
l8359:	
;main.c: 386: PWMCON0 = 0B00000010;
	movlw	low(02h)
	movwf	(263)^0100h	;volatile
	line	388
	
l2367:	
	return
	opt stack 0
GLOBAL	__end_of_Set_CCP_PWM
	__end_of_Set_CCP_PWM:
	signat	_Set_CCP_PWM,89
	global	_Pwm_Test

;; *************** function _Pwm_Test *****************
;; Defined at:
;;		line 133 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  templ           1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Test_Pwm
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	133
global __ptext13
__ptext13:	;psect for function _Pwm_Test
psect	text13
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
	line	133
	global	__size_of_Pwm_Test
	__size_of_Pwm_Test	equ	__end_of_Pwm_Test-_Pwm_Test
	
_Pwm_Test:	
;incstack = 0
	opt	stack 1
; Regs used in _Pwm_Test: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	136
	
l8253:	
;main.c: 135: unsigned char templ;
;main.c: 136: templ = Test_Pwm();
	fcall	_Test_Pwm
	movwf	(Pwm_Test@templ)
	line	138
	
l8255:	
;main.c: 138: if(0x55 == templ)
		movlw	85
	xorwf	((Pwm_Test@templ)),w
	btfss	status,2
	goto	u3811
	goto	u3810
u3811:
	goto	l8259
u3810:
	line	139
	
l8257:	
;main.c: 139: errf = 1;
	bsf	(_errf/8),(_errf)&7	;volatile
	goto	l2303
	line	140
	
l8259:	
;main.c: 140: else if(0xff == templ)
		incf	((Pwm_Test@templ)),w
	btfss	status,2
	goto	u3821
	goto	u3820
u3821:
	goto	l2303
u3820:
	goto	l8257
	line	142
	
l2303:	
	return
	opt stack 0
GLOBAL	__end_of_Pwm_Test
	__end_of_Pwm_Test:
	signat	_Pwm_Test,89
	global	_Test_Pwm

;; *************** function _Test_Pwm *****************
;; Defined at:
;;		line 736 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  templ           1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Get_CUR_Dat
;;		_PFG_read_fst
;;		_Test_PWM_Fst
;;		_Test_Pwm_Cur
;;		_Test_water
;;		_Work_RAM_CLR
;;		_YTPFG_Flash
;; This function is called by:
;;		_Pwm_Test
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	736
global __ptext14
__ptext14:	;psect for function _Test_Pwm
psect	text14
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	736
	global	__size_of_Test_Pwm
	__size_of_Test_Pwm	equ	__end_of_Test_Pwm-_Test_Pwm
	
_Test_Pwm:	
;incstack = 0
	opt	stack 1
; Regs used in _Test_Pwm: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	743
	
l8007:	
;WHQ_TP_ZPGS_V1.2.c: 743: if(0 == pfgonetemp.pfgtemp)
	movf	((_pfgonetemp)),w
iorwf	((_pfgonetemp+1)),w
	btfss	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l4954
u3520:
	line	745
	
l8009:	
;WHQ_TP_ZPGS_V1.2.c: 744: {
;WHQ_TP_ZPGS_V1.2.c: 745: PFG_read_fst();
	fcall	_PFG_read_fst
	line	746
;WHQ_TP_ZPGS_V1.2.c: 746: }
	goto	l8079
	line	748
	
l4954:	
	line	750
;WHQ_TP_ZPGS_V1.2.c: 748: else
;WHQ_TP_ZPGS_V1.2.c: 749: {
;WHQ_TP_ZPGS_V1.2.c: 750: if(!on_off)
	btfsc	(_on_off/8),(_on_off)&7	;volatile
	goto	u3531
	goto	u3530
u3531:
	goto	l4956
u3530:
	line	752
	
l8011:	
;WHQ_TP_ZPGS_V1.2.c: 751: {
;WHQ_TP_ZPGS_V1.2.c: 752: Work_RAM_CLR();
	fcall	_Work_RAM_CLR
	line	753
	
l8013:	
;WHQ_TP_ZPGS_V1.2.c: 753: ondly = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Test_Pwm@ondly)
	line	754
;WHQ_TP_ZPGS_V1.2.c: 754: }
	goto	l8079
	line	756
	
l4956:	
	line	758
;WHQ_TP_ZPGS_V1.2.c: 756: else
;WHQ_TP_ZPGS_V1.2.c: 757: {
;WHQ_TP_ZPGS_V1.2.c: 758: if(!onoff_fst)
	btfsc	(_onoff_fst/8),(_onoff_fst)&7	;volatile
	goto	u3541
	goto	u3540
u3541:
	goto	l4958
u3540:
	line	760
	
l8015:	
;WHQ_TP_ZPGS_V1.2.c: 759: {
;WHQ_TP_ZPGS_V1.2.c: 760: if(++ondly >= 20)
	movlw	low(014h)
	incf	(Test_Pwm@ondly),f
	subwf	((Test_Pwm@ondly)),w
	skipc
	goto	u3551
	goto	u3550
u3551:
	goto	l4960
u3550:
	line	762
	
l8017:	
;WHQ_TP_ZPGS_V1.2.c: 761: {
;WHQ_TP_ZPGS_V1.2.c: 762: ondly = 0;
	clrf	(Test_Pwm@ondly)
	line	763
	
l8019:	
;WHQ_TP_ZPGS_V1.2.c: 763: onoff_fst = 1;
	bsf	(_onoff_fst/8),(_onoff_fst)&7	;volatile
	line	764
	
l8021:	
;WHQ_TP_ZPGS_V1.2.c: 764: curokf = 0;
	bcf	(_curokf/8),(_curokf)&7	;volatile
	line	765
	
l8023:	
;WHQ_TP_ZPGS_V1.2.c: 765: curokf1 = 0;
	bcf	(Test_Pwm@curokf1/8),(Test_Pwm@curokf1)&7
	goto	l4960
	line	769
	
l4958:	
	line	771
;WHQ_TP_ZPGS_V1.2.c: 769: else
;WHQ_TP_ZPGS_V1.2.c: 770: {
;WHQ_TP_ZPGS_V1.2.c: 771: if(curokf)
	btfss	(_curokf/8),(_curokf)&7	;volatile
	goto	u3561
	goto	u3560
u3561:
	goto	l4960
u3560:
	line	773
	
l8025:	
;WHQ_TP_ZPGS_V1.2.c: 772: {
;WHQ_TP_ZPGS_V1.2.c: 773: curokf = 0;
	bcf	(_curokf/8),(_curokf)&7	;volatile
	line	774
	
l8027:	
;WHQ_TP_ZPGS_V1.2.c: 774: Get_CUR_Dat();
	fcall	_Get_CUR_Dat
	line	775
	
l8029:	
;WHQ_TP_ZPGS_V1.2.c: 775: curokf1 = 1;
	bsf	(Test_Pwm@curokf1/8),(Test_Pwm@curokf1)&7
	line	778
	
l8031:	
;WHQ_TP_ZPGS_V1.2.c: 777: {
;WHQ_TP_ZPGS_V1.2.c: 778: templ = Test_water();
	fcall	_Test_water
	bcf	status, 5	;RP0=0, select bank0
	movwf	(Test_Pwm@templ)
	line	779
	
l8033:	
;WHQ_TP_ZPGS_V1.2.c: 779: if(0 != templ)
	movf	((Test_Pwm@templ)),w
	btfsc	status,2
	goto	u3571
	goto	u3570
u3571:
	goto	l4960
u3570:
	line	781
	
l8035:	
;WHQ_TP_ZPGS_V1.2.c: 780: {
;WHQ_TP_ZPGS_V1.2.c: 781: return templ;
	movf	(Test_Pwm@templ),w
	goto	l4964
	line	785
	
l4960:	
	line	787
;WHQ_TP_ZPGS_V1.2.c: 782: }
;WHQ_TP_ZPGS_V1.2.c: 783: }
;WHQ_TP_ZPGS_V1.2.c: 784: }
;WHQ_TP_ZPGS_V1.2.c: 785: }
;WHQ_TP_ZPGS_V1.2.c: 787: if(curokf1)
	btfss	(Test_Pwm@curokf1/8),(Test_Pwm@curokf1)&7
	goto	u3581
	goto	u3580
u3581:
	goto	l8079
u3580:
	line	789
	
l8039:	
;WHQ_TP_ZPGS_V1.2.c: 790: if(pwmtf)
	bcf	(Test_Pwm@curokf1/8),(Test_Pwm@curokf1)&7
	line	797
	
l8045:	
;WHQ_TP_ZPGS_V1.2.c: 795: }
;WHQ_TP_ZPGS_V1.2.c: 796: }
;WHQ_TP_ZPGS_V1.2.c: 797: if((!pwmtf) || (!pwmtf1))
	btfss	(_pwmtf/8),(_pwmtf)&7	;volatile
	goto	u3591
	goto	u3590
u3591:
	goto	l8049
u3590:
	
l8047:	
	btfsc	(_pwmtf1/8),(_pwmtf1)&7	;volatile
	goto	u3601
	goto	u3600
u3601:
	goto	l4968
u3600:
	line	799
	
l8049:	
;WHQ_TP_ZPGS_V1.2.c: 798: {
;WHQ_TP_ZPGS_V1.2.c: 799: templ = Test_PWM_Fst();
	fcall	_Test_PWM_Fst
	movwf	(Test_Pwm@templ)
	goto	l8035
	line	802
	
l4968:	
	line	804
;WHQ_TP_ZPGS_V1.2.c: 802: else
;WHQ_TP_ZPGS_V1.2.c: 803: {
;WHQ_TP_ZPGS_V1.2.c: 804: if(!ponecf)
	btfsc	(_ponecf/8),(_ponecf)&7	;volatile
	goto	u3611
	goto	u3610
u3611:
	goto	l8067
u3610:
	line	806
	
l8057:	
;WHQ_TP_ZPGS_V1.2.c: 805: {
;WHQ_TP_ZPGS_V1.2.c: 806: if(++ponesec >= 125)
	movlw	low(07Dh)
	incf	(_ponesec),f	;volatile
	subwf	((_ponesec)),w	;volatile
	skipc
	goto	u3621
	goto	u3620
u3621:
	goto	l4965
u3620:
	line	808
	
l8059:	
;WHQ_TP_ZPGS_V1.2.c: 807: {
;WHQ_TP_ZPGS_V1.2.c: 808: ponesec = 0;
	clrf	(_ponesec)	;volatile
	line	809
;WHQ_TP_ZPGS_V1.2.c: 809: ondly = 0;
	clrf	(Test_Pwm@ondly)
	line	810
	
l8061:	
;WHQ_TP_ZPGS_V1.2.c: 810: ponecf = 1;
	bsf	(_ponecf/8),(_ponecf)&7	;volatile
	line	811
	
l8063:	
;WHQ_TP_ZPGS_V1.2.c: 811: pfgonetemp.pfgtemp = (pfgonetemp.pfgtemp & 0xfc00) + (pwmnold & 0x03ff);
	movlw	0FFh
	andwf	(_pwmnold),w	;volatile
	movwf	(??_Test_Pwm+0)+0
	movlw	03h
	andwf	(_pwmnold+1),w	;volatile
	movwf	1+(??_Test_Pwm+0)+0
	movlw	0
	andwf	(_pfgonetemp),w
	movwf	(??_Test_Pwm+2)+0
	movlw	0FCh
	andwf	(_pfgonetemp+1),w
	movwf	1+(??_Test_Pwm+2)+0
	movf	0+(??_Test_Pwm+0)+0,w
	addwf	0+(??_Test_Pwm+2)+0,w
	movwf	(_pfgonetemp)
	movf	1+(??_Test_Pwm+0)+0,w
	skipnc
	incf	1+(??_Test_Pwm+0)+0,w
	addwf	1+(??_Test_Pwm+2)+0,w
	movwf	1+(_pfgonetemp)
	line	812
	
l8065:	
;WHQ_TP_ZPGS_V1.2.c: 812: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	goto	l8079
	line	817
	
l8067:	
;WHQ_TP_ZPGS_V1.2.c: 815: else
;WHQ_TP_ZPGS_V1.2.c: 816: {
;WHQ_TP_ZPGS_V1.2.c: 817: if(++ondly >= 4)
	movlw	low(04h)
	incf	(Test_Pwm@ondly),f
	subwf	((Test_Pwm@ondly)),w
	skipc
	goto	u3631
	goto	u3630
u3631:
	goto	l4965
u3630:
	line	819
	
l8069:	
;WHQ_TP_ZPGS_V1.2.c: 818: {
;WHQ_TP_ZPGS_V1.2.c: 819: ondly = 0;
	clrf	(Test_Pwm@ondly)
	line	820
	
l8071:	
;WHQ_TP_ZPGS_V1.2.c: 820: Test_Pwm_Cur();
	fcall	_Test_Pwm_Cur
	line	821
	
l8073:	
;WHQ_TP_ZPGS_V1.2.c: 821: pwmnold = pfgonetemp.pfgtemp & 0x7fff;
	movf	(_pfgonetemp+1),w
	movwf	(_pwmnold+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmnold)	;volatile
	
l8075:	
	bcf	(_pwmnold)+(15/8),(15)&7	;volatile
	line	822
	
l8077:	
;WHQ_TP_ZPGS_V1.2.c: 822: ponecf = 0;
	bcf	(_ponecf/8),(_ponecf)&7	;volatile
	goto	l8079
	line	826
	
l4965:	
	line	829
	
l8079:	
;WHQ_TP_ZPGS_V1.2.c: 823: }
;WHQ_TP_ZPGS_V1.2.c: 824: }
;WHQ_TP_ZPGS_V1.2.c: 825: }
;WHQ_TP_ZPGS_V1.2.c: 826: }
;WHQ_TP_ZPGS_V1.2.c: 827: }
;WHQ_TP_ZPGS_V1.2.c: 828: }
;WHQ_TP_ZPGS_V1.2.c: 829: return 0;
	movlw	low(0)
	line	830
	
l4964:	
	return
	opt stack 0
GLOBAL	__end_of_Test_Pwm
	__end_of_Test_Pwm:
	signat	_Test_Pwm,89
	global	_Work_RAM_CLR

;; *************** function _Work_RAM_CLR *****************
;; Defined at:
;;		line 416 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/200
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Test_Pwm
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=1
	line	416
global __ptext15
__ptext15:	;psect for function _Work_RAM_CLR
psect	text15
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	416
	global	__size_of_Work_RAM_CLR
	__size_of_Work_RAM_CLR	equ	__end_of_Work_RAM_CLR-_Work_RAM_CLR
	
_Work_RAM_CLR:	
;incstack = 0
	opt	stack 3
; Regs used in _Work_RAM_CLR: [wreg+status,2+status,0]
	line	418
	
l7729:	
	line	435
	
l4868:	
	line	437
;WHQ_TP_ZPGS_V1.2.c: 435: else
;WHQ_TP_ZPGS_V1.2.c: 436: {
;WHQ_TP_ZPGS_V1.2.c: 437: pwmtf = 0;
	bcf	(_pwmtf/8),(_pwmtf)&7	;volatile
	line	438
;WHQ_TP_ZPGS_V1.2.c: 438: pwmtf1 = 0;
	bcf	(_pwmtf1/8),(_pwmtf1)&7	;volatile
	line	439
;WHQ_TP_ZPGS_V1.2.c: 439: pwmtonf = 0;
	bcf	(_pwmtonf/8),(_pwmtonf)&7	;volatile
	line	440
	
l7757:	
;WHQ_TP_ZPGS_V1.2.c: 440: pfgonetemp.pfgtemp = (pfgonetemp.pfgtemp & 0x8000) + pwmfst;
	movlw	0
	andwf	(_pfgonetemp),w
	movwf	(??_Work_RAM_CLR+0)+0
	movlw	080h
	andwf	(_pfgonetemp+1),w
	movwf	1+(??_Work_RAM_CLR+0)+0
	movf	(_pwmfst),w	;volatile
	addwf	0+(??_Work_RAM_CLR+0)+0,w
	movwf	(_pfgonetemp)
	movf	(_pwmfst+1),w	;volatile
	skipnc
	incf	(_pwmfst+1),w	;volatile
	addwf	1+(??_Work_RAM_CLR+0)+0,w
	movwf	1+(_pfgonetemp)
	line	441
	
l7759:	
;WHQ_TP_ZPGS_V1.2.c: 441: pwmnold = pfgonetemp.pfgtemp & 0x7fff;
	movf	(_pfgonetemp+1),w
	movwf	(_pwmnold+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmnold)	;volatile
	
l7761:	
	bcf	(_pwmnold)+(15/8),(15)&7	;volatile
	line	442
	
l7763:	
;WHQ_TP_ZPGS_V1.2.c: 442: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	443
	
l7765:	
;WHQ_TP_ZPGS_V1.2.c: 443: ponecf = 0;
	bcf	(_ponecf/8),(_ponecf)&7	;volatile
	line	444
	
l7767:	
;WHQ_TP_ZPGS_V1.2.c: 444: cur_addatold0 = 0;
	clrf	(_cur_addatold0)	;volatile
	line	445
	
l7769:	
;WHQ_TP_ZPGS_V1.2.c: 445: cur_addatold1 = 0;
	clrf	(_cur_addatold1)	;volatile
	line	446
	
l7771:	
;WHQ_TP_ZPGS_V1.2.c: 446: cur_addatold2 = 0;
	clrf	(_cur_addatold2)	;volatile
	line	447
	
l7773:	
;WHQ_TP_ZPGS_V1.2.c: 447: curokcl = 0;
	clrf	(_curokcl)	;volatile
	line	448
	
l7775:	
;WHQ_TP_ZPGS_V1.2.c: 448: onoff_fst = 0;
	bcf	(_onoff_fst/8),(_onoff_fst)&7	;volatile
	line	449
	
l7777:	
;WHQ_TP_ZPGS_V1.2.c: 449: whavecl = 0;
	clrf	(_whavecl)	;volatile
	line	450
	
l7779:	
;WHQ_TP_ZPGS_V1.2.c: 450: wnoncl = 0;
	clrf	(_wnoncl)	;volatile
	line	451
	
l7781:	
;WHQ_TP_ZPGS_V1.2.c: 451: ponesec = 0;
	clrf	(_ponesec)	;volatile
	line	452
	
l7783:	
;WHQ_TP_ZPGS_V1.2.c: 452: curupc = 0;
	clrf	(_curupc)	;volatile
	line	453
	
l7785:	
;WHQ_TP_ZPGS_V1.2.c: 453: curdownc = 0;
	clrf	(_curdownc)	;volatile
	line	454
	
l7787:	
;WHQ_TP_ZPGS_V1.2.c: 454: curupf = 0;
	bcf	(_curupf/8),(_curupf)&7	;volatile
	line	455
	
l7789:	
;WHQ_TP_ZPGS_V1.2.c: 455: pwmlv = 0;
	clrf	(_pwmlv)	;volatile
	clrf	(_pwmlv+1)	;volatile
	line	456
	
l7791:	
;WHQ_TP_ZPGS_V1.2.c: 456: pwmold = 0;
	clrf	(_pwmold)	;volatile
	clrf	(_pwmold+1)	;volatile
	line	457
	
l7793:	
;WHQ_TP_ZPGS_V1.2.c: 457: pwmhc = 0;
	clrf	(_pwmhc)	;volatile
	line	458
	
l7795:	
;WHQ_TP_ZPGS_V1.2.c: 458: pwmlc = 0;
	clrf	(_pwmlc)	;volatile
	line	459
	
l7797:	
;WHQ_TP_ZPGS_V1.2.c: 459: PFGCON1 &= ~0x80;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(286)^0100h+(7/8),(7)&7	;volatile
	line	461
	
l4870:	
	return
	opt stack 0
GLOBAL	__end_of_Work_RAM_CLR
	__end_of_Work_RAM_CLR:
	signat	_Work_RAM_CLR,89
	global	_Test_water

;; *************** function _Test_water *****************
;; Defined at:
;;		line 548 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            2    4[BANK0 ] unsigned int 
;;  temph           1    3[BANK0 ] unsigned char 
;;  templ           1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Test_Pwm
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=1
	line	548
global __ptext16
__ptext16:	;psect for function _Test_water
psect	text16
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	548
	global	__size_of_Test_water
	__size_of_Test_water	equ	__end_of_Test_water-_Test_water
	
_Test_water:	
;incstack = 0
	opt	stack 3
; Regs used in _Test_water: [wreg+status,2+status,0+btemp+1]
	line	557
	
l7855:	
;WHQ_TP_ZPGS_V1.2.c: 550: unsigned char templ,temph;
;WHQ_TP_ZPGS_V1.2.c: 551: unsigned int temp;
;WHQ_TP_ZPGS_V1.2.c: 552: static unsigned int curstrold;
;WHQ_TP_ZPGS_V1.2.c: 553: static unsigned int strupc;
;WHQ_TP_ZPGS_V1.2.c: 554: static unsigned int ytdly;
;WHQ_TP_ZPGS_V1.2.c: 555: static bit watnof = 0;
;WHQ_TP_ZPGS_V1.2.c: 557: watnof=0;
	bcf	(Test_water@watnof/8),(Test_water@watnof)&7
	line	559
;WHQ_TP_ZPGS_V1.2.c: 559: if(!pwmtf)
	btfsc	(_pwmtf/8),(_pwmtf)&7	;volatile
	goto	u3201
	goto	u3200
u3201:
	goto	l4903
u3200:
	line	561
	
l7857:	
;WHQ_TP_ZPGS_V1.2.c: 560: {
;WHQ_TP_ZPGS_V1.2.c: 561: if(pwmtonf)
	btfss	(_pwmtonf/8),(_pwmtonf)&7	;volatile
	goto	u3211
	goto	u3210
u3211:
	goto	l7877
u3210:
	line	563
	
l7859:	
;WHQ_TP_ZPGS_V1.2.c: 562: {
;WHQ_TP_ZPGS_V1.2.c: 563: if((pfgonetemp.pfgtemp & 0x03ff) > pwmlv)
	movlw	0FFh
	andwf	(_pfgonetemp),w
	movwf	(??_Test_water+0)+0
	movlw	03h
	andwf	(_pfgonetemp+1),w
	movwf	1+(??_Test_water+0)+0
	movf	1+(??_Test_water+0)+0,w
	subwf	(_pwmlv+1),w	;volatile
	skipz
	goto	u3225
	movf	0+(??_Test_water+0)+0,w
	subwf	(_pwmlv),w	;volatile
u3225:
	skipnc
	goto	u3221
	goto	u3220
u3221:
	goto	l4905
u3220:
	line	565
	
l7861:	
;WHQ_TP_ZPGS_V1.2.c: 564: {
;WHQ_TP_ZPGS_V1.2.c: 565: temp = (pfgonetemp.pfgtemp&0x03ff) - pwmlv;
	movf	(_pfgonetemp+1),w
	movwf	(Test_water@temp+1)
	movf	(_pfgonetemp),w
	movwf	(Test_water@temp)
	movlw	0FFh
	andwf	(Test_water@temp),f
	movlw	03h
	andwf	(Test_water@temp+1),f
;WHQ_TP_ZPGS_V1.2.c: 566: xldisp = temp;
	movf	(_pwmlv),w	;volatile
	subwf	(Test_water@temp),f
	movf	(_pwmlv+1),w	;volatile
	skipc
	decf	(Test_water@temp+1),f
	subwf	(Test_water@temp+1),f
	line	567
	movlw	0
	subwf	(Test_water@temp+1),w
	movlw	06h
	skipnz
	subwf	(Test_water@temp),w
	skipnc
	goto	u3231
	goto	u3230
u3231:
	goto	l4905
u3230:
	line	569
	
l7863:	
;WHQ_TP_ZPGS_V1.2.c: 568: {
;WHQ_TP_ZPGS_V1.2.c: 569: return 0xff;
	movlw	low(0FFh)
	goto	l4907
	line	571
	
l4905:	
	line	572
;WHQ_TP_ZPGS_V1.2.c: 570: }
;WHQ_TP_ZPGS_V1.2.c: 571: }
;WHQ_TP_ZPGS_V1.2.c: 572: if(!curupf)
	btfsc	(_curupf/8),(_curupf)&7	;volatile
	goto	u3241
	goto	u3240
u3241:
	goto	l7873
u3240:
	goto	l7863
	line	578
	
l7873:	
	movf	(_cur_addat),w	;volatile
	addlw	low(05h)
	movwf	(??_Test_water+0)+0
	movlw	high(05h)
	skipnc
	movlw	(high(05h)+1)&0ffh
	movwf	((??_Test_water+0)+0)+1
	movf	1+(??_Test_water+0)+0,w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3255
	movlw	01Fh
	subwf	0+(??_Test_water+0)+0,w
u3255:

	skipnc
	goto	u3251
	goto	u3250
u3251:
	goto	l4927
u3250:
	line	580
	
l7875:	
;WHQ_TP_ZPGS_V1.2.c: 579: {
;WHQ_TP_ZPGS_V1.2.c: 580: watnof=1;
	bsf	(Test_water@watnof/8),(Test_water@watnof)&7
	goto	l4927
	line	586
	
l7877:	
	movlw	low(012h)
	subwf	(_cur_addat),w	;volatile
	skipnc
	goto	u3261
	goto	u3260
u3261:
	goto	l7885
u3260:
	line	588
	
l7879:	
;WHQ_TP_ZPGS_V1.2.c: 587: {
;WHQ_TP_ZPGS_V1.2.c: 588: strupc = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(Test_water@strupc)^080h
	clrf	(Test_water@strupc+1)^080h
	line	589
	
l7881:	
;WHQ_TP_ZPGS_V1.2.c: 589: pwmlv = pfgonetemp.pfgtemp&0x03ff;
	movf	(_pfgonetemp+1),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_pwmlv+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmlv)	;volatile
	
l7883:	
	movlw	0FFh
	andwf	(_pwmlv),f	;volatile
	movlw	03h
	andwf	(_pwmlv+1),f	;volatile
	line	590
;WHQ_TP_ZPGS_V1.2.c: 590: }
	goto	l4913
	line	593
	
l7885:	
;WHQ_TP_ZPGS_V1.2.c: 591: else
;WHQ_TP_ZPGS_V1.2.c: 592: {
;WHQ_TP_ZPGS_V1.2.c: 593: if(++strupc >= 500)
	bsf	status, 5	;RP0=1, select bank1
	incf	(Test_water@strupc)^080h,f
	skipnz
	incf	(Test_water@strupc+1)^080h,f
	movlw	01h
	subwf	((Test_water@strupc+1)^080h),w
	movlw	0F4h
	skipnz
	subwf	((Test_water@strupc)^080h),w
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l4913
u3270:
	line	595
	
l7887:	
;WHQ_TP_ZPGS_V1.2.c: 594: {
;WHQ_TP_ZPGS_V1.2.c: 595: strupc=0;
	clrf	(Test_water@strupc)^080h
	clrf	(Test_water@strupc+1)^080h
	goto	l7863
	line	598
	
l4913:	
	line	599
;WHQ_TP_ZPGS_V1.2.c: 597: }
;WHQ_TP_ZPGS_V1.2.c: 598: }
;WHQ_TP_ZPGS_V1.2.c: 599: if(curupf)
	btfss	(_curupf/8),(_curupf)&7	;volatile
	goto	u3281
	goto	u3280
u3281:
	goto	l7901
u3280:
	line	601
	
l7893:	
;WHQ_TP_ZPGS_V1.2.c: 600: {
;WHQ_TP_ZPGS_V1.2.c: 601: curstrold = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(Test_water@curstrold)
	clrf	(Test_water@curstrold+1)
	line	602
	
l7895:	
;WHQ_TP_ZPGS_V1.2.c: 602: if(curmax < cur_addat)
	movf	(_cur_addat),w	;volatile
	subwf	(_curmax),w	;volatile
	skipnc
	goto	u3291
	goto	u3290
u3291:
	goto	l4917
u3290:
	line	604
	
l7897:	
;WHQ_TP_ZPGS_V1.2.c: 603: {
;WHQ_TP_ZPGS_V1.2.c: 604: curmax = cur_addat;
	movf	(_cur_addat),w	;volatile
	movwf	(_curmax)	;volatile
	line	605
;WHQ_TP_ZPGS_V1.2.c: 605: }
	goto	l4927
	line	610
	
l4917:	
;WHQ_TP_ZPGS_V1.2.c: 609: }
;WHQ_TP_ZPGS_V1.2.c: 610: }
	goto	l4927
	line	613
	
l7901:	
;WHQ_TP_ZPGS_V1.2.c: 611: else
;WHQ_TP_ZPGS_V1.2.c: 612: {
;WHQ_TP_ZPGS_V1.2.c: 613: curmax = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_curmax)	;volatile
	line	614
	
l7903:	
;WHQ_TP_ZPGS_V1.2.c: 614: if(0 != curstrold)
	movf	((Test_water@curstrold)),w
iorwf	((Test_water@curstrold+1)),w
	btfsc	status,2
	goto	u3301
	goto	u3300
u3301:
	goto	l4920
u3300:
	line	616
	
l7905:	
;WHQ_TP_ZPGS_V1.2.c: 615: {
;WHQ_TP_ZPGS_V1.2.c: 616: if(curstrold > cur_addat)
	movf	(_cur_addat),w	;volatile
	movwf	(??_Test_water+0)+0
	clrf	(??_Test_water+0)+0+1
	movf	(Test_water@curstrold+1),w
	subwf	1+(??_Test_water+0)+0,w
	skipz
	goto	u3315
	movf	(Test_water@curstrold),w
	subwf	0+(??_Test_water+0)+0,w
u3315:
	skipnc
	goto	u3311
	goto	u3310
u3311:
	goto	l7917
u3310:
	line	618
	
l7907:	
;WHQ_TP_ZPGS_V1.2.c: 617: {
;WHQ_TP_ZPGS_V1.2.c: 618: curdownc++;
	incf	(_curdownc),f	;volatile
	line	619
	
l7909:	
;WHQ_TP_ZPGS_V1.2.c: 619: if(curdownc >= 2)
	movlw	low(02h)
	subwf	(_curdownc),w	;volatile
	skipc
	goto	u3321
	goto	u3320
u3321:
	goto	l4920
u3320:
	line	621
	
l7911:	
;WHQ_TP_ZPGS_V1.2.c: 620: {
;WHQ_TP_ZPGS_V1.2.c: 621: curdownc = 0;
	clrf	(_curdownc)	;volatile
	line	622
;WHQ_TP_ZPGS_V1.2.c: 622: curupc = 0;
	clrf	(_curupc)	;volatile
	line	623
	
l7913:	
;WHQ_TP_ZPGS_V1.2.c: 623: pwmlv = pfgonetemp.pfgtemp&0x03ff;
	movf	(_pfgonetemp+1),w
	movwf	(_pwmlv+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmlv)	;volatile
	
l7915:	
	movlw	0FFh
	andwf	(_pwmlv),f	;volatile
	movlw	03h
	andwf	(_pwmlv+1),f	;volatile
	goto	l4920
	line	626
	
l7917:	
;WHQ_TP_ZPGS_V1.2.c: 626: else if(curstrold < cur_addat)
	movf	(_cur_addat),w	;volatile
	movwf	(??_Test_water+0)+0
	clrf	(??_Test_water+0)+0+1
	movf	1+(??_Test_water+0)+0,w
	subwf	(Test_water@curstrold+1),w
	skipz
	goto	u3335
	movf	0+(??_Test_water+0)+0,w
	subwf	(Test_water@curstrold),w
u3335:
	skipnc
	goto	u3331
	goto	u3330
u3331:
	goto	l4920
u3330:
	line	628
	
l7919:	
;WHQ_TP_ZPGS_V1.2.c: 627: {
;WHQ_TP_ZPGS_V1.2.c: 628: curupc++;
	incf	(_curupc),f	;volatile
	line	629
	
l7921:	
;WHQ_TP_ZPGS_V1.2.c: 629: if(curupc >= 3)
	movlw	low(03h)
	subwf	(_curupc),w	;volatile
	skipc
	goto	u3341
	goto	u3340
u3341:
	goto	l4920
u3340:
	line	631
	
l7923:	
;WHQ_TP_ZPGS_V1.2.c: 630: {
;WHQ_TP_ZPGS_V1.2.c: 631: curupc = 0;
	clrf	(_curupc)	;volatile
	line	632
;WHQ_TP_ZPGS_V1.2.c: 632: curdownc = 0;
	clrf	(_curdownc)	;volatile
	line	633
	
l7925:	
;WHQ_TP_ZPGS_V1.2.c: 633: if(0 == curupf)
	btfsc	(_curupf/8),(_curupf)&7	;volatile
	goto	u3351
	goto	u3350
u3351:
	goto	l7929
u3350:
	line	635
	
l7927:	
;WHQ_TP_ZPGS_V1.2.c: 634: {
;WHQ_TP_ZPGS_V1.2.c: 635: pwmlv = pfgonetemp.pfgtemp&0x03ff;
	movf	(_pfgonetemp+1),w
	movwf	(_pwmlv+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmlv)	;volatile
	movlw	0FFh
	andwf	(_pwmlv),f	;volatile
	movlw	03h
	andwf	(_pwmlv+1),f	;volatile
	line	637
	
l7929:	
;WHQ_TP_ZPGS_V1.2.c: 636: }
;WHQ_TP_ZPGS_V1.2.c: 637: curupf = 1;
	bsf	(_curupf/8),(_curupf)&7	;volatile
	line	640
	
l4920:	
	line	641
;WHQ_TP_ZPGS_V1.2.c: 638: }
;WHQ_TP_ZPGS_V1.2.c: 639: }
;WHQ_TP_ZPGS_V1.2.c: 640: }
;WHQ_TP_ZPGS_V1.2.c: 641: curstrold = cur_addat;
	movf	(_cur_addat),w	;volatile
	movwf	(Test_water@curstrold)
	clrf	(Test_water@curstrold+1)
	goto	l4927
	line	646
	
l4903:	
	line	648
;WHQ_TP_ZPGS_V1.2.c: 646: else
;WHQ_TP_ZPGS_V1.2.c: 647: {
;WHQ_TP_ZPGS_V1.2.c: 648: if(!pwmtf1)
	btfsc	(_pwmtf1/8),(_pwmtf1)&7	;volatile
	goto	u3361
	goto	u3360
u3361:
	goto	l7939
u3360:
	line	650
	
l7931:	
;WHQ_TP_ZPGS_V1.2.c: 649: {
;WHQ_TP_ZPGS_V1.2.c: 650: if(++Ytzpcl >= 125)
	movlw	low(07Dh)
	incf	(_Ytzpcl),f	;volatile
	subwf	((_Ytzpcl)),w	;volatile
	skipc
	goto	u3371
	goto	u3370
u3371:
	goto	l4927
u3370:
	line	652
	
l7933:	
;WHQ_TP_ZPGS_V1.2.c: 651: {
;WHQ_TP_ZPGS_V1.2.c: 652: Ytzpcl=0;
	clrf	(_Ytzpcl)	;volatile
	goto	l7863
	line	658
	
l7939:	
	movlw	low(021h)
	subwf	(_cur_addat),w	;volatile
	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l7943
u3380:
	
l7941:	
	movf	(_cur_addat),w	;volatile
	addlw	low(02h)
	movwf	(??_Test_water+0)+0
	movlw	high(02h)
	skipnc
	movlw	(high(02h)+1)&0ffh
	movwf	((??_Test_water+0)+0)+1
	movf	1+(??_Test_water+0)+0,w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u3395
	movlw	01Eh
	subwf	0+(??_Test_water+0)+0,w
u3395:

	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l4931
u3390:
	line	660
	
l7943:	
;WHQ_TP_ZPGS_V1.2.c: 659: {
;WHQ_TP_ZPGS_V1.2.c: 660: pwmlc = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_pwmlc)	;volatile
	line	661
;WHQ_TP_ZPGS_V1.2.c: 661: pwmhc = 0;
	clrf	(_pwmhc)	;volatile
	line	662
;WHQ_TP_ZPGS_V1.2.c: 662: }
	goto	l4934
	line	663
	
l4931:	
	line	665
;WHQ_TP_ZPGS_V1.2.c: 663: else
;WHQ_TP_ZPGS_V1.2.c: 664: {
;WHQ_TP_ZPGS_V1.2.c: 665: if(PFGchgf)
	btfss	(_PFGchgf/8),(_PFGchgf)&7	;volatile
	goto	u3401
	goto	u3400
u3401:
	goto	l4934
u3400:
	line	667
	
l7945:	
;WHQ_TP_ZPGS_V1.2.c: 666: {
;WHQ_TP_ZPGS_V1.2.c: 667: PFGchgf = 0;
	bcf	(_PFGchgf/8),(_PFGchgf)&7	;volatile
	line	668
	
l7947:	
;WHQ_TP_ZPGS_V1.2.c: 668: if(0 != pwmold)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_pwmold)),w	;volatile
iorwf	((_pwmold+1)),w	;volatile
	btfsc	status,2
	goto	u3411
	goto	u3410
u3411:
	goto	l7973
u3410:
	line	670
	
l7949:	
;WHQ_TP_ZPGS_V1.2.c: 669: {
;WHQ_TP_ZPGS_V1.2.c: 670: if((pfgonetemp.pfgtemp & 0x03ff) > pwmold)
	movlw	0FFh
	andwf	(_pfgonetemp),w
	movwf	(??_Test_water+0)+0
	movlw	03h
	andwf	(_pfgonetemp+1),w
	movwf	1+(??_Test_water+0)+0
	movf	1+(??_Test_water+0)+0,w
	subwf	(_pwmold+1),w	;volatile
	skipz
	goto	u3425
	movf	0+(??_Test_water+0)+0,w
	subwf	(_pwmold),w	;volatile
u3425:
	skipnc
	goto	u3421
	goto	u3420
u3421:
	goto	l7961
u3420:
	line	672
	
l7951:	
;WHQ_TP_ZPGS_V1.2.c: 671: {
;WHQ_TP_ZPGS_V1.2.c: 672: pwmlc = 0;
	clrf	(_pwmlc)	;volatile
	line	673
	
l7953:	
;WHQ_TP_ZPGS_V1.2.c: 673: if(++pwmhc >= 6)
	movlw	low(06h)
	incf	(_pwmhc),f	;volatile
	subwf	((_pwmhc)),w	;volatile
	skipc
	goto	u3431
	goto	u3430
u3431:
	goto	l7973
u3430:
	line	675
	
l7955:	
;WHQ_TP_ZPGS_V1.2.c: 674: {
;WHQ_TP_ZPGS_V1.2.c: 675: pwmhc = 0;
	clrf	(_pwmhc)	;volatile
	goto	l7863
	line	679
	
l7961:	
;WHQ_TP_ZPGS_V1.2.c: 679: else if((pfgonetemp.pfgtemp & 0x03ff) < pwmold)
	movlw	0FFh
	andwf	(_pfgonetemp),w
	movwf	(??_Test_water+0)+0
	movlw	03h
	andwf	(_pfgonetemp+1),w
	movwf	1+(??_Test_water+0)+0
	movf	(_pwmold+1),w	;volatile
	subwf	1+(??_Test_water+0)+0,w
	skipz
	goto	u3445
	movf	(_pwmold),w	;volatile
	subwf	0+(??_Test_water+0)+0,w
u3445:
	skipnc
	goto	u3441
	goto	u3440
u3441:
	goto	l7973
u3440:
	line	681
	
l7963:	
;WHQ_TP_ZPGS_V1.2.c: 680: {
;WHQ_TP_ZPGS_V1.2.c: 681: pwmhc = 0;
	clrf	(_pwmhc)	;volatile
	line	682
	
l7965:	
;WHQ_TP_ZPGS_V1.2.c: 682: if(++pwmlc >= 6)
	movlw	low(06h)
	incf	(_pwmlc),f	;volatile
	subwf	((_pwmlc)),w	;volatile
	skipc
	goto	u3451
	goto	u3450
u3451:
	goto	l4939
u3450:
	line	684
	
l7967:	
;WHQ_TP_ZPGS_V1.2.c: 683: {
;WHQ_TP_ZPGS_V1.2.c: 684: pwmlc = 0;
	clrf	(_pwmlc)	;volatile
	goto	l7863
	line	689
	
l4939:	
	line	690
	
l7973:	
;WHQ_TP_ZPGS_V1.2.c: 686: }
;WHQ_TP_ZPGS_V1.2.c: 687: }
;WHQ_TP_ZPGS_V1.2.c: 689: }
;WHQ_TP_ZPGS_V1.2.c: 690: pwmold = pfgonetemp.pfgtemp & 0x03ff;
	movf	(_pfgonetemp+1),w
	movwf	(_pwmold+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmold)	;volatile
	movlw	0FFh
	andwf	(_pwmold),f	;volatile
	movlw	03h
	andwf	(_pwmold+1),f	;volatile
	line	692
	
l4934:	
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\WHQ_TP_ZPGS.h"
	line	195
	movlw	low(024h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Test_water@temph)
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	695
;WHQ_TP_ZPGS_V1.2.c: 695: if(cur_addat <= templ)
	movlw	low(01Ah)
	subwf	(_cur_addat),w	;volatile
	skipnc
	goto	u3461
	goto	u3460
u3461:
	goto	l7977
u3460:
	line	697
	
l7975:	
;WHQ_TP_ZPGS_V1.2.c: 696: {
;WHQ_TP_ZPGS_V1.2.c: 697: watnof = 1;
	bsf	(Test_water@watnof/8),(Test_water@watnof)&7
	line	699
	
l7977:	
;WHQ_TP_ZPGS_V1.2.c: 698: }
;WHQ_TP_ZPGS_V1.2.c: 699: if(cur_addat >= temph)
	movlw	low(024h)
	subwf	(_cur_addat),w	;volatile
	skipc
	goto	u3471
	goto	u3470
u3471:
	goto	l4927
u3470:
	goto	l7875
	line	704
	
l4927:	
	line	706
;WHQ_TP_ZPGS_V1.2.c: 702: }
;WHQ_TP_ZPGS_V1.2.c: 703: }
;WHQ_TP_ZPGS_V1.2.c: 704: }
;WHQ_TP_ZPGS_V1.2.c: 706: if(watnof)
	btfss	(Test_water@watnof/8),(Test_water@watnof)&7
	goto	u3481
	goto	u3480
u3481:
	goto	l7993
u3480:
	line	708
	
l7981:	
;WHQ_TP_ZPGS_V1.2.c: 707: {
;WHQ_TP_ZPGS_V1.2.c: 708: wnoncl++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_wnoncl),f	;volatile
	line	709
	
l7983:	
;WHQ_TP_ZPGS_V1.2.c: 709: whavecl=0;
	clrf	(_whavecl)	;volatile
	line	710
	
l7985:	
;WHQ_TP_ZPGS_V1.2.c: 710: if(wnoncl >= 2)
	movlw	low(02h)
	subwf	(_wnoncl),w	;volatile
	skipc
	goto	u3491
	goto	u3490
u3491:
	goto	l7999
u3490:
	line	712
	
l7987:	
;WHQ_TP_ZPGS_V1.2.c: 711: {
;WHQ_TP_ZPGS_V1.2.c: 712: wnoncl=0;
	clrf	(_wnoncl)	;volatile
	goto	l7863
	line	718
	
l7993:	
;WHQ_TP_ZPGS_V1.2.c: 716: else
;WHQ_TP_ZPGS_V1.2.c: 717: {
;WHQ_TP_ZPGS_V1.2.c: 718: whavecl++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_whavecl),f	;volatile
	line	719
	
l7995:	
;WHQ_TP_ZPGS_V1.2.c: 719: if(whavecl>=5)
	movlw	low(05h)
	subwf	(_whavecl),w	;volatile
	skipc
	goto	u3501
	goto	u3500
u3501:
	goto	l7999
u3500:
	line	721
	
l7997:	
;WHQ_TP_ZPGS_V1.2.c: 720: {
;WHQ_TP_ZPGS_V1.2.c: 721: whavecl=0;
	clrf	(_whavecl)	;volatile
	line	722
;WHQ_TP_ZPGS_V1.2.c: 722: wnoncl=0;
	clrf	(_wnoncl)	;volatile
	line	725
	
l7999:	
;WHQ_TP_ZPGS_V1.2.c: 723: }
;WHQ_TP_ZPGS_V1.2.c: 724: }
;WHQ_TP_ZPGS_V1.2.c: 725: return 0;
	movlw	low(0)
	line	726
	
l4907:	
	return
	opt stack 0
GLOBAL	__end_of_Test_water
	__end_of_Test_water:
	signat	_Test_water,89
	global	_Test_PWM_Fst

;; *************** function _Test_PWM_Fst *****************
;; Defined at:
;;		line 501 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  templ           1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Test_Pwm_Cur
;;		_YTPFG_Flash
;; This function is called by:
;;		_Test_Pwm
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	line	501
global __ptext17
__ptext17:	;psect for function _Test_PWM_Fst
psect	text17
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	501
	global	__size_of_Test_PWM_Fst
	__size_of_Test_PWM_Fst	equ	__end_of_Test_PWM_Fst-_Test_PWM_Fst
	
_Test_PWM_Fst:	
;incstack = 0
	opt	stack 1
; Regs used in _Test_PWM_Fst: [wreg+status,2+status,0+pclath+cstack]
	line	505
	
l7811:	
;WHQ_TP_ZPGS_V1.2.c: 503: unsigned char templ;
;WHQ_TP_ZPGS_V1.2.c: 505: templ = Test_Pwm_Cur();
	fcall	_Test_Pwm_Cur
	movwf	(Test_PWM_Fst@templ)
	line	506
	
l7813:	
;WHQ_TP_ZPGS_V1.2.c: 506: if((0xff == templ) || (cur_addat == curset))
		incf	((Test_PWM_Fst@templ)),w
	btfsc	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l4883
u3140:
	
l7815:	
		movlw	30
	xorwf	((_cur_addat)),w	;volatile
	btfss	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l7845
u3150:
	
l4883:	
	line	508
;WHQ_TP_ZPGS_V1.2.c: 507: {
;WHQ_TP_ZPGS_V1.2.c: 508: pwmtonf = 1;
	bsf	(_pwmtonf/8),(_pwmtonf)&7	;volatile
	line	509
	
l7817:	
;WHQ_TP_ZPGS_V1.2.c: 509: if(++curokcl >= 3)
	movlw	low(03h)
	incf	(_curokcl),f	;volatile
	subwf	((_curokcl)),w	;volatile
	skipc
	goto	u3161
	goto	u3160
u3161:
	goto	l7851
u3160:
	line	511
	
l7819:	
;WHQ_TP_ZPGS_V1.2.c: 510: {
;WHQ_TP_ZPGS_V1.2.c: 511: curokcl = 0;
	clrf	(_curokcl)	;volatile
	line	512
	
l7821:	
;WHQ_TP_ZPGS_V1.2.c: 512: if(!pwmtf)
	btfsc	(_pwmtf/8),(_pwmtf)&7	;volatile
	goto	u3171
	goto	u3170
u3171:
	goto	l4885
u3170:
	line	514
	
l7823:	
;WHQ_TP_ZPGS_V1.2.c: 513: {
;WHQ_TP_ZPGS_V1.2.c: 514: Ytzpcl = 0;
	clrf	(_Ytzpcl)	;volatile
	line	515
	
l7825:	
;WHQ_TP_ZPGS_V1.2.c: 515: onoff_fst = 0;
	bcf	(_onoff_fst/8),(_onoff_fst)&7	;volatile
	line	516
	
l7827:	
;WHQ_TP_ZPGS_V1.2.c: 516: pwmtf = 1;
	bsf	(_pwmtf/8),(_pwmtf)&7	;volatile
	line	523
	
l4886:	
	line	525
;WHQ_TP_ZPGS_V1.2.c: 523: else
;WHQ_TP_ZPGS_V1.2.c: 524: {
;WHQ_TP_ZPGS_V1.2.c: 525: pwmtf1 = 1;
	bsf	(_pwmtf1/8),(_pwmtf1)&7	;volatile
	goto	l7837
	line	528
	
l4885:	
;WHQ_TP_ZPGS_V1.2.c: 528: else if(!pwmtf1)
	btfsc	(_pwmtf1/8),(_pwmtf1)&7	;volatile
	goto	u3181
	goto	u3180
u3181:
	goto	l7837
u3180:
	goto	l4886
	line	532
	
l7837:	
;WHQ_TP_ZPGS_V1.2.c: 531: }
;WHQ_TP_ZPGS_V1.2.c: 532: pfgonetemp.pfgtemp = pfgonetemp.pfgtemp-2;
	movlw	0FEh
	addwf	(_pfgonetemp),f
	skipnc
	incf	(_pfgonetemp+1),f
	movlw	0FFh
	addwf	(_pfgonetemp+1),f
	line	533
	
l7839:	
;WHQ_TP_ZPGS_V1.2.c: 533: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	534
;WHQ_TP_ZPGS_V1.2.c: 534: pwmnold = pfgonetemp.pfgtemp&0x7fff;
	movf	(_pfgonetemp+1),w
	movwf	(_pwmnold+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmnold)	;volatile
	
l7841:	
	bcf	(_pwmnold)+(15/8),(15)&7	;volatile
	line	535
;WHQ_TP_ZPGS_V1.2.c: 535: return 0xaa;
	movlw	low(0AAh)
	goto	l4890
	line	538
	
l7845:	
;WHQ_TP_ZPGS_V1.2.c: 538: else if(0x55 == templ)
		movlw	85
	xorwf	((Test_PWM_Fst@templ)),w
	btfss	status,2
	goto	u3191
	goto	u3190
u3191:
	goto	l7851
u3190:
	line	540
	
l7847:	
;WHQ_TP_ZPGS_V1.2.c: 539: {
;WHQ_TP_ZPGS_V1.2.c: 540: return 0x55;
	movlw	low(055h)
	goto	l4890
	line	542
	
l7851:	
;WHQ_TP_ZPGS_V1.2.c: 541: }
;WHQ_TP_ZPGS_V1.2.c: 542: return 0x00;
	movlw	low(0)
	line	543
	
l4890:	
	return
	opt stack 0
GLOBAL	__end_of_Test_PWM_Fst
	__end_of_Test_PWM_Fst:
	signat	_Test_PWM_Fst,89
	global	_YTPFG_Flash

;; *************** function _YTPFG_Flash *****************
;; Defined at:
;;		line 485 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            2    3[BANK0 ] unsigned int 
;;  templ           1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/200
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Test_PWM_Fst
;;		_Test_Pwm
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=1
	line	485
global __ptext18
__ptext18:	;psect for function _YTPFG_Flash
psect	text18
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	485
	global	__size_of_YTPFG_Flash
	__size_of_YTPFG_Flash	equ	__end_of_YTPFG_Flash-_YTPFG_Flash
	
_YTPFG_Flash:	
;incstack = 0
	opt	stack 3
; Regs used in _YTPFG_Flash: [wreg+status,2+status,0]
	line	490
	
l7631:	
;WHQ_TP_ZPGS_V1.2.c: 487: unsigned char templ;
;WHQ_TP_ZPGS_V1.2.c: 488: unsigned int temp;
;WHQ_TP_ZPGS_V1.2.c: 490: temp = (pfgonetemp.pfgtemp & 0x03ff) + Drange;
	movf	(_pfgonetemp+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(YTPFG_Flash@temp+1)
	movf	(_pfgonetemp),w
	movwf	(YTPFG_Flash@temp)
	movlw	0FFh
	andwf	(YTPFG_Flash@temp),f
	movlw	03h
	andwf	(YTPFG_Flash@temp+1),f
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\WHQ_TP_ZPGS.h"
	line	198
	movlw	010h
	addwf	(YTPFG_Flash@temp),f
	skipnc
	incf	(YTPFG_Flash@temp+1),f
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	491
;WHQ_TP_ZPGS_V1.2.c: 491: PFGDATA1 = (unsigned char)(temp);
	movf	(YTPFG_Flash@temp),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(287)^0100h	;volatile
	line	492
	
l7633:	
;WHQ_TP_ZPGS_V1.2.c: 492: templ = (unsigned char)((temp >> 3) & 0x60);
	bcf	status, 6	;RP1=0, select bank0
	movf	(YTPFG_Flash@temp+1),w
	movwf	(??_YTPFG_Flash+0)+0+1
	movf	(YTPFG_Flash@temp),w
	movwf	(??_YTPFG_Flash+0)+0
	clrc
	rrf	(??_YTPFG_Flash+0)+1,f
	rrf	(??_YTPFG_Flash+0)+0,f
	clrc
	rrf	(??_YTPFG_Flash+0)+1,f
	rrf	(??_YTPFG_Flash+0)+0,f
	clrc
	rrf	(??_YTPFG_Flash+0)+1,f
	rrf	(??_YTPFG_Flash+0)+0,f
	movf	0+(??_YTPFG_Flash+0)+0,w
	movwf	(YTPFG_Flash@templ)
	
l7635:	
	movlw	low(060h)
	andwf	(YTPFG_Flash@templ),f
	line	493
	
l7637:	
	movf	(YTPFG_Flash@templ),w
	iorlw	08Ah
	bsf	status, 6	;RP1=1, select bank2
	movwf	(286)^0100h	;volatile
	line	494
	
l4878:	
	return
	opt stack 0
GLOBAL	__end_of_YTPFG_Flash
	__end_of_YTPFG_Flash:
	signat	_YTPFG_Flash,89
	global	_Test_Pwm_Cur

;; *************** function _Test_Pwm_Cur *****************
;; Defined at:
;;		line 144 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  templ           1    8[BANK0 ] unsigned char 
;;  temph           1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Pwm_add
;;		_Pwm_dec
;; This function is called by:
;;		_Test_PWM_Fst
;;		_Test_Pwm
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=1
	line	144
global __ptext19
__ptext19:	;psect for function _Test_Pwm_Cur
psect	text19
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	144
	global	__size_of_Test_Pwm_Cur
	__size_of_Test_Pwm_Cur	equ	__end_of_Test_Pwm_Cur-_Test_Pwm_Cur
	
_Test_Pwm_Cur:	
;incstack = 0
	opt	stack 2
; Regs used in _Test_Pwm_Cur: [wreg+status,2+status,0+pclath+cstack]
	line	149
	
l7567:	
	movlw	low(01Fh)
	subwf	(_cur_addat),w	;volatile
	skipc
	goto	u2951
	goto	u2950
u2951:
	goto	l7591
u2950:
	line	151
	
l7569:	
;WHQ_TP_ZPGS_V1.2.c: 150: {
;WHQ_TP_ZPGS_V1.2.c: 151: curdowncl = 0;
	clrf	(Test_Pwm_Cur@curdowncl)
	line	152
	
l7571:	
;WHQ_TP_ZPGS_V1.2.c: 152: if(++curupcl >= 2)
	movlw	low(02h)
	incf	(Test_Pwm_Cur@curupcl),f
	subwf	((Test_Pwm_Cur@curupcl)),w
	skipc
	goto	u2961
	goto	u2960
u2961:
	goto	l7627
u2960:
	line	154
	
l7573:	
;WHQ_TP_ZPGS_V1.2.c: 153: {
;WHQ_TP_ZPGS_V1.2.c: 154: PFGchgf = 1;
	bsf	(_PFGchgf/8),(_PFGchgf)&7	;volatile
	line	155
	
l7575:	
;WHQ_TP_ZPGS_V1.2.c: 155: curupcl = 0;
	clrf	(Test_Pwm_Cur@curupcl)
	line	156
	
l7577:	
;WHQ_TP_ZPGS_V1.2.c: 156: if(0 == Pwm_dec(1,pwmfst))
	movf	(_pwmfst+1),w	;volatile
	movwf	(Pwm_dec@pwmfset+1)
	movf	(_pwmfst),w	;volatile
	movwf	(Pwm_dec@pwmfset)
	movlw	low(01h)
	fcall	_Pwm_dec
	xorlw	0
	skipz
	goto	u2971
	goto	u2970
u2971:
	goto	l7587
u2970:
	line	158
	
l7579:	
;WHQ_TP_ZPGS_V1.2.c: 157: {
;WHQ_TP_ZPGS_V1.2.c: 158: pfgonetemp.pfgtemp = pwmfst;
	movf	(_pwmfst+1),w	;volatile
	movwf	(_pfgonetemp+1)
	movf	(_pwmfst),w	;volatile
	movwf	(_pfgonetemp)
	line	159
	
l7581:	
;WHQ_TP_ZPGS_V1.2.c: 159: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	160
;WHQ_TP_ZPGS_V1.2.c: 160: return 0x55;
	movlw	low(055h)
	goto	l4802
	line	163
	
l7587:	
;WHQ_TP_ZPGS_V1.2.c: 162: else
;WHQ_TP_ZPGS_V1.2.c: 163: return 0xff;
	movlw	low(0FFh)
	goto	l4802
	line	166
	
l7591:	
	movlw	low(01Eh)
	subwf	(_cur_addat),w	;volatile
	skipnc
	goto	u2981
	goto	u2980
u2981:
	goto	l7625
u2980:
	line	168
	
l7593:	
;WHQ_TP_ZPGS_V1.2.c: 167: {
;WHQ_TP_ZPGS_V1.2.c: 168: curupcl = 0;
	clrf	(Test_Pwm_Cur@curupcl)
	line	169
	
l7595:	
;WHQ_TP_ZPGS_V1.2.c: 169: if(++curdowncl >= 2)
	movlw	low(02h)
	incf	(Test_Pwm_Cur@curdowncl),f
	subwf	((Test_Pwm_Cur@curdowncl)),w
	skipc
	goto	u2991
	goto	u2990
u2991:
	goto	l7627
u2990:
	line	171
	
l7597:	
;WHQ_TP_ZPGS_V1.2.c: 170: {
;WHQ_TP_ZPGS_V1.2.c: 171: PFGchgf = 1;
	bsf	(_PFGchgf/8),(_PFGchgf)&7	;volatile
	line	172
	
l7599:	
;WHQ_TP_ZPGS_V1.2.c: 172: curdowncl = 0;
	clrf	(Test_Pwm_Cur@curdowncl)
	line	173
	
l7601:	
	movf	(_cur_addat),w	;volatile
	sublw	01Eh
	movwf	(Test_Pwm_Cur@templ)
	line	174
	
l7603:	
;WHQ_TP_ZPGS_V1.2.c: 174: if(templ >= 20)
	movlw	low(014h)
	subwf	(Test_Pwm_Cur@templ),w
	skipc
	goto	u3001
	goto	u3000
u3001:
	goto	l7607
u3000:
	line	175
	
l7605:	
;WHQ_TP_ZPGS_V1.2.c: 175: temph = 4;
	movlw	low(04h)
	movwf	(Test_Pwm_Cur@temph)
	goto	l7611
	line	176
	
l7607:	
;WHQ_TP_ZPGS_V1.2.c: 176: else if(templ >= 15)
	movlw	low(0Fh)
	subwf	(Test_Pwm_Cur@templ),w
	skipc
	goto	u3011
	goto	u3010
u3011:
	goto	l4809
u3010:
	line	178
	
l7609:	
;WHQ_TP_ZPGS_V1.2.c: 177: {
;WHQ_TP_ZPGS_V1.2.c: 178: temph = 2;
	movlw	low(02h)
	movwf	(Test_Pwm_Cur@temph)
	line	179
;WHQ_TP_ZPGS_V1.2.c: 179: }
	goto	l7611
	line	180
	
l4809:	
	line	181
;WHQ_TP_ZPGS_V1.2.c: 180: else
;WHQ_TP_ZPGS_V1.2.c: 181: temph = 1;
	clrf	(Test_Pwm_Cur@temph)
	incf	(Test_Pwm_Cur@temph),f
	line	182
	
l7611:	
;WHQ_TP_ZPGS_V1.2.c: 182: if(0 == Pwm_add(temph,pwmlst))
	movf	(_pwmlst+1),w	;volatile
	movwf	(Pwm_add@pwmlset+1)
	movf	(_pwmlst),w	;volatile
	movwf	(Pwm_add@pwmlset)
	movf	(Test_Pwm_Cur@temph),w
	fcall	_Pwm_add
	xorlw	0
	skipz
	goto	u3021
	goto	u3020
u3021:
	goto	l7621
u3020:
	goto	l7579
	line	189
	
l7621:	
;WHQ_TP_ZPGS_V1.2.c: 188: else
;WHQ_TP_ZPGS_V1.2.c: 189: return 0xaa;
	movlw	low(0AAh)
	goto	l4802
	line	194
	
l7625:	
;WHQ_TP_ZPGS_V1.2.c: 192: else
;WHQ_TP_ZPGS_V1.2.c: 193: {
;WHQ_TP_ZPGS_V1.2.c: 194: curupcl = 0;
	clrf	(Test_Pwm_Cur@curupcl)
	line	195
;WHQ_TP_ZPGS_V1.2.c: 195: curdowncl = 0;
	clrf	(Test_Pwm_Cur@curdowncl)
	line	197
	
l7627:	
;WHQ_TP_ZPGS_V1.2.c: 196: }
;WHQ_TP_ZPGS_V1.2.c: 197: return 0x00;
	movlw	low(0)
	line	198
	
l4802:	
	return
	opt stack 0
GLOBAL	__end_of_Test_Pwm_Cur
	__end_of_Test_Pwm_Cur:
	signat	_Test_Pwm_Cur,89
	global	_Pwm_dec

;; *************** function _Pwm_dec *****************
;; Defined at:
;;		line 124 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
;; Parameters:    Size  Location     Type
;;  deccl           1    wreg     unsigned char 
;;  pwmfset         2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  deccl           1    4[BANK0 ] unsigned char 
;;  temp            2    5[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Test_Pwm_Cur
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=1
	line	124
global __ptext20
__ptext20:	;psect for function _Pwm_dec
psect	text20
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	124
	global	__size_of_Pwm_dec
	__size_of_Pwm_dec	equ	__end_of_Pwm_dec-_Pwm_dec
	
_Pwm_dec:	
;incstack = 0
	opt	stack 2
; Regs used in _Pwm_dec: [wreg]
;Pwm_dec@deccl stored from wreg
	movwf	(Pwm_dec@deccl)
	line	129
	
l7547:	
;WHQ_TP_ZPGS_V1.2.c: 127: unsigned int temp;
;WHQ_TP_ZPGS_V1.2.c: 129: pfgonetemp.pfgtemp = pfgonetemp.pfgtemp - deccl;
	movf	(Pwm_dec@deccl),w
	subwf	(_pfgonetemp),f
	skipc
	decf	(_pfgonetemp+1),f
	line	130
	
l7549:	
;WHQ_TP_ZPGS_V1.2.c: 130: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	131
;WHQ_TP_ZPGS_V1.2.c: 131: temp = pfgonetemp.pfgtemp & 0x03ff;
	movf	(_pfgonetemp+1),w
	movwf	(Pwm_dec@temp+1)
	movf	(_pfgonetemp),w
	movwf	(Pwm_dec@temp)
	movlw	0FFh
	andwf	(Pwm_dec@temp),f
	movlw	03h
	andwf	(Pwm_dec@temp+1),f
	line	132
;WHQ_TP_ZPGS_V1.2.c: 132: if(temp < (pwmfset & 0x03ff)) return 0;
	movlw	0FFh
	andwf	(Pwm_dec@pwmfset),w
	movwf	(??_Pwm_dec+0)+0
	movlw	03h
	andwf	(Pwm_dec@pwmfset+1),w
	movwf	1+(??_Pwm_dec+0)+0
	movf	1+(??_Pwm_dec+0)+0,w
	subwf	(Pwm_dec@temp+1),w
	skipz
	goto	u2945
	movf	0+(??_Pwm_dec+0)+0,w
	subwf	(Pwm_dec@temp),w
u2945:
	skipnc
	goto	u2941
	goto	u2940
u2941:
	goto	l7555
u2940:
	
l7551:	
	movlw	low(0)
	goto	l4792
	line	133
	
l7555:	
;WHQ_TP_ZPGS_V1.2.c: 133: return 1;
	movlw	low(01h)
	line	134
	
l4792:	
	return
	opt stack 0
GLOBAL	__end_of_Pwm_dec
	__end_of_Pwm_dec:
	signat	_Pwm_dec,8313
	global	_Pwm_add

;; *************** function _Pwm_add *****************
;; Defined at:
;;		line 105 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
;; Parameters:    Size  Location     Type
;;  addcl           1    wreg     unsigned char 
;;  pwmlset         2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  addcl           1    4[BANK0 ] unsigned char 
;;  temp            2    5[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Test_Pwm_Cur
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=1
	line	105
global __ptext21
__ptext21:	;psect for function _Pwm_add
psect	text21
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	105
	global	__size_of_Pwm_add
	__size_of_Pwm_add	equ	__end_of_Pwm_add-_Pwm_add
	
_Pwm_add:	
;incstack = 0
	opt	stack 2
; Regs used in _Pwm_add: [wreg]
;Pwm_add@addcl stored from wreg
	movwf	(Pwm_add@addcl)
	line	110
	
l7535:	
;WHQ_TP_ZPGS_V1.2.c: 108: unsigned int temp;
;WHQ_TP_ZPGS_V1.2.c: 110: pfgonetemp.pfgtemp = pfgonetemp.pfgtemp + addcl;
	movf	(Pwm_add@addcl),w
	addwf	(_pfgonetemp),f
	skipnc
	incf	(_pfgonetemp+1),f
	line	111
	
l7537:	
;WHQ_TP_ZPGS_V1.2.c: 111: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	112
;WHQ_TP_ZPGS_V1.2.c: 112: temp = pfgonetemp.pfgtemp & 0x03ff;
	movf	(_pfgonetemp+1),w
	movwf	(Pwm_add@temp+1)
	movf	(_pfgonetemp),w
	movwf	(Pwm_add@temp)
	movlw	0FFh
	andwf	(Pwm_add@temp),f
	movlw	03h
	andwf	(Pwm_add@temp+1),f
	line	113
;WHQ_TP_ZPGS_V1.2.c: 113: if(temp > (pwmlset & 0x03ff)) return 0;
	movlw	0FFh
	andwf	(Pwm_add@pwmlset),w
	movwf	(??_Pwm_add+0)+0
	movlw	03h
	andwf	(Pwm_add@pwmlset+1),w
	movwf	1+(??_Pwm_add+0)+0
	movf	(Pwm_add@temp+1),w
	subwf	1+(??_Pwm_add+0)+0,w
	skipz
	goto	u2935
	movf	(Pwm_add@temp),w
	subwf	0+(??_Pwm_add+0)+0,w
u2935:
	skipnc
	goto	u2931
	goto	u2930
u2931:
	goto	l7543
u2930:
	
l7539:	
	movlw	low(0)
	goto	l4788
	line	114
	
l7543:	
;WHQ_TP_ZPGS_V1.2.c: 114: return 1;
	movlw	low(01h)
	line	115
	
l4788:	
	return
	opt stack 0
GLOBAL	__end_of_Pwm_add
	__end_of_Pwm_add:
	signat	_Pwm_add,8313
	global	_PFG_read_fst

;; *************** function _PFG_read_fst *****************
;; Defined at:
;;		line 206 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            2    7[BANK0 ] unsigned int 
;;  pfgconset       1    6[BANK0 ] unsigned char 
;;  temph           1    5[BANK0 ] unsigned char 
;;  templ           1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Set_jiyi_re
;; This function is called by:
;;		_Test_Pwm
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=1
	line	206
global __ptext22
__ptext22:	;psect for function _PFG_read_fst
psect	text22
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	206
	global	__size_of_PFG_read_fst
	__size_of_PFG_read_fst	equ	__end_of_PFG_read_fst-_PFG_read_fst
	
_PFG_read_fst:	
;incstack = 0
	opt	stack 2
; Regs used in _PFG_read_fst: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	212
	
l7683:	
;WHQ_TP_ZPGS_V1.2.c: 208: unsigned char templ,temph;
;WHQ_TP_ZPGS_V1.2.c: 209: unsigned int temp;
;WHQ_TP_ZPGS_V1.2.c: 210: unsigned char pfgconset;
;WHQ_TP_ZPGS_V1.2.c: 212: switch(pfg_select)
	goto	l7703
	line	216
	
l7685:	
;WHQ_TP_ZPGS_V1.2.c: 215: {
;WHQ_TP_ZPGS_V1.2.c: 216: templ = Set_jiyi_re(0x18);
	movlw	low(018h)
	fcall	_Set_jiyi_re
	movwf	(PFG_read_fst@templ)
	line	217
;WHQ_TP_ZPGS_V1.2.c: 217: temph = Set_jiyi_re(0x19);
	movlw	low(019h)
	fcall	_Set_jiyi_re
	movwf	(PFG_read_fst@temph)
	line	218
	
l7687:	
;WHQ_TP_ZPGS_V1.2.c: 218: pfgconset = 0x04;
	movlw	low(04h)
	movwf	(PFG_read_fst@pfgconset)
	line	219
;WHQ_TP_ZPGS_V1.2.c: 219: break;
	goto	l7705
	line	223
	
l7689:	
;WHQ_TP_ZPGS_V1.2.c: 222: {
;WHQ_TP_ZPGS_V1.2.c: 223: templ = Set_jiyi_re(0x1a);
	movlw	low(01Ah)
	fcall	_Set_jiyi_re
	movwf	(PFG_read_fst@templ)
	line	224
;WHQ_TP_ZPGS_V1.2.c: 224: temph = Set_jiyi_re(0x1b);
	movlw	low(01Bh)
	fcall	_Set_jiyi_re
	movwf	(PFG_read_fst@temph)
	line	225
	
l7691:	
;WHQ_TP_ZPGS_V1.2.c: 225: pfgconset = 0x24;
	movlw	low(024h)
	movwf	(PFG_read_fst@pfgconset)
	line	226
;WHQ_TP_ZPGS_V1.2.c: 226: break;
	goto	l7705
	line	230
	
l7693:	
;WHQ_TP_ZPGS_V1.2.c: 229: {
;WHQ_TP_ZPGS_V1.2.c: 230: templ = Set_jiyi_re(0x1c);
	movlw	low(01Ch)
	fcall	_Set_jiyi_re
	movwf	(PFG_read_fst@templ)
	line	231
;WHQ_TP_ZPGS_V1.2.c: 231: temph = Set_jiyi_re(0x1d);
	movlw	low(01Dh)
	fcall	_Set_jiyi_re
	movwf	(PFG_read_fst@temph)
	line	232
	
l7695:	
;WHQ_TP_ZPGS_V1.2.c: 232: pfgconset = 0x44;
	movlw	low(044h)
	movwf	(PFG_read_fst@pfgconset)
	line	233
;WHQ_TP_ZPGS_V1.2.c: 233: break;
	goto	l7705
	line	237
	
l7697:	
;WHQ_TP_ZPGS_V1.2.c: 236: {
;WHQ_TP_ZPGS_V1.2.c: 237: templ = Set_jiyi_re(0x1e);
	movlw	low(01Eh)
	fcall	_Set_jiyi_re
	movwf	(PFG_read_fst@templ)
	line	238
;WHQ_TP_ZPGS_V1.2.c: 238: temph = Set_jiyi_re(0x1f);
	movlw	low(01Fh)
	fcall	_Set_jiyi_re
	movwf	(PFG_read_fst@temph)
	line	239
	
l7699:	
;WHQ_TP_ZPGS_V1.2.c: 239: pfgconset = 0x64;
	movlw	low(064h)
	movwf	(PFG_read_fst@pfgconset)
	line	240
;WHQ_TP_ZPGS_V1.2.c: 240: break;
	goto	l7705
	line	212
	
l7703:	
	movlw	low((_pfg_select-__stringbase))
	movwf	fsr0
	fcall	stringdir
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           18    10 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l7685
	xorlw	2^1	; case 2
	skipnz
	goto	l7689
	xorlw	3^2	; case 3
	skipnz
	goto	l7693
	xorlw	4^3	; case 4
	skipnz
	goto	l7697
	goto	l7705
	opt asmopt_pop

	line	244
	
l7705:	
;WHQ_TP_ZPGS_V1.2.c: 244: temph = (unsigned char)(temph&0x03);
	movlw	low(03h)
	andwf	(PFG_read_fst@temph),f
	line	245
	
l7707:	
;WHQ_TP_ZPGS_V1.2.c: 245: temp = (unsigned int)(temph*256 + templ);
	movf	(PFG_read_fst@temph),w
	movwf	(PFG_read_fst@temp+1)
	clrf	(PFG_read_fst@temp)
	
l7709:	
	movf	(PFG_read_fst@templ),w
	addwf	(PFG_read_fst@temp),f
	skipnc
	incf	(PFG_read_fst@temp+1),f
	line	246
	
l7711:	
	movlw	0
	subwf	(PFG_read_fst@temp+1),w
	movlw	0FBh
	skipnz
	subwf	(PFG_read_fst@temp),w
	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l7715
u3100:
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\WHQ_TP_ZPGS.h"
	line	183
	
l7713:	
	movf	(PFG_read_fst@temp),w
	addlw	low(0FF06h)
	movwf	(_pwmfst)	;volatile
	movf	(PFG_read_fst@temp+1),w
	skipnc
	addlw	1
	addlw	high(0FF06h)
	movwf	1+(_pwmfst)	;volatile
	line	247
	goto	l7717
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	249
	
l7715:	
;WHQ_TP_ZPGS_V1.2.c: 248: else
;WHQ_TP_ZPGS_V1.2.c: 249: pwmfst = 0;
	clrf	(_pwmfst)	;volatile
	clrf	(_pwmfst+1)	;volatile
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\WHQ_TP_ZPGS.h"
	line	184
	
l7717:	
	movf	(PFG_read_fst@temp),w
	addlw	low(0FAh)
	movwf	(_pwmlst)	;volatile
	movf	(PFG_read_fst@temp+1),w
	skipnc
	addlw	1
	addlw	high(0FAh)
	movwf	1+(_pwmlst)	;volatile
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	252
	
l7719:	
;WHQ_TP_ZPGS_V1.2.c: 252: if((pwmlst&0x0400) != 0)
	btfss	(_pwmlst+1),(10)&7	;volatile
	goto	u3111
	goto	u3110
u3111:
	goto	l7723
u3110:
	line	253
	
l7721:	
;WHQ_TP_ZPGS_V1.2.c: 253: pwmlst = 1024;
	movlw	0
	movwf	(_pwmlst)	;volatile
	movlw	04h
	movwf	((_pwmlst))+1	;volatile
	line	255
	
l7723:	
;WHQ_TP_ZPGS_V1.2.c: 255: pwmfst = (unsigned int)(pwmfst|(unsigned int)(pfgconset<<8));
	movf	(PFG_read_fst@pfgconset),w
	movwf	(??_PFG_read_fst+0)+0
	clrf	(??_PFG_read_fst+0)+0+1
	movf	(??_PFG_read_fst+0)+0,w
	movwf	(??_PFG_read_fst+0)+1
	clrf	(??_PFG_read_fst+0)+0
	movf	0+(??_PFG_read_fst+0)+0,w
	iorwf	(_pwmfst),f	;volatile
	movf	1+(??_PFG_read_fst+0)+0,w
	iorwf	(_pwmfst+1),f	;volatile
	line	256
	
l7725:	
;WHQ_TP_ZPGS_V1.2.c: 256: pwmlst = (unsigned int)(pwmlst|(unsigned int)(pfgconset<<8));
	movf	(PFG_read_fst@pfgconset),w
	movwf	(??_PFG_read_fst+0)+0
	clrf	(??_PFG_read_fst+0)+0+1
	movf	(??_PFG_read_fst+0)+0,w
	movwf	(??_PFG_read_fst+0)+1
	clrf	(??_PFG_read_fst+0)+0
	movf	0+(??_PFG_read_fst+0)+0,w
	iorwf	(_pwmlst),f	;volatile
	movf	1+(??_PFG_read_fst+0)+0,w
	iorwf	(_pwmlst+1),f	;volatile
	line	257
;WHQ_TP_ZPGS_V1.2.c: 257: pfgonetemp.pfgtemp = pwmfst;
	movf	(_pwmfst+1),w	;volatile
	movwf	(_pfgonetemp+1)
	movf	(_pwmfst),w	;volatile
	movwf	(_pfgonetemp)
	line	258
	
l7727:	
;WHQ_TP_ZPGS_V1.2.c: 258: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	259
;WHQ_TP_ZPGS_V1.2.c: 259: pwmnold = pfgonetemp.pfgtemp;
	movf	(_pfgonetemp+1),w
	movwf	(_pwmnold+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmnold)	;volatile
	line	260
	
l4826:	
	return
	opt stack 0
GLOBAL	__end_of_PFG_read_fst
	__end_of_PFG_read_fst:
	signat	_PFG_read_fst,89
	global	_Set_jiyi_re

;; *************** function _Set_jiyi_re *****************
;; Defined at:
;;		line 68 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\Eeprom.c"
;; Parameters:    Size  Location     Type
;;  raddr           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  raddr           1    0[BANK0 ] unsigned char 
;;  redata          1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PFG_read_fst
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\Eeprom.c"
	line	68
global __ptext23
__ptext23:	;psect for function _Set_jiyi_re
psect	text23
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\Eeprom.c"
	line	68
	global	__size_of_Set_jiyi_re
	__size_of_Set_jiyi_re	equ	__end_of_Set_jiyi_re-_Set_jiyi_re
	
_Set_jiyi_re:	
;incstack = 0
	opt	stack 2
; Regs used in _Set_jiyi_re: [wreg]
;Set_jiyi_re@raddr stored from wreg
	movwf	(Set_jiyi_re@raddr)
	line	72
	
l7559:	
;Eeprom.c: 70: unsigned char redata;
;Eeprom.c: 72: EEADR = raddr;
	movf	(Set_jiyi_re@raddr),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	73
# 73 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\Eeprom.c"
NOP ;# 
psect	text23
	line	74
	
l7561:	
;Eeprom.c: 74: EEPGD = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7	;volsfr
	line	75
# 75 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\Eeprom.c"
NOP ;# 
psect	text23
	line	76
	
l7563:	
;Eeprom.c: 76: RD = 1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3168/8)^0180h,(3168)&7	;volsfr
	line	77
# 77 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\Eeprom.c"
NOP ;# 
	line	78
# 78 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\Eeprom.c"
NOP ;# 
	line	79
# 79 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\Eeprom.c"
NOP ;# 
psect	text23
	line	80
;Eeprom.c: 80: redata = EEDAT;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Set_jiyi_re@redata)
	line	81
;Eeprom.c: 81: return redata;
	movf	(Set_jiyi_re@redata),w
	line	82
	
l1457:	
	return
	opt stack 0
GLOBAL	__end_of_Set_jiyi_re
	__end_of_Set_jiyi_re:
	signat	_Set_jiyi_re,4217
	global	_Get_CUR_Dat

;; *************** function _Get_CUR_Dat *****************
;; Defined at:
;;		line 465 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;; This function is called by:
;;		_Test_Pwm
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	465
global __ptext24
__ptext24:	;psect for function _Get_CUR_Dat
psect	text24
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	465
	global	__size_of_Get_CUR_Dat
	__size_of_Get_CUR_Dat	equ	__end_of_Get_CUR_Dat-_Get_CUR_Dat
	
_Get_CUR_Dat:	
;incstack = 0
	opt	stack 2
; Regs used in _Get_CUR_Dat: [wreg+status,2+status,0+pclath+cstack]
	line	467
	
l7799:	
;WHQ_TP_ZPGS_V1.2.c: 467: cur_addat = cursum/32;
	movf	(_cursum+1),w	;volatile
	movwf	(??_Get_CUR_Dat+0)+0+1
	movf	(_cursum),w	;volatile
	movwf	(??_Get_CUR_Dat+0)+0
	movlw	05h
u3125:
	clrc
	rrf	(??_Get_CUR_Dat+0)+1,f
	rrf	(??_Get_CUR_Dat+0)+0,f
	addlw	-1
	skipz
	goto	u3125
	movf	0+(??_Get_CUR_Dat+0)+0,w
	movwf	(_cur_addat)	;volatile
	line	468
;WHQ_TP_ZPGS_V1.2.c: 468: if(0 == cur_addatold0)
	movf	((_cur_addatold0)),w	;volatile
	btfss	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l7803
u3130:
	line	470
	
l7801:	
;WHQ_TP_ZPGS_V1.2.c: 469: {
;WHQ_TP_ZPGS_V1.2.c: 470: cur_addatold0 = cur_addat;
	movf	(_cur_addat),w	;volatile
	movwf	(_cur_addatold0)	;volatile
	line	471
;WHQ_TP_ZPGS_V1.2.c: 471: cur_addatold1 = cur_addat;
	movf	(_cur_addat),w	;volatile
	movwf	(_cur_addatold1)	;volatile
	line	472
;WHQ_TP_ZPGS_V1.2.c: 472: cur_addatold2 = cur_addat;
	movf	(_cur_addat),w	;volatile
	movwf	(_cur_addatold2)	;volatile
	line	473
;WHQ_TP_ZPGS_V1.2.c: 473: }
	goto	l7805
	line	476
	
l7803:	
;WHQ_TP_ZPGS_V1.2.c: 474: else
;WHQ_TP_ZPGS_V1.2.c: 475: {
;WHQ_TP_ZPGS_V1.2.c: 476: cur_addat = (unsigned char)((cur_addat + cur_addatold0 + cur_addatold1 + cur_addatold2)/4);
	movf	(_cur_addat),w	;volatile
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	movf	(_cur_addatold0),w	;volatile
	addwf	(___awdiv@dividend),f
	skipnc
	incf	(___awdiv@dividend+1),f
	movf	(_cur_addatold1),w	;volatile
	addwf	(___awdiv@dividend),f
	skipnc
	incf	(___awdiv@dividend+1),f
	movf	(_cur_addatold2),w	;volatile
	addwf	(___awdiv@dividend),f
	skipnc
	incf	(___awdiv@dividend+1),f
	movlw	04h
	movwf	(___awdiv@divisor)
	clrf	(___awdiv@divisor+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(_cur_addat)	;volatile
	line	478
	
l7805:	
;WHQ_TP_ZPGS_V1.2.c: 477: }
;WHQ_TP_ZPGS_V1.2.c: 478: cur_addatold2 = cur_addatold1;
	movf	(_cur_addatold1),w	;volatile
	movwf	(_cur_addatold2)	;volatile
	line	479
	
l7807:	
;WHQ_TP_ZPGS_V1.2.c: 479: cur_addatold1 = cur_addatold0;
	movf	(_cur_addatold0),w	;volatile
	movwf	(_cur_addatold1)	;volatile
	line	480
	
l7809:	
;WHQ_TP_ZPGS_V1.2.c: 480: cur_addatold0 = cur_addat;
	movf	(_cur_addat),w	;volatile
	movwf	(_cur_addatold0)	;volatile
	line	481
	
l4875:	
	return
	opt stack 0
GLOBAL	__end_of_Get_CUR_Dat
	__end_of_Get_CUR_Dat:
	signat	_Get_CUR_Dat,89
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\mcuproject\scm\CMS_IDE_V2.03.26\CMS_IDE_V2.03.26\data\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] int 
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Get_CUR_Dat
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\CMS_IDE_V2.03.26\CMS_IDE_V2.03.26\data\sources\common\awdiv.c"
	line	6
global __ptext25
__ptext25:	;psect for function ___awdiv
psect	text25
	file	"C:\mcuproject\scm\CMS_IDE_V2.03.26\CMS_IDE_V2.03.26\data\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l7639:	
	clrf	(___awdiv@sign)
	line	15
	
l7641:	
	btfss	(___awdiv@divisor+1),7
	goto	u3031
	goto	u3030
u3031:
	goto	l7647
u3030:
	line	16
	
l7643:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l7645:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	19
	
l7647:	
	btfss	(___awdiv@dividend+1),7
	goto	u3041
	goto	u3040
u3041:
	goto	l7653
u3040:
	line	20
	
l7649:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l7651:	
	movlw	low(01h)
	xorwf	(___awdiv@sign),f
	line	23
	
l7653:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l7655:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u3051
	goto	u3050
u3051:
	goto	l7675
u3050:
	line	25
	
l7657:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l7661
	line	27
	
l7659:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	28
	incf	(___awdiv@counter),f
	line	26
	
l7661:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3061
	goto	u3060
u3061:
	goto	l7659
u3060:
	line	31
	
l7663:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	32
	
l7665:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3075
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3075:
	skipc
	goto	u3071
	goto	u3070
u3071:
	goto	l7671
u3070:
	line	33
	
l7667:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l7669:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	36
	
l7671:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	37
	
l7673:	
	decfsz	(___awdiv@counter),f
	goto	u3081
	goto	u3080
u3081:
	goto	l7663
u3080:
	line	39
	
l7675:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u3091
	goto	u3090
u3091:
	goto	l7679
u3090:
	line	40
	
l7677:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	41
	
l7679:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	42
	
l5111:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_Init_ram

;; *************** function _Init_ram *****************
;; Defined at:
;;		line 98 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
	line	98
global __ptext26
__ptext26:	;psect for function _Init_ram
psect	text26
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
	line	98
	global	__size_of_Init_ram
	__size_of_Init_ram	equ	__end_of_Init_ram-_Init_ram
	
_Init_ram:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_ram: [wreg+status,2]
	line	100
	
l8225:	
;main.c: 100: PIE2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(141)^080h	;volatile
	line	101
	
l8227:	
;main.c: 101: PIE1 = 0B00000010;
	movlw	low(02h)
	movwf	(140)^080h	;volatile
	line	102
	
l8229:	
;main.c: 102: PR2 = 250;
	movlw	low(0FAh)
	movwf	(146)^080h	;volatile
	line	103
	
l8231:	
;main.c: 103: T2CON = 5;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	104
	
l8233:	
;main.c: 104: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	105
	
l8235:	
;main.c: 105: onoff = 1;
	bsf	(_onoff/8),(_onoff)&7	;volatile
	line	106
	
l2293:	
	return
	opt stack 0
GLOBAL	__end_of_Init_ram
	__end_of_Init_ram:
	signat	_Init_ram,89
	global	_Init_ic

;; *************** function _Init_ic *****************
;; Defined at:
;;		line 74 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
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
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=0
	line	74
global __ptext27
__ptext27:	;psect for function _Init_ic
psect	text27
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
	line	74
	global	__size_of_Init_ic
	__size_of_Init_ic	equ	__end_of_Init_ic-_Init_ic
	
_Init_ic:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_ic: [wreg+status,2]
	line	76
	
l8203:	
;main.c: 76: PORTA = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	77
;main.c: 77: PORTB = 0;
	clrf	(6)	;volatile
	line	78
	
l8205:	
;main.c: 78: INTCON = 0xC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	79
	
l8207:	
;main.c: 79: PIR1 = 0;
	clrf	(12)	;volatile
	line	80
	
l8209:	
;main.c: 80: PIR2 = 0;
	clrf	(13)	;volatile
	line	81
	
l8211:	
;main.c: 81: WDTCON = 0x01;
	movlw	low(01h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(261)^0100h	;volatile
	line	82
	
l8213:	
;main.c: 82: TRISA = 0xf6;
	movlw	low(0F6h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	83
	
l8215:	
;main.c: 83: TRISB = 0xdd;
	movlw	low(0DDh)
	movwf	(134)^080h	;volatile
	line	84
;main.c: 84: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	85
	
l8217:	
;main.c: 85: OSCCON = 0x71;
	movlw	low(071h)
	movwf	(143)^080h	;volatile
	line	86
	
l8219:	
;main.c: 86: PIE1 = 0;
	clrf	(140)^080h	;volatile
	line	87
	
l8221:	
;main.c: 87: PIE2 = 0;
	clrf	(141)^080h	;volatile
	line	88
	
l8223:	
;main.c: 88: IOCB = 0;
	clrf	(150)^080h	;volatile
	line	89
;main.c: 89: WPUA = 0xB4;
	movlw	low(0B4h)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	90
;main.c: 90: WPUB = 0x10;
	movlw	low(010h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(149)^080h	;volatile
	line	91
	
l2290:	
	return
	opt stack 0
GLOBAL	__end_of_Init_ic
	__end_of_Init_ic:
	signat	_Init_ic,89
	global	_Delay_nms

;; *************** function _Delay_nms *****************
;; Defined at:
;;		line 15 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\delay.c"
;; Parameters:    Size  Location     Type
;;  inittempl       2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    4[BANK0 ] unsigned int 
;;  gtemp           1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\delay.c"
	line	15
global __ptext28
__ptext28:	;psect for function _Delay_nms
psect	text28
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\delay.c"
	line	15
	global	__size_of_Delay_nms
	__size_of_Delay_nms	equ	__end_of_Delay_nms-_Delay_nms
	
_Delay_nms:	
;incstack = 0
	opt	stack 4
; Regs used in _Delay_nms: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l8185:	
;delay.c: 17: unsigned int i;
;delay.c: 18: unsigned char gtemp;
;delay.c: 20: gtemp=0;
	clrf	(Delay_nms@gtemp)
	line	21
	
l8187:	
;delay.c: 21: if(GIE==1)
	btfss	(95/8),(95)&7	;volatile
	goto	u3771
	goto	u3770
u3771:
	goto	l8191
u3770:
	line	23
	
l8189:	
;delay.c: 22: {
;delay.c: 23: gtemp=1;
	clrf	(Delay_nms@gtemp)
	incf	(Delay_nms@gtemp),f
	line	24
;delay.c: 24: GIE=0;
	bcf	(95/8),(95)&7	;volatile
	line	26
	
l8191:	
;delay.c: 25: }
;delay.c: 26: for(i=0;i<inittempl;i++)
	clrf	(Delay_nms@i)
	clrf	(Delay_nms@i+1)
	goto	l8197
	line	28
	
l8193:	
;delay.c: 27: {
;delay.c: 28: Delay(154);
	movlw	09Ah
	movwf	(Delay@dtemp)
	clrf	(Delay@dtemp+1)
	fcall	_Delay
	line	29
# 29 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\delay.c"
clrwdt ;# 
psect	text28
	line	26
	
l8195:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(Delay_nms@i),f
	skipnz
	incf	(Delay_nms@i+1),f
	
l8197:	
	movf	(Delay_nms@inittempl+1),w
	subwf	(Delay_nms@i+1),w
	skipz
	goto	u3785
	movf	(Delay_nms@inittempl),w
	subwf	(Delay_nms@i),w
u3785:
	skipc
	goto	u3781
	goto	u3780
u3781:
	goto	l8193
u3780:
	line	31
	
l8199:	
;delay.c: 30: }
;delay.c: 31: if(gtemp==1) GIE=1;
		decf	((Delay_nms@gtemp)),w
	btfss	status,2
	goto	u3791
	goto	u3790
u3791:
	goto	l726
u3790:
	
l8201:	
	bsf	(95/8),(95)&7	;volatile
	line	32
	
l726:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_nms
	__end_of_Delay_nms:
	signat	_Delay_nms,4217
	global	_Delay

;; *************** function _Delay *****************
;; Defined at:
;;		line 8 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\delay.c"
;; Parameters:    Size  Location     Type
;;  dtemp           2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Delay_nms
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=0
	line	8
global __ptext29
__ptext29:	;psect for function _Delay
psect	text29
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\delay.c"
	line	8
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
;incstack = 0
	opt	stack 4
; Regs used in _Delay: [wreg+status,2+status,0]
	line	10
	
l8003:	
;delay.c: 10: while(dtemp--);
	
l8005:	
	movlw	01h
	subwf	(Delay@dtemp),f
	movlw	0
	skipc
	decf	(Delay@dtemp+1),f
	subwf	(Delay@dtemp+1),f
		incf	(((Delay@dtemp))),w
	skipz
	goto	u3511
	incf	(((Delay@dtemp+1))),w
	btfss	status,2
	goto	u3511
	goto	u3510
u3511:
	goto	l8005
u3510:
	line	11
	
l718:	
	return
	opt stack 0
GLOBAL	__end_of_Delay
	__end_of_Delay:
	signat	_Delay,4217
	global	_AD_Testing

;; *************** function _AD_Testing *****************
;; Defined at:
;;		line 290 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
;; Parameters:    Size  Location     Type
;;  ad_fd           1    wreg     unsigned char 
;;  ad_ch           1    0[BANK0 ] unsigned char 
;;  ad_lr           1    1[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ad_fd           1    4[BANK0 ] unsigned char 
;;  data            2    6[BANK0 ] volatile unsigned int 
;;  i               1    5[BANK0 ] volatile unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
	line	290
global __ptext30
__ptext30:	;psect for function _AD_Testing
psect	text30
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
	line	290
	global	__size_of_AD_Testing
	__size_of_AD_Testing	equ	__end_of_AD_Testing-_AD_Testing
	
_AD_Testing:	
;incstack = 0
	opt	stack 5
; Regs used in _AD_Testing: [wreg+status,2+status,0]
;AD_Testing@ad_fd stored from wreg
	movwf	(AD_Testing@ad_fd)
	line	295
	
l8289:	
;main.c: 292: static volatile unsigned char adtimes;
;main.c: 293: static volatile unsigned int admin,admax,adsum;
;main.c: 294: volatile unsigned int data;
;main.c: 295: volatile unsigned char i = 0;
	clrf	(AD_Testing@i)	;volatile
	line	298
	
l8291:	
;main.c: 298: if(!ad_lr)
	movf	((AD_Testing@ad_lr)),w
	btfss	status,2
	goto	u3841
	goto	u3840
u3841:
	goto	l8295
u3840:
	line	299
	
l8293:	
;main.c: 299: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	goto	l8297
	line	301
	
l8295:	
;main.c: 300: else
;main.c: 301: ADCON1 = 0x80;
	movlw	low(080h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(159)^080h	;volatile
	line	303
	
l8297:	
;main.c: 303: ADCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(31)	;volatile
	line	304
	
l8299:	
;main.c: 304: ADCON0 |= (unsigned char)(ad_fd << 6);
	movf	(AD_Testing@ad_fd),w
	movwf	(??_AD_Testing+0)+0
	rrf	(??_AD_Testing+0)+0,f
	rrf	(??_AD_Testing+0)+0,f
	rrf	(??_AD_Testing+0)+0,w
	andlw	0c0h
	iorwf	(31),f	;volatile
	line	305
	
l8301:	
;main.c: 305: ADCON0 |= (unsigned char)(ad_ch << 2);
	movf	(AD_Testing@ad_ch),w
	movwf	(??_AD_Testing+0)+0
	movlw	(02h)-1
u3855:
	clrc
	rlf	(??_AD_Testing+0)+0,f
	addlw	-1
	skipz
	goto	u3855
	clrc
	rlf	(??_AD_Testing+0)+0,w
	iorwf	(31),f	;volatile
	line	306
	
l8303:	
;main.c: 306: ADCON0 |= 0x01;
	bsf	(31)+(0/8),(0)&7	;volatile
	line	308
# 308 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
nop ;# 
	line	309
# 309 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
nop ;# 
psect	text30
	line	310
	
l8305:	
;main.c: 310: GODONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	312
;main.c: 312: while(GODONE)
	goto	l2352
	
l2353:	
	line	314
# 314 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
nop ;# 
	line	315
# 315 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
nop ;# 
psect	text30
	line	316
;main.c: 316: if(0 == (--i))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decfsz	(AD_Testing@i),f	;volatile
	goto	u3861
	goto	u3860
u3861:
	goto	l2352
u3860:
	goto	l2355
	line	318
	
l2352:	
	line	312
	btfsc	(249/8),(249)&7	;volatile
	goto	u3871
	goto	u3870
u3871:
	goto	l2353
u3870:
	line	320
	
l8309:	
;main.c: 318: }
;main.c: 320: if(!ad_lr)
	movf	((AD_Testing@ad_lr)),w
	btfss	status,2
	goto	u3881
	goto	u3880
u3881:
	goto	l8315
u3880:
	line	322
	
l8311:	
;main.c: 321: {
;main.c: 322: data = (unsigned int)(ADRESH<<4);
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
	line	323
	
l8313:	
;main.c: 323: data |= (unsigned int)(ADRESL>>4);
	bsf	status, 5	;RP0=1, select bank1
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(AD_Testing@data),f	;volatile
	line	324
;main.c: 324: }
	goto	l8317
	line	327
	
l8315:	
;main.c: 325: else
;main.c: 326: {
;main.c: 327: data = (unsigned int)(ADRESH<<8);
	movf	(30),w	;volatile
	movwf	(AD_Testing@data+1)	;volatile
	clrf	(AD_Testing@data)	;volatile
	line	328
;main.c: 328: data |= (unsigned int)ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(AD_Testing@data),f	;volatile
	line	331
	
l8317:	
;main.c: 329: }
;main.c: 331: if(0 == adtimes)
	movf	((AD_Testing@adtimes)),w	;volatile
	btfss	status,2
	goto	u3891
	goto	u3890
u3891:
	goto	l8321
u3890:
	line	333
	
l8319:	
;main.c: 332: {
;main.c: 333: admax = data;
	movf	(AD_Testing@data+1),w	;volatile
	movwf	(AD_Testing@admax+1)	;volatile
	movf	(AD_Testing@data),w	;volatile
	movwf	(AD_Testing@admax)	;volatile
	line	334
;main.c: 334: admin = data;
	movf	(AD_Testing@data+1),w	;volatile
	movwf	(AD_Testing@admin+1)	;volatile
	movf	(AD_Testing@data),w	;volatile
	movwf	(AD_Testing@admin)	;volatile
	line	335
;main.c: 335: }
	goto	l2360
	line	336
	
l8321:	
;main.c: 336: else if(data > admax)
	movf	(AD_Testing@data+1),w	;volatile
	subwf	(AD_Testing@admax+1),w	;volatile
	skipz
	goto	u3905
	movf	(AD_Testing@data),w	;volatile
	subwf	(AD_Testing@admax),w	;volatile
u3905:
	skipnc
	goto	u3901
	goto	u3900
u3901:
	goto	l8325
u3900:
	line	338
	
l8323:	
;main.c: 337: {
;main.c: 338: admax = data;
	movf	(AD_Testing@data+1),w	;volatile
	movwf	(AD_Testing@admax+1)	;volatile
	movf	(AD_Testing@data),w	;volatile
	movwf	(AD_Testing@admax)	;volatile
	line	339
;main.c: 339: }
	goto	l2360
	line	340
	
l8325:	
;main.c: 340: else if(data < admin)
	movf	(AD_Testing@admin+1),w	;volatile
	subwf	(AD_Testing@data+1),w	;volatile
	skipz
	goto	u3915
	movf	(AD_Testing@admin),w	;volatile
	subwf	(AD_Testing@data),w	;volatile
u3915:
	skipnc
	goto	u3911
	goto	u3910
u3911:
	goto	l2360
u3910:
	line	342
	
l8327:	
;main.c: 341: {
;main.c: 342: admin = data;
	movf	(AD_Testing@data+1),w	;volatile
	movwf	(AD_Testing@admin+1)	;volatile
	movf	(AD_Testing@data),w	;volatile
	movwf	(AD_Testing@admin)	;volatile
	line	345
	
l2360:	
;main.c: 343: }
;main.c: 345: adsum += data;
	movf	(AD_Testing@data),w	;volatile
	addwf	(AD_Testing@adsum),f	;volatile
	skipnc
	incf	(AD_Testing@adsum+1),f	;volatile
	movf	(AD_Testing@data+1),w	;volatile
	addwf	(AD_Testing@adsum+1),f	;volatile
	line	346
	
l8329:	
;main.c: 346: if(++adtimes >= 10)
	movlw	low(0Ah)
	incf	(AD_Testing@adtimes),f	;volatile
	subwf	((AD_Testing@adtimes)),w	;volatile
	skipc
	goto	u3921
	goto	u3920
u3921:
	goto	l2355
u3920:
	line	348
	
l8331:	
;main.c: 347: {
;main.c: 348: adsum -= admax;
	movf	(AD_Testing@admax),w	;volatile
	subwf	(AD_Testing@adsum),f	;volatile
	movf	(AD_Testing@admax+1),w	;volatile
	skipc
	decf	(AD_Testing@adsum+1),f	;volatile
	subwf	(AD_Testing@adsum+1),f	;volatile
	line	349
;main.c: 349: adsum -= admin;
	movf	(AD_Testing@admin),w	;volatile
	subwf	(AD_Testing@adsum),f	;volatile
	movf	(AD_Testing@admin+1),w	;volatile
	skipc
	decf	(AD_Testing@adsum+1),f	;volatile
	subwf	(AD_Testing@adsum+1),f	;volatile
	line	351
	
l8333:	
;main.c: 351: AD_Result = adsum >> 3;
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
	line	353
	
l8335:	
;main.c: 353: adsum = 0;
	clrf	(AD_Testing@adsum)	;volatile
	clrf	(AD_Testing@adsum+1)	;volatile
	line	354
	
l8337:	
;main.c: 354: admin = 0;
	clrf	(AD_Testing@admin)	;volatile
	clrf	(AD_Testing@admin+1)	;volatile
	line	355
	
l8339:	
;main.c: 355: admax = 0;
	clrf	(AD_Testing@admax)	;volatile
	clrf	(AD_Testing@admax+1)	;volatile
	line	356
	
l8341:	
;main.c: 356: adtimes = 0;
	clrf	(AD_Testing@adtimes)	;volatile
	line	358
	
l2355:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Testing
	__end_of_AD_Testing:
	signat	_AD_Testing,12409
	global	_time0

;; *************** function _time0 *****************
;; Defined at:
;;		line 163 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Set_Pwm_Onoff
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1,group=0
	line	163
global __ptext31
__ptext31:	;psect for function _time0
psect	text31
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\main.c"
	line	163
	global	__size_of_time0
	__size_of_time0	equ	__end_of_time0-_time0
	
_time0:	
;incstack = 0
	opt	stack 1
; Regs used in _time0: [wreg-fsr0h+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_time0+0)
	movf	fsr0,w
	movwf	(??_time0+1)
	movf	pclath,w
	movwf	(??_time0+2)
	ljmp	_time0
psect	text31
	line	165
	
i1l7463:	
;main.c: 166: {
;main.c: 168: revTime = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u284_21
	goto	u284_20
u284_21:
	goto	i1l2312
u284_20:
	line	169
	
i1l7465:	
;main.c: 169: Recebuffer[rececount] = RCREG;
	movf	(_rececount),w
	addlw	low(_Recebuffer|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(26),w	;volatile
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	170
	
i1l7467:	
;main.c: 170: rececount++;
	incf	(_rececount),f
	line	172
	
i1l7469:	
;main.c: 172: if(rececount >= 4)
	movlw	low(04h)
	subwf	(_rececount),w
	skipc
	goto	u285_21
	goto	u285_20
u285_21:
	goto	i1l7473
u285_20:
	line	174
	
i1l7471:	
;main.c: 173: {
;main.c: 174: rececount = 0;
	clrf	(_rececount)
	line	177
	
i1l7473:	
;main.c: 175: }
;main.c: 177: if(OERR)
	btfss	(193/8),(193)&7	;volatile
	goto	u286_21
	goto	u286_20
u286_21:
	goto	i1l2312
u286_20:
	line	179
	
i1l7475:	
;main.c: 178: {
;main.c: 179: CREN = 0;
	bcf	(196/8),(196)&7	;volatile
	line	180
;main.c: 180: CREN = 1;
	bsf	(196/8),(196)&7	;volatile
	line	183
	
i1l2312:	
	line	185
;main.c: 181: }
;main.c: 183: }
;main.c: 185: if(TMR2IF)
	btfss	(97/8),(97)&7	;volatile
	goto	u287_21
	goto	u287_20
u287_21:
	goto	i1l7487
u287_20:
	line	187
	
i1l7477:	
;main.c: 186: {
;main.c: 187: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	188
	
i1l7479:	
;main.c: 188: tcount ++;
	incf	(_tcount),f	;volatile
	line	189
	
i1l7481:	
;main.c: 189: if(onoff)
	btfss	(_onoff/8),(_onoff)&7	;volatile
	goto	u288_21
	goto	u288_20
u288_21:
	goto	i1l7485
u288_20:
	line	191
	
i1l7483:	
;main.c: 190: {
;main.c: 191: Set_Pwm_Onoff(20);
	movlw	low(014h)
	fcall	_Set_Pwm_Onoff
	line	192
;main.c: 192: }
	goto	i1l2319
	line	195
	
i1l7485:	
;main.c: 193: else
;main.c: 194: {
;main.c: 195: Set_Pwm_Onoff(0);
	movlw	low(0)
	fcall	_Set_Pwm_Onoff
	goto	i1l2319
	line	200
	
i1l7487:	
;main.c: 198: else
;main.c: 199: {
;main.c: 200: PIR1 = 0;
	clrf	(12)	;volatile
	line	201
;main.c: 201: PIR2 = 0;
	clrf	(13)	;volatile
	line	203
	
i1l2319:	
	movf	(??_time0+2),w
	movwf	pclath
	movf	(??_time0+1),w
	movwf	fsr0
	swapf	(??_time0+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_time0
	__end_of_time0:
	signat	_time0,89
	global	_Set_Pwm_Onoff

;; *************** function _Set_Pwm_Onoff *****************
;; Defined at:
;;		line 273 in file "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
;; Parameters:    Size  Location     Type
;;  fun             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  fun             1    2[COMMON] unsigned char 
;;  funod           1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_time0
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	273
global __ptext32
__ptext32:	;psect for function _Set_Pwm_Onoff
psect	text32
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	273
	global	__size_of_Set_Pwm_Onoff
	__size_of_Set_Pwm_Onoff	equ	__end_of_Set_Pwm_Onoff-_Set_Pwm_Onoff
	
_Set_Pwm_Onoff:	
;incstack = 0
	opt	stack 1
; Regs used in _Set_Pwm_Onoff: [wreg+status,2+status,0]
;Set_Pwm_Onoff@fun stored from wreg
	movwf	(Set_Pwm_Onoff@fun)
	line	283
	
i1l7177:	
;WHQ_TP_ZPGS_V1.2.c: 275: unsigned char funod;
;WHQ_TP_ZPGS_V1.2.c: 277: static unsigned char pwmcl = 0;
;WHQ_TP_ZPGS_V1.2.c: 278: static bit adonf = 0;
;WHQ_TP_ZPGS_V1.2.c: 279: static unsigned char cur_adcl = 0;
;WHQ_TP_ZPGS_V1.2.c: 280: static unsigned int cursumt = 0;
;WHQ_TP_ZPGS_V1.2.c: 281: static unsigned char funold;
;WHQ_TP_ZPGS_V1.2.c: 283: PFGCON |= 0x04;
	bsf	status, 6	;RP1=1, select bank2
	bsf	(283)^0100h+(2/8),(2)&7	;volatile
	line	284
;WHQ_TP_ZPGS_V1.2.c: 284: TRISA &= 0xfe;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	line	285
;WHQ_TP_ZPGS_V1.2.c: 285: PORTA = (unsigned char)(PORTA & 0xfe);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(0/8),(0)&7	;volatile
	line	286
	
i1l7179:	
;WHQ_TP_ZPGS_V1.2.c: 286: if(0 != pfgonetemp.pfgtemp)
	movf	((_pfgonetemp)),w
iorwf	((_pfgonetemp+1)),w
	btfsc	status,2
	goto	u232_21
	goto	u232_20
u232_21:
	goto	i1l4865
u232_20:
	line	288
	
i1l7181:	
;WHQ_TP_ZPGS_V1.2.c: 287: {
;WHQ_TP_ZPGS_V1.2.c: 288: if(PfgChangef)
	btfss	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	goto	u233_21
	goto	u233_20
u233_21:
	goto	i1l7201
u233_20:
	line	290
	
i1l7183:	
;WHQ_TP_ZPGS_V1.2.c: 289: {
;WHQ_TP_ZPGS_V1.2.c: 290: PfgChangef = 0;
	bcf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	291
;WHQ_TP_ZPGS_V1.2.c: 291: if((0 == (pfgonetemp.pfgonebyte.pfgtemph & 0x80)) && ((PFGCON&0x80) != 0))
	btfsc	0+(_pfgonetemp)+01h,(7)&7
	goto	u234_21
	goto	u234_20
u234_21:
	goto	i1l7191
u234_20:
	
i1l7185:	
	bsf	status, 6	;RP1=1, select bank2
	btfss	(283)^0100h,(7)&7	;volatile
	goto	u235_21
	goto	u235_20
u235_21:
	goto	i1l7191
u235_20:
	line	293
	
i1l7187:	
;WHQ_TP_ZPGS_V1.2.c: 292: {
;WHQ_TP_ZPGS_V1.2.c: 293: PFGCON1 &= ~0x80;
	bcf	(286)^0100h+(7/8),(7)&7	;volatile
	line	294
	
i1l7189:	
;WHQ_TP_ZPGS_V1.2.c: 294: PFGSTOP = 0xfa;
	movlw	low(0FAh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	295
;WHQ_TP_ZPGS_V1.2.c: 295: }
	goto	i1l7201
	line	298
	
i1l7191:	
;WHQ_TP_ZPGS_V1.2.c: 296: else
;WHQ_TP_ZPGS_V1.2.c: 297: {
;WHQ_TP_ZPGS_V1.2.c: 298: if((pfgonetemp.pfgonebyte.pfgtemph & 0x03) >= (PFGCON & 0x03))
	movlw	low(03h)
	andwf	0+(_pfgonetemp)+01h,w
	movwf	(??_Set_Pwm_Onoff+0)+0
	bsf	status, 6	;RP1=1, select bank2
	movf	(283)^0100h,w	;volatile
	andlw	03h
	subwf	0+(??_Set_Pwm_Onoff+0)+0,w
	skipc
	goto	u236_21
	goto	u236_20
u236_21:
	goto	i1l7195
u236_20:
	line	300
	
i1l7193:	
;WHQ_TP_ZPGS_V1.2.c: 299: {
;WHQ_TP_ZPGS_V1.2.c: 300: PFGADJ = pfgonetemp.pfgonebyte.pfgtempl;
	movf	(_pfgonetemp),w
	movwf	(281)^0100h	;volatile
	line	301
;WHQ_TP_ZPGS_V1.2.c: 301: PFGCON = pfgonetemp.pfgonebyte.pfgtemph;
	movf	0+(_pfgonetemp)+01h,w
	movwf	(283)^0100h	;volatile
	line	302
;WHQ_TP_ZPGS_V1.2.c: 302: }
	goto	i1l7201
	line	305
	
i1l7195:	
;WHQ_TP_ZPGS_V1.2.c: 303: else
;WHQ_TP_ZPGS_V1.2.c: 304: {
;WHQ_TP_ZPGS_V1.2.c: 305: PFGCON = pfgonetemp.pfgonebyte.pfgtemph;
	movf	0+(_pfgonetemp)+01h,w
	movwf	(283)^0100h	;volatile
	line	306
;WHQ_TP_ZPGS_V1.2.c: 306: PFGADJ = pfgonetemp.pfgonebyte.pfgtempl;
	movf	(_pfgonetemp),w
	movwf	(281)^0100h	;volatile
	line	318
	
i1l7201:	
;WHQ_TP_ZPGS_V1.2.c: 315: }
;WHQ_TP_ZPGS_V1.2.c: 316: }
;WHQ_TP_ZPGS_V1.2.c: 318: if(0 == fun)
	movf	((Set_Pwm_Onoff@fun)),w
	btfss	status,2
	goto	u237_21
	goto	u237_20
u237_21:
	goto	i1l4847
u237_20:
	line	321
	
i1l7203:	
;WHQ_TP_ZPGS_V1.2.c: 319: {
;WHQ_TP_ZPGS_V1.2.c: 321: pfgonetemp.pfgonebyte.pfgtemph &= ~0x80;
	bcf	0+(_pfgonetemp)+01h+(7/8),(7)&7
	line	322
;WHQ_TP_ZPGS_V1.2.c: 322: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	323
	
i1l7205:	
;WHQ_TP_ZPGS_V1.2.c: 323: cur_addat = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_cur_addat)	;volatile
	line	324
	
i1l7207:	
;WHQ_TP_ZPGS_V1.2.c: 324: curokf = 0;
	bcf	(_curokf/8),(_curokf)&7	;volatile
	line	325
;WHQ_TP_ZPGS_V1.2.c: 325: pwmcl = 0;
	clrf	(Set_Pwm_Onoff@pwmcl)
	line	326
;WHQ_TP_ZPGS_V1.2.c: 326: cursumt = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(Set_Pwm_Onoff@cursumt)^080h
	clrf	(Set_Pwm_Onoff@cursumt+1)^080h
	line	327
	
i1l7209:	
;WHQ_TP_ZPGS_V1.2.c: 327: on_off = 0;
	bcf	(_on_off/8),(_on_off)&7	;volatile
	line	328
;WHQ_TP_ZPGS_V1.2.c: 328: }
	goto	i1l4865
	line	329
	
i1l4847:	
	line	332
;WHQ_TP_ZPGS_V1.2.c: 329: else
;WHQ_TP_ZPGS_V1.2.c: 330: {
;WHQ_TP_ZPGS_V1.2.c: 332: on_off = 1;
	bsf	(_on_off/8),(_on_off)&7	;volatile
	line	334
;WHQ_TP_ZPGS_V1.2.c: 334: if(!pwmtf)
	btfsc	(_pwmtf/8),(_pwmtf)&7	;volatile
	goto	u238_21
	goto	u238_20
u238_21:
	goto	i1l7213
u238_20:
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\WHQ_TP_ZPGS.h"
	line	190
	
i1l7211:	
	movlw	low(018h)
	movwf	(Set_Pwm_Onoff@funod)
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	337
;WHQ_TP_ZPGS_V1.2.c: 337: funold = funod;
	movlw	low(018h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Set_Pwm_Onoff@funold)
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0822)\追频+干烧检水-24V2.4M\WHQ_TP_ZPGS.h"
	line	338
;WHQ_TP_ZPGS_V1.2.c: 338: }
	goto	i1l7219
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	341
	
i1l7213:	
	movlw	low(031h)
	subwf	(Set_Pwm_Onoff@fun),w
	skipnc
	goto	u239_21
	goto	u239_20
u239_21:
	goto	i1l7217
u239_20:
	line	343
	
i1l7215:	
;WHQ_TP_ZPGS_V1.2.c: 342: {
;WHQ_TP_ZPGS_V1.2.c: 343: funod = fun;
	movf	(Set_Pwm_Onoff@fun),w
	movwf	(Set_Pwm_Onoff@funod)
	line	344
;WHQ_TP_ZPGS_V1.2.c: 344: funold = fun;
	movf	(Set_Pwm_Onoff@fun),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Set_Pwm_Onoff@funold)
	line	345
;WHQ_TP_ZPGS_V1.2.c: 345: }
	goto	i1l7219
	line	347
	
i1l7217:	
;WHQ_TP_ZPGS_V1.2.c: 346: else
;WHQ_TP_ZPGS_V1.2.c: 347: funod = funold;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Set_Pwm_Onoff@funold),w
	movwf	(Set_Pwm_Onoff@funod)
	line	349
	
i1l7219:	
		movlw	48
	xorwf	((Set_Pwm_Onoff@funod)),w
	btfss	status,2
	goto	u240_21
	goto	u240_20
u240_21:
	goto	i1l7223
u240_20:
	line	351
	
i1l7221:	
;WHQ_TP_ZPGS_V1.2.c: 350: {
;WHQ_TP_ZPGS_V1.2.c: 351: ((pfgonetemp.pfgtemp) |= (1 << (15)));
	bsf	(_pfgonetemp)+(15/8),(15)&7
	line	352
;WHQ_TP_ZPGS_V1.2.c: 352: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	353
;WHQ_TP_ZPGS_V1.2.c: 353: }
	goto	i1l7237
	line	356
	
i1l7223:	
;WHQ_TP_ZPGS_V1.2.c: 354: else
;WHQ_TP_ZPGS_V1.2.c: 355: {
;WHQ_TP_ZPGS_V1.2.c: 356: pwmcl++;
	incf	(Set_Pwm_Onoff@pwmcl),f
	line	357
	
i1l7225:	
;WHQ_TP_ZPGS_V1.2.c: 357: if(pwmcl <= funod)
	movf	(Set_Pwm_Onoff@pwmcl),w
	subwf	(Set_Pwm_Onoff@funod),w
	skipc
	goto	u241_21
	goto	u241_20
u241_21:
	goto	i1l4855
u241_20:
	line	359
	
i1l7227:	
;WHQ_TP_ZPGS_V1.2.c: 358: {
;WHQ_TP_ZPGS_V1.2.c: 359: if((((pfgonetemp.pfgtemp) & (1 << (15))) == 0))
	btfsc	(_pfgonetemp+1),(15)&7
	goto	u242_21
	goto	u242_20
u242_21:
	goto	i1l7221
u242_20:
	line	360
	
i1l7229:	
;WHQ_TP_ZPGS_V1.2.c: 360: adonf = 0;
	bcf	(Set_Pwm_Onoff@adonf/8),(Set_Pwm_Onoff@adonf)&7
	goto	i1l7221
	line	364
	
i1l4855:	
	line	366
;WHQ_TP_ZPGS_V1.2.c: 364: else
;WHQ_TP_ZPGS_V1.2.c: 365: {
;WHQ_TP_ZPGS_V1.2.c: 366: if(((pfgonetemp.pfgtemp) & (1 << (15))))
	btfss	(_pfgonetemp+1),(15)&7
	goto	u243_21
	goto	u243_20
u243_21:
	goto	i1l4858
u243_20:
	line	367
	
i1l7231:	
;WHQ_TP_ZPGS_V1.2.c: 367: adonf = 0;
	bcf	(Set_Pwm_Onoff@adonf/8),(Set_Pwm_Onoff@adonf)&7
	
i1l4858:	
	line	368
;WHQ_TP_ZPGS_V1.2.c: 368: pfgonetemp.pfgtemp &= ~0x8000;
	bcf	(_pfgonetemp)+(15/8),(15)&7
	line	369
;WHQ_TP_ZPGS_V1.2.c: 369: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	370
	
i1l7233:	
	movlw	low(030h)
	subwf	(Set_Pwm_Onoff@pwmcl),w
	skipc
	goto	u244_21
	goto	u244_20
u244_21:
	goto	i1l7237
u244_20:
	line	371
	
i1l7235:	
;WHQ_TP_ZPGS_V1.2.c: 371: pwmcl = 0;
	clrf	(Set_Pwm_Onoff@pwmcl)
	line	377
	
i1l7237:	
;WHQ_TP_ZPGS_V1.2.c: 372: }
;WHQ_TP_ZPGS_V1.2.c: 373: }
;WHQ_TP_ZPGS_V1.2.c: 377: if(0xff != fun)
		incf	((Set_Pwm_Onoff@fun)),w
	btfsc	status,2
	goto	u245_21
	goto	u245_20
u245_21:
	goto	i1l4860
u245_20:
	line	379
	
i1l7239:	
;WHQ_TP_ZPGS_V1.2.c: 378: {
;WHQ_TP_ZPGS_V1.2.c: 379: if(adonf&&((((ADCON0) & (1 << (1))) == 0)))
	btfss	(Set_Pwm_Onoff@adonf/8),(Set_Pwm_Onoff@adonf)&7
	goto	u246_21
	goto	u246_20
u246_21:
	goto	i1l7259
u246_20:
	
i1l7241:	
	btfsc	(31),(1)&7	;volatile
	goto	u247_21
	goto	u247_20
u247_21:
	goto	i1l7259
u247_20:
	line	381
	
i1l7243:	
;WHQ_TP_ZPGS_V1.2.c: 380: {
;WHQ_TP_ZPGS_V1.2.c: 381: adonf = 0;
	bcf	(Set_Pwm_Onoff@adonf/8),(Set_Pwm_Onoff@adonf)&7
	line	382
	
i1l7245:	
;WHQ_TP_ZPGS_V1.2.c: 382: adonetemp.adonebyte.adtempl = ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_adonetemp)
	line	383
;WHQ_TP_ZPGS_V1.2.c: 383: adonetemp.adonebyte.adtemph = (unsigned char)(ADRESH&0x03);
	movf	(30),w	;volatile
	movwf	0+(_adonetemp)+01h
	
i1l7247:	
	movlw	low(03h)
	andwf	0+(_adonetemp)+01h,f
	line	384
	
i1l7249:	
;WHQ_TP_ZPGS_V1.2.c: 384: cursumt = adonetemp.adtemp + cursumt;
	movf	(_adonetemp),w
	bsf	status, 5	;RP0=1, select bank1
	addwf	(Set_Pwm_Onoff@cursumt)^080h,f
	skipnc
	incf	(Set_Pwm_Onoff@cursumt+1)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	(_adonetemp+1),w
	bsf	status, 5	;RP0=1, select bank1
	addwf	(Set_Pwm_Onoff@cursumt+1)^080h,f
	line	385
;WHQ_TP_ZPGS_V1.2.c: 385: if(++cur_adcl >= 32)
	movlw	low(020h)
	bcf	status, 5	;RP0=0, select bank0
	incf	(Set_Pwm_Onoff@cur_adcl),f
	subwf	((Set_Pwm_Onoff@cur_adcl)),w
	skipc
	goto	u248_21
	goto	u248_20
u248_21:
	goto	i1l7259
u248_20:
	line	387
	
i1l7251:	
;WHQ_TP_ZPGS_V1.2.c: 386: {
;WHQ_TP_ZPGS_V1.2.c: 387: cur_adcl = 0;
	clrf	(Set_Pwm_Onoff@cur_adcl)
	line	388
	
i1l7253:	
;WHQ_TP_ZPGS_V1.2.c: 388: cursum = cursumt;
	bsf	status, 5	;RP0=1, select bank1
	movf	(Set_Pwm_Onoff@cursumt+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_cursum+1)	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movf	(Set_Pwm_Onoff@cursumt)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_cursum)	;volatile
	line	389
	
i1l7255:	
;WHQ_TP_ZPGS_V1.2.c: 389: cursumt = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(Set_Pwm_Onoff@cursumt)^080h
	clrf	(Set_Pwm_Onoff@cursumt+1)^080h
	line	390
	
i1l7257:	
;WHQ_TP_ZPGS_V1.2.c: 390: curokf = 1;
	bsf	(_curokf/8),(_curokf)&7	;volatile
	line	394
	
i1l7259:	
;WHQ_TP_ZPGS_V1.2.c: 391: }
;WHQ_TP_ZPGS_V1.2.c: 392: }
;WHQ_TP_ZPGS_V1.2.c: 394: if((PFGCON&0x80) != 0)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	btfss	(283)^0100h,(7)&7	;volatile
	goto	u249_21
	goto	u249_20
u249_21:
	goto	i1l4848
u249_20:
	line	396
	
i1l7261:	
;WHQ_TP_ZPGS_V1.2.c: 395: {
;WHQ_TP_ZPGS_V1.2.c: 396: ADCON0 = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(31)	;volatile
	line	397
	
i1l7263:	
;WHQ_TP_ZPGS_V1.2.c: 397: ADCON1 = 0x80;
	movlw	low(080h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(159)^080h	;volatile
	line	398
	
i1l7265:	
	movlw	low(045h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	399
# 399 "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
NOP ;# 
	line	400
# 400 "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
NOP ;# 
psect	text32
	line	401
	
i1l7267:	
;WHQ_TP_ZPGS_V1.2.c: 401: adonf = 1;
	bsf	(Set_Pwm_Onoff@adonf/8),(Set_Pwm_Onoff@adonf)&7
	line	402
	
i1l7269:	
;WHQ_TP_ZPGS_V1.2.c: 402: ((ADCON0) |= (1 << (1)));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(31)+(1/8),(1)&7	;volatile
	goto	i1l4865
	line	405
	
i1l4860:	
	line	407
;WHQ_TP_ZPGS_V1.2.c: 405: else
;WHQ_TP_ZPGS_V1.2.c: 406: {
;WHQ_TP_ZPGS_V1.2.c: 407: adonf = 0;
	bcf	(Set_Pwm_Onoff@adonf/8),(Set_Pwm_Onoff@adonf)&7
	goto	i1l4865
	line	409
	
i1l4848:	
	line	411
	
i1l4865:	
	return
	opt stack 0
GLOBAL	__end_of_Set_Pwm_Onoff
	__end_of_Set_Pwm_Onoff:
	signat	_Set_Pwm_Onoff,4217
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
