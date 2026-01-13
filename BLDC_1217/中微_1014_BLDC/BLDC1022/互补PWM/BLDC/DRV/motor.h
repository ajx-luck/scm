void motor_run();
void UPWM_VL(void);
void UPWM_WL(void);
void VPWM_WL(void);
void VPWM_UL(void);
void WPWM_UL(void);
void WPWM_VL(void);
extern code u8 Motor_BemfHighLevelCnt[256];
extern bit Motor_FRFlags;
extern bit Motor_StartFlags;
extern bit Motor_KeepOnFlags;
extern bit Motor_FRFlagsTemp;
extern bit Motor_RestartFlags;		
extern bit Motor_RunErrorFlags;
extern bit Motor_StopTempFlags;
extern bit Motor_BemfErrorFlags;
extern bit Motor_MotorErrorFlags;
extern bit Motor_RestartStopFlags;
extern bit Motor_CurrentErrorFlags;
extern xdata u8  Motor_PidTime;
extern xdata s16 Motor_TargetPwm;
extern xdata u8  Motor_RestartCnt;
extern xdata u16 Motor_RestartTime;
extern xdata u16 Motor_SpeedValueNow;
extern xdata u8  Motor_RestartTime1ms;	
extern xdata s16 Motor_SpeedValueError;
extern xdata u16 Motor_SpeedValueTarget;
extern xdata u16 Motor_SpeedValueNowTime;
extern xdata u16 Motor_SpeedValueTargetTemp;
extern xdata u8  Motor_SpeedValueTargetTime;
extern s16 Motor_RealPwm;
extern u16 Motor_BrakeTime;
extern u16 Motor_StartForceTime;
extern u16 Motor_SpeedValueBase;
extern u16 Motor_KeepOnCheckTime;

typedef enum 
{
	Motor_Mode_Stop = 0,			//停机/重启
	Motor_Mode_StartInit,			//启动初始化
	Motor_Mode_KeepON,				//续转
	Motor_Mode_Start,					//启动
	Motor_Mode_Run,						//正常运行
	Motor_Mode_Brake,					//制动
}motor_mode;
extern motor_mode Motor_Mode;

#define PAIRS								1				//对  电机的极对数
#define BRAKETIME						2000		//ms	电机刹车
#define DELAYTIME						30			//次  DELAYTIME*20us
#define STARTBEMFSTATECNT   10			//次  检测周期为200us 期间检测反电动势状态
#define STARTBEMFSTATEHCNT	7				//次  大于8次则本次高电平占主导
#define STARTBEMFSTATELCNT	3				//次  小于2次则本次低电平占主导

//#define KP					(float) 0.070
//#define KI					(float) 0.004
//#define KD					(float) 0.000

#define     PIN_HS_1         P31
#define     PIN_HS_2         P32
#define     PIN_HS_3         P01
