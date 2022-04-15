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
      uart_rd =  UART1_Read();
          if (uart_rd=='3')
        {     value=0;
              value = ADC_Read(0);
              value= value/2;
               WordToStr(value,txt);
               UART1_Write_Text( strcat(txt, "G3"));
        }
            uart_rd=0;
  }
 }
}