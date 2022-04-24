#line 1 "D:/Mikro Projects/MIKRO C/Home Auto/ethernetfinal/home_auto.c"
#line 1 "d:/mikro projects/mikro c/home auto/ethernetfinal/__ethenc28j60.h"
#line 119 "d:/mikro projects/mikro c/home auto/ethernetfinal/__ethenc28j60.h"
typedef struct
 {
 unsigned char valid;
 unsigned long tmr;
 unsigned char ip[4];
 unsigned char mac[6];
 } SPI_Ethernet_arpCacheStruct;

extern SPI_Ethernet_arpCacheStruct SPI_Ethernet_arpCache[];

extern unsigned char SPI_Ethernet_macAddr[6];
extern unsigned char SPI_Ethernet_ipAddr[4];
extern unsigned char SPI_Ethernet_gwIpAddr[4];
extern unsigned char SPI_Ethernet_ipMask[4];
extern unsigned char SPI_Ethernet_dnsIpAddr[4];
extern unsigned char SPI_Ethernet_rmtIpAddr[4];

extern unsigned long SPI_Ethernet_userTimerSec;

typedef struct {
 unsigned canCloseTCP: 1;
 unsigned isBroadcast: 1;
} TEthPktFlags;
#line 146 "d:/mikro projects/mikro c/home auto/ethernetfinal/__ethenc28j60.h"
extern void SPI_Ethernet_Init(unsigned char *resetPort, unsigned char resetBit, unsigned char *CSport, unsigned char CSbit, unsigned char *mac, unsigned char *ip, unsigned char fullDuplex);
extern unsigned char SPI_Ethernet_doPacket();
extern void SPI_Ethernet_putByte(unsigned char b);
extern void SPI_Ethernet_putBytes(unsigned char *ptr, unsigned int n);
extern void SPI_Ethernet_putConstBytes(const unsigned char *ptr, unsigned int n);
extern unsigned char SPI_Ethernet_getByte();
extern void SPI_Ethernet_getBytes(unsigned char *ptr, unsigned int addr, unsigned int n);
extern unsigned int SPI_Ethernet_UserUDP(unsigned char *remoteHost, unsigned int remotePort, unsigned int localPort, unsigned int reqLength, TEthPktFlags * flags);
extern unsigned int SPI_Ethernet_UserTCP(unsigned char *remoteHost, unsigned int remotePort, unsigned int localPort, unsigned int reqLength, TEthPktFlags * flags);
extern void SPI_Ethernet_confNetwork(char *ipMask, char *gwIpAddr, char *dnsIpAddr);
#line 9 "D:/Mikro Projects/MIKRO C/Home Auto/ethernetfinal/home_auto.c"
sfr sbit SPI_Ethernet_Rst at LATC0_bit;
sfr sbit SPI_Ethernet_CS at LATC1_bit;
sfr sbit SPI_Ethernet_Rst_Direction at TRISC0_bit;
sfr sbit SPI_Ethernet_CS_Direction at TRISC1_bit;



const char httpHeader[] = "HTTP/1.1 200 OK\nContent-type: ";
const char httpMimeTypeHTML[] = "text/html\n\n";
const char httpMimeTypeScript[] = "text/plain\n\n";


char indexPage[] =
#line 30 "D:/Mikro Projects/MIKRO C/Home Auto/ethernetfinal/home_auto.c"
"<html><head><title>mikroElektronika</title></head><body><h3 align=center>MikroElektronika Home Automatization System</h3><form name=\"input\" action=\"/\" method=\"get\"><table align=center width=200 bgcolor=#4974E2 border=2><tr><td align=center colspan=2><font size=4 color=white><b>Heat Control</b></font></td></tr><tr><td align=center bgcolor=#4974E2><input name=\"tst1\" width=60 type=\"submit\" value=\"ON\"></td><td align=center bgcolor=#FFFF00><input name=\"tst2\" type=\"submit\" value=\"OFF\"></td></tr></table></form></body></html>";


char myMacAddr[6] = {0x00, 0x14, 0xA5, 0x76, 0x19, 0x3f};
char myIpAddr[4] = {192, 168, 1, 200};
char gwIpAddr[4] = {192, 168, 1, 1};
char dnsIpAddr[4] = {192, 168, 1, 1};
char ipMask[4] = {255, 255, 255, 0};


unsigned char getRequest[20];

unsigned int SPI_Ethernet_UserTCP(unsigned char *remoteHost, unsigned int remotePort, unsigned int localPort, unsigned int reqLength, TEthPktFlags *flags)
{
 unsigned int len;
 if(localPort != 80) return(0);


 for(len = 0 ; len < 15 ; len++) getRequest[len] = SPI_Ethernet_getByte();
 getRequest[len] = 0;

 if(memcmp(getRequest, "GET /", 5)) return(0);

 if(!memcmp(getRequest+11, "ON", 2))
 PORTB.F0 = 1;
 else
 if(!memcmp(getRequest+11, "OFF", 3))
 PORTB.F0 = 0;

 if (PORTB.F0)
 {
 memcpy(indexPage+340, "#FFFF00", 6);
 memcpy(indexPage+431, "#4974E2", 6);
 }
 else
 {
 memcpy(indexPage+340, "#4974E2", 6);
 memcpy(indexPage+431, "#FFFF00", 6);
 }

 len = SPI_Ethernet_putConstString(httpHeader);
 len += SPI_Ethernet_putConstString(httpMimeTypeHTML);
 len += SPI_Ethernet_putString(indexPage);
 return len;
}
unsigned int SPI_Ethernet_UserUDP(unsigned char *remoteHost, unsigned int remotePort, unsigned int destPort, unsigned int reqLength, TEthPktFlags *flags)

{
 return 0;
}
void main()
{
 ADCON1 |= 0x0F ;
 CMCON |= 0x07 ;

 PORTB.F0 = 0;
 TRISB.F0 = 0;



 SPI1_Init();

 SPI_Ethernet_Init(myMacAddr, myIpAddr,  0x01 ) ;


 SPI_Ethernet_confNetwork(ipMask, gwIpAddr, dnsIpAddr);

 while(1) {
 SPI_Ethernet_doPacket();
 }
}
