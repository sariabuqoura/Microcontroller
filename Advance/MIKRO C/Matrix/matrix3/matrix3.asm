
_timer:

;matrix3.c,43 :: 		void timer()
;matrix3.c,45 :: 		delay_ms(250);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_timer0:
	DECFSZ     R13+0, 1
	GOTO       L_timer0
	DECFSZ     R12+0, 1
	GOTO       L_timer0
	DECFSZ     R11+0, 1
	GOTO       L_timer0
	NOP
	NOP
;matrix3.c,46 :: 		}
L_end_timer:
	RETURN
; end of _timer

_All25:

;matrix3.c,47 :: 		void All25(int Flag)
;matrix3.c,50 :: 		E_1=Flag; E_2=Flag; E_3=Flag; E_4=Flag; E_5=Flag;
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2514
	BCF        PORTE+0, 0
	GOTO       L__All2515
L__All2514:
	BSF        PORTE+0, 0
L__All2515:
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2516
	BCF        PORTE+0, 1
	GOTO       L__All2517
L__All2516:
	BSF        PORTE+0, 1
L__All2517:
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2518
	BCF        PORTE+0, 2
	GOTO       L__All2519
L__All2518:
	BSF        PORTE+0, 2
L__All2519:
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2520
	BCF        PORTD+0, 5
	GOTO       L__All2521
L__All2520:
	BSF        PORTD+0, 5
L__All2521:
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2522
	BCF        PORTD+0, 6
	GOTO       L__All2523
L__All2522:
	BSF        PORTD+0, 6
L__All2523:
;matrix3.c,51 :: 		D_1=Flag; D_2=Flag; D_3=Flag; D_4=Flag; D_5=Flag;
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2524
	BCF        PORTD+0, 0
	GOTO       L__All2525
L__All2524:
	BSF        PORTD+0, 0
L__All2525:
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2526
	BCF        PORTD+0, 1
	GOTO       L__All2527
L__All2526:
	BSF        PORTD+0, 1
L__All2527:
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2528
	BCF        PORTD+0, 2
	GOTO       L__All2529
L__All2528:
	BSF        PORTD+0, 2
L__All2529:
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2530
	BCF        PORTD+0, 3
	GOTO       L__All2531
L__All2530:
	BSF        PORTD+0, 3
L__All2531:
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2532
	BCF        PORTD+0, 4
	GOTO       L__All2533
L__All2532:
	BSF        PORTD+0, 4
L__All2533:
;matrix3.c,53 :: 		C_1=Flag; C_2=Flag; C_3=Flag; C_4=Flag; C_5=Flag;
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2534
	BCF        PORTC+0, 0
	GOTO       L__All2535
L__All2534:
	BSF        PORTC+0, 0
L__All2535:
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2536
	BCF        PORTC+0, 1
	GOTO       L__All2537
L__All2536:
	BSF        PORTC+0, 1
L__All2537:
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2538
	BCF        PORTC+0, 2
	GOTO       L__All2539
L__All2538:
	BSF        PORTC+0, 2
L__All2539:
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2540
	BCF        PORTC+0, 3
	GOTO       L__All2541
L__All2540:
	BSF        PORTC+0, 3
L__All2541:
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2542
	BCF        PORTC+0, 4
	GOTO       L__All2543
L__All2542:
	BSF        PORTC+0, 4
L__All2543:
;matrix3.c,55 :: 		B_1=Flag; B_2=Flag; B_3=Flag; B_4=Flag; B_5=Flag;
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2544
	BCF        PORTB+0, 0
	GOTO       L__All2545
L__All2544:
	BSF        PORTB+0, 0
L__All2545:
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2546
	BCF        PORTB+0, 1
	GOTO       L__All2547
L__All2546:
	BSF        PORTB+0, 1
L__All2547:
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2548
	BCF        PORTB+0, 2
	GOTO       L__All2549
L__All2548:
	BSF        PORTB+0, 2
L__All2549:
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2550
	BCF        PORTB+0, 3
	GOTO       L__All2551
L__All2550:
	BSF        PORTB+0, 3
L__All2551:
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2552
	BCF        PORTB+0, 4
	GOTO       L__All2553
L__All2552:
	BSF        PORTB+0, 4
L__All2553:
;matrix3.c,56 :: 		A_1=Flag; A_2=Flag; A_3=Flag; A_4=Flag; A_5=Flag;
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2554
	BCF        PORTA+0, 0
	GOTO       L__All2555
L__All2554:
	BSF        PORTA+0, 0
L__All2555:
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2556
	BCF        PORTA+0, 1
	GOTO       L__All2557
L__All2556:
	BSF        PORTA+0, 1
L__All2557:
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2558
	BCF        PORTA+0, 2
	GOTO       L__All2559
L__All2558:
	BSF        PORTA+0, 2
L__All2559:
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2560
	BCF        PORTA+0, 3
	GOTO       L__All2561
L__All2560:
	BSF        PORTA+0, 3
L__All2561:
	BTFSC      FARG_All25_Flag+0, 0
	GOTO       L__All2562
	BCF        PORTB+0, 5
	GOTO       L__All2563
L__All2562:
	BSF        PORTB+0, 5
L__All2563:
;matrix3.c,57 :: 		}
L_end_All25:
	RETURN
; end of _All25

_Row1:

;matrix3.c,58 :: 		void Row1(int Flag)
;matrix3.c,60 :: 		Row_1=Flag;
	BTFSC      FARG_Row1_Flag+0, 0
	GOTO       L__Row165
	BCF        PORTD+0, 7
	GOTO       L__Row166
L__Row165:
	BSF        PORTD+0, 7
L__Row166:
;matrix3.c,61 :: 		All25(Flag);
	MOVF       FARG_Row1_Flag+0, 0
	MOVWF      FARG_All25_Flag+0
	MOVF       FARG_Row1_Flag+1, 0
	MOVWF      FARG_All25_Flag+1
	CALL       _All25+0
;matrix3.c,62 :: 		}
L_end_Row1:
	RETURN
; end of _Row1

_Row2:

;matrix3.c,63 :: 		void Row2(int Flag)
;matrix3.c,65 :: 		Row_2=Flag;
	BTFSC      FARG_Row2_Flag+0, 0
	GOTO       L__Row268
	BCF        PORTC+0, 5
	GOTO       L__Row269
L__Row268:
	BSF        PORTC+0, 5
L__Row269:
;matrix3.c,66 :: 		All25(Flag);
	MOVF       FARG_Row2_Flag+0, 0
	MOVWF      FARG_All25_Flag+0
	MOVF       FARG_Row2_Flag+1, 0
	MOVWF      FARG_All25_Flag+1
	CALL       _All25+0
;matrix3.c,67 :: 		}
L_end_Row2:
	RETURN
; end of _Row2

_Row3:

;matrix3.c,68 :: 		void Row3(int Flag)
;matrix3.c,70 :: 		Row_3=Flag;
	BTFSC      FARG_Row3_Flag+0, 0
	GOTO       L__Row371
	BCF        PORTC+0, 6
	GOTO       L__Row372
L__Row371:
	BSF        PORTC+0, 6
L__Row372:
;matrix3.c,71 :: 		All25(Flag);
	MOVF       FARG_Row3_Flag+0, 0
	MOVWF      FARG_All25_Flag+0
	MOVF       FARG_Row3_Flag+1, 0
	MOVWF      FARG_All25_Flag+1
	CALL       _All25+0
;matrix3.c,72 :: 		}
L_end_Row3:
	RETURN
; end of _Row3

_Row4:

;matrix3.c,73 :: 		void Row4(int Flag)
;matrix3.c,75 :: 		Row_4=Flag;
	BTFSC      FARG_Row4_Flag+0, 0
	GOTO       L__Row474
	BCF        PORTA+0, 5
	GOTO       L__Row475
L__Row474:
	BSF        PORTA+0, 5
L__Row475:
;matrix3.c,76 :: 		All25(Flag);
	MOVF       FARG_Row4_Flag+0, 0
	MOVWF      FARG_All25_Flag+0
	MOVF       FARG_Row4_Flag+1, 0
	MOVWF      FARG_All25_Flag+1
	CALL       _All25+0
;matrix3.c,77 :: 		}
L_end_Row4:
	RETURN
; end of _Row4

_Row5:

;matrix3.c,78 :: 		void Row5(int Flag)
;matrix3.c,80 :: 		Row_5=Flag;
	BTFSC      FARG_Row5_Flag+0, 0
	GOTO       L__Row577
	BCF        PORTC+0, 7
	GOTO       L__Row578
L__Row577:
	BSF        PORTC+0, 7
L__Row578:
;matrix3.c,81 :: 		All25(Flag);
	MOVF       FARG_Row5_Flag+0, 0
	MOVWF      FARG_All25_Flag+0
	MOVF       FARG_Row5_Flag+1, 0
	MOVWF      FARG_All25_Flag+1
	CALL       _All25+0
;matrix3.c,82 :: 		}
L_end_Row5:
	RETURN
; end of _Row5

_AllRows:

;matrix3.c,83 :: 		void AllRows(int Flag)
;matrix3.c,85 :: 		Row_1=Flag;
	BTFSC      FARG_AllRows_Flag+0, 0
	GOTO       L__AllRows80
	BCF        PORTD+0, 7
	GOTO       L__AllRows81
L__AllRows80:
	BSF        PORTD+0, 7
L__AllRows81:
;matrix3.c,86 :: 		Row_2=Flag;
	BTFSC      FARG_AllRows_Flag+0, 0
	GOTO       L__AllRows82
	BCF        PORTC+0, 5
	GOTO       L__AllRows83
L__AllRows82:
	BSF        PORTC+0, 5
L__AllRows83:
;matrix3.c,87 :: 		Row_3=Flag;
	BTFSC      FARG_AllRows_Flag+0, 0
	GOTO       L__AllRows84
	BCF        PORTC+0, 6
	GOTO       L__AllRows85
L__AllRows84:
	BSF        PORTC+0, 6
L__AllRows85:
;matrix3.c,88 :: 		Row_4=Flag;
	BTFSC      FARG_AllRows_Flag+0, 0
	GOTO       L__AllRows86
	BCF        PORTA+0, 5
	GOTO       L__AllRows87
L__AllRows86:
	BSF        PORTA+0, 5
L__AllRows87:
;matrix3.c,89 :: 		Row_5=Flag;
	BTFSC      FARG_AllRows_Flag+0, 0
	GOTO       L__AllRows88
	BCF        PORTC+0, 7
	GOTO       L__AllRows89
L__AllRows88:
	BSF        PORTC+0, 7
L__AllRows89:
;matrix3.c,90 :: 		}
L_end_AllRows:
	RETURN
; end of _AllRows

_Move1:

;matrix3.c,91 :: 		Move1()
;matrix3.c,93 :: 		timer();
	CALL       _timer+0
;matrix3.c,94 :: 		Row1(on);
	MOVF       _on+0, 0
	MOVWF      FARG_Row1_Flag+0
	MOVF       _on+1, 0
	MOVWF      FARG_Row1_Flag+1
	CALL       _Row1+0
;matrix3.c,95 :: 		timer();
	CALL       _timer+0
;matrix3.c,96 :: 		Row2(on);
	MOVF       _on+0, 0
	MOVWF      FARG_Row2_Flag+0
	MOVF       _on+1, 0
	MOVWF      FARG_Row2_Flag+1
	CALL       _Row2+0
;matrix3.c,97 :: 		timer() ;
	CALL       _timer+0
;matrix3.c,98 :: 		Row3(on);
	MOVF       _on+0, 0
	MOVWF      FARG_Row3_Flag+0
	MOVF       _on+1, 0
	MOVWF      FARG_Row3_Flag+1
	CALL       _Row3+0
;matrix3.c,99 :: 		timer() ;
	CALL       _timer+0
;matrix3.c,100 :: 		Row4(on);
	MOVF       _on+0, 0
	MOVWF      FARG_Row4_Flag+0
	MOVF       _on+1, 0
	MOVWF      FARG_Row4_Flag+1
	CALL       _Row4+0
;matrix3.c,101 :: 		timer() ;
	CALL       _timer+0
;matrix3.c,102 :: 		Row5(on);
	MOVF       _on+0, 0
	MOVWF      FARG_Row5_Flag+0
	MOVF       _on+1, 0
	MOVWF      FARG_Row5_Flag+1
	CALL       _Row5+0
;matrix3.c,103 :: 		timer() ;
	CALL       _timer+0
;matrix3.c,105 :: 		Row5(off);
	MOVF       _off+0, 0
	MOVWF      FARG_Row5_Flag+0
	MOVF       _off+1, 0
	MOVWF      FARG_Row5_Flag+1
	CALL       _Row5+0
;matrix3.c,106 :: 		Row4(off);
	MOVF       _off+0, 0
	MOVWF      FARG_Row4_Flag+0
	MOVF       _off+1, 0
	MOVWF      FARG_Row4_Flag+1
	CALL       _Row4+0
;matrix3.c,107 :: 		Row3(off);
	MOVF       _off+0, 0
	MOVWF      FARG_Row3_Flag+0
	MOVF       _off+1, 0
	MOVWF      FARG_Row3_Flag+1
	CALL       _Row3+0
;matrix3.c,108 :: 		Row2(off);
	MOVF       _off+0, 0
	MOVWF      FARG_Row2_Flag+0
	MOVF       _off+1, 0
	MOVWF      FARG_Row2_Flag+1
	CALL       _Row2+0
;matrix3.c,109 :: 		Row1(off);
	MOVF       _off+0, 0
	MOVWF      FARG_Row1_Flag+0
	MOVF       _off+1, 0
	MOVWF      FARG_Row1_Flag+1
	CALL       _Row1+0
;matrix3.c,112 :: 		Row5(on);
	MOVF       _on+0, 0
	MOVWF      FARG_Row5_Flag+0
	MOVF       _on+1, 0
	MOVWF      FARG_Row5_Flag+1
	CALL       _Row5+0
;matrix3.c,113 :: 		timer();
	CALL       _timer+0
;matrix3.c,114 :: 		Row4(on);
	MOVF       _on+0, 0
	MOVWF      FARG_Row4_Flag+0
	MOVF       _on+1, 0
	MOVWF      FARG_Row4_Flag+1
	CALL       _Row4+0
;matrix3.c,115 :: 		timer() ;
	CALL       _timer+0
;matrix3.c,116 :: 		Row3(on);
	MOVF       _on+0, 0
	MOVWF      FARG_Row3_Flag+0
	MOVF       _on+1, 0
	MOVWF      FARG_Row3_Flag+1
	CALL       _Row3+0
;matrix3.c,117 :: 		timer() ;
	CALL       _timer+0
;matrix3.c,118 :: 		Row2(on);
	MOVF       _on+0, 0
	MOVWF      FARG_Row2_Flag+0
	MOVF       _on+1, 0
	MOVWF      FARG_Row2_Flag+1
	CALL       _Row2+0
;matrix3.c,119 :: 		timer() ;
	CALL       _timer+0
;matrix3.c,120 :: 		Row1(on);
	MOVF       _on+0, 0
	MOVWF      FARG_Row1_Flag+0
	MOVF       _on+1, 0
	MOVWF      FARG_Row1_Flag+1
	CALL       _Row1+0
;matrix3.c,121 :: 		timer() ;
	CALL       _timer+0
;matrix3.c,123 :: 		Row1(off);
	MOVF       _off+0, 0
	MOVWF      FARG_Row1_Flag+0
	MOVF       _off+1, 0
	MOVWF      FARG_Row1_Flag+1
	CALL       _Row1+0
;matrix3.c,124 :: 		Row2(off);
	MOVF       _off+0, 0
	MOVWF      FARG_Row2_Flag+0
	MOVF       _off+1, 0
	MOVWF      FARG_Row2_Flag+1
	CALL       _Row2+0
;matrix3.c,125 :: 		Row3(off);
	MOVF       _off+0, 0
	MOVWF      FARG_Row3_Flag+0
	MOVF       _off+1, 0
	MOVWF      FARG_Row3_Flag+1
	CALL       _Row3+0
;matrix3.c,126 :: 		Row4(off);
	MOVF       _off+0, 0
	MOVWF      FARG_Row4_Flag+0
	MOVF       _off+1, 0
	MOVWF      FARG_Row4_Flag+1
	CALL       _Row4+0
;matrix3.c,127 :: 		Row5(off);
	MOVF       _off+0, 0
	MOVWF      FARG_Row5_Flag+0
	MOVF       _off+1, 0
	MOVWF      FARG_Row5_Flag+1
	CALL       _Row5+0
;matrix3.c,128 :: 		timer() ;
	CALL       _timer+0
;matrix3.c,129 :: 		All25(off) ;
	MOVF       _off+0, 0
	MOVWF      FARG_All25_Flag+0
	MOVF       _off+1, 0
	MOVWF      FARG_All25_Flag+1
	CALL       _All25+0
;matrix3.c,130 :: 		AllRows(off);
	MOVF       _off+0, 0
	MOVWF      FARG_AllRows_Flag+0
	MOVF       _off+1, 0
	MOVWF      FARG_AllRows_Flag+1
	CALL       _AllRows+0
;matrix3.c,131 :: 		}
L_end_Move1:
	RETURN
; end of _Move1

_Move2:

;matrix3.c,132 :: 		Move2()
;matrix3.c,134 :: 		timer() ;
	CALL       _timer+0
;matrix3.c,135 :: 		All25(off) ;
	MOVF       _off+0, 0
	MOVWF      FARG_All25_Flag+0
	MOVF       _off+1, 0
	MOVWF      FARG_All25_Flag+1
	CALL       _All25+0
;matrix3.c,136 :: 		AllRows(on);
	MOVF       _on+0, 0
	MOVWF      FARG_AllRows_Flag+0
	MOVF       _on+1, 0
	MOVWF      FARG_AllRows_Flag+1
	CALL       _AllRows+0
;matrix3.c,137 :: 		A_1=on;
	BTFSC      _on+0, 0
	GOTO       L__Move292
	BCF        PORTA+0, 0
	GOTO       L__Move293
L__Move292:
	BSF        PORTA+0, 0
L__Move293:
;matrix3.c,138 :: 		timer();
	CALL       _timer+0
;matrix3.c,139 :: 		A_2=on;
	BTFSC      _on+0, 0
	GOTO       L__Move294
	BCF        PORTA+0, 1
	GOTO       L__Move295
L__Move294:
	BSF        PORTA+0, 1
L__Move295:
;matrix3.c,140 :: 		timer();
	CALL       _timer+0
;matrix3.c,141 :: 		A_3=on;
	BTFSC      _on+0, 0
	GOTO       L__Move296
	BCF        PORTA+0, 2
	GOTO       L__Move297
L__Move296:
	BSF        PORTA+0, 2
L__Move297:
;matrix3.c,142 :: 		timer();
	CALL       _timer+0
;matrix3.c,143 :: 		A_4=on;
	BTFSC      _on+0, 0
	GOTO       L__Move298
	BCF        PORTA+0, 3
	GOTO       L__Move299
L__Move298:
	BSF        PORTA+0, 3
L__Move299:
;matrix3.c,144 :: 		timer();
	CALL       _timer+0
;matrix3.c,145 :: 		A_5=on;
	BTFSC      _on+0, 0
	GOTO       L__Move2100
	BCF        PORTB+0, 5
	GOTO       L__Move2101
L__Move2100:
	BSF        PORTB+0, 5
L__Move2101:
;matrix3.c,146 :: 		timer();
	CALL       _timer+0
;matrix3.c,147 :: 		B_5=on;
	BTFSC      _on+0, 0
	GOTO       L__Move2102
	BCF        PORTB+0, 4
	GOTO       L__Move2103
L__Move2102:
	BSF        PORTB+0, 4
L__Move2103:
;matrix3.c,148 :: 		timer();
	CALL       _timer+0
;matrix3.c,149 :: 		C_5=on;
	BTFSC      _on+0, 0
	GOTO       L__Move2104
	BCF        PORTC+0, 4
	GOTO       L__Move2105
L__Move2104:
	BSF        PORTC+0, 4
L__Move2105:
;matrix3.c,150 :: 		timer();
	CALL       _timer+0
;matrix3.c,151 :: 		D_5=on;
	BTFSC      _on+0, 0
	GOTO       L__Move2106
	BCF        PORTD+0, 4
	GOTO       L__Move2107
L__Move2106:
	BSF        PORTD+0, 4
L__Move2107:
;matrix3.c,152 :: 		timer();
	CALL       _timer+0
;matrix3.c,153 :: 		E_5=on;
	BTFSC      _on+0, 0
	GOTO       L__Move2108
	BCF        PORTD+0, 6
	GOTO       L__Move2109
L__Move2108:
	BSF        PORTD+0, 6
L__Move2109:
;matrix3.c,154 :: 		timer();
	CALL       _timer+0
;matrix3.c,155 :: 		E_4=on;
	BTFSC      _on+0, 0
	GOTO       L__Move2110
	BCF        PORTD+0, 5
	GOTO       L__Move2111
L__Move2110:
	BSF        PORTD+0, 5
L__Move2111:
;matrix3.c,156 :: 		timer();
	CALL       _timer+0
;matrix3.c,157 :: 		E_3=on;
	BTFSC      _on+0, 0
	GOTO       L__Move2112
	BCF        PORTE+0, 2
	GOTO       L__Move2113
L__Move2112:
	BSF        PORTE+0, 2
L__Move2113:
;matrix3.c,158 :: 		timer();
	CALL       _timer+0
;matrix3.c,159 :: 		E_2=on;
	BTFSC      _on+0, 0
	GOTO       L__Move2114
	BCF        PORTE+0, 1
	GOTO       L__Move2115
L__Move2114:
	BSF        PORTE+0, 1
L__Move2115:
;matrix3.c,160 :: 		timer();
	CALL       _timer+0
;matrix3.c,161 :: 		E_1=on;
	BTFSC      _on+0, 0
	GOTO       L__Move2116
	BCF        PORTE+0, 0
	GOTO       L__Move2117
L__Move2116:
	BSF        PORTE+0, 0
L__Move2117:
;matrix3.c,162 :: 		timer();
	CALL       _timer+0
;matrix3.c,163 :: 		D_1=on;
	BTFSC      _on+0, 0
	GOTO       L__Move2118
	BCF        PORTD+0, 0
	GOTO       L__Move2119
L__Move2118:
	BSF        PORTD+0, 0
L__Move2119:
;matrix3.c,164 :: 		timer();
	CALL       _timer+0
;matrix3.c,165 :: 		C_1=on;
	BTFSC      _on+0, 0
	GOTO       L__Move2120
	BCF        PORTC+0, 0
	GOTO       L__Move2121
L__Move2120:
	BSF        PORTC+0, 0
L__Move2121:
;matrix3.c,166 :: 		timer();
	CALL       _timer+0
;matrix3.c,167 :: 		B_1=on;
	BTFSC      _on+0, 0
	GOTO       L__Move2122
	BCF        PORTB+0, 0
	GOTO       L__Move2123
L__Move2122:
	BSF        PORTB+0, 0
L__Move2123:
;matrix3.c,168 :: 		timer();
	CALL       _timer+0
;matrix3.c,169 :: 		B_2=on;
	BTFSC      _on+0, 0
	GOTO       L__Move2124
	BCF        PORTB+0, 1
	GOTO       L__Move2125
L__Move2124:
	BSF        PORTB+0, 1
L__Move2125:
;matrix3.c,170 :: 		timer();
	CALL       _timer+0
;matrix3.c,171 :: 		B_3=on;
	BTFSC      _on+0, 0
	GOTO       L__Move2126
	BCF        PORTB+0, 2
	GOTO       L__Move2127
L__Move2126:
	BSF        PORTB+0, 2
L__Move2127:
;matrix3.c,172 :: 		timer();
	CALL       _timer+0
;matrix3.c,173 :: 		B_4=on;
	BTFSC      _on+0, 0
	GOTO       L__Move2128
	BCF        PORTB+0, 3
	GOTO       L__Move2129
L__Move2128:
	BSF        PORTB+0, 3
L__Move2129:
;matrix3.c,174 :: 		timer();
	CALL       _timer+0
;matrix3.c,175 :: 		C_4=on;
	BTFSC      _on+0, 0
	GOTO       L__Move2130
	BCF        PORTC+0, 3
	GOTO       L__Move2131
L__Move2130:
	BSF        PORTC+0, 3
L__Move2131:
;matrix3.c,176 :: 		timer();
	CALL       _timer+0
;matrix3.c,177 :: 		D_4=on;
	BTFSC      _on+0, 0
	GOTO       L__Move2132
	BCF        PORTD+0, 3
	GOTO       L__Move2133
L__Move2132:
	BSF        PORTD+0, 3
L__Move2133:
;matrix3.c,178 :: 		timer();
	CALL       _timer+0
;matrix3.c,179 :: 		D_3=on;
	BTFSC      _on+0, 0
	GOTO       L__Move2134
	BCF        PORTD+0, 2
	GOTO       L__Move2135
L__Move2134:
	BSF        PORTD+0, 2
L__Move2135:
;matrix3.c,180 :: 		timer();
	CALL       _timer+0
;matrix3.c,181 :: 		D_2=on;
	BTFSC      _on+0, 0
	GOTO       L__Move2136
	BCF        PORTD+0, 1
	GOTO       L__Move2137
L__Move2136:
	BSF        PORTD+0, 1
L__Move2137:
;matrix3.c,182 :: 		timer();
	CALL       _timer+0
;matrix3.c,183 :: 		C_2=on;
	BTFSC      _on+0, 0
	GOTO       L__Move2138
	BCF        PORTC+0, 1
	GOTO       L__Move2139
L__Move2138:
	BSF        PORTC+0, 1
L__Move2139:
;matrix3.c,184 :: 		timer();
	CALL       _timer+0
;matrix3.c,185 :: 		C_3=on;
	BTFSC      _on+0, 0
	GOTO       L__Move2140
	BCF        PORTC+0, 2
	GOTO       L__Move2141
L__Move2140:
	BSF        PORTC+0, 2
L__Move2141:
;matrix3.c,186 :: 		timer();
	CALL       _timer+0
;matrix3.c,187 :: 		All25(off) ;
	MOVF       _off+0, 0
	MOVWF      FARG_All25_Flag+0
	MOVF       _off+1, 0
	MOVWF      FARG_All25_Flag+1
	CALL       _All25+0
;matrix3.c,188 :: 		AllRows(off);
	MOVF       _off+0, 0
	MOVWF      FARG_AllRows_Flag+0
	MOVF       _off+1, 0
	MOVWF      FARG_AllRows_Flag+1
	CALL       _AllRows+0
;matrix3.c,189 :: 		}
L_end_Move2:
	RETURN
; end of _Move2

_move3sub1:

;matrix3.c,191 :: 		void move3sub1()
;matrix3.c,193 :: 		Row_1=on;
	BTFSC      _on+0, 0
	GOTO       L__move3sub1143
	BCF        PORTD+0, 7
	GOTO       L__move3sub1144
L__move3sub1143:
	BSF        PORTD+0, 7
L__move3sub1144:
;matrix3.c,194 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_move3sub11:
	DECFSZ     R13+0, 1
	GOTO       L_move3sub11
	DECFSZ     R12+0, 1
	GOTO       L_move3sub11
	NOP
	NOP
;matrix3.c,195 :: 		Row_1=off;
	BTFSC      _off+0, 0
	GOTO       L__move3sub1145
	BCF        PORTD+0, 7
	GOTO       L__move3sub1146
L__move3sub1145:
	BSF        PORTD+0, 7
L__move3sub1146:
;matrix3.c,196 :: 		Row_2=on;
	BTFSC      _on+0, 0
	GOTO       L__move3sub1147
	BCF        PORTC+0, 5
	GOTO       L__move3sub1148
L__move3sub1147:
	BSF        PORTC+0, 5
L__move3sub1148:
;matrix3.c,197 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_move3sub12:
	DECFSZ     R13+0, 1
	GOTO       L_move3sub12
	DECFSZ     R12+0, 1
	GOTO       L_move3sub12
	NOP
	NOP
;matrix3.c,198 :: 		Row_2=off;
	BTFSC      _off+0, 0
	GOTO       L__move3sub1149
	BCF        PORTC+0, 5
	GOTO       L__move3sub1150
L__move3sub1149:
	BSF        PORTC+0, 5
L__move3sub1150:
;matrix3.c,199 :: 		Row_3=on;
	BTFSC      _on+0, 0
	GOTO       L__move3sub1151
	BCF        PORTC+0, 6
	GOTO       L__move3sub1152
L__move3sub1151:
	BSF        PORTC+0, 6
L__move3sub1152:
;matrix3.c,200 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_move3sub13:
	DECFSZ     R13+0, 1
	GOTO       L_move3sub13
	DECFSZ     R12+0, 1
	GOTO       L_move3sub13
	NOP
	NOP
;matrix3.c,201 :: 		Row_3=off;
	BTFSC      _off+0, 0
	GOTO       L__move3sub1153
	BCF        PORTC+0, 6
	GOTO       L__move3sub1154
L__move3sub1153:
	BSF        PORTC+0, 6
L__move3sub1154:
;matrix3.c,202 :: 		Row_4=on;
	BTFSC      _on+0, 0
	GOTO       L__move3sub1155
	BCF        PORTA+0, 5
	GOTO       L__move3sub1156
L__move3sub1155:
	BSF        PORTA+0, 5
L__move3sub1156:
;matrix3.c,203 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_move3sub14:
	DECFSZ     R13+0, 1
	GOTO       L_move3sub14
	DECFSZ     R12+0, 1
	GOTO       L_move3sub14
	NOP
	NOP
;matrix3.c,204 :: 		Row_4=off;
	BTFSC      _off+0, 0
	GOTO       L__move3sub1157
	BCF        PORTA+0, 5
	GOTO       L__move3sub1158
L__move3sub1157:
	BSF        PORTA+0, 5
L__move3sub1158:
;matrix3.c,205 :: 		Row_5=on;
	BTFSC      _on+0, 0
	GOTO       L__move3sub1159
	BCF        PORTC+0, 7
	GOTO       L__move3sub1160
L__move3sub1159:
	BSF        PORTC+0, 7
L__move3sub1160:
;matrix3.c,206 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_move3sub15:
	DECFSZ     R13+0, 1
	GOTO       L_move3sub15
	DECFSZ     R12+0, 1
	GOTO       L_move3sub15
	NOP
	NOP
;matrix3.c,207 :: 		Row_5=off;
	BTFSC      _off+0, 0
	GOTO       L__move3sub1161
	BCF        PORTC+0, 7
	GOTO       L__move3sub1162
L__move3sub1161:
	BSF        PORTC+0, 7
L__move3sub1162:
;matrix3.c,208 :: 		Row_4=on;
	BTFSC      _on+0, 0
	GOTO       L__move3sub1163
	BCF        PORTA+0, 5
	GOTO       L__move3sub1164
L__move3sub1163:
	BSF        PORTA+0, 5
L__move3sub1164:
;matrix3.c,209 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_move3sub16:
	DECFSZ     R13+0, 1
	GOTO       L_move3sub16
	DECFSZ     R12+0, 1
	GOTO       L_move3sub16
	NOP
	NOP
;matrix3.c,210 :: 		Row_4=off;
	BTFSC      _off+0, 0
	GOTO       L__move3sub1165
	BCF        PORTA+0, 5
	GOTO       L__move3sub1166
L__move3sub1165:
	BSF        PORTA+0, 5
L__move3sub1166:
;matrix3.c,211 :: 		Row_3=on;
	BTFSC      _on+0, 0
	GOTO       L__move3sub1167
	BCF        PORTC+0, 6
	GOTO       L__move3sub1168
L__move3sub1167:
	BSF        PORTC+0, 6
L__move3sub1168:
;matrix3.c,212 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_move3sub17:
	DECFSZ     R13+0, 1
	GOTO       L_move3sub17
	DECFSZ     R12+0, 1
	GOTO       L_move3sub17
	NOP
	NOP
;matrix3.c,213 :: 		Row_3=off;
	BTFSC      _off+0, 0
	GOTO       L__move3sub1169
	BCF        PORTC+0, 6
	GOTO       L__move3sub1170
L__move3sub1169:
	BSF        PORTC+0, 6
L__move3sub1170:
;matrix3.c,214 :: 		Row_2=on;
	BTFSC      _on+0, 0
	GOTO       L__move3sub1171
	BCF        PORTC+0, 5
	GOTO       L__move3sub1172
L__move3sub1171:
	BSF        PORTC+0, 5
L__move3sub1172:
;matrix3.c,215 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_move3sub18:
	DECFSZ     R13+0, 1
	GOTO       L_move3sub18
	DECFSZ     R12+0, 1
	GOTO       L_move3sub18
	NOP
	NOP
;matrix3.c,216 :: 		Row_2=off;
	BTFSC      _off+0, 0
	GOTO       L__move3sub1173
	BCF        PORTC+0, 5
	GOTO       L__move3sub1174
L__move3sub1173:
	BSF        PORTC+0, 5
L__move3sub1174:
;matrix3.c,217 :: 		Row_1=on;
	BTFSC      _on+0, 0
	GOTO       L__move3sub1175
	BCF        PORTD+0, 7
	GOTO       L__move3sub1176
L__move3sub1175:
	BSF        PORTD+0, 7
L__move3sub1176:
;matrix3.c,218 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_move3sub19:
	DECFSZ     R13+0, 1
	GOTO       L_move3sub19
	DECFSZ     R12+0, 1
	GOTO       L_move3sub19
	NOP
	NOP
;matrix3.c,219 :: 		}
L_end_move3sub1:
	RETURN
; end of _move3sub1

_Move3:

;matrix3.c,221 :: 		void Move3()
;matrix3.c,223 :: 		All25(off) ;
	MOVF       _off+0, 0
	MOVWF      FARG_All25_Flag+0
	MOVF       _off+1, 0
	MOVWF      FARG_All25_Flag+1
	CALL       _All25+0
;matrix3.c,224 :: 		AllRows(off);
	MOVF       _off+0, 0
	MOVWF      FARG_AllRows_Flag+0
	MOVF       _off+1, 0
	MOVWF      FARG_AllRows_Flag+1
	CALL       _AllRows+0
;matrix3.c,226 :: 		A_1=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3178
	BCF        PORTA+0, 0
	GOTO       L__Move3179
L__Move3178:
	BSF        PORTA+0, 0
L__Move3179:
;matrix3.c,227 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,228 :: 		A_2=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3180
	BCF        PORTA+0, 1
	GOTO       L__Move3181
L__Move3180:
	BSF        PORTA+0, 1
L__Move3181:
;matrix3.c,229 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,230 :: 		A_3=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3182
	BCF        PORTA+0, 2
	GOTO       L__Move3183
L__Move3182:
	BSF        PORTA+0, 2
L__Move3183:
;matrix3.c,231 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,232 :: 		A_4=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3184
	BCF        PORTA+0, 3
	GOTO       L__Move3185
L__Move3184:
	BSF        PORTA+0, 3
L__Move3185:
;matrix3.c,233 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,234 :: 		A_5=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3186
	BCF        PORTB+0, 5
	GOTO       L__Move3187
L__Move3186:
	BSF        PORTB+0, 5
L__Move3187:
;matrix3.c,235 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,237 :: 		B_1=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3188
	BCF        PORTB+0, 0
	GOTO       L__Move3189
L__Move3188:
	BSF        PORTB+0, 0
L__Move3189:
;matrix3.c,238 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,239 :: 		B_2=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3190
	BCF        PORTB+0, 1
	GOTO       L__Move3191
L__Move3190:
	BSF        PORTB+0, 1
L__Move3191:
;matrix3.c,240 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,241 :: 		B_3=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3192
	BCF        PORTB+0, 2
	GOTO       L__Move3193
L__Move3192:
	BSF        PORTB+0, 2
L__Move3193:
;matrix3.c,242 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,243 :: 		B_4=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3194
	BCF        PORTB+0, 3
	GOTO       L__Move3195
L__Move3194:
	BSF        PORTB+0, 3
L__Move3195:
;matrix3.c,244 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,245 :: 		B_5=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3196
	BCF        PORTB+0, 4
	GOTO       L__Move3197
L__Move3196:
	BSF        PORTB+0, 4
L__Move3197:
;matrix3.c,246 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,248 :: 		C_1=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3198
	BCF        PORTC+0, 0
	GOTO       L__Move3199
L__Move3198:
	BSF        PORTC+0, 0
L__Move3199:
;matrix3.c,249 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,250 :: 		C_2=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3200
	BCF        PORTC+0, 1
	GOTO       L__Move3201
L__Move3200:
	BSF        PORTC+0, 1
L__Move3201:
;matrix3.c,251 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,252 :: 		C_3=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3202
	BCF        PORTC+0, 2
	GOTO       L__Move3203
L__Move3202:
	BSF        PORTC+0, 2
L__Move3203:
;matrix3.c,253 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,254 :: 		C_4=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3204
	BCF        PORTC+0, 3
	GOTO       L__Move3205
L__Move3204:
	BSF        PORTC+0, 3
L__Move3205:
;matrix3.c,255 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,256 :: 		C_5=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3206
	BCF        PORTC+0, 4
	GOTO       L__Move3207
L__Move3206:
	BSF        PORTC+0, 4
L__Move3207:
;matrix3.c,257 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,259 :: 		D_1=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3208
	BCF        PORTD+0, 0
	GOTO       L__Move3209
L__Move3208:
	BSF        PORTD+0, 0
L__Move3209:
;matrix3.c,260 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,261 :: 		D_2=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3210
	BCF        PORTD+0, 1
	GOTO       L__Move3211
L__Move3210:
	BSF        PORTD+0, 1
L__Move3211:
;matrix3.c,262 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,263 :: 		D_3=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3212
	BCF        PORTD+0, 2
	GOTO       L__Move3213
L__Move3212:
	BSF        PORTD+0, 2
L__Move3213:
;matrix3.c,264 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,265 :: 		D_4=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3214
	BCF        PORTD+0, 3
	GOTO       L__Move3215
L__Move3214:
	BSF        PORTD+0, 3
L__Move3215:
;matrix3.c,266 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,267 :: 		D_5=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3216
	BCF        PORTD+0, 4
	GOTO       L__Move3217
L__Move3216:
	BSF        PORTD+0, 4
L__Move3217:
;matrix3.c,268 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,270 :: 		E_1=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3218
	BCF        PORTE+0, 0
	GOTO       L__Move3219
L__Move3218:
	BSF        PORTE+0, 0
L__Move3219:
;matrix3.c,271 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,272 :: 		E_2=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3220
	BCF        PORTE+0, 1
	GOTO       L__Move3221
L__Move3220:
	BSF        PORTE+0, 1
L__Move3221:
;matrix3.c,273 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,274 :: 		E_3=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3222
	BCF        PORTE+0, 2
	GOTO       L__Move3223
L__Move3222:
	BSF        PORTE+0, 2
L__Move3223:
;matrix3.c,275 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,276 :: 		E_4=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3224
	BCF        PORTD+0, 5
	GOTO       L__Move3225
L__Move3224:
	BSF        PORTD+0, 5
L__Move3225:
;matrix3.c,277 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,278 :: 		E_5=on;
	BTFSC      _on+0, 0
	GOTO       L__Move3226
	BCF        PORTD+0, 6
	GOTO       L__Move3227
L__Move3226:
	BSF        PORTD+0, 6
L__Move3227:
;matrix3.c,279 :: 		move3sub1();
	CALL       _move3sub1+0
;matrix3.c,281 :: 		}
L_end_Move3:
	RETURN
; end of _Move3

_main:

;matrix3.c,283 :: 		void main ()
;matrix3.c,285 :: 		ADCON1=0x87;
	MOVLW      135
	MOVWF      ADCON1+0
;matrix3.c,286 :: 		trisa=0x00;
	CLRF       TRISA+0
;matrix3.c,287 :: 		trisb=0x00;
	CLRF       TRISB+0
;matrix3.c,288 :: 		trisc=0x00;
	CLRF       TRISC+0
;matrix3.c,289 :: 		trisd=0x00;
	CLRF       TRISD+0
;matrix3.c,290 :: 		trise=0x00;
	CLRF       TRISE+0
;matrix3.c,291 :: 		porta=0x00;
	CLRF       PORTA+0
;matrix3.c,292 :: 		portb=0x00;
	CLRF       PORTB+0
;matrix3.c,293 :: 		portc=0x00;
	CLRF       PORTC+0
;matrix3.c,294 :: 		portd=0x00;
	CLRF       PORTD+0
;matrix3.c,295 :: 		porte=0x00;
	CLRF       PORTE+0
;matrix3.c,297 :: 		while (1)
L_main10:
;matrix3.c,299 :: 		Move1();
	CALL       _Move1+0
;matrix3.c,300 :: 		timer();
	CALL       _timer+0
;matrix3.c,301 :: 		Move2();
	CALL       _Move2+0
;matrix3.c,302 :: 		timer();
	CALL       _timer+0
;matrix3.c,303 :: 		Move3();
	CALL       _Move3+0
;matrix3.c,304 :: 		timer();
	CALL       _timer+0
;matrix3.c,305 :: 		}
	GOTO       L_main10
;matrix3.c,306 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
