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
	FNCALL	_main,_checkLed
	FNCALL	_main,_checkVoll
	FNCALL	_main,_closePWM
	FNCALL	_main,_colorCtr
	FNCALL	_main,_rgbShow
	FNCALL	_main,_uartRevCtr
	FNCALL	_colorCtr,_breathAddLed
	FNCALL	_colorCtr,_breathSubLed
	FNCALL	_colorCtr,_rainbow
	FNCALL	_colorCtr,_rainbow2
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
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\WHQ_TP_ZPGS.h"
	line	179
_pfg_select:
	retlw	02h
	global __end_of_pfg_select
__end_of_pfg_select:
psect	strings
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\WHQ_TP_ZPGS.h"
	line	195
_curset:
	retlw	01Eh
	global __end_of_curset
__end_of_curset:
psect	strings
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\WHQ_TP_ZPGS.h"
	line	181
_Cur_Adcon:
	retlw	04h
	global __end_of_Cur_Adcon
__end_of_Cur_Adcon:
	global	_pfg_select
	global	_pfgonetemp
	global	_curLedCnt
	global	_cBlueDuty
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
	global	_pwmlv
	global	_pwmold
	global	_pwmnold
	global	_pwmlst
	global	_pwmfst
	global	AD_Testing@admax
	global	AD_Testing@admin
	global	_AD_Result
	global	Test_Pwm@ondly
	global	Set_Pwm_Onoff@pwmcl
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
	global	_count125us
	global	_tm2Flag
	global	_cClorStep
	global	_cdelayTime
	global	_clastBlue
	global	_clastGreen
	global	_clastRed
	global	_ganshaoFlag
	global	_mClorStep
	global	_delayTime
	global	_lastBlue
	global	_lastGreen
	global	_lastRed
	global	_count2
	global	_count2s
	global	_startTime
	global	_revTime
	global	_cRedDuty
	global	_blueDuty
	global	_greenDuty
	global	_redDuty
	global	_led2Step
	global	_led1Step
	global	_rececount
	global	_whFlag
	global	_subTime
	global	_addTime
	global	_currDuty
	global	_tcount
	global	_cGreenDuty
	global	_Recebuffer
	global	Test_water@strupc
	global	Test_water@curstrold
	global	Set_Pwm_Onoff@cursumt
	global	_cursum
	global	_adonetemp
	global	AD_Testing@adsum
	global	Set_Pwm_Onoff@funold
	global	Set_Pwm_Onoff@cur_adcl
	global	Test_Pwm_Cur@curdowncl
	global	Test_Pwm_Cur@curupcl
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_RCREG
_RCREG	set	26
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

_curLedCnt:
       ds      1

_cBlueDuty:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_pwmlv:
       ds      2

_pwmold:
       ds      2

_pwmnold:
       ds      2

_pwmlst:
       ds      2

_pwmfst:
       ds      2

AD_Testing@admax:
       ds      2

AD_Testing@admin:
       ds      2

_AD_Result:
       ds      2

Test_Pwm@ondly:
       ds      1

Set_Pwm_Onoff@pwmcl:
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

_count125us:
       ds      1

_tm2Flag:
       ds      1

_cClorStep:
       ds      1

_cdelayTime:
       ds      1

_clastBlue:
       ds      1

_clastGreen:
       ds      1

_clastRed:
       ds      1

_ganshaoFlag:
       ds      1

_mClorStep:
       ds      1

_delayTime:
       ds      1

_lastBlue:
       ds      1

_lastGreen:
       ds      1

_lastRed:
       ds      1

_count2:
       ds      1

_count2s:
       ds      1

_startTime:
       ds      1

_revTime:
       ds      1

_cRedDuty:
       ds      1

_blueDuty:
       ds      1

_greenDuty:
       ds      1

_redDuty:
       ds      1

_led2Step:
       ds      1

_led1Step:
       ds      1

_rececount:
       ds      1

_whFlag:
       ds      1

_subTime:
       ds      1

_addTime:
       ds      1

_currDuty:
       ds      1

_tcount:
       ds      1

_cGreenDuty:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_Recebuffer:
       ds      4

Test_water@strupc:
       ds      2

Test_water@curstrold:
       ds      2

Set_Pwm_Onoff@cursumt:
       ds      2

_cursum:
       ds      2

_adonetemp:
       ds      2

AD_Testing@adsum:
       ds      2

Set_Pwm_Onoff@funold:
       ds      1

Set_Pwm_Onoff@cur_adcl:
       ds      1

Test_Pwm_Cur@curdowncl:
       ds      1

Test_Pwm_Cur@curupcl:
       ds      1

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
	movlw	low((__pbssBANK0)+03Fh)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+014h)
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
?_rgbShow:	; 1 bytes @ 0x0
?_Set_CCP_PWM:	; 1 bytes @ 0x0
?_checkVoll:	; 1 bytes @ 0x0
?_colorCtr:	; 1 bytes @ 0x0
?_closePWM:	; 1 bytes @ 0x0
?_uartRevCtr:	; 1 bytes @ 0x0
?_checkLed:	; 1 bytes @ 0x0
?_rainbow2:	; 1 bytes @ 0x0
?_rainbow:	; 1 bytes @ 0x0
?_breathAddLed:	; 1 bytes @ 0x0
?_breathSubLed:	; 1 bytes @ 0x0
?_Init_ic:	; 1 bytes @ 0x0
?_Init_ram:	; 1 bytes @ 0x0
?_Sys_set:	; 1 bytes @ 0x0
?_Pwm_Test:	; 1 bytes @ 0x0
?_Set_Work:	; 1 bytes @ 0x0
?_time0:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
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
??_rgbShow:	; 1 bytes @ 0x0
?_AD_Testing:	; 1 bytes @ 0x0
??_Set_CCP_PWM:	; 1 bytes @ 0x0
??_checkVoll:	; 1 bytes @ 0x0
??_closePWM:	; 1 bytes @ 0x0
??_uartRevCtr:	; 1 bytes @ 0x0
??_checkLed:	; 1 bytes @ 0x0
??_rainbow2:	; 1 bytes @ 0x0
??_rainbow:	; 1 bytes @ 0x0
??_breathAddLed:	; 1 bytes @ 0x0
??_breathSubLed:	; 1 bytes @ 0x0
?_Delay:	; 1 bytes @ 0x0
??_Init_ic:	; 1 bytes @ 0x0
??_Init_ram:	; 1 bytes @ 0x0
??_Sys_set:	; 1 bytes @ 0x0
??_Set_Work:	; 1 bytes @ 0x0
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
	global	breathAddLed@ledDuty
breathAddLed@ledDuty:	; 1 bytes @ 0x0
	global	breathSubLed@ledDuty
breathSubLed@ledDuty:	; 1 bytes @ 0x0
	global	Delay@dtemp
Delay@dtemp:	; 2 bytes @ 0x0
	global	Pwm_add@pwmlset
Pwm_add@pwmlset:	; 2 bytes @ 0x0
	global	Pwm_dec@pwmfset
Pwm_dec@pwmfset:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	1
??_colorCtr:	; 1 bytes @ 0x1
	global	Set_jiyi_re@redata
Set_jiyi_re@redata:	; 1 bytes @ 0x1
	global	AD_Testing@ad_lr
AD_Testing@ad_lr:	; 1 bytes @ 0x1
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
;!    BSS         87
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      12
;!    BANK0            80     16      79
;!    BANK1            80      0      20
;!    BANK3            88      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    breathSubLed@ledDuty	PTR unsigned char  size(1) Largest target is 1
;!		 -> cBlueDuty(COMMON[1]), cGreenDuty(BANK0[1]), 
;!
;!    breathAddLed@ledDuty	PTR unsigned char  size(1) Largest target is 1
;!		 -> cBlueDuty(COMMON[1]), cGreenDuty(BANK0[1]), 
;!


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
;!    _colorCtr->_breathAddLed
;!    _colorCtr->_breathSubLed
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
;! (0) _main                                                 0     0      0    3883
;!                         _AD_Testing
;!                          _Delay_nms
;!                            _Init_ic
;!                           _Init_ram
;!                           _Pwm_Test
;!                        _Set_CCP_PWM
;!                    _Set_Usart_Async
;!                           _Set_Work
;!                            _Sys_set
;!                           _checkLed
;!                          _checkVoll
;!                           _closePWM
;!                           _colorCtr
;!                            _rgbShow
;!                         _uartRevCtr
;! ---------------------------------------------------------------------------------
;! (1) _uartRevCtr                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _rgbShow                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _colorCtr                                             0     0      0     280
;!                       _breathAddLed
;!                       _breathSubLed
;!                            _rainbow
;!                           _rainbow2
;! ---------------------------------------------------------------------------------
;! (2) _rainbow2                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _rainbow                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _breathSubLed                                         1     1      0     140
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _breathAddLed                                         1     1      0     140
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _closePWM                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkVoll                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _checkLed                                             0     0      0       0
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
;!   _checkLed
;!   _checkVoll
;!   _closePWM
;!   _colorCtr
;!     _breathAddLed
;!     _breathSubLed
;!     _rainbow
;!     _rainbow2
;!   _rgbShow
;!   _uartRevCtr
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
;!ABS                  0      0      6F       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     10      4F       5       98.8%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0      14       7       25.0%
;!BITBANK3            58      0       0       8        0.0%
;!BANK3               58      0       0       9        0.0%
;!BITBANK2            50      0       0      10        0.0%
;!BANK2               50      0       0      11        0.0%
;!DATA                 0      0      6F      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 237 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
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
;;		_checkLed
;;		_checkVoll
;;		_closePWM
;;		_colorCtr
;;		_rgbShow
;;		_uartRevCtr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	237
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	237
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	241
	
l8924:	
# 241 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
clrwdt ;# 
psect	maintext
	line	242
	
l8926:	
;main.c: 242: Init_ic();
	fcall	_Init_ic
	line	243
;main.c: 243: Delay_nms(200);
	movlw	0C8h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(Delay_nms@inittempl)
	clrf	(Delay_nms@inittempl+1)
	fcall	_Delay_nms
	line	244
;main.c: 244: Init_ram();
	fcall	_Init_ram
	line	245
;main.c: 245: Set_Usart_Async();
	fcall	_Set_Usart_Async
	line	246
	
l8928:	
;main.c: 246: whFlag = 1;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_whFlag)
	incf	(_whFlag),f
	line	247
	
l8930:	
;main.c: 247: led1Step = 3;
	movlw	low(03h)
	movwf	(_led1Step)
	line	248
	
l8932:	
;main.c: 248: led2Step = 3;
	movlw	low(03h)
	movwf	(_led2Step)
	line	249
	
l8934:	
;main.c: 249: startTime = 200;
	movlw	low(0C8h)
	movwf	(_startTime)
	line	252
	
l8936:	
;main.c: 251: {
;main.c: 252: if(whFlag || startTime > 0)
	movf	((_whFlag)),w
	btfss	status,2
	goto	u5111
	goto	u5110
u5111:
	goto	l8940
u5110:
	
l8938:	
	movf	((_startTime)),w
	btfsc	status,2
	goto	u5121
	goto	u5120
u5121:
	goto	l8946
u5120:
	line	254
	
l8940:	
;main.c: 253: {
;main.c: 254: if(tm2Flag)
	movf	((_tm2Flag)),w
	btfsc	status,2
	goto	u5131
	goto	u5130
u5131:
	goto	l8946
u5130:
	line	256
	
l8942:	
;main.c: 255: {
;main.c: 256: tm2Flag = 0;
	clrf	(_tm2Flag)
	line	257
	
l8944:	
;main.c: 257: rgbShow();
	fcall	_rgbShow
	line	260
	
l8946:	
;main.c: 258: }
;main.c: 259: }
;main.c: 260: if(tcount >= 40)
	movlw	low(028h)
	subwf	(_tcount),w	;volatile
	skipc
	goto	u5141
	goto	u5140
u5141:
	goto	l8936
u5140:
	line	262
	
l8948:	
;main.c: 261: {
;main.c: 262: tcount = 0;
	clrf	(_tcount)	;volatile
	line	263
	
l8950:	
;main.c: 263: Sys_set();
	fcall	_Sys_set
	line	267
	
l8952:	
;main.c: 267: if(whFlag)
	movf	((_whFlag)),w
	btfsc	status,2
	goto	u5151
	goto	u5150
u5151:
	goto	l8976
u5150:
	line	269
	
l8954:	
;main.c: 268: {
;main.c: 269: startTime = 0;
	clrf	(_startTime)
	line	270
	
l8956:	
;main.c: 270: Set_Work();
	fcall	_Set_Work
	line	271
	
l8958:	
;main.c: 271: onoff=1;
	bsf	(_onoff/8),(_onoff)&7	;volatile
	line	272
	
l8960:	
;main.c: 272: AD_Testing(1,13,1);
	movlw	low(0Dh)
	movwf	(AD_Testing@ad_ch)
	clrf	(AD_Testing@ad_lr)
	incf	(AD_Testing@ad_lr),f
	movlw	low(01h)
	fcall	_AD_Testing
	line	273
	
l8962:	
;main.c: 273: Set_CCP_PWM();
	fcall	_Set_CCP_PWM
	line	274
	
l8964:	
;main.c: 274: checkVoll();
	fcall	_checkVoll
	line	275
	
l8966:	
;main.c: 275: if(led1Step != 1)
		decf	((_led1Step)),w
	btfsc	status,2
	goto	u5161
	goto	u5160
u5161:
	goto	l8970
u5160:
	line	277
	
l8968:	
;main.c: 276: {
;main.c: 277: PORTA &= 0xF7;
	bcf	(5)+(3/8),(3)&7	;volatile
	line	279
	
l8970:	
;main.c: 278: }
;main.c: 279: if(++count2 > 1)
	movlw	low(02h)
	incf	(_count2),f
	subwf	((_count2)),w
	skipc
	goto	u5171
	goto	u5170
u5171:
	goto	l8986
u5170:
	line	281
	
l8972:	
;main.c: 280: {
;main.c: 281: count2 = 0;
	clrf	(_count2)
	line	282
	
l8974:	
;main.c: 282: colorCtr();
	fcall	_colorCtr
	goto	l8986
	line	285
	
l8976:	
;main.c: 285: else if(startTime == 0)
	movf	((_startTime)),w
	btfss	status,2
	goto	u5181
	goto	u5180
u5181:
	goto	l8986
u5180:
	line	287
	
l8978:	
;main.c: 286: {
;main.c: 287: closePWM();
	fcall	_closePWM
	line	288
	
l8980:	
;main.c: 288: onoff=0;
	bcf	(_onoff/8),(_onoff)&7	;volatile
	line	290
	
l8982:	
;main.c: 290: PORTA = 0x00;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	291
	
l8984:	
;main.c: 291: PORTB = 0x00;
	clrf	(6)	;volatile
	line	293
	
l8986:	
;main.c: 292: }
;main.c: 293: Pwm_Test();
	fcall	_Pwm_Test
	line	294
	
l8988:	
;main.c: 294: uartRevCtr();
	fcall	_uartRevCtr
	line	295
	
l8990:	
;main.c: 295: checkLed();
	fcall	_checkLed
	line	296
	
l8992:	
;main.c: 296: if(ganshaoFlag)
	movf	((_ganshaoFlag)),w
	btfsc	status,2
	goto	u5191
	goto	u5190
u5191:
	goto	l2376
u5190:
	line	298
	
l8994:	
;main.c: 297: {
;main.c: 298: PORTB &= 0xDF;
	bcf	(6)+(5/8),(5)&7	;volatile
	line	299
;main.c: 299: }
	goto	l8936
	line	300
	
l2376:	
	line	302
;main.c: 300: else
;main.c: 301: {
;main.c: 302: PORTB |= 0x20;
	bsf	(6)+(5/8),(5)&7	;volatile
	goto	l8936
	global	start
	ljmp	start
	opt stack 0
	line	307
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_uartRevCtr

;; *************** function _uartRevCtr *****************
;; Defined at:
;;		line 349 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
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
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	349
global __ptext1
__ptext1:	;psect for function _uartRevCtr
psect	text1
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	349
	global	__size_of_uartRevCtr
	__size_of_uartRevCtr	equ	__end_of_uartRevCtr-_uartRevCtr
	
_uartRevCtr:	
;incstack = 0
	opt	stack 5
; Regs used in _uartRevCtr: [wreg+status,2+status,0]
	line	351
	
l8856:	
;main.c: 351: if(++revTime > 10)
	movlw	low(0Bh)
	incf	(_revTime),f
	subwf	((_revTime)),w
	skipc
	goto	u5011
	goto	u5010
u5011:
	goto	l2397
u5010:
	line	353
	
l8858:	
;main.c: 352: {
;main.c: 353: revTime = 10;
	movlw	low(0Ah)
	movwf	(_revTime)
	line	354
;main.c: 354: if(whFlag != Recebuffer[0])
	movf	(_whFlag),w
	bsf	status, 5	;RP0=1, select bank1
	xorwf	(_Recebuffer)^080h,w
	skipnz
	goto	u5021
	goto	u5020
u5021:
	goto	l8862
u5020:
	line	356
	
l8860:	
;main.c: 355: {
;main.c: 356: ganshaoFlag = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_ganshaoFlag)
	line	358
	
l8862:	
;main.c: 357: }
;main.c: 358: whFlag = Recebuffer[0];
	bsf	status, 5	;RP0=1, select bank1
	movf	(_Recebuffer)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_whFlag)
	line	359
	
l8864:	
;main.c: 359: if(Recebuffer[1] == 3 && led1Step != 3)
		movlw	3
	bsf	status, 5	;RP0=1, select bank1
	xorwf	(0+(_Recebuffer)^080h+01h),w
	btfss	status,2
	goto	u5031
	goto	u5030
u5031:
	goto	l8872
u5030:
	
l8866:	
		movlw	3
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_led1Step)),w
	btfsc	status,2
	goto	u5041
	goto	u5040
u5041:
	goto	l8872
u5040:
	line	361
	
l8868:	
;main.c: 360: {
;main.c: 361: redDuty = 64;
	movlw	low(040h)
	movwf	(_redDuty)
	line	362
;main.c: 362: greenDuty = 64;
	movlw	low(040h)
	movwf	(_greenDuty)
	line	363
;main.c: 363: blueDuty = 64;
	movlw	low(040h)
	movwf	(_blueDuty)
	line	364
	
l8870:	
;main.c: 364: count2s = 0;
	clrf	(_count2s)
	line	366
	
l8872:	
;main.c: 365: }
;main.c: 366: led1Step = Recebuffer[1];
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_Recebuffer)^080h+01h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_led1Step)
	line	367
	
l8874:	
;main.c: 367: if(Recebuffer[2] == 3 && led2Step != 3)
		movlw	3
	bsf	status, 5	;RP0=1, select bank1
	xorwf	(0+(_Recebuffer)^080h+02h),w
	btfss	status,2
	goto	u5051
	goto	u5050
u5051:
	goto	l8882
u5050:
	
l8876:	
		movlw	3
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_led2Step)),w
	btfsc	status,2
	goto	u5061
	goto	u5060
u5061:
	goto	l8882
u5060:
	line	369
	
l8878:	
;main.c: 368: {
;main.c: 369: cRedDuty = 64;
	movlw	low(040h)
	movwf	(_cRedDuty)
	line	370
;main.c: 370: cGreenDuty = 64;
	movlw	low(040h)
	movwf	(_cGreenDuty)
	line	371
;main.c: 371: cBlueDuty = 64;
	movlw	low(040h)
	movwf	(_cBlueDuty)
	line	372
	
l8880:	
;main.c: 372: count2s = 0;
	clrf	(_count2s)
	line	374
	
l8882:	
;main.c: 375: chrgStep = Recebuffer[3];
	bsf	status, 5	;RP0=1, select bank1
	movf	0+(_Recebuffer)^080h+02h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_led2Step)
	line	376
;main.c: 376: rececount = 0;
	clrf	(_rececount)
	line	378
	
l2397:	
	return
	opt stack 0
GLOBAL	__end_of_uartRevCtr
	__end_of_uartRevCtr:
	signat	_uartRevCtr,89
	global	_rgbShow

;; *************** function _rgbShow *****************
;; Defined at:
;;		line 760 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
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
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	760
global __ptext2
__ptext2:	;psect for function _rgbShow
psect	text2
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	760
	global	__size_of_rgbShow
	__size_of_rgbShow	equ	__end_of_rgbShow-_rgbShow
	
_rgbShow:	
;incstack = 0
	opt	stack 5
; Regs used in _rgbShow: [wreg+status,2+status,0]
	line	762
	
l8682:	
;main.c: 762: if(++curLedCnt > 64)
	movlw	low(041h)
	incf	(_curLedCnt),f
	subwf	((_curLedCnt)),w
	skipc
	goto	u4691
	goto	u4690
u4691:
	goto	l8686
u4690:
	line	764
	
l8684:	
;main.c: 763: {
;main.c: 764: curLedCnt = 0;
	clrf	(_curLedCnt)
	line	766
	
l8686:	
;main.c: 765: }
;main.c: 766: if(redDuty <= curLedCnt)
	movf	(_redDuty),w
	subwf	(_curLedCnt),w
	skipc
	goto	u4701
	goto	u4700
u4701:
	goto	l2516
u4700:
	line	768
	
l8688:	
;main.c: 767: {
;main.c: 768: PORTA &= 0xEF;
	bcf	(5)+(4/8),(4)&7	;volatile
	line	769
;main.c: 769: }
	goto	l8690
	line	770
	
l2516:	
	line	772
;main.c: 770: else
;main.c: 771: {
;main.c: 772: PORTA |= 0x10;
	bsf	(5)+(4/8),(4)&7	;volatile
	line	774
	
l8690:	
;main.c: 773: }
;main.c: 774: PORTA = PORTA;
	movf	(5),w	;volatile
	movwf	(5)	;volatile
	line	775
;main.c: 775: if(greenDuty <= curLedCnt)
	movf	(_greenDuty),w
	subwf	(_curLedCnt),w
	skipc
	goto	u4711
	goto	u4710
u4711:
	goto	l2518
u4710:
	line	777
	
l8692:	
;main.c: 776: {
;main.c: 777: PORTA &= 0xBF;
	bcf	(5)+(6/8),(6)&7	;volatile
	line	778
;main.c: 778: }
	goto	l8694
	line	779
	
l2518:	
	line	781
;main.c: 779: else
;main.c: 780: {
;main.c: 781: PORTA |= 0x40;
	bsf	(5)+(6/8),(6)&7	;volatile
	line	783
	
l8694:	
;main.c: 782: }
;main.c: 783: PORTA = PORTA;
	movf	(5),w	;volatile
	movwf	(5)	;volatile
	line	784
;main.c: 784: if(blueDuty <= curLedCnt)
	movf	(_blueDuty),w
	subwf	(_curLedCnt),w
	skipc
	goto	u4721
	goto	u4720
u4721:
	goto	l2520
u4720:
	line	786
	
l8696:	
;main.c: 785: {
;main.c: 786: PORTA &= 0xDF;
	bcf	(5)+(5/8),(5)&7	;volatile
	line	787
;main.c: 787: }
	goto	l8698
	line	788
	
l2520:	
	line	790
;main.c: 788: else
;main.c: 789: {
;main.c: 790: PORTA |= 0x20;
	bsf	(5)+(5/8),(5)&7	;volatile
	line	792
	
l8698:	
;main.c: 791: }
;main.c: 792: PORTA = PORTA;
	movf	(5),w	;volatile
	movwf	(5)	;volatile
	line	793
;main.c: 793: if(cRedDuty <= curLedCnt)
	movf	(_cRedDuty),w
	subwf	(_curLedCnt),w
	skipc
	goto	u4731
	goto	u4730
u4731:
	goto	l2522
u4730:
	line	795
	
l8700:	
;main.c: 794: {
;main.c: 795: PORTA &= 0x7F;
	bcf	(5)+(7/8),(7)&7	;volatile
	line	796
;main.c: 796: }
	goto	l8702
	line	797
	
l2522:	
	line	799
;main.c: 797: else
;main.c: 798: {
;main.c: 799: PORTA |= 0x80;
	bsf	(5)+(7/8),(7)&7	;volatile
	line	801
	
l8702:	
;main.c: 800: }
;main.c: 801: PORTA = PORTA;
	movf	(5),w	;volatile
	movwf	(5)	;volatile
	line	802
;main.c: 802: if(cGreenDuty <= curLedCnt)
	movf	(_cGreenDuty),w
	subwf	(_curLedCnt),w
	skipc
	goto	u4741
	goto	u4740
u4741:
	goto	l2524
u4740:
	line	804
	
l8704:	
;main.c: 803: {
;main.c: 804: PORTB &= 0xF7;
	bcf	(6)+(3/8),(3)&7	;volatile
	line	805
;main.c: 805: }
	goto	l8706
	line	806
	
l2524:	
	line	808
;main.c: 806: else
;main.c: 807: {
;main.c: 808: PORTB |= 0x08;
	bsf	(6)+(3/8),(3)&7	;volatile
	line	810
	
l8706:	
;main.c: 809: }
;main.c: 810: PORTB = PORTB;
	movf	(6),w	;volatile
	movwf	(6)	;volatile
	line	811
;main.c: 811: if(cBlueDuty <= curLedCnt)
	movf	(_cBlueDuty),w
	subwf	(_curLedCnt),w
	skipc
	goto	u4751
	goto	u4750
u4751:
	goto	l2526
u4750:
	line	813
	
l8708:	
;main.c: 812: {
;main.c: 813: PORTB &= 0xFB;
	bcf	(6)+(2/8),(2)&7	;volatile
	line	814
;main.c: 814: }
	goto	l8710
	line	815
	
l2526:	
	line	817
;main.c: 815: else
;main.c: 816: {
;main.c: 817: PORTB |= 0x04;
	bsf	(6)+(2/8),(2)&7	;volatile
	line	819
	
l8710:	
;main.c: 818: }
;main.c: 819: PORTB = PORTB;
	movf	(6),w	;volatile
	movwf	(6)	;volatile
	line	820
	
l2528:	
	return
	opt stack 0
GLOBAL	__end_of_rgbShow
	__end_of_rgbShow:
	signat	_rgbShow,89
	global	_colorCtr

;; *************** function _colorCtr *****************
;; Defined at:
;;		line 569 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_breathAddLed
;;		_breathSubLed
;;		_rainbow
;;		_rainbow2
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	569
global __ptext3
__ptext3:	;psect for function _colorCtr
psect	text3
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	569
	global	__size_of_colorCtr
	__size_of_colorCtr	equ	__end_of_colorCtr-_colorCtr
	
_colorCtr:	
;incstack = 0
	opt	stack 4
; Regs used in _colorCtr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	572
	
l8806:	
;main.c: 572: if(++count2s > 3)
	movlw	low(04h)
	incf	(_count2s),f
	subwf	((_count2s)),w
	skipc
	goto	u4911
	goto	u4910
u4911:
	goto	l8818
u4910:
	line	574
	
l8808:	
;main.c: 573: {
;main.c: 574: count2s = 0;
	clrf	(_count2s)
	line	575
	
l8810:	
;main.c: 575: if(led2Step == 3)
		movlw	3
	xorwf	((_led2Step)),w
	btfss	status,2
	goto	u4921
	goto	u4920
u4921:
	goto	l8814
u4920:
	line	577
	
l8812:	
;main.c: 576: {
;main.c: 577: rainbow2();
	fcall	_rainbow2
	line	579
	
l8814:	
;main.c: 578: }
;main.c: 579: if(led1Step == 3)
		movlw	3
	xorwf	((_led1Step)),w
	btfss	status,2
	goto	u4931
	goto	u4930
u4931:
	goto	l8818
u4930:
	line	581
	
l8816:	
;main.c: 580: {
;main.c: 581: rainbow();
	fcall	_rainbow
	line	587
	
l8818:	
;main.c: 582: }
;main.c: 583: }
;main.c: 587: if(count2s < 125)
	movlw	low(07Dh)
	subwf	(_count2s),w
	skipnc
	goto	u4941
	goto	u4940
u4941:
	goto	l8832
u4940:
	line	589
	
l8820:	
;main.c: 588: {
;main.c: 589: if(led2Step == 1)
		decf	((_led2Step)),w
	btfss	status,2
	goto	u4951
	goto	u4950
u4951:
	goto	l8826
u4950:
	line	591
	
l8822:	
;main.c: 590: {
;main.c: 591: cRedDuty = 0;
	clrf	(_cRedDuty)
	line	592
;main.c: 592: cBlueDuty = 0;
	clrf	(_cBlueDuty)
	line	593
	
l8824:	
;main.c: 593: breathAddLed(&cGreenDuty);
	movlw	(low(_cGreenDuty|((0x0)<<8)))&0ffh
	fcall	_breathAddLed
	line	594
;main.c: 594: }
	goto	l8844
	line	595
	
l8826:	
;main.c: 595: else if(led2Step == 2)
		movlw	2
	xorwf	((_led2Step)),w
	btfss	status,2
	goto	u4961
	goto	u4960
u4961:
	goto	l8844
u4960:
	line	597
	
l8828:	
;main.c: 596: {
;main.c: 597: cRedDuty = 0;
	clrf	(_cRedDuty)
	line	598
;main.c: 598: cGreenDuty = 0;
	clrf	(_cGreenDuty)
	line	599
	
l8830:	
;main.c: 599: breathAddLed(&cBlueDuty);
	movlw	(low(_cBlueDuty|((0x00)<<8)))&0ffh
	fcall	_breathAddLed
	goto	l8844
	line	605
	
l8832:	
;main.c: 603: else
;main.c: 604: {
;main.c: 605: if(led2Step == 1)
		decf	((_led2Step)),w
	btfss	status,2
	goto	u4971
	goto	u4970
u4971:
	goto	l8838
u4970:
	line	607
	
l8834:	
;main.c: 606: {
;main.c: 607: cRedDuty = 0;
	clrf	(_cRedDuty)
	line	608
;main.c: 608: cBlueDuty = 0;
	clrf	(_cBlueDuty)
	line	609
	
l8836:	
;main.c: 609: breathSubLed(&cGreenDuty);
	movlw	(low(_cGreenDuty|((0x0)<<8)))&0ffh
	fcall	_breathSubLed
	line	610
;main.c: 610: }
	goto	l8844
	line	611
	
l8838:	
;main.c: 611: else if(led2Step == 2)
		movlw	2
	xorwf	((_led2Step)),w
	btfss	status,2
	goto	u4981
	goto	u4980
u4981:
	goto	l8844
u4980:
	line	613
	
l8840:	
;main.c: 612: {
;main.c: 613: cRedDuty = 0;
	clrf	(_cRedDuty)
	line	614
;main.c: 614: cGreenDuty = 0;
	clrf	(_cGreenDuty)
	line	615
	
l8842:	
;main.c: 615: breathSubLed(&cBlueDuty);
	movlw	(low(_cBlueDuty|((0x00)<<8)))&0ffh
	fcall	_breathSubLed
	line	622
	
l8844:	
;main.c: 616: }
;main.c: 618: }
;main.c: 622: if(led1Step == 1)
		decf	((_led1Step)),w
	btfss	status,2
	goto	u4991
	goto	u4990
u4991:
	goto	l8850
u4990:
	line	624
	
l8846:	
;main.c: 623: {
;main.c: 624: redDuty = 0;
	clrf	(_redDuty)
	line	625
;main.c: 625: greenDuty = 0;
	clrf	(_greenDuty)
	line	626
;main.c: 626: blueDuty = 0;
	clrf	(_blueDuty)
	line	627
	
l8848:	
;main.c: 627: PORTA |= 0x08;
	bsf	(5)+(3/8),(3)&7	;volatile
	line	628
;main.c: 628: }
	goto	l2468
	line	629
	
l8850:	
;main.c: 629: else if(led1Step == 2)
		movlw	2
	xorwf	((_led1Step)),w
	btfss	status,2
	goto	u5001
	goto	u5000
u5001:
	goto	l2468
u5000:
	line	631
	
l8852:	
;main.c: 630: {
;main.c: 631: redDuty = 46;
	movlw	low(02Eh)
	movwf	(_redDuty)
	line	632
;main.c: 632: greenDuty = 51;
	movlw	low(033h)
	movwf	(_greenDuty)
	line	633
;main.c: 633: blueDuty = 62;
	movlw	low(03Eh)
	movwf	(_blueDuty)
	line	635
	
l2468:	
	return
	opt stack 0
GLOBAL	__end_of_colorCtr
	__end_of_colorCtr:
	signat	_colorCtr,89
	global	_rainbow2

;; *************** function _rainbow2 *****************
;; Defined at:
;;		line 637 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
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
;;		_colorCtr
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	637
global __ptext4
__ptext4:	;psect for function _rainbow2
psect	text4
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	637
	global	__size_of_rainbow2
	__size_of_rainbow2	equ	__end_of_rainbow2-_rainbow2
	
_rainbow2:	
;incstack = 0
	opt	stack 4
; Regs used in _rainbow2: [wreg+status,2+status,0]
	line	640
	
l8442:	
;main.c: 640: if(cRedDuty > clastRed)
	movf	(_cRedDuty),w
	subwf	(_clastRed),w
	skipnc
	goto	u4301
	goto	u4300
u4301:
	goto	l8446
u4300:
	line	641
	
l8444:	
;main.c: 641: cRedDuty--;
	decf	(_cRedDuty),f
	line	642
	
l8446:	
;main.c: 642: if(cGreenDuty > clastGreen)
	movf	(_cGreenDuty),w
	subwf	(_clastGreen),w
	skipnc
	goto	u4311
	goto	u4310
u4311:
	goto	l8450
u4310:
	line	643
	
l8448:	
;main.c: 643: cGreenDuty--;
	decf	(_cGreenDuty),f
	line	644
	
l8450:	
;main.c: 644: if(cBlueDuty > clastBlue)
	movf	(_cBlueDuty),w
	subwf	(_clastBlue),w
	skipnc
	goto	u4321
	goto	u4320
u4321:
	goto	l8454
u4320:
	line	645
	
l8452:	
;main.c: 645: cBlueDuty--;
	decf	(_cBlueDuty),f
	line	646
	
l8454:	
;main.c: 646: if(cRedDuty < clastRed)
	movf	(_clastRed),w
	subwf	(_cRedDuty),w
	skipnc
	goto	u4331
	goto	u4330
u4331:
	goto	l8458
u4330:
	line	647
	
l8456:	
;main.c: 647: cRedDuty++;
	incf	(_cRedDuty),f
	line	648
	
l8458:	
;main.c: 648: if(cGreenDuty < clastGreen)
	movf	(_clastGreen),w
	subwf	(_cGreenDuty),w
	skipnc
	goto	u4341
	goto	u4340
u4341:
	goto	l8462
u4340:
	line	649
	
l8460:	
;main.c: 649: cGreenDuty++;
	incf	(_cGreenDuty),f
	line	650
	
l8462:	
;main.c: 650: if(cBlueDuty < clastBlue)
	movf	(_clastBlue),w
	subwf	(_cBlueDuty),w
	skipnc
	goto	u4351
	goto	u4350
u4351:
	goto	l8466
u4350:
	line	651
	
l8464:	
;main.c: 651: cBlueDuty++;
	incf	(_cBlueDuty),f
	line	652
	
l8466:	
;main.c: 652: if(cdelayTime > 0)
	movf	((_cdelayTime)),w
	btfsc	status,2
	goto	u4361
	goto	u4360
u4361:
	goto	l8472
u4360:
	line	654
	
l8468:	
;main.c: 653: {
;main.c: 654: cdelayTime--;
	decf	(_cdelayTime),f
	goto	l2478
	line	657
	
l8472:	
;main.c: 656: }
;main.c: 657: if(cClorStep == 1)
		decf	((_cClorStep)),w
	btfss	status,2
	goto	u4371
	goto	u4370
u4371:
	goto	l8480
u4370:
	line	659
	
l8474:	
;main.c: 658: {
;main.c: 659: clastRed = 64;
	movlw	low(040h)
	movwf	(_clastRed)
	line	660
	
l8476:	
;main.c: 660: clastGreen = 0;
	clrf	(_clastGreen)
	line	661
	
l8478:	
;main.c: 661: clastBlue = 0;
	clrf	(_clastBlue)
	line	663
;main.c: 663: }
	goto	l2480
	line	664
	
l8480:	
;main.c: 664: else if(cClorStep == 2)
		movlw	2
	xorwf	((_cClorStep)),w
	btfss	status,2
	goto	u4381
	goto	u4380
u4381:
	goto	l8486
u4380:
	line	666
	
l8482:	
;main.c: 665: {
;main.c: 666: clastRed = 0;
	clrf	(_clastRed)
	line	667
;main.c: 667: clastGreen = 0;
	clrf	(_clastGreen)
	line	668
	
l8484:	
;main.c: 668: clastBlue = 64;
	movlw	low(040h)
	movwf	(_clastBlue)
	line	669
;main.c: 669: }
	goto	l2480
	line	670
	
l8486:	
;main.c: 670: else if(cClorStep == 3)
		movlw	3
	xorwf	((_cClorStep)),w
	btfss	status,2
	goto	u4391
	goto	u4390
u4391:
	goto	l2480
u4390:
	line	672
	
l8488:	
;main.c: 671: {
;main.c: 672: clastRed = 0;
	clrf	(_clastRed)
	line	673
	
l8490:	
;main.c: 673: clastGreen = 64;
	movlw	low(040h)
	movwf	(_clastGreen)
	goto	l8478
	line	679
	
l2480:	
;main.c: 675: }
;main.c: 679: if(cRedDuty == clastRed && cBlueDuty == cBlueDuty && cGreenDuty == clastGreen)
	movf	(_cRedDuty),w
	xorwf	(_clastRed),w
	skipz
	goto	u4401
	goto	u4400
u4401:
	goto	l2478
u4400:
	
l8494:	
	movf	(_cBlueDuty),w
	xorwf	(_cBlueDuty),w
	skipz
	goto	u4411
	goto	u4410
u4411:
	goto	l2478
u4410:
	
l8496:	
	movf	(_cGreenDuty),w
	xorwf	(_clastGreen),w
	skipz
	goto	u4421
	goto	u4420
u4421:
	goto	l2478
u4420:
	line	681
	
l8498:	
;main.c: 680: {
;main.c: 681: if(++cClorStep > 3)
	movlw	low(04h)
	incf	(_cClorStep),f
	subwf	((_cClorStep)),w
	skipc
	goto	u4431
	goto	u4430
u4431:
	goto	l8502
u4430:
	line	683
	
l8500:	
;main.c: 682: {
;main.c: 683: cClorStep = 0;
	clrf	(_cClorStep)
	line	685
	
l8502:	
;main.c: 684: }
;main.c: 685: if(cdelayTime == 0)
	movf	((_cdelayTime)),w
	btfss	status,2
	goto	u4441
	goto	u4440
u4441:
	goto	l2478
u4440:
	line	686
	
l8504:	
;main.c: 686: cdelayTime = 5;
	movlw	low(05h)
	movwf	(_cdelayTime)
	line	688
	
l2478:	
	return
	opt stack 0
GLOBAL	__end_of_rainbow2
	__end_of_rainbow2:
	signat	_rainbow2,89
	global	_rainbow

;; *************** function _rainbow *****************
;; Defined at:
;;		line 691 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
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
;;		_colorCtr
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	691
global __ptext5
__ptext5:	;psect for function _rainbow
psect	text5
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	691
	global	__size_of_rainbow
	__size_of_rainbow	equ	__end_of_rainbow-_rainbow
	
_rainbow:	
;incstack = 0
	opt	stack 4
; Regs used in _rainbow: [wreg+status,2+status,0]
	line	694
	
l8506:	
;main.c: 694: if(redDuty > lastRed)
	movf	(_redDuty),w
	subwf	(_lastRed),w
	skipnc
	goto	u4451
	goto	u4450
u4451:
	goto	l8510
u4450:
	line	695
	
l8508:	
;main.c: 695: redDuty--;
	decf	(_redDuty),f
	line	696
	
l8510:	
;main.c: 696: if(greenDuty > lastGreen)
	movf	(_greenDuty),w
	subwf	(_lastGreen),w
	skipnc
	goto	u4461
	goto	u4460
u4461:
	goto	l8514
u4460:
	line	697
	
l8512:	
;main.c: 697: greenDuty--;
	decf	(_greenDuty),f
	line	698
	
l8514:	
;main.c: 698: if(blueDuty > lastBlue)
	movf	(_blueDuty),w
	subwf	(_lastBlue),w
	skipnc
	goto	u4471
	goto	u4470
u4471:
	goto	l8518
u4470:
	line	699
	
l8516:	
;main.c: 699: blueDuty--;
	decf	(_blueDuty),f
	line	700
	
l8518:	
;main.c: 700: if(redDuty < lastRed)
	movf	(_lastRed),w
	subwf	(_redDuty),w
	skipnc
	goto	u4481
	goto	u4480
u4481:
	goto	l8522
u4480:
	line	701
	
l8520:	
;main.c: 701: redDuty++;
	incf	(_redDuty),f
	line	702
	
l8522:	
;main.c: 702: if(greenDuty < lastGreen)
	movf	(_lastGreen),w
	subwf	(_greenDuty),w
	skipnc
	goto	u4491
	goto	u4490
u4491:
	goto	l8526
u4490:
	line	703
	
l8524:	
;main.c: 703: greenDuty++;
	incf	(_greenDuty),f
	line	704
	
l8526:	
;main.c: 704: if(blueDuty < lastBlue)
	movf	(_lastBlue),w
	subwf	(_blueDuty),w
	skipnc
	goto	u4501
	goto	u4500
u4501:
	goto	l8530
u4500:
	line	705
	
l8528:	
;main.c: 705: blueDuty++;
	incf	(_blueDuty),f
	line	706
	
l8530:	
;main.c: 706: if(delayTime > 0)
	movf	((_delayTime)),w
	btfsc	status,2
	goto	u4511
	goto	u4510
u4511:
	goto	l8536
u4510:
	line	708
	
l8532:	
;main.c: 707: {
;main.c: 708: delayTime--;
	decf	(_delayTime),f
	goto	l2496
	line	711
	
l8536:	
;main.c: 710: }
;main.c: 711: if(mClorStep == 1)
		decf	((_mClorStep)),w
	btfss	status,2
	goto	u4521
	goto	u4520
u4521:
	goto	l8544
u4520:
	line	713
	
l8538:	
;main.c: 712: {
;main.c: 713: lastRed = 64;
	movlw	low(040h)
	movwf	(_lastRed)
	line	714
	
l8540:	
;main.c: 714: lastGreen = 0;
	clrf	(_lastGreen)
	line	715
	
l8542:	
;main.c: 715: lastBlue = 0;
	clrf	(_lastBlue)
	line	717
;main.c: 717: }
	goto	l2498
	line	718
	
l8544:	
;main.c: 718: else if(mClorStep == 2)
		movlw	2
	xorwf	((_mClorStep)),w
	btfss	status,2
	goto	u4531
	goto	u4530
u4531:
	goto	l8550
u4530:
	line	720
	
l8546:	
;main.c: 719: {
;main.c: 720: lastRed = 0;
	clrf	(_lastRed)
	line	721
;main.c: 721: lastGreen = 0;
	clrf	(_lastGreen)
	line	722
	
l8548:	
;main.c: 722: lastBlue = 64;
	movlw	low(040h)
	movwf	(_lastBlue)
	line	723
;main.c: 723: }
	goto	l2498
	line	724
	
l8550:	
;main.c: 724: else if(mClorStep == 3)
		movlw	3
	xorwf	((_mClorStep)),w
	btfss	status,2
	goto	u4541
	goto	u4540
u4541:
	goto	l2498
u4540:
	line	726
	
l8552:	
;main.c: 725: {
;main.c: 726: lastRed = 0;
	clrf	(_lastRed)
	line	727
	
l8554:	
;main.c: 727: lastGreen = 64;
	movlw	low(040h)
	movwf	(_lastGreen)
	goto	l8542
	line	732
	
l2498:	
;main.c: 729: }
;main.c: 732: if(redDuty == lastRed && blueDuty == lastBlue && greenDuty == lastGreen)
	movf	(_redDuty),w
	xorwf	(_lastRed),w
	skipz
	goto	u4551
	goto	u4550
u4551:
	goto	l2496
u4550:
	
l8558:	
	movf	(_blueDuty),w
	xorwf	(_lastBlue),w
	skipz
	goto	u4561
	goto	u4560
u4561:
	goto	l2496
u4560:
	
l8560:	
	movf	(_greenDuty),w
	xorwf	(_lastGreen),w
	skipz
	goto	u4571
	goto	u4570
u4571:
	goto	l2496
u4570:
	line	734
	
l8562:	
;main.c: 733: {
;main.c: 734: if(++mClorStep > 3)
	movlw	low(04h)
	incf	(_mClorStep),f
	subwf	((_mClorStep)),w
	skipc
	goto	u4581
	goto	u4580
u4581:
	goto	l8566
u4580:
	line	736
	
l8564:	
;main.c: 735: {
;main.c: 736: mClorStep = 0;
	clrf	(_mClorStep)
	line	738
	
l8566:	
;main.c: 737: }
;main.c: 738: if(delayTime == 0)
	movf	((_delayTime)),w
	btfss	status,2
	goto	u4591
	goto	u4590
u4591:
	goto	l2496
u4590:
	line	739
	
l8568:	
;main.c: 739: delayTime = 5;
	movlw	low(05h)
	movwf	(_delayTime)
	line	741
	
l2496:	
	return
	opt stack 0
GLOBAL	__end_of_rainbow
	__end_of_rainbow:
	signat	_rainbow,89
	global	_breathSubLed

;; *************** function _breathSubLed *****************
;; Defined at:
;;		line 752 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
;; Parameters:    Size  Location     Type
;;  ledDuty         1    wreg     PTR unsigned char 
;;		 -> cBlueDuty(1), cGreenDuty(1), 
;; Auto vars:     Size  Location     Type
;;  ledDuty         1    0[BANK0 ] PTR unsigned char 
;;		 -> cBlueDuty(1), cGreenDuty(1), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
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
;;		_colorCtr
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	752
global __ptext6
__ptext6:	;psect for function _breathSubLed
psect	text6
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	752
	global	__size_of_breathSubLed
	__size_of_breathSubLed	equ	__end_of_breathSubLed-_breathSubLed
	
_breathSubLed:	
;incstack = 0
	opt	stack 4
; Regs used in _breathSubLed: [wreg-fsr0h+status,2+status,0]
;breathSubLed@ledDuty stored from wreg
	movwf	(breathSubLed@ledDuty)
	line	754
	
l8574:	
;main.c: 754: if((*ledDuty) > 0)
	movf	(breathSubLed@ledDuty),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	(indf),w
	btfsc	status,2
	goto	u4611
	goto	u4610
u4611:
	goto	l2512
u4610:
	line	756
	
l8576:	
;main.c: 755: {
;main.c: 756: (*ledDuty)--;
	movf	(breathSubLed@ledDuty),w
	movwf	fsr0
	decf	indf,f
	line	758
	
l2512:	
	return
	opt stack 0
GLOBAL	__end_of_breathSubLed
	__end_of_breathSubLed:
	signat	_breathSubLed,4217
	global	_breathAddLed

;; *************** function _breathAddLed *****************
;; Defined at:
;;		line 744 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
;; Parameters:    Size  Location     Type
;;  ledDuty         1    wreg     PTR unsigned char 
;;		 -> cBlueDuty(1), cGreenDuty(1), 
;; Auto vars:     Size  Location     Type
;;  ledDuty         1    0[BANK0 ] PTR unsigned char 
;;		 -> cBlueDuty(1), cGreenDuty(1), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
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
;;		_colorCtr
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	744
global __ptext7
__ptext7:	;psect for function _breathAddLed
psect	text7
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	744
	global	__size_of_breathAddLed
	__size_of_breathAddLed	equ	__end_of_breathAddLed-_breathAddLed
	
_breathAddLed:	
;incstack = 0
	opt	stack 4
; Regs used in _breathAddLed: [wreg-fsr0h+status,2+status,0]
;breathAddLed@ledDuty stored from wreg
	movwf	(breathAddLed@ledDuty)
	line	746
	
l8570:	
;main.c: 746: if((*ledDuty) < 64)
	movf	(breathAddLed@ledDuty),w
	movwf	fsr0
	movlw	low(040h)
	bcf	status, 7	;select IRP bank0
	subwf	indf,w
	skipnc
	goto	u4601
	goto	u4600
u4601:
	goto	l2508
u4600:
	line	748
	
l8572:	
;main.c: 747: {
;main.c: 748: (*ledDuty)++;
	movf	(breathAddLed@ledDuty),w
	movwf	fsr0
	incf	indf,f
	line	750
	
l2508:	
	return
	opt stack 0
GLOBAL	__end_of_breathAddLed
	__end_of_breathAddLed:
	signat	_breathAddLed,4217
	global	_closePWM

;; *************** function _closePWM *****************
;; Defined at:
;;		line 491 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
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
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	491
global __ptext8
__ptext8:	;psect for function _closePWM
psect	text8
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	491
	global	__size_of_closePWM
	__size_of_closePWM	equ	__end_of_closePWM-_closePWM
	
_closePWM:	
;incstack = 0
	opt	stack 5
; Regs used in _closePWM: [status,2]
	line	493
	
l8854:	
;main.c: 493: PWMD1L = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(404)^0180h	;volatile
	line	494
;main.c: 494: PWMD01H = 0x00;
	bcf	status, 5	;RP0=0, select bank2
	clrf	(284)^0100h	;volatile
	line	495
;main.c: 495: PWMCON2 = 0B00000000;
	clrf	(265)^0100h	;volatile
	line	496
;main.c: 496: PWMCON1 = 0B00000000;
	clrf	(264)^0100h	;volatile
	line	497
;main.c: 497: PWMCON0 = 0B00000000;
	clrf	(263)^0100h	;volatile
	line	498
	
l2428:	
	return
	opt stack 0
GLOBAL	__end_of_closePWM
	__end_of_closePWM:
	signat	_closePWM,89
	global	_checkVoll

;; *************** function _checkVoll *****************
;; Defined at:
;;		line 542 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
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
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	542
global __ptext9
__ptext9:	;psect for function _checkVoll
psect	text9
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	542
	global	__size_of_checkVoll
	__size_of_checkVoll	equ	__end_of_checkVoll-_checkVoll
	
_checkVoll:	
;incstack = 0
	opt	stack 5
; Regs used in _checkVoll: [wreg+status,2+status,0]
	line	544
	
l8784:	
;main.c: 544: if(AD_Result > 182)
	movlw	0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_AD_Result+1),w	;volatile
	movlw	0B7h
	skipnz
	subwf	(_AD_Result),w	;volatile
	skipc
	goto	u4851
	goto	u4850
u4851:
	goto	l8796
u4850:
	line	546
	
l8786:	
;main.c: 545: {
;main.c: 546: if(++addTime > 5)
	movlw	low(06h)
	incf	(_addTime),f	;volatile
	subwf	((_addTime)),w	;volatile
	skipc
	goto	u4861
	goto	u4860
u4861:
	goto	l8794
u4860:
	line	548
	
l8788:	
;main.c: 547: {
;main.c: 548: addTime = 0;
	clrf	(_addTime)	;volatile
	line	549
	
l8790:	
;main.c: 549: if(currDuty > 1)
	movlw	low(02h)
	subwf	(_currDuty),w	;volatile
	skipc
	goto	u4871
	goto	u4870
u4871:
	goto	l8794
u4870:
	line	551
	
l8792:	
;main.c: 550: {
;main.c: 551: currDuty--;
	decf	(_currDuty),f	;volatile
	line	554
	
l8794:	
;main.c: 552: }
;main.c: 553: }
;main.c: 554: subTime = 0;
	clrf	(_subTime)	;volatile
	line	555
;main.c: 555: }
	goto	l2451
	line	556
	
l8796:	
;main.c: 556: else if(AD_Result < 166)
	movlw	0
	subwf	(_AD_Result+1),w	;volatile
	movlw	0A6h
	skipnz
	subwf	(_AD_Result),w	;volatile
	skipnc
	goto	u4881
	goto	u4880
u4881:
	goto	l2451
u4880:
	line	558
	
l8798:	
;main.c: 557: {
;main.c: 558: if(++subTime > 5)
	movlw	low(06h)
	incf	(_subTime),f	;volatile
	subwf	((_subTime)),w	;volatile
	skipc
	goto	u4891
	goto	u4890
u4891:
	goto	l8804
u4890:
	line	560
	
l8800:	
;main.c: 559: {
;main.c: 560: if(currDuty < 74)
	movlw	low(04Ah)
	subwf	(_currDuty),w	;volatile
	skipnc
	goto	u4901
	goto	u4900
u4901:
	goto	l8804
u4900:
	line	562
	
l8802:	
;main.c: 561: {
;main.c: 562: currDuty++;
	incf	(_currDuty),f	;volatile
	line	565
	
l8804:	
;main.c: 563: }
;main.c: 564: }
;main.c: 565: addTime = 0;
	clrf	(_addTime)	;volatile
	line	567
	
l2451:	
	return
	opt stack 0
GLOBAL	__end_of_checkVoll
	__end_of_checkVoll:
	signat	_checkVoll,89
	global	_checkLed

;; *************** function _checkLed *****************
;; Defined at:
;;		line 309 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
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
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	309
global __ptext10
__ptext10:	;psect for function _checkLed
psect	text10
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	309
	global	__size_of_checkLed
	__size_of_checkLed	equ	__end_of_checkLed-_checkLed
	
_checkLed:	
;incstack = 0
	opt	stack 5
; Regs used in _checkLed: [wreg+status,2+status,0]
	line	311
	
l8884:	
;main.c: 311: if(startTime > 0)
	movf	((_startTime)),w
	btfsc	status,2
	goto	u5071
	goto	u5070
u5071:
	goto	l2390
u5070:
	line	313
	
l8886:	
;main.c: 312: {
;main.c: 313: if(startTime > 150)
	movlw	low(097h)
	subwf	(_startTime),w
	skipc
	goto	u5081
	goto	u5080
u5081:
	goto	l8898
u5080:
	line	315
	
l8888:	
;main.c: 314: {
;main.c: 315: redDuty = 64;
	movlw	low(040h)
	movwf	(_redDuty)
	line	316
	
l8890:	
;main.c: 316: greenDuty = 0;
	clrf	(_greenDuty)
	line	317
	
l8892:	
;main.c: 317: blueDuty = 0;
	clrf	(_blueDuty)
	line	318
;main.c: 318: cRedDuty = 64;
	movlw	low(040h)
	movwf	(_cRedDuty)
	line	319
	
l8894:	
;main.c: 319: cGreenDuty = 0;
	clrf	(_cGreenDuty)
	line	320
	
l8896:	
;main.c: 320: cBlueDuty = 0;
	clrf	(_cBlueDuty)
	line	322
;main.c: 322: }
	goto	l8922
	line	323
	
l8898:	
;main.c: 323: else if(startTime > 100)
	movlw	low(065h)
	subwf	(_startTime),w
	skipc
	goto	u5091
	goto	u5090
u5091:
	goto	l8910
u5090:
	line	325
	
l8900:	
;main.c: 324: {
;main.c: 325: redDuty = 0;
	clrf	(_redDuty)
	line	326
	
l8902:	
;main.c: 326: greenDuty = 64;
	movlw	low(040h)
	movwf	(_greenDuty)
	line	327
	
l8904:	
;main.c: 327: blueDuty = 0;
	clrf	(_blueDuty)
	line	328
	
l8906:	
;main.c: 328: cRedDuty = 0;
	clrf	(_cRedDuty)
	line	329
	
l8908:	
;main.c: 329: cGreenDuty = 64;
	movlw	low(040h)
	movwf	(_cGreenDuty)
	line	330
;main.c: 330: cBlueDuty = 0;
	clrf	(_cBlueDuty)
	line	331
;main.c: 331: }
	goto	l8922
	line	332
	
l8910:	
;main.c: 332: else if(startTime > 50)
	movlw	low(033h)
	subwf	(_startTime),w
	skipc
	goto	u5101
	goto	u5100
u5101:
	goto	l2388
u5100:
	line	334
	
l8912:	
;main.c: 333: {
;main.c: 334: redDuty = 0;
	clrf	(_redDuty)
	line	335
;main.c: 335: greenDuty = 0;
	clrf	(_greenDuty)
	line	336
	
l8914:	
;main.c: 336: blueDuty = 64;
	movlw	low(040h)
	movwf	(_blueDuty)
	line	337
	
l8916:	
;main.c: 337: cRedDuty = 0;
	clrf	(_cRedDuty)
	line	338
	
l8918:	
;main.c: 338: cGreenDuty = 0;
	clrf	(_cGreenDuty)
	line	339
	
l8920:	
;main.c: 339: cBlueDuty = 64;
	movlw	low(040h)
	movwf	(_cBlueDuty)
	line	340
;main.c: 340: }
	goto	l8922
	line	341
	
l2388:	
	line	343
;main.c: 341: else
;main.c: 342: {
;main.c: 343: PORTA |= 0x08;
	bsf	(5)+(3/8),(3)&7	;volatile
	line	345
	
l8922:	
;main.c: 344: }
;main.c: 345: startTime--;
	decf	(_startTime),f
	line	347
	
l2390:	
	return
	opt stack 0
GLOBAL	__end_of_checkLed
	__end_of_checkLed:
	signat	_checkLed,89
	global	_Sys_set

;; *************** function _Sys_set *****************
;; Defined at:
;;		line 132 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
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
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	line	132
global __ptext11
__ptext11:	;psect for function _Sys_set
psect	text11
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	132
	global	__size_of_Sys_set
	__size_of_Sys_set	equ	__end_of_Sys_set-_Sys_set
	
_Sys_set:	
;incstack = 0
	opt	stack 5
; Regs used in _Sys_set: [wreg+status,2+status,0]
	line	134
	
l8632:	
# 134 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
clrwdt ;# 
psect	text11
	line	135
	
l8634:	
;main.c: 135: WDTCON = 0x01;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(261)^0100h	;volatile
	line	136
;main.c: 136: TRISA = 0x06;
	movlw	low(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	137
;main.c: 137: TRISB = 0x11;
	movlw	low(011h)
	movwf	(134)^080h	;volatile
	line	138
	
l8636:	
;main.c: 138: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	139
	
l8638:	
;main.c: 139: PIE1 = 0B00000010;
	movlw	low(02h)
	movwf	(140)^080h	;volatile
	line	140
	
l8640:	
;main.c: 140: PR2 = 50;
	movlw	low(032h)
	movwf	(146)^080h	;volatile
	line	141
	
l8642:	
;main.c: 141: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	142
	
l8644:	
;main.c: 142: if(5 != T2CON)
		movlw	5
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((18)),w	;volatile
	btfsc	status,2
	goto	u4651
	goto	u4650
u4651:
	goto	l2335
u4650:
	line	143
	
l8646:	
;main.c: 143: T2CON = 5;
	movlw	low(05h)
	movwf	(18)	;volatile
	line	144
	
l2335:	
	return
	opt stack 0
GLOBAL	__end_of_Sys_set
	__end_of_Sys_set:
	signat	_Sys_set,89
	global	_Set_Work

;; *************** function _Set_Work *****************
;; Defined at:
;;		line 169 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	line	169
global __ptext12
__ptext12:	;psect for function _Set_Work
psect	text12
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	169
	global	__size_of_Set_Work
	__size_of_Set_Work	equ	__end_of_Set_Work-_Set_Work
	
_Set_Work:	
;incstack = 0
	opt	stack 5
; Regs used in _Set_Work: []
	line	171
	
l8658:	
;main.c: 171: if(errf)
	btfss	(_errf/8),(_errf)&7	;volatile
	goto	u4681
	goto	u4680
u4681:
	goto	l2345
u4680:
	line	173
	
l8660:	
;main.c: 172: {
;main.c: 173: errf = 0;
	bcf	(_errf/8),(_errf)&7	;volatile
	line	174
;main.c: 174: onoff = 0;
	bcf	(_onoff/8),(_onoff)&7	;volatile
	line	175
;main.c: 175: ganshaoFlag = 1;
	clrf	(_ganshaoFlag)
	incf	(_ganshaoFlag),f
	line	178
	
l2345:	
	return
	opt stack 0
GLOBAL	__end_of_Set_Work
	__end_of_Set_Work:
	signat	_Set_Work,89
	global	_Set_Usart_Async

;; *************** function _Set_Usart_Async *****************
;; Defined at:
;;		line 832 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
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
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	line	832
global __ptext13
__ptext13:	;psect for function _Set_Usart_Async
psect	text13
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	832
	global	__size_of_Set_Usart_Async
	__size_of_Set_Usart_Async	equ	__end_of_Set_Usart_Async-_Set_Usart_Async
	
_Set_Usart_Async:	
;incstack = 0
	opt	stack 5
; Regs used in _Set_Usart_Async: [wreg]
	line	834
	
l8662:	
;main.c: 834: SPBRG = 95;
	movlw	low(05Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(153)^080h	;volatile
	line	836
	
l8664:	
;main.c: 836: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7	;volatile
	line	837
	
l8666:	
;main.c: 837: SCKP = 0;
	bcf	(1219/8)^080h,(1219)&7	;volatile
	line	839
	
l8668:	
;main.c: 839: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7	;volatile
	line	840
	
l8670:	
;main.c: 840: RCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1125/8)^080h,(1125)&7	;volatile
	line	841
	
l8672:	
;main.c: 841: TXIE = 0;
	bcf	(1124/8)^080h,(1124)&7	;volatile
	line	842
	
l8674:	
;main.c: 842: RX9EN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(198/8),(198)&7	;volatile
	line	843
	
l8676:	
;main.c: 843: TX9EN = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1222/8)^080h,(1222)&7	;volatile
	line	844
	
l8678:	
;main.c: 844: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(196/8),(196)&7	;volatile
	line	845
	
l8680:	
;main.c: 845: TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1221/8)^080h,(1221)&7	;volatile
	line	846
	
l2531:	
	return
	opt stack 0
GLOBAL	__end_of_Set_Usart_Async
	__end_of_Set_Usart_Async:
	signat	_Set_Usart_Async,89
	global	_Set_CCP_PWM

;; *************** function _Set_CCP_PWM *****************
;; Defined at:
;;		line 470 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
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
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	line	470
global __ptext14
__ptext14:	;psect for function _Set_CCP_PWM
psect	text14
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	470
	global	__size_of_Set_CCP_PWM
	__size_of_Set_CCP_PWM	equ	__end_of_Set_CCP_PWM-_Set_CCP_PWM
	
_Set_CCP_PWM:	
;incstack = 0
	opt	stack 5
; Regs used in _Set_CCP_PWM: [wreg+status,2]
	line	472
	
l8766:	
;main.c: 472: PWMTL = 108;
	movlw	low(06Ch)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(399)^0180h	;volatile
	line	473
	
l8768:	
;main.c: 473: PWMTH = 0x00;
	clrf	(400)^0180h	;volatile
	line	474
	
l8770:	
;main.c: 474: PWMT4L = 0x00;
	clrf	(401)^0180h	;volatile
	line	478
;main.c: 478: PWMD1L = currDuty;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_currDuty),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(404)^0180h	;volatile
	line	479
	
l8772:	
;main.c: 479: PWMD01H = 0x00;
	bcf	status, 5	;RP0=0, select bank2
	clrf	(284)^0100h	;volatile
	line	482
	
l8774:	
;main.c: 482: PWM01DT = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(147)^080h	;volatile
	line	483
	
l8776:	
;main.c: 483: PWM23DT = 0;
	clrf	(148)^080h	;volatile
	line	485
	
l8778:	
;main.c: 485: PWMCON2 = 0B00000000;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(265)^0100h	;volatile
	line	486
	
l8780:	
;main.c: 486: PWMCON1 = 0B00000000;
	clrf	(264)^0100h	;volatile
	line	487
	
l8782:	
;main.c: 487: PWMCON0 = 0B00000010;
	movlw	low(02h)
	movwf	(263)^0100h	;volatile
	line	489
	
l2425:	
	return
	opt stack 0
GLOBAL	__end_of_Set_CCP_PWM
	__end_of_Set_CCP_PWM:
	signat	_Set_CCP_PWM,89
	global	_Pwm_Test

;; *************** function _Pwm_Test *****************
;; Defined at:
;;		line 152 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
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
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	line	152
global __ptext15
__ptext15:	;psect for function _Pwm_Test
psect	text15
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	152
	global	__size_of_Pwm_Test
	__size_of_Pwm_Test	equ	__end_of_Pwm_Test-_Pwm_Test
	
_Pwm_Test:	
;incstack = 0
	opt	stack 1
; Regs used in _Pwm_Test: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	155
	
l8648:	
;main.c: 154: unsigned char templ;
;main.c: 155: templ = Test_Pwm();
	fcall	_Test_Pwm
	movwf	(Pwm_Test@templ)
	line	157
	
l8650:	
;main.c: 157: if(0x55 == templ)
		movlw	85
	xorwf	((Pwm_Test@templ)),w
	btfss	status,2
	goto	u4661
	goto	u4660
u4661:
	goto	l8654
u4660:
	line	158
	
l8652:	
;main.c: 158: errf = 1;
	bsf	(_errf/8),(_errf)&7	;volatile
	goto	l2341
	line	159
	
l8654:	
;main.c: 159: else if(0xff == templ)
		incf	((Pwm_Test@templ)),w
	btfss	status,2
	goto	u4671
	goto	u4670
u4671:
	goto	l2341
u4670:
	goto	l8652
	line	161
	
l2341:	
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
psect	text16,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	736
global __ptext16
__ptext16:	;psect for function _Test_Pwm
psect	text16
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	736
	global	__size_of_Test_Pwm
	__size_of_Test_Pwm	equ	__end_of_Test_Pwm-_Test_Pwm
	
_Test_Pwm:	
;incstack = 0
	opt	stack 1
; Regs used in _Test_Pwm: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	743
	
l8366:	
;WHQ_TP_ZPGS_V1.2.c: 743: if(0 == pfgonetemp.pfgtemp)
	movf	((_pfgonetemp)),w
iorwf	((_pfgonetemp+1)),w
	btfss	status,2
	goto	u4181
	goto	u4180
u4181:
	goto	l5041
u4180:
	line	745
	
l8368:	
;WHQ_TP_ZPGS_V1.2.c: 744: {
;WHQ_TP_ZPGS_V1.2.c: 745: PFG_read_fst();
	fcall	_PFG_read_fst
	line	746
;WHQ_TP_ZPGS_V1.2.c: 746: }
	goto	l8438
	line	748
	
l5041:	
	line	750
;WHQ_TP_ZPGS_V1.2.c: 748: else
;WHQ_TP_ZPGS_V1.2.c: 749: {
;WHQ_TP_ZPGS_V1.2.c: 750: if(!on_off)
	btfsc	(_on_off/8),(_on_off)&7	;volatile
	goto	u4191
	goto	u4190
u4191:
	goto	l5043
u4190:
	line	752
	
l8370:	
;WHQ_TP_ZPGS_V1.2.c: 751: {
;WHQ_TP_ZPGS_V1.2.c: 752: Work_RAM_CLR();
	fcall	_Work_RAM_CLR
	line	753
	
l8372:	
;WHQ_TP_ZPGS_V1.2.c: 753: ondly = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Test_Pwm@ondly)
	line	754
;WHQ_TP_ZPGS_V1.2.c: 754: }
	goto	l8438
	line	756
	
l5043:	
	line	758
;WHQ_TP_ZPGS_V1.2.c: 756: else
;WHQ_TP_ZPGS_V1.2.c: 757: {
;WHQ_TP_ZPGS_V1.2.c: 758: if(!onoff_fst)
	btfsc	(_onoff_fst/8),(_onoff_fst)&7	;volatile
	goto	u4201
	goto	u4200
u4201:
	goto	l5045
u4200:
	line	760
	
l8374:	
;WHQ_TP_ZPGS_V1.2.c: 759: {
;WHQ_TP_ZPGS_V1.2.c: 760: if(++ondly >= 20)
	movlw	low(014h)
	incf	(Test_Pwm@ondly),f
	subwf	((Test_Pwm@ondly)),w
	skipc
	goto	u4211
	goto	u4210
u4211:
	goto	l5047
u4210:
	line	762
	
l8376:	
;WHQ_TP_ZPGS_V1.2.c: 761: {
;WHQ_TP_ZPGS_V1.2.c: 762: ondly = 0;
	clrf	(Test_Pwm@ondly)
	line	763
	
l8378:	
;WHQ_TP_ZPGS_V1.2.c: 763: onoff_fst = 1;
	bsf	(_onoff_fst/8),(_onoff_fst)&7	;volatile
	line	764
	
l8380:	
;WHQ_TP_ZPGS_V1.2.c: 764: curokf = 0;
	bcf	(_curokf/8),(_curokf)&7	;volatile
	line	765
	
l8382:	
;WHQ_TP_ZPGS_V1.2.c: 765: curokf1 = 0;
	bcf	(Test_Pwm@curokf1/8),(Test_Pwm@curokf1)&7
	goto	l5047
	line	769
	
l5045:	
	line	771
;WHQ_TP_ZPGS_V1.2.c: 769: else
;WHQ_TP_ZPGS_V1.2.c: 770: {
;WHQ_TP_ZPGS_V1.2.c: 771: if(curokf)
	btfss	(_curokf/8),(_curokf)&7	;volatile
	goto	u4221
	goto	u4220
u4221:
	goto	l5047
u4220:
	line	773
	
l8384:	
;WHQ_TP_ZPGS_V1.2.c: 772: {
;WHQ_TP_ZPGS_V1.2.c: 773: curokf = 0;
	bcf	(_curokf/8),(_curokf)&7	;volatile
	line	774
	
l8386:	
;WHQ_TP_ZPGS_V1.2.c: 774: Get_CUR_Dat();
	fcall	_Get_CUR_Dat
	line	775
	
l8388:	
;WHQ_TP_ZPGS_V1.2.c: 775: curokf1 = 1;
	bsf	(Test_Pwm@curokf1/8),(Test_Pwm@curokf1)&7
	line	778
	
l8390:	
;WHQ_TP_ZPGS_V1.2.c: 777: {
;WHQ_TP_ZPGS_V1.2.c: 778: templ = Test_water();
	fcall	_Test_water
	bcf	status, 5	;RP0=0, select bank0
	movwf	(Test_Pwm@templ)
	line	779
	
l8392:	
;WHQ_TP_ZPGS_V1.2.c: 779: if(0 != templ)
	movf	((Test_Pwm@templ)),w
	btfsc	status,2
	goto	u4231
	goto	u4230
u4231:
	goto	l5047
u4230:
	line	781
	
l8394:	
;WHQ_TP_ZPGS_V1.2.c: 780: {
;WHQ_TP_ZPGS_V1.2.c: 781: return templ;
	movf	(Test_Pwm@templ),w
	goto	l5051
	line	785
	
l5047:	
	line	787
;WHQ_TP_ZPGS_V1.2.c: 782: }
;WHQ_TP_ZPGS_V1.2.c: 783: }
;WHQ_TP_ZPGS_V1.2.c: 784: }
;WHQ_TP_ZPGS_V1.2.c: 785: }
;WHQ_TP_ZPGS_V1.2.c: 787: if(curokf1)
	btfss	(Test_Pwm@curokf1/8),(Test_Pwm@curokf1)&7
	goto	u4241
	goto	u4240
u4241:
	goto	l8438
u4240:
	line	789
	
l8398:	
;WHQ_TP_ZPGS_V1.2.c: 790: if(pwmtf)
	bcf	(Test_Pwm@curokf1/8),(Test_Pwm@curokf1)&7
	line	797
	
l8404:	
;WHQ_TP_ZPGS_V1.2.c: 795: }
;WHQ_TP_ZPGS_V1.2.c: 796: }
;WHQ_TP_ZPGS_V1.2.c: 797: if((!pwmtf) || (!pwmtf1))
	btfss	(_pwmtf/8),(_pwmtf)&7	;volatile
	goto	u4251
	goto	u4250
u4251:
	goto	l8408
u4250:
	
l8406:	
	btfsc	(_pwmtf1/8),(_pwmtf1)&7	;volatile
	goto	u4261
	goto	u4260
u4261:
	goto	l5055
u4260:
	line	799
	
l8408:	
;WHQ_TP_ZPGS_V1.2.c: 798: {
;WHQ_TP_ZPGS_V1.2.c: 799: templ = Test_PWM_Fst();
	fcall	_Test_PWM_Fst
	movwf	(Test_Pwm@templ)
	goto	l8394
	line	802
	
l5055:	
	line	804
;WHQ_TP_ZPGS_V1.2.c: 802: else
;WHQ_TP_ZPGS_V1.2.c: 803: {
;WHQ_TP_ZPGS_V1.2.c: 804: if(!ponecf)
	btfsc	(_ponecf/8),(_ponecf)&7	;volatile
	goto	u4271
	goto	u4270
u4271:
	goto	l8426
u4270:
	line	806
	
l8416:	
;WHQ_TP_ZPGS_V1.2.c: 805: {
;WHQ_TP_ZPGS_V1.2.c: 806: if(++ponesec >= 125)
	movlw	low(07Dh)
	incf	(_ponesec),f	;volatile
	subwf	((_ponesec)),w	;volatile
	skipc
	goto	u4281
	goto	u4280
u4281:
	goto	l5052
u4280:
	line	808
	
l8418:	
;WHQ_TP_ZPGS_V1.2.c: 807: {
;WHQ_TP_ZPGS_V1.2.c: 808: ponesec = 0;
	clrf	(_ponesec)	;volatile
	line	809
;WHQ_TP_ZPGS_V1.2.c: 809: ondly = 0;
	clrf	(Test_Pwm@ondly)
	line	810
	
l8420:	
;WHQ_TP_ZPGS_V1.2.c: 810: ponecf = 1;
	bsf	(_ponecf/8),(_ponecf)&7	;volatile
	line	811
	
l8422:	
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
	
l8424:	
;WHQ_TP_ZPGS_V1.2.c: 812: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	goto	l8438
	line	817
	
l8426:	
;WHQ_TP_ZPGS_V1.2.c: 815: else
;WHQ_TP_ZPGS_V1.2.c: 816: {
;WHQ_TP_ZPGS_V1.2.c: 817: if(++ondly >= 4)
	movlw	low(04h)
	incf	(Test_Pwm@ondly),f
	subwf	((Test_Pwm@ondly)),w
	skipc
	goto	u4291
	goto	u4290
u4291:
	goto	l5052
u4290:
	line	819
	
l8428:	
;WHQ_TP_ZPGS_V1.2.c: 818: {
;WHQ_TP_ZPGS_V1.2.c: 819: ondly = 0;
	clrf	(Test_Pwm@ondly)
	line	820
	
l8430:	
;WHQ_TP_ZPGS_V1.2.c: 820: Test_Pwm_Cur();
	fcall	_Test_Pwm_Cur
	line	821
	
l8432:	
;WHQ_TP_ZPGS_V1.2.c: 821: pwmnold = pfgonetemp.pfgtemp & 0x7fff;
	movf	(_pfgonetemp+1),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_pwmnold+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmnold)	;volatile
	
l8434:	
	bcf	(_pwmnold)+(15/8),(15)&7	;volatile
	line	822
	
l8436:	
;WHQ_TP_ZPGS_V1.2.c: 822: ponecf = 0;
	bcf	(_ponecf/8),(_ponecf)&7	;volatile
	goto	l8438
	line	826
	
l5052:	
	line	829
	
l8438:	
;WHQ_TP_ZPGS_V1.2.c: 823: }
;WHQ_TP_ZPGS_V1.2.c: 824: }
;WHQ_TP_ZPGS_V1.2.c: 825: }
;WHQ_TP_ZPGS_V1.2.c: 826: }
;WHQ_TP_ZPGS_V1.2.c: 827: }
;WHQ_TP_ZPGS_V1.2.c: 828: }
;WHQ_TP_ZPGS_V1.2.c: 829: return 0;
	movlw	low(0)
	line	830
	
l5051:	
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
psect	text17,local,class=CODE,delta=2,merge=1,group=1
	line	416
global __ptext17
__ptext17:	;psect for function _Work_RAM_CLR
psect	text17
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	416
	global	__size_of_Work_RAM_CLR
	__size_of_Work_RAM_CLR	equ	__end_of_Work_RAM_CLR-_Work_RAM_CLR
	
_Work_RAM_CLR:	
;incstack = 0
	opt	stack 3
; Regs used in _Work_RAM_CLR: [wreg+status,2+status,0]
	line	418
	
l8088:	
	line	435
	
l4955:	
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
	
l8116:	
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
	
l8118:	
;WHQ_TP_ZPGS_V1.2.c: 441: pwmnold = pfgonetemp.pfgtemp & 0x7fff;
	movf	(_pfgonetemp+1),w
	movwf	(_pwmnold+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmnold)	;volatile
	
l8120:	
	bcf	(_pwmnold)+(15/8),(15)&7	;volatile
	line	442
	
l8122:	
;WHQ_TP_ZPGS_V1.2.c: 442: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	443
	
l8124:	
;WHQ_TP_ZPGS_V1.2.c: 443: ponecf = 0;
	bcf	(_ponecf/8),(_ponecf)&7	;volatile
	line	444
	
l8126:	
;WHQ_TP_ZPGS_V1.2.c: 444: cur_addatold0 = 0;
	clrf	(_cur_addatold0)	;volatile
	line	445
	
l8128:	
;WHQ_TP_ZPGS_V1.2.c: 445: cur_addatold1 = 0;
	clrf	(_cur_addatold1)	;volatile
	line	446
	
l8130:	
;WHQ_TP_ZPGS_V1.2.c: 446: cur_addatold2 = 0;
	clrf	(_cur_addatold2)	;volatile
	line	447
	
l8132:	
;WHQ_TP_ZPGS_V1.2.c: 447: curokcl = 0;
	clrf	(_curokcl)	;volatile
	line	448
	
l8134:	
;WHQ_TP_ZPGS_V1.2.c: 448: onoff_fst = 0;
	bcf	(_onoff_fst/8),(_onoff_fst)&7	;volatile
	line	449
	
l8136:	
;WHQ_TP_ZPGS_V1.2.c: 449: whavecl = 0;
	clrf	(_whavecl)	;volatile
	line	450
	
l8138:	
;WHQ_TP_ZPGS_V1.2.c: 450: wnoncl = 0;
	clrf	(_wnoncl)	;volatile
	line	451
	
l8140:	
;WHQ_TP_ZPGS_V1.2.c: 451: ponesec = 0;
	clrf	(_ponesec)	;volatile
	line	452
	
l8142:	
;WHQ_TP_ZPGS_V1.2.c: 452: curupc = 0;
	clrf	(_curupc)	;volatile
	line	453
	
l8144:	
;WHQ_TP_ZPGS_V1.2.c: 453: curdownc = 0;
	clrf	(_curdownc)	;volatile
	line	454
	
l8146:	
;WHQ_TP_ZPGS_V1.2.c: 454: curupf = 0;
	bcf	(_curupf/8),(_curupf)&7	;volatile
	line	455
	
l8148:	
;WHQ_TP_ZPGS_V1.2.c: 455: pwmlv = 0;
	clrf	(_pwmlv)	;volatile
	clrf	(_pwmlv+1)	;volatile
	line	456
	
l8150:	
;WHQ_TP_ZPGS_V1.2.c: 456: pwmold = 0;
	clrf	(_pwmold)	;volatile
	clrf	(_pwmold+1)	;volatile
	line	457
	
l8152:	
;WHQ_TP_ZPGS_V1.2.c: 457: pwmhc = 0;
	clrf	(_pwmhc)	;volatile
	line	458
	
l8154:	
;WHQ_TP_ZPGS_V1.2.c: 458: pwmlc = 0;
	clrf	(_pwmlc)	;volatile
	line	459
	
l8156:	
;WHQ_TP_ZPGS_V1.2.c: 459: PFGCON1 &= ~0x80;
	bsf	status, 6	;RP1=1, select bank2
	bcf	(286)^0100h+(7/8),(7)&7	;volatile
	line	461
	
l4957:	
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
psect	text18,local,class=CODE,delta=2,merge=1,group=1
	line	548
global __ptext18
__ptext18:	;psect for function _Test_water
psect	text18
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	548
	global	__size_of_Test_water
	__size_of_Test_water	equ	__end_of_Test_water-_Test_water
	
_Test_water:	
;incstack = 0
	opt	stack 3
; Regs used in _Test_water: [wreg+status,2+status,0+btemp+1]
	line	557
	
l8214:	
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
	goto	u3861
	goto	u3860
u3861:
	goto	l4990
u3860:
	line	561
	
l8216:	
;WHQ_TP_ZPGS_V1.2.c: 560: {
;WHQ_TP_ZPGS_V1.2.c: 561: if(pwmtonf)
	btfss	(_pwmtonf/8),(_pwmtonf)&7	;volatile
	goto	u3871
	goto	u3870
u3871:
	goto	l8236
u3870:
	line	563
	
l8218:	
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
	goto	u3885
	movf	0+(??_Test_water+0)+0,w
	subwf	(_pwmlv),w	;volatile
u3885:
	skipnc
	goto	u3881
	goto	u3880
u3881:
	goto	l4992
u3880:
	line	565
	
l8220:	
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
	goto	u3891
	goto	u3890
u3891:
	goto	l4992
u3890:
	line	569
	
l8222:	
;WHQ_TP_ZPGS_V1.2.c: 568: {
;WHQ_TP_ZPGS_V1.2.c: 569: return 0xff;
	movlw	low(0FFh)
	goto	l4994
	line	571
	
l4992:	
	line	572
;WHQ_TP_ZPGS_V1.2.c: 570: }
;WHQ_TP_ZPGS_V1.2.c: 571: }
;WHQ_TP_ZPGS_V1.2.c: 572: if(!curupf)
	btfsc	(_curupf/8),(_curupf)&7	;volatile
	goto	u3901
	goto	u3900
u3901:
	goto	l8232
u3900:
	goto	l8222
	line	578
	
l8232:	
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
	goto	u3915
	movlw	01Fh
	subwf	0+(??_Test_water+0)+0,w
u3915:

	skipnc
	goto	u3911
	goto	u3910
u3911:
	goto	l5014
u3910:
	line	580
	
l8234:	
;WHQ_TP_ZPGS_V1.2.c: 579: {
;WHQ_TP_ZPGS_V1.2.c: 580: watnof=1;
	bsf	(Test_water@watnof/8),(Test_water@watnof)&7
	goto	l5014
	line	586
	
l8236:	
	movlw	low(012h)
	subwf	(_cur_addat),w	;volatile
	skipnc
	goto	u3921
	goto	u3920
u3921:
	goto	l8244
u3920:
	line	588
	
l8238:	
;WHQ_TP_ZPGS_V1.2.c: 587: {
;WHQ_TP_ZPGS_V1.2.c: 588: strupc = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(Test_water@strupc)^080h
	clrf	(Test_water@strupc+1)^080h
	line	589
	
l8240:	
;WHQ_TP_ZPGS_V1.2.c: 589: pwmlv = pfgonetemp.pfgtemp&0x03ff;
	movf	(_pfgonetemp+1),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_pwmlv+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmlv)	;volatile
	
l8242:	
	movlw	0FFh
	andwf	(_pwmlv),f	;volatile
	movlw	03h
	andwf	(_pwmlv+1),f	;volatile
	line	590
;WHQ_TP_ZPGS_V1.2.c: 590: }
	goto	l5000
	line	593
	
l8244:	
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
	goto	u3931
	goto	u3930
u3931:
	goto	l5000
u3930:
	line	595
	
l8246:	
;WHQ_TP_ZPGS_V1.2.c: 594: {
;WHQ_TP_ZPGS_V1.2.c: 595: strupc=0;
	clrf	(Test_water@strupc)^080h
	clrf	(Test_water@strupc+1)^080h
	goto	l8222
	line	598
	
l5000:	
	line	599
;WHQ_TP_ZPGS_V1.2.c: 597: }
;WHQ_TP_ZPGS_V1.2.c: 598: }
;WHQ_TP_ZPGS_V1.2.c: 599: if(curupf)
	btfss	(_curupf/8),(_curupf)&7	;volatile
	goto	u3941
	goto	u3940
u3941:
	goto	l8260
u3940:
	line	601
	
l8252:	
;WHQ_TP_ZPGS_V1.2.c: 600: {
;WHQ_TP_ZPGS_V1.2.c: 601: curstrold = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(Test_water@curstrold)^080h
	clrf	(Test_water@curstrold+1)^080h
	line	602
	
l8254:	
;WHQ_TP_ZPGS_V1.2.c: 602: if(curmax < cur_addat)
	bcf	status, 5	;RP0=0, select bank0
	movf	(_cur_addat),w	;volatile
	subwf	(_curmax),w	;volatile
	skipnc
	goto	u3951
	goto	u3950
u3951:
	goto	l5004
u3950:
	line	604
	
l8256:	
;WHQ_TP_ZPGS_V1.2.c: 603: {
;WHQ_TP_ZPGS_V1.2.c: 604: curmax = cur_addat;
	movf	(_cur_addat),w	;volatile
	movwf	(_curmax)	;volatile
	line	605
;WHQ_TP_ZPGS_V1.2.c: 605: }
	goto	l5014
	line	610
	
l5004:	
;WHQ_TP_ZPGS_V1.2.c: 609: }
;WHQ_TP_ZPGS_V1.2.c: 610: }
	goto	l5014
	line	613
	
l8260:	
;WHQ_TP_ZPGS_V1.2.c: 611: else
;WHQ_TP_ZPGS_V1.2.c: 612: {
;WHQ_TP_ZPGS_V1.2.c: 613: curmax = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_curmax)	;volatile
	line	614
	
l8262:	
;WHQ_TP_ZPGS_V1.2.c: 614: if(0 != curstrold)
	bsf	status, 5	;RP0=1, select bank1
	movf	((Test_water@curstrold)^080h),w
iorwf	((Test_water@curstrold+1)^080h),w
	btfsc	status,2
	goto	u3961
	goto	u3960
u3961:
	goto	l5007
u3960:
	line	616
	
l8264:	
;WHQ_TP_ZPGS_V1.2.c: 615: {
;WHQ_TP_ZPGS_V1.2.c: 616: if(curstrold > cur_addat)
	bcf	status, 5	;RP0=0, select bank0
	movf	(_cur_addat),w	;volatile
	movwf	(??_Test_water+0)+0
	clrf	(??_Test_water+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(Test_water@curstrold+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	1+(??_Test_water+0)+0,w
	skipz
	goto	u3975
	bsf	status, 5	;RP0=1, select bank1
	movf	(Test_water@curstrold)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_Test_water+0)+0,w
u3975:
	skipnc
	goto	u3971
	goto	u3970
u3971:
	goto	l8276
u3970:
	line	618
	
l8266:	
;WHQ_TP_ZPGS_V1.2.c: 617: {
;WHQ_TP_ZPGS_V1.2.c: 618: curdownc++;
	incf	(_curdownc),f	;volatile
	line	619
	
l8268:	
;WHQ_TP_ZPGS_V1.2.c: 619: if(curdownc >= 2)
	movlw	low(02h)
	subwf	(_curdownc),w	;volatile
	skipc
	goto	u3981
	goto	u3980
u3981:
	goto	l5007
u3980:
	line	621
	
l8270:	
;WHQ_TP_ZPGS_V1.2.c: 620: {
;WHQ_TP_ZPGS_V1.2.c: 621: curdownc = 0;
	clrf	(_curdownc)	;volatile
	line	622
;WHQ_TP_ZPGS_V1.2.c: 622: curupc = 0;
	clrf	(_curupc)	;volatile
	line	623
	
l8272:	
;WHQ_TP_ZPGS_V1.2.c: 623: pwmlv = pfgonetemp.pfgtemp&0x03ff;
	movf	(_pfgonetemp+1),w
	movwf	(_pwmlv+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmlv)	;volatile
	
l8274:	
	movlw	0FFh
	andwf	(_pwmlv),f	;volatile
	movlw	03h
	andwf	(_pwmlv+1),f	;volatile
	goto	l5007
	line	626
	
l8276:	
;WHQ_TP_ZPGS_V1.2.c: 626: else if(curstrold < cur_addat)
	movf	(_cur_addat),w	;volatile
	movwf	(??_Test_water+0)+0
	clrf	(??_Test_water+0)+0+1
	movf	1+(??_Test_water+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(Test_water@curstrold+1)^080h,w
	skipz
	goto	u3995
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_Test_water+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(Test_water@curstrold)^080h,w
u3995:
	skipnc
	goto	u3991
	goto	u3990
u3991:
	goto	l5007
u3990:
	line	628
	
l8278:	
;WHQ_TP_ZPGS_V1.2.c: 627: {
;WHQ_TP_ZPGS_V1.2.c: 628: curupc++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(_curupc),f	;volatile
	line	629
	
l8280:	
;WHQ_TP_ZPGS_V1.2.c: 629: if(curupc >= 3)
	movlw	low(03h)
	subwf	(_curupc),w	;volatile
	skipc
	goto	u4001
	goto	u4000
u4001:
	goto	l5007
u4000:
	line	631
	
l8282:	
;WHQ_TP_ZPGS_V1.2.c: 630: {
;WHQ_TP_ZPGS_V1.2.c: 631: curupc = 0;
	clrf	(_curupc)	;volatile
	line	632
;WHQ_TP_ZPGS_V1.2.c: 632: curdownc = 0;
	clrf	(_curdownc)	;volatile
	line	633
	
l8284:	
;WHQ_TP_ZPGS_V1.2.c: 633: if(0 == curupf)
	btfsc	(_curupf/8),(_curupf)&7	;volatile
	goto	u4011
	goto	u4010
u4011:
	goto	l8288
u4010:
	line	635
	
l8286:	
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
	
l8288:	
;WHQ_TP_ZPGS_V1.2.c: 636: }
;WHQ_TP_ZPGS_V1.2.c: 637: curupf = 1;
	bsf	(_curupf/8),(_curupf)&7	;volatile
	line	640
	
l5007:	
	line	641
;WHQ_TP_ZPGS_V1.2.c: 638: }
;WHQ_TP_ZPGS_V1.2.c: 639: }
;WHQ_TP_ZPGS_V1.2.c: 640: }
;WHQ_TP_ZPGS_V1.2.c: 641: curstrold = cur_addat;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_cur_addat),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(Test_water@curstrold)^080h
	clrf	(Test_water@curstrold+1)^080h
	goto	l5014
	line	646
	
l4990:	
	line	648
;WHQ_TP_ZPGS_V1.2.c: 646: else
;WHQ_TP_ZPGS_V1.2.c: 647: {
;WHQ_TP_ZPGS_V1.2.c: 648: if(!pwmtf1)
	btfsc	(_pwmtf1/8),(_pwmtf1)&7	;volatile
	goto	u4021
	goto	u4020
u4021:
	goto	l8298
u4020:
	line	650
	
l8290:	
;WHQ_TP_ZPGS_V1.2.c: 649: {
;WHQ_TP_ZPGS_V1.2.c: 650: if(++Ytzpcl >= 125)
	movlw	low(07Dh)
	incf	(_Ytzpcl),f	;volatile
	subwf	((_Ytzpcl)),w	;volatile
	skipc
	goto	u4031
	goto	u4030
u4031:
	goto	l5014
u4030:
	line	652
	
l8292:	
;WHQ_TP_ZPGS_V1.2.c: 651: {
;WHQ_TP_ZPGS_V1.2.c: 652: Ytzpcl=0;
	clrf	(_Ytzpcl)	;volatile
	goto	l8222
	line	658
	
l8298:	
	movlw	low(021h)
	subwf	(_cur_addat),w	;volatile
	skipc
	goto	u4041
	goto	u4040
u4041:
	goto	l8302
u4040:
	
l8300:	
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
	goto	u4055
	movlw	01Eh
	subwf	0+(??_Test_water+0)+0,w
u4055:

	skipc
	goto	u4051
	goto	u4050
u4051:
	goto	l5018
u4050:
	line	660
	
l8302:	
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
	goto	l5021
	line	663
	
l5018:	
	line	665
;WHQ_TP_ZPGS_V1.2.c: 663: else
;WHQ_TP_ZPGS_V1.2.c: 664: {
;WHQ_TP_ZPGS_V1.2.c: 665: if(PFGchgf)
	btfss	(_PFGchgf/8),(_PFGchgf)&7	;volatile
	goto	u4061
	goto	u4060
u4061:
	goto	l5021
u4060:
	line	667
	
l8304:	
;WHQ_TP_ZPGS_V1.2.c: 666: {
;WHQ_TP_ZPGS_V1.2.c: 667: PFGchgf = 0;
	bcf	(_PFGchgf/8),(_PFGchgf)&7	;volatile
	line	668
	
l8306:	
;WHQ_TP_ZPGS_V1.2.c: 668: if(0 != pwmold)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_pwmold)),w	;volatile
iorwf	((_pwmold+1)),w	;volatile
	btfsc	status,2
	goto	u4071
	goto	u4070
u4071:
	goto	l8332
u4070:
	line	670
	
l8308:	
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
	goto	u4085
	movf	0+(??_Test_water+0)+0,w
	subwf	(_pwmold),w	;volatile
u4085:
	skipnc
	goto	u4081
	goto	u4080
u4081:
	goto	l8320
u4080:
	line	672
	
l8310:	
;WHQ_TP_ZPGS_V1.2.c: 671: {
;WHQ_TP_ZPGS_V1.2.c: 672: pwmlc = 0;
	clrf	(_pwmlc)	;volatile
	line	673
	
l8312:	
;WHQ_TP_ZPGS_V1.2.c: 673: if(++pwmhc >= 6)
	movlw	low(06h)
	incf	(_pwmhc),f	;volatile
	subwf	((_pwmhc)),w	;volatile
	skipc
	goto	u4091
	goto	u4090
u4091:
	goto	l8332
u4090:
	line	675
	
l8314:	
;WHQ_TP_ZPGS_V1.2.c: 674: {
;WHQ_TP_ZPGS_V1.2.c: 675: pwmhc = 0;
	clrf	(_pwmhc)	;volatile
	goto	l8222
	line	679
	
l8320:	
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
	goto	u4105
	movf	(_pwmold),w	;volatile
	subwf	0+(??_Test_water+0)+0,w
u4105:
	skipnc
	goto	u4101
	goto	u4100
u4101:
	goto	l8332
u4100:
	line	681
	
l8322:	
;WHQ_TP_ZPGS_V1.2.c: 680: {
;WHQ_TP_ZPGS_V1.2.c: 681: pwmhc = 0;
	clrf	(_pwmhc)	;volatile
	line	682
	
l8324:	
;WHQ_TP_ZPGS_V1.2.c: 682: if(++pwmlc >= 6)
	movlw	low(06h)
	incf	(_pwmlc),f	;volatile
	subwf	((_pwmlc)),w	;volatile
	skipc
	goto	u4111
	goto	u4110
u4111:
	goto	l5026
u4110:
	line	684
	
l8326:	
;WHQ_TP_ZPGS_V1.2.c: 683: {
;WHQ_TP_ZPGS_V1.2.c: 684: pwmlc = 0;
	clrf	(_pwmlc)	;volatile
	goto	l8222
	line	689
	
l5026:	
	line	690
	
l8332:	
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
	
l5021:	
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\WHQ_TP_ZPGS.h"
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
	goto	u4121
	goto	u4120
u4121:
	goto	l8336
u4120:
	line	697
	
l8334:	
;WHQ_TP_ZPGS_V1.2.c: 696: {
;WHQ_TP_ZPGS_V1.2.c: 697: watnof = 1;
	bsf	(Test_water@watnof/8),(Test_water@watnof)&7
	line	699
	
l8336:	
;WHQ_TP_ZPGS_V1.2.c: 698: }
;WHQ_TP_ZPGS_V1.2.c: 699: if(cur_addat >= temph)
	movlw	low(024h)
	subwf	(_cur_addat),w	;volatile
	skipc
	goto	u4131
	goto	u4130
u4131:
	goto	l5014
u4130:
	goto	l8234
	line	704
	
l5014:	
	line	706
;WHQ_TP_ZPGS_V1.2.c: 702: }
;WHQ_TP_ZPGS_V1.2.c: 703: }
;WHQ_TP_ZPGS_V1.2.c: 704: }
;WHQ_TP_ZPGS_V1.2.c: 706: if(watnof)
	btfss	(Test_water@watnof/8),(Test_water@watnof)&7
	goto	u4141
	goto	u4140
u4141:
	goto	l8352
u4140:
	line	708
	
l8340:	
;WHQ_TP_ZPGS_V1.2.c: 707: {
;WHQ_TP_ZPGS_V1.2.c: 708: wnoncl++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_wnoncl),f	;volatile
	line	709
	
l8342:	
;WHQ_TP_ZPGS_V1.2.c: 709: whavecl=0;
	clrf	(_whavecl)	;volatile
	line	710
	
l8344:	
;WHQ_TP_ZPGS_V1.2.c: 710: if(wnoncl >= 2)
	movlw	low(02h)
	subwf	(_wnoncl),w	;volatile
	skipc
	goto	u4151
	goto	u4150
u4151:
	goto	l8358
u4150:
	line	712
	
l8346:	
;WHQ_TP_ZPGS_V1.2.c: 711: {
;WHQ_TP_ZPGS_V1.2.c: 712: wnoncl=0;
	clrf	(_wnoncl)	;volatile
	goto	l8222
	line	718
	
l8352:	
;WHQ_TP_ZPGS_V1.2.c: 716: else
;WHQ_TP_ZPGS_V1.2.c: 717: {
;WHQ_TP_ZPGS_V1.2.c: 718: whavecl++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_whavecl),f	;volatile
	line	719
	
l8354:	
;WHQ_TP_ZPGS_V1.2.c: 719: if(whavecl>=5)
	movlw	low(05h)
	subwf	(_whavecl),w	;volatile
	skipc
	goto	u4161
	goto	u4160
u4161:
	goto	l8358
u4160:
	line	721
	
l8356:	
;WHQ_TP_ZPGS_V1.2.c: 720: {
;WHQ_TP_ZPGS_V1.2.c: 721: whavecl=0;
	clrf	(_whavecl)	;volatile
	line	722
;WHQ_TP_ZPGS_V1.2.c: 722: wnoncl=0;
	clrf	(_wnoncl)	;volatile
	line	725
	
l8358:	
;WHQ_TP_ZPGS_V1.2.c: 723: }
;WHQ_TP_ZPGS_V1.2.c: 724: }
;WHQ_TP_ZPGS_V1.2.c: 725: return 0;
	movlw	low(0)
	line	726
	
l4994:	
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
psect	text19,local,class=CODE,delta=2,merge=1,group=1
	line	501
global __ptext19
__ptext19:	;psect for function _Test_PWM_Fst
psect	text19
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	501
	global	__size_of_Test_PWM_Fst
	__size_of_Test_PWM_Fst	equ	__end_of_Test_PWM_Fst-_Test_PWM_Fst
	
_Test_PWM_Fst:	
;incstack = 0
	opt	stack 1
; Regs used in _Test_PWM_Fst: [wreg+status,2+status,0+pclath+cstack]
	line	505
	
l8170:	
;WHQ_TP_ZPGS_V1.2.c: 503: unsigned char templ;
;WHQ_TP_ZPGS_V1.2.c: 505: templ = Test_Pwm_Cur();
	fcall	_Test_Pwm_Cur
	bcf	status, 5	;RP0=0, select bank0
	movwf	(Test_PWM_Fst@templ)
	line	506
	
l8172:	
;WHQ_TP_ZPGS_V1.2.c: 506: if((0xff == templ) || (cur_addat == curset))
		incf	((Test_PWM_Fst@templ)),w
	btfsc	status,2
	goto	u3801
	goto	u3800
u3801:
	goto	l4970
u3800:
	
l8174:	
		movlw	30
	xorwf	((_cur_addat)),w	;volatile
	btfss	status,2
	goto	u3811
	goto	u3810
u3811:
	goto	l8204
u3810:
	
l4970:	
	line	508
;WHQ_TP_ZPGS_V1.2.c: 507: {
;WHQ_TP_ZPGS_V1.2.c: 508: pwmtonf = 1;
	bsf	(_pwmtonf/8),(_pwmtonf)&7	;volatile
	line	509
	
l8176:	
;WHQ_TP_ZPGS_V1.2.c: 509: if(++curokcl >= 3)
	movlw	low(03h)
	incf	(_curokcl),f	;volatile
	subwf	((_curokcl)),w	;volatile
	skipc
	goto	u3821
	goto	u3820
u3821:
	goto	l8210
u3820:
	line	511
	
l8178:	
;WHQ_TP_ZPGS_V1.2.c: 510: {
;WHQ_TP_ZPGS_V1.2.c: 511: curokcl = 0;
	clrf	(_curokcl)	;volatile
	line	512
	
l8180:	
;WHQ_TP_ZPGS_V1.2.c: 512: if(!pwmtf)
	btfsc	(_pwmtf/8),(_pwmtf)&7	;volatile
	goto	u3831
	goto	u3830
u3831:
	goto	l4972
u3830:
	line	514
	
l8182:	
;WHQ_TP_ZPGS_V1.2.c: 513: {
;WHQ_TP_ZPGS_V1.2.c: 514: Ytzpcl = 0;
	clrf	(_Ytzpcl)	;volatile
	line	515
	
l8184:	
;WHQ_TP_ZPGS_V1.2.c: 515: onoff_fst = 0;
	bcf	(_onoff_fst/8),(_onoff_fst)&7	;volatile
	line	516
	
l8186:	
;WHQ_TP_ZPGS_V1.2.c: 516: pwmtf = 1;
	bsf	(_pwmtf/8),(_pwmtf)&7	;volatile
	line	523
	
l4973:	
	line	525
;WHQ_TP_ZPGS_V1.2.c: 523: else
;WHQ_TP_ZPGS_V1.2.c: 524: {
;WHQ_TP_ZPGS_V1.2.c: 525: pwmtf1 = 1;
	bsf	(_pwmtf1/8),(_pwmtf1)&7	;volatile
	goto	l8196
	line	528
	
l4972:	
;WHQ_TP_ZPGS_V1.2.c: 528: else if(!pwmtf1)
	btfsc	(_pwmtf1/8),(_pwmtf1)&7	;volatile
	goto	u3841
	goto	u3840
u3841:
	goto	l8196
u3840:
	goto	l4973
	line	532
	
l8196:	
;WHQ_TP_ZPGS_V1.2.c: 531: }
;WHQ_TP_ZPGS_V1.2.c: 532: pfgonetemp.pfgtemp = pfgonetemp.pfgtemp-2;
	movlw	0FEh
	addwf	(_pfgonetemp),f
	skipnc
	incf	(_pfgonetemp+1),f
	movlw	0FFh
	addwf	(_pfgonetemp+1),f
	line	533
	
l8198:	
;WHQ_TP_ZPGS_V1.2.c: 533: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	534
;WHQ_TP_ZPGS_V1.2.c: 534: pwmnold = pfgonetemp.pfgtemp&0x7fff;
	movf	(_pfgonetemp+1),w
	movwf	(_pwmnold+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmnold)	;volatile
	
l8200:	
	bcf	(_pwmnold)+(15/8),(15)&7	;volatile
	line	535
;WHQ_TP_ZPGS_V1.2.c: 535: return 0xaa;
	movlw	low(0AAh)
	goto	l4977
	line	538
	
l8204:	
;WHQ_TP_ZPGS_V1.2.c: 538: else if(0x55 == templ)
		movlw	85
	xorwf	((Test_PWM_Fst@templ)),w
	btfss	status,2
	goto	u3851
	goto	u3850
u3851:
	goto	l8210
u3850:
	line	540
	
l8206:	
;WHQ_TP_ZPGS_V1.2.c: 539: {
;WHQ_TP_ZPGS_V1.2.c: 540: return 0x55;
	movlw	low(055h)
	goto	l4977
	line	542
	
l8210:	
;WHQ_TP_ZPGS_V1.2.c: 541: }
;WHQ_TP_ZPGS_V1.2.c: 542: return 0x00;
	movlw	low(0)
	line	543
	
l4977:	
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
psect	text20,local,class=CODE,delta=2,merge=1,group=1
	line	485
global __ptext20
__ptext20:	;psect for function _YTPFG_Flash
psect	text20
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	485
	global	__size_of_YTPFG_Flash
	__size_of_YTPFG_Flash	equ	__end_of_YTPFG_Flash-_YTPFG_Flash
	
_YTPFG_Flash:	
;incstack = 0
	opt	stack 3
; Regs used in _YTPFG_Flash: [wreg+status,2+status,0]
	line	490
	
l7990:	
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
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\WHQ_TP_ZPGS.h"
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
	
l7992:	
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
	
l7994:	
	movlw	low(060h)
	andwf	(YTPFG_Flash@templ),f
	line	493
	
l7996:	
	movf	(YTPFG_Flash@templ),w
	iorlw	08Ah
	bsf	status, 6	;RP1=1, select bank2
	movwf	(286)^0100h	;volatile
	line	494
	
l4965:	
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
;;		On exit  : 200/0
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
psect	text21,local,class=CODE,delta=2,merge=1,group=1
	line	144
global __ptext21
__ptext21:	;psect for function _Test_Pwm_Cur
psect	text21
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	144
	global	__size_of_Test_Pwm_Cur
	__size_of_Test_Pwm_Cur	equ	__end_of_Test_Pwm_Cur-_Test_Pwm_Cur
	
_Test_Pwm_Cur:	
;incstack = 0
	opt	stack 2
; Regs used in _Test_Pwm_Cur: [wreg+status,2+status,0+pclath+cstack]
	line	149
	
l7926:	
	movlw	low(01Fh)
	subwf	(_cur_addat),w	;volatile
	skipc
	goto	u3611
	goto	u3610
u3611:
	goto	l7950
u3610:
	line	151
	
l7928:	
;WHQ_TP_ZPGS_V1.2.c: 150: {
;WHQ_TP_ZPGS_V1.2.c: 151: curdowncl = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(Test_Pwm_Cur@curdowncl)^080h
	line	152
	
l7930:	
;WHQ_TP_ZPGS_V1.2.c: 152: if(++curupcl >= 2)
	movlw	low(02h)
	incf	(Test_Pwm_Cur@curupcl)^080h,f
	subwf	((Test_Pwm_Cur@curupcl)^080h),w
	skipc
	goto	u3621
	goto	u3620
u3621:
	goto	l7986
u3620:
	line	154
	
l7932:	
;WHQ_TP_ZPGS_V1.2.c: 153: {
;WHQ_TP_ZPGS_V1.2.c: 154: PFGchgf = 1;
	bsf	(_PFGchgf/8),(_PFGchgf)&7	;volatile
	line	155
	
l7934:	
;WHQ_TP_ZPGS_V1.2.c: 155: curupcl = 0;
	clrf	(Test_Pwm_Cur@curupcl)^080h
	line	156
	
l7936:	
;WHQ_TP_ZPGS_V1.2.c: 156: if(0 == Pwm_dec(1,pwmfst))
	bcf	status, 5	;RP0=0, select bank0
	movf	(_pwmfst+1),w	;volatile
	movwf	(Pwm_dec@pwmfset+1)
	movf	(_pwmfst),w	;volatile
	movwf	(Pwm_dec@pwmfset)
	movlw	low(01h)
	fcall	_Pwm_dec
	xorlw	0
	skipz
	goto	u3631
	goto	u3630
u3631:
	goto	l7946
u3630:
	line	158
	
l7938:	
;WHQ_TP_ZPGS_V1.2.c: 157: {
;WHQ_TP_ZPGS_V1.2.c: 158: pfgonetemp.pfgtemp = pwmfst;
	movf	(_pwmfst+1),w	;volatile
	movwf	(_pfgonetemp+1)
	movf	(_pwmfst),w	;volatile
	movwf	(_pfgonetemp)
	line	159
	
l7940:	
;WHQ_TP_ZPGS_V1.2.c: 159: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	160
;WHQ_TP_ZPGS_V1.2.c: 160: return 0x55;
	movlw	low(055h)
	goto	l4889
	line	163
	
l7946:	
;WHQ_TP_ZPGS_V1.2.c: 162: else
;WHQ_TP_ZPGS_V1.2.c: 163: return 0xff;
	movlw	low(0FFh)
	goto	l4889
	line	166
	
l7950:	
	movlw	low(01Eh)
	subwf	(_cur_addat),w	;volatile
	skipnc
	goto	u3641
	goto	u3640
u3641:
	goto	l7984
u3640:
	line	168
	
l7952:	
;WHQ_TP_ZPGS_V1.2.c: 167: {
;WHQ_TP_ZPGS_V1.2.c: 168: curupcl = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(Test_Pwm_Cur@curupcl)^080h
	line	169
	
l7954:	
;WHQ_TP_ZPGS_V1.2.c: 169: if(++curdowncl >= 2)
	movlw	low(02h)
	incf	(Test_Pwm_Cur@curdowncl)^080h,f
	subwf	((Test_Pwm_Cur@curdowncl)^080h),w
	skipc
	goto	u3651
	goto	u3650
u3651:
	goto	l7986
u3650:
	line	171
	
l7956:	
;WHQ_TP_ZPGS_V1.2.c: 170: {
;WHQ_TP_ZPGS_V1.2.c: 171: PFGchgf = 1;
	bsf	(_PFGchgf/8),(_PFGchgf)&7	;volatile
	line	172
	
l7958:	
;WHQ_TP_ZPGS_V1.2.c: 172: curdowncl = 0;
	clrf	(Test_Pwm_Cur@curdowncl)^080h
	line	173
	
l7960:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(_cur_addat),w	;volatile
	sublw	01Eh
	movwf	(Test_Pwm_Cur@templ)
	line	174
	
l7962:	
;WHQ_TP_ZPGS_V1.2.c: 174: if(templ >= 20)
	movlw	low(014h)
	subwf	(Test_Pwm_Cur@templ),w
	skipc
	goto	u3661
	goto	u3660
u3661:
	goto	l7966
u3660:
	line	175
	
l7964:	
;WHQ_TP_ZPGS_V1.2.c: 175: temph = 4;
	movlw	low(04h)
	movwf	(Test_Pwm_Cur@temph)
	goto	l7970
	line	176
	
l7966:	
;WHQ_TP_ZPGS_V1.2.c: 176: else if(templ >= 15)
	movlw	low(0Fh)
	subwf	(Test_Pwm_Cur@templ),w
	skipc
	goto	u3671
	goto	u3670
u3671:
	goto	l4896
u3670:
	line	178
	
l7968:	
;WHQ_TP_ZPGS_V1.2.c: 177: {
;WHQ_TP_ZPGS_V1.2.c: 178: temph = 2;
	movlw	low(02h)
	movwf	(Test_Pwm_Cur@temph)
	line	179
;WHQ_TP_ZPGS_V1.2.c: 179: }
	goto	l7970
	line	180
	
l4896:	
	line	181
;WHQ_TP_ZPGS_V1.2.c: 180: else
;WHQ_TP_ZPGS_V1.2.c: 181: temph = 1;
	clrf	(Test_Pwm_Cur@temph)
	incf	(Test_Pwm_Cur@temph),f
	line	182
	
l7970:	
;WHQ_TP_ZPGS_V1.2.c: 182: if(0 == Pwm_add(temph,pwmlst))
	movf	(_pwmlst+1),w	;volatile
	movwf	(Pwm_add@pwmlset+1)
	movf	(_pwmlst),w	;volatile
	movwf	(Pwm_add@pwmlset)
	movf	(Test_Pwm_Cur@temph),w
	fcall	_Pwm_add
	xorlw	0
	skipz
	goto	u3681
	goto	u3680
u3681:
	goto	l7980
u3680:
	goto	l7938
	line	189
	
l7980:	
;WHQ_TP_ZPGS_V1.2.c: 188: else
;WHQ_TP_ZPGS_V1.2.c: 189: return 0xaa;
	movlw	low(0AAh)
	goto	l4889
	line	194
	
l7984:	
;WHQ_TP_ZPGS_V1.2.c: 192: else
;WHQ_TP_ZPGS_V1.2.c: 193: {
;WHQ_TP_ZPGS_V1.2.c: 194: curupcl = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(Test_Pwm_Cur@curupcl)^080h
	line	195
;WHQ_TP_ZPGS_V1.2.c: 195: curdowncl = 0;
	clrf	(Test_Pwm_Cur@curdowncl)^080h
	line	197
	
l7986:	
;WHQ_TP_ZPGS_V1.2.c: 196: }
;WHQ_TP_ZPGS_V1.2.c: 197: return 0x00;
	movlw	low(0)
	line	198
	
l4889:	
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
psect	text22,local,class=CODE,delta=2,merge=1,group=1
	line	124
global __ptext22
__ptext22:	;psect for function _Pwm_dec
psect	text22
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
	
l7906:	
;WHQ_TP_ZPGS_V1.2.c: 127: unsigned int temp;
;WHQ_TP_ZPGS_V1.2.c: 129: pfgonetemp.pfgtemp = pfgonetemp.pfgtemp - deccl;
	movf	(Pwm_dec@deccl),w
	subwf	(_pfgonetemp),f
	skipc
	decf	(_pfgonetemp+1),f
	line	130
	
l7908:	
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
	goto	u3605
	movf	0+(??_Pwm_dec+0)+0,w
	subwf	(Pwm_dec@temp),w
u3605:
	skipnc
	goto	u3601
	goto	u3600
u3601:
	goto	l7914
u3600:
	
l7910:	
	movlw	low(0)
	goto	l4879
	line	133
	
l7914:	
;WHQ_TP_ZPGS_V1.2.c: 133: return 1;
	movlw	low(01h)
	line	134
	
l4879:	
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
psect	text23,local,class=CODE,delta=2,merge=1,group=1
	line	105
global __ptext23
__ptext23:	;psect for function _Pwm_add
psect	text23
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
	
l7894:	
;WHQ_TP_ZPGS_V1.2.c: 108: unsigned int temp;
;WHQ_TP_ZPGS_V1.2.c: 110: pfgonetemp.pfgtemp = pfgonetemp.pfgtemp + addcl;
	movf	(Pwm_add@addcl),w
	addwf	(_pfgonetemp),f
	skipnc
	incf	(_pfgonetemp+1),f
	line	111
	
l7896:	
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
	goto	u3595
	movf	(Pwm_add@temp),w
	subwf	0+(??_Pwm_add+0)+0,w
u3595:
	skipnc
	goto	u3591
	goto	u3590
u3591:
	goto	l7902
u3590:
	
l7898:	
	movlw	low(0)
	goto	l4875
	line	114
	
l7902:	
;WHQ_TP_ZPGS_V1.2.c: 114: return 1;
	movlw	low(01h)
	line	115
	
l4875:	
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
psect	text24,local,class=CODE,delta=2,merge=1,group=1
	line	206
global __ptext24
__ptext24:	;psect for function _PFG_read_fst
psect	text24
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	206
	global	__size_of_PFG_read_fst
	__size_of_PFG_read_fst	equ	__end_of_PFG_read_fst-_PFG_read_fst
	
_PFG_read_fst:	
;incstack = 0
	opt	stack 2
; Regs used in _PFG_read_fst: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	212
	
l8042:	
;WHQ_TP_ZPGS_V1.2.c: 208: unsigned char templ,temph;
;WHQ_TP_ZPGS_V1.2.c: 209: unsigned int temp;
;WHQ_TP_ZPGS_V1.2.c: 210: unsigned char pfgconset;
;WHQ_TP_ZPGS_V1.2.c: 212: switch(pfg_select)
	goto	l8062
	line	216
	
l8044:	
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
	
l8046:	
;WHQ_TP_ZPGS_V1.2.c: 218: pfgconset = 0x04;
	movlw	low(04h)
	movwf	(PFG_read_fst@pfgconset)
	line	219
;WHQ_TP_ZPGS_V1.2.c: 219: break;
	goto	l8064
	line	223
	
l8048:	
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
	
l8050:	
;WHQ_TP_ZPGS_V1.2.c: 225: pfgconset = 0x24;
	movlw	low(024h)
	movwf	(PFG_read_fst@pfgconset)
	line	226
;WHQ_TP_ZPGS_V1.2.c: 226: break;
	goto	l8064
	line	230
	
l8052:	
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
	
l8054:	
;WHQ_TP_ZPGS_V1.2.c: 232: pfgconset = 0x44;
	movlw	low(044h)
	movwf	(PFG_read_fst@pfgconset)
	line	233
;WHQ_TP_ZPGS_V1.2.c: 233: break;
	goto	l8064
	line	237
	
l8056:	
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
	
l8058:	
;WHQ_TP_ZPGS_V1.2.c: 239: pfgconset = 0x64;
	movlw	low(064h)
	movwf	(PFG_read_fst@pfgconset)
	line	240
;WHQ_TP_ZPGS_V1.2.c: 240: break;
	goto	l8064
	line	212
	
l8062:	
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
	goto	l8044
	xorlw	2^1	; case 2
	skipnz
	goto	l8048
	xorlw	3^2	; case 3
	skipnz
	goto	l8052
	xorlw	4^3	; case 4
	skipnz
	goto	l8056
	goto	l8064
	opt asmopt_pop

	line	244
	
l8064:	
;WHQ_TP_ZPGS_V1.2.c: 244: temph = (unsigned char)(temph&0x03);
	movlw	low(03h)
	andwf	(PFG_read_fst@temph),f
	line	245
	
l8066:	
;WHQ_TP_ZPGS_V1.2.c: 245: temp = (unsigned int)(temph*256 + templ);
	movf	(PFG_read_fst@temph),w
	movwf	(PFG_read_fst@temp+1)
	clrf	(PFG_read_fst@temp)
	
l8068:	
	movf	(PFG_read_fst@templ),w
	addwf	(PFG_read_fst@temp),f
	skipnc
	incf	(PFG_read_fst@temp+1),f
	line	246
	
l8070:	
	movlw	0
	subwf	(PFG_read_fst@temp+1),w
	movlw	0FBh
	skipnz
	subwf	(PFG_read_fst@temp),w
	skipc
	goto	u3761
	goto	u3760
u3761:
	goto	l8074
u3760:
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\WHQ_TP_ZPGS.h"
	line	183
	
l8072:	
	movf	(PFG_read_fst@temp),w
	addlw	low(0FF06h)
	movwf	(_pwmfst)	;volatile
	movf	(PFG_read_fst@temp+1),w
	skipnc
	addlw	1
	addlw	high(0FF06h)
	movwf	1+(_pwmfst)	;volatile
	line	247
	goto	l8076
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	249
	
l8074:	
;WHQ_TP_ZPGS_V1.2.c: 248: else
;WHQ_TP_ZPGS_V1.2.c: 249: pwmfst = 0;
	clrf	(_pwmfst)	;volatile
	clrf	(_pwmfst+1)	;volatile
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\WHQ_TP_ZPGS.h"
	line	184
	
l8076:	
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
	
l8078:	
;WHQ_TP_ZPGS_V1.2.c: 252: if((pwmlst&0x0400) != 0)
	btfss	(_pwmlst+1),(10)&7	;volatile
	goto	u3771
	goto	u3770
u3771:
	goto	l8082
u3770:
	line	253
	
l8080:	
;WHQ_TP_ZPGS_V1.2.c: 253: pwmlst = 1024;
	movlw	0
	movwf	(_pwmlst)	;volatile
	movlw	04h
	movwf	((_pwmlst))+1	;volatile
	line	255
	
l8082:	
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
	
l8084:	
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
	
l8086:	
;WHQ_TP_ZPGS_V1.2.c: 258: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	259
;WHQ_TP_ZPGS_V1.2.c: 259: pwmnold = pfgonetemp.pfgtemp;
	movf	(_pfgonetemp+1),w
	movwf	(_pwmnold+1)	;volatile
	movf	(_pfgonetemp),w
	movwf	(_pwmnold)	;volatile
	line	260
	
l4913:	
	return
	opt stack 0
GLOBAL	__end_of_PFG_read_fst
	__end_of_PFG_read_fst:
	signat	_PFG_read_fst,89
	global	_Set_jiyi_re

;; *************** function _Set_jiyi_re *****************
;; Defined at:
;;		line 68 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\Eeprom.c"
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
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\Eeprom.c"
	line	68
global __ptext25
__ptext25:	;psect for function _Set_jiyi_re
psect	text25
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\Eeprom.c"
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
	
l7918:	
;Eeprom.c: 70: unsigned char redata;
;Eeprom.c: 72: EEADR = raddr;
	movf	(Set_jiyi_re@raddr),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	73
# 73 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\Eeprom.c"
NOP ;# 
psect	text25
	line	74
	
l7920:	
;Eeprom.c: 74: EEPGD = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7	;volsfr
	line	75
# 75 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\Eeprom.c"
NOP ;# 
psect	text25
	line	76
	
l7922:	
;Eeprom.c: 76: RD = 1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3168/8)^0180h,(3168)&7	;volsfr
	line	77
# 77 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\Eeprom.c"
NOP ;# 
	line	78
# 78 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\Eeprom.c"
NOP ;# 
	line	79
# 79 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\Eeprom.c"
NOP ;# 
psect	text25
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
psect	text26,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	465
global __ptext26
__ptext26:	;psect for function _Get_CUR_Dat
psect	text26
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	465
	global	__size_of_Get_CUR_Dat
	__size_of_Get_CUR_Dat	equ	__end_of_Get_CUR_Dat-_Get_CUR_Dat
	
_Get_CUR_Dat:	
;incstack = 0
	opt	stack 2
; Regs used in _Get_CUR_Dat: [wreg+status,2+status,0+pclath+cstack]
	line	467
	
l8158:	
;WHQ_TP_ZPGS_V1.2.c: 467: cur_addat = cursum/32;
	bsf	status, 5	;RP0=1, select bank1
	movf	(_cursum+1)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_Get_CUR_Dat+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(_cursum)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_Get_CUR_Dat+0)+0
	movlw	05h
u3785:
	clrc
	rrf	(??_Get_CUR_Dat+0)+1,f
	rrf	(??_Get_CUR_Dat+0)+0,f
	addlw	-1
	skipz
	goto	u3785
	movf	0+(??_Get_CUR_Dat+0)+0,w
	movwf	(_cur_addat)	;volatile
	line	468
;WHQ_TP_ZPGS_V1.2.c: 468: if(0 == cur_addatold0)
	movf	((_cur_addatold0)),w	;volatile
	btfss	status,2
	goto	u3791
	goto	u3790
u3791:
	goto	l8162
u3790:
	line	470
	
l8160:	
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
	goto	l8164
	line	476
	
l8162:	
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
	
l8164:	
;WHQ_TP_ZPGS_V1.2.c: 477: }
;WHQ_TP_ZPGS_V1.2.c: 478: cur_addatold2 = cur_addatold1;
	movf	(_cur_addatold1),w	;volatile
	movwf	(_cur_addatold2)	;volatile
	line	479
	
l8166:	
;WHQ_TP_ZPGS_V1.2.c: 479: cur_addatold1 = cur_addatold0;
	movf	(_cur_addatold0),w	;volatile
	movwf	(_cur_addatold1)	;volatile
	line	480
	
l8168:	
;WHQ_TP_ZPGS_V1.2.c: 480: cur_addatold0 = cur_addat;
	movf	(_cur_addat),w	;volatile
	movwf	(_cur_addatold0)	;volatile
	line	481
	
l4962:	
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
psect	text27,local,class=CODE,delta=2,merge=1,group=2
	file	"C:\mcuproject\scm\CMS_IDE_V2.03.26\CMS_IDE_V2.03.26\data\sources\common\awdiv.c"
	line	6
global __ptext27
__ptext27:	;psect for function ___awdiv
psect	text27
	file	"C:\mcuproject\scm\CMS_IDE_V2.03.26\CMS_IDE_V2.03.26\data\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l7998:	
	clrf	(___awdiv@sign)
	line	15
	
l8000:	
	btfss	(___awdiv@divisor+1),7
	goto	u3691
	goto	u3690
u3691:
	goto	l8006
u3690:
	line	16
	
l8002:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l8004:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	19
	
l8006:	
	btfss	(___awdiv@dividend+1),7
	goto	u3701
	goto	u3700
u3701:
	goto	l8012
u3700:
	line	20
	
l8008:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l8010:	
	movlw	low(01h)
	xorwf	(___awdiv@sign),f
	line	23
	
l8012:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l8014:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u3711
	goto	u3710
u3711:
	goto	l8034
u3710:
	line	25
	
l8016:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l8020
	line	27
	
l8018:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	28
	incf	(___awdiv@counter),f
	line	26
	
l8020:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3721
	goto	u3720
u3721:
	goto	l8018
u3720:
	line	31
	
l8022:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	32
	
l8024:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3735
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3735:
	skipc
	goto	u3731
	goto	u3730
u3731:
	goto	l8030
u3730:
	line	33
	
l8026:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l8028:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	36
	
l8030:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	37
	
l8032:	
	decfsz	(___awdiv@counter),f
	goto	u3741
	goto	u3740
u3741:
	goto	l8022
u3740:
	line	39
	
l8034:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u3751
	goto	u3750
u3751:
	goto	l8038
u3750:
	line	40
	
l8036:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	41
	
l8038:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	42
	
l5198:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_Init_ram

;; *************** function _Init_ram *****************
;; Defined at:
;;		line 117 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
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
psect	text28,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	117
global __ptext28
__ptext28:	;psect for function _Init_ram
psect	text28
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	117
	global	__size_of_Init_ram
	__size_of_Init_ram	equ	__end_of_Init_ram-_Init_ram
	
_Init_ram:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_ram: [wreg+status,2]
	line	119
	
l8620:	
;main.c: 119: PIE2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(141)^080h	;volatile
	line	120
	
l8622:	
;main.c: 120: PIE1 = 0B00000010;
	movlw	low(02h)
	movwf	(140)^080h	;volatile
	line	121
	
l8624:	
;main.c: 121: PR2 = 50;
	movlw	low(032h)
	movwf	(146)^080h	;volatile
	line	122
	
l8626:	
;main.c: 122: T2CON = 5;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	123
	
l8628:	
;main.c: 123: INTCON = 0XC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	124
	
l8630:	
;main.c: 124: onoff = 1;
	bsf	(_onoff/8),(_onoff)&7	;volatile
	line	125
	
l2331:	
	return
	opt stack 0
GLOBAL	__end_of_Init_ram
	__end_of_Init_ram:
	signat	_Init_ram,89
	global	_Init_ic

;; *************** function _Init_ic *****************
;; Defined at:
;;		line 93 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
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
psect	text29,local,class=CODE,delta=2,merge=1,group=0
	line	93
global __ptext29
__ptext29:	;psect for function _Init_ic
psect	text29
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	93
	global	__size_of_Init_ic
	__size_of_Init_ic	equ	__end_of_Init_ic-_Init_ic
	
_Init_ic:	
;incstack = 0
	opt	stack 5
; Regs used in _Init_ic: [wreg+status,2]
	line	95
	
l8596:	
;main.c: 95: PORTA = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	96
;main.c: 96: PORTB = 0;
	clrf	(6)	;volatile
	line	97
	
l8598:	
;main.c: 97: INTCON = 0xC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	98
	
l8600:	
;main.c: 98: PIR1 = 0;
	clrf	(12)	;volatile
	line	99
	
l8602:	
;main.c: 99: PIR2 = 0;
	clrf	(13)	;volatile
	line	100
	
l8604:	
;main.c: 100: WDTCON = 0x01;
	movlw	low(01h)
	bsf	status, 6	;RP1=1, select bank2
	movwf	(261)^0100h	;volatile
	line	101
	
l8606:	
;main.c: 101: TRISA = 0x06;
	movlw	low(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	102
	
l8608:	
;main.c: 102: TRISB = 0x11;
	movlw	low(011h)
	movwf	(134)^080h	;volatile
	line	103
;main.c: 103: OPTION_REG = 0;
	clrf	(129)^080h	;volatile
	line	104
	
l8610:	
;main.c: 104: OSCCON = 0x71;
	movlw	low(071h)
	movwf	(143)^080h	;volatile
	line	105
	
l8612:	
;main.c: 105: PIE1 = 0;
	clrf	(140)^080h	;volatile
	line	106
	
l8614:	
;main.c: 106: PIE2 = 0;
	clrf	(141)^080h	;volatile
	line	107
	
l8616:	
;main.c: 107: IOCB = 0;
	clrf	(150)^080h	;volatile
	line	108
;main.c: 108: WPUA = 0x20;
	movlw	low(020h)
	bsf	status, 6	;RP1=1, select bank3
	movwf	(398)^0180h	;volatile
	line	109
	
l8618:	
;main.c: 109: WPUB = 0;
	bcf	status, 6	;RP1=0, select bank1
	clrf	(149)^080h	;volatile
	line	110
	
l2328:	
	return
	opt stack 0
GLOBAL	__end_of_Init_ic
	__end_of_Init_ic:
	signat	_Init_ic,89
	global	_Delay_nms

;; *************** function _Delay_nms *****************
;; Defined at:
;;		line 15 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\delay.c"
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
psect	text30,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\delay.c"
	line	15
global __ptext30
__ptext30:	;psect for function _Delay_nms
psect	text30
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\delay.c"
	line	15
	global	__size_of_Delay_nms
	__size_of_Delay_nms	equ	__end_of_Delay_nms-_Delay_nms
	
_Delay_nms:	
;incstack = 0
	opt	stack 4
; Regs used in _Delay_nms: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l8578:	
;delay.c: 17: unsigned int i;
;delay.c: 18: unsigned char gtemp;
;delay.c: 20: gtemp=0;
	clrf	(Delay_nms@gtemp)
	line	21
	
l8580:	
;delay.c: 21: if(GIE==1)
	btfss	(95/8),(95)&7	;volatile
	goto	u4621
	goto	u4620
u4621:
	goto	l8584
u4620:
	line	23
	
l8582:	
;delay.c: 22: {
;delay.c: 23: gtemp=1;
	clrf	(Delay_nms@gtemp)
	incf	(Delay_nms@gtemp),f
	line	24
;delay.c: 24: GIE=0;
	bcf	(95/8),(95)&7	;volatile
	line	26
	
l8584:	
;delay.c: 25: }
;delay.c: 26: for(i=0;i<inittempl;i++)
	clrf	(Delay_nms@i)
	clrf	(Delay_nms@i+1)
	goto	l8590
	line	28
	
l8586:	
;delay.c: 27: {
;delay.c: 28: Delay(154);
	movlw	09Ah
	movwf	(Delay@dtemp)
	clrf	(Delay@dtemp+1)
	fcall	_Delay
	line	29
# 29 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\delay.c"
clrwdt ;# 
psect	text30
	line	26
	
l8588:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(Delay_nms@i),f
	skipnz
	incf	(Delay_nms@i+1),f
	
l8590:	
	movf	(Delay_nms@inittempl+1),w
	subwf	(Delay_nms@i+1),w
	skipz
	goto	u4635
	movf	(Delay_nms@inittempl),w
	subwf	(Delay_nms@i),w
u4635:
	skipc
	goto	u4631
	goto	u4630
u4631:
	goto	l8586
u4630:
	line	31
	
l8592:	
;delay.c: 30: }
;delay.c: 31: if(gtemp==1) GIE=1;
		decf	((Delay_nms@gtemp)),w
	btfss	status,2
	goto	u4641
	goto	u4640
u4641:
	goto	l726
u4640:
	
l8594:	
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
;;		line 8 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\delay.c"
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
psect	text31,local,class=CODE,delta=2,merge=1,group=0
	line	8
global __ptext31
__ptext31:	;psect for function _Delay
psect	text31
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\delay.c"
	line	8
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
;incstack = 0
	opt	stack 4
; Regs used in _Delay: [wreg+status,2+status,0]
	line	10
	
l8362:	
;delay.c: 10: while(dtemp--);
	
l8364:	
	movlw	01h
	subwf	(Delay@dtemp),f
	movlw	0
	skipc
	decf	(Delay@dtemp+1),f
	subwf	(Delay@dtemp+1),f
		incf	(((Delay@dtemp))),w
	skipz
	goto	u4171
	incf	(((Delay@dtemp+1))),w
	btfss	status,2
	goto	u4171
	goto	u4170
u4171:
	goto	l8364
u4170:
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
;;		line 391 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
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
psect	text32,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	391
global __ptext32
__ptext32:	;psect for function _AD_Testing
psect	text32
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	391
	global	__size_of_AD_Testing
	__size_of_AD_Testing	equ	__end_of_AD_Testing-_AD_Testing
	
_AD_Testing:	
;incstack = 0
	opt	stack 5
; Regs used in _AD_Testing: [wreg+status,2+status,0]
;AD_Testing@ad_fd stored from wreg
	movwf	(AD_Testing@ad_fd)
	line	396
	
l8712:	
;main.c: 393: static volatile unsigned char adtimes;
;main.c: 394: static volatile unsigned int admin,admax,adsum;
;main.c: 395: volatile unsigned int data;
;main.c: 396: volatile unsigned char i = 0;
	clrf	(AD_Testing@i)	;volatile
	line	399
	
l8714:	
;main.c: 399: if(!ad_lr)
	movf	((AD_Testing@ad_lr)),w
	btfss	status,2
	goto	u4761
	goto	u4760
u4761:
	goto	l8718
u4760:
	line	400
	
l8716:	
;main.c: 400: ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	goto	l8720
	line	402
	
l8718:	
;main.c: 401: else
;main.c: 402: ADCON1 = 0x80;
	movlw	low(080h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(159)^080h	;volatile
	line	404
	
l8720:	
;main.c: 404: ADCON0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(31)	;volatile
	line	405
	
l8722:	
;main.c: 405: ADCON0 |= (unsigned char)(ad_fd << 6);
	movf	(AD_Testing@ad_fd),w
	movwf	(??_AD_Testing+0)+0
	rrf	(??_AD_Testing+0)+0,f
	rrf	(??_AD_Testing+0)+0,f
	rrf	(??_AD_Testing+0)+0,w
	andlw	0c0h
	iorwf	(31),f	;volatile
	line	406
	
l8724:	
;main.c: 406: ADCON0 |= (unsigned char)(ad_ch << 2);
	movf	(AD_Testing@ad_ch),w
	movwf	(??_AD_Testing+0)+0
	movlw	(02h)-1
u4775:
	clrc
	rlf	(??_AD_Testing+0)+0,f
	addlw	-1
	skipz
	goto	u4775
	clrc
	rlf	(??_AD_Testing+0)+0,w
	iorwf	(31),f	;volatile
	line	407
	
l8726:	
;main.c: 407: ADCON0 |= 0x01;
	bsf	(31)+(0/8),(0)&7	;volatile
	line	409
# 409 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
nop ;# 
	line	410
# 410 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
nop ;# 
psect	text32
	line	411
	
l8728:	
;main.c: 411: GODONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7	;volatile
	line	413
;main.c: 413: while(GODONE)
	goto	l2410
	
l2411:	
	line	415
# 415 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
nop ;# 
	line	416
# 416 "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
nop ;# 
psect	text32
	line	417
;main.c: 417: if(0 == (--i))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decfsz	(AD_Testing@i),f	;volatile
	goto	u4781
	goto	u4780
u4781:
	goto	l2410
u4780:
	goto	l2413
	line	419
	
l2410:	
	line	413
	btfsc	(249/8),(249)&7	;volatile
	goto	u4791
	goto	u4790
u4791:
	goto	l2411
u4790:
	line	421
	
l8732:	
;main.c: 419: }
;main.c: 421: if(!ad_lr)
	movf	((AD_Testing@ad_lr)),w
	btfss	status,2
	goto	u4801
	goto	u4800
u4801:
	goto	l8738
u4800:
	line	423
	
l8734:	
;main.c: 422: {
;main.c: 423: data = (unsigned int)(ADRESH<<4);
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
	line	424
	
l8736:	
;main.c: 424: data |= (unsigned int)(ADRESL>>4);
	bsf	status, 5	;RP0=1, select bank1
	swapf	(158)^080h,w	;volatile
	andlw	(0ffh shr 4) & 0ffh
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(AD_Testing@data),f	;volatile
	line	425
;main.c: 425: }
	goto	l8740
	line	428
	
l8738:	
;main.c: 426: else
;main.c: 427: {
;main.c: 428: data = (unsigned int)(ADRESH<<8);
	movf	(30),w	;volatile
	movwf	(AD_Testing@data+1)	;volatile
	clrf	(AD_Testing@data)	;volatile
	line	429
;main.c: 429: data |= (unsigned int)ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(AD_Testing@data),f	;volatile
	line	432
	
l8740:	
;main.c: 430: }
;main.c: 432: if(0 == adtimes)
	movf	((AD_Testing@adtimes)),w	;volatile
	btfss	status,2
	goto	u4811
	goto	u4810
u4811:
	goto	l8744
u4810:
	line	434
	
l8742:	
;main.c: 433: {
;main.c: 434: admax = data;
	movf	(AD_Testing@data+1),w	;volatile
	movwf	(AD_Testing@admax+1)	;volatile
	movf	(AD_Testing@data),w	;volatile
	movwf	(AD_Testing@admax)	;volatile
	line	435
;main.c: 435: admin = data;
	movf	(AD_Testing@data+1),w	;volatile
	movwf	(AD_Testing@admin+1)	;volatile
	movf	(AD_Testing@data),w	;volatile
	movwf	(AD_Testing@admin)	;volatile
	line	436
;main.c: 436: }
	goto	l2418
	line	437
	
l8744:	
;main.c: 437: else if(data > admax)
	movf	(AD_Testing@data+1),w	;volatile
	subwf	(AD_Testing@admax+1),w	;volatile
	skipz
	goto	u4825
	movf	(AD_Testing@data),w	;volatile
	subwf	(AD_Testing@admax),w	;volatile
u4825:
	skipnc
	goto	u4821
	goto	u4820
u4821:
	goto	l8748
u4820:
	line	439
	
l8746:	
;main.c: 438: {
;main.c: 439: admax = data;
	movf	(AD_Testing@data+1),w	;volatile
	movwf	(AD_Testing@admax+1)	;volatile
	movf	(AD_Testing@data),w	;volatile
	movwf	(AD_Testing@admax)	;volatile
	line	440
;main.c: 440: }
	goto	l2418
	line	441
	
l8748:	
;main.c: 441: else if(data < admin)
	movf	(AD_Testing@admin+1),w	;volatile
	subwf	(AD_Testing@data+1),w	;volatile
	skipz
	goto	u4835
	movf	(AD_Testing@admin),w	;volatile
	subwf	(AD_Testing@data),w	;volatile
u4835:
	skipnc
	goto	u4831
	goto	u4830
u4831:
	goto	l2418
u4830:
	line	443
	
l8750:	
;main.c: 442: {
;main.c: 443: admin = data;
	movf	(AD_Testing@data+1),w	;volatile
	movwf	(AD_Testing@admin+1)	;volatile
	movf	(AD_Testing@data),w	;volatile
	movwf	(AD_Testing@admin)	;volatile
	line	446
	
l2418:	
;main.c: 444: }
;main.c: 446: adsum += data;
	movf	(AD_Testing@data),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	addwf	(AD_Testing@adsum)^080h,f	;volatile
	skipnc
	incf	(AD_Testing@adsum+1)^080h,f	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movf	(AD_Testing@data+1),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	addwf	(AD_Testing@adsum+1)^080h,f	;volatile
	line	447
	
l8752:	
;main.c: 447: if(++adtimes >= 10)
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	incf	(AD_Testing@adtimes),f	;volatile
	subwf	((AD_Testing@adtimes)),w	;volatile
	skipc
	goto	u4841
	goto	u4840
u4841:
	goto	l2413
u4840:
	line	449
	
l8754:	
;main.c: 448: {
;main.c: 449: adsum -= admax;
	movf	(AD_Testing@admax),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	subwf	(AD_Testing@adsum)^080h,f	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movf	(AD_Testing@admax+1),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(AD_Testing@adsum+1)^080h,f	;volatile
	subwf	(AD_Testing@adsum+1)^080h,f	;volatile
	line	450
;main.c: 450: adsum -= admin;
	bcf	status, 5	;RP0=0, select bank0
	movf	(AD_Testing@admin),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	subwf	(AD_Testing@adsum)^080h,f	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movf	(AD_Testing@admin+1),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(AD_Testing@adsum+1)^080h,f	;volatile
	subwf	(AD_Testing@adsum+1)^080h,f	;volatile
	line	452
	
l8756:	
;main.c: 452: AD_Result = adsum >> 3;
	movf	(AD_Testing@adsum+1)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_AD_Testing+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(AD_Testing@adsum)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
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
	line	454
	
l8758:	
;main.c: 454: adsum = 0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(AD_Testing@adsum)^080h	;volatile
	clrf	(AD_Testing@adsum+1)^080h	;volatile
	line	455
	
l8760:	
;main.c: 455: admin = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(AD_Testing@admin)	;volatile
	clrf	(AD_Testing@admin+1)	;volatile
	line	456
	
l8762:	
;main.c: 456: admax = 0;
	clrf	(AD_Testing@admax)	;volatile
	clrf	(AD_Testing@admax+1)	;volatile
	line	457
	
l8764:	
;main.c: 457: adtimes = 0;
	clrf	(AD_Testing@adtimes)	;volatile
	line	459
	
l2413:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Testing
	__end_of_AD_Testing:
	signat	_AD_Testing,12409
	global	_time0

;; *************** function _time0 *****************
;; Defined at:
;;		line 183 in file "C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
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
psect	text33,local,class=CODE,delta=2,merge=1,group=0
	line	183
global __ptext33
__ptext33:	;psect for function _time0
psect	text33
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\main.c"
	line	183
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
psect	text33
	line	185
	
i1l7790:	
;main.c: 185: if(RCIF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7	;volatile
	goto	u344_21
	goto	u344_20
u344_21:
	goto	i1l2350
u344_20:
	line	188
	
i1l7792:	
;main.c: 186: {
;main.c: 188: revTime = 0;
	clrf	(_revTime)
	line	189
	
i1l7794:	
;main.c: 189: Recebuffer[rececount] = RCREG;
	movf	(_rececount),w
	addlw	low(_Recebuffer|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(26),w	;volatile
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	190
	
i1l7796:	
;main.c: 190: rececount++;
	incf	(_rececount),f
	line	192
	
i1l7798:	
;main.c: 192: if(rececount >= 4)
	movlw	low(04h)
	subwf	(_rececount),w
	skipc
	goto	u345_21
	goto	u345_20
u345_21:
	goto	i1l7802
u345_20:
	line	194
	
i1l7800:	
;main.c: 193: {
;main.c: 194: rececount = 0;
	clrf	(_rececount)
	line	197
	
i1l7802:	
;main.c: 195: }
;main.c: 197: if(OERR)
	btfss	(193/8),(193)&7	;volatile
	goto	u346_21
	goto	u346_20
u346_21:
	goto	i1l2350
u346_20:
	line	199
	
i1l7804:	
;main.c: 198: {
;main.c: 199: CREN = 0;
	bcf	(196/8),(196)&7	;volatile
	line	200
;main.c: 200: CREN = 1;
	bsf	(196/8),(196)&7	;volatile
	line	203
	
i1l2350:	
	line	205
;main.c: 201: }
;main.c: 203: }
;main.c: 205: if(TMR2IF)
	btfss	(97/8),(97)&7	;volatile
	goto	u347_21
	goto	u347_20
u347_21:
	goto	i1l7820
u347_20:
	line	207
	
i1l7806:	
;main.c: 206: {
;main.c: 207: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	208
;main.c: 208: tm2Flag = 1;
	clrf	(_tm2Flag)
	incf	(_tm2Flag),f
	line	209
	
i1l7808:	
;main.c: 209: if(++count125us > 4)
	movlw	low(05h)
	incf	(_count125us),f
	subwf	((_count125us)),w
	skipc
	goto	u348_21
	goto	u348_20
u348_21:
	goto	i1l2358
u348_20:
	line	211
	
i1l7810:	
;main.c: 210: {
;main.c: 211: count125us = 0;
	clrf	(_count125us)
	line	212
	
i1l7812:	
;main.c: 212: tcount ++;
	incf	(_tcount),f	;volatile
	line	213
	
i1l7814:	
;main.c: 213: if(onoff)
	btfss	(_onoff/8),(_onoff)&7	;volatile
	goto	u349_21
	goto	u349_20
u349_21:
	goto	i1l7818
u349_20:
	line	215
	
i1l7816:	
;main.c: 214: {
;main.c: 215: Set_Pwm_Onoff(20);
	movlw	low(014h)
	fcall	_Set_Pwm_Onoff
	line	216
;main.c: 216: }
	goto	i1l2358
	line	219
	
i1l7818:	
;main.c: 217: else
;main.c: 218: {
;main.c: 219: Set_Pwm_Onoff(0);
	movlw	low(0)
	fcall	_Set_Pwm_Onoff
	goto	i1l2358
	line	225
	
i1l7820:	
;main.c: 223: else
;main.c: 224: {
;main.c: 225: PIR1 = 0;
	clrf	(12)	;volatile
	line	226
;main.c: 226: PIR2 = 0;
	clrf	(13)	;volatile
	line	230
	
i1l2358:	
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
psect	text34,local,class=CODE,delta=2,merge=1,group=1
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	273
global __ptext34
__ptext34:	;psect for function _Set_Pwm_Onoff
psect	text34
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
	
i1l7434:	
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
	
i1l7436:	
;WHQ_TP_ZPGS_V1.2.c: 286: if(0 != pfgonetemp.pfgtemp)
	movf	((_pfgonetemp)),w
iorwf	((_pfgonetemp+1)),w
	btfsc	status,2
	goto	u284_21
	goto	u284_20
u284_21:
	goto	i1l4952
u284_20:
	line	288
	
i1l7438:	
;WHQ_TP_ZPGS_V1.2.c: 287: {
;WHQ_TP_ZPGS_V1.2.c: 288: if(PfgChangef)
	btfss	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	goto	u285_21
	goto	u285_20
u285_21:
	goto	i1l7458
u285_20:
	line	290
	
i1l7440:	
;WHQ_TP_ZPGS_V1.2.c: 289: {
;WHQ_TP_ZPGS_V1.2.c: 290: PfgChangef = 0;
	bcf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	291
;WHQ_TP_ZPGS_V1.2.c: 291: if((0 == (pfgonetemp.pfgonebyte.pfgtemph & 0x80)) && ((PFGCON&0x80) != 0))
	btfsc	0+(_pfgonetemp)+01h,(7)&7
	goto	u286_21
	goto	u286_20
u286_21:
	goto	i1l7448
u286_20:
	
i1l7442:	
	bsf	status, 6	;RP1=1, select bank2
	btfss	(283)^0100h,(7)&7	;volatile
	goto	u287_21
	goto	u287_20
u287_21:
	goto	i1l7448
u287_20:
	line	293
	
i1l7444:	
;WHQ_TP_ZPGS_V1.2.c: 292: {
;WHQ_TP_ZPGS_V1.2.c: 293: PFGCON1 &= ~0x80;
	bcf	(286)^0100h+(7/8),(7)&7	;volatile
	line	294
	
i1l7446:	
;WHQ_TP_ZPGS_V1.2.c: 294: PFGSTOP = 0xfa;
	movlw	low(0FAh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	295
;WHQ_TP_ZPGS_V1.2.c: 295: }
	goto	i1l7458
	line	298
	
i1l7448:	
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
	goto	u288_21
	goto	u288_20
u288_21:
	goto	i1l7452
u288_20:
	line	300
	
i1l7450:	
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
	goto	i1l7458
	line	305
	
i1l7452:	
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
	
i1l7458:	
;WHQ_TP_ZPGS_V1.2.c: 315: }
;WHQ_TP_ZPGS_V1.2.c: 316: }
;WHQ_TP_ZPGS_V1.2.c: 318: if(0 == fun)
	movf	((Set_Pwm_Onoff@fun)),w
	btfss	status,2
	goto	u289_21
	goto	u289_20
u289_21:
	goto	i1l4934
u289_20:
	line	321
	
i1l7460:	
;WHQ_TP_ZPGS_V1.2.c: 319: {
;WHQ_TP_ZPGS_V1.2.c: 321: pfgonetemp.pfgonebyte.pfgtemph &= ~0x80;
	bcf	0+(_pfgonetemp)+01h+(7/8),(7)&7
	line	322
;WHQ_TP_ZPGS_V1.2.c: 322: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	323
	
i1l7462:	
;WHQ_TP_ZPGS_V1.2.c: 323: cur_addat = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_cur_addat)	;volatile
	line	324
	
i1l7464:	
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
	
i1l7466:	
;WHQ_TP_ZPGS_V1.2.c: 327: on_off = 0;
	bcf	(_on_off/8),(_on_off)&7	;volatile
	line	328
;WHQ_TP_ZPGS_V1.2.c: 328: }
	goto	i1l4952
	line	329
	
i1l4934:	
	line	332
;WHQ_TP_ZPGS_V1.2.c: 329: else
;WHQ_TP_ZPGS_V1.2.c: 330: {
;WHQ_TP_ZPGS_V1.2.c: 332: on_off = 1;
	bsf	(_on_off/8),(_on_off)&7	;volatile
	line	334
;WHQ_TP_ZPGS_V1.2.c: 334: if(!pwmtf)
	btfsc	(_pwmtf/8),(_pwmtf)&7	;volatile
	goto	u290_21
	goto	u290_20
u290_21:
	goto	i1l7470
u290_20:
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\WHQ_TP_ZPGS.h"
	line	190
	
i1l7468:	
	movlw	low(018h)
	movwf	(Set_Pwm_Onoff@funod)
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	337
;WHQ_TP_ZPGS_V1.2.c: 337: funold = funod;
	movlw	low(018h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Set_Pwm_Onoff@funold)^080h
	file	"C:\mcuproject\scm\xfx\追频+干烧检水-24V2.4M(0818-A)\追频+干烧检水-24V2.4M(0904)\追频+干烧检水-24V2.4M - 副本\WHQ_TP_ZPGS.h"
	line	338
;WHQ_TP_ZPGS_V1.2.c: 338: }
	goto	i1l7476
	file	"E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
	line	341
	
i1l7470:	
	movlw	low(031h)
	subwf	(Set_Pwm_Onoff@fun),w
	skipnc
	goto	u291_21
	goto	u291_20
u291_21:
	goto	i1l7474
u291_20:
	line	343
	
i1l7472:	
;WHQ_TP_ZPGS_V1.2.c: 342: {
;WHQ_TP_ZPGS_V1.2.c: 343: funod = fun;
	movf	(Set_Pwm_Onoff@fun),w
	movwf	(Set_Pwm_Onoff@funod)
	line	344
;WHQ_TP_ZPGS_V1.2.c: 344: funold = fun;
	movf	(Set_Pwm_Onoff@fun),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Set_Pwm_Onoff@funold)^080h
	line	345
;WHQ_TP_ZPGS_V1.2.c: 345: }
	goto	i1l7476
	line	347
	
i1l7474:	
;WHQ_TP_ZPGS_V1.2.c: 346: else
;WHQ_TP_ZPGS_V1.2.c: 347: funod = funold;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Set_Pwm_Onoff@funold)^080h,w
	movwf	(Set_Pwm_Onoff@funod)
	line	349
	
i1l7476:	
		movlw	48
	xorwf	((Set_Pwm_Onoff@funod)),w
	btfss	status,2
	goto	u292_21
	goto	u292_20
u292_21:
	goto	i1l7480
u292_20:
	line	351
	
i1l7478:	
;WHQ_TP_ZPGS_V1.2.c: 350: {
;WHQ_TP_ZPGS_V1.2.c: 351: ((pfgonetemp.pfgtemp) |= (1 << (15)));
	bsf	(_pfgonetemp)+(15/8),(15)&7
	line	352
;WHQ_TP_ZPGS_V1.2.c: 352: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	353
;WHQ_TP_ZPGS_V1.2.c: 353: }
	goto	i1l7494
	line	356
	
i1l7480:	
;WHQ_TP_ZPGS_V1.2.c: 354: else
;WHQ_TP_ZPGS_V1.2.c: 355: {
;WHQ_TP_ZPGS_V1.2.c: 356: pwmcl++;
	bcf	status, 5	;RP0=0, select bank0
	incf	(Set_Pwm_Onoff@pwmcl),f
	line	357
	
i1l7482:	
;WHQ_TP_ZPGS_V1.2.c: 357: if(pwmcl <= funod)
	movf	(Set_Pwm_Onoff@pwmcl),w
	subwf	(Set_Pwm_Onoff@funod),w
	skipc
	goto	u293_21
	goto	u293_20
u293_21:
	goto	i1l4942
u293_20:
	line	359
	
i1l7484:	
;WHQ_TP_ZPGS_V1.2.c: 358: {
;WHQ_TP_ZPGS_V1.2.c: 359: if((((pfgonetemp.pfgtemp) & (1 << (15))) == 0))
	btfsc	(_pfgonetemp+1),(15)&7
	goto	u294_21
	goto	u294_20
u294_21:
	goto	i1l7478
u294_20:
	line	360
	
i1l7486:	
;WHQ_TP_ZPGS_V1.2.c: 360: adonf = 0;
	bcf	(Set_Pwm_Onoff@adonf/8),(Set_Pwm_Onoff@adonf)&7
	goto	i1l7478
	line	364
	
i1l4942:	
	line	366
;WHQ_TP_ZPGS_V1.2.c: 364: else
;WHQ_TP_ZPGS_V1.2.c: 365: {
;WHQ_TP_ZPGS_V1.2.c: 366: if(((pfgonetemp.pfgtemp) & (1 << (15))))
	btfss	(_pfgonetemp+1),(15)&7
	goto	u295_21
	goto	u295_20
u295_21:
	goto	i1l4945
u295_20:
	line	367
	
i1l7488:	
;WHQ_TP_ZPGS_V1.2.c: 367: adonf = 0;
	bcf	(Set_Pwm_Onoff@adonf/8),(Set_Pwm_Onoff@adonf)&7
	
i1l4945:	
	line	368
;WHQ_TP_ZPGS_V1.2.c: 368: pfgonetemp.pfgtemp &= ~0x8000;
	bcf	(_pfgonetemp)+(15/8),(15)&7
	line	369
;WHQ_TP_ZPGS_V1.2.c: 369: PfgChangef = 1;
	bsf	(_PfgChangef/8),(_PfgChangef)&7	;volatile
	line	370
	
i1l7490:	
	movlw	low(030h)
	subwf	(Set_Pwm_Onoff@pwmcl),w
	skipc
	goto	u296_21
	goto	u296_20
u296_21:
	goto	i1l7494
u296_20:
	line	371
	
i1l7492:	
;WHQ_TP_ZPGS_V1.2.c: 371: pwmcl = 0;
	clrf	(Set_Pwm_Onoff@pwmcl)
	line	377
	
i1l7494:	
;WHQ_TP_ZPGS_V1.2.c: 372: }
;WHQ_TP_ZPGS_V1.2.c: 373: }
;WHQ_TP_ZPGS_V1.2.c: 377: if(0xff != fun)
		incf	((Set_Pwm_Onoff@fun)),w
	btfsc	status,2
	goto	u297_21
	goto	u297_20
u297_21:
	goto	i1l4947
u297_20:
	line	379
	
i1l7496:	
;WHQ_TP_ZPGS_V1.2.c: 378: {
;WHQ_TP_ZPGS_V1.2.c: 379: if(adonf&&((((ADCON0) & (1 << (1))) == 0)))
	btfss	(Set_Pwm_Onoff@adonf/8),(Set_Pwm_Onoff@adonf)&7
	goto	u298_21
	goto	u298_20
u298_21:
	goto	i1l7516
u298_20:
	
i1l7498:	
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(31),(1)&7	;volatile
	goto	u299_21
	goto	u299_20
u299_21:
	goto	i1l7516
u299_20:
	line	381
	
i1l7500:	
;WHQ_TP_ZPGS_V1.2.c: 380: {
;WHQ_TP_ZPGS_V1.2.c: 381: adonf = 0;
	bcf	(Set_Pwm_Onoff@adonf/8),(Set_Pwm_Onoff@adonf)&7
	line	382
	
i1l7502:	
;WHQ_TP_ZPGS_V1.2.c: 382: adonetemp.adonebyte.adtempl = ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(_adonetemp)^080h
	line	383
;WHQ_TP_ZPGS_V1.2.c: 383: adonetemp.adonebyte.adtemph = (unsigned char)(ADRESH&0x03);
	bcf	status, 5	;RP0=0, select bank0
	movf	(30),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	0+(_adonetemp)^080h+01h
	
i1l7504:	
	movlw	low(03h)
	andwf	0+(_adonetemp)^080h+01h,f
	line	384
	
i1l7506:	
;WHQ_TP_ZPGS_V1.2.c: 384: cursumt = adonetemp.adtemp + cursumt;
	movf	(_adonetemp)^080h,w
	addwf	(Set_Pwm_Onoff@cursumt)^080h,f
	skipnc
	incf	(Set_Pwm_Onoff@cursumt+1)^080h,f
	movf	(_adonetemp+1)^080h,w
	addwf	(Set_Pwm_Onoff@cursumt+1)^080h,f
	line	385
;WHQ_TP_ZPGS_V1.2.c: 385: if(++cur_adcl >= 32)
	movlw	low(020h)
	incf	(Set_Pwm_Onoff@cur_adcl)^080h,f
	subwf	((Set_Pwm_Onoff@cur_adcl)^080h),w
	skipc
	goto	u300_21
	goto	u300_20
u300_21:
	goto	i1l7516
u300_20:
	line	387
	
i1l7508:	
;WHQ_TP_ZPGS_V1.2.c: 386: {
;WHQ_TP_ZPGS_V1.2.c: 387: cur_adcl = 0;
	clrf	(Set_Pwm_Onoff@cur_adcl)^080h
	line	388
	
i1l7510:	
;WHQ_TP_ZPGS_V1.2.c: 388: cursum = cursumt;
	movf	(Set_Pwm_Onoff@cursumt+1)^080h,w
	movwf	(_cursum+1)^080h	;volatile
	movf	(Set_Pwm_Onoff@cursumt)^080h,w
	movwf	(_cursum)^080h	;volatile
	line	389
	
i1l7512:	
;WHQ_TP_ZPGS_V1.2.c: 389: cursumt = 0;
	clrf	(Set_Pwm_Onoff@cursumt)^080h
	clrf	(Set_Pwm_Onoff@cursumt+1)^080h
	line	390
	
i1l7514:	
;WHQ_TP_ZPGS_V1.2.c: 390: curokf = 1;
	bsf	(_curokf/8),(_curokf)&7	;volatile
	line	394
	
i1l7516:	
;WHQ_TP_ZPGS_V1.2.c: 391: }
;WHQ_TP_ZPGS_V1.2.c: 392: }
;WHQ_TP_ZPGS_V1.2.c: 394: if((PFGCON&0x80) != 0)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	btfss	(283)^0100h,(7)&7	;volatile
	goto	u301_21
	goto	u301_20
u301_21:
	goto	i1l4935
u301_20:
	line	396
	
i1l7518:	
;WHQ_TP_ZPGS_V1.2.c: 395: {
;WHQ_TP_ZPGS_V1.2.c: 396: ADCON0 = 0;
	bcf	status, 6	;RP1=0, select bank0
	clrf	(31)	;volatile
	line	397
	
i1l7520:	
;WHQ_TP_ZPGS_V1.2.c: 397: ADCON1 = 0x80;
	movlw	low(080h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(159)^080h	;volatile
	line	398
	
i1l7522:	
	movlw	low(045h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	399
# 399 "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
NOP ;# 
	line	400
# 400 "E:\ZW PROJECT\2020 PROJECT\雾化器项目\CMS-TPWHQ(源)\CMS-TPWHQ-ZPGS_V1.2(源)\WHQ_TP_ZPGS_V1.2.c"
NOP ;# 
psect	text34
	line	401
	
i1l7524:	
;WHQ_TP_ZPGS_V1.2.c: 401: adonf = 1;
	bsf	(Set_Pwm_Onoff@adonf/8),(Set_Pwm_Onoff@adonf)&7
	line	402
	
i1l7526:	
;WHQ_TP_ZPGS_V1.2.c: 402: ((ADCON0) |= (1 << (1)));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(31)+(1/8),(1)&7	;volatile
	goto	i1l4952
	line	405
	
i1l4947:	
	line	407
;WHQ_TP_ZPGS_V1.2.c: 405: else
;WHQ_TP_ZPGS_V1.2.c: 406: {
;WHQ_TP_ZPGS_V1.2.c: 407: adonf = 0;
	bcf	(Set_Pwm_Onoff@adonf/8),(Set_Pwm_Onoff@adonf)&7
	goto	i1l4952
	line	409
	
i1l4935:	
	line	411
	
i1l4952:	
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
