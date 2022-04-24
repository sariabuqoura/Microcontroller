
_main:

;MyProject.c,1 :: 		void main ()
;MyProject.c,3 :: 		trisb=0;
	CLRF       TRISB+0
;MyProject.c,4 :: 		portb=0;
	CLRF       PORTB+0
;MyProject.c,5 :: 		while (1)
L_main0:
;MyProject.c,7 :: 		portb=~portb;
	COMF       PORTB+0, 1
;MyProject.c,8 :: 		delay_ms(1000);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;MyProject.c,9 :: 		}
	GOTO       L_main0
;MyProject.c,10 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
