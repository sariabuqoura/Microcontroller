#line 1 "D:/Mikro Projects/MIKRO C/Matrix/matrix1/matrix1.c"
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
