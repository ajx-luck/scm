#include "config.h"

//一定时间内 反电动势表现出的高电平时间 结合导通相由此判断此时电机处于过零前或过零后
code u8 Motor_BemfHighLevelCnt[256] = 
{
	0,1,1,2,1,2,2,3,1,2,2,3,2,3,3,
	4,1,2,2,3,2,3,3,4,2,3,3,4,3,4,
	4,5,1,2,2,3,2,3,3,4,2,3,3,4,3,
	4,4,5,2,3,3,4,3,4,4,5,3,4,4,5,
	4,5,5,6,1,2,2,3,2,3,3,4,2,3,3,
	4,3,4,4,5,2,3,3,4,3,4,4,5,3,4,
	4,5,4,5,5,6,2,3,3,4,3,4,4,5,3,
	4,4,5,4,5,5,6,3,4,4,5,4,5,5,6,
	4,5,5,6,5,6,6,7,1,2,2,3,2,3,3,
	4,2,3,3,4,3,4,4,5,2,3,3,4,3,4,
	4,5,3,4,4,5,4,5,5,6,2,3,3,4,3,
	4,4,5,3,4,4,5,4,5,5,6,3,4,4,5,
	4,5,5,6,4,5,5,6,5,6,6,7,2,3,3,
	4,3,4,4,5,3,4,4,5,4,5,5,6,3,4,
	4,5,4,5,5,6,4,5,5,6,5,6,6,7,3,
	4,4,5,4,5,5,6,4,5,5,6,5,6,6,7,
	4,5,5,6,5,6,6,7,5,6,6,7,6,7,7,
	8
};
motor_mode 	Motor_Mode = Motor_Mode_Stop;
u8      code    HallStep_CCW[]={7,4,0,5,2,3,1,7};
u8      code    HallStep_CW[]  ={7,1,3,2,5,0,4,7};  // sanyang
u8   xdata     hallStepLast=0;
u8   xdata     hallStepNew=0;

bit Motor_FRFlags = 0;											//电机正反转标志
bit Motor_FRFlagsTemp = 0;									//临时值
bit Motor_ComputeFlags = 0;									//下次中断进行数据计算 将任务分多次进行
u8 xdata  Motor_StepCnt = 0;											//电机运行步数
u8 xdata  Motor_MotorErrorCnt = 0;		 		  			//检测电机是否连接正常次数
s8  xdata Motor_Locate = 0;												//电机当前位置
//反电动势检测
bit Motor_BemfEdgeStateNext = 0;						//下一次过零检测需要的边沿状态  0需要下降沿   1需要上升沿
s8 xdata  Motor_BemfEdgeStateNow = 0;			  			//反电动势当前的状态 -1尚未检测 0检测到下降沿 1检测到上升沿 2检测完成并正确
u16 xdata Motor_BemfTime15 = 0;										//反电动势15°电角度时间
u16 xdata Motor_BemfTime30 = 0;										//反电动势30°电角度时间	
u16 xdata Motor_BemfTime60 = 0;										//反电动势60°电角度时间
u16 xdata Motor_BemfTime60Temp = 0;								//反电动势60°电角度时间对应的寄存器数值 参与时间运算
u16 xdata Motor_BemfTime60Cnt[3] = 0;							//滤波
u16 xdata Motor_BemfTime60Sum = 0;								//60°电角度累加和
u16 xdata Motor_BemfTimeError = 0;								//正常的反电动势倒计时检测时间 在自减为零之前如果没有更新此值则出错
//异常标志
bit Motor_StartFlags = 0;										//电机启动标志
bit Motor_StopTempFlags = 0;								//电机暂停标志
bit Motor_RunErrorFlags = 0;								//电机运行异常标志
bit Motor_BemfErrorFlags = 0;								//电机反电动势检测异常
bit Motor_MotorErrorFlags = 0;							//电机连接线检测异常
bit Motor_CurrentErrorFlags = 0;						//电机短路异常
//暂停
bit Motor_RestartFlags = 0;									//电机需要重启标志 
bit Motor_RestartStopFlags = 0;							//电机停止重启标志 
xdata u8  Motor_RestartCnt = 0;							//电机重启次数
xdata u16 Motor_RestartTime = 0;						//电机重启时间
xdata u8  Motor_RestartTime1ms = 0;					//电机重启时间1ms基数
//续转
bit Motor_KeepOnFlags = 0;									//续转启动标志
u16 Motor_KeepOnCheckTime = 0;							//电机续转最大检测时间
u8  Motor_KeepOnState = 0;									//电机续转当前位置
u8  Motor_KeepOnStateLast = 0;							//电机续转上一次位置
u8  Motor_KeepOnStateTemp[6] = 0;						//连续记录6次位置	
//启动
bit Motor_StartBemfStateFlags = 0;					//本次检测占主导的反电动势状态 0为低电平占主导 1为高电平占主导
bit Motor_StartBemfStateFlagsLast = 0;
xdata u8  Motor_StartForceCnt = 0;					//启动阶段强制换相次数
u16 Motor_StartForceTime = 0;			  				//启动阶段强制换相时间间隔
u16 Motor_StartForceTimeNext = 0;			  		//启动阶段强制换相时间间隔
u8  Motor_StartDelayTime = 0;							  //启动阶段两次检测周期的间隔时间
u8  Motor_StartStepOkCnt = 0;								//启动阶段换相正确次数
u8  Motor_StartBemfStateCnt = 0;						//一个检测周期内检测反电动势状态的次数
u8  Motor_StartBemfStateHigh = 0;						//一个检测周期内检测反电动势状态为高电平的次数
u16 Motor_StartBemfState = 0;								//启动阶段周期性的检测一段时间内反电动势状态 只取最新16次 0=低电平 1=高电平
//运行
bit Motor_SpeedValueOverFlags = 0;					//速度采样过低 寄存器溢出
u16 Motor_SpeedValueBase = 0;								//电机转过60度电角度的时间 以此为基准计算转速 此为寄存器值
u32 Motor_SpeedValueNowTemp = 0;						//电机当前转速值对应的寄存器数值滤波后的值 参与转速运算
u32 Motor_SpeedValueTemp[8] = 0;						//连续8次值
u8  Motor_GetSpeedCnt = 0;									//获取连续8次的转速值计数
xdata u16 Motor_SpeedValueNow = 0;					//电机当前转速值
xdata u16 Motor_SpeedValueNowTime = 0;			//计算转速值的周期
xdata u16 Motor_SpeedValueTarget = 0;				//电机目标转速值
xdata u16 Motor_SpeedValueTargetTemp = 0;		//电机目标转速值 应用于缓加缓减
xdata u8  Motor_SpeedValueTargetTime = 0;		//电机目标转速改变周期
//计算PWM
u16	Motor_SetPwmTime = 0;										//PWM调整周期
xdata u8  Motor_PidTime = 0;								//PID计算周期
xdata s16 Motor_SpeedValueError = 0;				//电机当前转速与目标转速之间的差值 参与PID运算
xdata s16 Motor_SpeedValueErrorCnt[3] = 0;	//误差值滤波
xdata f16 Motor_SpeedValueErrorOut = 0;			//PID输出值
xdata u16 Motor_Op1oValueError = 0;					//电机超过规定电流则降低PWM
xdata u16 Motor_ForceImprove = 0;						//转速过低时快速增加PWM提速
s16	Motor_RealPwm = 0;											//当前PWM实际输出值
xdata s16	Motor_TargetPwm = 0;							//计算后目标PWM值
//刹车
u16 Motor_BrakePwm = 0;											//电机刹车时的PWM
u16 Motor_BrakeTime = 0;										//电机刹车时PWM的变化间隔
u16 Motor_BrakeTimeTarget = 0;							//电机刹车时不同挡位目标时间
void UPWM_VL(void)
{
    PWMMASKE = 0x34;
    PWMD0H = Motor_RealPwm>>8;	PWMD0L = Motor_RealPwm;	
    PWMD2H = 0;	PWMD2L = 0;	
	PWMLOADEN = 0x05;	//数据加载
}
void UPWM_WL(void)
{
    PWMMASKE = 0x1C;
    PWMD0H = Motor_RealPwm>>8;	PWMD0L = Motor_RealPwm;	
    PWMD4H = 0;	PWMD4L =0;	
	PWMLOADEN = 0x11;	//数据加载
}
void VPWM_WL(void)
{
    PWMMASKE = 0x13;
    PWMD2H = Motor_RealPwm>>8;	PWMD2L = Motor_RealPwm;	
    PWMD4H = 0;	PWMD4L = 0;	
	PWMLOADEN = 0x14;	//数据加载
}
void VPWM_UL(void)
{
    PWMMASKE = 0x31;
    PWMD2H = Motor_RealPwm>>8;	PWMD2L = Motor_RealPwm;	
    PWMD0H = 0;	PWMD0L = 0;	
	PWMLOADEN = 0x05;	//数据加载
}
void WPWM_UL(void)
{
    PWMMASKE = 0x0D;
    PWMD4H = Motor_RealPwm>>8;	PWMD4L = Motor_RealPwm;	
    PWMD0H = 0;	PWMD0L = 0;	
	PWMLOADEN = 0x11;	//数据加载
}
void WPWM_VL(void)
{
    PWMMASKE = 0x07;
    PWMD4H = Motor_RealPwm>>8;	PWMD4L = Motor_RealPwm;	
    PWMD2H = 0;	PWMD2L = 0;	
	PWMLOADEN = 0x14;	//数据加载
}
void motor_pid(u8 time, float kp, float ki, float kd, s16 out)
{
	if((Motor_PidTime >= time) && (Motor_StepCnt > 6))
	{
		Motor_PidTime = 0;
			
		Motor_SpeedValueError = Motor_SpeedValueTarget - Motor_SpeedValueNow;
		Motor_SpeedValueErrorCnt[2] = Motor_SpeedValueErrorCnt[1];
		Motor_SpeedValueErrorCnt[1] = Motor_SpeedValueErrorCnt[0];
		Motor_SpeedValueErrorCnt[0] = Motor_SpeedValueError;
		Motor_SpeedValueErrorOut = (f16)(kp * (Motor_SpeedValueErrorCnt[0] - Motor_SpeedValueErrorCnt[1]) 
																	 + ki * (Motor_SpeedValueErrorCnt[0])
																	 + kd * (Motor_SpeedValueErrorCnt[0] + Motor_SpeedValueErrorCnt[2] - 2*Motor_SpeedValueErrorCnt[1]));
		if(Motor_SpeedValueErrorOut > out)
			Motor_SpeedValueErrorOut = out;
		if(Motor_SpeedValueErrorOut < -out)
			Motor_SpeedValueErrorOut = -out;
		
//		if(AD_Op1oValue > AD_Op1oValueMax) //平均电流
//			Motor_Op1oValueError++;
		else
		{
			Motor_Op1oValueError = 0;
			if(Motor_Op1oValueError)
				Motor_Op1oValueError--;
		}
		
		Motor_TargetPwm += Motor_SpeedValueErrorOut - Motor_Op1oValueError;
	}
	
	if(Motor_TargetPwm < 30)
		Motor_TargetPwm = 30;
	if(Motor_TargetPwm > PWMT)
		Motor_TargetPwm = PWMT;
		Motor_TargetPwm = 50;
}

void motor_getspeed()
{		
	if(Motor_SpeedValueOverFlags)
	{
		Motor_SpeedValueOverFlags = 0;
		Motor_SpeedValueNow = 0;
		TH3	=	0x00;						
		TL3 = 0x00;	
	}
	else
	{
		Motor_SpeedValueBase = (TH3<<8) + TL3; //us
		TH3	=	0x00;						
		TL3 = 0x00;	
	}
}

void motor_setpwm(u16 pwm)
{
	Motor_RealPwm = pwm;
	
	if(Motor_RealPwm <= 30)
		Motor_RealPwm = 30;
	if(Motor_RealPwm >= PWMT)
		Motor_RealPwm = PWMT;
}
#if 0
void motor_checkkeepon()
{//132645
//AB A AC C BC B 315462
//AB AC BC BA CA CB
	Motor_KeepOnState = 0;
	C1CON2 = 0x08;
	
	C1CON0 = 0x80;						//C			
	_nop_x;
	if(C1CON1 & 0x80)
		Motor_KeepOnState |= 1<<2;
	
	C1CON0 = 0x81;						//B			
	_nop_x;
	if(C1CON1 & 0x80)
		Motor_KeepOnState |= 1<<1;
	
	C1CON0 = 0x82;						//A			
	_nop_x;
	if(C1CON1 & 0x80)
		Motor_KeepOnState |= 1<<0;
	
	C1CON2 = 0x18;
}	

void motor_checkbemf()
{
//AB AC BC BA CA CB
	if(Motor_BemfEdgeStateNow < 0)			
	{
		if(Motor_BemfEdgeStateNext)
		{
			if(C1CON1 & 0x80)
				Motor_BemfEdgeStateNow = 1;
			else
			{
				if(Motor_BemfTimeError)
					Motor_BemfTimeError--;
			}
		}
		else
		{
			if(C1CON1 & 0x80)
			{
				if(Motor_BemfTimeError)
					Motor_BemfTimeError--;
			}
			else
				Motor_BemfEdgeStateNow = 0;
		}
	}
}

void motor_getbemftime()
{	
	Motor_BemfTime60Sum 	 = Motor_BemfTime60Cnt[2] 
												 + Motor_BemfTime60Cnt[1] 
												 + Motor_BemfTime60Cnt[0] 
												 + Motor_BemfTime60Temp;
	
	Motor_BemfTime60Cnt[2] = Motor_BemfTime60Cnt[1];
	Motor_BemfTime60Cnt[1] = Motor_BemfTime60Cnt[0];
	Motor_BemfTime60Cnt[0] = Motor_BemfTime60Temp;
	Motor_BemfTime60Temp = 0;
	
	Motor_BemfTime60 = Motor_BemfTime60Sum >> 2;
	Motor_BemfTimeError = Motor_BemfTime60 << 2;
	Motor_BemfTime30 = Motor_BemfTime60 >> 2;
	Motor_BemfTime15 = Motor_BemfTime30;
}
#else
u8  ReadHallPin(void)
{
	u8   hallState=0;
	if(PIN_HS_1)	
	{
		hallState+=4; 
	}
		
	if(PIN_HS_2)	
	{
		hallState+=1; 
	}
	
	if(PIN_HS_3)	
	{
		hallState+=2; 
	}
	return  hallState;	   
}
#endif

#if 0
void motor_steps()
{
	motor_getspeed();
	switch(Motor_Locate)
	{
		case 1 :  {//AB
								UPWM_VL();
								C1CON0 = 0x80;		
								if(Motor_FRFlags)
									Motor_BemfEdgeStateNext = 0;
								else
									Motor_BemfEdgeStateNext = 1;
								Motor_BemfEdgeStateNow = -1;
							}break;
		case 2 :	{//AC
								UPWM_WL();
								C1CON0 = 0x81;	
								if(Motor_FRFlags)
									Motor_BemfEdgeStateNext = 1;
								else
									Motor_BemfEdgeStateNext = 0;
								Motor_BemfEdgeStateNow = -1;	
							}break;
		case 3 :	{//BC
								VPWM_WL();
								C1CON0 = 0x82;		
								if(Motor_FRFlags)
									Motor_BemfEdgeStateNext = 0;
								else
									Motor_BemfEdgeStateNext = 1;
								Motor_BemfEdgeStateNow = -1;	
							}break;
		case 4 :	{//BA		
								VPWM_UL();
								C1CON0 = 0x80;	
								if(Motor_FRFlags)
									Motor_BemfEdgeStateNext = 1;
								else
									Motor_BemfEdgeStateNext = 0;
								Motor_BemfEdgeStateNow = -1;		
							}break;
		case 5 :	{//CA		
								WPWM_UL();
								C1CON0 = 0x81;	
								if(Motor_FRFlags)
									Motor_BemfEdgeStateNext = 0;
								else
									Motor_BemfEdgeStateNext = 1;
								Motor_BemfEdgeStateNow = -1;	
							}break;
		case 6 :	{//CB	
								WPWM_VL();
								C1CON0 = 0x82;	
								if(Motor_FRFlags)
									Motor_BemfEdgeStateNext = 1;
								else
									Motor_BemfEdgeStateNext = 0;
								Motor_BemfEdgeStateNow = -1;	
							}break;
		default:	{
								ABCOFF;
								Motor_BemfEdgeStateNow = -1;
							}break;
	}
}
#else 
void motor_steps()
{
//	motor_getspeed();
//	Motor_Locate++;
//	if(Motor_Locate>=7)
//	{
//		Motor_Locate=1;
//	}
	switch(Motor_Locate)
	{
		case 0 :  {//AB
								UPWM_VL();
//								C1CON0 = 0x80;		
//								if(Motor_FRFlags)
//									Motor_BemfEdgeStateNext = 0;
//								else
//									Motor_BemfEdgeStateNext = 1;
//								Motor_BemfEdgeStateNow = -1;
							}break;
		case 1 :	{//AC
								UPWM_WL();
//								C1CON0 = 0x81;	
//								if(Motor_FRFlags)
//									Motor_BemfEdgeStateNext = 1;
//								else
//									Motor_BemfEdgeStateNext = 0;
//								Motor_BemfEdgeStateNow = -1;	
							}break;
		case 2 :	{//BC
								VPWM_WL();
//								C1CON0 = 0x82;		
//								if(Motor_FRFlags)
//									Motor_BemfEdgeStateNext = 0;
//								else
//									Motor_BemfEdgeStateNext = 1;
//								Motor_BemfEdgeStateNow = -1;	
							}break;
		case 3 :	{//BA		
								VPWM_UL();
//								C1CON0 = 0x80;	
//								if(Motor_FRFlags)
//									Motor_BemfEdgeStateNext = 1;
//								else
//									Motor_BemfEdgeStateNext = 0;
//								Motor_BemfEdgeStateNow = -1;		
							}break;
		case 4 :	{//CA		
								WPWM_UL();
//								C1CON0 = 0x81;	
//								if(Motor_FRFlags)
//									Motor_BemfEdgeStateNext = 0;
//								else
//									Motor_BemfEdgeStateNext = 1;
//								Motor_BemfEdgeStateNow = -1;	
							}break;
		case 5:	{//CB	
								WPWM_VL();
//								C1CON0 = 0x82;	
//								if(Motor_FRFlags)
//									Motor_BemfEdgeStateNext = 1;
//								else
//									Motor_BemfEdgeStateNext = 0;
//								Motor_BemfEdgeStateNow = -1;	
							}break;
		default:	{
								ABCOFF;
//								Motor_BemfEdgeStateNow = -1;
							}break;
	}
}
#endif
#if 0	
void motor_run()
{
	
	//出现任何故障则总故障标志置1 基准电流错误 反电动势检测错误 电机没插
//	if(Motor_CurrentErrorFlags | Motor_RestartStopFlags | AD_Op1oValueInitErrorFlags | Motor_BemfErrorFlags | Motor_MotorErrorFlags) 
//	{
//		Motor_RunErrorFlags = 1;
//	}
//	else
//	{
//		Motor_RunErrorFlags = 0;
//	}
	if(Motor_RunErrorFlags || (Motor_StartFlags == 0))	//
	{
		Motor_Mode = Motor_Mode_Stop;
	}
	if(Motor_Mode)
	{
		if(Motor_FRFlags != Motor_FRFlagsTemp)
		{
			Motor_Mode = Motor_Mode_Brake;
			Motor_FRFlags = Motor_FRFlagsTemp;
		}
	}
	else
	{
		if(Motor_FRFlags != Motor_FRFlagsTemp)	
			Motor_FRFlags = Motor_FRFlagsTemp;
	}
	
	switch(Motor_Mode)
	{
		case Motor_Mode_Stop :
		{
			ABCOFF;
			PWMD0H = 0;	PWMD0L = 0;
			PWMD2H = 0;	PWMD2L = 0;
			PWMD4H = 0;	PWMD4L = 0;	
			PWMLOADEN = 0x15;	//数据加载
			T34MOD &= ~(1<<3);	//关闭T3
			EIF2 &= ~(1<<0);	//清中断标志
			TH3	=	0x00;						
			TL3 = 0x00;	
			
			if(Motor_StartFlags)	//允许启动
			{
				if(Motor_RunErrorFlags)	//出现故障则尝试重启
				{
					if(Motor_BemfErrorFlags)	//允许重启的故障
					{
						if(Motor_RestartTime1ms)
						{
							Motor_RestartTime1ms = 0;
							Motor_RestartFlags = 1;		//重启标志置1
							
							if(Motor_RestartCnt < 4)		//规定最大重启次数
							{
								if(Motor_RestartTime < 2000)	//规定每次尝试重启时间
								{
									Motor_RunErrorFlags = 0;
									Motor_BemfErrorFlags = 0;
									Motor_Mode = Motor_Mode_StartInit;	//重启
								}
								else if(Motor_RestartTime < 2200) //本次重启超出允许时间则失败 等待1S
								{
									Motor_Mode = Motor_Mode_Stop;
								}
								else
								{
									Motor_RestartCnt++;		//重启次数自加
									Motor_RestartTime = 0;
								}
							}
							else	//超出重启次数 停止重启标志置1
							{
								Motor_RestartCnt = 0;
								Motor_RestartTime = 0;
								Motor_RestartStopFlags = 1;
					
							}
						}
					}
				}
				else	//允许启动且无故障标志
				{
					Motor_RestartTime = 0;
					Motor_RestartFlags = 0;
					Motor_Mode = Motor_Mode_StartInit;
				}
			}
		}break;
		
		case Motor_Mode_StartInit :
		{
			//OneStepTime = 2500;
			Motor_BemfTime60Cnt[2] = 0;
			Motor_BemfTime60Cnt[1] = 0;
			Motor_BemfTime60Cnt[0] = 0;
			Motor_BemfTime60Temp = 0;
			Motor_BemfTime60Sum = 0;
			Motor_BemfTimeError = 0;
			Motor_BemfTime60 = 0;
			Motor_BemfTime30 = 0;
			Motor_BemfTime15 = 0;
			
			Motor_SpeedValueTarget = 0;
			Motor_SpeedValueTargetTemp = 0;
			Motor_SpeedValueNowTemp = 0;
			Motor_SpeedValueTemp[7] = 0;
			Motor_SpeedValueTemp[6] = 0;
			Motor_SpeedValueTemp[5] = 0;
			Motor_SpeedValueTemp[4] = 0;
			Motor_SpeedValueTemp[3] = 0;
			Motor_SpeedValueTemp[2] = 0;
			Motor_SpeedValueTemp[1] = 0;
			Motor_SpeedValueTemp[0] = 0;
			Motor_SpeedValueNow = 0;
			Motor_SpeedValueBase = 0;
			Motor_StartForceTime = 0;
			Motor_StartForceCnt = 3;//强制换向3
			Motor_BrakeTime = 0;
			Motor_BrakePwm = 0;
			Motor_StepCnt = 0;
			Motor_Locate = 3;
			
			Motor_StartForceTimeNext = 100;//强制换向时间120
			Motor_RealPwm = 40;//初始速度d
			Motor_TargetPwm = 0;
			Motor_SpeedValueError = 0;
			Motor_SpeedValueErrorCnt[2] = 0;
			Motor_SpeedValueErrorCnt[1] = 0;
			Motor_SpeedValueErrorCnt[0] = 0;
			Motor_SpeedValueErrorOut = 0;
			Motor_Op1oValueError = 0;
			
			Motor_CurrentErrorFlags = 0;
			Motor_MotorErrorFlags = 0;
			Motor_MotorErrorCnt = 0;
			Motor_BemfErrorFlags = 0;
			Motor_RunErrorFlags = 0;
			
			Motor_FRFlags = Motor_FRFlagsTemp;
			
			Motor_KeepOnStateTemp[5] = 0;
			Motor_KeepOnStateTemp[4] = 0;
			Motor_KeepOnStateTemp[3] = 0;
			Motor_KeepOnStateTemp[2] = 0;
			Motor_KeepOnStateTemp[1] = 0;
			Motor_KeepOnStateTemp[0] = 0;
			Motor_KeepOnCheckTime = 0;
			if(Motor_KeepOnFlags)	
				Motor_Mode = Motor_Mode_KeepON;	
			else	
				Motor_Mode = Motor_Mode_Start;	//直接进入启动阶段
		}break;
		
		case Motor_Mode_KeepON :	//检测电机是否还在靠惯性旋转
		{
		}break;
		
		case Motor_Mode_Start :	//启动阶段
		{
			if((Motor_StartForceCnt && (Motor_StartForceTime >= Motor_StartForceTimeNext)) || (Motor_StartForceTime >= 100))
			{
				if(Motor_FRFlags)
				{
					Motor_Locate++;
					if(Motor_Locate > 6)
						Motor_Locate = 1;
				}
				else
				{
					Motor_Locate--;
					if(Motor_Locate < 1)
						Motor_Locate = 6;
				}
				motor_steps();
				
				if(Motor_MotorErrorCnt < 200)
					Motor_MotorErrorCnt++;
				if(Motor_MotorErrorCnt > 10)
					Motor_MotorErrorFlags = 1;
				
				if(Motor_StepCnt < 250)
					Motor_StepCnt++;
				if(Motor_StepCnt > 2)
					Motor_BemfErrorFlags = 1;
				
				if(Motor_StartForceCnt)
				{
					Motor_StartForceCnt--;
					Motor_StartForceTimeNext = Motor_StartForceTimeNext >> 1;
					Motor_RealPwm += 5;
				}
				
				Motor_StartDelayTime = DELAYTIME;
				Motor_StartForceTime = 0;
				Motor_BemfTime60Cnt[2] = 0;
				Motor_BemfTime60Cnt[1] = 0;
				Motor_BemfTime60Cnt[0] = 0;
				Motor_BemfTime60Temp = 0;
				Motor_BemfTime60Sum = 0;
				Motor_BemfTimeError = 0;
				Motor_BemfTime60 = 0;
				Motor_BemfTime30 = 0;
				Motor_BemfTime15 = 0;
				Motor_StartStepOkCnt = 0;
			}
			
			if(Motor_StartForceCnt)
				Motor_TargetPwm = Motor_RealPwm;
			else
			{
				if(Motor_RestartFlags)
				{
					Motor_TargetPwm = 200; 
				}
					
				else
				{
					Motor_TargetPwm = 125;
				}	
			}
			motor_setpwm(Motor_TargetPwm);
		}break;
		
		case Motor_Mode_Run :	//正常运行阶段
		{
            if(Motor_StepCnt > 240)
            {
//                Motor_RestartCnt = 0;
                Motor_RestartTime = 0;
                Motor_RestartFlags = 0;
            }
            
			if(!(T34MOD & 0x08))
			{
				T34MOD |= 1<<3;			//启动T3
				EIF2 &= ~(1<<0);		//清中断标志
				TH3	=	0x00;						
				TL3 = 0x00;						
			}
			if(Motor_SpeedValueTargetTime >= 1)
			{
				Motor_SpeedValueTargetTime = 0;
				if(Motor_SpeedValueTargetTemp != Motor_SpeedValueTarget)
				{
					if(Motor_SpeedValueTargetTemp > Motor_SpeedValueTarget)
					{
						if(Motor_SpeedValueTargetTemp > (Motor_SpeedValueTarget + 50))
							Motor_SpeedValueTarget += 50;
						else
							Motor_SpeedValueTarget++;
					}
					else if(Motor_SpeedValueTargetTemp < Motor_SpeedValueTarget)
					{
						if((Motor_SpeedValueTargetTemp + 50) < Motor_SpeedValueTarget)
							Motor_SpeedValueTarget -= 50;
						else
							Motor_SpeedValueTarget--;
					}
				}
			}
			
			if(Motor_SpeedValueOverFlags)
			{
//				Motor_SpeedValueNow = 0;
				EIF2 &= ~(1<<0);	//清中断标志
				TH3	=	0x00;						
				TL3 = 0x00;	
			}
			else
			{
				if(Motor_SpeedValueNowTime )
				{
					Motor_SpeedValueNowTime = 0;
					//60 000 000/(6*Motor_SpeedValueBase/12)
					Motor_SpeedValueNowTemp =    (Motor_SpeedValueTemp[7] + Motor_SpeedValueTemp[6] + Motor_SpeedValueTemp[5] + Motor_SpeedValueTemp[4] 
																	
																	 + Motor_SpeedValueTemp[3] + Motor_SpeedValueTemp[2] +
																	   Motor_SpeedValueTemp[1] + Motor_SpeedValueTemp[0]) >> 3;
					Motor_SpeedValueNow = 40000000/(Motor_SpeedValueNowTemp*PAIRS);
					//Motor_SpeedValueNow = Motor_SpeedValueNow - Motor_SpeedValueNow%100;
				}
			}
			motor_pid(4, 0.13, 0.005, 0, 220); //低档位时间短  高档位时间长一些
			motor_setpwm(300);
		}break;
	}
}
#else 
void motor_run()
{
	
	//出现任何故障则总故障标志置1 基准电流错误 反电动势检测错误 电机没插
//	if(Motor_CurrentErrorFlags | Motor_RestartStopFlags | AD_Op1oValueInitErrorFlags | Motor_BemfErrorFlags | Motor_MotorErrorFlags) 
//	{
//		Motor_RunErrorFlags = 1;
//	}
//	else
//	{
//		Motor_RunErrorFlags = 0;
//	}
	if(Motor_RunErrorFlags || (Motor_StartFlags == 0))	//
	{
		Motor_Mode = Motor_Mode_Stop;
	}
	if(Motor_Mode)
	{
		if(Motor_FRFlags != Motor_FRFlagsTemp)
		{
			Motor_Mode = Motor_Mode_Brake;
			Motor_FRFlags = Motor_FRFlagsTemp;
		}
	}
	else
	{
		if(Motor_FRFlags != Motor_FRFlagsTemp)	
			Motor_FRFlags = Motor_FRFlagsTemp;
	}
	
	switch(Motor_Mode)
	{
		case Motor_Mode_Stop :
		{
			ABCOFF;
			PWMD0H = 0;	PWMD0L = 0;
			PWMD2H = 0;	PWMD2L = 0;
			PWMD4H = 0;	PWMD4L = 0;	
			PWMLOADEN = 0x15;	//数据加载
			T34MOD &= ~(1<<3);	//关闭T3
			EIF2 &= ~(1<<0);	//清中断标志
			TH3	=	0x00;						
			TL3 = 0x00;	
			
			if(Motor_StartFlags)	//允许启动
			{
				if(Motor_RunErrorFlags)	//出现故障则尝试重启
				{
					if(Motor_BemfErrorFlags)	//允许重启的故障
					{
						if(Motor_RestartTime1ms)
						{
							Motor_RestartTime1ms = 0;
							Motor_RestartFlags = 1;		//重启标志置1
							
							if(Motor_RestartCnt < 4)		//规定最大重启次数
							{
								if(Motor_RestartTime < 2000)	//规定每次尝试重启时间
								{
									Motor_RunErrorFlags = 0;
									Motor_BemfErrorFlags = 0;
									Motor_Mode = Motor_Mode_StartInit;	//重启
								}
								else if(Motor_RestartTime < 2200) //本次重启超出允许时间则失败 等待1S
								{
									Motor_Mode = Motor_Mode_Stop;
								}
								else
								{
									Motor_RestartCnt++;		//重启次数自加
									Motor_RestartTime = 0;
								}
							}
							else	//超出重启次数 停止重启标志置1
							{
								Motor_RestartCnt = 0;
								Motor_RestartTime = 0;
								Motor_RestartStopFlags = 1;
					
							}
						}
					}
				}
				else	//允许启动且无故障标志
				{
					Motor_RestartTime = 0;
					Motor_RestartFlags = 0;
					Motor_Mode = Motor_Mode_StartInit;
				}
			}
		}break;
		
		case Motor_Mode_StartInit :
		{
			//OneStepTime = 2500;
			Motor_BemfTime60Cnt[2] = 0;
			Motor_BemfTime60Cnt[1] = 0;
			Motor_BemfTime60Cnt[0] = 0;
			Motor_BemfTime60Temp = 0;
			Motor_BemfTime60Sum = 0;
			Motor_BemfTimeError = 0;
			Motor_BemfTime60 = 0;
			Motor_BemfTime30 = 0;
			Motor_BemfTime15 = 0;
			
			Motor_SpeedValueTarget = 0;
			Motor_SpeedValueTargetTemp = 0;
			Motor_SpeedValueNowTemp = 0;
			Motor_SpeedValueTemp[7] = 0;
			Motor_SpeedValueTemp[6] = 0;
			Motor_SpeedValueTemp[5] = 0;
			Motor_SpeedValueTemp[4] = 0;
			Motor_SpeedValueTemp[3] = 0;
			Motor_SpeedValueTemp[2] = 0;
			Motor_SpeedValueTemp[1] = 0;
			Motor_SpeedValueTemp[0] = 0;
			Motor_SpeedValueNow = 0;
			Motor_SpeedValueBase = 0;
			Motor_StartForceTime = 0;
			Motor_StartForceCnt = 3;//强制换向3
			Motor_BrakeTime = 0;
			Motor_BrakePwm = 0;
			Motor_StepCnt = 0;
			Motor_Locate = 3;
			
			Motor_StartForceTimeNext = 100;//强制换向时间120
			Motor_RealPwm = 40;//初始速度d
			Motor_TargetPwm = 0;
			Motor_SpeedValueError = 0;
			Motor_SpeedValueErrorCnt[2] = 0;
			Motor_SpeedValueErrorCnt[1] = 0;
			Motor_SpeedValueErrorCnt[0] = 0;
			Motor_SpeedValueErrorOut = 0;
			Motor_Op1oValueError = 0;
			
			Motor_CurrentErrorFlags = 0;
			Motor_MotorErrorFlags = 0;
			Motor_MotorErrorCnt = 0;
			Motor_BemfErrorFlags = 0;
			Motor_RunErrorFlags = 0;
			
			Motor_FRFlags = Motor_FRFlagsTemp;
			
			Motor_KeepOnStateTemp[5] = 0;
			Motor_KeepOnStateTemp[4] = 0;
			Motor_KeepOnStateTemp[3] = 0;
			Motor_KeepOnStateTemp[2] = 0;
			Motor_KeepOnStateTemp[1] = 0;
			Motor_KeepOnStateTemp[0] = 0;
			Motor_KeepOnCheckTime = 0;
			if(Motor_KeepOnFlags)	
				Motor_Mode = Motor_Mode_KeepON;	
			else	
				Motor_Mode = Motor_Mode_Start;	//直接进入启动阶段
		}break;
		
		case Motor_Mode_KeepON :	//检测电机是否还在靠惯性旋转
		{
			Motor_Mode = Motor_Mode_Run;	//直接进入启动阶段
		}break;
		
		case Motor_Mode_Start :	//启动阶段
		{
			motor_setpwm(Motor_TargetPwm);
			hallStepNew=ReadHallPin( );
			hallStepLast=hallStepNew;	
			if(Motor_FRFlags)
			{
				Motor_Locate=HallStep_CW[hallStepNew];
			}
			else
			{
				Motor_Locate=HallStep_CCW[hallStepNew];
			}
			motor_steps();			
			Motor_StartDelayTime = DELAYTIME;
			Motor_StartForceTime = 0;
			Motor_BemfTime60Cnt[2] = 0;
			Motor_BemfTime60Cnt[1] = 0;
			Motor_BemfTime60Cnt[0] = 0;
			Motor_BemfTime60Temp = 0;
			Motor_BemfTime60Sum = 0;
			Motor_BemfTimeError = 0;
			Motor_BemfTime60 = 0;
			Motor_BemfTime30 = 0;
			Motor_BemfTime15 = 0;
			Motor_StartStepOkCnt = 0;
			Motor_Mode = Motor_Mode_Run;	//直接进入启动阶段
		}break;
		
		case Motor_Mode_Run :	//正常运行阶段
		{
            if(Motor_StepCnt > 240)
            {
//                Motor_RestartCnt = 0;
                Motor_RestartTime = 0;
                Motor_RestartFlags = 0;
            }
            
			if(!(T34MOD & 0x08))
			{
				T34MOD |= 1<<3;			//启动T3
				EIF2 &= ~(1<<0);		//清中断标志
				TH3	=	0x00;						
				TL3 = 0x00;						
			}
			if(Motor_SpeedValueTargetTime >= 1)
			{
				Motor_SpeedValueTargetTime = 0;
				if(Motor_SpeedValueTargetTemp != Motor_SpeedValueTarget)
				{
					if(Motor_SpeedValueTargetTemp > Motor_SpeedValueTarget)
					{
						if(Motor_SpeedValueTargetTemp > (Motor_SpeedValueTarget + 50))
							Motor_SpeedValueTarget += 50;
						else
							Motor_SpeedValueTarget++;
					}
					else if(Motor_SpeedValueTargetTemp < Motor_SpeedValueTarget)
					{
						if((Motor_SpeedValueTargetTemp + 50) < Motor_SpeedValueTarget)
							Motor_SpeedValueTarget -= 50;
						else
							Motor_SpeedValueTarget--;
					}
				}
			}
			
			if(Motor_SpeedValueOverFlags)
			{
//				Motor_SpeedValueNow = 0;
				EIF2 &= ~(1<<0);	//清中断标志
				TH3	=	0x00;						
				TL3 = 0x00;	
			}
			else
			{
				if(Motor_SpeedValueNowTime )
				{
					Motor_SpeedValueNowTime = 0;
					//60 000 000/(6*Motor_SpeedValueBase/12)
					Motor_SpeedValueNowTemp =    (Motor_SpeedValueTemp[7] + Motor_SpeedValueTemp[6] + Motor_SpeedValueTemp[5] + Motor_SpeedValueTemp[4] 
																	
																	 + Motor_SpeedValueTemp[3] + Motor_SpeedValueTemp[2] +
																	   Motor_SpeedValueTemp[1] + Motor_SpeedValueTemp[0]) >> 3;
					Motor_SpeedValueNow = 40000000/(Motor_SpeedValueNowTemp*PAIRS);
					//Motor_SpeedValueNow = Motor_SpeedValueNow - Motor_SpeedValueNow%100;
				}
			}
			motor_pid(4, 0.13, 0.005, 0, 220); //低档位时间短  高档位时间长一些
			motor_setpwm(Motor_SpeedValueTargetTemp);
		}break;
	}
}

#endif
#if 0
void isr_time0()	interrupt 1
{
	TF0 = 0;  //20us
	
	//SMG = 1;
	if(Motor_SetPwmTime < 10000)
		Motor_SetPwmTime++;
	
	if(Motor_BemfTime60Temp < 10000)
		Motor_BemfTime60Temp++;
	
	switch(Motor_Mode)
	{
		case Motor_Mode_KeepON :
		{
			if(Motor_KeepOnCheckTime >= 100)
			{
				Motor_KeepOnCheckTime = 0;
				Motor_KeepOnFlags = 0;
				Motor_Mode = Motor_Mode_StartInit;
			}
			
			motor_checkkeepon();
			if(Motor_KeepOnStateLast != Motor_KeepOnState)
			{
				Motor_KeepOnStateLast = Motor_KeepOnState;
				Motor_KeepOnStateTemp[5] = Motor_KeepOnStateTemp[4];
				Motor_KeepOnStateTemp[4] = Motor_KeepOnStateTemp[3];
				Motor_KeepOnStateTemp[3] = Motor_KeepOnStateTemp[2];
				Motor_KeepOnStateTemp[2] = Motor_KeepOnStateTemp[1];
				Motor_KeepOnStateTemp[1] = Motor_KeepOnStateTemp[0];
				Motor_KeepOnStateTemp[0] = Motor_KeepOnState;
				
				motor_getbemftime();
				
				if((Motor_KeepOnStateTemp[0] == 3)&&(Motor_KeepOnStateTemp[1] == 1)&&(Motor_KeepOnStateTemp[2] == 5)&&
					 (Motor_KeepOnStateTemp[3] == 4)&&(Motor_KeepOnStateTemp[4] == 6)&&(Motor_KeepOnStateTemp[5] == 2))
				{
					if(Motor_BemfTime60 < 1000)
					{
						if(Motor_FRFlags == 1)
						{
							Motor_Locate = Motor_KeepOnState;
							Motor_BemfEdgeStateNow = 2;
							Motor_KeepOnFlags = 0;
							Motor_Mode = Motor_Mode_Run;
						}
					}
					else
					{
						Motor_KeepOnFlags = 0;
						Motor_Mode = Motor_Mode_StartInit;
					}
				}
				else 
				if((Motor_KeepOnStateTemp[0] == 2)&&(Motor_KeepOnStateTemp[1] == 6)&&(Motor_KeepOnStateTemp[2] == 4)&&
					 (Motor_KeepOnStateTemp[3] == 5)&&(Motor_KeepOnStateTemp[4] == 1)&&(Motor_KeepOnStateTemp[5] == 3))
				{
					if(Motor_BemfTime60 < 1000)
					{
						if(Motor_FRFlags == 0)
						{
							Motor_Locate = Motor_KeepOnState;
							Motor_BemfEdgeStateNow = 2;
							Motor_KeepOnFlags = 0;
							Motor_Mode = Motor_Mode_Run;
						}
					}
					else
					{
						Motor_KeepOnFlags = 0;
						Motor_Mode = Motor_Mode_StartInit;
					}
				}
			}
		}break;
		
		case Motor_Mode_Start :	//启动阶段
		{
			Motor_StartBemfState <<= 1; 
			if(C1CON1 & 0x80)
				Motor_StartBemfState++;
			
			if(Motor_StartDelayTime)
			{
				Motor_StartDelayTime--;
				Motor_StartBemfState = 0;
				Motor_StartBemfStateCnt = 0;
			
				if(Motor_ComputeFlags)
				{
					Motor_ComputeFlags = 0;
				}
			}
			else
			{
				if(Motor_StartForceCnt == 0)
				{
					Motor_StartBemfStateCnt++;
					if(Motor_StartBemfStateCnt >= STARTBEMFSTATECNT)
					{
						Motor_StartBemfState &= 0xFFFF;
						Motor_StartBemfStateHigh = (Motor_BemfHighLevelCnt[(u8)(Motor_StartBemfState)] 
																			+ Motor_BemfHighLevelCnt[(u8)(Motor_StartBemfState>>8)]);	
						
						Motor_StartBemfState = 0;
						Motor_StartBemfStateCnt = 0;
						if(Motor_StartBemfStateHigh > STARTBEMFSTATEHCNT)
							Motor_StartBemfStateFlags = 1;
						else if(Motor_StartBemfStateHigh < STARTBEMFSTATELCNT)
							Motor_StartBemfStateFlags = 0;
						
						if(Motor_StartBemfStateFlagsLast != Motor_StartBemfStateFlags)
						{
							Motor_StartBemfStateFlagsLast = Motor_StartBemfStateFlags;
							
							if(Motor_BemfEdgeStateNext)
							{
								if(Motor_StartBemfStateFlags)
								{
									if(Motor_StartStepOkCnt >= 18)
									{
										Motor_StepCnt = 0;
										Motor_StartStepOkCnt = 0;
										Motor_BemfEdgeStateNow = 2;
										Motor_Mode = Motor_Mode_Run;
									}
									else
									{
										if(Motor_FRFlags)
										{
											Motor_Locate++;
											if(Motor_Locate > 6)
												Motor_Locate = 1;
										}
										else
										{
											Motor_Locate--;
											if(Motor_Locate < 1)
												Motor_Locate = 6;
										}
										motor_steps();
										motor_getbemftime();
										Motor_StartStepOkCnt++;
										if(Motor_StartStepOkCnt > 6)
											Motor_ComputeFlags = 1;
										Motor_StartBemfStateCnt = 0;
										Motor_StartForceTime = 0;
										Motor_StartDelayTime = DELAYTIME;
										
	//									if(Motor_StepCnt)
	//										Motor_StepCnt--;
										
										Motor_MotorErrorCnt = 0;
									}
								}
							}
							else if(Motor_BemfEdgeStateNext == 0)
							{
								if(Motor_StartBemfStateFlags == 0)
								{
									if(Motor_StartStepOkCnt >= 18)
									{
										Motor_StepCnt = 0;
										Motor_StartStepOkCnt = 0;
										Motor_BemfEdgeStateNow = 2;
										Motor_Mode = Motor_Mode_Run;
									}
									else
									{
										if(Motor_FRFlags)
										{
											Motor_Locate++;
											if(Motor_Locate > 6)
												Motor_Locate = 1;
										}
										else
										{
											Motor_Locate--;
											if(Motor_Locate < 1)
												Motor_Locate = 6;
										}
										motor_steps();
										motor_getbemftime();
										Motor_StartStepOkCnt++;
										if(Motor_StartStepOkCnt > 6)
											Motor_ComputeFlags = 1;
										Motor_StartBemfStateCnt = 0;
										Motor_StartForceTime = 0;
										Motor_StartDelayTime = DELAYTIME;
										
	//									if(Motor_StepCnt)
	//										Motor_StepCnt--;
										
										Motor_MotorErrorCnt = 0;
									}
								}
							}
						}
					}
				}
			}
		}break;
		
		case Motor_Mode_Run :	//正常运行阶段
		{
			if(Motor_BemfEdgeStateNow == 2)
			{
				if(Motor_ComputeFlags)
				{
					Motor_ComputeFlags = 0;
					
					Motor_GetSpeedCnt++;
					if(Motor_GetSpeedCnt > 7)
						Motor_GetSpeedCnt = 0;
					Motor_SpeedValueTemp[Motor_GetSpeedCnt] = Motor_SpeedValueBase;	
				}
				
				if(Motor_BemfTime30)
					Motor_BemfTime30--;
				else
				{
					if(Motor_FRFlags)
					{
						Motor_Locate++;
						if(Motor_Locate > 6)
							Motor_Locate = 1;
					}
					else
					{
						Motor_Locate--;
						if(Motor_Locate < 1)
							Motor_Locate = 6;
					}
					motor_steps();
					Motor_ComputeFlags = 1;
					
					if(Motor_StepCnt < 250)
						Motor_StepCnt++;
				}
			}
			else
			{
				if(Motor_BemfTime15)
				{
					Motor_BemfTime15--;
					Motor_BemfEdgeStateNow = -1;	
				}
				else
				{
					if((Motor_BemfTimeError == 0))
						Motor_BemfErrorFlags = 1;
					
					motor_checkbemf();
					if(Motor_BemfEdgeStateNow == Motor_BemfEdgeStateNext)
					{
						Motor_BemfEdgeStateNow = 2;
						motor_getbemftime();
						
						if(Motor_StepCnt > 240)
						{
							if((Motor_BemfTime60 > 1000) || (Motor_BemfTime60 < 5))
								Motor_BemfErrorFlags = 1;
							
							if((Motor_BemfTime60Cnt[0] > (Motor_BemfTime60 << 1)) ||
								((Motor_BemfTime60Cnt[0] << 1) < Motor_BemfTime60))
								Motor_BemfErrorFlags = 1;
							
							if(Motor_BemfTime30 < 2)
								Motor_BemfErrorFlags = 1;
						}
					}
				}
			}
		}break;
		
		case Motor_Mode_Brake :	//刹车阶段
		{
			//上管刹车 下管全关 占空比从0-100 慢慢增大 快速刹车
			//期间检测一下电机电流 过小则判断电机停止 或者 固定时间1S内刹停
			if(Motor_BrakeTime <= 100)
			{
				ABCOFF;
				PWMD0H = 0;	PWMD0L = 0;
				PWMD2H = 0;	PWMD2L = 0;
				PWMD4H = 0;	PWMD4L = 0;	
				PWMLOADEN = 0x15;	//数据加载
				Motor_BrakePwm = 0;
			}
			else 
			{
				if(Vsp_LevelValueTarget < 10)
				{
					Motor_BrakeTimeTarget = 500;
				}
				else if(Vsp_LevelValueTarget < 20)
				{
					Motor_BrakeTimeTarget = 1000;
				}
				else
				{
					Motor_BrakeTimeTarget = 1000;
				}
				if(Motor_BrakeTime < Motor_BrakeTimeTarget)
				{
					Motor_BrakePwm = (Motor_BrakeTime - 100) << 1;
					if(Motor_BrakePwm > PWMT)
					{
						Motor_BrakePwm = PWMT;
					}
					ABCBREAK;
					PWMD0H = Motor_BrakePwm>>8;	PWMD0L = Motor_BrakePwm;
					PWMD2H = Motor_BrakePwm>>8;	PWMD2L = Motor_BrakePwm;
					PWMD4H = Motor_BrakePwm>>8;	PWMD4L = Motor_BrakePwm;	
					PWMLOADEN = 0x15;	//数据加载
				}
				else
				{
					Motor_BrakeTime = 0;
					Motor_BrakePwm = 15;
					Motor_Mode = Motor_Mode_Stop;	//停止
				}
			}
		}break;
	}
	
	//SMG = 0;
}
#else
void isr_time0()	interrupt 1
{
	TF0 = 0;  //20us
	
	//SMG = 1;
	if(Motor_SetPwmTime < 10000)
		Motor_SetPwmTime++;
	
	if(Motor_BemfTime60Temp < 10000)
		Motor_BemfTime60Temp++;
	
	switch(Motor_Mode)
	{		
		case Motor_Mode_Run :	//正常运行阶段
		{
			hallStepNew=ReadHallPin();
			if(hallStepLast!=hallStepNew)
			{
				hallStepLast=hallStepNew;
				if(Motor_FRFlags)
				{
					Motor_Locate=HallStep_CW[hallStepNew];
				}
				else
				{
					Motor_Locate=HallStep_CCW[hallStepNew];
				}
				motor_steps();
				Motor_GetSpeedCnt++;
				if(Motor_GetSpeedCnt > 7)
				{
					Motor_GetSpeedCnt = 0;
				}
				Motor_SpeedValueTemp[Motor_GetSpeedCnt] = Motor_SpeedValueBase;					
			}
		}break;
		
		case Motor_Mode_Brake :	//刹车阶段
		{
			//上管刹车 下管全关 占空比从0-100 慢慢增大 快速刹车
			//期间检测一下电机电流 过小则判断电机停止 或者 固定时间1S内刹停
			if(Motor_BrakeTime <= 100)
			{
				ABCOFF;
				PWMD0H = 0;	PWMD0L = 0;
				PWMD2H = 0;	PWMD2L = 0;
				PWMD4H = 0;	PWMD4L = 0;	
				PWMLOADEN = 0x15;	//数据加载
				Motor_BrakePwm = 0;
			}
			else 
			{
				if(Vsp_LevelValueTarget < 10)
				{
					Motor_BrakeTimeTarget = 500;
				}
				else if(Vsp_LevelValueTarget < 20)
				{
					Motor_BrakeTimeTarget = 1000;
				}
				else
				{
					Motor_BrakeTimeTarget = 1000;
				}
				if(Motor_BrakeTime < Motor_BrakeTimeTarget)
				{
					Motor_BrakePwm = (Motor_BrakeTime - 100) << 1;
					if(Motor_BrakePwm > PWMT)
					{
						Motor_BrakePwm = PWMT;
					}
					ABCBREAK;
					PWMD0H = Motor_BrakePwm>>8;	PWMD0L = Motor_BrakePwm;
					PWMD2H = Motor_BrakePwm>>8;	PWMD2L = Motor_BrakePwm;
					PWMD4H = Motor_BrakePwm>>8;	PWMD4L = Motor_BrakePwm;	
					PWMLOADEN = 0x15;	//数据加载
				}
				else
				{
					Motor_BrakeTime = 0;
					Motor_BrakePwm = 15;
					Motor_Mode = Motor_Mode_Stop;	//停止
				}
			}
		}break;
	}
	
	//SMG = 0;
}
#endif
void isr_acmp0()	interrupt 14
{
	CNIF = 0x00;
	
	ABCOFF;
	PWMD0H = 0;	PWMD0L = 0;
	PWMD2H = 0;	PWMD2L = 0;
	PWMD4H = 0;	PWMD4L = 0;	
	PWMLOADEN = 0x15;	//数据加载
	PWMFBKC = 0x00;
	PWMCNTE = 0x15;
	Motor_CurrentErrorFlags = 1;
	Motor_Mode = Motor_Mode_Stop;
}

void isr_time3() interrupt 15
{
	EIF2 &= ~(1<<0);		//清中断标志
	TH3	=	0x00;						
	TL3 = 0x00;						
	
	Motor_SpeedValueOverFlags = 1;
}