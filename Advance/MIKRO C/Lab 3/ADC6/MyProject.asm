
_Main:

;MyProject.c,24 :: 		void Main()
;MyProject.c,26 :: 		Lcd_Init();                          // Initialize LCD
	CALL       _Lcd_Init+0
;MyProject.c,27 :: 		Lcd_Cmd(_LCD_CLEAR);                 // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,28 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);            // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,29 :: 		ADCON1=0b00000000;
	CLRF       ADCON1+0
;MyProject.c,30 :: 		while (1)
L_Main0:
;MyProject.c,32 :: 		xvalue = ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _xvalue+0
	MOVF       R0+1, 0
	MOVWF      _xvalue+1
;MyProject.c,33 :: 		WordToStr(xvalue,xtxt);
	MOVF       R0+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _xtxt+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;MyProject.c,34 :: 		Lcd_Out(1,1,xtxt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _xtxt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,36 :: 		yvalue = ADC_Read(7);
	MOVLW      7
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _yvalue+0
	MOVF       R0+1, 0
	MOVWF      _yvalue+1
;MyProject.c,37 :: 		WordToStr(yvalue,ytxt);
	MOVF       R0+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _ytxt+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;MyProject.c,38 :: 		Lcd_Out(2,1,ytxt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _ytxt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,41 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_Main2:
	DECFSZ     R13+0, 1
	GOTO       L_Main2
	DECFSZ     R12+0, 1
	GOTO       L_Main2
	DECFSZ     R11+0, 1
	GOTO       L_Main2
	NOP
	NOP
;MyProject.c,42 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,43 :: 		}
	GOTO       L_Main0
;MyProject.c,44 :: 		}
L_end_Main:
	GOTO       $+0
; end of _Main
