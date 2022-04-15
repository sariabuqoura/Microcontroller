unsigned value;
 unsigned time;
void interrupt()
{
     value=value+1;
     PIR1.F0=0;
}
void main()
{
INTCON.F7=1;   //GIE
INTCON.F6=1;   //PEIE
T1CON.F0=1;       //00000001    TIMER1 ON

PIR1.F0=0;   // TIMER1 OVERFLOW FLAG
PIE1.F0=1;    //TIMER1 ENABLE

value=0;
TRISD=0X00;
PORTD=0X0F;

while (1)
{
if(value==1800)   // 0.5 micro cycle * timer1 16 bits      =  32768*0.5 *10^-6   *(30*60)  ====== 1 MINUTE
 {
    PORTD=~PORTD;
    value=0;
 }

}
}