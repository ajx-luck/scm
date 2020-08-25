#ifndef NUMBER_H
#define NUMBER_H

#define u8t		unsigned char
#define	u16t	unsigned int

void showNub(char hight,char low);
void setHightOutput(char outPut);
void setlowOutput(char outPut);
void setOutput(char outPut);
void setInput();
void showNubGewei(char num);
void showNubGewei2(char index);
void showNubShiwei(char num);
void showNubShiwei2(char index);
void showNubBaiwei(char num);
void showNubBaiwei2(char index);
void DP();
void TITLE();
void WU();
void RUO();
void ZHONG();
void QIANG();

void A1();
void B1();
void C1();
void D1();
void E1();
void F1();
void G1();

void A2();
void B2();
void C2();
void D2();
void E2();
void F2();
void G2();

void A3();
void B3();
void C3();
void D3();
void E3();
void F3();
void G3();

void delayms(u8t time);
void setLow();
void low4(char bai,char shi,char ge,char h6,char h123);
void low3(char bai,char shi,char ge,char h5);
void low2(char bai,char shi,char ge,char h4);
void low1(char bai,char shi,char ge,char dp,char h3);

#endif