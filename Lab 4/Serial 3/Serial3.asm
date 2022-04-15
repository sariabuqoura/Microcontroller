
_main:

;Serial3.c,2 :: 		void main()
;Serial3.c,4 :: 		TRISd=0x00;
	CLRF       TRISD+0
;Serial3.c,5 :: 		portd=0x00;
	CLRF       PORTD+0
;Serial3.c,6 :: 		UART1_Init(9600);               // Initialize UART module at 9600 bps
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;Serial3.c,7 :: 		Delay_ms(100);                  // Wait for UART module to stabilize
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
;Serial3.c,9 :: 		while (1)
L_main1:
;Serial3.c,11 :: 		if (UART1_Data_Ready()==1)
	CALL       _UART1_Data_Ready+0
	MOVF       R0+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;Serial3.c,13 :: 		uart_rd =  UART1_Read();     // read the received data,
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _uart_rd+0
;Serial3.c,14 :: 		UART1_Write(uart_rd+32);       // and send data via UART
	MOVLW      32
	ADDWF      R0+0, 0
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;Serial3.c,15 :: 		}
L_main3:
;Serial3.c,16 :: 		}
	GOTO       L_main1
;Serial3.c,17 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
