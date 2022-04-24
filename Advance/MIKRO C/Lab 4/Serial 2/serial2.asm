
_main:

;serial2.c,2 :: 		void main()
;serial2.c,4 :: 		TRISd=0x00;
	CLRF       TRISD+0
;serial2.c,5 :: 		portd=0x00;
	CLRF       PORTD+0
;serial2.c,6 :: 		UART1_Init(9600);               // Initialize UART module at 9600 bps
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;serial2.c,7 :: 		Delay_ms(100);                  // Wait for UART module to stabilize
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
;serial2.c,9 :: 		while (1)
L_main1:
;serial2.c,11 :: 		if (UART1_Data_Ready()==1)
	CALL       _UART1_Data_Ready+0
	MOVF       R0+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;serial2.c,13 :: 		uart_rd =  UART1_Read();     // read the received data,
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _uart_rd+0
;serial2.c,14 :: 		UART1_Write(uart_rd);       // and send data via UART
	MOVF       R0+0, 0
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;serial2.c,16 :: 		if (uart_rd=='a')
	MOVF       _uart_rd+0, 0
	XORLW      97
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;serial2.c,18 :: 		portd.f0=1;
	BSF        PORTD+0, 0
;serial2.c,19 :: 		}
L_main4:
;serial2.c,20 :: 		if (uart_rd=='A')
	MOVF       _uart_rd+0, 0
	XORLW      65
	BTFSS      STATUS+0, 2
	GOTO       L_main5
;serial2.c,22 :: 		portd.f0=0;
	BCF        PORTD+0, 0
;serial2.c,23 :: 		}
L_main5:
;serial2.c,25 :: 		if (uart_rd=='b')
	MOVF       _uart_rd+0, 0
	XORLW      98
	BTFSS      STATUS+0, 2
	GOTO       L_main6
;serial2.c,27 :: 		portd.f1=1;
	BSF        PORTD+0, 1
;serial2.c,28 :: 		}
L_main6:
;serial2.c,29 :: 		if (uart_rd=='B')
	MOVF       _uart_rd+0, 0
	XORLW      66
	BTFSS      STATUS+0, 2
	GOTO       L_main7
;serial2.c,31 :: 		portd.f1=0;
	BCF        PORTD+0, 1
;serial2.c,32 :: 		}
L_main7:
;serial2.c,34 :: 		if (uart_rd=='c')
	MOVF       _uart_rd+0, 0
	XORLW      99
	BTFSS      STATUS+0, 2
	GOTO       L_main8
;serial2.c,36 :: 		portd.f2=1;
	BSF        PORTD+0, 2
;serial2.c,37 :: 		}
L_main8:
;serial2.c,38 :: 		if (uart_rd=='C')
	MOVF       _uart_rd+0, 0
	XORLW      67
	BTFSS      STATUS+0, 2
	GOTO       L_main9
;serial2.c,40 :: 		portd.f2=0;
	BCF        PORTD+0, 2
;serial2.c,41 :: 		}
L_main9:
;serial2.c,42 :: 		}
L_main3:
;serial2.c,43 :: 		}
	GOTO       L_main1
;serial2.c,44 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
