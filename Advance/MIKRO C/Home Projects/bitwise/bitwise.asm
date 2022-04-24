
_main:

;bitwise.c,1 :: 		void main ()
;bitwise.c,4 :: 		trisb=0x00;
	CLRF       TRISB+0
;bitwise.c,5 :: 		portb=0x00;
	CLRF       PORTB+0
;bitwise.c,6 :: 		while (1)
L_main0:
;bitwise.c,8 :: 		portb=0xff;
	MOVLW      255
	MOVWF      PORTB+0
;bitwise.c,9 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
	NOP
;bitwise.c,10 :: 		portb=0x00;
	CLRF       PORTB+0
;bitwise.c,11 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;bitwise.c,12 :: 		}
	GOTO       L_main0
;bitwise.c,14 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
