char uart_rd;
void main()
{
TRISd=0x00;
portd=0x00;
  UART1_Init(9600);               // Initialize UART module at 9600 bps
  Delay_ms(100);                  // Wait for UART module to stabilize
portd.f0=0  ;
  while (1)
  {                     // Endless loop
    if (UART1_Data_Ready()==1)
     {     // If data is received,
      uart_rd =  UART1_Read();     // read the received data,

             if (uart_rd=='a' & portd.f0==1)
             {
             portd.f0=0;
             }
              if (uart_rd=='a' & portd.f0==0)
             {
             portd.f0=1;
             }
              UART1_Write(uart_rd);       // and send data via UART

  }
 }
}