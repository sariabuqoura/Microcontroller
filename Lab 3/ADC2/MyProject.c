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

// End LCD module connections
unsigned tmp ;
char txt[10];
void Main()
{
  Lcd_Init();                          // Initialize LCD
  Lcd_Cmd(_LCD_CLEAR);                 // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);            // Cursor off
  ADCON1=0b00000000;
  trisd=0x00;
  portd=0x0;
while (1)
{
     tmp = ADC_Read(0);
     
     if (tmp >250)
     {
     portd.f0=1;
     }  else
     {
     portd.f0=0;
     }
     
     if(tmp>500)
     {
     portd.f1=1;
     } 
      else
     {
     portd.f1=0;
     }


     if(tmp>750)
     {
     portd.f2=1;
     }
         else
     {
     portd.f2=0;
     }
     if(tmp>1000)
     {

     portd.f3=1;
     }    else
     {
     portd.f3=0;
     }

     
     WordToStr(tmp,txt);
     Lcd_Out(1,1,txt);
}
}