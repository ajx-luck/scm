
#ifndef	_SENDTOUCHKEY_79F72X_H_
#define	_SENDTOUCHKEY_79F72X_H_


;**************************************************************************
;**************************发送参数配置************************************
;************************************************************************** 
;通讯管脚定义
#if (CMS_DEBUG_MODE == 1)
IIC_SCL			EQU			PORTD,0			;IIC通讯的数据时钟口及方向
IIC_SDA			EQU			PORTD,1
IIC_SCL_IO		EQU			TRISD,0
IIC_SDA_IO		EQU			TRISD,1
#endif

;**************************************************************************
;**************************以下内容请勿修改********************************
;************************************************************************** 
;发送数据类型选择
	#define			SEND_ID			7		;EMC库发送模式，编号7
	#define			DATA_SIZE		6		;发送数据字节


;发送数据长度定义
	#define			DATA_INTERVAL	2		;发送数据间隔
#if (C_KCOUNT % DATA_INTERVAL)				;有余数
	#define			LAST_NUMBER		(C_KCOUNT % DATA_INTERVAL)					;余数个数
	#define			FRAME_SIZE		((C_KCOUNT - LAST_NUMBER)/DATA_INTERVAL)	;定义帧总数
#else										;无余数
	#define			LAST_NUMBER		DATA_INTERVAL	
	#define			FRAME_SIZE		(C_KCOUNT/DATA_INTERVAL - 1)
#endif

	#define			DATA_MAXIMUM	(5 + DATA_INTERVAL*DATA_SIZE + 1)		;单次发送数据最大字节数(数据头+按键数据+校验码)
	#define			DATA_MINIMUM	(5 + LAST_NUMBER*DATA_SIZE + 1)			;单次发送数据最小字节数(数据头+按键数据+校验码)

;------------------------------------------------
;-----------------功能寄存器定义-----------------
;------------------------------------------------
#if (CMS_DEBUG_MODE == 1)
_FLAG			EQU			?
_F_ACK			EQU			_FLAG,0			;应答标志
_F_DELAY		EQU			_FLAG,1			;发送等待标志
;-----------------发送数据状态-----------------
TK_CHECKSUM_L	EQU			?				;数据校验和低八位	
TK_CHECKSUM_H	EQU			?				;数据校验和高八位			
DATA_MASK		EQU			?				;数据掩码
DATA_LENGTH		EQU			?				;数据长度
FRAME_NUMBER	EQU			?				;当前帧号
DATA_NUMBER		EQU			?				;当前发送数据类型
SEND_NUMBER		EQU			?				;当前发送数据编号
SURPLUS_NUMBER	EQU			?				;剩余发送数据数量
;-----------------发送数据缓存-----------------
SEND_DATA0L		EQU			?				;发送数据0低位
SEND_DATA0H		EQU			?				;发送数据0高位
#endif

#endif