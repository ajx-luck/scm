#include "WHQ_Sender.h"
#include <stdlib.h>
#include "WHQ_TP_ZPGS.h"
#include "CMWater.h"

#define FOG_TYPE_ID_USE	0x05	
typedef struct _FogPack
{
	u16 current;			//����ֵ
	u16 frequency;			//Ƶ��ֵ
	u16 radio;				//б��ֵ
	u16 watVal;				//ˮλ����ֵ
	u16 watBase;			//������׼ֵ
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
	packStruct.watVal = wat_ram;
	packStruct.watBase = wat_base;
	
	// ��������
	REL_SendStart(packHeader);
	REL_SendNext(packStruct);
	REL_SendEnd();
}
