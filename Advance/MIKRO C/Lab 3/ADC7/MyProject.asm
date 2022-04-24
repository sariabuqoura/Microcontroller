
_Main:

;MyProject.c,24 :: 		void Main()
;MyProject.c,26 :: 		trisd=0x00;
	CLRF       TRISD+0
;MyProject.c,27 :: 		portd=0x00;
	CLRF       PORTD+0
;MyProject.c,28 :: 		Lcd_Init();                          // Initialize LCD
	CALL       _Lcd_Init+0
;MyProject.c,29 :: 		Lcd_Cmd(_LCD_CLEAR);                 // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,30 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);            // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,31 :: 		ADCON1=0b00000000;
	CLRF       ADCON1+0
;MyProject.c,32 :: 		while (1)
L_Main0:
;MyProject.c,34 :: 		xvalue = ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _xvalue+0
	MOVF       R0+1, 0
	MOVWF      _xvalue+1
;MyProject.c,35 :: 		WordToStr(xvalue,xtxt);
	MOVF       R0+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _xtxt+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;MyProject.c,36 :: 		Lcd_Out(1,1,xtxt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _xtxt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,38 :: 		if(xvalue>600)
	MOVF       _xvalue+1, 0
	SUBLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__Main12
	MOVF       _xvalue+0, 0
	SUBLW      88
L__Main12:
	BTFSC      STATUS+0, 0
	GOTO       L_Main2
;MyProject.c,39 :: 		{  portd.f0=1;
	BSF        PORTD+0, 0
;MyProject.c,40 :: 		}
	GOTO       L_Main3
L_Main2:
;MyProject.c,42 :: 		{portd.f0=0;
	BCF        PORTD+0, 0
;MyProject.c,43 :: 		}
L_Main3:
;MyProject.c,44 :: 		if(xvalue<400)
	MOVLW      1
	SUBWF      _xvalue+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Main13
	MOVLW      144
	SUBWF      _xvalue+0, 0
L__Main13:
	BTFSC      STATUS+0, 0
	GOTO       L_Main4
;MyProject.c,45 :: 		{  portd.f1=1;
	BSF        PORTD+0, 1
;MyProject.c,46 :: 		}
	GOTO       L_Main5
L_Main4:
;MyProject.c,48 :: 		{portd.f1=0;
	BCF        PORTD+0, 1
;MyProject.c,49 :: 		}
L_Main5:
;MyProject.c,51 :: 		if(yvalue>600)
	MOVF       _yvalue+1, 0
	SUBLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__Main14
	MOVF       _yvalue+0, 0
	SUBLW      88
L__Main14:
	BTFSC      STATUS+0, 0
	GOTO       L_Main6
;MyProject.c,52 :: 		{  portd.f2=1;
	BSF        PORTD+0, 2
;MyProject.c,53 :: 		}
	GOTO       L_Main7
L_Main6:
;MyProject.c,55 :: 		{portd.f2=0;
	BCF        PORTD+0, 2
;MyProject.c,56 :: 		}
L_Main7:
;MyProject.c,57 :: 		if(yvalue<400)
	MOVLW      1
	SUBWF      _yvalue+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Main15
	MOVLW      144
	SUBWF      _yvalue+0, 0
L__Main15:
	BTFSC      STATUS+0, 0
	GOTO       L_Main8
;MyProject.c,58 :: 		{  portd.f3=1;
	BSF        PORTD+0, 3
;MyProject.c,59 :: 		}
	GOTO       L_Main9
L_Main8:
;MyProject.c,61 :: 		{portd.f3=0;
	BCF        PORTD+0, 3
;MyProject.c,62 :: 		}
L_Main9:
;MyProject.c,66 :: 		yvalue = ADC_Read(7);
	MOVLW      7
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _yvalue+0
	MOVF       R0+1, 0
	MOVWF      _yvalue+1
;MyProject.c,67 :: 		WordToStr(yvalue,ytxt);
	MOVF       R0+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _ytxt+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;MyProject.c,68 :: 		Lcd_Out(2,1,ytxt);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _ytxt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,70 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_Main10:
	DECFSZ     R13+0, 1
	GOTO       L_Main10
	DECFSZ     R12+0, 1
	GOTO       L_Main10
	DECFSZ     R11+0, 1
	GOTO       L_Main10
	NOP
	NOP
;MyProject.c,71 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,72 :: 		}
	GOTO       L_Main0
;MyProject.c,73 :: 		}
L_end_Main:
	GOTO       $+0
; end of _Main
