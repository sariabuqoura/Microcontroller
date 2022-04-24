#define Spi_Ethernet_HALFDUPLEX 0x00 // half duplex
#define Spi_Ethernet_FULLDUPLEX 0x01 // full duplex
// mE ehternet NIC pinout
sfr sbit SPI_Ethernet_Rst at PORTB.B0; // reset pin 
sfr sbit SPI_Ethernet_CS at PORTB.B1; // chip select pin
sfr sbit SPI_Ethernet_Rst_Direction at DDRB.B0; // reset pin direction
sfr sbit SPI_Ethernet_CS_Direction at DDRB.B1; // chip select pin direction
  // end ethernet NIC defi nitions
const char httpHeader[] = "HTTP/1.1 200 OK\nContent-type: "; // HTTP header 
const char httpMimeTypeHTML[] = "text/html\n\""; // HTML MIME type
const char httpMimeTypeScript[] = "text/plain\n\n"; // TEXT MIME type
// default html page
char indexPage[] =
"<html><head><title>mikroElektronika</title></head><body>\
<h3 align=center>MikroElektronika Home Automatization System</h3>\
<form name=\"input\" action=\"/\" method=\"get\">\
<table align=center width=200 bgcolor=#4974E2 border=2><tr>\
<td align=center colspan=2><font size=4 color=white><b>Heat Control</b></font>\
</td></tr><tr><td align=center bgcolor=#4974E2><input name=\"tst1\" width=60 \
type=\"submit\" value=\"ON\"></td><td align=center bgcolor=#FFFF00>\
<input name=\"tst2\" type=\"submit\" value=\"OFF\"></td></tr></table>\
</form></body></html>";
// network parameters
char myMacAddr[6] = {0x00, 0x14, 0xA5, 0x76, 0x19, 0x3f}; // my MAC address 
char myIpAddr[4] = {192, 168, 20, 60}; // my IP address 
char gwIpAddr[4] = {192, 168, 20, 6}; // gateway IP address
 char dnsIpAddr[4] = {192, 168, 20, 1}; // dns IP address
 char ipMask[4] = {255, 255, 255, 0}; // subnet mask // end network parameters
unsigned char getRequest[20]; // HTTP request buff er
unsigned int SPI_Ethernet_UserTCP( char *remoteHost, unsigned int remotePort,unsigned int localPort, unsigned int reqLength)
{
 unsigned int len; // my reply length 
 if(localPort != 80) return(0); // I listen only to web request on port 80
 // get 10 fi rst bytes only of the request, the rest does not matter here 
 for(len = 0 ; len < 15 ; len++) getRequest[len] = SPI_Ethernet_getByte();
 getRequest[len] = 0;
 if(memcmp(getRequest, "GET /", 5)) return(0); // only GET method
 if(!memcmp(getRequest+11, "ON", 2)) // do we have ON command 
 PORTA.F0 = 1; // set PORTA bit0 else
 if(!memcmp(getRequest+11, "OFF", 3)) // do we have OFF command
  PORTA.F0 = 0; // clear PORTA bit0
 if (PORTA.F0)
 {
 memcpy(indexPage+340, "#FFFF00", 6); // highlight (yellow) ON 
 memcpy(indexPage+431, "#4974E2", 6); // clear OFF
 }
 else
 {
 memcpy(indexPage+340, "#4974E2", 6); // clear ON 
 memcpy(indexPage+431, "#FFFF00", 6); // highlight (yellow) OFF
 }
 len = SPI_Ethernet_putConstString(httpHeader); // HTTP header 
 len += SPI_Ethernet_putConstString(httpMimeTypeHTML); // with HTML MIME type 
 len += SPI_Ethernet_putString(indexPage); // HTML page fi rst part
 return len; // return to the library with the number of bytes to transmit 
 }
unsigned int SPI_Ethernet_UserUDP( char *remoteHost, unsigned int remotePort,unsigned int destPort, unsigned int reqLength)
{
 return 0; // back to the library with the length of the UDP reply 
 }
void main()
{
 // set PORTA as output
 PORTA0_bit = 0; // clear PORTA.B0
 DDRA.F0 = 1; // set PORTA.B0 as output (rele control pin)
 // starts ENC28J60 with: reset bit on PORTB.F0, CS bit on PORTB.F1,
 // my MAC & IP address, full duplex
 SPI1_Init_Advanced(_SPI_MASTER, _SPI_FCY_DIV4, _SPI_CLK_LO_LEADING);
 Spi_Rd_Ptr = SPI1_Read; // pass SPI Read function of used SPI module // full duplex, CRC + MAC Unicast + MAC Broadcast fi ltering 
 SPI_Ethernet_Init(myMacAddr, myIpAddr, Spi_Ethernet_FULLDUPLEX);
 // dhcp will not be used here, so use preconfi gured addresses SPI_Ethernet_confNetwork(ipMask, gwIpAddr, dnsIpAddr);
 while(1) 
 { 
 // do forever 
 SPI_Ethernet_doPacket(); // process incoming Ethernet packets 
 }
}
