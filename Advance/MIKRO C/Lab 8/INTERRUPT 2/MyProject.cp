#line 1 "D:/Mikro Projects/MIKRO C/Lab 8/INTERRUPT 2/MyProject.c"
unsigned value;

void interrupt()
{
 value=value+1;
 PIR1.F0=0;
}
void main()
{
INTCON.F7=1;
INTCON.F6=1;
T1CON.F0=1;

PIR1.F0=0;
PIE1.F0=1;

value=0;
TRISD=0X00;
PORTD=0X0F;

while (1)
{
if(value==30)
 {
 PORTD=~PORTD;
 value=0;
 }

}
}
