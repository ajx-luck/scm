void buzzer();

extern xdata u16 BuzzerTime1ms;
extern bit BuzzerOnFlags;

#define BUZZERTIME 	100							//us 蜂鸣器开启时间 

#define BUZZERON 		BUZCON |= 0x80;	//使能蜂鸣器
#define BUZZEROFF 	BUZCON &= 0x7F; //关闭蜂鸣器
#define	BUZZERGO		{												\
											if(SysPowerOutFlags) 	\
											{											\
												BuzzerTime1ms = 0;  \
												BuzzerOnFlags = 1;	\	
											}		 									\
										}