
_Main:

;ldr2.c,19 :: 		void Main()
;ldr2.c,21 :: 		trisd=0x00;
	CLRF       TRISD+0
;ldr2.c,22 :: 		portd.f0=0;
	BCF        PORTD+0, 0
;ldr2.c,24 :: 		Lcd_Init();                          // Initialize LCD
	CALL       _Lcd_Init+0
;ldr2.c,25 :: 		Lcd_Cmd(_LCD_CLEAR);                 // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ldr2.c,26 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);            // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ldr2.c,27 :: 		ADCON1=0b00000000;
	CLRF       ADCON1+0
;ldr2.c,28 :: 		while (1)
L_Main0:
;ldr2.c,30 :: 		tmp = ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _tmp+0
	MOVF       R0+1, 0
	MOVWF      _tmp+1
;ldr2.c,31 :: 		tmp=tmp;
;ldr2.c,32 :: 		WordToStr(tmp,txt);
	MOVF       _tmp+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _tmp+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _txt+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;ldr2.c,34 :: 		if (tmp<700)
	MOVLW      2
	SUBWF      _tmp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Main12
	MOVLW      188
	SUBWF      _tmp+0, 0
L__Main12:
	BTFSC      STATUS+0, 0
	GOTO       L_Main2
;ldr2.c,36 :: 		portd.f0=1;
	BSF        PORTD+0, 0
;ldr2.c,37 :: 		}else
	GOTO       L_Main3
L_Main2:
;ldr2.c,39 :: 		portd.f0=0;
	BCF        PORTD+0, 0
;ldr2.c,40 :: 		}
L_Main3:
;ldr2.c,41 :: 		if (tmp<600)
	MOVLW      2
	SUBWF      _tmp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Main13
	MOVLW      88
	SUBWF      _tmp+0, 0
L__Main13:
	BTFSC      STATUS+0, 0
	GOTO       L_Main4
;ldr2.c,43 :: 		portd.f1=1;
	BSF        PORTD+0, 1
;ldr2.c,44 :: 		}else
	GOTO       L_Main5
L_Main4:
;ldr2.c,46 :: 		portd.f1=0;
	BCF        PORTD+0, 1
;ldr2.c,47 :: 		}
L_Main5:
;ldr2.c,48 :: 		if (tmp<500)
	MOVLW      1
	SUBWF      _tmp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Main14
	MOVLW      244
	SUBWF      _tmp+0, 0
L__Main14:
	BTFSC      STATUS+0, 0
	GOTO       L_Main6
;ldr2.c,50 :: 		portd.f2=1;
	BSF        PORTD+0, 2
;ldr2.c,51 :: 		}else
	GOTO       L_Main7
L_Main6:
;ldr2.c,53 :: 		portd.f2=0;
	BCF        PORTD+0, 2
;ldr2.c,54 :: 		}
L_Main7:
;ldr2.c,55 :: 		if (tmp<400)
	MOVLW      1
	SUBWF      _tmp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__Main15
	MOVLW      144
	SUBWF      _tmp+0, 0
L__Main15:
	BTFSC      STATUS+0, 0
	GOTO       L_Main8
;ldr2.c,57 :: 		portd.f3=1;
	BSF        PORTD+0, 3
;ldr2.c,58 :: 		}else
	GOTO       L_Main9
L_Main8:
;ldr2.c,60 :: 		portd.f3=0;
	BCF        PORTD+0, 3
;ldr2.c,61 :: 		}
L_Main9:
;ldr2.c,62 :: 		delay_ms(250);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
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
;ldr2.c,63 :: 		Lcd_Out(1,1,txt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ldr2.c,64 :: 		}
	GOTO       L_Main0
;ldr2.c,65 :: 		}
L_end_Main:
	GOTO       $+0
; end of _Main
