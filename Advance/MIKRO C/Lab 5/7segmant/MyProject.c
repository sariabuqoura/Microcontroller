
    sbit DP at portb.b0;
    sbit CC at portb.b1;
    sbit DD at portb.b2;
    sbit EE at portb.b3;
    sbit BB at portb.b4;
    sbit AA at portb.b5;
    sbit FF at portb.b6;
    sbit GG at portb.b7;
    
void num0(int on)
{
AA=on;
BB=on;
CC=on;
DD=on;
EE=on;
FF=on;
}
void num1(int on)
{
BB=on;
CC=on;
}
 void num2(int on)
{
AA=on;
BB=on;
GG=on;
EE=on;
DD=on;
}
void num3(int on)
{
AA=on;
BB=on;
GG=on;
CC=on;
DD=on;
}
void num4(int on)
{
FF=on;
BB=on;
GG=on;
CC=on;
}
void num5(int on)
{
AA=on;
FF=on;
DD=on;
CC=on;
GG=on;
}
void num6(int on)
{
AA=on;
FF=on;
GG=on;
DD=on;
CC=on;
EE=on;
}
void num7(int on)
{
AA=on;
BB=on;
CC=on;
}
void num8(int on)
{
AA=on;
BB=on;
CC=on;
DD=on;
EE=on;
FF=on;
GG=on;
}
 void num9(int on)
{

AA=on;
BB=on;
CC=on;
DD=on;
FF=on;
GG=on;
}

 void clear(int on)
 {
AA=on;
BB=on;
CC=on;
DD=on;
EE=on;
FF=on;
GG=on;
 }
void main()
 {
 
 TRISb=0x00;
 portb=0x00;
    while (1)
    { 
     delay_ms(1000);
     clear(0);
     num0(1);
     delay_ms(1000);
     
     clear(0);
     num1(1);
     delay_ms(1000);
     
     clear(0);
     num2(1);
     delay_ms(1000);
     
     clear(0);
     num3(1);
     delay_ms(1000);
     
     clear(0);
     num4(1);
     delay_ms(1000);
     
     clear(0);
     num5(1);
     delay_ms(1000);
    
     clear(0);
     num6(1);
     delay_ms(1000);
     
     clear(0);
     num7(1);
     delay_ms(1000);
     
     clear(0);
     num8(1);
     delay_ms(1000);
     
     clear(0);
     num9(1);
    }
}