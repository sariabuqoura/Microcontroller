int on=1;
int off=0;
//===========Rows=================
sbit Row_1 at portd.b7;
sbit Row_2 at portc.b5;
sbit Row_3 at portc.b6;
sbit Row_4 at porta.b5;
sbit Row_5 at portc.b7;
//==========A======================
sbit A_1 at porta.b0;
sbit A_2 at porta.b1;
sbit A_3 at porta.b2;
sbit A_4 at porta.b3;
sbit A_5 at portb.b5;
//==========B======================
sbit B_1 at portb.b0;
sbit B_2 at portb.b1;
sbit B_3 at portb.b2;
sbit B_4 at portb.b3;
sbit B_5 at portb.b4;
//==========C======================
sbit C_1 at portc.b0;
sbit C_2 at portc.b1;
sbit C_3 at portc.b2;
sbit C_4 at portc.b3;
sbit C_5 at portc.b4;
//==========D======================
sbit D_1 at portd.b0;
sbit D_2 at portd.b1;
sbit D_3 at portd.b2;
sbit D_4 at portd.b3;
sbit D_5 at portd.b4;
 //==========E======================
sbit E_1 at porte.b0;
sbit E_2 at porte.b1;
sbit E_3 at porte.b2;
sbit E_4 at portd.b5;
sbit E_5 at portd.b6;
//=============================================
//=============================================


 void timer()
 {
  delay_ms(250);
 }
 void All25(int Flag)
 {
  //---A---------------------------
  E_1=Flag; E_2=Flag; E_3=Flag; E_4=Flag; E_5=Flag;
  D_1=Flag; D_2=Flag; D_3=Flag; D_4=Flag; D_5=Flag;
  
  C_1=Flag; C_2=Flag; C_3=Flag; C_4=Flag; C_5=Flag;
  
  B_1=Flag; B_2=Flag; B_3=Flag; B_4=Flag; B_5=Flag;
  A_1=Flag; A_2=Flag; A_3=Flag; A_4=Flag; A_5=Flag;
 }
 void Row1(int Flag)
 { 
    Row_1=Flag;
    All25(Flag);
 }
 void Row2(int Flag)
 {
    Row_2=Flag;
    All25(Flag);
 }
 void Row3(int Flag)
 {
    Row_3=Flag;
    All25(Flag);
 }
 void Row4(int Flag)
 {
    Row_4=Flag;
    All25(Flag);
 }
  void Row5(int Flag)
 {
    Row_5=Flag;
    All25(Flag);
 }
 void AllRows(int Flag)
   {
       Row_1=Flag;
        Row_2=Flag;
         Row_3=Flag;
         Row_4=Flag;
          Row_5=Flag;
   }
Move1()
{
timer();
Row1(on);
timer();
Row2(on);
timer() ;
Row3(on);
timer() ;
Row4(on);
timer() ;
Row5(on);
timer() ;

Row5(off);
Row4(off);
Row3(off);
Row2(off);
Row1(off);

 /////////
Row5(on);
timer();
Row4(on);
timer() ;
Row3(on);
timer() ;
Row2(on);
timer() ;
Row1(on);
timer() ;

Row1(off);
Row2(off);
Row3(off);
Row4(off);
Row5(off);
timer() ;
All25(off) ;
AllRows(off);
   }
 Move2()
 {
 timer() ;
All25(off) ;
AllRows(on);
A_1=on;
timer();
A_2=on;
 timer();
A_3=on;
 timer();
A_4=on;
timer();
A_5=on;
timer();
B_5=on;
timer();
C_5=on;
timer();
D_5=on;
timer();
E_5=on;
timer();
E_4=on;
timer();
E_3=on;
timer();
E_2=on;
timer();
E_1=on;
timer();
D_1=on;
timer();
C_1=on;
timer();
B_1=on;
timer();
B_2=on;
timer();
B_3=on;
timer();
B_4=on;
timer();
C_4=on;
timer();
D_4=on;
timer();
D_3=on;
timer();
D_2=on;
timer();
C_2=on;
timer();
C_3=on;
timer();
All25(off) ;
AllRows(off);
 }

void move3sub1()
{
  Row_1=on;
 delay_ms(50);
 Row_1=off;
 Row_2=on;
delay_ms(50);
Row_2=off;
 Row_3=on;
  delay_ms(50);
 Row_3=off;
 Row_4=on;
 delay_ms(50);
 Row_4=off;
 Row_5=on;
 delay_ms(50);
Row_5=off;
 Row_4=on;
delay_ms(50);
Row_4=off;
 Row_3=on;
 delay_ms(50);
 Row_3=off;
 Row_2=on;
 delay_ms(50);
 Row_2=off;
 Row_1=on;
 delay_ms(50);
}

void Move3()
{
All25(off) ;
AllRows(off);

A_1=on;
move3sub1();
A_2=on;
move3sub1();
A_3=on;
move3sub1();
A_4=on;
move3sub1();
A_5=on;
move3sub1();

B_1=on;
move3sub1();
B_2=on;
move3sub1();
B_3=on;
move3sub1();
B_4=on;
move3sub1();
B_5=on;
move3sub1();

C_1=on;
move3sub1();
C_2=on;
move3sub1();
C_3=on;
move3sub1();
C_4=on;
move3sub1();
C_5=on;
move3sub1();

  D_1=on;
move3sub1();
D_2=on;
move3sub1();
D_3=on;
move3sub1();
D_4=on;
move3sub1();
D_5=on;
move3sub1();

E_1=on;
move3sub1();
E_2=on;
move3sub1();
E_3=on;
move3sub1();
E_4=on;
move3sub1();
E_5=on;
move3sub1();

}
  
void main ()
{
ADCON1=0x87;
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
  Move1();
  timer();
  Move2();
  timer();
  Move3();
  timer();
}
}