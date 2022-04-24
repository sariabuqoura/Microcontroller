void main() 
{
//out
trisb=0x00;
portb=0x00;
//in
trisd=0b00000001;
trisc=0b00000001;
while(1)
{
    if (portd.f0==1)
    {
    portb=0xf0;
    }
    else
    {
    portb=0x00;
    }
    
    if (portc.f0==0)
    {
    portb=0x0f;
    }
    else
    {
    portb=0x00;
    }
    
    
    
    
    
    
 }
 
}