char uart_rd;
 void InitiGSM()
 {
    UART1_Write_Text("AT+CMGF=1");
    UART1_Write(13);
    UART1_Write(10);
 }
void SendCall()
{    
    UART1_Write_Text("ATD0772243320;");
    UART1_Write(13);
    UART1_Write(10);
}
void SendMSG( )
{  
    InitiGSM();
    UART1_Write_Text("AT+CMGS=\"0772243320\"");
    UART1_Write(13);
    UART1_Write(10);
    delay_ms(2000);
    UART1_Write_Text("hi from sari ");
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
              SendMSG();
             // SendCall();
              portd.f0=1;
              delay_ms(1000);
        }  else
        {
             portd.f0=0;
        }
  }
    }
