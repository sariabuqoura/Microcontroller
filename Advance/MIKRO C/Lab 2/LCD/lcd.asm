
_main:

;lcd.c,24 :: 		void main()
;lcd.c,30 :: 		Lcd_Init();                          // Initialize LCD
	CALL       _Lcd_Init+0
;lcd.c,31 :: 		Lcd_Cmd(_LCD_CLEAR);                 // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lcd.c,32 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);            // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lcd.c,33 :: 		Lcd_Out(1,1,"sari");                 // Write text in first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_lcd+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lcd.c,34 :: 		Lcd_Out(2,1,"abu qoura");           // Write text in second row
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_lcd+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lcd.c,36 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
