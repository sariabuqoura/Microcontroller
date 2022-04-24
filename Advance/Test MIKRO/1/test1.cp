#line 1 "D:/Mikro Projects/Test MIKRO/1/test1.c"
void main ()
{
trisb=0x00;
portb=0x00;
while (1)
{
portb=~portb;
delay_ms(1000);
}
}
