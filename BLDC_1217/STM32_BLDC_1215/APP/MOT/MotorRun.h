#ifndef __MOTORRUN_H_
#define __MOTORRUN_H_
#include "system.h"
#include "stm32f10x.h"  //包含需要的头文件
#ifndef TRUE
#define TRUE  1
#endif

#ifndef FALSE
#define FALSE 0
#endif

#define 	hs1_pin			PBin(8)
#define 	hs2_pin			PAin(11)
#define 	hs3_pin			PBin(12)

#define AL 	PBout(13)
#define BL 	PBout(14)
#define CL 	PBout(15)


enum    PARA_ID
{
  E_MOTOR_STOP=0,
  E_MOTOR_INIT,
  E_MOTOR_START,
  E_MOTOR_STILL,      //第一步给定速度后 电机堵住 没启动 需不断加力
  E_MOTOR_RUN,
  E_MOTOR_ERROR,
  E_MOTOR_DIRECTION,
  E_MOTOR_STALL,
  E_MOTOR_BRAKE,
};

enum  PHASE_STEP
{
   PHASE_STEP1=0,
   PHASE_STEP2,//  1
   PHASE_STEP3, // 2
   PHASE_STEP4, // 3
   PHASE_STEP5, // 4
   PHASE_STEP6, // 5
   PHASE_ERROR,  // 6   
};

extern u16 MOTE_PWM_SET;			//PWM值
extern u8   motorState;
extern u8   motorRunDirection; // 0x00-reverse--CCW  0xff-forward-CW

extern u8   hallStep;
extern u8   hallStepLast;
extern u8   hallStepNew;

extern u8   phaseStep;
extern u8   phaseStepBak;
extern u8   motorStatus;
extern u8	moto_err_time_flag;
extern u16	moto_err_time;	
extern u8	moto_run_err;


#define     E_MOTOR_OFF       0
#define     E_MOTOR_ON        1



u8 ReadHallPin(void);
void UH_VL(void);
void UH_WL(void);
void VH_UL(void);
void VH_WL(void);
void WH_UL(void);
void WH_VL(void);
void CLOSE_PWM(void);
void Commutation(void);
void   GetHallState(void);
u8   SensorMotorRun(void);
extern u16 MOTE_PWM_SET;

#endif
