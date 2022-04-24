
_main:

;MyProject.c,1 :: 		void main ()
;MyProject.c,3 :: 		trisb=0x00;
	CLRF       TRISB+0
;MyProject.c,4 :: 		portb=0x00;
	CLRF       PORTB+0
;MyProject.c,5 :: 		while (1)
L_main0:
;MyProject.c,7 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;MyProject.c,8 :: 		delay_ms(1000);
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
;MyProject.c,10 :: 		portb.f7=0;
	BCF        PORTB+0, 7
;MyProject.c,11 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;MyProject.c,12 :: 		}
	GOTO       L_main0
;MyProject.c,13 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
