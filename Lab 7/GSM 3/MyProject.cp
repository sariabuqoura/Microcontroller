#line 1 "D:/Mikro Projects/MIKRO C/Lab 7/GSM 3/MyProject.c"
sbit LCD_RS at RB2_bit;
sbit LCD_EN at RB3_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D7 at RB7_bit;

sbit LCD_RS_Direction at TRISB2_bit;
sbit LCD_EN_Direction at TRISB3_bit;

sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D7_Direction at TRISB7_bit;

unsigned value;
char txt[15];
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
void SendMSG(char Val[])
{
 InitiGSM();
 UART1_Write_Text("AT+CMGS=\"0772243320\"");
 UART1_Write(13);
 UART1_Write(10);
 delay_ms(2000);
 UART1_Write_Text(strcat("sari Alarm", Val));
 UART1_Write(26);
}

void main()
{
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);

ADCON1=0b0000000;
TRISd=0x00;
portd=0x00;
UART1_Init(9600);
Delay_ms(100);

 while (1)
 { value = ADC_Read(0);
 if (value>700)
 {
 WordToStr(value,txt);
 SendMSG(txt);
 portd.f0=1;
 Lcd_Out(1,1,txt);
 delay_ms(1000);
 } else
 {
 portd.f0=0;
 }
 WordToStr(value,txt);
 Lcd_Out(1,1,txt);
 delay_ms(1000);
 Lcd_Cmd(_LCD_CLEAR);
 }
 }
