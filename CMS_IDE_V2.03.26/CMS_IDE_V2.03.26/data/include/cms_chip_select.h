#ifndef _CMS_CHIP_SELECT_H_
#define _CMS_CHIP_SELECT_H_

#define _HEADER_NOT_FOUND

#if defined(_89F23A5B) || defined(_89F2385B) || defined(_89F2365B) || defined(_89F2335B) ||\
    defined(_89F564B)  || defined(_89F2385B1)
	#include	<cms89f23a5b.h>
	#undef _HEADER_NOT_FOUND
#endif

#if defined(_89F2265B) || defined(_89F2235B)
	#include	<cms89f2265b.h>
	#undef _HEADER_NOT_FOUND
#endif

#if defined(_89F5523) || defined(_89F5521) 
	#include	<cms89f5523.h>
	#undef _HEADER_NOT_FOUND
#endif

#if defined(_8W5327) 
    #include    <cms8w5327.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_89F6265B) || defined(_89F6285B)
	#include	<cms89f6285b.h>
	#undef _HEADER_NOT_FOUND
#endif

#if defined(_89F5116B) || defined(_89F513B) || defined(_89F5136B)
	#include	<cms89f5136b.h>
	#undef _HEADER_NOT_FOUND
#endif

#if defined(_89F6382B) || defined(_89F6385B) || defined(_89F6395B)
	#include	<cms89f6395b.h>
	#undef _HEADER_NOT_FOUND
#endif

#if defined(_8P1611) || defined(_12580)
	#include	<cms8p1611.h>
	#undef _HEADER_NOT_FOUND
#endif	

#if defined(_89FH07) 
	#include	<cms89fh07.h>
	#undef _HEADER_NOT_FOUND
#endif

#if defined(_16F53) || defined(_16F55) 
	#include	<cms16f55.h>
	#undef _HEADER_NOT_FOUND
#endif

#if defined(_89F111) || defined(_89F112) || defined(_89F113) || defined(_89F116) || defined(_MX5324)
	#include	<cms89f116.h>
	#undef _HEADER_NOT_FOUND
#endif

#if defined(_89F611) || defined(_89F613) || defined(_89F616) || defined(_5119)
	#include	<cms89f616.h>
	#undef _HEADER_NOT_FOUND
#endif

#if defined(_89F511) || defined(_89F5116) || defined(_89F513) || defined(_89F5136) ||\
	defined(_89F5137)
	#include	<cms89f511.h>
	#undef _HEADER_NOT_FOUND
#endif

#if defined(_89F226) || defined(_89F2265) || defined(_89F228) || defined(_89F2285) ||\
	defined(_8F2021) || defined(_8F2821) || defined(_MX5325) || defined(_89F47) ||\
	defined(_89F2231) || defined(_89F2284)
	#include	<cms89f228.h>
	#undef _HEADER_NOT_FOUND
#endif

#if defined(_89F626) || defined(_89F6265) || defined(_89F628) || defined(_89F6285) ||\
	defined(_89F222) || defined(_89F223)
	#include	<cms89f628.h>
	#undef _HEADER_NOT_FOUND
#endif

#if defined(_89F2385) || defined(_89F2395) || defined(_16F883B)
	#include	<cms89f2385.h>
	#undef _HEADER_NOT_FOUND
#endif

#if defined(_89F6385) || defined(_89F6395) || defined(_89F6382)
	#include	<cms89f6385.h>
	#undef _HEADER_NOT_FOUND
#endif

#if defined(_89FT623) || defined(_89FT6231) || defined(_89FT626) || defined(_89FT627) ||\
	defined(_89FT628) || defined(_89FT628D3) || defined(_89FT628D5) || defined(_89FT6282) ||\
	defined(_89FT6272) || defined(_89FT6261) 
	#include	<cms89ft628.h>
	#undef _HEADER_NOT_FOUND
#endif

#if defined(_89F5231) || defined(_89F5232) || defined(_89F5233) || defined(_89F526)
	#include	<cms89f5231.h>
	#undef _HEADER_NOT_FOUND
	extern unsigned int eeprom_read16(unsigned char addr);
	extern void eeprom_write16(unsigned char addr,unsigned int value);
#endif

#if defined(_69F628) || defined(_69F6285) || defined(_69F628B) || defined(_69F6285B) ||\
	defined(_69F638) || defined(_69F6385) || defined(_69F638B) || defined(_69F6385B) ||\
	defined(_69F639B) || defined(_69F6395B) || defined(_89F639) ||\
	defined(_SC1833) || defined(_SC1833B)
	#include	<cms69f638.h>
	#undef _HEADER_NOT_FOUND
#endif

#if defined(_69F626) || defined(_69F626B) || defined(_69F6265) || defined(_69F6265B)
	#include	<cms69f626.h>
	#undef _HEADER_NOT_FOUND
#endif


#if defined(_69F226B) || defined(_69F2265B)
	#include	<cms69f2265b.h>
	#undef _HEADER_NOT_FOUND
#endif


#if defined(_69F228) || defined(_69F228B) || defined(_69F2285B) || defined(_69F238B) || defined(_69F2385B)
	#include	<cms69f228.h>
	#undef _HEADER_NOT_FOUND
#endif

#if defined(_69F326) || defined(_69F326B)
	#include	<cms69f326.h>
	#undef _HEADER_NOT_FOUND
#endif

#if defined(_16F883)
	#include	<cms16f883.h>
	#undef _HEADER_NOT_FOUND
#endif

#if defined(_SC1832) || defined(_SC1834)
	#include	<sc1832.h>
	#undef _HEADER_NOT_FOUND
#endif

#if defined(_89F3002) || defined(_89F3001)
    #include    <cms89f3001.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_79F5139) || defined(_79F5135) || defined(_79F5118)
    #include    <cms79f5139.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_89F7365) || defined(_89F7385)
    #include    <cms89f7385.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_89FT7365) || defined(_89FT7385)
    #include    <cms89ft7385.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_89FT736) || defined(_89FT738)
    #include    <cms89ft738.h>
    #undef _HEADER_NOT_FOUND
#endif


#if defined(_8W5523) || defined(_8W5527)
    #include    <cms8w5527.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_79F111) || defined(_79F112) || defined(_79F113) || defined(_79F116)
    #include    <cms79f116.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_79FT736) || defined(_79FT738) || defined(_79FT7381) 
    #include    <cms79ft738.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_79F736) || defined(_79F738) || defined(_79F7334) 
    #include    <cms79f73x.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_79F123)
    #include    <cms79f123.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_79F1239)
    #include    <cms79f1239.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_79F623)
    #include    <cms79f623.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_8H8901L)
    #include    <cms8h8901l.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_79F723) || defined(_79F726)
    #include    <cms79f726.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_79FT611) || defined(_79FT613) || defined(_79FT616)
    #include    <cms79ft616.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_79FT623) || defined(_79FT626) || defined(_79FT627) || defined(_79FT628)
    #include    <cms79ft628.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_79F533) || defined(_79F536)
    #include    <cms79f536.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_79F5361)
    #include    <cms79f5361.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_79FT623B) || defined(_79FT626B) || defined(_79FT627B) || defined(_79FT628B)
    #include    <cms79ft628b.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_79FT726)
    #include    <cms79ft726.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_89F5523B) || defined(_89F5521B)
    #include    <cms89f552xb.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_89F5526B)
    #include    <cms89f5526b.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_89F616B) || defined(_89F613B) || defined(_89F611B)
    #include    <cms89f61xb.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_79F131) || defined(_79F133) || defined(_79F136) || defined(_79F1361)
    #include    <cms79f13x.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_89F1212) || defined(_89F1232)
    #include    <cms89f1232.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_89F111B1) || defined(_89F112B) || defined(_89F113B) || defined(_89F113B1)
    #include    <cms89f11xbx.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_8H1211) || defined(_8H1213) || defined(_8H1214)
    #include    <cms8h121x.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_79FT616B) || defined(_79FT613B) || defined(_79FT611B)
    #include    <cms79ft61xb.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_8H1205) || defined(_8H120D)
    #include    <cms8h120x.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_8F0501A1D608SP) || defined(_8F0501A2D616SP) || defined(_8F0501A3D616SP)
    #include    <cms8f0501ax.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_79F5365) || defined(_79F5335)
    #include    <cms79f53x5.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_89F5233B) 
    #include    <cms89f5233b.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_8H1215) || defined(_8H1213B)
    #include    <cms8h121xb.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_89F121) || defined(_89F1231) || defined(_89F123) || defined(_89F126)
    #include    <cms89f12x.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_8F0113AD616SP) || defined(_8F0113AD608SP)
    #include    <cms8f0113ax.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_8F0701A1D816SP) || defined(_8F0701A1D820SP) || defined(_8F0701A1D828SP)
    #include    <cms8f0701x.h>
    #undef _HEADER_NOT_FOUND
#endif

#if defined(_8F0702A1D828SP) || defined(_8F0702AD816SP) || defined(_8F0702AD820SP) || defined(_8F0702AD828SP)
    #include    <cms8f0702x.h>
    #undef _HEADER_NOT_FOUND
#endif

#ifdef _HEADER_NOT_FOUND
#error Device-specific header could not be found for target chip
#endif

#endif 
