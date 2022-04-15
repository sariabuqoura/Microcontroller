
_SendSMS:

;MyProject.c,4 :: 		void SendSMS(char msg[])
;MyProject.c,7 :: 		}
L_end_SendSMS:
	RETURN
; end of _SendSMS

_main:

;MyProject.c,10 :: 		void main()
;MyProject.c,12 :: 		TRISb=0xff;
	MOVLW      255
	MOVWF      TRISB+0
;MyProject.c,14 :: 		TRISd=0x00;
	CLRF       TRISD+0
;MyProject.c,15 :: 		portd=0x00;
	CLRF       PORTD+0
;MyProject.c,16 :: 		UART1_Init(9600);
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;MyProject.c,17 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
;MyProject.c,18 :: 		while (1)
L_main1:
;MyProject.c,20 :: 		if (portb.f0==1)
	BTFSS      PORTB+0, 0
	GOTO       L_main3
;MyProject.c,22 :: 		UART1_Write_Text("ATD0772243320;");
	MOVLW      ?lstr1_MyProject+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;MyProject.c,23 :: 		UART1_Write(13);
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,24 :: 		UART1_Write(10);
	MOVLW      10
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,25 :: 		portd.f0=1;
	BSF        PORTD+0, 0
;MyProject.c,26 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;MyProject.c,27 :: 		}  else
	GOTO       L_main5
L_main3:
;MyProject.c,29 :: 		portd.f0=0;
	BCF        PORTD+0, 0
;MyProject.c,30 :: 		}
L_main5:
;MyProject.c,31 :: 		}
	GOTO       L_main1
;MyProject.c,32 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
