;  Assembly code generated by mikroVirtualMachine - V. 5.0.0.3
;  Date/Time: 03/05/16 6:03:27 PM
;  Info: http://www.mikroe.com


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$2804			GOTO	_main
$0004	$	_main:
;SecondProject.pbas,2 :: 		main:
$0004	$	_main_main:
;SecondProject.pbas,3 :: 		trisb=%00000000
$0004	$1303			BCF	STATUS, RP1
$0005	$1683			BSF	STATUS, RP0
$0006	$0186			CLRF	TRISB, 1
;SecondProject.pbas,4 :: 		run:
$0007	$	_main_run:
;SecondProject.pbas,5 :: 		portb=%00000000
$0007	$1283			BCF	STATUS, RP0
$0008	$0186			CLRF	PORTB, 1
;SecondProject.pbas,6 :: 		delay_ms(1000)
$0009	$300D			MOVLW	13
$000A	$00FC			MOVWF	STACK_12
$000B	$30FF			MOVLW	255
$000C	$00FB			MOVWF	STACK_11
$000D	$30FF			MOVLW	255
$000E	$00FA			MOVWF	STACK_10
$000F	$0BFC			DECFSZ	STACK_12, F
$0010	$2812			GOTO	$+2
$0011	$2819			GOTO	$+8
$0012	$0BFB			DECFSZ	STACK_11, F
$0013	$2815			GOTO	$+2
$0014	$2818			GOTO	$+4
$0015	$0BFA			DECFSZ	STACK_10, F
$0016	$2815			GOTO	$-1
$0017	$2812			GOTO	$-5
$0018	$280F			GOTO	$-9
$0019	$30BF			MOVLW	191
$001A	$00FB			MOVWF	STACK_11
$001B	$30FF			MOVLW	255
$001C	$00FA			MOVWF	STACK_10
$001D	$0BFB			DECFSZ	STACK_11, F
$001E	$2820			GOTO	$+2
$001F	$2823			GOTO	$+4
$0020	$0BFA			DECFSZ	STACK_10, F
$0021	$2820			GOTO	$-1
$0022	$281D			GOTO	$-5
$0023	$302B			MOVLW	43
$0024	$00FA			MOVWF	STACK_10
$0025	$0BFA			DECFSZ	STACK_10, F
$0026	$2825			GOTO	$-1
$0027	$0000			NOP
$0028	$0000			NOP
$0029	$0000			NOP
;SecondProject.pbas,7 :: 		portb=%11111111
$002A	$30FF			MOVLW	255
$002B	$0086			MOVWF	PORTB
;SecondProject.pbas,8 :: 		delay_ms(1000)
$002C	$300D			MOVLW	13
$002D	$00FC			MOVWF	STACK_12
$002E	$30FF			MOVLW	255
$002F	$00FB			MOVWF	STACK_11
$0030	$30FF			MOVLW	255
$0031	$00FA			MOVWF	STACK_10
$0032	$0BFC			DECFSZ	STACK_12, F
$0033	$2835			GOTO	$+2
$0034	$283C			GOTO	$+8
$0035	$0BFB			DECFSZ	STACK_11, F
$0036	$2838			GOTO	$+2
$0037	$283B			GOTO	$+4
$0038	$0BFA			DECFSZ	STACK_10, F
$0039	$2838			GOTO	$-1
$003A	$2835			GOTO	$-5
$003B	$2832			GOTO	$-9
$003C	$30BF			MOVLW	191
$003D	$00FB			MOVWF	STACK_11
$003E	$30FF			MOVLW	255
$003F	$00FA			MOVWF	STACK_10
$0040	$0BFB			DECFSZ	STACK_11, F
$0041	$2843			GOTO	$+2
$0042	$2846			GOTO	$+4
$0043	$0BFA			DECFSZ	STACK_10, F
$0044	$2843			GOTO	$-1
$0045	$2840			GOTO	$-5
$0046	$302B			MOVLW	43
$0047	$00FA			MOVWF	STACK_10
$0048	$0BFA			DECFSZ	STACK_10, F
$0049	$2848			GOTO	$-1
$004A	$0000			NOP
$004B	$0000			NOP
$004C	$0000			NOP
;SecondProject.pbas,9 :: 		goto run
$004D	$2807			GOTO	_main_run
$004E	$284E			GOTO	$
