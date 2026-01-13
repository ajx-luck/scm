void clwdt();
void Sysinit();

#define F_R     		P36

#define PWMT 				1200																	//CBA
#define ABCOFF 			PWMMASKE = 0x3F;	//0011 1111
#define ABCBREAK 		PWMMASKE = 0x38;	//0011 1000	

											