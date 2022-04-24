#line 1 "D:/Mikro Projects/MIKRO C/Lab 8/INTERRUPT 1/MyProject.c"
unsigned value;

void interrupt()
{
 value=0;
 INTCON.F1=0;
}
void main()
{
INTCON.F7=1;
INTCON.F4=1;
OPTION_REG.F6=1;
value=0;
TRISD=0X00;
PORTD=0X00;

while (1)
{
 PORTD=value;
 value=value+1;
 delay_ms(1000);
}
}
