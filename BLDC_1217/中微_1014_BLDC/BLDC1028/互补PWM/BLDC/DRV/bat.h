void bat();

extern bit Bat_ChargeFlags;
extern bit Bat_LevelLowFlags;
extern xdata u8 Bat_Level;
extern xdata u16 Bat_ChargeFullTimem;	

#define BAT0		600		//6.00
#define BAT1		695		//6.80
#define BAT2		715		//7.00
#define BAT3		755		//7.40

//#define CHRG0		685		//6.69  
//#define CHRG1		705		//6.88 
//#define CHRG2		725		//7.08  
//#define CHRG3		765		//7.47  
#define CHRG0		715		//7.00  
#define CHRG1		770		//  7.50  
#define CHRG2		800		//7.82  
#define CHRG3		825		//8.10  

#define CHARGEFULLTIME			10				//min
#define CHARGEUNFULLTIME		5000			//ms