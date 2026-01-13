#include "config.h"

bit Led_FlashFlags = 0;										//LED闪烁标志
xdata u16 Led_FlashTime = 0;							//LED闪烁间隔时间
xdata u8  Led_FlashCnt = 0;								//LED闪烁次数
xdata u8  Led_LevelValueTargetH = 0;
xdata u8  Led_LevelValueTargetL = 0;

void led()
{
	u8 i;
	for(i=0;i<DATALENGTH;i++)
	{
		DataBuff[i] = 0;
	}
	
	if(((Bat_Level == 0) && Bat_LevelLowFlags) || Bat_ChargeFlags)
	{
		Led_FlashTime++;
		if(Led_FlashTime < 500)
			Led_FlashFlags = 1;
		else if(Led_FlashTime < 1000)
			Led_FlashFlags = 0;
		else
		{
			Led_FlashTime = 0;
			Led_FlashCnt++;
		}
	}
	
	if(SysPowerOutFlags)
	{
		if(Bat_LevelLowFlags)
		{
			LCD_LE;
			LCD_R0;
		}
		else if(Motor_CurrentErrorFlags)
		{
			LCD_LE;
			LCD_Rr;
		}
		else if(Motor_MotorErrorFlags | AD_Op1oValueInitErrorFlags)
		{
			LCD_LE;
			LCD_Rr;
		}
		else if(Motor_RestartStopFlags)
		{
			LCD_LE;
			LCD_Rr;
		}
		else
		{
			if(Motor_StopTempFlags)
			{
				LCD_RP;
			}
			else
			{
				LCD_P;
				Led_LevelValueTargetH = Vsp_LevelValueTarget / 10;
				Led_LevelValueTargetL = Vsp_LevelValueTarget % 10;
//				Led_LevelValueTargetH = AD_VinValue%100/10;
//				Led_LevelValueTargetL = AD_VinValue%100%10;
				
				switch(Led_LevelValueTargetH)
				{
					case 0	:	LCD_L0;break;
					case 1	:	LCD_L1;break;
					case 2	:	LCD_L2;break;
					case 3	:	LCD_L3;break;
					case 4	:	LCD_L4;break;
					case 5	:	LCD_L5;break;
					case 6	:	LCD_L6;break;
					case 7	:	LCD_L7;break;
					case 8	:	LCD_L8;break;
					case 9	:	LCD_L9;break;
				}
				
				switch(Led_LevelValueTargetL)
				{
					case 0	:	LCD_R0;break;
					case 1	:	LCD_R1;break;
					case 2	:	LCD_R2;break;
					case 3	:	LCD_R3;break;
					case 4	:	LCD_R4;break;
					case 5	:	LCD_R5;break;
					case 6	:	LCD_R6;break;
					case 7	:	LCD_R7;break;
					case 8	:	LCD_R8;break;
					case 9	:	LCD_R9;break;
				}
			}
		}
		
		if(Motor_FRFlags)
		{
			LCD_R;
		}
		else
		{
			LCD_F;
		}
	}
	
	if(Bat_ChargeFlags)
	{
		LCD_BAT;
		switch(Bat_Level)
		{
			case 0 : 	if(Led_FlashFlags) 
								{
									LCD_BAT1;
								}break;
								
			case 1 : 	if(Led_FlashFlags) 
								{
									LCD_BAT1;
								}break;
								
			case 2 : 	LCD_BAT1;
								if(Led_FlashFlags) 
								{
									LCD_BAT2;
								}break;
								
			case 3 : 	LCD_BAT2;
								if(Led_FlashFlags) 
								{
									LCD_BAT3;
								}break;
								
			case 4 : 	LCD_BAT3;
								if(Led_FlashFlags) 
								{
									LCD_BAT4;
								}break;
								
			case 5 : 	LCD_BAT4;
								if(Led_FlashFlags) 
								{
									LCD_BAT5;
								}break;
								
			case 6 : 	LCD_BAT5;
								break;
		}
	}
	else
	{
		if(SysPowerOutFlags)
		{
			switch(Bat_Level)
			{
				case 0 :	if(Bat_LevelLowFlags)
									{
										if(Led_FlashFlags)
										{
											LCD_BAT;
											LCD_BAT0;
										}
										if(Led_FlashCnt > 5)
										{
//											BLED = 0;
											SysPowerOutFlags = 0;
											SysOnceFlags = 1;
										}
									}
									else
									{
										LCD_BAT;
										LCD_BAT0;
									}break;
				case 1 :  LCD_BAT;LCD_BAT1;break;
				case 2 :  LCD_BAT;LCD_BAT2;break;
				case 3 :  LCD_BAT;LCD_BAT3;break;
				case 4 :  LCD_BAT;LCD_BAT4;break;
				case 5 :  LCD_BAT;LCD_BAT5;break;
				case 6 :  LCD_BAT;LCD_BAT5;break;
			}
		}
	}
	
	tm1621_send();
}