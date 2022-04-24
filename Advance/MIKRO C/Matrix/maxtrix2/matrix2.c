void main ()
{
ADCON1=0X0f;
trisa=0x00;

trisb=0x00;
trisc=0x00;
trisd=0x00;
trise=0x00;

porta=0x00;
portb=0x00;
portc=0x00;
portd=0x00;
porte=0x00;
while (1)
{
   porta=~porta;
    portb=~portb;
     portc=~portc;
      portd=~portd;
       porte=~porte;
  delay_ms(500);
}

}
