
_main:

;button.c,1 :: 		void main()
;button.c,4 :: 		trisb=0x00;
	CLRF       TRISB+0
;button.c,5 :: 		portb=0x00;
	CLRF       PORTB+0
;button.c,7 :: 		trisd=0b00000001;
	MOVLW      1
	MOVWF      TRISD+0
;button.c,8 :: 		trisc=0b00000001;
	MOVLW      1
	MOVWF      TRISC+0
;button.c,9 :: 		while(1)
L_main0:
;button.c,11 :: 		if (portd.f0==1)
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;button.c,13 :: 		portb=0xf0;
	MOVLW      240
	MOVWF      PORTB+0
;button.c,14 :: 		}
	GOTO       L_main3
L_main2:
;button.c,17 :: 		portb=0x00;
	CLRF       PORTB+0
;button.c,18 :: 		}
L_main3:
;button.c,20 :: 		if (portc.f0==0)
	BTFSC      PORTC+0, 0
	GOTO       L_main4
;button.c,22 :: 		portb=0x0f;
	MOVLW      15
	MOVWF      PORTB+0
;button.c,23 :: 		}
	GOTO       L_main5
L_main4:
;button.c,26 :: 		portb=0x00;
	CLRF       PORTB+0
;button.c,27 :: 		}
L_main5:
;button.c,34 :: 		}
	GOTO       L_main0
;button.c,36 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
