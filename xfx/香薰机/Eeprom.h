#ifndef  _EEPROM_H_
#define  _EEPROM_H_
/*******************************************************
					修改说明：
修改日期：
2016/8/24

********************************************************/
unsigned	char 	Set_jiyi_wr(unsigned	char	wdata,unsigned	char	waddr);
unsigned	char	Set_jiyi_re(unsigned	char	raddr);

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
/*******************************************************/
/*******************************************************/
#endif














