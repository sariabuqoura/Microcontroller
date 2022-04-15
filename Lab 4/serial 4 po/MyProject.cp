#line 1 "D:/Mikro Projects/MIKRO C/Lab 4/serial 4 po/MyProject.c"
unsigned short uart_rd;
unsigned pot;
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
 if (uart_rd=='p')
 {
 pot = ADC_Read(0);
 WordToStr(pot,txt);
 UART1_Write_Text(txt);


 }



 }
 }
}
