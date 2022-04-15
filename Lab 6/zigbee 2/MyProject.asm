
_main:

;MyProject.c,4 :: 		void main()
;MyProject.c,7 :: 		ADCON1=0b0000000;
	CLRF       ADCON1+0
;MyProject.c,8 :: 		TRISd=0x00;
	CLRF       TRISD+0
;MyProject.c,9 :: 		portd=0x00;
	CLRF       PORTD+0
;MyProject.c,10 :: 		UART1_Init(9600);
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;MyProject.c,11 :: 		Delay_ms(100);
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
;MyProject.c,13 :: 		while (1)
L_main1:
;MyProject.c,15 :: 		if (UART1_Data_Ready()==1)
	CALL       _UART1_Data_Ready+0
	MOVF       R0+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;MyProject.c,17 :: 		uart_rd =  UART1_Read();
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _uart_rd+0
;MyProject.c,18 :: 		if (uart_rd=='3')
	MOVF       R0+0, 0
	XORLW      51
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;MyProject.c,19 :: 		{     value=0;
	CLRF       _value+0
	CLRF       _value+1
;MyProject.c,20 :: 		value = ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;MyProject.c,21 :: 		value= value/2;
	MOVF       R0+0, 0
	MOVWF      R2+0
	MOVF       R0+1, 0
	MOVWF      R2+1
	RRF        R2+1, 1
	RRF        R2+0, 1
	BCF        R2+1, 7
	MOVF       R2+0, 0
	MOVWF      _value+0
	MOVF       R2+1, 0
	MOVWF      _value+1
;MyProject.c,22 :: 		WordToStr(value,txt);
	MOVF       R2+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       R2+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _txt+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;MyProject.c,23 :: 		UART1_Write_Text( strcat(txt, "G3"));
	MOVLW      _txt+0
	MOVWF      FARG_strcat_to+0
	MOVLW      ?lstr1_MyProject+0
	MOVWF      FARG_strcat_from+0
	CALL       _strcat+0
	MOVF       R0+0, 0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;MyProject.c,24 :: 		}
L_main4:
;MyProject.c,25 :: 		uart_rd=0;
	CLRF       _uart_rd+0
;MyProject.c,26 :: 		}
L_main3:
;MyProject.c,27 :: 		}
	GOTO       L_main1
;MyProject.c,28 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
