#include "WHQ_Sender.h"
#include <stdlib.h>
#include "WHQ_TP_ZPGS.h"
#include "CMWater_SP.h"

#if (WHQ_SENDER_ENABLE == 1)

#define FOG_TYPE_ID_USE	0x04	
typedef struct _FogPack
{
	u16 current;			//����ֵ
	u16 frequency;			//Ƶ��ֵ
	u16 radio;				//б��ֵ
}FogPack;

void WHQ_SenderLoop()
{
	// �����ڷ���,���ⷢ�͹���
	static bit bSend;
	bSend = ~bSend;
	if(bSend == 0) return;
	
	PackHeader packHeader;
	FogPack packStruct;
	// ���ͷ��
	packHeader.length = sizeof(packHeader) + sizeof(packStruct) + 1;
	packHeader.m.typeId = FOG_TYPE_ID_USE;
	packHeader.m.packIdxMax = 0;
	packHeader.m.packIdx = 0;
	
	// ��䷢����Ϣ
	packStruct.current = cur_addat;
	packStruct.frequency = pwmdisp;
	packStruct.radio = xldisp;
	
	// ��������
	REL_SendStart(packHeader);
	REL_SendNext(packStruct);
	REL_SendEnd();
}

#elif (WHQ_SENDER_ENABLE == 2)

#define REL_TYPE_ID_USE 0x09

typedef struct _PackStrcut
{
 u16 checkData;     //���ֵ
}PackStrcut;

#define PACK_SEND_COUNT_ONCE	2

#if (Real_NUM % PACK_SEND_COUNT_ONCE)
	#define PACK_IDX_MAX 			(Real_NUM / PACK_SEND_COUNT_ONCE)
	#define PACK_SEND_COUNT_FINAL	(Real_NUM % PACK_SEND_COUNT_ONCE)
#else
	#define PACK_IDX_MAX 			((Real_NUM-1) / PACK_SEND_COUNT_ONCE)
	#define PACK_SEND_COUNT_FINAL	PACK_SEND_COUNT_ONCE
#endif

void WHQ_SenderLoop()
{
	static bit bSend = 0;
	bSend = ~bSend;
	if(bSend == 0) return;	
	
	static u8 curIdx = 0;
	static u8 packIdx = 0;
	
	u8 thisSendCount;	
	PackHeader packHeader;
	PackStrcut packStrcut;
	
	// ��дͷ������
	packHeader.m.typeId = REL_TYPE_ID_USE;
	packHeader.m.packIdxMax = PACK_IDX_MAX;
	packHeader.m.packIdx = packIdx;
	
	if(packIdx == PACK_IDX_MAX)
	{
		thisSendCount = PACK_SEND_COUNT_FINAL;
		packHeader.length = sizeof(packHeader) + sizeof(packStrcut) * PACK_SEND_COUNT_FINAL + 1;
	}
	else
	{
		thisSendCount = PACK_SEND_COUNT_ONCE;
		packHeader.length = sizeof(packHeader) + sizeof(packStrcut) * PACK_SEND_COUNT_ONCE + 1;
	}
	
	// ��ʼ����
	REL_SendStart(packHeader);
	do
	{
		packStrcut.checkData = CMWater_ram[curIdx];				
			
		REL_SendNext(packStrcut);	
		thisSendCount--;
		curIdx++;		
	}while(thisSendCount != 0);
	REL_SendEnd();	
	
	// �Ƿ����һ��
	if(packIdx == PACK_IDX_MAX)
	{
		packIdx = 0;
		curIdx = 0;
	}
	else
	{
		packIdx++;
	}
}
#endif
