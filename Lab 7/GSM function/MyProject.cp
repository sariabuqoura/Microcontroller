#line 1 "D:/Mikro Projects/MIKRO C/Lab 7/GSM function/MyProject.c"
 char uart_rd;
 void InitiGSM()
 {
 UART1_Write_Text("AT+CMGF=1");
 UART1_Write(13);
 UART1_Write(10);
 }
void SendCall(unsigned char number[])
{
 UART1_Write_Text(strcat(strcat("ATD",ltrim(rtrim(number))),";"));

 UART1_Write(13);
 UART1_Write(10);
 memset(number, 0, sizeof number);

}
void SendMSG(unsigned char number[],unsigned char msg[] )
{
 InitiGSM();
 UART1_Write_Text(strcat(strcat("AT+CMGS=\"",ltrim(rtrim(number)) ),"\""));
 UART1_Write(13);
 UART1_Write(10);
 delay_ms(2000);
 UART1_Write_Text(msg);
 UART1_Write(26);

}

void main()
{
TRISb=0xff;

TRISd=0x00;
portd=0x00;
 UART1_Init(9600);
 Delay_ms(100);

 while (1)
 {
 if (portb.f0==1)
 {
 SendCall("0772243320");
 portd.f0=1;
 delay_ms(1000);
 } else
 {
 portd.f0=0;
 }
 }
 }
