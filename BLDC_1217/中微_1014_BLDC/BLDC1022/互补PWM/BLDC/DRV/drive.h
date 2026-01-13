#define STARTADDR   10
#define DATALENGTH  6

#define	LCD_L0		DataBuff[0] |= 0x0A;DataBuff[1] |= 0x0F
#define	LCD_R0		DataBuff[2] |= 0x0A;DataBuff[3] |= 0x0F
#define	LCD_L1		DataBuff[0] |= 0x00;DataBuff[1] |= 0x06
#define	LCD_R1		DataBuff[2] |= 0x00;DataBuff[3] |= 0x06
#define	LCD_L2		DataBuff[0] |= 0x0C;DataBuff[1] |= 0x0B
#define	LCD_R2		DataBuff[2] |= 0x0C;DataBuff[3] |= 0x0B
#define	LCD_L3		DataBuff[0] |= 0x04;DataBuff[1] |= 0x0F
#define	LCD_R3		DataBuff[2] |= 0x04;DataBuff[3] |= 0x0F
#define	LCD_L4		DataBuff[0] |= 0x06;DataBuff[1] |= 0x06
#define	LCD_R4		DataBuff[2] |= 0x06;DataBuff[3] |= 0x06
#define	LCD_L5		DataBuff[0] |= 0x06;DataBuff[1] |= 0x0D
#define	LCD_R5		DataBuff[2] |= 0x06;DataBuff[3] |= 0x0D
#define	LCD_L6		DataBuff[0] |= 0x0E;DataBuff[1] |= 0x0D
#define	LCD_R6		DataBuff[2] |= 0x0E;DataBuff[3] |= 0x0D
#define	LCD_L7		DataBuff[0] |= 0x00;DataBuff[1] |= 0x07
#define	LCD_R7		DataBuff[2] |= 0x00;DataBuff[3] |= 0x07
#define	LCD_L8		DataBuff[0] |= 0x0E;DataBuff[1] |= 0x0F
#define	LCD_R8		DataBuff[2] |= 0x0E;DataBuff[3] |= 0x0F
#define	LCD_L9		DataBuff[0] |= 0x06;DataBuff[1] |= 0x0F
#define	LCD_R9		DataBuff[2] |= 0x06;DataBuff[3] |= 0x0F
#define	LCD_LE		DataBuff[0] |= 0x0E;DataBuff[1] |= 0x09
#define	LCD_Rr		DataBuff[2] |= 0x0C;DataBuff[3] |= 0x00
#define	LCD_RP		DataBuff[2] |= 0x0E;DataBuff[3] |= 0x03
#define	LCD_P			DataBuff[4] |= 0x08
#define	LCD_R			DataBuff[4] |= 0x01
#define	LCD_F			DataBuff[4] |= 0x04
#define	LCD_BAT		DataBuff[4] |= 0x02			//µç³Ø¿ò
#define	LCD_BAT0	DataBuff[5] |= 0x00
#define	LCD_BAT1	DataBuff[5] |= 0x08
#define	LCD_BAT2	DataBuff[5] |= 0x0C
#define	LCD_BAT3	DataBuff[5] |= 0x0E
#define	LCD_BAT4	DataBuff[5] |= 0x0F
#define	LCD_BAT5	DataBuff[5] |= 0x0F;DataBuff[0] |= 0x01

extern xdata u8 DataBuff[DATALENGTH];