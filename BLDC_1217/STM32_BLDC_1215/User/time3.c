#include"time3.h"

void TIM3_PWM_Init(void)
{
	NVIC_InitTypeDef NVIC_InitStructure;     
    TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;
    
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);
    // 定时器时基配置
    // 系统时钟72MHz，预分频0，计数频率72MHz
    TIM_TimeBaseStructure.TIM_Period = 0xffff;        // 4mhz//0.25us
    TIM_TimeBaseStructure.TIM_Prescaler =18;      
    TIM_TimeBaseStructure.TIM_ClockDivision =0;
    TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
    TIM_TimeBaseInit(TIM3, &TIM_TimeBaseStructure);
    
	TIM_ClearITPendingBit(TIM3,TIM_IT_Update);                    //清除溢出中断标志位
	TIM_ITConfig(TIM3,TIM_IT_Update,ENABLE);                      //使能TIM3溢出中断    

	NVIC_InitStructure.NVIC_IRQChannel=TIM3_IRQn;                 //设置TIM3中断
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority=2;       //抢占优先级2
	NVIC_InitStructure.NVIC_IRQChannelSubPriority=1;              //子优先级0
	NVIC_InitStructure.NVIC_IRQChannelCmd=ENABLE;                 //中断通道使能
	NVIC_Init(&NVIC_InitStructure);                               //设置中断    
    TIM_Cmd(TIM3, DISABLE);
}
//0.25us
void TIM3_IRQHandler(void)
{		
	if(TIM_GetITStatus(TIM3, TIM_IT_Update) != RESET)
	{ 
		LED1^=1;
		TIM_ClearITPendingBit(TIM3, TIM_IT_Update);     //清除TIM2溢出中断标志 	
	}
}
