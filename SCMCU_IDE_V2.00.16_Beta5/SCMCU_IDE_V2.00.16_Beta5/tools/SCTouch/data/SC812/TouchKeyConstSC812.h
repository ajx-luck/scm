#ifndef _TOUCHKEY_CONST_H_
#define _TOUCHKEY_CONST_H_

//触摸休眠时间定义
const unsigned char C_OPTION_REG_ = 0x0A;		//间隔64msWDT唤醒一次检测按键
												//=0x0B则为128ms唤醒检测


//下面是触摸内部一些控制位的宏定义,无需更改
//触摸按键内部比较器正端电压选择
//#define		C_KVREF_04		0x00		//0.4VDD
#define		C_KVREF_05		0x40		//0.5VDD
#define		C_KVREF_06		0x80		//0.6VDD
#define		C_KVREF_07		0xC0		//0.7VDD


//触摸按键时钟选择
#define		C_KCLK_SYS2		0x00		//fsys/2
#define		C_KCLK_SYS4		0x10		//fsys/4
#define		C_KCLK_SYS8		0x20		//fsys/8
#define		C_KCLK_SYS16	0x30		//fsys/16

//触摸检测通道选择
#define		C_KCHS0			C_KVREF|C_KCLK|0x00
#define		C_KCHS1			C_KVREF|C_KCLK|0x01
#define		C_KCHS2			C_KVREF|C_KCLK|0x02
#define		C_KCHS3			C_KVREF|C_KCLK|0x03
#define		C_KCHS4			C_KVREF|C_KCLK|0x04



//口线并联电容选择,使能电容口
#define		C_KCAP0 		0x00 | 0x2
#define		C_KCAP1 		0x08 | 0x2
#define		C_KCAP2 		0x10 | 0x2
#define		C_KCAP3 		0x18 | 0x2
#define		C_KCAP4 		0x20 | 0x2
#define		C_KCAP5 		0x28 | 0x2
#define		C_KCAP6 		0x30 | 0x2
#define		C_KCAP7 		0x38 | 0x2

//触摸跳频选择
#define		TP_EN			0X10		//使能跳频，过CE较容易，但测试时间约为不使能的3~4倍
										//不使能为00，
//触摸滤波选择
#define		CAP_LVBO		0X60		//默认4个滤波，对触摸基本没有影响

//触摸基准源使能
#define		TKLDOEN			0X08		//使能触摸基准，增加抗纹波能力

//触摸基准选择
#define		TKLDO_SEL		0X00		//选择2V做参考，2.4V为0x02

#define		C_TP_LDO		CAP_LVBO|TP_EN|TKLDOEN|TKLDO_SEL|0X01
const unsigned char	KeyTPLDO = C_TP_LDO;
#endif