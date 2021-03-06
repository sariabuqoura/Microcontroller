;  Assembly code generated by mikroVirtualMachine - V. 5.0.0.3
;  Date/Time: 03/19/16 3:50:37 PM
;  Info: http://www.mikroe.com


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$2B01			GOTO	_main
$0004	$	_delay_1us:
;delays.pbas,5 :: 		sub procedure Delay_1us()
;delays.pbas,6 :: 		Delay_us(1)
$0004	$0000			NOP
$0005	$0000			NOP
$0006	$	delays_L_0:
$0006	$0008			RETURN
$0007	$	_delay_5500us:
;delays.pbas,29 :: 		sub procedure Delay_5500us()
;delays.pbas,30 :: 		Delay_us(5500)
$0007	$300F			MOVLW	15
$0008	$1303			BCF	STATUS, RP1
$0009	$1283			BCF	STATUS, RP0
$000A	$00FB			MOVWF	STACK_11
$000B	$30FF			MOVLW	255
$000C	$00FA			MOVWF	STACK_10
$000D	$0BFB			DECFSZ	STACK_11, F
$000E	$2810			GOTO	$+2
$000F	$2813			GOTO	$+4
$0010	$0BFA			DECFSZ	STACK_10, F
$0011	$2810			GOTO	$-1
$0012	$280D			GOTO	$-5
$0013	$303E			MOVLW	62
$0014	$00FA			MOVWF	STACK_10
$0015	$0BFA			DECFSZ	STACK_10, F
$0016	$2815			GOTO	$-1
$0017	$0000			NOP
$0018	$	delays_L_6:
$0018	$0008			RETURN
$0019	$	_delay_50us:
;delays.pbas,17 :: 		sub procedure Delay_50us()
;delays.pbas,18 :: 		Delay_us(50)
$0019	$3021			MOVLW	33
$001A	$1303			BCF	STATUS, RP1
$001B	$1283			BCF	STATUS, RP0
$001C	$00FA			MOVWF	STACK_10
$001D	$0BFA			DECFSZ	STACK_10, F
$001E	$281D			GOTO	$-1
$001F	$	delays_L_3:
$001F	$0008			RETURN
$0020	$	_lcd_cmd:
;__Lib_Lcd.ppas,19 :: 		
;__Lib_Lcd.ppas,20 :: 		
$0020	$1303			BCF	STATUS, RP1
$0021	$1283			BCF	STATUS, RP0
$0022	$0820			MOVF	__lib_lcd_ctrlport_address, 0
$0023	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,22 :: 		
$0024	$0921			COMF	__lib_lcd____menable, W
$0025	$00F0			MOVWF	STACK_0
$0026	$0870			MOVF	STACK_0, 0
$0027	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,23 :: 		
$0028	$0922			COMF	__lib_lcd____mrs, W
$0029	$00F0			MOVWF	STACK_0
$002A	$0870			MOVF	STACK_0, 0
$002B	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,25 :: 		
$002C	$0823			MOVF	__lib_lcd_dataport_address, 0
$002D	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,26 :: 		
$002E	$0825			MOVF	__lib_lcd____mdb6, 0
$002F	$0424			IORWF	__lib_lcd____mdb7, 0
$0030	$00F0			MOVWF	STACK_0
$0031	$0826			MOVF	__lib_lcd____mdb5, 0
$0032	$04F0			IORWF	STACK_0, 1
$0033	$0827			MOVF	__lib_lcd____mdb4, 0
$0034	$04F0			IORWF	STACK_0, 1
$0035	$09F0			COMF	STACK_0, F
$0036	$0870			MOVF	STACK_0, 0
$0037	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,28 :: 		
$0038	$3000			MOVLW	0
$0039	$1BBF			BTFSC	FARG_Lcd_Cmd, 7
$003A	$3001			MOVLW	1
$003B	$00F1			MOVWF	STACK_1
$003C	$0871			MOVF	STACK_1, 0
$003D	$3A01			XORLW	1
$003E	$1D03			BTFSS	STATUS, Z
$003F	$2842			GOTO	__Lib_Lcd_L_2
$0040	$	__Lib_Lcd_L_1:
;__Lib_Lcd.ppas,29 :: 		
$0040	$0824			MOVF	__lib_lcd____mdb7, 0
$0041	$0480			IORWF	INDF, 1
$0042	$	__Lib_Lcd_L_2:
$0042	$	__Lib_Lcd_L_3:
;__Lib_Lcd.ppas,30 :: 		
$0042	$3000			MOVLW	0
$0043	$1B3F			BTFSC	FARG_Lcd_Cmd, 6
$0044	$3001			MOVLW	1
$0045	$00F1			MOVWF	STACK_1
$0046	$0871			MOVF	STACK_1, 0
$0047	$3A01			XORLW	1
$0048	$1D03			BTFSS	STATUS, Z
$0049	$284C			GOTO	__Lib_Lcd_L_5
$004A	$	__Lib_Lcd_L_4:
;__Lib_Lcd.ppas,31 :: 		
$004A	$0825			MOVF	__lib_lcd____mdb6, 0
$004B	$0480			IORWF	INDF, 1
$004C	$	__Lib_Lcd_L_5:
$004C	$	__Lib_Lcd_L_6:
;__Lib_Lcd.ppas,32 :: 		
$004C	$3000			MOVLW	0
$004D	$1ABF			BTFSC	FARG_Lcd_Cmd, 5
$004E	$3001			MOVLW	1
$004F	$00F1			MOVWF	STACK_1
$0050	$0871			MOVF	STACK_1, 0
$0051	$3A01			XORLW	1
$0052	$1D03			BTFSS	STATUS, Z
$0053	$2856			GOTO	__Lib_Lcd_L_8
$0054	$	__Lib_Lcd_L_7:
;__Lib_Lcd.ppas,33 :: 		
$0054	$0826			MOVF	__lib_lcd____mdb5, 0
$0055	$0480			IORWF	INDF, 1
$0056	$	__Lib_Lcd_L_8:
$0056	$	__Lib_Lcd_L_9:
;__Lib_Lcd.ppas,34 :: 		
$0056	$3000			MOVLW	0
$0057	$1A3F			BTFSC	FARG_Lcd_Cmd, 4
$0058	$3001			MOVLW	1
$0059	$00F1			MOVWF	STACK_1
$005A	$0871			MOVF	STACK_1, 0
$005B	$3A01			XORLW	1
$005C	$1D03			BTFSS	STATUS, Z
$005D	$2860			GOTO	__Lib_Lcd_L_11
$005E	$	__Lib_Lcd_L_10:
;__Lib_Lcd.ppas,35 :: 		
$005E	$0827			MOVF	__lib_lcd____mdb4, 0
$005F	$0480			IORWF	INDF, 1
$0060	$	__Lib_Lcd_L_11:
$0060	$	__Lib_Lcd_L_12:
;__Lib_Lcd.ppas,37 :: 		
$0060	$0820			MOVF	__lib_lcd_ctrlport_address, 0
$0061	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,38 :: 		
$0062	$0828			MOVF	__lib_lcd_lcdcmd_status, 0
$0063	$3A01			XORLW	1
$0064	$1D03			BTFSS	STATUS, Z
$0065	$286B			GOTO	__Lib_Lcd_L_14
$0066	$	__Lib_Lcd_L_13:
;__Lib_Lcd.ppas,39 :: 		
$0066	$0922			COMF	__lib_lcd____mrs, W
$0067	$00F0			MOVWF	STACK_0
$0068	$0870			MOVF	STACK_0, 0
$0069	$0580			ANDWF	INDF, 1
$006A	$286D			GOTO	__Lib_Lcd_L_15
;__Lib_Lcd.ppas,40 :: 		
$006B	$	__Lib_Lcd_L_14:
;__Lib_Lcd.ppas,41 :: 		
$006B	$0822			MOVF	__lib_lcd____mrs, 0
$006C	$0480			IORWF	INDF, 1
$006D	$	__Lib_Lcd_L_15:
;__Lib_Lcd.ppas,43 :: 		
$006D	$0821			MOVF	__lib_lcd____menable, 0
$006E	$0480			IORWF	INDF, 1
;__Lib_Lcd.ppas,44 :: 		
$006F	$2004			CALL	_delay_1us
;__Lib_Lcd.ppas,45 :: 		
$0070	$0921			COMF	__lib_lcd____menable, W
$0071	$00F0			MOVWF	STACK_0
$0072	$0870			MOVF	STACK_0, 0
$0073	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,47 :: 		
$0074	$0922			COMF	__lib_lcd____mrs, W
$0075	$00F0			MOVWF	STACK_0
$0076	$0870			MOVF	STACK_0, 0
$0077	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,49 :: 		
$0078	$0823			MOVF	__lib_lcd_dataport_address, 0
$0079	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,50 :: 		
$007A	$0825			MOVF	__lib_lcd____mdb6, 0
$007B	$0424			IORWF	__lib_lcd____mdb7, 0
$007C	$00F0			MOVWF	STACK_0
$007D	$0826			MOVF	__lib_lcd____mdb5, 0
$007E	$04F0			IORWF	STACK_0, 1
$007F	$0827			MOVF	__lib_lcd____mdb4, 0
$0080	$04F0			IORWF	STACK_0, 1
$0081	$09F0			COMF	STACK_0, F
$0082	$0870			MOVF	STACK_0, 0
$0083	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,52 :: 		
$0084	$3000			MOVLW	0
$0085	$19BF			BTFSC	FARG_Lcd_Cmd, 3
$0086	$3001			MOVLW	1
$0087	$00F1			MOVWF	STACK_1
$0088	$0871			MOVF	STACK_1, 0
$0089	$3A01			XORLW	1
$008A	$1D03			BTFSS	STATUS, Z
$008B	$288E			GOTO	__Lib_Lcd_L_17
$008C	$	__Lib_Lcd_L_16:
;__Lib_Lcd.ppas,53 :: 		
$008C	$0824			MOVF	__lib_lcd____mdb7, 0
$008D	$0480			IORWF	INDF, 1
$008E	$	__Lib_Lcd_L_17:
$008E	$	__Lib_Lcd_L_18:
;__Lib_Lcd.ppas,54 :: 		
$008E	$3000			MOVLW	0
$008F	$193F			BTFSC	FARG_Lcd_Cmd, 2
$0090	$3001			MOVLW	1
$0091	$00F1			MOVWF	STACK_1
$0092	$0871			MOVF	STACK_1, 0
$0093	$3A01			XORLW	1
$0094	$1D03			BTFSS	STATUS, Z
$0095	$2898			GOTO	__Lib_Lcd_L_20
$0096	$	__Lib_Lcd_L_19:
;__Lib_Lcd.ppas,55 :: 		
$0096	$0825			MOVF	__lib_lcd____mdb6, 0
$0097	$0480			IORWF	INDF, 1
$0098	$	__Lib_Lcd_L_20:
$0098	$	__Lib_Lcd_L_21:
;__Lib_Lcd.ppas,56 :: 		
$0098	$3000			MOVLW	0
$0099	$18BF			BTFSC	FARG_Lcd_Cmd, 1
$009A	$3001			MOVLW	1
$009B	$00F1			MOVWF	STACK_1
$009C	$0871			MOVF	STACK_1, 0
$009D	$3A01			XORLW	1
$009E	$1D03			BTFSS	STATUS, Z
$009F	$28A2			GOTO	__Lib_Lcd_L_23
$00A0	$	__Lib_Lcd_L_22:
;__Lib_Lcd.ppas,57 :: 		
$00A0	$0826			MOVF	__lib_lcd____mdb5, 0
$00A1	$0480			IORWF	INDF, 1
$00A2	$	__Lib_Lcd_L_23:
$00A2	$	__Lib_Lcd_L_24:
;__Lib_Lcd.ppas,58 :: 		
$00A2	$3001			MOVLW	1
$00A3	$053F			ANDWF	FARG_Lcd_Cmd, 0
$00A4	$00F1			MOVWF	STACK_1
$00A5	$0871			MOVF	STACK_1, 0
$00A6	$3A01			XORLW	1
$00A7	$1D03			BTFSS	STATUS, Z
$00A8	$28AB			GOTO	__Lib_Lcd_L_26
$00A9	$	__Lib_Lcd_L_25:
;__Lib_Lcd.ppas,59 :: 		
$00A9	$0827			MOVF	__lib_lcd____mdb4, 0
$00AA	$0480			IORWF	INDF, 1
$00AB	$	__Lib_Lcd_L_26:
$00AB	$	__Lib_Lcd_L_27:
;__Lib_Lcd.ppas,61 :: 		
$00AB	$0820			MOVF	__lib_lcd_ctrlport_address, 0
$00AC	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,62 :: 		
$00AD	$0828			MOVF	__lib_lcd_lcdcmd_status, 0
$00AE	$3A01			XORLW	1
$00AF	$1D03			BTFSS	STATUS, Z
$00B0	$28B6			GOTO	__Lib_Lcd_L_29
$00B1	$	__Lib_Lcd_L_28:
;__Lib_Lcd.ppas,63 :: 		
$00B1	$0922			COMF	__lib_lcd____mrs, W
$00B2	$00F0			MOVWF	STACK_0
$00B3	$0870			MOVF	STACK_0, 0
$00B4	$0580			ANDWF	INDF, 1
$00B5	$28B8			GOTO	__Lib_Lcd_L_30
;__Lib_Lcd.ppas,64 :: 		
$00B6	$	__Lib_Lcd_L_29:
;__Lib_Lcd.ppas,65 :: 		
$00B6	$0822			MOVF	__lib_lcd____mrs, 0
$00B7	$0480			IORWF	INDF, 1
$00B8	$	__Lib_Lcd_L_30:
;__Lib_Lcd.ppas,67 :: 		
$00B8	$0821			MOVF	__lib_lcd____menable, 0
$00B9	$0480			IORWF	INDF, 1
;__Lib_Lcd.ppas,68 :: 		
$00BA	$2004			CALL	_delay_1us
;__Lib_Lcd.ppas,69 :: 		
$00BB	$0921			COMF	__lib_lcd____menable, W
$00BC	$00F0			MOVWF	STACK_0
$00BD	$0870			MOVF	STACK_0, 0
$00BE	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,71 :: 		
$00BF	$0828			MOVF	__lib_lcd_lcdcmd_status, 0
$00C0	$3A01			XORLW	1
$00C1	$1D03			BTFSS	STATUS, Z
$00C2	$28C5			GOTO	__Lib_Lcd_L_32
$00C3	$	__Lib_Lcd_L_31:
;__Lib_Lcd.ppas,72 :: 		
$00C3	$2007			CALL	_delay_5500us
$00C4	$28C6			GOTO	__Lib_Lcd_L_33
;__Lib_Lcd.ppas,73 :: 		
$00C5	$	__Lib_Lcd_L_32:
;__Lib_Lcd.ppas,74 :: 		
$00C5	$2019			CALL	_delay_50us
$00C6	$	__Lib_Lcd_L_33:
$00C6	$	__Lib_Lcd_L_0:
;__Lib_Lcd.ppas,75 :: 		
$00C6	$0008			RETURN
$00C7	$	_lcd_config:
;__Lib_Lcd.ppas,115 :: 		
;__Lib_Lcd.ppas,116 :: 		
$00C7	$2007			CALL	_delay_5500us
;__Lib_Lcd.ppas,117 :: 		
$00C8	$2007			CALL	_delay_5500us
;__Lib_Lcd.ppas,118 :: 		
$00C9	$2007			CALL	_delay_5500us
;__Lib_Lcd.ppas,120 :: 		
$00CA	$0837			MOVF	FARG_Lcd_Config+1, 0
$00CB	$00F0			MOVWF	STACK_0
$00CC	$3001			MOVLW	1
$00CD	$00F4			MOVWF	STACK_4
$00CE	$0870			MOVF	STACK_0, 0
$00CF	$	L_Lcd_Config_0:
$00CF	$1903			BTFSC	STATUS, Z
$00D0	$28D5			GOTO	L_Lcd_Config_1
$00D1	$0DF4			RLF	STACK_4, 1
$00D2	$1074			BCF	STACK_4, 0
$00D3	$3FFF			ADDLW	255
$00D4	$28CF			GOTO	L_Lcd_Config_0
$00D5	$	L_Lcd_Config_1:
$00D5	$0874			MOVF	STACK_4, 0
$00D6	$00A4			MOVWF	__lib_lcd____mdb7
;__Lib_Lcd.ppas,121 :: 		
$00D7	$0838			MOVF	FARG_Lcd_Config+2, 0
$00D8	$00F0			MOVWF	STACK_0
$00D9	$3001			MOVLW	1
$00DA	$00F3			MOVWF	STACK_3
$00DB	$0870			MOVF	STACK_0, 0
$00DC	$	L_Lcd_Config_2:
$00DC	$1903			BTFSC	STATUS, Z
$00DD	$28E2			GOTO	L_Lcd_Config_3
$00DE	$0DF3			RLF	STACK_3, 1
$00DF	$1073			BCF	STACK_3, 0
$00E0	$3FFF			ADDLW	255
$00E1	$28DC			GOTO	L_Lcd_Config_2
$00E2	$	L_Lcd_Config_3:
$00E2	$0873			MOVF	STACK_3, 0
$00E3	$00A5			MOVWF	__lib_lcd____mdb6
;__Lib_Lcd.ppas,122 :: 		
$00E4	$0839			MOVF	FARG_Lcd_Config+3, 0
$00E5	$00F0			MOVWF	STACK_0
$00E6	$3001			MOVLW	1
$00E7	$00F2			MOVWF	STACK_2
$00E8	$0870			MOVF	STACK_0, 0
$00E9	$	L_Lcd_Config_4:
$00E9	$1903			BTFSC	STATUS, Z
$00EA	$28EF			GOTO	L_Lcd_Config_5
$00EB	$0DF2			RLF	STACK_2, 1
$00EC	$1072			BCF	STACK_2, 0
$00ED	$3FFF			ADDLW	255
$00EE	$28E9			GOTO	L_Lcd_Config_4
$00EF	$	L_Lcd_Config_5:
$00EF	$0872			MOVF	STACK_2, 0
$00F0	$00A6			MOVWF	__lib_lcd____mdb5
;__Lib_Lcd.ppas,123 :: 		
$00F1	$083A			MOVF	FARG_Lcd_Config+4, 0
$00F2	$00F0			MOVWF	STACK_0
$00F3	$3001			MOVLW	1
$00F4	$00F1			MOVWF	STACK_1
$00F5	$0870			MOVF	STACK_0, 0
$00F6	$	L_Lcd_Config_6:
$00F6	$1903			BTFSC	STATUS, Z
$00F7	$28FC			GOTO	L_Lcd_Config_7
$00F8	$0DF1			RLF	STACK_1, 1
$00F9	$1071			BCF	STACK_1, 0
$00FA	$3FFF			ADDLW	255
$00FB	$28F6			GOTO	L_Lcd_Config_6
$00FC	$	L_Lcd_Config_7:
$00FC	$0871			MOVF	STACK_1, 0
$00FD	$00A7			MOVWF	__lib_lcd____mdb4
;__Lib_Lcd.ppas,124 :: 		
$00FE	$083C			MOVF	FARG_Lcd_Config+6, 0
$00FF	$00F0			MOVWF	STACK_0
$0100	$3001			MOVLW	1
$0101	$00A2			MOVWF	__lib_lcd____mrs
$0102	$0870			MOVF	STACK_0, 0
$0103	$	L_Lcd_Config_8:
$0103	$1903			BTFSC	STATUS, Z
$0104	$2909			GOTO	L_Lcd_Config_9
$0105	$0DA2			RLF	__lib_lcd____mrs, 1
$0106	$1022			BCF	__lib_lcd____mrs, 0
$0107	$3FFF			ADDLW	255
$0108	$2903			GOTO	L_Lcd_Config_8
$0109	$	L_Lcd_Config_9:
;__Lib_Lcd.ppas,125 :: 		
$0109	$083D			MOVF	FARG_Lcd_Config+7, 0
$010A	$00F0			MOVWF	STACK_0
$010B	$3001			MOVLW	1
$010C	$00A9			MOVWF	__lib_lcd____mrw
$010D	$0870			MOVF	STACK_0, 0
$010E	$	L_Lcd_Config_10:
$010E	$1903			BTFSC	STATUS, Z
$010F	$2914			GOTO	L_Lcd_Config_11
$0110	$0DA9			RLF	__lib_lcd____mrw, 1
$0111	$1029			BCF	__lib_lcd____mrw, 0
$0112	$3FFF			ADDLW	255
$0113	$290E			GOTO	L_Lcd_Config_10
$0114	$	L_Lcd_Config_11:
;__Lib_Lcd.ppas,126 :: 		
$0114	$083E			MOVF	FARG_Lcd_Config+8, 0
$0115	$00F0			MOVWF	STACK_0
$0116	$3001			MOVLW	1
$0117	$00A1			MOVWF	__lib_lcd____menable
$0118	$0870			MOVF	STACK_0, 0
$0119	$	L_Lcd_Config_12:
$0119	$1903			BTFSC	STATUS, Z
$011A	$291F			GOTO	L_Lcd_Config_13
$011B	$0DA1			RLF	__lib_lcd____menable, 1
$011C	$1021			BCF	__lib_lcd____menable, 0
$011D	$3FFF			ADDLW	255
$011E	$2919			GOTO	L_Lcd_Config_12
$011F	$	L_Lcd_Config_13:
;__Lib_Lcd.ppas,128 :: 		
$011F	$0836			MOVF	FARG_Lcd_Config, 0
$0120	$00A3			MOVWF	__lib_lcd_dataport_address
;__Lib_Lcd.ppas,129 :: 		
$0121	$083B			MOVF	FARG_Lcd_Config+5, 0
$0122	$00A0			MOVWF	__lib_lcd_ctrlport_address
;__Lib_Lcd.ppas,131 :: 		
$0123	$0836			MOVF	FARG_Lcd_Config, 0
$0124	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,133 :: 		
$0125	$0873			MOVF	STACK_3, 0
$0126	$0474			IORWF	STACK_4, 0
$0127	$00F0			MOVWF	STACK_0
$0128	$0872			MOVF	STACK_2, 0
$0129	$04F0			IORWF	STACK_0, 1
$012A	$0871			MOVF	STACK_1, 0
$012B	$04F0			IORWF	STACK_0, 1
$012C	$09F0			COMF	STACK_0, F
$012D	$0870			MOVF	STACK_0, 0
$012E	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,134 :: 		
$012F	$	__Lib_Lcd_L_56:
$012F	$1784			BSF	FSR, 7
$0130	$	__Lib_Lcd_L_57:
;__Lib_Lcd.ppas,135 :: 		
$0130	$0825			MOVF	__lib_lcd____mdb6, 0
$0131	$0424			IORWF	__lib_lcd____mdb7, 0
$0132	$00F0			MOVWF	STACK_0
$0133	$0826			MOVF	__lib_lcd____mdb5, 0
$0134	$04F0			IORWF	STACK_0, 1
$0135	$0827			MOVF	__lib_lcd____mdb4, 0
$0136	$04F0			IORWF	STACK_0, 1
$0137	$09F0			COMF	STACK_0, F
$0138	$0870			MOVF	STACK_0, 0
$0139	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,136 :: 		
$013A	$1384			BCF	FSR, 7
$013B	$	__Lib_Lcd_L_59:
;__Lib_Lcd.ppas,139 :: 		
$013B	$0820			MOVF	__lib_lcd_ctrlport_address, 0
$013C	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,141 :: 		
$013D	$0829			MOVF	__lib_lcd____mrw, 0
$013E	$0422			IORWF	__lib_lcd____mrs, 0
$013F	$00F0			MOVWF	STACK_0
$0140	$0821			MOVF	__lib_lcd____menable, 0
$0141	$04F0			IORWF	STACK_0, 1
$0142	$09F0			COMF	STACK_0, F
$0143	$0870			MOVF	STACK_0, 0
$0144	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,142 :: 		
$0145	$	__Lib_Lcd_L_60:
$0145	$1784			BSF	FSR, 7
$0146	$	__Lib_Lcd_L_61:
;__Lib_Lcd.ppas,143 :: 		
$0146	$0829			MOVF	__lib_lcd____mrw, 0
$0147	$0422			IORWF	__lib_lcd____mrs, 0
$0148	$00F0			MOVWF	STACK_0
$0149	$0821			MOVF	__lib_lcd____menable, 0
$014A	$04F0			IORWF	STACK_0, 1
$014B	$09F0			COMF	STACK_0, F
$014C	$0870			MOVF	STACK_0, 0
$014D	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,144 :: 		
$014E	$1384			BCF	FSR, 7
$014F	$	__Lib_Lcd_L_63:
;__Lib_Lcd.ppas,148 :: 		
$014F	$0823			MOVF	__lib_lcd_dataport_address, 0
$0150	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,149 :: 		
$0151	$0826			MOVF	__lib_lcd____mdb5, 0
$0152	$0400			IORWF	INDF, 0
$0153	$00F0			MOVWF	STACK_0
$0154	$0827			MOVF	__lib_lcd____mdb4, 0
$0155	$0470			IORWF	STACK_0, 0
$0156	$0080			MOVWF	INDF
;__Lib_Lcd.ppas,151 :: 		
$0157	$0820			MOVF	__lib_lcd_ctrlport_address, 0
$0158	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,152 :: 		
$0159	$0821			MOVF	__lib_lcd____menable, 0
$015A	$0480			IORWF	INDF, 1
;__Lib_Lcd.ppas,153 :: 		
$015B	$0921			COMF	__lib_lcd____menable, W
$015C	$00F0			MOVWF	STACK_0
$015D	$0870			MOVF	STACK_0, 0
$015E	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,155 :: 		
$015F	$2007			CALL	_delay_5500us
;__Lib_Lcd.ppas,160 :: 		
$0160	$0821			MOVF	__lib_lcd____menable, 0
$0161	$0480			IORWF	INDF, 1
;__Lib_Lcd.ppas,161 :: 		
$0162	$0921			COMF	__lib_lcd____menable, W
$0163	$00F0			MOVWF	STACK_0
$0164	$0870			MOVF	STACK_0, 0
$0165	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,163 :: 		
$0166	$2007			CALL	_delay_5500us
;__Lib_Lcd.ppas,168 :: 		
$0167	$0821			MOVF	__lib_lcd____menable, 0
$0168	$0480			IORWF	INDF, 1
;__Lib_Lcd.ppas,169 :: 		
$0169	$0921			COMF	__lib_lcd____menable, W
$016A	$00F0			MOVWF	STACK_0
$016B	$0870			MOVF	STACK_0, 0
$016C	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,171 :: 		
$016D	$2007			CALL	_delay_5500us
;__Lib_Lcd.ppas,174 :: 		
$016E	$0823			MOVF	__lib_lcd_dataport_address, 0
$016F	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,175 :: 		
$0170	$0826			MOVF	__lib_lcd____mdb5, 0
$0171	$0480			IORWF	INDF, 1
;__Lib_Lcd.ppas,176 :: 		
$0172	$0927			COMF	__lib_lcd____mdb4, W
$0173	$00F0			MOVWF	STACK_0
$0174	$0870			MOVF	STACK_0, 0
$0175	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,178 :: 		
$0176	$0820			MOVF	__lib_lcd_ctrlport_address, 0
$0177	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,179 :: 		
$0178	$0821			MOVF	__lib_lcd____menable, 0
$0179	$0480			IORWF	INDF, 1
;__Lib_Lcd.ppas,180 :: 		
$017A	$0921			COMF	__lib_lcd____menable, W
$017B	$00F0			MOVWF	STACK_0
$017C	$0870			MOVF	STACK_0, 0
$017D	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,182 :: 		
$017E	$2007			CALL	_delay_5500us
;__Lib_Lcd.ppas,187 :: 		
$017F	$0821			MOVF	__lib_lcd____menable, 0
$0180	$0480			IORWF	INDF, 1
;__Lib_Lcd.ppas,188 :: 		
$0181	$0921			COMF	__lib_lcd____menable, W
$0182	$00F1			MOVWF	STACK_1
$0183	$0871			MOVF	STACK_1, 0
$0184	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,190 :: 		
$0185	$0823			MOVF	__lib_lcd_dataport_address, 0
$0186	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,191 :: 		
$0187	$0926			COMF	__lib_lcd____mdb5, W
$0188	$00F0			MOVWF	STACK_0
$0189	$0870			MOVF	STACK_0, 0
$018A	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,192 :: 		
$018B	$0824			MOVF	__lib_lcd____mdb7, 0
$018C	$0480			IORWF	INDF, 1
;__Lib_Lcd.ppas,194 :: 		
$018D	$0820			MOVF	__lib_lcd_ctrlport_address, 0
$018E	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,195 :: 		
$018F	$0821			MOVF	__lib_lcd____menable, 0
$0190	$0480			IORWF	INDF, 1
;__Lib_Lcd.ppas,196 :: 		
$0191	$0871			MOVF	STACK_1, 0
$0192	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,198 :: 		
$0193	$2007			CALL	_delay_5500us
;__Lib_Lcd.ppas,201 :: 		
$0194	$0823			MOVF	__lib_lcd_dataport_address, 0
$0195	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,202 :: 		
$0196	$0924			COMF	__lib_lcd____mdb7, W
$0197	$00F0			MOVWF	STACK_0
$0198	$0870			MOVF	STACK_0, 0
$0199	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,203 :: 		
$019A	$0827			MOVF	__lib_lcd____mdb4, 0
$019B	$0480			IORWF	INDF, 1
;__Lib_Lcd.ppas,204 :: 		
$019C	$0820			MOVF	__lib_lcd_ctrlport_address, 0
$019D	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,205 :: 		
$019E	$0821			MOVF	__lib_lcd____menable, 0
$019F	$0480			IORWF	INDF, 1
;__Lib_Lcd.ppas,206 :: 		
$01A0	$0921			COMF	__lib_lcd____menable, W
$01A1	$00F1			MOVWF	STACK_1
$01A2	$0871			MOVF	STACK_1, 0
$01A3	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,207 :: 		
$01A4	$0823			MOVF	__lib_lcd_dataport_address, 0
$01A5	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,208 :: 		
$01A6	$0927			COMF	__lib_lcd____mdb4, W
$01A7	$00F0			MOVWF	STACK_0
$01A8	$0870			MOVF	STACK_0, 0
$01A9	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,209 :: 		
$01AA	$0820			MOVF	__lib_lcd_ctrlport_address, 0
$01AB	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,210 :: 		
$01AC	$0821			MOVF	__lib_lcd____menable, 0
$01AD	$0480			IORWF	INDF, 1
;__Lib_Lcd.ppas,211 :: 		
$01AE	$0871			MOVF	STACK_1, 0
$01AF	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,213 :: 		
$01B0	$2007			CALL	_delay_5500us
;__Lib_Lcd.ppas,218 :: 		
$01B1	$0821			MOVF	__lib_lcd____menable, 0
$01B2	$0480			IORWF	INDF, 1
;__Lib_Lcd.ppas,219 :: 		
$01B3	$0921			COMF	__lib_lcd____menable, W
$01B4	$00F0			MOVWF	STACK_0
$01B5	$0870			MOVF	STACK_0, 0
$01B6	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,220 :: 		
$01B7	$0823			MOVF	__lib_lcd_dataport_address, 0
$01B8	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,221 :: 		
$01B9	$0827			MOVF	__lib_lcd____mdb4, 0
$01BA	$0480			IORWF	INDF, 1
;__Lib_Lcd.ppas,222 :: 		
$01BB	$0820			MOVF	__lib_lcd_ctrlport_address, 0
$01BC	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,223 :: 		
$01BD	$0821			MOVF	__lib_lcd____menable, 0
$01BE	$0480			IORWF	INDF, 1
;__Lib_Lcd.ppas,224 :: 		
$01BF	$0870			MOVF	STACK_0, 0
$01C0	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,226 :: 		
$01C1	$2007			CALL	_delay_5500us
;__Lib_Lcd.ppas,229 :: 		
$01C2	$0823			MOVF	__lib_lcd_dataport_address, 0
$01C3	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,230 :: 		
$01C4	$0927			COMF	__lib_lcd____mdb4, W
$01C5	$00F0			MOVWF	STACK_0
$01C6	$0870			MOVF	STACK_0, 0
$01C7	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,231 :: 		
$01C8	$0820			MOVF	__lib_lcd_ctrlport_address, 0
$01C9	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,232 :: 		
$01CA	$0821			MOVF	__lib_lcd____menable, 0
$01CB	$0480			IORWF	INDF, 1
;__Lib_Lcd.ppas,233 :: 		
$01CC	$0921			COMF	__lib_lcd____menable, W
$01CD	$00F1			MOVWF	STACK_1
$01CE	$0871			MOVF	STACK_1, 0
$01CF	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,234 :: 		
$01D0	$0823			MOVF	__lib_lcd_dataport_address, 0
$01D1	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,235 :: 		
$01D2	$0827			MOVF	__lib_lcd____mdb4, 0
$01D3	$0400			IORWF	INDF, 0
$01D4	$00F0			MOVWF	STACK_0
$01D5	$0826			MOVF	__lib_lcd____mdb5, 0
$01D6	$04F0			IORWF	STACK_0, 1
$01D7	$0825			MOVF	__lib_lcd____mdb6, 0
$01D8	$04F0			IORWF	STACK_0, 1
$01D9	$0824			MOVF	__lib_lcd____mdb7, 0
$01DA	$0470			IORWF	STACK_0, 0
$01DB	$0080			MOVWF	INDF
;__Lib_Lcd.ppas,236 :: 		
$01DC	$0820			MOVF	__lib_lcd_ctrlport_address, 0
$01DD	$0084			MOVWF	FSR
;__Lib_Lcd.ppas,237 :: 		
$01DE	$0821			MOVF	__lib_lcd____menable, 0
$01DF	$0480			IORWF	INDF, 1
;__Lib_Lcd.ppas,238 :: 		
$01E0	$0871			MOVF	STACK_1, 0
$01E1	$0580			ANDWF	INDF, 1
;__Lib_Lcd.ppas,240 :: 		
$01E2	$2007			CALL	_delay_5500us
;__Lib_Lcd.ppas,242 :: 		
$01E3	$3001			MOVLW	1
$01E4	$00A8			MOVWF	__lib_lcd_lcdcmd_status
$01E5	$	__Lib_Lcd_L_55:
;__Lib_Lcd.ppas,243 :: 		
$01E5	$0008			RETURN
$01E6	$	_delay_22us:
;delays.pbas,13 :: 		sub procedure Delay_22us()
;delays.pbas,14 :: 		Delay_us(22)
$01E6	$300E			MOVLW	14
$01E7	$1303			BCF	STATUS, RP1
$01E8	$1283			BCF	STATUS, RP0
$01E9	$00FA			MOVWF	STACK_10
$01EA	$0BFA			DECFSZ	STACK_10, F
$01EB	$29EA			GOTO	$-1
$01EC	$0000			NOP
$01ED	$	delays_L_2:
$01ED	$0008			RETURN
$01EE	$	_div_16x16_u:
$01EE	$1303			BCF	STATUS, RP1
$01EF	$1283			BCF	STATUS, RP0
;Math.ppas,108 :: 		
;Math.ppas,110 :: 		
$01F0	$01F8			CLRF	STACK_8
;Math.ppas,111 :: 		
$01F1	$01F9			CLRF	STACK_9
;Math.ppas,112 :: 		
$01F2	$3010			MOVLW	16
;Math.ppas,113 :: 		
$01F3	$00FC			MOVWF	STACK_12
;Math.ppas,114 :: 		
$01F4	$0D71			RLF	STACK_1, W
;Math.ppas,115 :: 		
$01F5	$0DF8			RLF	STACK_8, F
;Math.ppas,116 :: 		
$01F6	$0DF9			RLF	STACK_9, F
;Math.ppas,117 :: 		
$01F7	$0874			MOVF	STACK_4, W
;Math.ppas,118 :: 		
$01F8	$02F8			SUBWF	STACK_8, F
;Math.ppas,119 :: 		
$01F9	$0875			MOVF	STACK_5, W
;Math.ppas,120 :: 		
$01FA	$1C03			BTFSS	STATUS, C
;Math.ppas,121 :: 		
$01FB	$0F75			INCFSZ	STACK_5, W
;Math.ppas,122 :: 		
$01FC	$02F9			SUBWF	STACK_9, F
;Math.ppas,123 :: 		
$01FD	$1803			BTFSC	STATUS, C
;Math.ppas,124 :: 		
$01FE	$2A06			GOTO	$+8
;Math.ppas,125 :: 		
$01FF	$0874			MOVF	STACK_4, W
;Math.ppas,126 :: 		
$0200	$07F8			ADDWF	STACK_8, F
;Math.ppas,127 :: 		
$0201	$0875			MOVF	STACK_5, W
;Math.ppas,128 :: 		
$0202	$1803			BTFSC	STATUS, C
;Math.ppas,129 :: 		
$0203	$0F75			INCFSZ	STACK_5, W
;Math.ppas,130 :: 		
$0204	$07F9			ADDWF	STACK_9, F
;Math.ppas,131 :: 		
$0205	$1003			BCF	STATUS, C
;Math.ppas,132 :: 		
$0206	$0DF0			RLF	STACK_0, F
;Math.ppas,133 :: 		
$0207	$0DF1			RLF	STACK_1, F
;Math.ppas,134 :: 		
$0208	$0BFC			DECFSZ	STACK_12, F
;Math.ppas,135 :: 		
$0209	$29F4			GOTO	$-21
;Math.ppas,136 :: 		
$020A	$	Math_L_3:
;Math.ppas,137 :: 		
$020A	$0008			RETURN
$020B	$	_lcd_chr_cp:
;__Lib_Lcd.ppas,97 :: 		
;__Lib_Lcd.ppas,98 :: 		
$020B	$1303			BCF	STATUS, RP1
$020C	$1283			BCF	STATUS, RP0
$020D	$01A8			CLRF	__lib_lcd_lcdcmd_status, 1
;__Lib_Lcd.ppas,99 :: 		
$020E	$0836			MOVF	FARG_Lcd_Chr_CP, 0
$020F	$00BF			MOVWF	FARG_Lcd_Cmd
$0210	$2020			CALL	_lcd_cmd
;__Lib_Lcd.ppas,100 :: 		
$0211	$3001			MOVLW	1
$0212	$00A8			MOVWF	__lib_lcd_lcdcmd_status
$0213	$	__Lib_Lcd_L_48:
;__Lib_Lcd.ppas,101 :: 		
$0213	$0008			RETURN
$0214	$	_lcd_init:
;__Lib_Lcd.ppas,246 :: 		
;__Lib_Lcd.ppas,247 :: 		
$0214	$1303			BCF	STATUS, RP1
$0215	$1283			BCF	STATUS, RP0
$0216	$0832			MOVF	FARG_Lcd_Init, 0
$0217	$00B6			MOVWF	FARG_Lcd_Config
$0218	$3007			MOVLW	7
$0219	$00B7			MOVWF	FARG_Lcd_Config+1
$021A	$3006			MOVLW	6
$021B	$00B8			MOVWF	FARG_Lcd_Config+2
$021C	$3005			MOVLW	5
$021D	$00B9			MOVWF	FARG_Lcd_Config+3
$021E	$3004			MOVLW	4
$021F	$00BA			MOVWF	FARG_Lcd_Config+4
$0220	$0832			MOVF	FARG_Lcd_Init, 0
$0221	$00BB			MOVWF	FARG_Lcd_Config+5
$0222	$3002			MOVLW	2
$0223	$00BC			MOVWF	FARG_Lcd_Config+6
$0224	$01BD			CLRF	FARG_Lcd_Config+7, 1
$0225	$3003			MOVLW	3
$0226	$00BE			MOVWF	FARG_Lcd_Config+8
$0227	$20C7			CALL	_lcd_config
$0228	$	__Lib_Lcd_L_64:
;__Lib_Lcd.ppas,248 :: 		
$0228	$0008			RETURN
$0229	$	_adc_read:
;ADClib_A_C.ppas,12 :: 		
;ADClib_A_C.ppas,13 :: 		
$0229	$1303			BCF	STATUS, RP1
$022A	$1283			BCF	STATUS, RP0
$022B	$019F			CLRF	ADCON0, 1
;ADClib_A_C.ppas,14 :: 		
$022C	$30C0			MOVLW	192
$022D	$049F			IORWF	ADCON0, 1
;ADClib_A_C.ppas,15 :: 		
$022E	$3040			MOVLW	64
$022F	$1683			BSF	STATUS, RP0
$0230	$041F			IORWF	ADCON1, 0
$0231	$00F0			MOVWF	STACK_0
$0232	$0870			MOVF	STACK_0, 0
$0233	$009F			MOVWF	ADCON1
;ADClib_A_C.ppas,17 :: 		
$0234	$3080			MOVLW	128
$0235	$0470			IORWF	STACK_0, 0
$0236	$009F			MOVWF	ADCON1
;ADClib_A_C.ppas,18 :: 		
$0237	$1283			BCF	STATUS, RP0
$0238	$0832			MOVF	FARG_ADC_read, 0
$0239	$00F0			MOVWF	STACK_0
$023A	$0DF0			RLF	STACK_0, 1
$023B	$1070			BCF	STACK_0, 0
$023C	$0DF0			RLF	STACK_0, 1
$023D	$1070			BCF	STACK_0, 0
$023E	$0DF0			RLF	STACK_0, 1
$023F	$1070			BCF	STACK_0, 0
$0240	$0870			MOVF	STACK_0, 0
$0241	$049F			IORWF	ADCON0, 1
;ADClib_A_C.ppas,19 :: 		
$0242	$141F			BSF	ADCON0, 0
;ADClib_A_C.ppas,20 :: 		
$0243	$21E6			CALL	_delay_22us
;ADClib_A_C.ppas,21 :: 		
$0244	$151F			BSF	ADCON0, 2
;ADClib_A_C.ppas,22 :: 		
$0245	$	ADClib_A_C_L_2:
$0245	$3000			MOVLW	0
$0246	$191F			BTFSC	ADCON0, 2
$0247	$3001			MOVLW	1
$0248	$00F2			MOVWF	STACK_2
$0249	$0872			MOVF	STACK_2, 0
$024A	$3A01			XORLW	1
$024B	$1D03			BTFSS	STATUS, Z
$024C	$2A4F			GOTO	ADClib_A_C_L_3
;ADClib_A_C.ppas,23 :: 		
$024D	$0000			NOP
$024E	$2A45			GOTO	ADClib_A_C_L_2
$024F	$	ADClib_A_C_L_3:
;ADClib_A_C.ppas,24 :: 		
$024F	$081E			MOVF	ADRESH, 0
$0250	$00F2			MOVWF	STACK_2
$0251	$01F3			CLRF	STACK_2+1
$0252	$0872			MOVF	STACK_2, 0
$0253	$00F3			MOVWF	STACK_2+1
$0254	$01F2			CLRF	STACK_2
$0255	$0872			MOVF	STACK_2, 0
$0256	$00B3			MOVWF	_adc_read_local_result
$0257	$0873			MOVF	STACK_2+1, 0
$0258	$00B4			MOVWF	_adc_read_local_result+1
;ADClib_A_C.ppas,25 :: 		
$0259	$1683			BSF	STATUS, RP0
$025A	$081E			MOVF	ADRESL, 0
$025B	$0472			IORWF	STACK_2, 0
$025C	$1283			BCF	STATUS, RP0
$025D	$00B3			MOVWF	_adc_read_local_result
$025E	$0873			MOVF	STACK_2+1, 0
$025F	$00B4			MOVWF	_adc_read_local_result+1
$0260	$3000			MOVLW	0
$0261	$04B4			IORWF	_adc_read_local_result+1, 1
;ADClib_A_C.ppas,26 :: 		
$0262	$101F			BCF	ADCON0, 0
$0263	$	ADClib_A_C_L_0:
;ADClib_A_C.ppas,27 :: 		
$0263	$0833			MOVF	_adc_read_local_result, 0
$0264	$00F0			MOVWF	STACK_0
$0265	$0834			MOVF	_adc_read_local_result+1, 0
$0266	$00F1			MOVWF	STACK_0+1
$0267	$0008			RETURN
$0268	$	_wordtostr:
;Conv.ppas,31 :: 		
;Conv.ppas,32 :: 		
$0268	$3001			MOVLW	1
$0269	$1303			BCF	STATUS, RP1
$026A	$1283			BCF	STATUS, RP0
$026B	$00B5			MOVWF	_wordtostr_local_len
;Conv.ppas,33 :: 		
$026C	$0833			MOVF	FARG_WordToStr+1, 0
$026D	$3C00			SUBLW	0
$026E	$1D03			BTFSS	STATUS, Z
$026F	$2A72			GOTO	L_WordToStr_0
$0270	$0832			MOVF	FARG_WordToStr, 0
$0271	$3C09			SUBLW	9
$0272	$	L_WordToStr_0:
$0272	$1803			BTFSC	STATUS, C
$0273	$2A75			GOTO	Conv_L_15
$0274	$	Conv_L_14:
;Conv.ppas,34 :: 		
$0274	$0AB5			INCF	_wordtostr_local_len, 1
$0275	$	Conv_L_15:
$0275	$	Conv_L_16:
;Conv.ppas,35 :: 		
$0275	$0833			MOVF	FARG_WordToStr+1, 0
$0276	$3C00			SUBLW	0
$0277	$1D03			BTFSS	STATUS, Z
$0278	$2A7B			GOTO	L_WordToStr_1
$0279	$0832			MOVF	FARG_WordToStr, 0
$027A	$3C63			SUBLW	99
$027B	$	L_WordToStr_1:
$027B	$1803			BTFSC	STATUS, C
$027C	$2A7E			GOTO	Conv_L_18
$027D	$	Conv_L_17:
;Conv.ppas,36 :: 		
$027D	$0AB5			INCF	_wordtostr_local_len, 1
$027E	$	Conv_L_18:
$027E	$	Conv_L_19:
;Conv.ppas,37 :: 		
$027E	$0833			MOVF	FARG_WordToStr+1, 0
$027F	$3C03			SUBLW	3
$0280	$1D03			BTFSS	STATUS, Z
$0281	$2A84			GOTO	L_WordToStr_2
$0282	$0832			MOVF	FARG_WordToStr, 0
$0283	$3CE7			SUBLW	231
$0284	$	L_WordToStr_2:
$0284	$1803			BTFSC	STATUS, C
$0285	$2A87			GOTO	Conv_L_21
$0286	$	Conv_L_20:
;Conv.ppas,38 :: 		
$0286	$0AB5			INCF	_wordtostr_local_len, 1
$0287	$	Conv_L_21:
$0287	$	Conv_L_22:
;Conv.ppas,39 :: 		
$0287	$0833			MOVF	FARG_WordToStr+1, 0
$0288	$3C27			SUBLW	39
$0289	$1D03			BTFSS	STATUS, Z
$028A	$2A8D			GOTO	L_WordToStr_3
$028B	$0832			MOVF	FARG_WordToStr, 0
$028C	$3C0F			SUBLW	15
$028D	$	L_WordToStr_3:
$028D	$1803			BTFSC	STATUS, C
$028E	$2A90			GOTO	Conv_L_24
$028F	$	Conv_L_23:
;Conv.ppas,40 :: 		
$028F	$0AB5			INCF	_wordtostr_local_len, 1
$0290	$	Conv_L_24:
$0290	$	Conv_L_25:
;Conv.ppas,41 :: 		
$0290	$0834			MOVF	FARG_WordToStr+2, 0
$0291	$0084			MOVWF	FSR
$0292	$3020			MOVLW	32
$0293	$0080			MOVWF	INDF
$0294	$0A84			INCF	FSR, 1
$0295	$0080			MOVWF	INDF
$0296	$0A84			INCF	FSR, 1
$0297	$0080			MOVWF	INDF
$0298	$0A84			INCF	FSR, 1
$0299	$0080			MOVWF	INDF
$029A	$0A84			INCF	FSR, 1
$029B	$0080			MOVWF	INDF
$029C	$0A84			INCF	FSR, 1
$029D	$0180			CLRF	INDF
;Conv.ppas,42 :: 		
$029E	$0384			DECF	FSR, 1
;Conv.ppas,43 :: 		
$029F	$	Conv_L_28:
$029F	$0835			MOVF	_wordtostr_local_len, 0
$02A0	$3C00			SUBLW	0
$02A1	$1803			BTFSC	STATUS, C
$02A2	$2AC1			GOTO	Conv_L_29
;Conv.ppas,45 :: 		
$02A3	$300A			MOVLW	10
$02A4	$00F4			MOVWF	STACK_4
$02A5	$01F5			CLRF	STACK_4+1
$02A6	$0832			MOVF	FARG_WordToStr, 0
$02A7	$00F0			MOVWF	STACK_0
$02A8	$0833			MOVF	FARG_WordToStr+1, 0
$02A9	$00F1			MOVWF	STACK_0+1
$02AA	$21EE			CALL	_div_16x16_u
$02AB	$0878			MOVF	STACK_8, 0
$02AC	$00F0			MOVWF	STACK_0
$02AD	$0879			MOVF	STACK_9, 0
$02AE	$00F1			MOVWF	STACK_1
$02AF	$3030			MOVLW	48
$02B0	$0770			ADDWF	STACK_0, 0
$02B1	$0080			MOVWF	INDF
;Conv.ppas,46 :: 		
;Conv.ppas,47 :: 		
$02B2	$0384			DECF	FSR, 1
;Conv.ppas,48 :: 		
$02B3	$300A			MOVLW	10
$02B4	$00F4			MOVWF	STACK_4
$02B5	$01F5			CLRF	STACK_4+1
$02B6	$0832			MOVF	FARG_WordToStr, 0
$02B7	$00F0			MOVWF	STACK_0
$02B8	$0833			MOVF	FARG_WordToStr+1, 0
$02B9	$00F1			MOVWF	STACK_0+1
$02BA	$21EE			CALL	_div_16x16_u
$02BB	$0870			MOVF	STACK_0, 0
$02BC	$00B2			MOVWF	FARG_WordToStr
$02BD	$0871			MOVF	STACK_0+1, 0
$02BE	$00B3			MOVWF	FARG_WordToStr+1
;Conv.ppas,49 :: 		
$02BF	$03B5			DECF	_wordtostr_local_len, 1
;Conv.ppas,50 :: 		
$02C0	$2A9F			GOTO	Conv_L_28
$02C1	$	Conv_L_29:
$02C1	$	Conv_L_13:
;Conv.ppas,51 :: 		
$02C1	$0008			RETURN
$02C2	$	_lcd_out:
;__Lib_Lcd.ppas,252 :: 		
;__Lib_Lcd.ppas,254 :: 		
$02C2	$	__Lib_Lcd_L_68:
$02C2	$1303			BCF	STATUS, RP1
$02C3	$1283			BCF	STATUS, RP0
$02C4	$0832			MOVF	FARG_Lcd_Out, 0
$02C5	$3A01			XORLW	1
$02C6	$1D03			BTFSS	STATUS, Z
$02C7	$2ACB			GOTO	__Lib_Lcd_L_69
$02C8	$	__Lib_Lcd_L_67:
$02C8	$3080			MOVLW	128
$02C9	$00B2			MOVWF	FARG_Lcd_Out
$02CA	$2AE2			GOTO	__Lib_Lcd_L_66
$02CB	$	__Lib_Lcd_L_69:
;__Lib_Lcd.ppas,255 :: 		
$02CB	$	__Lib_Lcd_L_71:
$02CB	$0832			MOVF	FARG_Lcd_Out, 0
$02CC	$3A02			XORLW	2
$02CD	$1D03			BTFSS	STATUS, Z
$02CE	$2AD2			GOTO	__Lib_Lcd_L_72
$02CF	$	__Lib_Lcd_L_70:
$02CF	$30C0			MOVLW	192
$02D0	$00B2			MOVWF	FARG_Lcd_Out
$02D1	$2AE2			GOTO	__Lib_Lcd_L_66
$02D2	$	__Lib_Lcd_L_72:
;__Lib_Lcd.ppas,256 :: 		
$02D2	$	__Lib_Lcd_L_74:
$02D2	$0832			MOVF	FARG_Lcd_Out, 0
$02D3	$3A03			XORLW	3
$02D4	$1D03			BTFSS	STATUS, Z
$02D5	$2AD9			GOTO	__Lib_Lcd_L_75
$02D6	$	__Lib_Lcd_L_73:
$02D6	$3094			MOVLW	148
$02D7	$00B2			MOVWF	FARG_Lcd_Out
$02D8	$2AE2			GOTO	__Lib_Lcd_L_66
$02D9	$	__Lib_Lcd_L_75:
;__Lib_Lcd.ppas,257 :: 		
$02D9	$	__Lib_Lcd_L_77:
$02D9	$0832			MOVF	FARG_Lcd_Out, 0
$02DA	$3A04			XORLW	4
$02DB	$1D03			BTFSS	STATUS, Z
$02DC	$2AE0			GOTO	__Lib_Lcd_L_78
$02DD	$	__Lib_Lcd_L_76:
$02DD	$30D4			MOVLW	212
$02DE	$00B2			MOVWF	FARG_Lcd_Out
;__Lib_Lcd.ppas,258 :: 		
$02DF	$2AE2			GOTO	__Lib_Lcd_L_66
$02E0	$	__Lib_Lcd_L_78:
$02E0	$3080			MOVLW	128
$02E1	$00B2			MOVWF	FARG_Lcd_Out
$02E2	$	__Lib_Lcd_L_66:
;__Lib_Lcd.ppas,260 :: 		
$02E2	$0333			DECF	FARG_Lcd_Out+1, 0
$02E3	$00F0			MOVWF	STACK_0
$02E4	$0832			MOVF	FARG_Lcd_Out, 0
$02E5	$07F0			ADDWF	STACK_0, 1
$02E6	$0870			MOVF	STACK_0, 0
$02E7	$00B2			MOVWF	FARG_Lcd_Out
;__Lib_Lcd.ppas,261 :: 		
$02E8	$0870			MOVF	STACK_0, 0
$02E9	$00BF			MOVWF	FARG_Lcd_Cmd
$02EA	$2020			CALL	_lcd_cmd
;__Lib_Lcd.ppas,262 :: 		
$02EB	$01A8			CLRF	__lib_lcd_lcdcmd_status, 1
;__Lib_Lcd.ppas,263 :: 		
$02EC	$01B5			CLRF	_lcd_out_local_i, 1
;__Lib_Lcd.ppas,264 :: 		
$02ED	$	__Lib_Lcd_L_80:
$02ED	$0835			MOVF	_lcd_out_local_i, 0
$02EE	$0734			ADDWF	FARG_Lcd_Out+2, 0
$02EF	$0084			MOVWF	FSR
$02F0	$0800			MOVF	INDF, 0
$02F1	$00F2			MOVWF	STACK_2
$02F2	$0872			MOVF	STACK_2, 0
$02F3	$3A00			XORLW	0
$02F4	$1903			BTFSC	STATUS, Z
$02F5	$2AFE			GOTO	__Lib_Lcd_L_81
;__Lib_Lcd.ppas,266 :: 		
$02F6	$0835			MOVF	_lcd_out_local_i, 0
$02F7	$0734			ADDWF	FARG_Lcd_Out+2, 0
$02F8	$0084			MOVWF	FSR
$02F9	$0800			MOVF	INDF, 0
$02FA	$00B6			MOVWF	FARG_Lcd_Chr_CP
$02FB	$220B			CALL	_lcd_chr_cp
;__Lib_Lcd.ppas,267 :: 		
$02FC	$0AB5			INCF	_lcd_out_local_i, 1
;__Lib_Lcd.ppas,268 :: 		
$02FD	$2AED			GOTO	__Lib_Lcd_L_80
$02FE	$	__Lib_Lcd_L_81:
;__Lib_Lcd.ppas,269 :: 		
$02FE	$3001			MOVLW	1
$02FF	$00A8			MOVWF	__lib_lcd_lcdcmd_status
$0300	$	__Lib_Lcd_L_65:
;__Lib_Lcd.ppas,270 :: 		
$0300	$0008			RETURN
$0301	$	_main:
;ADC1.pbas,6 :: 		main:
$0301	$	_main_main:
;ADC1.pbas,8 :: 		lcd_init (portb)
$0301	$3006			MOVLW	PORTB
$0302	$1303			BCF	STATUS, RP1
$0303	$1283			BCF	STATUS, RP0
$0304	$00B2			MOVWF	FARG_Lcd_Init
$0305	$2214			CALL	_lcd_init
;ADC1.pbas,9 :: 		lcd_cmd (lcd_cursor_off)
$0306	$300C			MOVLW	12
$0307	$00BF			MOVWF	FARG_Lcd_Cmd
$0308	$2020			CALL	_lcd_cmd
;ADC1.pbas,10 :: 		lcd_cmd (lcd_clear)
$0309	$3001			MOVLW	1
$030A	$00BF			MOVWF	FARG_Lcd_Cmd
$030B	$2020			CALL	_lcd_cmd
;ADC1.pbas,12 :: 		adcon1= %00000000
$030C	$1683			BSF	STATUS, RP0
$030D	$019F			CLRF	ADCON1, 1
;ADC1.pbas,14 :: 		run:
$030E	$	_main_run:
;ADC1.pbas,15 :: 		x = adc_read (0)
$030E	$1283			BCF	STATUS, RP0
$030F	$01B2			CLRF	FARG_ADC_read, 1
$0310	$2229			CALL	_adc_read
$0311	$0870			MOVF	STACK_0, 0
$0312	$00AA			MOVWF	_x
$0313	$0871			MOVF	STACK_0+1, 0
$0314	$00AB			MOVWF	_x+1
;ADC1.pbas,17 :: 		wordtostr (x,y)
$0315	$0870			MOVF	STACK_0, 0
$0316	$00B2			MOVWF	FARG_WordToStr
$0317	$0871			MOVF	STACK_0+1, 0
$0318	$00B3			MOVWF	FARG_WordToStr+1
$0319	$302C			MOVLW	_y
$031A	$00B4			MOVWF	FARG_WordToStr+2
$031B	$2268			CALL	_wordtostr
;ADC1.pbas,18 :: 		lcd_out (1,1,y)
$031C	$3001			MOVLW	1
$031D	$00B2			MOVWF	FARG_Lcd_Out
$031E	$3001			MOVLW	1
$031F	$00B3			MOVWF	FARG_Lcd_Out+1
$0320	$302C			MOVLW	_y
$0321	$00B4			MOVWF	FARG_Lcd_Out+2
$0322	$22C2			CALL	_lcd_out
;ADC1.pbas,20 :: 		goto run
$0323	$2B0E			GOTO	_main_run
$0324	$2B24			GOTO	$
