/*

*/
#ifndef	_CHECKTOUCHKEY_H_
#define	_CHECKTOUCHKEY_H_

#include "TouchKeyConst.h"
#pragma warning disable 752,759
//接口函数声明
extern void __CMS_CheckTouchKey(void);		//按键扫描主过程函数,建议在2.5ms~5ms内调用
extern void __CMS_GetTouchKeyValue(void);		//此函数放在中断，建议中断扫描时间125us
extern volatile bit _CMS_b_kerr;				//复位按键标志
//每个按键对应于寄存器的1个位,由高至低一一对应
//_CMS_KeyFlag[0]对应于Key8,...,Key2,Key1
//_CMS_KeyFlag[1]对应于Key16,...,Key10,Key9
//按键有效时相应位为1,无效时为0
extern volatile unsigned char _CMS_KeyFlag[2];
//-------------------------------------------------------
//使用时根据实际硬件连接修改下面这两个数组的内容
//注意数组的大小不能小于检测的按键总数

//检测通道设定,为C_KCHS0至C_KCHS25其中之一
const unsigned char _CMS_Table_KeyChannel[] = {

};

//灵敏度阈值,设定值不可低于20,不能大于1023
const unsigned int _CMS_Table_KeyDown[] = {

};


//-------------------------------------------------------
//-------------------------------------------------------
//-------------------------------------------------------
/*
常规触摸效果参数设置
*/
//待检测按键总数,常量
#define 	C_KEY_TOTAL		4//最多支持16通道

//按键按下消抖次数C_KEY_SHAKE
#define		C_KEY_SHAKE		2//2~8

//噪声阈值
#define		VOL_VALUE		25			//无干扰下的最大触摸波动值*2,范围25~127

//迟滞值
#define		SLU_VALUE		12			//手指按下和放开切换的消抖值,此值需小于等于VOL_VALUE/2,范围1~127

//触摸基准值更新消抖次数
#define		CM_BASE			10			//消抖时间约为(主程序调用时间4ms*2 + 按键个数*1.5) * CM_BASE,范围6~127

//同时最大允许有效按键数,超过该值将认为是干扰,范围1~16
#define		C_VALID_KEY		2

//按键最大允许生效时间,以扫描时间（例如4ms）为基准换算,为0时将忽略,范围0~65535
#define		C_VALID_TIME	(1000/4)*20//20S

//灵敏度档位
#define 	LMDVALUE		1//0~1,越大越灵敏,为1时注意噪声值以及触摸基准值

//内部串电阻
#define		KEY_EN1KRES		0//0~1







/*-------------------------------------------------------
以下数据通常情况下不用修改
-------------------------------------------------------*/
//异常判断使能，当TK值异常重新进行自适应
#define		UNNOL_CHECK		1//0~1
//异常判断自恢复次数，超过则不再进行自恢复
#define		UNNOL_TIMES		100//1~100

//检测电压
#define 	KEY_LDOSEL		4//0~7

//频率键值,调试用
#define 	CMS_KEY_DISP	0//0~1
/***********************************************************
下面的内容请勿修改
***********************************************************/
const unsigned char _CMS_KeyTNumber = C_KEY_TOTAL;
const unsigned char _CMS_KeyShakeC = C_KEY_SHAKE;
const unsigned char _CMS_VolValue = VOL_VALUE;
const unsigned char _CMS_SluValue = SLU_VALUE;
const unsigned char _CMS_CmBase = CM_BASE;
const unsigned char _CMS_KeyValidC = C_VALID_KEY;
const unsigned int  _CMS_KeyValidT = C_VALID_TIME;
//-------------------------------------------------------
const unsigned char _CMS_UnNolCheck = UNNOL_CHECK;
const unsigned char _CMS_UnNolTimes = UNNOL_TIMES;
const unsigned char _CMS_LMDValue = LMDVALUE;
const unsigned char _CMS_KeyLDOSel = KEY_LDOSEL;
const unsigned char _CMS_KeyEn1kres = KEY_EN1KRES;
const unsigned char _CMS_KeyDisp = CMS_KEY_DISP;

unsigned int _CMS_DispKeyDown[C_KEY_TOTAL];
unsigned int _CMS_DispKeyDownPro[C_KEY_TOTAL];
unsigned int _CMS_NoiseDat[C_KEY_TOTAL];
unsigned int _CMS_FactorRawDat[C_KEY_TOTAL];
//--------------------------------------------------
#endif





