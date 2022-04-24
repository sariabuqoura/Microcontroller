
_InitiGSM:

;MyProject.c,2 :: 		void InitiGSM()
;MyProject.c,4 :: 		UART1_Write_Text("AT+CMGF=1");
	MOVLW      ?lstr1_MyProject+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;MyProject.c,5 :: 		UART1_Write(13);
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,6 :: 		UART1_Write(10);
	MOVLW      10
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,7 :: 		}
L_end_InitiGSM:
	RETURN
; end of _InitiGSM

_SendCall:

;MyProject.c,8 :: 		void SendCall()
;MyProject.c,10 :: 		UART1_Write_Text("ATD0772243320;");
	MOVLW      ?lstr2_MyProject+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;MyProject.c,11 :: 		UART1_Write(13);
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,12 :: 		UART1_Write(10);
	MOVLW      10
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,13 :: 		}
L_end_SendCall:
	RETURN
; end of _SendCall

_SendMSG:

;MyProject.c,14 :: 		void SendMSG( )
;MyProject.c,16 :: 		InitiGSM();
	CALL       _InitiGSM+0
;MyProject.c,17 :: 		UART1_Write_Text("AT+CMGS=\"0772243320\"");
	MOVLW      ?lstr3_MyProject+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;MyProject.c,18 :: 		UART1_Write(13);
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,19 :: 		UART1_Write(10);
	MOVLW      10
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,20 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_SendMSG0:
	DECFSZ     R13+0, 1
	GOTO       L_SendMSG0
	DECFSZ     R12+0, 1
	GOTO       L_SendMSG0
	DECFSZ     R11+0, 1
	GOTO       L_SendMSG0
	NOP
;MyProject.c,21 :: 		UART1_Write_Text("hi from sari ");
	MOVLW      ?lstr4_MyProject+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;MyProject.c,22 :: 		UART1_Write(26);
	MOVLW      26
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;MyProject.c,23 :: 		}
L_end_SendMSG:
	RETURN
; end of _SendMSG

_main:

;MyProject.c,25 :: 		void main()
;MyProject.c,27 :: 		TRISb=0xff;
	MOVLW      255
	MOVWF      TRISB+0
;MyProject.c,29 :: 		TRISd=0x00;
	CLRF       TRISD+0
;MyProject.c,30 :: 		portd=0x00;
	CLRF       PORTD+0
;MyProject.c,31 :: 		UART1_Init(9600);
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;MyProject.c,32 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main1:
	DECFSZ     R13+0, 1
	GOTO       L_main1
	DECFSZ     R12+0, 1
	GOTO       L_main1
	DECFSZ     R11+0, 1
	GOTO       L_main1
	NOP
;MyProject.c,34 :: 		while (1)
L_main2:
;MyProject.c,36 :: 		if (portb.f0==1)
	BTFSS      PORTB+0, 0
	GOTO       L_main4
;MyProject.c,38 :: 		SendMSG();
	CALL       _SendMSG+0
;MyProject.c,40 :: 		portd.f0=1;
	BSF        PORTD+0, 0
;MyProject.c,41 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;MyProject.c,42 :: 		}  else
	GOTO       L_main6
L_main4:
;MyProject.c,44 :: 		portd.f0=0;
	BCF        PORTD+0, 0
;MyProject.c,45 :: 		}
L_main6:
;MyProject.c,46 :: 		}
	GOTO       L_main2
;MyProject.c,47 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
