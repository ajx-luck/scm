#ifndef		_VSP_H_
#define		_VSP_H_

#include "config.h"
void vsp();

extern code  u16 Vsp_RpmValueTarget[36];
extern xdata u8  Vsp_LevelValueTarget;
extern xdata u8 Vsp_LevelValueTargetLast;
extern xdata u8  AD_VinValueTarget;
extern xdata u8  displogo ;
extern bit Motor_StartFlags;
#endif