
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
;MyProject.c,32 :: 		tmp = ADC_Read(7);
	MOVLW      7
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _tmp+0
	MOVF       R0+1, 0
	MOVWF      _tmp+1
;MyProject.c,33 :: 		tmp=tmp/2;
	MOVF       R0+0, 0
	MOVWF      R2+0
	MOVF       R0+1, 0
	MOVWF      R2+1
	RRF        R2+1, 1
	RRF        R2+0, 1
	BCF        R2+1, 7
	MOVF       R2+0, 0
	MOVWF      _tmp+0
	MOVF       R2+1, 0
	MOVWF      _tmp+1
;MyProject.c,34 :: 		WordToStr(tmp,tmptxt);
	MOVF       R2+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       R2+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _tmptxt+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;MyProject.c,36 :: 		Lcd_Out(1,1,tmptxt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _tmptxt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,38 :: 		voltage = ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	CALL       _word2double+0
	MOVF       R0+0, 0
	MOVWF      _voltage+0
	MOVF       R0+1, 0
	MOVWF      _voltage+1
	MOVF       R0+2, 0
	MOVWF      _voltage+2
	MOVF       R0+3, 0
	MOVWF      _voltage+3
;MyProject.c,39 :: 		voltage=voltage*5/1023;
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      192
	MOVWF      R4+1
	MOVLW      127
	MOVWF      R4+2
	MOVLW      136
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _voltage+0
	MOVF       R0+1, 0
	MOVWF      _voltage+1
	MOVF       R0+2, 0
	MOVWF      _voltage+2
	MOVF       R0+3, 0
	MOVWF      _voltage+3
;MyProject.c,40 :: 		FloatToStr(voltage,volttxt);
	MOVF       R0+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       R0+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       R0+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       R0+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      _volttxt+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
;MyProject.c,41 :: 		Lcd_Out(2,1,volttxt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _volttxt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,44 :: 		delay_ms(1000);
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
;MyProject.c,45 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,46 :: 		}
	GOTO       L_Main0
;MyProject.c,47 :: 		}
L_end_Main:
	GOTO       $+0
; end of _Main
