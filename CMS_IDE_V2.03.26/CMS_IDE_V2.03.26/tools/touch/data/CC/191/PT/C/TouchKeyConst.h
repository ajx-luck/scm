#ifndef _TOUCHKEY_CONST_H_
#define _TOUCHKEY_CONST_H_

//下面是触摸内部一些控制位的宏定义,无需更改
//触摸按键内部比较器正端电压选择
#define		C_KVREF_04		0x00		//0.4VDD
#define		C_KVREF_05		0x20		//0.5VDD
#define		C_KVREF_06		0x40		//0.6VDD
#define		C_KVREF_07		0x60		//0.7VDD


//触摸按键时钟选择
#define		C_KCLK_SYS		0x00		//fsys
#define		C_KCLK_SYS2		0x08		//fsys/2
#define		C_KCLK_SYS4		0x10		//fsys/4
#define		C_KCLK_SYS8		0x18		//fsys/8

//触摸检测通道选择
#define		C_KCHS0			C_KVREF|C_KCLK|0x00
#define		C_KCHS1			C_KVREF|C_KCLK|0x01
#define		C_KCHS2			C_KVREF|C_KCLK|0x02
#define		C_KCHS3			C_KVREF|C_KCLK|0x03
#define		C_KCHS4			C_KVREF|C_KCLK|0x04
#define		C_KCHS5			C_KVREF|C_KCLK|0x05
#define		C_KCHS6			C_KVREF|C_KCLK|0x06
#define		C_KCHS7			C_KVREF|C_KCLK|0x07
#define		C_KCHS8			C_KVREF|C_KCLK|0x80
#define		C_KCHS9			C_KVREF|C_KCLK|0x81
#define		C_KCHS10		C_KVREF|C_KCLK|0x82
#define		C_KCHS11		C_KVREF|C_KCLK|0x83
#define		C_KCHS12		C_KVREF|C_KCLK|0x84
#define		C_KCHS13		C_KVREF|C_KCLK|0x85
#define		C_KCHS14		C_KVREF|C_KCLK|0x86
#define		C_KCHS15		C_KVREF|C_KCLK|0x87

//口线并联电容选择,使能电容口
#define		C_KCAP0 		0x00 | 0x2
#define		C_KCAP1 		0x08 | 0x2
#define		C_KCAP2 		0x10 | 0x2
#define		C_KCAP3 		0x18 | 0x2
#define		C_KCAP4 		0x20 | 0x2
#define		C_KCAP5 		0x28 | 0x2
#define		C_KCAP6 		0x30 | 0x2
#define		C_KCAP7 		0x38 | 0x2

#endif