#ifndef __HX711_H
#define __HX711_H
#include "system.h"
 
#define  HX711_DATA  PBin(4)       //这里使用的DOUT引脚是A11
#define  HX711_SCK   PBout(5)      //这里使用的SCK引脚是A12  
 
 
// USART GPIO 引脚宏定义
#define  HX711_GPIO_CLK            RCC_APB2Periph_GPIOB
#define  HX711_GPIO_APBxClkCmd     RCC_APB2PeriphClockCmd
	
#define  HX711_DATA_GPIO_PORT      GPIOB
#define  HX711_DATA_GPIO_PIN       GPIO_Pin_4	
#define  HX711_SCK_GPIO_PORT       GPIOB   
#define  HX711_SCK_GPIO_PIN        GPIO_Pin_5
 
 
 
void HX711_GPIO_Init(void);
uint32_t Read_HX711(void);
void Get_Tare(void);//获取皮重
void Get_Weight(void);	  //获取被测物体重量 
u32 get_zhongliang(void);
#endif
 
//最后记得空行！！！



