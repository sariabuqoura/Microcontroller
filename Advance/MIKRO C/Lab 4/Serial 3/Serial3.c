unsigned short uart_rd;
void main()
{
TRISd=0x00;
portd=0x00;
UART1_Init(9600);               // Initialize UART module at 9600 bps
Delay_ms(100);                  // Wait for UART module to stabilize

  while (1)
  {                     // Endless loop
    if (UART1_Data_Ready()==1)
     {
      uart_rd =  UART1_Read();     // read the received data,
      UART1_Write(uart_rd+32);       // and send data via UART
  }
 }
}