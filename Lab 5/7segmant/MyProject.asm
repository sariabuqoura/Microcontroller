
_num0:

;MyProject.c,11 :: 		void num0(int on)
;MyProject.c,13 :: 		AA=on;
	BTFSC      FARG_num0_on+0, 0
	GOTO       L__num013
	BCF        PORTB+0, 5
	GOTO       L__num014
L__num013:
	BSF        PORTB+0, 5
L__num014:
;MyProject.c,14 :: 		BB=on;
	BTFSC      FARG_num0_on+0, 0
	GOTO       L__num015
	BCF        PORTB+0, 4
	GOTO       L__num016
L__num015:
	BSF        PORTB+0, 4
L__num016:
;MyProject.c,15 :: 		CC=on;
	BTFSC      FARG_num0_on+0, 0
	GOTO       L__num017
	BCF        PORTB+0, 1
	GOTO       L__num018
L__num017:
	BSF        PORTB+0, 1
L__num018:
;MyProject.c,16 :: 		DD=on;
	BTFSC      FARG_num0_on+0, 0
	GOTO       L__num019
	BCF        PORTB+0, 2
	GOTO       L__num020
L__num019:
	BSF        PORTB+0, 2
L__num020:
;MyProject.c,17 :: 		EE=on;
	BTFSC      FARG_num0_on+0, 0
	GOTO       L__num021
	BCF        PORTB+0, 3
	GOTO       L__num022
L__num021:
	BSF        PORTB+0, 3
L__num022:
;MyProject.c,18 :: 		FF=on;
	BTFSC      FARG_num0_on+0, 0
	GOTO       L__num023
	BCF        PORTB+0, 6
	GOTO       L__num024
L__num023:
	BSF        PORTB+0, 6
L__num024:
;MyProject.c,19 :: 		}
L_end_num0:
	RETURN
; end of _num0

_num1:

;MyProject.c,20 :: 		void num1(int on)
;MyProject.c,22 :: 		BB=on;
	BTFSC      FARG_num1_on+0, 0
	GOTO       L__num126
	BCF        PORTB+0, 4
	GOTO       L__num127
L__num126:
	BSF        PORTB+0, 4
L__num127:
;MyProject.c,23 :: 		CC=on;
	BTFSC      FARG_num1_on+0, 0
	GOTO       L__num128
	BCF        PORTB+0, 1
	GOTO       L__num129
L__num128:
	BSF        PORTB+0, 1
L__num129:
;MyProject.c,24 :: 		}
L_end_num1:
	RETURN
; end of _num1

_num2:

;MyProject.c,25 :: 		void num2(int on)
;MyProject.c,27 :: 		AA=on;
	BTFSC      FARG_num2_on+0, 0
	GOTO       L__num231
	BCF        PORTB+0, 5
	GOTO       L__num232
L__num231:
	BSF        PORTB+0, 5
L__num232:
;MyProject.c,28 :: 		BB=on;
	BTFSC      FARG_num2_on+0, 0
	GOTO       L__num233
	BCF        PORTB+0, 4
	GOTO       L__num234
L__num233:
	BSF        PORTB+0, 4
L__num234:
;MyProject.c,29 :: 		GG=on;
	BTFSC      FARG_num2_on+0, 0
	GOTO       L__num235
	BCF        PORTB+0, 7
	GOTO       L__num236
L__num235:
	BSF        PORTB+0, 7
L__num236:
;MyProject.c,30 :: 		EE=on;
	BTFSC      FARG_num2_on+0, 0
	GOTO       L__num237
	BCF        PORTB+0, 3
	GOTO       L__num238
L__num237:
	BSF        PORTB+0, 3
L__num238:
;MyProject.c,31 :: 		DD=on;
	BTFSC      FARG_num2_on+0, 0
	GOTO       L__num239
	BCF        PORTB+0, 2
	GOTO       L__num240
L__num239:
	BSF        PORTB+0, 2
L__num240:
;MyProject.c,32 :: 		}
L_end_num2:
	RETURN
; end of _num2

_num3:

;MyProject.c,33 :: 		void num3(int on)
;MyProject.c,35 :: 		AA=on;
	BTFSC      FARG_num3_on+0, 0
	GOTO       L__num342
	BCF        PORTB+0, 5
	GOTO       L__num343
L__num342:
	BSF        PORTB+0, 5
L__num343:
;MyProject.c,36 :: 		BB=on;
	BTFSC      FARG_num3_on+0, 0
	GOTO       L__num344
	BCF        PORTB+0, 4
	GOTO       L__num345
L__num344:
	BSF        PORTB+0, 4
L__num345:
;MyProject.c,37 :: 		GG=on;
	BTFSC      FARG_num3_on+0, 0
	GOTO       L__num346
	BCF        PORTB+0, 7
	GOTO       L__num347
L__num346:
	BSF        PORTB+0, 7
L__num347:
;MyProject.c,38 :: 		CC=on;
	BTFSC      FARG_num3_on+0, 0
	GOTO       L__num348
	BCF        PORTB+0, 1
	GOTO       L__num349
L__num348:
	BSF        PORTB+0, 1
L__num349:
;MyProject.c,39 :: 		DD=on;
	BTFSC      FARG_num3_on+0, 0
	GOTO       L__num350
	BCF        PORTB+0, 2
	GOTO       L__num351
L__num350:
	BSF        PORTB+0, 2
L__num351:
;MyProject.c,40 :: 		}
L_end_num3:
	RETURN
; end of _num3

_num4:

;MyProject.c,41 :: 		void num4(int on)
;MyProject.c,43 :: 		FF=on;
	BTFSC      FARG_num4_on+0, 0
	GOTO       L__num453
	BCF        PORTB+0, 6
	GOTO       L__num454
L__num453:
	BSF        PORTB+0, 6
L__num454:
;MyProject.c,44 :: 		BB=on;
	BTFSC      FARG_num4_on+0, 0
	GOTO       L__num455
	BCF        PORTB+0, 4
	GOTO       L__num456
L__num455:
	BSF        PORTB+0, 4
L__num456:
;MyProject.c,45 :: 		GG=on;
	BTFSC      FARG_num4_on+0, 0
	GOTO       L__num457
	BCF        PORTB+0, 7
	GOTO       L__num458
L__num457:
	BSF        PORTB+0, 7
L__num458:
;MyProject.c,46 :: 		CC=on;
	BTFSC      FARG_num4_on+0, 0
	GOTO       L__num459
	BCF        PORTB+0, 1
	GOTO       L__num460
L__num459:
	BSF        PORTB+0, 1
L__num460:
;MyProject.c,47 :: 		}
L_end_num4:
	RETURN
; end of _num4

_num5:

;MyProject.c,48 :: 		void num5(int on)
;MyProject.c,50 :: 		AA=on;
	BTFSC      FARG_num5_on+0, 0
	GOTO       L__num562
	BCF        PORTB+0, 5
	GOTO       L__num563
L__num562:
	BSF        PORTB+0, 5
L__num563:
;MyProject.c,51 :: 		FF=on;
	BTFSC      FARG_num5_on+0, 0
	GOTO       L__num564
	BCF        PORTB+0, 6
	GOTO       L__num565
L__num564:
	BSF        PORTB+0, 6
L__num565:
;MyProject.c,52 :: 		DD=on;
	BTFSC      FARG_num5_on+0, 0
	GOTO       L__num566
	BCF        PORTB+0, 2
	GOTO       L__num567
L__num566:
	BSF        PORTB+0, 2
L__num567:
;MyProject.c,53 :: 		CC=on;
	BTFSC      FARG_num5_on+0, 0
	GOTO       L__num568
	BCF        PORTB+0, 1
	GOTO       L__num569
L__num568:
	BSF        PORTB+0, 1
L__num569:
;MyProject.c,54 :: 		GG=on;
	BTFSC      FARG_num5_on+0, 0
	GOTO       L__num570
	BCF        PORTB+0, 7
	GOTO       L__num571
L__num570:
	BSF        PORTB+0, 7
L__num571:
;MyProject.c,55 :: 		}
L_end_num5:
	RETURN
; end of _num5

_num6:

;MyProject.c,56 :: 		void num6(int on)
;MyProject.c,58 :: 		AA=on;
	BTFSC      FARG_num6_on+0, 0
	GOTO       L__num673
	BCF        PORTB+0, 5
	GOTO       L__num674
L__num673:
	BSF        PORTB+0, 5
L__num674:
;MyProject.c,59 :: 		FF=on;
	BTFSC      FARG_num6_on+0, 0
	GOTO       L__num675
	BCF        PORTB+0, 6
	GOTO       L__num676
L__num675:
	BSF        PORTB+0, 6
L__num676:
;MyProject.c,60 :: 		GG=on;
	BTFSC      FARG_num6_on+0, 0
	GOTO       L__num677
	BCF        PORTB+0, 7
	GOTO       L__num678
L__num677:
	BSF        PORTB+0, 7
L__num678:
;MyProject.c,61 :: 		DD=on;
	BTFSC      FARG_num6_on+0, 0
	GOTO       L__num679
	BCF        PORTB+0, 2
	GOTO       L__num680
L__num679:
	BSF        PORTB+0, 2
L__num680:
;MyProject.c,62 :: 		CC=on;
	BTFSC      FARG_num6_on+0, 0
	GOTO       L__num681
	BCF        PORTB+0, 1
	GOTO       L__num682
L__num681:
	BSF        PORTB+0, 1
L__num682:
;MyProject.c,63 :: 		EE=on;
	BTFSC      FARG_num6_on+0, 0
	GOTO       L__num683
	BCF        PORTB+0, 3
	GOTO       L__num684
L__num683:
	BSF        PORTB+0, 3
L__num684:
;MyProject.c,64 :: 		}
L_end_num6:
	RETURN
; end of _num6

_num7:

;MyProject.c,65 :: 		void num7(int on)
;MyProject.c,67 :: 		AA=on;
	BTFSC      FARG_num7_on+0, 0
	GOTO       L__num786
	BCF        PORTB+0, 5
	GOTO       L__num787
L__num786:
	BSF        PORTB+0, 5
L__num787:
;MyProject.c,68 :: 		BB=on;
	BTFSC      FARG_num7_on+0, 0
	GOTO       L__num788
	BCF        PORTB+0, 4
	GOTO       L__num789
L__num788:
	BSF        PORTB+0, 4
L__num789:
;MyProject.c,69 :: 		CC=on;
	BTFSC      FARG_num7_on+0, 0
	GOTO       L__num790
	BCF        PORTB+0, 1
	GOTO       L__num791
L__num790:
	BSF        PORTB+0, 1
L__num791:
;MyProject.c,70 :: 		}
L_end_num7:
	RETURN
; end of _num7

_num8:

;MyProject.c,71 :: 		void num8(int on)
;MyProject.c,73 :: 		AA=on;
	BTFSC      FARG_num8_on+0, 0
	GOTO       L__num893
	BCF        PORTB+0, 5
	GOTO       L__num894
L__num893:
	BSF        PORTB+0, 5
L__num894:
;MyProject.c,74 :: 		BB=on;
	BTFSC      FARG_num8_on+0, 0
	GOTO       L__num895
	BCF        PORTB+0, 4
	GOTO       L__num896
L__num895:
	BSF        PORTB+0, 4
L__num896:
;MyProject.c,75 :: 		CC=on;
	BTFSC      FARG_num8_on+0, 0
	GOTO       L__num897
	BCF        PORTB+0, 1
	GOTO       L__num898
L__num897:
	BSF        PORTB+0, 1
L__num898:
;MyProject.c,76 :: 		DD=on;
	BTFSC      FARG_num8_on+0, 0
	GOTO       L__num899
	BCF        PORTB+0, 2
	GOTO       L__num8100
L__num899:
	BSF        PORTB+0, 2
L__num8100:
;MyProject.c,77 :: 		EE=on;
	BTFSC      FARG_num8_on+0, 0
	GOTO       L__num8101
	BCF        PORTB+0, 3
	GOTO       L__num8102
L__num8101:
	BSF        PORTB+0, 3
L__num8102:
;MyProject.c,78 :: 		FF=on;
	BTFSC      FARG_num8_on+0, 0
	GOTO       L__num8103
	BCF        PORTB+0, 6
	GOTO       L__num8104
L__num8103:
	BSF        PORTB+0, 6
L__num8104:
;MyProject.c,79 :: 		GG=on;
	BTFSC      FARG_num8_on+0, 0
	GOTO       L__num8105
	BCF        PORTB+0, 7
	GOTO       L__num8106
L__num8105:
	BSF        PORTB+0, 7
L__num8106:
;MyProject.c,80 :: 		}
L_end_num8:
	RETURN
; end of _num8

_num9:

;MyProject.c,81 :: 		void num9(int on)
;MyProject.c,84 :: 		AA=on;
	BTFSC      FARG_num9_on+0, 0
	GOTO       L__num9108
	BCF        PORTB+0, 5
	GOTO       L__num9109
L__num9108:
	BSF        PORTB+0, 5
L__num9109:
;MyProject.c,85 :: 		BB=on;
	BTFSC      FARG_num9_on+0, 0
	GOTO       L__num9110
	BCF        PORTB+0, 4
	GOTO       L__num9111
L__num9110:
	BSF        PORTB+0, 4
L__num9111:
;MyProject.c,86 :: 		CC=on;
	BTFSC      FARG_num9_on+0, 0
	GOTO       L__num9112
	BCF        PORTB+0, 1
	GOTO       L__num9113
L__num9112:
	BSF        PORTB+0, 1
L__num9113:
;MyProject.c,87 :: 		DD=on;
	BTFSC      FARG_num9_on+0, 0
	GOTO       L__num9114
	BCF        PORTB+0, 2
	GOTO       L__num9115
L__num9114:
	BSF        PORTB+0, 2
L__num9115:
;MyProject.c,88 :: 		FF=on;
	BTFSC      FARG_num9_on+0, 0
	GOTO       L__num9116
	BCF        PORTB+0, 6
	GOTO       L__num9117
L__num9116:
	BSF        PORTB+0, 6
L__num9117:
;MyProject.c,89 :: 		GG=on;
	BTFSC      FARG_num9_on+0, 0
	GOTO       L__num9118
	BCF        PORTB+0, 7
	GOTO       L__num9119
L__num9118:
	BSF        PORTB+0, 7
L__num9119:
;MyProject.c,90 :: 		}
L_end_num9:
	RETURN
; end of _num9

_clear:

;MyProject.c,92 :: 		void clear(int on)
;MyProject.c,94 :: 		AA=on;
	BTFSC      FARG_clear_on+0, 0
	GOTO       L__clear121
	BCF        PORTB+0, 5
	GOTO       L__clear122
L__clear121:
	BSF        PORTB+0, 5
L__clear122:
;MyProject.c,95 :: 		BB=on;
	BTFSC      FARG_clear_on+0, 0
	GOTO       L__clear123
	BCF        PORTB+0, 4
	GOTO       L__clear124
L__clear123:
	BSF        PORTB+0, 4
L__clear124:
;MyProject.c,96 :: 		CC=on;
	BTFSC      FARG_clear_on+0, 0
	GOTO       L__clear125
	BCF        PORTB+0, 1
	GOTO       L__clear126
L__clear125:
	BSF        PORTB+0, 1
L__clear126:
;MyProject.c,97 :: 		DD=on;
	BTFSC      FARG_clear_on+0, 0
	GOTO       L__clear127
	BCF        PORTB+0, 2
	GOTO       L__clear128
L__clear127:
	BSF        PORTB+0, 2
L__clear128:
;MyProject.c,98 :: 		EE=on;
	BTFSC      FARG_clear_on+0, 0
	GOTO       L__clear129
	BCF        PORTB+0, 3
	GOTO       L__clear130
L__clear129:
	BSF        PORTB+0, 3
L__clear130:
;MyProject.c,99 :: 		FF=on;
	BTFSC      FARG_clear_on+0, 0
	GOTO       L__clear131
	BCF        PORTB+0, 6
	GOTO       L__clear132
L__clear131:
	BSF        PORTB+0, 6
L__clear132:
;MyProject.c,100 :: 		GG=on;
	BTFSC      FARG_clear_on+0, 0
	GOTO       L__clear133
	BCF        PORTB+0, 7
	GOTO       L__clear134
L__clear133:
	BSF        PORTB+0, 7
L__clear134:
;MyProject.c,101 :: 		}
L_end_clear:
	RETURN
; end of _clear

_main:

;MyProject.c,102 :: 		void main()
;MyProject.c,105 :: 		TRISb=0x00;
	CLRF       TRISB+0
;MyProject.c,106 :: 		portb=0x00;
	CLRF       PORTB+0
;MyProject.c,107 :: 		while (1)
L_main0:
;MyProject.c,109 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;MyProject.c,110 :: 		clear(0);
	CLRF       FARG_clear_on+0
	CLRF       FARG_clear_on+1
	CALL       _clear+0
;MyProject.c,111 :: 		num0(1);
	MOVLW      1
	MOVWF      FARG_num0_on+0
	MOVLW      0
	MOVWF      FARG_num0_on+1
	CALL       _num0+0
;MyProject.c,112 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;MyProject.c,114 :: 		clear(0);
	CLRF       FARG_clear_on+0
	CLRF       FARG_clear_on+1
	CALL       _clear+0
;MyProject.c,115 :: 		num1(1);
	MOVLW      1
	MOVWF      FARG_num1_on+0
	MOVLW      0
	MOVWF      FARG_num1_on+1
	CALL       _num1+0
;MyProject.c,116 :: 		delay_ms(1000);
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
;MyProject.c,118 :: 		clear(0);
	CLRF       FARG_clear_on+0
	CLRF       FARG_clear_on+1
	CALL       _clear+0
;MyProject.c,119 :: 		num2(1);
	MOVLW      1
	MOVWF      FARG_num2_on+0
	MOVLW      0
	MOVWF      FARG_num2_on+1
	CALL       _num2+0
;MyProject.c,120 :: 		delay_ms(1000);
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
;MyProject.c,122 :: 		clear(0);
	CLRF       FARG_clear_on+0
	CLRF       FARG_clear_on+1
	CALL       _clear+0
;MyProject.c,123 :: 		num3(1);
	MOVLW      1
	MOVWF      FARG_num3_on+0
	MOVLW      0
	MOVWF      FARG_num3_on+1
	CALL       _num3+0
;MyProject.c,124 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;MyProject.c,126 :: 		clear(0);
	CLRF       FARG_clear_on+0
	CLRF       FARG_clear_on+1
	CALL       _clear+0
;MyProject.c,127 :: 		num4(1);
	MOVLW      1
	MOVWF      FARG_num4_on+0
	MOVLW      0
	MOVWF      FARG_num4_on+1
	CALL       _num4+0
;MyProject.c,128 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;MyProject.c,130 :: 		clear(0);
	CLRF       FARG_clear_on+0
	CLRF       FARG_clear_on+1
	CALL       _clear+0
;MyProject.c,131 :: 		num5(1);
	MOVLW      1
	MOVWF      FARG_num5_on+0
	MOVLW      0
	MOVWF      FARG_num5_on+1
	CALL       _num5+0
;MyProject.c,132 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;MyProject.c,134 :: 		clear(0);
	CLRF       FARG_clear_on+0
	CLRF       FARG_clear_on+1
	CALL       _clear+0
;MyProject.c,135 :: 		num6(1);
	MOVLW      1
	MOVWF      FARG_num6_on+0
	MOVLW      0
	MOVWF      FARG_num6_on+1
	CALL       _num6+0
;MyProject.c,136 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;MyProject.c,138 :: 		clear(0);
	CLRF       FARG_clear_on+0
	CLRF       FARG_clear_on+1
	CALL       _clear+0
;MyProject.c,139 :: 		num7(1);
	MOVLW      1
	MOVWF      FARG_num7_on+0
	MOVLW      0
	MOVWF      FARG_num7_on+1
	CALL       _num7+0
;MyProject.c,140 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
	NOP
;MyProject.c,142 :: 		clear(0);
	CLRF       FARG_clear_on+0
	CLRF       FARG_clear_on+1
	CALL       _clear+0
;MyProject.c,143 :: 		num8(1);
	MOVLW      1
	MOVWF      FARG_num8_on+0
	MOVLW      0
	MOVWF      FARG_num8_on+1
	CALL       _num8+0
;MyProject.c,144 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
	NOP
;MyProject.c,146 :: 		clear(0);
	CLRF       FARG_clear_on+0
	CLRF       FARG_clear_on+1
	CALL       _clear+0
;MyProject.c,147 :: 		num9(1);
	MOVLW      1
	MOVWF      FARG_num9_on+0
	MOVLW      0
	MOVWF      FARG_num9_on+1
	CALL       _num9+0
;MyProject.c,148 :: 		}
	GOTO       L_main0
;MyProject.c,149 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
