#include "motorrun.h"        //包含需要的头文件
u8  HallStep_CCW[]={6,4,0,5,2,3,1,6};
u8  HallStep_CW[]  ={6,1,3,2,5,0,4,6};  // sanyang
u16 MOTE_PWM_SET=0;			//PWM值
u8   motorState=0;
u8   motorRunDirection=0; // 0x00-reverse--CCW  0xff-forward-CW
u8   hallStep=0;
u8   hallStepLast=0;
u8   hallStepNew=0;
u8   phaseStep=0;
u8   phaseStepBak=0;
u8   motorStatus=0;
u8	moto_err_time_flag=0;
u16	moto_err_time=0;		//堵转时间
u8	moto_run_err=0;			//堵转标志

u16 seep_temp_buf[8]={0};

u8   SensorMotorRun(void)
{
	switch(motorState)	
	{
		case  E_MOTOR_INIT:
			motorState=E_MOTOR_START;
			CLOSE_PWM();
			if(1)
			{
				motorRunDirection=0xff;
			}
			else
			{
				motorRunDirection=0x00;
			}
		break;
		case E_MOTOR_START:
			MOTE_PWM_SET=50;  
			hallStepNew=ReadHallPin( );
			hallStepLast=hallStepNew;	
			if(motorRunDirection)
			{
				phaseStep=HallStep_CW[hallStepNew];
			}
			else
			{
				phaseStep=HallStep_CCW[hallStepNew];
			}
			Commutation( );   
			motorState=E_MOTOR_RUN;
			TIM_Cmd(TIM3, ENABLE);
		break;
		case E_MOTOR_STILL:  //第一步 加力                                         */
		break;
		case E_MOTOR_ERROR:
			CLOSE_PWM();
			MOTE_PWM_SET=0;
		break;
		case E_MOTOR_STOP:
			CLOSE_PWM();
			TIM_Cmd(TIM3, DISABLE);
			MOTE_PWM_SET=0;
		break;
		case  E_MOTOR_RUN:
			PWM_Set(MOTE_PWM_SET);
		break;
		case  E_MOTOR_DIRECTION:
		//                        motorRunDirection=!motorRunDirection;
		break;
		case  E_MOTOR_BRAKE:

		break;
		default: break;

	}

	return TRUE;
}
u8 seep_temp_cont=0;
void   GetHallState(void)
{
	hallStepNew=ReadHallPin();
	if(hallStepLast!=hallStepNew)
	{
		seep_temp_buf[seep_temp_cont]=TIM_GetCounter(TIM3);
		seep_temp_cont++;
		TIM_SetCounter(TIM3, 0);
		if(seep_temp_cont>=6)
		{
			seep_temp_cont=0;
		}
		hallStepLast=hallStepNew;
		if(E_MOTOR_RUN==motorState)
		{
			if(motorRunDirection)
			{
				phaseStep=HallStep_CW[hallStepNew];  //CCW
			}
			else
			{
				phaseStep=HallStep_CCW[hallStepNew]; //CW
			}
			Commutation( );
		}
		moto_err_time_flag=0;
	}
	else
	{
		if(E_MOTOR_RUN==motorState)
		{
			moto_err_time_flag=1;
		}
		else
		{
			moto_err_time_flag=0;
		}
	}
}
 
 
u8 ReadHallPin(void)
{
	u8 hs_vla=0;
	if(hs1_pin)
	{
		hs_vla|=0x01;
	}
	if(hs2_pin)
	{
		hs_vla|=0x04;
	}
	if(hs3_pin)
	{
		hs_vla|=0x02;
	}
	return hs_vla;
}
void UH_VL(void)
{
	TIM1_DisableAllOutputs();
	TIM_CCxCmd(TIM1, TIM_Channel_1, ENABLE);
	AL=0;
	BL=1;
	CL=0;	
	PWM_Set(MOTE_PWM_SET);
}

void UH_WL(void)
{
	TIM1_DisableAllOutputs();
	TIM_CCxCmd(TIM1, TIM_Channel_1, ENABLE);
	AL=0;
	BL=0;
	CL=1;	
	PWM_Set(MOTE_PWM_SET);
}
void VH_UL(void)
{
	TIM1_DisableAllOutputs();
	TIM_CCxCmd(TIM1, TIM_Channel_2, ENABLE);
	AL=1;
	BL=0;
	CL=0;	
	PWM_Set(MOTE_PWM_SET);
}
void VH_WL(void)
{
	TIM1_DisableAllOutputs();
	TIM_CCxCmd(TIM1, TIM_Channel_2, ENABLE);
	AL=0;
	BL=0;
	CL=1;	
	PWM_Set(MOTE_PWM_SET);
}
void WH_UL(void)
{
	TIM1_DisableAllOutputs();
	TIM_CCxCmd(TIM1, TIM_Channel_3, ENABLE);
	AL=1;
	BL=0;
	CL=0;	
	PWM_Set(MOTE_PWM_SET);
}
void WH_VL(void)
{
	TIM1_DisableAllOutputs();
	TIM_CCxCmd(TIM1, TIM_Channel_3, ENABLE);
	AL=0;
	BL=1;
	CL=0;	
	PWM_Set(MOTE_PWM_SET);
}
void CLOSE_PWM(void)
{
	TIM1_DisableAllOutputs();
	AL=0;
	BL=0;
	CL=0;	
	PWM_Set(0);
}

void Commutation(void)
{
	switch(phaseStep)
	{
		case  0:
			UH_VL();	//AB
		break;
		case  1:
			UH_WL();	//AC
		break;		
		case  2:
			VH_WL();	//BC
		break;	
		case  3:
			VH_UL();	//BA
		break;	
		case  4:
			WH_UL();	//CA
		break;	
		case  5:
			WH_VL();	//CB
		break;	
	      default:
		  	CLOSE_PWM();
		  	break;		
	}
}

