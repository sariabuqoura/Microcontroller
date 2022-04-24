#line 1 "D:/Mikro Projects/MIKRO C/Lab 3/ADC5/MyProject.c"
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


unsigned tmp;
char tmptxt[15];

float voltage;
char volttxt[15];


void Main()
{
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 ADCON1=0b00000000;
while (1)
{
 tmp = ADC_Read(7);
 tmp=tmp/2;
 WordToStr(tmp,tmptxt);
 tmptxt[4];
 Lcd_Out(1,1,tmptxt);

 voltage = ADC_Read(0);
 voltage=voltage*5/1023;
 FloatToStr(voltage,volttxt);
 Lcd_Out(2,1,volttxt);


 delay_ms(1000);
 Lcd_Cmd(_LCD_CLEAR);
}
}
