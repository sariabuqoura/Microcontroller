
_Main:

;MyProject.c,19 :: 		void Main()
;MyProject.c,21 :: 		Lcd_Init();                          // Initialize LCD
	CALL       _Lcd_Init+0
;MyProject.c,22 :: 		Lcd_Cmd(_LCD_CLEAR);                 // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,23 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);            // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,24 :: 		ADCON1=0b00000000;
	CLRF       ADCON1+0
;MyProject.c,25 :: 		trisd=0x00;
	CLRF       TRISD+0
;MyProject.c,26 :: 		portd.f0=0;
	BCF        PORTD+0, 0
;MyProject.c,27 :: 		while (1)
L_Main0:
;MyProject.c,29 :: 		tmp = ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _tmp+0
	MOVF       R0+1, 0
	MOVWF      _tmp+1
;MyProject.c,30 :: 		if (tmp>500)
	MOVF       R0+1, 0
	SUBLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__Main5
	MOVF       R0+0, 0
	SUBLW      244
L__Main5:
	BTFSC      STATUS+0, 0
	GOTO       L_Main2
;MyProject.c,32 :: 		portd.f0=1;
	BSF        PORTD+0, 0
;MyProject.c,33 :: 		}
	GOTO       L_Main3
L_Main2:
;MyProject.c,36 :: 		portd.f0=0;
	BCF        PORTD+0, 0
;MyProject.c,37 :: 		}
L_Main3:
;MyProject.c,39 :: 		WordToStr(tmp,txt);
	MOVF       _tmp+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _tmp+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _txt+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;MyProject.c,40 :: 		Lcd_Out(1,1,txt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,41 :: 		}
	GOTO       L_Main0
;MyProject.c,42 :: 		}
L_end_Main:
	GOTO       $+0
; end of _Main
