
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
;MyProject.c,26 :: 		portd=0x0;
	CLRF       PORTD+0
;MyProject.c,27 :: 		while (1)
L_Main0:
;MyProject.c,29 :: 		tmp = ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _tmp+0
	MOVF       R0+1, 0
	MOVWF      _tmp+1
;MyProject.c,31 :: 		if (tmp >250)
	MOVF       R0+1, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__Main11
	MOVF       R0+0, 0
	SUBLW      250
L__Main11:
	BTFSC      STATUS+0, 0
	GOTO       L_Main2
;MyProject.c,33 :: 		portd.f0=1;
	BSF        PORTD+0, 0
;MyProject.c,34 :: 		}  else
	GOTO       L_Main3
L_Main2:
;MyProject.c,36 :: 		portd.f0=0;
	BCF        PORTD+0, 0
;MyProject.c,37 :: 		}
L_Main3:
;MyProject.c,39 :: 		if(tmp>500)
	MOVF       _tmp+1, 0
	SUBLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__Main12
	MOVF       _tmp+0, 0
	SUBLW      244
L__Main12:
	BTFSC      STATUS+0, 0
	GOTO       L_Main4
;MyProject.c,41 :: 		portd.f1=1;
	BSF        PORTD+0, 1
;MyProject.c,42 :: 		}
	GOTO       L_Main5
L_Main4:
;MyProject.c,45 :: 		portd.f1=0;
	BCF        PORTD+0, 1
;MyProject.c,46 :: 		}
L_Main5:
;MyProject.c,49 :: 		if(tmp>750)
	MOVF       _tmp+1, 0
	SUBLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__Main13
	MOVF       _tmp+0, 0
	SUBLW      238
L__Main13:
	BTFSC      STATUS+0, 0
	GOTO       L_Main6
;MyProject.c,51 :: 		portd.f2=1;
	BSF        PORTD+0, 2
;MyProject.c,52 :: 		}
	GOTO       L_Main7
L_Main6:
;MyProject.c,55 :: 		portd.f2=0;
	BCF        PORTD+0, 2
;MyProject.c,56 :: 		}
L_Main7:
;MyProject.c,57 :: 		if(tmp>1000)
	MOVF       _tmp+1, 0
	SUBLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__Main14
	MOVF       _tmp+0, 0
	SUBLW      232
L__Main14:
	BTFSC      STATUS+0, 0
	GOTO       L_Main8
;MyProject.c,60 :: 		portd.f3=1;
	BSF        PORTD+0, 3
;MyProject.c,61 :: 		}    else
	GOTO       L_Main9
L_Main8:
;MyProject.c,63 :: 		portd.f3=0;
	BCF        PORTD+0, 3
;MyProject.c,64 :: 		}
L_Main9:
;MyProject.c,67 :: 		WordToStr(tmp,txt);
	MOVF       _tmp+0, 0
	MOVWF      FARG_WordToStr_input+0
	MOVF       _tmp+1, 0
	MOVWF      FARG_WordToStr_input+1
	MOVLW      _txt+0
	MOVWF      FARG_WordToStr_output+0
	CALL       _WordToStr+0
;MyProject.c,68 :: 		Lcd_Out(1,1,txt);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,69 :: 		}
	GOTO       L_Main0
;MyProject.c,70 :: 		}
L_end_Main:
	GOTO       $+0
; end of _Main
