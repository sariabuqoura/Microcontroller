// LCD module connections

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

char txt1[] = "mikroElektronika";  
char txt2[] = "EasyPIC6";
char txt3[] = "Lcd4bit";
char txt4[] = "example";



void main()
{
//  ANSEL  = 0;                        // Configure AN pins as digital I/O
// ANSELH = 0;
// C1ON_bit = 0;                      // Disable comparators
//C2ON_bit = 0;
  
  
  Lcd_Init();                          // Initialize LCD
  Lcd_Cmd(_LCD_CLEAR);                 // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);            // Cursor off
  Lcd_Out(1,1,"sari");                 // Write text in first row
  Lcd_Out(2,1,"abu qoura");           // Write text in second row

}