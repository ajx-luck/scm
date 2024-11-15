/***********************************************************************
方案说明：
***********************************************************************/
/**********************************************************************/
/*修改说明*/

/**********************************************************************/
/**********************************************************************/
/**********************************************************************/
/*头文件*/
#include "drive.h"

/*********************************************************************
1、WHQ_SENDER_ENABLE定义为1时为调试模式，可观察雾化器的主要数据；
2、正常使用时请把WHQ_SENDER_ENABLE定义为0；

注：WHQ_SENDER_ENABLE 已定义在WHQ_Sender.h中，默认为0
**********************************************************************/
//*********************全局变量***************************
//按键相关
u8  btn_work_cnt;
u8  btn_led_cnt;
u8  btn_fog_cnt;

//工作相关
u8  work_mod;
u8  led_mod;
u8  fog_mod;

//led相关
u8  led_breath_cnt;
u8  led_breath_way;
u8  ledr_breath_duty;
u8  ledg_breath_duty;
u8  ledb_breath_duty;

u8  led_mod1_flg;
u8  led_mod2_flg;
u8  led_mod3_flg;
u8  led_mod4_flg;
u8  led_scan_delay;

//蜂鸣器相关
u8  beep_cnt;
u8  beep_flg;

//雾化错误扫描
u8  fog_status_buff;
u8  fog_erro_flg;
u8  fog_erro_cnt;

//定时
u16 timing_10ms_cnt;
u8  timing_1min_cnt;
u8  timing_set_num;

//*********************全局变量***************************
//*********************函数定义***************************
void data_init(void);

void button_scan(void);
void fog_erro_scan(void);

void fan_handle(void);
void fog_handle(void);
void beep_handle(void);
void led_handle(void);
void timing_handle(void);
//*********************函数定义***************************
/********************************************************************
*功  能：主函数
*形  参：void
*返回值：void
*说  明：循环执行
********************************************************************/
void main(void)
{
	/******************************************************************/
	register_init();//上电给初值
	data_init();
	drive_data_init();
	while(1)
	{
		Sys_set();//频繁刷新寄存器保持稳定
		if(fog_time_5ms_flg)
		{	
			fog_time_5ms_flg=0;
			#if (WHQ_SENDER_ENABLE == 1)//调试宏定义是否为1
				WHQ_SenderLoop();//发码子程序
			#endif	
			fog_erro_scan();//雾化片状态检测
		}
		if(time_10ms_flg)
		{	
			time_10ms_flg=0;
			CLRWDT();
			
			button_scan();

			fan_handle();
			fog_handle();
			beep_handle();
			led_handle();
			timing_handle();
		}
	}
}
/**********************************************************************/
/********************************************************************
*功  能：数据初始化

*说  明：上电复位调用一次
********************************************************************/
void data_init(void)
{
//按键相关
	btn_work_cnt=0;	
	btn_led_cnt=0;
	btn_fog_cnt=0;
	
//工作相关
	work_mod=0;
	led_mod=0;
	fog_mod=0;
	
//led相关
	led_breath_cnt=0;
	led_breath_way=0;
	ledr_breath_duty=0;
	ledg_breath_duty=0;
	ledb_breath_duty=0;
	
	led_mod1_flg=0;
	led_mod2_flg=0;
	led_mod3_flg=0;
	led_mod4_flg=0;
	led_scan_delay=0;
	
//蜂鸣器相关
	beep_cnt=BEEP_DOUBLE_NUM;
	beep_flg=0;
	
//雾化错误扫描
	fog_status_buff=0;
	fog_erro_flg=0;
	fog_erro_cnt=0;
	
//定时
	timing_10ms_cnt=0;
	timing_1min_cnt=0;
	timing_set_num=60;
}
/********************************************************************
*功  能：按键开关扫描

*说  明：10ms
********************************************************************/
void button_scan(void)
{
	#define 	BTN_MAX_NUM			250
	#define     BTN_WORK_NUM		5
	#define     BTN_LONG_NUM		100

	if(!PIN_BTN_WORK)
	{
		if(btn_work_cnt < BTN_MAX_NUM)
		{
			btn_work_cnt++;
		}
		if(btn_work_cnt == BTN_LONG_NUM)
		{
			if(work_mod)
			{
				work_mod=0;
				led_mod=0;
				beep_cnt=BEEP_DOUBLE_NUM;
				timing_10ms_cnt=0;
				timing_1min_cnt=0;
			}
		}
	}
	else
	{
		if((btn_work_cnt > BTN_WORK_NUM) && (btn_work_cnt < BTN_LONG_NUM))
		{
			work_mod++;
			if(work_mod > 4)
			{
				work_mod=0;
				led_mod=0;
				beep_cnt=BEEP_DOUBLE_NUM;
			}
			else
			{
				beep_cnt=BEEP_SINGLE_NUM;
			}
			timing_10ms_cnt=0;
			timing_1min_cnt=0;
		}
		btn_work_cnt=0;
	}
	//**************
	if(!PIN_BTN_LED)
	{
		if(btn_led_cnt < BTN_MAX_NUM)
		{
			btn_led_cnt++;
		}
		if(btn_led_cnt == BTN_LONG_NUM)
		{
			if(led_mod)
			{
				led_mod=0;
				beep_cnt=BEEP_DOUBLE_NUM;
			}
		}
	}
	else
	{
		if((btn_led_cnt > BTN_WORK_NUM) && (btn_led_cnt < BTN_LONG_NUM))
		{
			led_mod++;
			if(led_mod > 16)
			{
				led_mod=0;
				beep_cnt=BEEP_DOUBLE_NUM;
			}
			if(led_mod == 1)
			{
				led_breath_cnt=0;
				led_breath_way=0;
				ledr_breath_duty=LED_DUTY_MAX;
				ledg_breath_duty=LED_DUTY_MAX;
				ledb_breath_duty=LED_DUTY_MAX;
			}
		}
		btn_led_cnt=0;
	}
	//**************
	if(!PIN_BTN_FOG)
	{
		if(btn_fog_cnt < BTN_MAX_NUM)
		{
			btn_fog_cnt++;
		}
		if(btn_fog_cnt == BTN_WORK_NUM)
		{
			if(work_mod)
			{
				fog_mod++;
				if(fog_mod > 1)
				{
					fog_mod=0;
				}
				if(!fog_mod)
				{
					beep_cnt=BEEP_SINGLE_NUM;
				}
				else
				{
					beep_cnt=BEEP_DOUBLE_NUM;
				}
			}
		}
	}
	else
	{
		btn_fog_cnt=0;
	}
	//*************************
	if(fog_erro_flg)
	{
		if(work_mod)
		{
			work_mod=0;
			led_mod=0;
			beep_cnt=BEEP_SINGLE_NUM;
		}
	}
}
/********************************************************************
*功  能：风扇事件

*说  明：10ms
********************************************************************/
void fan_handle(void)
{
	if(work_mod)
	{
		FAN_ON();
	}
	else
	{
		FAN_OFF();
	}
}
/********************************************************************
*功  能：雾化事件

*说  明：10ms
********************************************************************/
void fog_handle(void)
{
	if(!work_mod)
	{
		fog_mod=0;
		fog_drive_mod=0;
	}
	else
	{
		if(!fog_mod)
		{
			fog_drive_mod=1;
		}
		else
		{
			fog_drive_mod=2;
		}
	}
}
/********************************************************************
*功  能：蜂鸣器事件

*说  明：10ms
********************************************************************/
void beep_handle(void)
{
	if(beep_cnt)
	{	
		beep_cnt--;
		if(beep_cnt >= 18)
		{
			beep_flg=1;
		}
		else if(beep_cnt >= 8)
		{
			beep_flg=0;
		}
		else
		{
			beep_flg=1;
		}
	}
	else
	{
		beep_flg=0;
	}
	//*************
	if(beep_flg)
	{
		BEEP_ON();
	}
	else
	{
		BEEP_OFF();
	}
}
/********************************************************************
*功  能：LED事件

*说  明：10ms
********************************************************************/
void led_handle(void)
{
	if(!led_mod)
	{
		led_breath_cnt=0;
		led_breath_way=0;
		ledr_breath_duty=LED_DUTY_MAX;
		ledg_breath_duty=LED_DUTY_MAX;
		ledb_breath_duty=LED_DUTY_MAX;
		
		ledr_pecent=0;
		ledg_pecent=0;
		ledb_pecent=0;
	}
	else if(led_mod == 1)//彩灯渐变
	{
		led_breath_cnt++;
		if(led_breath_cnt >= 8)//80ms变化一次占空比  简略看做X*S变换一次颜色
		{
			led_breath_cnt=0;
			switch(led_breath_way)
			{
				case 0 :  //
					ledg_breath_duty=LED_DUTY_MAX;
					if(ledr_breath_duty)
					{
						ledr_breath_duty--;
					}
					if(ledb_breath_duty)
					{
						ledb_breath_duty--;
					}
					else
					{
						led_breath_way++;
						ledr_breath_duty=0;
					}
					break;
				case 1 :
					ledb_breath_duty=0;
					if(ledr_breath_duty < LED_DUTY_MAX)
					{
						ledr_breath_duty++;
					}
					if(ledg_breath_duty)
					{
						ledg_breath_duty--;
					}
					else
					{
						led_breath_way++;
						ledr_breath_duty = LED_DUTY_MAX;
					}
					break;
				case 2 :
					ledg_breath_duty=0;
					if(ledb_breath_duty < LED_DUTY_MAX)
					{
						ledb_breath_duty++;
					}
					if(ledr_breath_duty)
					{
						ledr_breath_duty--;
					}
					else
					{
						led_breath_way++;
						ledb_breath_duty = LED_DUTY_MAX;
					}
					break;
				case 3 :
					ledb_breath_duty = LED_DUTY_MAX;
					if(ledr_breath_duty < LED_DUTY_MAX)
					{
						ledr_breath_duty++;
					}
					if(ledg_breath_duty < LED_DUTY_MAX)
					{
						ledg_breath_duty++;
					}
					else
					{
						led_breath_way=0;
						ledr_breath_duty = LED_DUTY_MAX;
					}
					break;
				default :
					led_breath_way=0;
					break;
			}
		}
		ledr_pecent=ledr_breath_duty;
		ledg_pecent=ledg_breath_duty;
		ledb_pecent=ledb_breath_duty;
	}
	else if(led_mod == 2)//暂停
	{
		ledr_pecent=ledr_breath_duty;
		ledg_pecent=ledg_breath_duty;
		ledb_pecent=ledb_breath_duty;
	}
	else if(led_mod == 3)
	{
		ledr_pecent=0;
		ledg_pecent=50;
		ledb_pecent=0;
	}
	else if(led_mod == 4)
	{
		ledr_pecent=0;
		ledg_pecent=100;
		ledb_pecent=0;
	}
	else if(led_mod == 5)
	{
		ledr_pecent=0;
		ledg_pecent=0;
		ledb_pecent=50;
	}
	else if(led_mod == 6)
	{
		ledr_pecent=0;
		ledg_pecent=0;
		ledb_pecent=100;
	}
	else if(led_mod == 7)
	{
		ledr_pecent=50;
		ledg_pecent=0;
		ledb_pecent=0;
	}
	else if(led_mod == 8)
	{
		ledr_pecent=100;
		ledg_pecent=0;
		ledb_pecent=0;
	}
	else if(led_mod == 9)
	{
		ledr_pecent=50;
		ledg_pecent=50;
		ledb_pecent=0;
	}
	else if(led_mod == 10)
	{
		ledr_pecent=100;
		ledg_pecent=100;
		ledb_pecent=0;
	}
	else if(led_mod == 11)
	{
		ledr_pecent=50;
		ledg_pecent=0;
		ledb_pecent=50;
	}
	else if(led_mod == 12)
	{
		ledr_pecent=100;
		ledg_pecent=0;
		ledb_pecent=100;
	}
	else if(led_mod == 13)
	{
		ledr_pecent=0;
		ledg_pecent=50;
		ledb_pecent=50;
	}
	else if(led_mod == 14)
	{
		ledr_pecent=0;
		ledg_pecent=100;
		ledb_pecent=100;
	}
	else if(led_mod == 15)
	{
		ledr_pecent=50;
		ledg_pecent=50;
		ledb_pecent=50;
	}
	else
	{
		ledr_pecent=100;
		ledg_pecent=100;
		ledb_pecent=100;
	}
	
	//**************************
	if(!ledr_pecent)
	{
		LEDR_PWM_OFF();
		LED_R_OFF();
	}
	else if(ledr_pecent > 99)
	{
		LEDR_PWM_OFF();
		LED_R_ON();
	}
	else
	{
		LEDR_DUTY=ledr_pecent;
		LEDR_PWM_ON();
	}
	if(!ledg_pecent)
	{
		LEDG_PWM_OFF();
		LED_G_OFF();
	}
	else if(ledg_pecent > 99)
	{
		LEDG_PWM_OFF();
		LED_G_ON();
	}
	else
	{
		LEDG_DUTY=ledg_pecent;
		LEDG_PWM_ON();
	}
	if(!ledb_pecent)
	{
		LEDB_PWM_OFF();
		LED_B_OFF();
	}
	else if(ledb_pecent > 99)
	{
		LEDB_PWM_OFF();
		LED_B_ON();
	}
	else
	{
		LEDB_DUTY=ledb_pecent;
		LEDB_PWM_ON();
	}
	//***********************************工作灯
	switch(work_mod)
	{
		case 0 :
			led_mod1_flg=0;
			led_mod2_flg=0;
			led_mod3_flg=0;
			led_mod4_flg=0;
			break;
		case 1 :
			led_mod1_flg=1;
			led_mod2_flg=0;
			led_mod3_flg=0;
			led_mod4_flg=0;
			break;
		case 2 :
			led_mod1_flg=0;
			led_mod2_flg=1;
			led_mod3_flg=0;
			led_mod4_flg=0;
			break;
		case 3 :
			led_mod1_flg=0;
			led_mod2_flg=0;
			led_mod3_flg=1;
			led_mod4_flg=0;
			break;
		case 4 :
			led_mod1_flg=0;
			led_mod2_flg=0;
			led_mod3_flg=0;
			led_mod4_flg=1;
			break;
		default :
			work_mod=0;
			break;
	}
	//************
	LED_ALL_OFF();
	led_scan_delay=10;
	while(led_scan_delay)
	{
		led_scan_delay--;
	}
	LED_IO_OFF();
	if(led_mod1_flg)
	{
		LED_MOD1_ON();
	}
	else if(led_mod2_flg)
	{
		LED_MOD2_ON();
	}
	else if(led_mod3_flg)
	{
		LED_MOD3_ON();
	}
	else if(led_mod4_flg)
	{
		LED_MOD4_ON();
	}
	else
	{
		//
	}
}
/***********************************************************************
子函数功能：调用追频
入口参数：
返回数据：
备注：
***********************************************************************/
void fog_erro_scan(void)
{
	if(!work_mod)
	{
		fog_status_buff=0;
		fog_erro_flg=0;
		fog_erro_cnt=0;
	}
	else
	{
		fog_status_buff=0;
		fog_status_buff = Test_Pwm();
		
		if(fog_status_buff == 0x55)//初始化失败
		{
			fog_erro_flg=1;
		}
		if(fog_status_buff == 0xff)//雾化片干烧
		{
			fog_erro_flg=1;
		}
	}
}
/********************************************************************
*功  能：定时事件

*说  明：10ms
********************************************************************/
void timing_handle(void)
{
	switch(work_mod)
	{
		case 0 :
			timing_set_num=60;
			break;
		case 1 :
			timing_set_num=60;
			break;
		case 2 :
			timing_set_num=120;
			break;
		case 3 :
			timing_set_num=180;
			break;
		case 4 :
			timing_set_num=0;
			break;
		default :
			work_mod=0;
			break;
	}
	if(!work_mod)
	{
		timing_10ms_cnt=0;
		timing_1min_cnt=0;
	}
	else
	{
		if(!timing_set_num)
		{
			timing_10ms_cnt=0;
			timing_1min_cnt=0;
		}
		else
		{
			timing_10ms_cnt++;
			if(timing_10ms_cnt >= TIME_1MIN_NUM)
			{
				timing_10ms_cnt=0;
				timing_1min_cnt++;
				if(timing_1min_cnt >= timing_set_num)//X分钟
				{
					timing_1min_cnt=0;
					work_mod=0;
					led_mod=0;
					beep_cnt=BEEP_SINGLE_NUM;
				}
			}
		}
	}
}
