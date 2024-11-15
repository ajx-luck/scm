;-------------------------------------------

;程序名称：AD转换程序
;日期版本：2021/1/20 <V1.0>

;备注：直接调用AD_SAMPLE函数检测AD值

;*公司网址 www.mcu.com.cn
;					WWW.SCMCU.COM
;-------------------------------------------

#INCLUDE	SC8P1712E.H


ADRESULTL	EQU			?			;12位AD结果低位
ADRESULTH	EQU			?			;12位AD结果高位
ADSUMH	EQU			?				;AD检测总和高位
ADSUML	EQU			?				;AD检测总和低位
ADMINL	EQU			?				;AD检测最小值低位
ADMINH	EQU			?				;AD检测最小值高位
ADMAXL	EQU			?				;AD检测最大值低位
ADMAXH	EQU			?				;AD检测最大值高位
ADCOUNT	EQU			?				;AD检测计数
ADTEMPL	EQU			?				;AD临时寄存器
ADTEMPH	EQU			?				;AD临时寄存器

TEMP	EQU			?
		
ORG			0000H						
JP			START						

;-------------------------------------------
START:
		NOP
		CLRWDT
		LDIA		00H
		OPTION							;预分频器分配给TMR0
		CLR			TMR0				;初始化TMR0
		CLRWDT
		
		LDIA		070H				;8M内部时钟
		LD			OSCCON,A
		
MAIN:										;主程序
		CLRWDT
		LDIA		040H				;RB6选择模拟输入
		LD			ANSELH,A		
		LDIA		040H				;RB6设为输入
		LD			TRISB,A	
		LDIA		.14
		CALL		ADC_SAMPLE
		
		JP			MAIN
;-------------------------------------------

;-------------------------------------------
;函数名称：ADC_SAMPLE
;函数功能：模数转换(ADC)
;入口参数：无
;出口参数：ADRESULTL,ADRESULTH - AD检测结果
;		   
;备注：左对齐，取12位AD，检测10次，去除最大、小值求均值
;-------------------------------------------
ADC_SAMPLE:
		LD			ADTEMPL,A
		RLR			ADTEMPL
		RLA			ADTEMPL
		ORIA		041H						;16分频，8M主频必须选16分频或以上
		LD			ADCON0,A
		LDIA		B'00001101'			;结果左对齐,选择高速时钟，内部2V做AD参考	
		LD			ADCON1,A
		
		LDIA		.25
		LD			TEMP,A
AD_DELAY:
		JP			$+1					;延时100US
		JP			$+1
		JP			$+1
		SZDECR		TEMP	
		
AD_START:
		SETB		ADCON0,1			;AD检测开始		
		CLR			ADTEMPL
AD_WAIT:
		SNZB		ADCON0,1			;等待检测结束
		JP			AD_TEST_OK
		NOP
		NOP
		SZINCR		ADTEMPL				;800us以上检测不到AD结束则直接退出AD检测
		JP			AD_WAIT
		CLR			ADCON0				;关闭AD
		RET
AD_TEST_OK:
		SWAPA		ADRESL				;将检测到的AD值赋给临时寄存器
		ANDIA		0FH						;并移位为高4位，低8位的数据结构
		LD			ADTEMPL,A
		SWAPA		ADRESH
		LD			ADTEMPH,A
		LDIA		0F0H
		ANDA		ADTEMPH
		ADDR		ADTEMPL
		LDIA		0FH
		ANDR		ADTEMPH
		
		LD			A,ADMAXH			;如果AD最大值为0，则把检测到的AD值同时赋给最大最小值
		ORA			ADMAXL
		SNZB		STATUS,Z
		JP			AD_SEND_MAX
		LD			A,ADTEMPL
		LD			ADMAXL,A
		LD			ADMINL,A
		LD			A,ADTEMPH
		LD			ADMAXH,A
		LD			ADMINH,A
		JP			AD_ADD_SUM

AD_SEND_MAX:
		LD			A,ADTEMPH			;将AD值与最大值比较
		SUBA		ADMAXH				;先判断高位
		SNZB		STATUS,Z
		JP			AD_SEND_MAX_1
		LD			A,ADTEMPL			;高位相等则判断低位
		SUBA		ADMAXL
AD_SEND_MAX_1:
		SZB			STATUS,C			;高低位最大值均大于AD值，则跳出去判断最小值
		JP			AD_SEND_MIN
		LD			A,ADTEMPL			;高低位最大值小于AD值，或高位相等，最大值低位小于AD值
		LD			ADMAXL,A			;把AD值赋给最大值
		LD			A,ADTEMPH
		LD			ADMAXH,A
		JP			AD_ADD_SUM
		
AD_SEND_MIN:		
		LD			A,ADMINH			;先判断最小值高位
		SUBA		ADTEMPH
		SNZB		STATUS,Z
		JP			AD_SEND_MIN_1
		LD			A,ADMINL			;高位相等则判断低位
		SUBA		ADTEMPL
AD_SEND_MIN_1:
		SZB			STATUS,C			;高低位最小值均小于等于AD值，则跳出
		JP			AD_ADD_SUM
		LD			A,ADTEMPL			;把AD值赋给最小值
		LD			ADMINL,A
		LD			A,ADTEMPH
		LD			ADMINH,A
		JP			AD_ADD_SUM

AD_ADD_SUM:
		LD			A,ADTEMPL			;计算10次测试AD值之和
		ADDR		ADSUML
		LD			A,ADTEMPH
		ADDCR		ADSUMH
		
		INCR		ADCOUNT				;测试10次则求平均值
		LDIA		0AH
		SUBA		ADCOUNT
		SNZB		STATUS,C
		RET
		
		LD			A,ADMAXL			;AD值之和减去最大值
		SUBR		ADSUML
		LD			A,ADMAXH
		SNZB		STATUS,C
		SZINCA	ADMAXH
		SUBR		ADSUMH
		
		LD			A,ADMINH			;如果减去最大值之后的数值小于最小值，则有可能是干扰
		SUBA		ADSUMH				;此时将AD和清零
		SNZB		STATUS,Z
		JP			AD_JUDGE_MIN_1
		LD			A,ADMINL
		SUBA		ADSUML
AD_JUDGE_MIN_1:
		SNZB		STATUS,C
		JP			AD_CLR_SUM
		LD			A,ADMINL			;AD值之和减去最小值
		SUBR		ADSUML
		LD			A,ADMINH
		SNZB		STATUS,C
		SZINCA	ADMINH
		SUBR		ADSUMH
		JP			AD_AVERAGE

AD_CLR_SUM:
		CLR			ADSUML
		CLR			ADSUMH
		
AD_AVERAGE:
		LDIA		03H
AD_AVERAGE_1:
		CLRB		STATUS,C			;将AD值之和移位3次
		RRCR		ADSUMH
		RRCR		ADSUML
		ADDIA		0FFH
		SNZB		STATUS,Z
		JP			AD_AVERAGE_1
		LD			A,ADSUML			;将平均值赋给ADRESULT
		LD			ADRESULTL,A
		LD			A,ADSUMH
		LD			ADRESULTH,A
		
		CLR			ADSUML				;清零用到检测AD的临时寄存器
		CLR			ADSUMH
		CLR			ADMINL
		CLR			ADMINH
		CLR			ADMAXL
		CLR			ADMAXH
		CLR			ADCOUNT
		RET
				
		