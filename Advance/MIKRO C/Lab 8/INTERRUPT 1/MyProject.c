unsigned value;

void interrupt()
{
      value=0;
      INTCON.F1=0;   //INTF
}
void main()
{
INTCON.F7=1;   //GIE
INTCON.F4=1;   //INTE
OPTION_REG.F6=1;  //RISING ACTIVE HIGHT
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