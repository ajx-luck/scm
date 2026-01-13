#include "system.h"
#include "SysTick.h"
#include "FreeRTOS.h"
#include "task.h"
#include "bmp.h"

//任务优先级
#define START_TASK_PRIO		1
//任务堆栈大小	
#define START_STK_SIZE 		512  
//任务句柄
TaskHandle_t StartTask_Handler;
//任务函数
void start_task(void *pvParameters);

//任务优先级
#define LED1_TASK_PRIO		2
//任务堆栈大小	
#define LED1_STK_SIZE 		128  
//任务句柄
TaskHandle_t LED1Task_Handler;
//任务函数
void led1_task(void *pvParameters);

//任务优先级
#define LED2_TASK_PRIO		3
//任务堆栈大小	
#define LED2_STK_SIZE 		128  
//任务句柄
TaskHandle_t LED2Task_Handler;
//任务函数
void led2_task(void *pvParameters);

//任务优先级
#define LED3_TASK_PRIO		4
//任务堆栈大小	
#define LED3_STK_SIZE 		128  
//任务句柄
TaskHandle_t LED3Task_Handler;
//任务函数
void led3_task(void *pvParameters);

u8 sys_1ms=0;
u8 sys_100ms=0;
/*******************************************************************************
* 函 数 名         : main
* 函数功能		   : 主函数
* 输    入         : 无
* 输    出         : 无
*******************************************************************************/
int main()
{

	SysTick_Init(72);
	USART1_Init(115200);
	OLED_Init();			//初始化OLED  
	OLED_Clear()  	;
	
	TIM4_ENABLE_1MS();
	LED_Init();
	TIM1_PWM_Configuration();
	TIM2_PWM_Init();
	TIM3_PWM_Init();
	ADCx_Init();
	HS_Init();
	while(1)
	{
		SensorMotorRun();
		if(sys_1ms)
		{
			if(moto_err_time_flag)
			{
				moto_err_time++;
				if(moto_err_time>=2000)
				{
					moto_err_time=0;
					moto_run_err=1;
				}
			}
			else
			{
				moto_err_time=0;
			}
			sys_1ms=0;
			Get_Adc_Average();
			VSP_PRO();
			sys_100ms++;
			if(sys_100ms>=200)
			{
				sys_100ms=0;
				
			}
		}
		
	}	
//创建开始任务
//    xTaskCreate((TaskFunction_t )start_task,            //任务函数
//                (const char*    )"start_task",          //任务名称
//                (uint16_t       )START_STK_SIZE,        //任务堆栈大小
//                (void*          )NULL,                  //传递给任务函数的参数
//                (UBaseType_t    )START_TASK_PRIO,       //任务优先级
//                (TaskHandle_t*  )&StartTask_Handler);   //任务句柄              
//    vTaskStartScheduler();          //开启任务调度
}
void TIM4_IRQHandler(void)
{		
	if(TIM_GetITStatus(TIM4, TIM_IT_Update) != RESET)
	{ 
		sys_1ms=1;

		TIM_ClearITPendingBit(TIM4, TIM_IT_Update);     //清除TIM2溢出中断标志 	
	}
}
////开始任务任务函数
//void start_task(void *pvParameters)
//{
//    taskENTER_CRITICAL();           //进入临界区
//      
//    //创建LED1任务
//    xTaskCreate((TaskFunction_t )led1_task,     
//                (const char*    )"led1_task",   
//                (uint16_t       )LED1_STK_SIZE, 
//                (void*          )NULL,
//                (UBaseType_t    )LED1_TASK_PRIO,
//                (TaskHandle_t*  )&LED1Task_Handler); 
//				
//	//创建LED2任务
//    xTaskCreate((TaskFunction_t )led2_task,     
//                (const char*    )"led2_task",   
//                (uint16_t       )LED2_STK_SIZE, 
//                (void*          )NULL,
//                (UBaseType_t    )LED2_TASK_PRIO,
//                (TaskHandle_t*  )&LED2Task_Handler); 
//			
//	//创建LED3任务
//    xTaskCreate((TaskFunction_t )led3_task,     
//                (const char*    )"led3_task",   
//                (uint16_t       )LED3_STK_SIZE, 
//                (void*          )NULL,
//                (UBaseType_t    )LED3_TASK_PRIO,
//                (TaskHandle_t*  )&LED3Task_Handler); 
//				
//    vTaskDelete(StartTask_Handler); //删除开始任务
//    taskEXIT_CRITICAL();            //退出临界区
//} 

////LED1任务函数
//void led1_task(void *pvParameters)
//{
//    while(1)
//    {			
//    }
//}
//void led2_task(void *pvParameters)
//{
//    while(1)
//    {
//		}
//}
//void led3_task(void *pvParameters)
//{
//	
//	while(1)
//	{

//	
//	}
//}








