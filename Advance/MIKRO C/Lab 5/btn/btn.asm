
_main:

;btn.c,2 :: 		void main()
;btn.c,4 :: 		TRISd=0x00;
	CLRF       TRISD+0
;btn.c,5 :: 		portd=0x00;
	CLRF       PORTD+0
;btn.c,6 :: 		UART1_Init(9600);               // Initialize UART module at 9600 bps
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;btn.c,7 :: 		Delay_ms(100);                  // Wait for UART module to stabilize
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
;btn.c,8 :: 		portd.f0=0  ;
	BCF        PORTD+0, 0
;btn.c,9 :: 		while (1)
L_main1:
;btn.c,11 :: 		if (UART1_Data_Ready()==1)
	CALL       _UART1_Data_Ready+0
	MOVF       R0+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;btn.c,13 :: 		uart_rd =  UART1_Read();     // read the received data,
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _uart_rd+0
;btn.c,15 :: 		if (uart_rd=='a' & portd.f0==1)
	MOVF       R0+0, 0
	XORLW      97
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1+0
	BTFSC      PORTD+0, 0
	GOTO       L__main7
	BCF        3, 0
	GOTO       L__main8
L__main7:
	BSF        3, 0
L__main8:
	CLRF       R0+0
	BTFSC      3, 0
	INCF       R0+0, 1
	MOVF       R1+0, 0
	ANDWF      R0+0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_main4
;btn.c,17 :: 		portd.f0=0;
	BCF        PORTD+0, 0
;btn.c,18 :: 		}
L_main4:
;btn.c,19 :: 		if (uart_rd=='a' & portd.f0==0)
	MOVF       _uart_rd+0, 0
	XORLW      97
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1+0
	BTFSC      PORTD+0, 0
	GOTO       L__main9
	BSF        3, 0
	GOTO       L__main10
L__main9:
	BCF        3, 0
L__main10:
	CLRF       R0+0
	BTFSC      3, 0
	INCF       R0+0, 1
	MOVF       R1+0, 0
	ANDWF      R0+0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_main5
;btn.c,21 :: 		portd.f0=1;
	BSF        PORTD+0, 0
;btn.c,22 :: 		}
L_main5:
;btn.c,23 :: 		UART1_Write(uart_rd);       // and send data via UART
	MOVF       _uart_rd+0, 0
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;btn.c,25 :: 		}
L_main3:
;btn.c,26 :: 		}
	GOTO       L_main1
;btn.c,27 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
