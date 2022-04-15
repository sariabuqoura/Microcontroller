#line 1 "D:/Mikro Projects/MIKRO C/Lab 6/Zigbee 3/zigb.c"
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
 if (uart_rd=='3')
 {
 UART1_Write_Text("\n Welcome to G3");
 while (1)
 {
 if (UART1_Data_Ready()==1)
 {
 uart_rd = UART1_Read();
 if (uart_rd=='T')
 {
 uart_rd=0;
 value=0;
 value = ADC_Read(0);
 value= value/2;
 WordToStr(value,txt);
 UART1_Write_Text( strcat(" Temperature is ",txt));
 memset(txt, 0, sizeof txt);
 }

 if (uart_rd=='P')
 {
 uart_rd=0;
 value=0;
 value = ADC_Read(1);
 WordToStr(value,txt);
 UART1_Write_Text( strcat(" Potentiometer is ",txt));
 memset(txt, 0, sizeof txt);
 }
 if (uart_rd=='A')
 {
 uart_rd=0;
 portd.f0=1;
 UART1_Write_Text("Led is ON");
 }
 if (uart_rd=='a')
 {
 uart_rd=0;
 portd.f0=0;
 UART1_Write_Text("Led is OF");
 }
 if (uart_rd=='3')
 {
 UART1_Write_Text("Bye");

 break;
 }
 uart_rd=0;

 }

 }

 }

 }
 }
}
