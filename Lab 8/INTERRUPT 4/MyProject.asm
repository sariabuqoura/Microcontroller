
_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;MyProject.c,3 :: 		void interrupt()
;MyProject.c,5 :: 		if (INTCON.F1==1)
	BTFSS      INTCON+0, 1
	GOTO       L_interrupt0
;MyProject.c,7 :: 		time=30;
	MOVLW      30
	MOVWF      _time+0
	MOVLW      0
	MOVWF      _time+1
;MyProject.c,8 :: 		INTCON.F1=0;   //INTF
	BCF        INTCON+0, 1
;MyProject.c,9 :: 		}
L_interrupt0:
;MyProject.c,10 :: 		if (PIR1.F0==1)
	BTFSS      PIR1+0, 0
	GOTO       L_interrupt1
;MyProject.c,12 :: 		value=value+1;
	INCF       _value+0, 1
	BTFSC      STATUS+0, 2
	INCF       _value+1, 1
;MyProject.c,13 :: 		PIR1.F0=0;
	BCF        PIR1+0, 0
;MyProject.c,14 :: 		}
L_interrupt1:
;MyProject.c,17 :: 		}
L_end_interrupt:
L__interrupt6:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_main:

;MyProject.c,18 :: 		void main()
;MyProject.c,20 :: 		time=900;
	MOVLW      132
	MOVWF      _time+0
	MOVLW      3
	MOVWF      _time+1
;MyProject.c,21 :: 		INTCON.F7=1;   //GIE
	BSF        INTCON+0, 7
;MyProject.c,22 :: 		INTCON.F6=1;   //PEIE
	BSF        INTCON+0, 6
;MyProject.c,23 :: 		T1CON.F0=1;       //00000001    TIMER1 ON
	BSF        T1CON+0, 0
;MyProject.c,25 :: 		PIR1.F0=0;   // TIMER1 OVERFLOW FLAG
	BCF        PIR1+0, 0
;MyProject.c,26 :: 		PIE1.F0=1;    //TIMER1 ENABLE
	BSF        PIE1+0, 0
;MyProject.c,28 :: 		INTCON.F4=1;// EXTERNAL INTERRUPTINTCON.F7=1;   //GIE
	BSF        INTCON+0, 4
;MyProject.c,29 :: 		INTCON.F4=1;   //INTE
	BSF        INTCON+0, 4
;MyProject.c,30 :: 		OPTION_REG.F6=1;  //RISING ACTIVE HIGHT
	BSF        OPTION_REG+0, 6
;MyProject.c,32 :: 		value=0;
	CLRF       _value+0
	CLRF       _value+1
;MyProject.c,33 :: 		TRISD=0X00;
	CLRF       TRISD+0
;MyProject.c,34 :: 		PORTD=0X0F;
	MOVLW      15
	MOVWF      PORTD+0
;MyProject.c,36 :: 		while (1)
L_main2:
;MyProject.c,38 :: 		if(value==time)   // 0.5 micro cycle * timer1 16 bits      =  32768*0.5 *10^-6   *(30*60)  ====== 1 MINUTE
	MOVF       _value+1, 0
	XORWF      _time+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main8
	MOVF       _time+0, 0
	XORWF      _value+0, 0
L__main8:
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;MyProject.c,40 :: 		PORTD=~PORTD;
	COMF       PORTD+0, 1
;MyProject.c,41 :: 		value=0;
	CLRF       _value+0
	CLRF       _value+1
;MyProject.c,42 :: 		}
L_main4:
;MyProject.c,44 :: 		}
	GOTO       L_main2
;MyProject.c,45 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
