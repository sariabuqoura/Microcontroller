
_main:

;zigb.c,4 :: 		void main()
;zigb.c,7 :: 		ADCON1=0b0000000;
	CLRF       ADCON1+0
;zigb.c,8 :: 		TRISd=0x00;
	CLRF       TRISD+0
;zigb.c,9 :: 		portd=0x00;
	CLRF       PORTD+0
;zigb.c,10 :: 		UART1_Init(9600);
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;zigb.c,11 :: 		Delay_ms(100);
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
;zigb.c,13 :: 		while (1)
L_main1:
;zigb.c,15 :: 		if (UART1_Data_Ready()==1)
	CALL       _UART1_Data_Ready+0
	MOVF       R0+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;zigb.c,17 :: 		uart_rd =  UART1_Read();
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _uart_rd+0
;zigb.c,18 :: 		if (uart_rd=='3')
	MOVF       R0+0, 0
	XORLW      51
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;zigb.c,20 :: 		UART1_Write_Text("\n Welcome to G3");
	MOVLW      ?lstr1_zigb+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;zigb.c,21 :: 		while (1)
L_main5:
;zigb.c,23 :: 		if (UART1_Data_Ready()==1)
	CALL       _UART1_Data_Ready+0
	MOVF       R0+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main7
;zigb.c,25 :: 		uart_rd =  UART1_Read();
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _uart_rd+0
;zigb.c,26 :: 		if (uart_rd=='T')
	MOVF       R0+0, 0
	XORLW      84
	BTFSS      STATUS+0, 2
	GOTO       L_main8
;zigb.c,28 :: 		uart_rd=0;
	CLRF       _uart_rd+0
;zigb.c,29 :: 		value=0;
	CLRF       _value+0
	CLRF       _value+1
;zigb.c,30 :: 		value = ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;zigb.c,31 :: 		value= value/2;
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
;zigb.c,32 :: 		WordToStr(value,txt);
	MOVF       R2+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       R2+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _txt+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;zigb.c,33 :: 		UART1_Write_Text( strcat(" Temperature is ",txt));
	MOVLW      ?lstr2_zigb+0
	MOVWF      FARG_strcat_to+0
	MOVLW      _txt+0
	MOVWF      FARG_strcat_from+0
	CALL       _strcat+0
	MOVF       R0+0, 0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;zigb.c,34 :: 		memset(txt, 0, sizeof txt);
	MOVLW      _txt+0
	MOVWF      FARG_memset_p1+0
	CLRF       FARG_memset_character+0
	MOVLW      15
	MOVWF      FARG_memset_n+0
	MOVLW      0
	MOVWF      FARG_memset_n+1
	CALL       _memset+0
;zigb.c,35 :: 		}
L_main8:
;zigb.c,37 :: 		if (uart_rd=='P')
	MOVF       _uart_rd+0, 0
	XORLW      80
	BTFSS      STATUS+0, 2
	GOTO       L_main9
;zigb.c,39 :: 		uart_rd=0;
	CLRF       _uart_rd+0
;zigb.c,40 :: 		value=0;
	CLRF       _value+0
	CLRF       _value+1
;zigb.c,41 :: 		value = ADC_Read(1);
	MOVLW      1
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;zigb.c,42 :: 		WordToStr(value,txt);
	MOVF       R0+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _txt+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;zigb.c,43 :: 		UART1_Write_Text( strcat(" Potentiometer is ",txt));
	MOVLW      ?lstr3_zigb+0
	MOVWF      FARG_strcat_to+0
	MOVLW      _txt+0
	MOVWF      FARG_strcat_from+0
	CALL       _strcat+0
	MOVF       R0+0, 0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;zigb.c,44 :: 		memset(txt, 0, sizeof txt);
	MOVLW      _txt+0
	MOVWF      FARG_memset_p1+0
	CLRF       FARG_memset_character+0
	MOVLW      15
	MOVWF      FARG_memset_n+0
	MOVLW      0
	MOVWF      FARG_memset_n+1
	CALL       _memset+0
;zigb.c,45 :: 		}
L_main9:
;zigb.c,46 :: 		if (uart_rd=='A')
	MOVF       _uart_rd+0, 0
	XORLW      65
	BTFSS      STATUS+0, 2
	GOTO       L_main10
;zigb.c,48 :: 		uart_rd=0;
	CLRF       _uart_rd+0
;zigb.c,49 :: 		portd.f0=1;
	BSF        PORTD+0, 0
;zigb.c,50 :: 		UART1_Write_Text("Led is ON");
	MOVLW      ?lstr4_zigb+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;zigb.c,51 :: 		}
L_main10:
;zigb.c,52 :: 		if (uart_rd=='a')
	MOVF       _uart_rd+0, 0
	XORLW      97
	BTFSS      STATUS+0, 2
	GOTO       L_main11
;zigb.c,54 :: 		uart_rd=0;
	CLRF       _uart_rd+0
;zigb.c,55 :: 		portd.f0=0;
	BCF        PORTD+0, 0
;zigb.c,56 :: 		UART1_Write_Text("Led is OF");
	MOVLW      ?lstr5_zigb+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;zigb.c,57 :: 		}
L_main11:
;zigb.c,58 :: 		if (uart_rd=='3')
	MOVF       _uart_rd+0, 0
	XORLW      51
	BTFSS      STATUS+0, 2
	GOTO       L_main12
;zigb.c,60 :: 		UART1_Write_Text("Bye");
	MOVLW      ?lstr6_zigb+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;zigb.c,62 :: 		break;
	GOTO       L_main6
;zigb.c,63 :: 		}
L_main12:
;zigb.c,64 :: 		uart_rd=0;
	CLRF       _uart_rd+0
;zigb.c,66 :: 		}
L_main7:
;zigb.c,68 :: 		}
	GOTO       L_main5
L_main6:
;zigb.c,70 :: 		}
L_main4:
;zigb.c,72 :: 		}
L_main3:
;zigb.c,73 :: 		}
	GOTO       L_main1
;zigb.c,74 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
