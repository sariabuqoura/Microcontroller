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