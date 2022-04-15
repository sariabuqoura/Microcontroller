
_InitiGSM:

;MyProject.c,18 :: 		void InitiGSM()
;MyProject.c,20 :: 		UART1_Write_Text("AT+CMGF=1");
	MOVLW      ?lstr1_MyProject+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;MyProject.c,21 :: 		UART1_Write(13);
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,22 :: 		UART1_Write(10);
	MOVLW      10
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,23 :: 		}
L_end_InitiGSM:
	RETURN
; end of _InitiGSM

_SendCall:

;MyProject.c,24 :: 		void SendCall()
;MyProject.c,26 :: 		UART1_Write_Text("ATD0772243320;");
	MOVLW      ?lstr2_MyProject+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;MyProject.c,27 :: 		UART1_Write(13);
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,28 :: 		UART1_Write(10);
	MOVLW      10
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,29 :: 		}
L_end_SendCall:
	RETURN
; end of _SendCall

_SendMSG:

;MyProject.c,30 :: 		void SendMSG(char Val[])
;MyProject.c,32 :: 		InitiGSM();
	CALL       _InitiGSM+0
;MyProject.c,33 :: 		UART1_Write_Text("AT+CMGS=\"0772243320\"");
	MOVLW      ?lstr3_MyProject+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;MyProject.c,34 :: 		UART1_Write(13);
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,35 :: 		UART1_Write(10);
	MOVLW      10
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,36 :: 		delay_ms(2000);
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
;MyProject.c,37 :: 		UART1_Write_Text(strcat("sari Alarm", Val));
	MOVLW      ?lstr4_MyProject+0
	MOVWF      FARG_strcat_to+0
	MOVF       FARG_SendMSG_Val+0, 0
	MOVWF      FARG_strcat_from+0
	CALL       _strcat+0
	MOVF       R0+0, 0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;MyProject.c,38 :: 		UART1_Write(26);
	MOVLW      26
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,39 :: 		}
L_end_SendMSG:
	RETURN
; end of _SendMSG

_main:

;MyProject.c,41 :: 		void main()
;MyProject.c,43 :: 		Lcd_Init();                          // Initialize LCD
	CALL       _Lcd_Init+0
;MyProject.c,44 :: 		Lcd_Cmd(_LCD_CLEAR);                 // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,45 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);            // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,47 :: 		ADCON1=0b0000000;
	CLRF       ADCON1+0
;MyProject.c,48 :: 		TRISd=0x00;
	CLRF       TRISD+0
;MyProject.c,49 :: 		portd=0x00;
	CLRF       PORTD+0
;MyProject.c,50 :: 		UART1_Init(9600);
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;MyProject.c,51 :: 		Delay_ms(100);
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
;MyProject.c,53 :: 		while (1)
L_main2:
;MyProject.c,54 :: 		{    value = ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _value+0
	MOVF       R0+1, 0
	MOVWF      _value+1
;MyProject.c,55 :: 		if (value>700)
	MOVF       R0+1, 0
	SUBLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVF       R0+0, 0
	SUBLW      188
L__main12:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
;MyProject.c,57 :: 		WordToStr(value,txt);
	MOVF       _value+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _value+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _txt+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;MyProject.c,58 :: 		SendMSG(txt);
	MOVLW      _txt+0
	MOVWF      FARG_SendMSG_Val+0
	CALL       _SendMSG+0
;MyProject.c,59 :: 		portd.f0=1;
	BSF        PORTD+0, 0
;MyProject.c,60 :: 		Lcd_Out(1,1,txt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,61 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;MyProject.c,62 :: 		}  else
	GOTO       L_main6
L_main4:
;MyProject.c,64 :: 		portd.f0=0;
	BCF        PORTD+0, 0
;MyProject.c,65 :: 		}
L_main6:
;MyProject.c,66 :: 		WordToStr(value,txt);
	MOVF       _value+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _value+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _txt+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;MyProject.c,67 :: 		Lcd_Out(1,1,txt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,68 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;MyProject.c,69 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,70 :: 		}
	GOTO       L_main2
;MyProject.c,71 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
