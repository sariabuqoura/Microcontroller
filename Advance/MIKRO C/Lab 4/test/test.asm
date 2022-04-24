
_Main:

;test.c,19 :: 		void Main()
;test.c,21 :: 		trisd=0x00;
	CLRF       TRISD+0
;test.c,22 :: 		portd.f0=0;
	BCF        PORTD+0, 0
;test.c,24 :: 		Lcd_Init();                          // Initialize LCD
	CALL       _Lcd_Init+0
;test.c,25 :: 		Lcd_Cmd(_LCD_CLEAR);                 // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;test.c,26 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);            // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;test.c,27 :: 		ADCON1=0b00000000;
	CLRF       ADCON1+0
;test.c,28 :: 		while (1)
L_Main0:
;test.c,30 :: 		tmp = ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	CALL       _word2double+0
	MOVF       R0+0, 0
	MOVWF      _tmp+0
	MOVF       R0+1, 0
	MOVWF      _tmp+1
	MOVF       R0+2, 0
	MOVWF      _tmp+2
	MOVF       R0+3, 0
	MOVWF      _tmp+3
;test.c,31 :: 		tmp=tmp*5/1023;
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
	MOVWF      _tmp+0
	MOVF       R0+1, 0
	MOVWF      _tmp+1
	MOVF       R0+2, 0
	MOVWF      _tmp+2
	MOVF       R0+3, 0
	MOVWF      _tmp+3
;test.c,32 :: 		FloatToStr(tmp,txt);
	MOVF       R0+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       R0+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       R0+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       R0+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      _txt+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
;test.c,33 :: 		txt[4]=0;
	CLRF       _txt+4
;test.c,34 :: 		Lcd_Out(1,1,txt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;test.c,35 :: 		delay_ms(250);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
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
;test.c,36 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;test.c,37 :: 		}
	GOTO       L_Main0
;test.c,38 :: 		}
L_end_Main:
	GOTO       $+0
; end of _Main
