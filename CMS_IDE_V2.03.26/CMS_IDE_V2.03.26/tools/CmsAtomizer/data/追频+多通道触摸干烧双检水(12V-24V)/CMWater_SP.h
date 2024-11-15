#ifndef  _CMWATER_H_
#define  _CMWATER_H_
/*************************************************************************/
/*******************************************************
注：EEPROM的WAT_ADRL、WAT_ADRH、BASE_ADRL、BASE_ADRH地址存储初始触摸值，不能在其它地方对其进行写操作
	EEPROM的CHECKL_ADR、CHECKL_ADR为校验码，以便保证触摸值的正确性
	
测试时，将WAT_NUM：BASE_NUM = 1：255，观察wat_ram为当前检水触摸值，观察wat_base为当前基准触摸值
********************************************************/
//下面是触摸内部一些控制位的宏定义,无需更改
//触摸按键内部比较器正端电压选择
#define		CM_KVREF_04		0x00		//0.4VDD
#define		CM_KVREF_05		0x40		//0.5VDD
#define		CM_KVREF_06		0x80		//0.6VDD
#define		CM_KVREF_07		0xC0		//0.7VDD

//触摸检测通道选择
#define		CM_KCHSN			CM_KVREF|0x20
#define		CM_KCHS0			CM_KVREF|0x20
#define		CM_KCHS1			CM_KVREF|0x21
#define		CM_KCHS2			CM_KVREF|0x22
#define		CM_KCHS3			CM_KVREF|0x23
#define		CM_KCHS4			CM_KVREF|0x24
#define		CM_KCHS5			CM_KVREF|0x25
#define		CM_KCHS6			CM_KVREF|0x26
#define		CM_KCHS7			CM_KVREF|0x27
#define		CM_KCHS8			CM_KVREF|0x28
#define		CM_KCHS9			CM_KVREF|0x29
#define		CM_KCHS10			CM_KVREF|0x2A
#define		CM_KCHS11			CM_KVREF|0x2B
#define		CM_KCHS12			CM_KVREF|0x2C
#define		CM_KCHS13			CM_KVREF|0x2D
#define		CM_KCHS14			CM_KVREF|0x2E
#define		CM_KCHS15			CM_KVREF|0x2F

//口线并联电容选择,使能电容口
#define		CM_KCAP0 		0x00 | 0x2
#define		CM_KCAP1 		0x08 | 0x2
#define		CM_KCAP2 		0x10 | 0x2
#define		CM_KCAP3 		0x18 | 0x2
#define		CM_KCAP4 		0x20 | 0x2
#define		CM_KCAP5 		0x28 | 0x2
#define		CM_KCAP6 		0x30 | 0x2
#define		CM_KCAP7 		0x38 | 0x2
/********************************************************/





extern volatile bit cmfstf;//此标志位清0，则重新读取EE存贮触摸基准判断值，若触摸基准判断值已经清零，则进入触摸检水测试
//CMWatFlag对应于Key16,...,Key2,Key1
//触摸检水有效标志位：有水为1，缺水为0
extern volatile unsigned int CMWatFlag;	//每个按键对应于寄存器的1个位,由高至低一一对应
							
/*******************************************************
					函数声明				  
********************************************************/
unsigned char Water_test(void);//水位检测模块,建议放在主循环2.5ms-5ms调用，为了保证触摸的稳定性，上电时建议延时0.5S再去检测
/*
函数功能：水位检测模块
入口参数：
返回数据：
		  0x55	EE没有存贮触摸基准值
		  0xaa	EE有存贮触摸基准值
		  0xfe	消抖处理中
		  0xff	出错
备注：	如果未写触摸基准值，则直接跳至写触摸值
*/

unsigned char	Wee_cm_clr(void);//测试模式时清触摸相关存贮值
/*
函数功能：测试模式清CM存贮数据
		清除失败则返回0
		成功则返回1
*/


/*******************************************************
					有无水存触摸值
0：有水存触摸值
1：无水存触摸值
********************************************************/
#define W_NON		1//根据实际生产方便性调整

/*******************************************************
					触摸控制寄存器定义				  
********************************************************/
//待检测水位触摸通总数,常量1~7
#define CM_KEY_NUM		3//水位触摸通道数

//内部比较器参考电压设定,在下列值中选取
//C_KVREF_04	=>	0.4VDD
//C_KVREF_05	=>	0.5VDD
//C_KVREF_06	=>	0.6VDD
//C_KVREF_07	=>	0.7VDD
#define		CM_KVREF			CM_KVREF_04

//水位触摸通道设定,根据实际调整，为CM_KCHS1至CM_KCHS12其中之一
const unsigned char Table_CMKeyChannel[] = {

};

//内部并联电容选择，用来调整长短线，以最长的线为0，适当调大短线的值，范围:CM_KCAP0至CM_KCAP7
const unsigned char Table_CMKeyCap[] = {

};

//有无水差值选择,调整长短线后再用这个修正灵敏度差异,设定值不可低于6,不能大于255
//需要根据实际方案调整，建议为触摸下降值的1/2+1
/*******************************************************
					有无水差值
********************************************************/
const unsigned char Table_CM_Down[] = {

};
/*******************************************************
					水位触摸键和基准的比例			  
********************************************************/
#define		WAT_NUM			1//需要实际测试确定补偿比例值
#define		BASE_NUM		1//需要实际测试确定补偿比例值
/*******************************************************
					存贮触摸值EEPROM地址
********************************************************/
//触摸值EEPROM地址使用CHECKL_ADR、CHECKH_ADR、WAT_ADRL~(WAT_ADRH+2*CM_KEY_NUM)
//使用EEPROM时需要注意避免重复使用
//BASE_ADRL: WAT_ADRL+2*CM_KEY_NUM
//BASE_ADRH: WAT_ADRH+2*CM_KEY_NUM
#define		WAT_ADRL		0x02//一般默认
#define		WAT_ADRH		0x03//一般默认
		
#define		CHECKL_ADR		0x00//一般默认
#define		CHECKH_ADR		0x01//一般默认

/*************************************************************************/
/*************************************************************************/
/*************************************************************************/
/*以下内容勿修改*/
/**************************************************************************/
/**************************************************************************/
/**************************************************************************/
//高触摸灵敏度使能
#define		H_SENS_EN	 1

#define 	Real_NUM		(CM_KEY_NUM + 1)

const unsigned char wnon = W_NON;
const unsigned char Wat_Num = WAT_NUM;
const unsigned char Base_Num = BASE_NUM;
const unsigned char Wat_Adrl = WAT_ADRL;
const unsigned char Wat_Adrh = WAT_ADRH;
const unsigned char Checkl_Adr = CHECKL_ADR;
const unsigned char Checkh_Adr = CHECKH_ADR;
const unsigned char H_Sens_EN = H_SENS_EN;
const unsigned char CM_KeyNum = CM_KEY_NUM;

unsigned char wnonc[CM_KEY_NUM];
unsigned char whavec[CM_KEY_NUM];
unsigned int CM_Water_SUMDat[Real_NUM];
unsigned int CMWater_ram[Real_NUM];//水位触摸检测值+基准检测值
unsigned int CMWatram[Real_NUM];//水位触摸初始值+基准初始值
/*******************************************************
					位定义
********************************************************/
#define	Set(x,y)	((x) |= (1 << (y)))				//位置1
#define	Clr(x,y)	((x) &= ~ (1 << (y)))			//位清0

#define	b0(x,y)		(((x) & (1 << (y))) == 0)		//位0判断 if(b0(x,y)) 判断是否为0
#define	b1(x,y)		((x) & (1 << (y)))				//位1判断 if(b1(x,y)) 判断是否为1
/*******************************************************
					宏定义
********************************************************/
#define uchar	unsigned char
#define uint	unsigned int
#define ulong	unsigned long 
/*******************************************************/
#endif



