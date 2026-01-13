#include "PWM.h"
void HS_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);	
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);	
	
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_11|GPIO_Pin_12;
	GPIO_Init(GPIOA, &GPIO_InitStructure);	
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_12|GPIO_Pin_8;
	GPIO_Init(GPIOB, &GPIO_InitStructure);	

}
void TIM1_PWM_Configuration(void)
{
    GPIO_InitTypeDef GPIO_InitStructure;
    TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;
    TIM_OCInitTypeDef TIM_OCInitStructure;
//    TIM_BDTRInitTypeDef TIM_BDTRInitStructure;

    // 使能时钟
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB | RCC_APB2Periph_AFIO | RCC_APB2Periph_TIM1, ENABLE);

    // 配置TIM1通道1,2,3的引脚 (PA8, PA9, PA10)
    // 通道1: PA8 - TIM1_CH1
    // 通道2: PA9 - TIM1_CH2  
    // 通道3: PA10 - TIM1_CH3
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8 | GPIO_Pin_9 | GPIO_Pin_10;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;  // 复用推挽输出
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOA, &GPIO_InitStructure);

    // 配置TIM1通道1,2,3的互补输出引脚 (PB13, PB14, PB15)
    // 通道1互补: PB13 - TIM1_CH1N
    // 通道2互补: PB14 - TIM1_CH2N
    // 通道3互补: PB15 - TIM1_CH3N
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_13 | GPIO_Pin_14 | GPIO_Pin_15;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;  // 推挽输出
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOB, &GPIO_InitStructure);

//    // 配置刹车引脚 (PB12 - TIM1_BKIN) - 可选
//    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_12;
//    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
//    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
//    GPIO_Init(GPIOB, &GPIO_InitStructure);

    // 定时器时基配置
    // 假设系统时钟为72MHz
    TIM_TimeBaseStructure.TIM_Prescaler = 0;        // 预分频器
    TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up; 
    TIM_TimeBaseStructure.TIM_Period = 1799;        // 自动重装载值 (36MHz /(1799+1) = 10kHz)
    TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1;
    TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;
    TIM_TimeBaseInit(TIM1, &TIM_TimeBaseStructure);

    // 输出比较配置 - PWM模式1
    TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1;
    TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;      // 使能主输出
    TIM_OCInitStructure.TIM_OutputNState = TIM_OutputNState_Disable;    // 使能互补输出
    TIM_OCInitStructure.TIM_Pulse = 0;                				// 初始占空比
    TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;         // 主输出极性
    TIM_OCInitStructure.TIM_OCNPolarity = TIM_OCNPolarity_High;       // 互补输出极性
    TIM_OCInitStructure.TIM_OCIdleState = TIM_OCIdleState_Reset;
    TIM_OCInitStructure.TIM_OCNIdleState = TIM_OCNIdleState_Reset;

    // 配置通道1
    TIM_OC1Init(TIM1, &TIM_OCInitStructure);
    TIM_OC1PreloadConfig(TIM1, TIM_OCPreload_Enable);

    // 配置通道2
    TIM_OC2Init(TIM1, &TIM_OCInitStructure);
    TIM_OC2PreloadConfig(TIM1, TIM_OCPreload_Enable);

    // 配置通道3
    TIM_OC3Init(TIM1, &TIM_OCInitStructure);
    TIM_OC3PreloadConfig(TIM1, TIM_OCPreload_Enable);

//    // 刹车和死区时间配置
//    TIM_BDTRInitStructure.TIM_OSSRState = TIM_OSSRState_Enable;
//    TIM_BDTRInitStructure.TIM_OSSIState = TIM_OSSIState_Enable;
//    TIM_BDTRInitStructure.TIM_LOCKLevel = TIM_LOCKLevel_1;
//    TIM_BDTRInitStructure.TIM_DeadTime = 27;         // 死区时间 (54 * 13.89ns ≈ 750ns)
////	TIM_BDTRInitStructure.TIM_Break = TIM_Break_Enable;
////	TIM_BDTRInitStructure.TIM_BreakPolarity = TIM_BreakPolarity_Low;
//    TIM_BDTRInitStructure.TIM_AutomaticOutput = TIM_AutomaticOutput_Enable;
//    TIM_BDTRConfig(TIM1, &TIM_BDTRInitStructure);

    // 使能定时器预装载寄存器
    TIM_ARRPreloadConfig(TIM1, ENABLE);

    // 使能定时器1主输出
    TIM_CtrlPWMOutputs(TIM1, ENABLE);

    // 启动定时器1
    TIM_Cmd(TIM1, ENABLE);
}
// 单独开启所有输出
void TIM1_EnableAllOutputs(void)
{
    // 开启所有主输出
    TIM_CCxCmd(TIM1, TIM_Channel_1, ENABLE);
    TIM_CCxCmd(TIM1, TIM_Channel_2, ENABLE);
    TIM_CCxCmd(TIM1, TIM_Channel_3, ENABLE);
    
    // 开启所有互补输出
    TIM_CCxNCmd(TIM1, TIM_Channel_1, ENABLE);
    TIM_CCxNCmd(TIM1, TIM_Channel_2, ENABLE);
    TIM_CCxNCmd(TIM1, TIM_Channel_3, ENABLE);
}
// 单独关闭所有输出
void TIM1_DisableAllOutputs(void)
{
    // 关闭所有主输出
    TIM_CCxCmd(TIM1, TIM_Channel_1, DISABLE);
    TIM_CCxCmd(TIM1, TIM_Channel_2, DISABLE);
    TIM_CCxCmd(TIM1, TIM_Channel_3, DISABLE);
    
//    // 关闭所有互补输出
//    TIM_CCxNCmd(TIM1, TIM_Channel_1, DISABLE);
//    TIM_CCxNCmd(TIM1, TIM_Channel_2, DISABLE);
//    TIM_CCxNCmd(TIM1, TIM_Channel_3, DISABLE);
}
// 设置PWM占空比
void TIM1_SetDutyCycle(uint8_t channel, uint16_t duty)
{
    
    switch(channel)
    {
        case 1:
            TIM1->CCR1 = duty;
            break;
        case 2:
            TIM1->CCR2 = duty;
            break;
        case 3:
            TIM1->CCR3 = duty;
            break;
    }
}


void PWM_Set(u16 Compare)
{
	TIM_SetCompare1(TIM1,Compare);
	TIM_SetCompare2(TIM1,Compare);
	TIM_SetCompare3(TIM1,Compare);
}



