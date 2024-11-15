#include "WHQ_Sender.h"
#include <stdlib.h>
#include "WHQ_TP_ZPGS.h"
#include "CMWater.h"

#define FOG_TYPE_ID_USE	0x05	
typedef struct _FogPack
{
	u16 current;			//电流值
	u16 frequency;			//频率值
	u16 radio;				//斜率值
	u16 watVal;				//水位触摸值
	u16 watBase;			//触摸基准值
}FogPack;

void WHQ_SenderLoop()
{
	// 隔周期发送,避免发送过快
	static bit bSend;
	bSend = ~bSend;
	if(bSend == 0) return;
	
	PackHeader packHeader;
	FogPack packStruct;
	// 填充头部
	packHeader.length = sizeof(packHeader) + sizeof(packStruct) + 1;
	packHeader.m.typeId = FOG_TYPE_ID_USE;
	packHeader.m.packIdxMax = 0;
	packHeader.m.packIdx = 0;
	
	// 填充发送信息
	packStruct.current = cur_addat;
	packStruct.frequency = pwmdisp;
	packStruct.radio = xldisp;
	packStruct.watVal = wat_ram;
	packStruct.watBase = wat_base;
	
	// 发送数据
	REL_SendStart(packHeader);
	REL_SendNext(packStruct);
	REL_SendEnd();
}
