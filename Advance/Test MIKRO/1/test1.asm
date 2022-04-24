
_main:

;test1.c,1 :: 		void main ()
;test1.c,3 :: 		trisb=0x00;
	CLRF       TRISB+0
;test1.c,4 :: 		portb=0x00;
	CLRF       PORTB+0
;test1.c,5 :: 		while (1)
L_main0:
;test1.c,7 :: 		portb=~portb;
	COMF       PORTB+0, 1
;test1.c,8 :: 		delay_ms(1000);
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
;test1.c,9 :: 		}
	GOTO       L_main0
;test1.c,10 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
