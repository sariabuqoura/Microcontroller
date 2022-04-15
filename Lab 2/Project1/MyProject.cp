#line 1 "D:/Mikro Projects/MIKRO C/Lab2/Project1/MyProject.c"
void main ()
{
trisb=0x00;
portb=0x00;
while (1)
{
portb.f0=1;
delay_ms(1000);

portb.f7=0;
delay_ms(1000);
}
}
