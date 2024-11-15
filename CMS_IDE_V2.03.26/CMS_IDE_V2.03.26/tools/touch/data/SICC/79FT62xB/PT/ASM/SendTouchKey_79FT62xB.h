
#ifndef	_SENDTOUCHKEY_79FT62XB_H_
#define	_SENDTOUCHKEY_79FT62XB_H_


;**************************************************************************
;**************************���Ͳ�������************************************
;************************************************************************** 
;ͨѶ�ܽŶ���
#if (CMS_DEBUG_MODE == 1)
IIC_SCL			EQU			PORTA,2			;IICͨѶ������ʱ�ӿڼ�����
IIC_SDA			EQU			PORTA,0
IIC_SCL_IO		EQU			TRISA,2
IIC_SDA_IO		EQU			TRISA,0
#endif

;**************************************************************************
;**************************�������������޸�********************************
;************************************************************************** 
;������������ѡ��
	#define			SEND_ID			7		;EMC�ⷢ��ģʽ�����8
	#define			DATA_SIZE		6		;���������ֽ�


;�������ݳ��ȶ���
	#define			DATA_INTERVAL	2		;�������ݼ��
#if (C_KCOUNT % DATA_INTERVAL)				;������
	#define			LAST_NUMBER		(C_KCOUNT % DATA_INTERVAL)					;��������
	#define			FRAME_SIZE		((C_KCOUNT - LAST_NUMBER)/DATA_INTERVAL)	;����֡����
#else										;������
	#define			LAST_NUMBER		DATA_INTERVAL	
	#define			FRAME_SIZE		(C_KCOUNT/DATA_INTERVAL - 1)
#endif

	#define			DATA_MAXIMUM	(5 + DATA_INTERVAL*DATA_SIZE + 1)		;���η�����������ֽ���(����ͷ+��������+У����)
	#define			DATA_MINIMUM	(5 + LAST_NUMBER*DATA_SIZE + 1)			;���η���������С�ֽ���(����ͷ+��������+У����)

;------------------------------------------------
;-----------------���ܼĴ�������-----------------
;------------------------------------------------
#if (CMS_DEBUG_MODE == 1)
_FLAG			EQU			?
_F_ACK			EQU			_FLAG,0			;Ӧ���־
_F_DELAY		EQU			_FLAG,1			;���͵ȴ���־
;-----------------��������״̬-----------------
TK_CHECKSUM_L	EQU			?				;����У��͵Ͱ�λ	
TK_CHECKSUM_H	EQU			?				;����У��͸߰�λ			
DATA_MASK		EQU			?				;��������
DATA_LENGTH		EQU			?				;���ݳ���
FRAME_NUMBER	EQU			?				;��ǰ֡��
DATA_NUMBER		EQU			?				;��ǰ������������
SEND_NUMBER		EQU			?				;��ǰ�������ݱ��
SURPLUS_NUMBER	EQU			?				;ʣ�෢����������
;-----------------�������ݻ���-----------------
SEND_DATA0L		EQU			?				;��������0��λ
SEND_DATA0H		EQU			?				;��������0��λ
#endif

#endif