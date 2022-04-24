
_main:

;lcd1.c,26 :: 		void main()
;lcd1.c,34 :: 		Lcd_Init();                          // Initialize LCD
	CALL       _Lcd_Init+0
;lcd1.c,35 :: 		Lcd_Cmd(_LCD_CLEAR);                 // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lcd1.c,36 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);            // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lcd1.c,37 :: 		Lcd_Out(1,1,"sari");                 // Write text in first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_lcd1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lcd1.c,38 :: 		Lcd_Out(2,1,"abu qoura");           // Write text in second row
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_lcd1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lcd1.c,40 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
