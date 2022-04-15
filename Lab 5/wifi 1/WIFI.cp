#line 1 "D:/Mikro Projects/MIKRO C/Lab 5/wifi 1/WIFI.c"
unsigned short uart_rd;
unsigned value;
char txt[15];
void main()
{

ADCON1=0b0000000;
TRISd=0x00;
portd=0x00;
UART1_Init(9600);
Delay_ms(100);

 while (1)
 {
 if (UART1_Data_Ready()==1)
 {
 uart_rd = UART1_Read();
 if (uart_rd=='t')
 { value=0;
 value = ADC_Read(0);
 value= value/2;
 }
 if (uart_rd=='a')
 {
 portd.f0=1;
 }
 if (uart_rd=='A')
 {
 portd.f0=0;
 }
 WordToStr(value,txt);
 UART1_Write_Text(txt);
 uart_rd=0;
 }
 }
}
