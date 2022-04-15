
_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;MyProject.c,3 :: 		void interrupt()
;MyProject.c,5 :: 		value=0;
	CLRF       _value+0
	CLRF       _value+1
;MyProject.c,6 :: 		INTCON.F1=0;   //INTF
	BCF        INTCON+0, 1
;MyProject.c,7 :: 		}
L_end_interrupt:
L__interrupt4:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_main:

;MyProject.c,8 :: 		void main()
;MyProject.c,10 :: 		INTCON.F7=1;   //GIE
	BSF        INTCON+0, 7
;MyProject.c,11 :: 		INTCON.F4=1;   //INTE
	BSF        INTCON+0, 4
;MyProject.c,12 :: 		OPTION_REG.F6=1;  //RISING ACTIVE HIGHT
	BSF        OPTION_REG+0, 6
;MyProject.c,13 :: 		value=0;
	CLRF       _value+0
	CLRF       _value+1
;MyProject.c,14 :: 		TRISD=0X00;
	CLRF       TRISD+0
;MyProject.c,15 :: 		PORTD=0X00;
	CLRF       PORTD+0
;MyProject.c,17 :: 		while (1)
L_main0:
;MyProject.c,19 :: 		PORTD=value;
	MOVF       _value+0, 0
	MOVWF      PORTD+0
;MyProject.c,20 :: 		value=value+1;
	INCF       _value+0, 1
	BTFSC      STATUS+0, 2
	INCF       _value+1, 1
;MyProject.c,21 :: 		delay_ms(1000);
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
;MyProject.c,22 :: 		}
	GOTO       L_main0
;MyProject.c,23 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
