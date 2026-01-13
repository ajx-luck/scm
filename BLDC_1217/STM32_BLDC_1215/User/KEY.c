#include "key.h"
void KEY_INIT(void)
{
	GPIO_InitTypeDef KEY_InitTypeDef;
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA|RCC_APB2Periph_GPIOB,ENABLE);
	
	KEY_InitTypeDef.GPIO_Mode=GPIO_Mode_IPU;
	KEY_InitTypeDef.GPIO_Pin=GPIO_Pin_3|GPIO_Pin_4|GPIO_Pin_5;
	GPIO_Init(GPIOB,&KEY_InitTypeDef);
	KEY_InitTypeDef.GPIO_Mode=GPIO_Mode_IPU;
	KEY_InitTypeDef.GPIO_Pin=GPIO_Pin_15;
	GPIO_Init(GPIOA,&KEY_InitTypeDef);
}
void VSP_PRO(void)
{
	if(AD_VspValue<100)
	{
		motorState=E_MOTOR_STOP;
		motorStatus=E_MOTOR_OFF;
		moto_run_err=0;
	}
	else
	{
		if(moto_run_err)
		{
			motorState=E_MOTOR_ERROR;
			motorStatus=E_MOTOR_OFF;
		}
		else
		{
			if( motorStatus!=E_MOTOR_ON)
			{
				motorState=E_MOTOR_INIT;  //  start	  
				motorStatus=E_MOTOR_ON;
			}	
			if(AD_VspValue>4050)
			{
				MOTE_PWM_SET=1799;
			}
			else
			{
				MOTE_PWM_SET=AD_VspValue*0.45;
			}
		}

	}
}


