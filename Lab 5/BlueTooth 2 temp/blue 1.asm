
_main:

;blue 1.c,4 :: 		void main()
;blue 1.c,7 :: 		ADCON1=0b0000000;
	CLRF       ADCON1+0
;blue 1.c,8 :: 		TRISd=0x00;
	CLRF       TRISD+0
;blue 1.c,9 :: 		portd=0x00;
	CLRF       PORTD+0
;blue 1.c,10 :: 		UART1_Init(9600);
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;blue 1.c,11 :: 		Delay_ms(100);
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
;blue 1.c,13 :: 		while (1)
L_main1:
;blue 1.c,15 :: 		if (UART1_Data_Ready()==1)
	CALL       _UART1_Data_Ready+0
	MOVF       R0+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;blue 1.c,17 :: 		uart_rd =  UART1_Read();
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _uart_rd+0
;blue 1.c,18 :: 		if (uart_rd=='t')
	MOVF       R0+0, 0
	XORLW      116
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;blue 1.c,19 :: 		{     value=0;
	CLRF       _value+0
	CLRF       _value+1
;blue 1.c,20 :: 		value = ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;blue 1.c,21 :: 		value= value/2;
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
	RRF        _value+1, 1
	RRF        _value+0, 1
	BCF        _value+1, 7
;blue 1.c,22 :: 		}
L_main4:
;blue 1.c,23 :: 		if (uart_rd=='a')
	MOVF       _uart_rd+0, 0
	XORLW      97
	BTFSS      STATUS+0, 2
	GOTO       L_main5
;blue 1.c,25 :: 		portd.f0=1;
	BSF        PORTD+0, 0
;blue 1.c,26 :: 		}
L_main5:
;blue 1.c,27 :: 		if (uart_rd=='A')
	MOVF       _uart_rd+0, 0
	XORLW      65
	BTFSS      STATUS+0, 2
	GOTO       L_main6
;blue 1.c,29 :: 		portd.f0=0;
	BCF        PORTD+0, 0
;blue 1.c,30 :: 		}
L_main6:
;blue 1.c,31 :: 		WordToStr(value,txt);
	MOVF       _value+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _value+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _txt+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;blue 1.c,32 :: 		UART1_Write_Text(txt);
	MOVLW      _txt+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;blue 1.c,33 :: 		uart_rd=0;
	CLRF       _uart_rd+0
;blue 1.c,34 :: 		}
L_main3:
;blue 1.c,35 :: 		}
	GOTO       L_main1
;blue 1.c,36 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
