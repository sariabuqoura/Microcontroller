
_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;MyProject.c,3 :: 		void interrupt()
;MyProject.c,5 :: 		value=value+1;
	INCF       _value+0, 1
	BTFSC      STATUS+0, 2
	INCF       _value+1, 1
;MyProject.c,6 :: 		PIR1.F0=0;
	BCF        PIR1+0, 0
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
;MyProject.c,11 :: 		INTCON.F6=1;   //PEIE
	BSF        INTCON+0, 6
;MyProject.c,12 :: 		T1CON.F0=1;       //00000001    TIMER1 ON
	BSF        T1CON+0, 0
;MyProject.c,14 :: 		PIR1.F0=0;   // TIMER1 OVERFLOW FLAG
	BCF        PIR1+0, 0
;MyProject.c,15 :: 		PIE1.F0=1;    //TIMER1 ENABLE
	BSF        PIE1+0, 0
;MyProject.c,17 :: 		value=0;
	CLRF       _value+0
	CLRF       _value+1
;MyProject.c,18 :: 		TRISD=0X00;
	CLRF       TRISD+0
;MyProject.c,19 :: 		PORTD=0X0F;
	MOVLW      15
	MOVWF      PORTD+0
;MyProject.c,21 :: 		while (1)
L_main0:
;MyProject.c,23 :: 		if(value==30)   // 0.5 micro cycle * timer1 16 bits      =  32768*0.5 *10^-6   *(30)  ====== 1 second
	MOVLW      0
	XORWF      _value+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main6
	MOVLW      30
	XORWF      _value+0, 0
L__main6:
	BTFSS      STATUS+0, 2
	GOTO       L_main2
;MyProject.c,25 :: 		PORTD=~PORTD;
	COMF       PORTD+0, 1
;MyProject.c,26 :: 		value=0;
	CLRF       _value+0
	CLRF       _value+1
;MyProject.c,27 :: 		}
L_main2:
;MyProject.c,29 :: 		}
	GOTO       L_main0
;MyProject.c,30 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
