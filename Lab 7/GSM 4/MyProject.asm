
_InitiGSM:

;MyProject.c,19 :: 		void InitiGSM()
;MyProject.c,21 :: 		UART1_Write_Text("AT+CNMI=3,2,2,1,1");
	MOVLW      ?lstr1_MyProject+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;MyProject.c,22 :: 		UART1_Write(13);
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,23 :: 		UART1_Write(10);
	MOVLW      10
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,24 :: 		UART1_Write_Text("AT+CMGF=1");
	MOVLW      ?lstr2_MyProject+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;MyProject.c,25 :: 		UART1_Write(13);
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,26 :: 		UART1_Write(10);
	MOVLW      10
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,27 :: 		}
L_end_InitiGSM:
	RETURN
; end of _InitiGSM

_SendCall:

;MyProject.c,28 :: 		void SendCall()
;MyProject.c,30 :: 		UART1_Write_Text("ATD0772243320;");
	MOVLW      ?lstr3_MyProject+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;MyProject.c,31 :: 		UART1_Write(13);
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,32 :: 		UART1_Write(10);
	MOVLW      10
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,33 :: 		}
L_end_SendCall:
	RETURN
; end of _SendCall

_SendMSG:

;MyProject.c,34 :: 		void SendMSG(char Val[])
;MyProject.c,37 :: 		UART1_Write_Text("AT+CMGS=\"0772243320\"");
	MOVLW      ?lstr4_MyProject+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;MyProject.c,38 :: 		UART1_Write(13);
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,39 :: 		UART1_Write(10);
	MOVLW      10
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,40 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_SendMSG0:
	DECFSZ     R13+0, 1
	GOTO       L_SendMSG0
	DECFSZ     R12+0, 1
	GOTO       L_SendMSG0
	DECFSZ     R11+0, 1
	GOTO       L_SendMSG0
	NOP
;MyProject.c,41 :: 		UART1_Write_Text(strcat("sari Alarm", Val));
	MOVLW      ?lstr5_MyProject+0
	MOVWF      FARG_strcat_to+0
	MOVF       FARG_SendMSG_Val+0, 0
	MOVWF      FARG_strcat_from+0
	CALL       _strcat+0
	MOVF       R0+0, 0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;MyProject.c,42 :: 		UART1_Write(26);
	MOVLW      26
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,43 :: 		}
L_end_SendMSG:
	RETURN
; end of _SendMSG

_main:

;MyProject.c,45 :: 		void main()
;MyProject.c,47 :: 		Lcd_Init();                          // Initialize LCD
	CALL       _Lcd_Init+0
;MyProject.c,48 :: 		Lcd_Cmd(_LCD_CLEAR);                 // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,49 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);            // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,51 :: 		ADCON1=0b0000000;
	CLRF       ADCON1+0
;MyProject.c,52 :: 		TRISd=0x00;
	CLRF       TRISD+0
;MyProject.c,53 :: 		portd=0x00;
	CLRF       PORTD+0
;MyProject.c,54 :: 		UART1_Init(9600);
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;MyProject.c,55 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main1:
	DECFSZ     R13+0, 1
	GOTO       L_main1
	DECFSZ     R12+0, 1
	GOTO       L_main1
	DECFSZ     R11+0, 1
	GOTO       L_main1
	NOP
;MyProject.c,56 :: 		InitiGSM();
	CALL       _InitiGSM+0
;MyProject.c,57 :: 		while (1)
L_main2:
;MyProject.c,59 :: 		value = ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;MyProject.c,60 :: 		if (UART1_Data_Ready()==1)
	CALL       _UART1_Data_Ready+0
	MOVF       R0+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;MyProject.c,62 :: 		uart_rd =  UART1_Read();
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _uart_rd+0
	CLRF       _uart_rd+1
;MyProject.c,63 :: 		if (uart_rd=='T')
	MOVLW      0
	XORWF      _uart_rd+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVLW      84
	XORWF      _uart_rd+0, 0
L__main13:
	BTFSS      STATUS+0, 2
	GOTO       L_main5
;MyProject.c,65 :: 		WordToStr(value,txt);
	MOVF       _value+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _value+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _txt+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;MyProject.c,66 :: 		strcat(txt, "sari");
	MOVLW      _txt+0
	MOVWF      FARG_strcat_to+0
	MOVLW      ?lstr6_MyProject+0
	MOVWF      FARG_strcat_from+0
	CALL       _strcat+0
;MyProject.c,67 :: 		SendMSG(txt);
	MOVLW      _txt+0
	MOVWF      FARG_SendMSG_Val+0
	CALL       _SendMSG+0
;MyProject.c,68 :: 		Lcd_Out(1,1,txt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,69 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;MyProject.c,70 :: 		portd.f0=1;
	BSF        PORTD+0, 0
;MyProject.c,71 :: 		uart_rd=0;
	CLRF       _uart_rd+0
	CLRF       _uart_rd+1
;MyProject.c,72 :: 		}
	GOTO       L_main7
L_main5:
;MyProject.c,76 :: 		portd.f0=0;
	BCF        PORTD+0, 0
;MyProject.c,77 :: 		}
L_main7:
;MyProject.c,78 :: 		}
L_main4:
;MyProject.c,79 :: 		uart_rd=0;
	CLRF       _uart_rd+0
	CLRF       _uart_rd+1
;MyProject.c,80 :: 		WordToStr(value,txt);
	MOVF       _value+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _value+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _txt+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;MyProject.c,81 :: 		Lcd_Out(1,1,txt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,82 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;MyProject.c,83 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,84 :: 		}
	GOTO       L_main2
;MyProject.c,85 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
