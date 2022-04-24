#line 1 "D:/Mikro Projects/MIKRO C/Lab 8/INTERRUPT 4/MyProject.c"
unsigned value;
unsigned time;
void interrupt()
{
 if (INTCON.F1==1)
 {
 time=30;
 INTCON.F1=0;
 }
 if (PIR1.F0==1)
 {
 value=value+1;
 PIR1.F0=0;
 }


}
void main()
{
time=900;
INTCON.F7=1;
INTCON.F6=1;
T1CON.F0=1;

PIR1.F0=0;
PIE1.F0=1;

INTCON.F4=1;
INTCON.F4=1;
OPTION_REG.F6=1;

value=0;
TRISD=0X00;
PORTD=0X0F;

while (1)
{
if(value==time)
 {
 PORTD=~PORTD;
 value=0;
 }

}
}
