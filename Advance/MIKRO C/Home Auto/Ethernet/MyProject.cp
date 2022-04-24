#line 1 "D:/Mikro Projects/MIKRO C/Ethernet/MyProject.c"



sfr sbit SPI_Ethernet_Rst at PORTB.B0;
sfr sbit SPI_Ethernet_CS at PORTB.B1;
sfr sbit SPI_Ethernet_Rst_Direction at DDRB.B0;
sfr sbit SPI_Ethernet_CS_Direction at DDRB.B1;

const char httpHeader[] = "HTTP/1.1 200 OK\nContent-type: ";
const char httpMimeTypeHTML[] = "text/html\n\"";
const char httpMimeTypeScript[] = "text/plain\n\n";

char indexPage[] =
#line 22 "D:/Mikro Projects/MIKRO C/Ethernet/MyProject.c"
"<html><head><title>mikroElektronika</title></head><body><h3 align=center>MikroElektronika Home Automatization System</h3><form name=\"input\" action=\"/\" method=\"get\"><table align=center width=200 bgcolor=#4974E2 border=2><tr><td align=center colspan=2><font size=4 color=white><b>Heat Control</b></font></td></tr><tr><td align=center bgcolor=#4974E2><input name=\"tst1\" width=60 type=\"submit\" value=\"ON\"></td><td align=center bgcolor=#FFFF00><input name=\"tst2\" type=\"submit\" value=\"OFF\"></td></tr></table></form></body></html>";

char myMacAddr[6] = {0x00, 0x14, 0xA5, 0x76, 0x19, 0x3f};
char myIpAddr[4] = {192, 168, 20, 60};
char gwIpAddr[4] = {192, 168, 20, 6};
 char dnsIpAddr[4] = {192, 168, 20, 1};
 char ipMask[4] = {255, 255, 255, 0};
unsigned char getRequest[20];
unsigned int SPI_Ethernet_UserTCP( char *remoteHost, unsigned int remotePort,unsigned int localPort, unsigned int reqLength)
{
 unsigned int len;
 if(localPort != 80) return(0);

 for(len = 0 ; len < 15 ; len++) getRequest[len] = SPI_Ethernet_getByte();
 getRequest[len] = 0;
 if(memcmp(getRequest, "GET /", 5)) return(0);
 if(!memcmp(getRequest+11, "ON", 2))
 PORTA.F0 = 1;
 if(!memcmp(getRequest+11, "OFF", 3))
 PORTA.F0 = 0;
 if (PORTA.F0)
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
unsigned int SPI_Ethernet_UserUDP( char *remoteHost, unsigned int remotePort,unsigned int destPort, unsigned int reqLength)
{
 return 0;
 }
void main()
{

 PORTA0_bit = 0;
 DDRA.F0 = 1;


 SPI1_Init_Advanced(_SPI_MASTER, _SPI_FCY_DIV4, _SPI_CLK_LO_LEADING);
 Spi_Rd_Ptr = SPI1_Read;
 SPI_Ethernet_Init(myMacAddr, myIpAddr,  0x01 );

 while(1)
 {

 SPI_Ethernet_doPacket();
 }
}
