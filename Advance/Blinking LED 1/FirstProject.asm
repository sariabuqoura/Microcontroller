;  Assembly code generated by mikroVirtualMachine - V. 5.0.0.3
;  Date/Time: 03/05/16 5:39:49 PM
;  Info: http://www.mikroe.com


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$2804			GOTO	_main
$0004	$	_main:
;FirstProject.pbas,2 :: 		main :
$0004	$	_main_main:
;FirstProject.pbas,3 :: 		trisb.0=0
$0004	$1303			BCF	STATUS, RP1
$0005	$1683			BSF	STATUS, RP0
$0006	$1006			BCF	TRISB, 0
$0007	$	FirstProject_L_2:
;FirstProject.pbas,4 :: 		run:
$0007	$	_main_run:
;FirstProject.pbas,5 :: 		portb.0=1
$0007	$	FirstProject_L_3:
$0007	$1303			BCF	STATUS, RP1
$0008	$1683			BSF	STATUS, RP0
$0009	$1283			BCF	STATUS, RP0
$000A	$1406			BSF	PORTB, 0
$000B	$	FirstProject_L_4:
;FirstProject.pbas,6 :: 		delay_ms(1000)
$000B	$300D			MOVLW	13
$000C	$00FC			MOVWF	STACK_12
$000D	$30FF			MOVLW	255
$000E	$00FB			MOVWF	STACK_11
$000F	$30FF			MOVLW	255
$0010	$00FA			MOVWF	STACK_10
$0011	$0BFC			DECFSZ	STACK_12, F
$0012	$2814			GOTO	$+2
$0013	$281B			GOTO	$+8
$0014	$0BFB			DECFSZ	STACK_11, F
$0015	$2817			GOTO	$+2
$0016	$281A			GOTO	$+4
$0017	$0BFA			DECFSZ	STACK_10, F
$0018	$2817			GOTO	$-1
$0019	$2814			GOTO	$-5
$001A	$2811			GOTO	$-9
$001B	$30BF			MOVLW	191
$001C	$00FB			MOVWF	STACK_11
$001D	$30FF			MOVLW	255
$001E	$00FA			MOVWF	STACK_10
$001F	$0BFB			DECFSZ	STACK_11, F
$0020	$2822			GOTO	$+2
$0021	$2825			GOTO	$+4
$0022	$0BFA			DECFSZ	STACK_10, F
$0023	$2822			GOTO	$-1
$0024	$281F			GOTO	$-5
$0025	$302B			MOVLW	43
$0026	$00FA			MOVWF	STACK_10
$0027	$0BFA			DECFSZ	STACK_10, F
$0028	$2827			GOTO	$-1
$0029	$0000			NOP
$002A	$0000			NOP
$002B	$0000			NOP
;FirstProject.pbas,7 :: 		portb.0=0
$002C	$1006			BCF	PORTB, 0
$002D	$	FirstProject_L_6:
;FirstProject.pbas,8 :: 		delay_ms(1000)
$002D	$300D			MOVLW	13
$002E	$00FC			MOVWF	STACK_12
$002F	$30FF			MOVLW	255
$0030	$00FB			MOVWF	STACK_11
$0031	$30FF			MOVLW	255
$0032	$00FA			MOVWF	STACK_10
$0033	$0BFC			DECFSZ	STACK_12, F
$0034	$2836			GOTO	$+2
$0035	$283D			GOTO	$+8
$0036	$0BFB			DECFSZ	STACK_11, F
$0037	$2839			GOTO	$+2
$0038	$283C			GOTO	$+4
$0039	$0BFA			DECFSZ	STACK_10, F
$003A	$2839			GOTO	$-1
$003B	$2836			GOTO	$-5
$003C	$2833			GOTO	$-9
$003D	$30BF			MOVLW	191
$003E	$00FB			MOVWF	STACK_11
$003F	$30FF			MOVLW	255
$0040	$00FA			MOVWF	STACK_10
$0041	$0BFB			DECFSZ	STACK_11, F
$0042	$2844			GOTO	$+2
$0043	$2847			GOTO	$+4
$0044	$0BFA			DECFSZ	STACK_10, F
$0045	$2844			GOTO	$-1
$0046	$2841			GOTO	$-5
$0047	$302B			MOVLW	43
$0048	$00FA			MOVWF	STACK_10
$0049	$0BFA			DECFSZ	STACK_10, F
$004A	$2849			GOTO	$-1
$004B	$0000			NOP
$004C	$0000			NOP
$004D	$0000			NOP
;FirstProject.pbas,9 :: 		goto run
$004E	$2807			GOTO	_main_run
$004F	$284F			GOTO	$