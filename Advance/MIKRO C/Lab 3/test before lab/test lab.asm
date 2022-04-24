
_main:

;test lab.c,25 :: 		void main()
;test lab.c,31 :: 		Lcd_Init();                          // Initialize LCD
	CALL       _Lcd_Init+0
;test lab.c,32 :: 		Lcd_Cmd(_LCD_CLEAR);                 // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;test lab.c,33 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);            // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;test lab.c,34 :: 		Lcd_Out(1,1,"sari");                 // Write text in first row
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_test_32lab+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;test lab.c,35 :: 		Lcd_Out(2,1,"abu qoura");           // Write text in second row
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_test_32lab+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;test lab.c,37 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
