
_main:

;matrix1.c,1 :: 		void main ()
;matrix1.c,3 :: 		trisb=0x00;
	CLRF       TRISB+0
;matrix1.c,4 :: 		portb=0xff;
	MOVLW      255
	MOVWF      PORTB+0
;matrix1.c,6 :: 		while (1)
L_main0:
;matrix1.c,9 :: 		portb=~portb;
	COMF       PORTB+0, 1
;matrix1.c,10 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
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
;matrix1.c,11 :: 		}
	GOTO       L_main0
;matrix1.c,13 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
