#line 1 "D:/Mikro Projects/MIKRO C/bitwise/bitwise.c"
void main ()
{

trisb=0x00;
portb=0x00;
while (1)
{
portb=0xff;
delay_ms(50);
portb=0x00;
delay_ms(50);
}

}
