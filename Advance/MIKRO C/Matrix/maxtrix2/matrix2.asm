
_main:

;matrix2.c,1 :: 		void main ()
;matrix2.c,3 :: 		ADCON1=0X0f;
	MOVLW      15
	MOVWF      ADCON1+0
;matrix2.c,4 :: 		trisa=0x00;
	CLRF       TRISA+0
;matrix2.c,6 :: 		trisb=0x00;
	CLRF       TRISB+0
;matrix2.c,7 :: 		trisc=0x00;
	CLRF       TRISC+0
;matrix2.c,8 :: 		trisd=0x00;
	CLRF       TRISD+0
;matrix2.c,9 :: 		trise=0x00;
	CLRF       TRISE+0
;matrix2.c,11 :: 		porta=0x00;
	CLRF       PORTA+0
;matrix2.c,12 :: 		portb=0x00;
	CLRF       PORTB+0
;matrix2.c,13 :: 		portc=0x00;
	CLRF       PORTC+0
;matrix2.c,14 :: 		portd=0x00;
	CLRF       PORTD+0
;matrix2.c,15 :: 		porte=0x00;
	CLRF       PORTE+0
;matrix2.c,16 :: 		while (1)
L_main0:
;matrix2.c,18 :: 		porta=~porta;
	COMF       PORTA+0, 1
;matrix2.c,19 :: 		portb=~portb;
	COMF       PORTB+0, 1
;matrix2.c,20 :: 		portc=~portc;
	COMF       PORTC+0, 1
;matrix2.c,21 :: 		portd=~portd;
	COMF       PORTD+0, 1
;matrix2.c,22 :: 		porte=~porte;
	COMF       PORTE+0, 1
;matrix2.c,23 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;matrix2.c,24 :: 		}
	GOTO       L_main0
;matrix2.c,26 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
