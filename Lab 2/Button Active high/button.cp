#line 1 "D:/Mikro Projects/MIKRO C/Lab2/Button Active high/button.c"
void main()
{

trisb=0x00;
portb=0x00;

trisd=0b00000001;
trisc=0b00000001;
while(1)
{
 if (portd.f0==1)
 {
 portb=0xf0;
 }
 else
 {
 portb=0x00;
 }

 if (portc.f0==0)
 {
 portb=0x0f;
 }
 else
 {
 portb=0x00;
 }






 }

}
