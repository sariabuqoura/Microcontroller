void main ()
{
trisb=0x00;
portb=0xff;

while (1)
{

portb=~portb;
delay_ms(1000);
}

}
