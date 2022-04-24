#line 1 "D:/Mikro Projects/MIKRO C/Linking LED 1/MyProject.c"
void main ()
{
trisb=0;
portb=0;
while (1)
{
portb=~portb;
delay_ms(1000);
}
}
