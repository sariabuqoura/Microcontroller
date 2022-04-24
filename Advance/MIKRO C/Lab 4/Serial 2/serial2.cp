#line 1 "D:/Mikro Projects/MIKRO C/Lab 4/Serial 2/serial2.c"
char uart_rd;
void main()
{
TRISd=0x00;
portd=0x00;
 UART1_Init(9600);
 Delay_ms(100);

 while (1)
 {
 if (UART1_Data_Ready()==1)
 {
 uart_rd = UART1_Read();
 UART1_Write(uart_rd);

 if (uart_rd=='a')
 {
 portd.f0=1;
 }
 if (uart_rd=='A')
 {
 portd.f0=0;
 }

 if (uart_rd=='b')
 {
 portd.f1=1;
 }
 if (uart_rd=='B')
 {
 portd.f1=0;
 }

 if (uart_rd=='c')
 {
 portd.f2=1;
 }
 if (uart_rd=='C')
 {
 portd.f2=0;
 }
 }
 }
}
