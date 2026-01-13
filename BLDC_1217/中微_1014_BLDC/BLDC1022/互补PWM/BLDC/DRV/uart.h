
void uart0Tx();

extern xdata u8 Uart0TxDelay;
extern xdata u8 Uart0TxState;

#define	TxData				8
#define TXDELAYTIME		100		//ms
//int fputc(int ch,FILE *f);