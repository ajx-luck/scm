#include "config.h"

bit Bat_OnceFlags = 0;
bit Bat_ChargeFlags = 0;									//充电标志
bit Bat_LevelLowFlags = 0;								//电池电量低
xdata u16  Bat_DelayTime = 500;						//电池电量启动更新延迟200ms
xdata u8  Bat_Level = 0;									//电池电量格数
xdata u8  Bat_LevelTemp = 0;							//电池电量格数
xdata u32 Bat_LevelUpdateTime = 0;				//电池电量格数更新周期
xdata u16 Bat_LowDelayTime = 0;						//电池低电量判断周期
xdata u16 Bat_ChargeDelayTime = 0;				//充电判断周期
xdata u16 Bat_ChargeUnFullTime = CHARGEUNFULLTIME;		//电池不再满电延迟判断时间
xdata u16 Bat_ChargeFullTimems = 0;				//电池充满时间毫秒
xdata u16 Bat_ChargeFullTimes = 0;				//电池充满时间秒
xdata u16 Bat_ChargeFullTimem = 0;				//电池充满时间分钟

bit Bat_FullAct = 0;

void bat()
{
//	if(0)//CHK_CHG
//	{
//		Bat_ChargeDelayTime++;
//		if(Bat_ChargeDelayTime >30)
//		{
//			Bat_ChargeDelayTime = 30;
//			Bat_ChargeFlags = 1;
//			Bat_LevelLowFlags = 0;
//			Bat_LowDelayTime = 0;
////		BLED = 1;
//		}
//	}
//	else
//	{
//		Bat_ChargeDelayTime = 0;
//		Bat_ChargeFlags = 0;
//	}

 //Bat_ChargeFlags=1;
	
	if(Bat_ChargeFlags)
	{
		if(AD_VinValue <= CHRG0)
		{
			    Bat_FullAct=0;
			   Bat_LevelTemp = 1;// 0
		}
		else if(AD_VinValue <= CHRG1)
		{
			    Bat_FullAct=0;
			   Bat_LevelTemp = 2;// 1
		}
		else if(AD_VinValue <= CHRG2)
		{
			    Bat_FullAct=0;
			   Bat_LevelTemp = 3;// 2
		}
		else if(AD_VinValue <= CHRG3)
		{
			    Bat_FullAct=0;
			   Bat_LevelTemp = 4;// 3
		}
		else
		{
		    Bat_FullAct=1;
			Bat_LevelTemp = 4;// 4
		}	
			
	}
	else
	{
		if(AD_VinValue <= BAT0)
			Bat_LevelTemp = 0;
		else if(AD_VinValue <= BAT1)
			Bat_LevelTemp = 1;
		else if(AD_VinValue <= BAT2)
			Bat_LevelTemp = 2;
		else if(AD_VinValue <= BAT3)
			Bat_LevelTemp = 3;
		else
			Bat_LevelTemp = 4;
	}
	
	if(Bat_DelayTime)
	{
		Bat_DelayTime--;
		Bat_Level = Bat_LevelTemp;
	}
	else
	{
		if(Bat_LevelLowFlags)
		{
			Motor_StopTempFlags = 1;
			Bat_LevelUpdateTime++;
			if(Bat_LevelUpdateTime > 200)
			{
				Bat_LevelUpdateTime = 0;
				
				if(Bat_Level)
					Bat_Level--;
			}
		}
		else
		{
			if(Bat_LevelTemp)
			{
				Bat_LowDelayTime = 0;
				if(Bat_Level != Bat_LevelTemp)
				{
				 	Bat_LevelUpdateTime++;
					
					if(Bat_ChargeFlags)
					{
						if(Bat_LevelUpdateTime >30000)//  300000 //5min
						{
							 Bat_LevelUpdateTime = 0;
							
							if(Bat_Level < Bat_LevelTemp)
								Bat_Level++;
							else if(Bat_Level > Bat_LevelTemp)
								Bat_Level--;
						}
					}
					else
					{
						if(Bat_LevelUpdateTime > 30000)  //30s
						{
							Bat_LevelUpdateTime = 0;
							if(Bat_Level < Bat_LevelTemp)
								Bat_Level++;
							else if(Bat_Level > Bat_LevelTemp)
								Bat_Level--;
						}
					}
				}
				else
					Bat_LevelUpdateTime = 0;
			}
			else
			{
				Bat_LowDelayTime++;
				if(Bat_LowDelayTime > 3000)
				{
					Bat_LowDelayTime = 3000;
					
					if(Bat_ChargeFlags == 0)
					{
						Bat_LevelLowFlags = 1;
						Motor_StopTempFlags = 1;
					}
				}
			}
		}
	}
	
	if(Bat_ChargeFlags)
	{
		if(Bat_ChargeFullTimem >= CHARGEFULLTIME)
		{
			Bat_ChargeFullTimem = CHARGEFULLTIME;
			Bat_ChargeUnFullTime = CHARGEUNFULLTIME;
			Bat_Level = 5;
		}
		else
		{
			if((Bat_Level == 4)&&Bat_FullAct)
			{
				Bat_ChargeFullTimems++;
				if(Bat_ChargeFullTimems >= 1000)
				{
					Bat_ChargeFullTimems = 0;
					Bat_ChargeFullTimes++;
				}
				if(Bat_ChargeFullTimes >= 60)   
				{
					Bat_ChargeFullTimes = 0;
					Bat_ChargeFullTimem++;
				
					if(AD_VinValue > 850)				//电压超过4.15V1S 则直接转灯
						Bat_ChargeFullTimem = CHARGEFULLTIME; 
					SysOnceFlags = 1;
				}
			}
//			else if(Bat_Level <= 3)
//			{
//				Bat_ChargeFullTimems = 0;
//				Bat_ChargeFullTimes = 0;
//			}
		}
	}
//	else
//	{
//		Bat_ChargeFullTimems = 0;
//		Bat_ChargeFullTimes = 0;
//	}
		
//	if(Bat_Level <= 3)
      if(Bat_LevelTemp<=3&&(Bat_DelayTime==0x00))
	{
		Bat_ChargeFullTimems = 0;
		Bat_ChargeFullTimes = 0;
		Bat_ChargeFullTimem = 0;
		if(Bat_ChargeUnFullTime)
		{
			Bat_ChargeUnFullTime--;
			if(Bat_ChargeUnFullTime==0x00)
			{
			 Bat_Level = Bat_LevelTemp;
			}
			Bat_OnceFlags = 1;
		}
		else
		{
			Bat_ChargeFullTimem = 0;
			if(Bat_OnceFlags)
			{
				Bat_OnceFlags = 0;
				SysOnceFlags = 1;
			}
		}
	}
	else
	{
		Bat_OnceFlags = 1;
		Bat_ChargeUnFullTime = CHARGEUNFULLTIME;
	}
}