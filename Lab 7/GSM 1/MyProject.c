char uart_rd;


void SendSMS(char msg[])
{

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
              UART1_Write_Text("ATD0772243320;");
               UART1_Write(13);
                UART1_Write(10);
                 portd.f0=1;
              delay_ms(1000);
        }  else
        {
             portd.f0=0;
        }
  }
    }
