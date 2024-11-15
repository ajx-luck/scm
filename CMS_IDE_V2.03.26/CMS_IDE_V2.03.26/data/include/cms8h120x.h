#ifndef _HTC_H_
#warning Header file cms8h120x.h included directly. Use #include <cms.h> instead.
#endif

/* header file for the cms microcontroller. Base On Datasheet V1.0
    CMS8H1205
    CMS8H120D
*/

#ifndef __CMS8H120X_H
#define __CMS8H120X_H

volatile    unsigned char   INDF    @   0x00;
volatile    unsigned char   TMR0    @   0x01;
volatile    unsigned char   PCL @   0x02;
volatile    unsigned char   STATUS  @   0x03;
volatile    unsigned char   FSR @   0x04;
volatile    unsigned char   PORTA   @   0x05;
volatile    unsigned char   PORTB   @   0x06;
volatile    unsigned char   PCLATH  @   0x0A;
volatile    unsigned char   INTCON  @   0x0B;
volatile    unsigned char   PIR1    @   0x0C;
volatile    unsigned char   PIR2    @   0x0D;
volatile    unsigned char   TMR2    @   0x11;
volatile    unsigned char   T2CON   @   0x12;
volatile    unsigned char   AFECON1 @   0x15;
volatile    unsigned char   AFECON2 @   0x16;
volatile    unsigned char   AFECON3 @   0x17;
volatile    unsigned char   AFECON4 @   0x18;
volatile    unsigned char   AFERES0 @   0x19;
volatile    unsigned char   AFERES1 @   0x1A;
volatile    unsigned char   AFERES2 @   0x1B;
volatile    unsigned char   OPTION_REG  @   0x81;
volatile    unsigned char   TRISA   @   0x85;
volatile    unsigned char   TRISB   @   0x86;
volatile    unsigned char   WPDA    @   0x89;
volatile    unsigned char   PIE1    @   0x8C;
volatile    unsigned char   PIE2    @   0x8D;
volatile    unsigned char   IOCA    @   0x8E;
volatile    unsigned char   OSCCON  @   0x8F;
volatile    unsigned char   OSCTUNE @   0x90;
volatile    unsigned char   PR2 @   0x92;
volatile    unsigned char   WPUB    @   0x95;
volatile    unsigned char   IOCB    @   0x96;
volatile    unsigned char   RCSTA0  @   0x97;
volatile    unsigned char   TXSTA0  @   0x98;
volatile    unsigned char   SPBRG0  @   0x99;
volatile    unsigned char   TXREG0  @   0x9A;
volatile    unsigned char   RCREG0  @   0x9B;
volatile    unsigned char   ADCON0  @   0x9C;
volatile    unsigned char   ADCON1  @   0x9D;
volatile    unsigned char   ADRESL  @   0x9E;
volatile    unsigned char   ADRESH  @   0x9F;
volatile    unsigned char   WDTCON  @   0x105;
volatile    unsigned char   WPDB    @   0x107;
volatile    unsigned char   EEDAT   @   0x10C;
volatile    unsigned char   EEADR   @   0x10D;
volatile    unsigned char   EEDATH  @   0x10E;
volatile    unsigned char   EEADRH  @   0x10F;
volatile    unsigned char   TABLE_SPH   @   0x110;
volatile    unsigned char   TABLE_SPL   @   0x111;
volatile    unsigned char   TABLE_DATAH @   0x112;
volatile    unsigned char   ANSEL   @   0x113;
volatile    unsigned char   LVDCON  @   0x114;
volatile    unsigned char   LCDCON0 @   0x115;
volatile    unsigned char   LCDCON1 @   0x116;
volatile    unsigned char   LCDADD  @   0x117;
volatile    unsigned char   LCDDATA @   0x118;
volatile    unsigned char   COMEN   @   0x119;
volatile    unsigned char   SEGEN0  @   0x11A;
volatile    unsigned char   SEGEN1  @   0x11B;
volatile    unsigned char   SEGEN2  @   0x11C;
volatile    unsigned char   BUZCON0 @   0x11D;
volatile    unsigned char   BUZCON1 @   0x11E;
volatile    unsigned char   EECON1  @   0x18C;
volatile    unsigned char   EECON2  @   0x18D;
volatile    unsigned char   WPUA    @   0x18E;
/* Definitions for STATUS  register */
volatile     bit     IRP     @ ((unsigned)&STATUS*8)+7;
volatile     bit     RP1     @ ((unsigned)&STATUS*8)+6;
volatile     bit     RP0     @ ((unsigned)&STATUS*8)+5;
volatile     bit     TO  @ ((unsigned)&STATUS*8)+4;
volatile     bit     PD  @ ((unsigned)&STATUS*8)+3;
volatile     bit     Z   @ ((unsigned)&STATUS*8)+2;
volatile     bit     DC  @ ((unsigned)&STATUS*8)+1;
volatile     bit     C   @ ((unsigned)&STATUS*8)+0;

/* Definitions for PORTA  register */
volatile     bit     RA3     @ ((unsigned)&PORTA*8)+3;
volatile     bit     RA2     @ ((unsigned)&PORTA*8)+2;
volatile     bit     RA1     @ ((unsigned)&PORTA*8)+1;
volatile     bit     RA0     @ ((unsigned)&PORTA*8)+0;

/* Definitions for PORTB  register */
volatile     bit     RB7     @ ((unsigned)&PORTB*8)+7;
volatile     bit     RB6     @ ((unsigned)&PORTB*8)+6;
volatile     bit     RB5     @ ((unsigned)&PORTB*8)+5;
volatile     bit     RB4     @ ((unsigned)&PORTB*8)+4;
volatile     bit     RB3     @ ((unsigned)&PORTB*8)+3;
volatile     bit     RB2     @ ((unsigned)&PORTB*8)+2;
volatile     bit     RB1     @ ((unsigned)&PORTB*8)+1;
volatile     bit     RB0     @ ((unsigned)&PORTB*8)+0;

/* Definitions for INTCON  register */
volatile     bit     GIE     @ ((unsigned)&INTCON*8)+7;
volatile     bit     PEIE    @ ((unsigned)&INTCON*8)+6;
volatile     bit     T0IE    @ ((unsigned)&INTCON*8)+5;
volatile     bit     INTE    @ ((unsigned)&INTCON*8)+4;
volatile     bit     RBIE    @ ((unsigned)&INTCON*8)+3;
volatile     bit     T0IF    @ ((unsigned)&INTCON*8)+2;
volatile     bit     INTF    @ ((unsigned)&INTCON*8)+1;
volatile     bit     RBIF    @ ((unsigned)&INTCON*8)+0;

/* Definitions for PIR1  register */
volatile     bit     RC0IF   @ ((unsigned)&PIR1*8)+5;
volatile     bit     TX0IF   @ ((unsigned)&PIR1*8)+4;
volatile     bit     EEIF    @ ((unsigned)&PIR1*8)+3;
volatile     bit     ADIF    @ ((unsigned)&PIR1*8)+2;
volatile     bit     TMR2IF  @ ((unsigned)&PIR1*8)+1;

/* Definitions for PIR2  register */
volatile     bit     RACIF   @ ((unsigned)&PIR2*8)+5;
volatile     bit     AFEIF   @ ((unsigned)&PIR2*8)+2;
volatile     bit     LVDIF   @ ((unsigned)&PIR2*8)+0;

/* Definitions for T2CON  register */
volatile     bit     CLK_SEL     @ ((unsigned)&T2CON*8)+7;
volatile     bit     TOUTPS3     @ ((unsigned)&T2CON*8)+6;
volatile     bit     TOUTPS2     @ ((unsigned)&T2CON*8)+5;
volatile     bit     TOUTPS1     @ ((unsigned)&T2CON*8)+4;
volatile     bit     TOUTPS0     @ ((unsigned)&T2CON*8)+3;
volatile     bit     TMR2ON  @ ((unsigned)&T2CON*8)+2;
volatile     bit     T2CKPS1     @ ((unsigned)&T2CON*8)+1;
volatile     bit     T2CKPS0     @ ((unsigned)&T2CON*8)+0;

/* Definitions for AFECON1  register */
volatile     bit     BYPASSLDO   @ ((unsigned)&AFECON1*8)+7;
volatile     bit     ENBLDO  @ ((unsigned)&AFECON1*8)+6;
volatile     bit     SET_LDO1    @ ((unsigned)&AFECON1*8)+5;
volatile     bit     SET_LDO0    @ ((unsigned)&AFECON1*8)+4;
volatile     bit     OCP_DIS_LDO     @ ((unsigned)&AFECON1*8)+3;
volatile     bit     ADC_ST  @ ((unsigned)&AFECON1*8)+2;
volatile     bit     CLK_DIV     @ ((unsigned)&AFECON1*8)+1;
volatile     bit     RDY     @ ((unsigned)&AFECON1*8)+0;

/* Definitions for AFECON2  register */
volatile     bit     ENBAFE  @ ((unsigned)&AFECON2*8)+7;
volatile     bit     LPWRPGA     @ ((unsigned)&AFECON2*8)+6;
volatile     bit     PGA_SEL2    @ ((unsigned)&AFECON2*8)+5;
volatile     bit     PGA_SEL1    @ ((unsigned)&AFECON2*8)+4;
volatile     bit     PGA_SEL0    @ ((unsigned)&AFECON2*8)+3;
volatile     bit     ENSAR1  @ ((unsigned)&AFECON2*8)+2;
volatile     bit     ENSAR0  @ ((unsigned)&AFECON2*8)+1;
volatile     bit     ENCHOPB     @ ((unsigned)&AFECON2*8)+0;

/* Definitions for AFECON3  register */
volatile     bit     CH_SEL3     @ ((unsigned)&AFECON3*8)+7;
volatile     bit     CH_SEL2     @ ((unsigned)&AFECON3*8)+6;
volatile     bit     CH_SEL1     @ ((unsigned)&AFECON3*8)+5;
volatile     bit     CH_SEL0     @ ((unsigned)&AFECON3*8)+4;
volatile     bit     RB01_SEL    @ ((unsigned)&AFECON3*8)+1;
volatile     bit     EN_ADTESTGN     @ ((unsigned)&AFECON3*8)+0;

/* Definitions for AFECON4  register */
volatile     bit     OSR2    @ ((unsigned)&AFECON4*8)+7;
volatile     bit     OSR1    @ ((unsigned)&AFECON4*8)+6;
volatile     bit     OSR0    @ ((unsigned)&AFECON4*8)+5;
volatile     bit     FCHOP_ADC   @ ((unsigned)&AFECON4*8)+4;
volatile     bit     FADC    @ ((unsigned)&AFECON4*8)+3;
volatile     bit     LPWR    @ ((unsigned)&AFECON4*8)+2;

/* Definitions for OPTION_REG  register */
volatile     bit     INTEDG  @ ((unsigned)&OPTION_REG*8)+6;
volatile     bit     T0CS    @ ((unsigned)&OPTION_REG*8)+5;
volatile     bit     T0SE    @ ((unsigned)&OPTION_REG*8)+4;
volatile     bit     PSA     @ ((unsigned)&OPTION_REG*8)+3;
volatile     bit     PS2     @ ((unsigned)&OPTION_REG*8)+2;
volatile     bit     PS1     @ ((unsigned)&OPTION_REG*8)+1;
volatile     bit     PS0     @ ((unsigned)&OPTION_REG*8)+0;

/* Definitions for TRISA  register */
volatile     bit     TRISA3  @ ((unsigned)&TRISA*8)+3;
volatile     bit     TRISA2  @ ((unsigned)&TRISA*8)+2;
volatile     bit     TRISA1  @ ((unsigned)&TRISA*8)+1;
volatile     bit     TRISA0  @ ((unsigned)&TRISA*8)+0;

/* Definitions for TRISB  register */
volatile     bit     TRISB7  @ ((unsigned)&TRISB*8)+7;
volatile     bit     TRISB6  @ ((unsigned)&TRISB*8)+6;
volatile     bit     TRISB5  @ ((unsigned)&TRISB*8)+5;
volatile     bit     TRISB4  @ ((unsigned)&TRISB*8)+4;
volatile     bit     TRISB3  @ ((unsigned)&TRISB*8)+3;
volatile     bit     TRISB2  @ ((unsigned)&TRISB*8)+2;
volatile     bit     TRISB1  @ ((unsigned)&TRISB*8)+1;
volatile     bit     TRISB0  @ ((unsigned)&TRISB*8)+0;

/* Definitions for WPDA  register */
volatile     bit     WPDA3   @ ((unsigned)&WPDA*8)+3;
volatile     bit     WPDA2   @ ((unsigned)&WPDA*8)+2;
volatile     bit     WPDA1   @ ((unsigned)&WPDA*8)+1;
volatile     bit     WPDA0   @ ((unsigned)&WPDA*8)+0;

/* Definitions for PIE1  register */
volatile     bit     RC0IE   @ ((unsigned)&PIE1*8)+5;
volatile     bit     TX0IE   @ ((unsigned)&PIE1*8)+4;
volatile     bit     EEIE    @ ((unsigned)&PIE1*8)+3;
volatile     bit     ADIE    @ ((unsigned)&PIE1*8)+2;
volatile     bit     TMR2IE  @ ((unsigned)&PIE1*8)+1;

/* Definitions for PIE2  register */
volatile     bit     RACIE   @ ((unsigned)&PIE2*8)+5;
volatile     bit     AFEIE   @ ((unsigned)&PIE2*8)+2;
volatile     bit     LVDIE   @ ((unsigned)&PIE2*8)+0;

/* Definitions for IOCA  register */
volatile     bit     IOCA3   @ ((unsigned)&IOCA*8)+3;
volatile     bit     IOCA2   @ ((unsigned)&IOCA*8)+2;
volatile     bit     IOCA1   @ ((unsigned)&IOCA*8)+1;
volatile     bit     IOCA0   @ ((unsigned)&IOCA*8)+0;

/* Definitions for OSCCON  register */
volatile     bit     IRCF2   @ ((unsigned)&OSCCON*8)+6;
volatile     bit     IRCF1   @ ((unsigned)&OSCCON*8)+5;
volatile     bit     IRCF0   @ ((unsigned)&OSCCON*8)+4;
volatile     bit     SCS     @ ((unsigned)&OSCCON*8)+0;

/* Definitions for OSCTUNE  register */
volatile     bit     TUN6    @ ((unsigned)&OSCTUNE*8)+6;
volatile     bit     TUN5    @ ((unsigned)&OSCTUNE*8)+5;
volatile     bit     TUN4    @ ((unsigned)&OSCTUNE*8)+4;
volatile     bit     TUN3    @ ((unsigned)&OSCTUNE*8)+3;
volatile     bit     TUN2    @ ((unsigned)&OSCTUNE*8)+2;
volatile     bit     TUN1    @ ((unsigned)&OSCTUNE*8)+1;
volatile     bit     TUN0    @ ((unsigned)&OSCTUNE*8)+0;

/* Definitions for WPUB  register */
volatile     bit     WPUB7   @ ((unsigned)&WPUB*8)+7;
volatile     bit     WPUB6   @ ((unsigned)&WPUB*8)+6;
volatile     bit     WPUB5   @ ((unsigned)&WPUB*8)+5;
volatile     bit     WPUB4   @ ((unsigned)&WPUB*8)+4;
volatile     bit     WPUB3   @ ((unsigned)&WPUB*8)+3;
volatile     bit     WPUB2   @ ((unsigned)&WPUB*8)+2;
volatile     bit     WPUB1   @ ((unsigned)&WPUB*8)+1;
volatile     bit     WPUB0   @ ((unsigned)&WPUB*8)+0;

/* Definitions for IOCB  register */
volatile     bit     IOCB7   @ ((unsigned)&IOCB*8)+7;
volatile     bit     IOCB6   @ ((unsigned)&IOCB*8)+6;
volatile     bit     IOCB5   @ ((unsigned)&IOCB*8)+5;
volatile     bit     IOCB4   @ ((unsigned)&IOCB*8)+4;
volatile     bit     IOCB3   @ ((unsigned)&IOCB*8)+3;
volatile     bit     IOCB2   @ ((unsigned)&IOCB*8)+2;
volatile     bit     IOCB1   @ ((unsigned)&IOCB*8)+1;
volatile     bit     IOCB0   @ ((unsigned)&IOCB*8)+0;

/* Definitions for RCSTA0  register */
volatile     bit     SPEN    @ ((unsigned)&RCSTA0*8)+7;
volatile     bit     RX9EN   @ ((unsigned)&RCSTA0*8)+6;
volatile     bit     SREN    @ ((unsigned)&RCSTA0*8)+5;
volatile     bit     CREN    @ ((unsigned)&RCSTA0*8)+4;
volatile     bit     RCIDL   @ ((unsigned)&RCSTA0*8)+3;
volatile     bit     FERR    @ ((unsigned)&RCSTA0*8)+2;
volatile     bit     OERR    @ ((unsigned)&RCSTA0*8)+1;
volatile     bit     RX9D    @ ((unsigned)&RCSTA0*8)+0;

/* Definitions for TXSTA0  register */
volatile     bit     CSRC    @ ((unsigned)&TXSTA0*8)+7;
volatile     bit     TX9EN   @ ((unsigned)&TXSTA0*8)+6;
volatile     bit     TXEN    @ ((unsigned)&TXSTA0*8)+5;
volatile     bit     SYNC    @ ((unsigned)&TXSTA0*8)+4;
volatile     bit     SCKP    @ ((unsigned)&TXSTA0*8)+3;
volatile     bit     STOPBIT     @ ((unsigned)&TXSTA0*8)+2;
volatile     bit     TRMT0   @ ((unsigned)&TXSTA0*8)+1;
volatile     bit     TX9D0   @ ((unsigned)&TXSTA0*8)+0;

/* Definitions for ADCON0  register */
volatile     bit     ADCS1   @ ((unsigned)&ADCON0*8)+7;
volatile     bit     ADCS0   @ ((unsigned)&ADCON0*8)+6;
volatile     bit     CHS3    @ ((unsigned)&ADCON0*8)+5;
volatile     bit     CHS2    @ ((unsigned)&ADCON0*8)+4;
volatile     bit     CHS1    @ ((unsigned)&ADCON0*8)+3;
volatile     bit     CHS0    @ ((unsigned)&ADCON0*8)+2;
volatile     bit     GODONE  @ ((unsigned)&ADCON0*8)+1;
volatile     bit     ADON    @ ((unsigned)&ADCON0*8)+0;

/* Definitions for ADCON1  register */
volatile     bit     ADFM    @ ((unsigned)&ADCON1*8)+7;
volatile     bit     ADCS2   @ ((unsigned)&ADCON1*8)+5;

/* Definitions for WDTCON  register */
volatile     bit     SWDTEN  @ ((unsigned)&WDTCON*8)+0;

/* Definitions for WPDB  register */
volatile     bit     WPDB7   @ ((unsigned)&WPDB*8)+7;
volatile     bit     WPDB6   @ ((unsigned)&WPDB*8)+6;
volatile     bit     WPDB5   @ ((unsigned)&WPDB*8)+5;
volatile     bit     WPDB4   @ ((unsigned)&WPDB*8)+4;
volatile     bit     WPDB3   @ ((unsigned)&WPDB*8)+3;
volatile     bit     WPDB2   @ ((unsigned)&WPDB*8)+2;
volatile     bit     WPDB1   @ ((unsigned)&WPDB*8)+1;
volatile     bit     WPDB0   @ ((unsigned)&WPDB*8)+0;

/* Definitions for EEDAT  register */
volatile     bit     EEDAT7  @ ((unsigned)&EEDAT*8)+7;
volatile     bit     EEDAT6  @ ((unsigned)&EEDAT*8)+6;
volatile     bit     EEDAT5  @ ((unsigned)&EEDAT*8)+5;
volatile     bit     EEDAT4  @ ((unsigned)&EEDAT*8)+4;
volatile     bit     EEDAT3  @ ((unsigned)&EEDAT*8)+3;
volatile     bit     EEDAT2  @ ((unsigned)&EEDAT*8)+2;
volatile     bit     EEDAT1  @ ((unsigned)&EEDAT*8)+1;
volatile     bit     EEDAT0  @ ((unsigned)&EEDAT*8)+0;

/* Definitions for EEADR  register */
volatile     bit     EEADR7  @ ((unsigned)&EEADR*8)+7;
volatile     bit     EEADR6  @ ((unsigned)&EEADR*8)+6;
volatile     bit     EEADR5  @ ((unsigned)&EEADR*8)+5;
volatile     bit     EEADR4  @ ((unsigned)&EEADR*8)+4;
volatile     bit     EEADR3  @ ((unsigned)&EEADR*8)+3;
volatile     bit     EEADR2  @ ((unsigned)&EEADR*8)+2;
volatile     bit     EEADR1  @ ((unsigned)&EEADR*8)+1;
volatile     bit     EEADR0  @ ((unsigned)&EEADR*8)+0;

/* Definitions for EEDATH  register */
volatile     bit     EEDATH7     @ ((unsigned)&EEDATH*8)+7;
volatile     bit     EEDATH6     @ ((unsigned)&EEDATH*8)+6;
volatile     bit     EEDATH5     @ ((unsigned)&EEDATH*8)+5;
volatile     bit     EEDATH4     @ ((unsigned)&EEDATH*8)+4;
volatile     bit     EEDATH3     @ ((unsigned)&EEDATH*8)+3;
volatile     bit     EEDATH2     @ ((unsigned)&EEDATH*8)+2;
volatile     bit     EEDATH1     @ ((unsigned)&EEDATH*8)+1;
volatile     bit     EEDATH0     @ ((unsigned)&EEDATH*8)+0;

/* Definitions for EEADRH  register */
volatile     bit     EEADRH4     @ ((unsigned)&EEADRH*8)+4;
volatile     bit     EEADRH3     @ ((unsigned)&EEADRH*8)+3;
volatile     bit     EEADRH2     @ ((unsigned)&EEADRH*8)+2;
volatile     bit     EEADRH1     @ ((unsigned)&EEADRH*8)+1;
volatile     bit     EEADRH0     @ ((unsigned)&EEADRH*8)+0;

/* Definitions for ANSEL  register */
volatile     bit     ANS5    @ ((unsigned)&ANSEL*8)+5;
volatile     bit     ANS4    @ ((unsigned)&ANSEL*8)+4;
volatile     bit     ANS3    @ ((unsigned)&ANSEL*8)+3;
volatile     bit     ANS2    @ ((unsigned)&ANSEL*8)+2;
volatile     bit     ANS1    @ ((unsigned)&ANSEL*8)+1;
volatile     bit     ANS0    @ ((unsigned)&ANSEL*8)+0;

/* Definitions for LVDCON  register */
volatile     bit     LVD_RES     @ ((unsigned)&LVDCON*8)+7;
volatile     bit     LVD_MODE1   @ ((unsigned)&LVDCON*8)+6;
volatile     bit     LVD_MODE0   @ ((unsigned)&LVDCON*8)+5;
volatile     bit     LVD_SEL3    @ ((unsigned)&LVDCON*8)+4;
volatile     bit     LVD_SEL2    @ ((unsigned)&LVDCON*8)+3;
volatile     bit     LVD_SEL1    @ ((unsigned)&LVDCON*8)+2;
volatile     bit     LVD_SEL0    @ ((unsigned)&LVDCON*8)+1;
volatile     bit     LVDEN   @ ((unsigned)&LVDCON*8)+0;

/* Definitions for LCDCON0  register */
volatile     bit     LCDEN   @ ((unsigned)&LCDCON0*8)+7;
volatile     bit     BIAS    @ ((unsigned)&LCDCON0*8)+6;
volatile     bit     COMSEL1     @ ((unsigned)&LCDCON0*8)+5;
volatile     bit     COMSEL0     @ ((unsigned)&LCDCON0*8)+4;
volatile     bit     LCDCLK3     @ ((unsigned)&LCDCON0*8)+3;
volatile     bit     LCDCLK2     @ ((unsigned)&LCDCON0*8)+2;
volatile     bit     LCDCLK1     @ ((unsigned)&LCDCON0*8)+1;
volatile     bit     LCDCLK0     @ ((unsigned)&LCDCON0*8)+0;

/* Definitions for LCDCON1  register */
volatile     bit     CPREN   @ ((unsigned)&LCDCON1*8)+7;
volatile     bit     LCDF    @ ((unsigned)&LCDCON1*8)+6;
volatile     bit     SEGOUT1     @ ((unsigned)&LCDCON1*8)+5;
volatile     bit     SEGOUT0     @ ((unsigned)&LCDCON1*8)+4;
volatile     bit     VLCDX1  @ ((unsigned)&LCDCON1*8)+1;
volatile     bit     VLCDX0  @ ((unsigned)&LCDCON1*8)+0;

/* Definitions for LCDADD  register */
volatile     bit     LCDCS   @ ((unsigned)&LCDADD*8)+7;
volatile     bit     B2RES   @ ((unsigned)&LCDADD*8)+6;
volatile     bit     LCDADD4     @ ((unsigned)&LCDADD*8)+4;
volatile     bit     LCDADD3     @ ((unsigned)&LCDADD*8)+3;
volatile     bit     LCDADD2     @ ((unsigned)&LCDADD*8)+2;
volatile     bit     LCDADD1     @ ((unsigned)&LCDADD*8)+1;
volatile     bit     LCDADD0     @ ((unsigned)&LCDADD*8)+0;

/* Definitions for LCDDATA  register */
volatile     bit     LCDDATA3    @ ((unsigned)&LCDDATA*8)+3;
volatile     bit     LCDDATA2    @ ((unsigned)&LCDDATA*8)+2;
volatile     bit     LCDDATA1    @ ((unsigned)&LCDDATA*8)+1;
volatile     bit     LCDDATA0    @ ((unsigned)&LCDDATA*8)+0;

/* Definitions for COMEN  register */
volatile     bit     COM3EN  @ ((unsigned)&COMEN*8)+3;
volatile     bit     COM2EN  @ ((unsigned)&COMEN*8)+2;
volatile     bit     COM1EN  @ ((unsigned)&COMEN*8)+1;
volatile     bit     COM0EN  @ ((unsigned)&COMEN*8)+0;

/* Definitions for SEGEN0  register */
volatile     bit     SEG7EN  @ ((unsigned)&SEGEN0*8)+7;
volatile     bit     SEG6EN  @ ((unsigned)&SEGEN0*8)+6;
volatile     bit     SEG5EN  @ ((unsigned)&SEGEN0*8)+5;
volatile     bit     SEG4EN  @ ((unsigned)&SEGEN0*8)+4;
volatile     bit     SEG3EN  @ ((unsigned)&SEGEN0*8)+3;
volatile     bit     SEG2EN  @ ((unsigned)&SEGEN0*8)+2;
volatile     bit     SEG1EN  @ ((unsigned)&SEGEN0*8)+1;
volatile     bit     SEG0EN  @ ((unsigned)&SEGEN0*8)+0;

/* Definitions for SEGEN1  register */
volatile     bit     SEG15EN     @ ((unsigned)&SEGEN1*8)+7;
volatile     bit     SEG14EN     @ ((unsigned)&SEGEN1*8)+6;
volatile     bit     SEG13EN     @ ((unsigned)&SEGEN1*8)+5;
volatile     bit     SEG12EN     @ ((unsigned)&SEGEN1*8)+4;
volatile     bit     SEG11EN     @ ((unsigned)&SEGEN1*8)+3;
volatile     bit     SEG10EN     @ ((unsigned)&SEGEN1*8)+2;
volatile     bit     SEG9EN  @ ((unsigned)&SEGEN1*8)+1;
volatile     bit     SEG8EN  @ ((unsigned)&SEGEN1*8)+0;

/* Definitions for SEGEN2  register */
volatile     bit     SEG19EN     @ ((unsigned)&SEGEN2*8)+3;
volatile     bit     SEG18EN     @ ((unsigned)&SEGEN2*8)+2;
volatile     bit     SEG17EN     @ ((unsigned)&SEGEN2*8)+1;
volatile     bit     SEG16EN     @ ((unsigned)&SEGEN2*8)+0;

/* Definitions for BUZCON1  register */
volatile     bit     BUZEN   @ ((unsigned)&BUZCON1*8)+7;
volatile     bit     BUZDIV1     @ ((unsigned)&BUZCON1*8)+1;
volatile     bit     BUZDIV0     @ ((unsigned)&BUZCON1*8)+0;

/* Definitions for EECON1  register */
volatile     bit     EEPGD   @ ((unsigned)&EECON1*8)+7;
volatile     bit     EETIME1     @ ((unsigned)&EECON1*8)+5;
volatile     bit     EETIME0     @ ((unsigned)&EECON1*8)+4;
volatile     bit     WRERR   @ ((unsigned)&EECON1*8)+3;
volatile     bit     WREN    @ ((unsigned)&EECON1*8)+2;
volatile     bit     WR  @ ((unsigned)&EECON1*8)+1;
volatile     bit     RD  @ ((unsigned)&EECON1*8)+0;

/* Definitions for WPUA  register */
volatile     bit     WPUA3   @ ((unsigned)&WPUA*8)+3;
volatile     bit     WPUA2   @ ((unsigned)&WPUA*8)+2;
volatile     bit     WPUA1   @ ((unsigned)&WPUA*8)+1;
volatile     bit     WPUA0   @ ((unsigned)&WPUA*8)+0;

#endif
