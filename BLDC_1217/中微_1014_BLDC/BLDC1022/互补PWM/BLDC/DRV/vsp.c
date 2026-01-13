#include "vsp.h"


void vsp()
{

	if(AD_VspValue>200)  	
	{
		Motor_StartFlags = 1;//置标志位准备启动
		
		Motor_SpeedValueTargetTemp =  AD_VspValue*0.292;
	}
	else
	{
		Motor_StartFlags = 0;
		Motor_KeepOnFlags = 1;
		Motor_RestartFlags = 0;
		Motor_RunErrorFlags = 0;
		Motor_BemfErrorFlags = 0;
		Motor_MotorErrorFlags = 0;
		Motor_RestartStopFlags = 0;
		Motor_CurrentErrorFlags = 0;
		Motor_SpeedValueTarget = 0;
		Motor_SpeedValueTargetTemp = 0;
	}
}
