unsigned value;
unsigned time;
void interrupt()
{
     if (INTCON.F1==1)
     {
       time=30;
      INTCON.F1=0;   //INTF
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
INTCON.F7=1;   //GIE
INTCON.F6=1;   //PEIE
T1CON.F0=1;       //00000001    TIMER1 ON

PIR1.F0=0;   // TIMER1 OVERFLOW FLAG
PIE1.F0=1;    //TIMER1 ENABLE

INTCON.F4=1;// EXTERNAL INTERRUPTINTCON.F7=1;   //GIE
INTCON.F4=1;   //INTE
OPTION_REG.F6=1;  //RISING ACTIVE HIGHT

value=0;
TRISD=0X00;
PORTD=0X0F;

while (1)
{
if(value==time)   // 0.5 micro cycle * timer1 16 bits      =  32768*0.5 *10^-6   *(30*60)  ====== 1 MINUTE
 {
    PORTD=~PORTD;
    value=0;
 }

}
}