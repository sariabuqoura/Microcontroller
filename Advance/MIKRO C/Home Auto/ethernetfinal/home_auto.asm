
_SPI_Ethernet_UserTCP:

;home_auto.c,42 :: 		unsigned int  SPI_Ethernet_UserTCP(unsigned char *remoteHost, unsigned int remotePort, unsigned int localPort, unsigned int reqLength, TEthPktFlags *flags)
;home_auto.c,45 :: 		if(localPort != 80) return(0);             // I listen only to web request on port 80
	MOVLW       0
	XORWF       FARG_SPI_Ethernet_UserTCP_localPort+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__SPI_Ethernet_UserTCP13
	MOVLW       80
	XORWF       FARG_SPI_Ethernet_UserTCP_localPort+0, 0 
L__SPI_Ethernet_UserTCP13:
	BTFSC       STATUS+0, 2 
	GOTO        L_SPI_Ethernet_UserTCP0
	CLRF        R0 
	CLRF        R1 
	GOTO        L_end_SPI_Ethernet_UserTCP
L_SPI_Ethernet_UserTCP0:
;home_auto.c,48 :: 		for(len = 0 ; len < 15 ; len++) getRequest[len] = SPI_Ethernet_getByte();
	CLRF        SPI_Ethernet_UserTCP_len_L0+0 
	CLRF        SPI_Ethernet_UserTCP_len_L0+1 
L_SPI_Ethernet_UserTCP1:
	MOVLW       0
	SUBWF       SPI_Ethernet_UserTCP_len_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__SPI_Ethernet_UserTCP14
	MOVLW       15
	SUBWF       SPI_Ethernet_UserTCP_len_L0+0, 0 
L__SPI_Ethernet_UserTCP14:
	BTFSC       STATUS+0, 0 
	GOTO        L_SPI_Ethernet_UserTCP2
	MOVLW       _getRequest+0
	ADDWF       SPI_Ethernet_UserTCP_len_L0+0, 0 
	MOVWF       FLOC__SPI_Ethernet_UserTCP+0 
	MOVLW       hi_addr(_getRequest+0)
	ADDWFC      SPI_Ethernet_UserTCP_len_L0+1, 0 
	MOVWF       FLOC__SPI_Ethernet_UserTCP+1 
	CALL        _SPI_Ethernet_getByte+0, 0
	MOVFF       FLOC__SPI_Ethernet_UserTCP+0, FSR1
	MOVFF       FLOC__SPI_Ethernet_UserTCP+1, FSR1H
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
	INFSNZ      SPI_Ethernet_UserTCP_len_L0+0, 1 
	INCF        SPI_Ethernet_UserTCP_len_L0+1, 1 
	GOTO        L_SPI_Ethernet_UserTCP1
L_SPI_Ethernet_UserTCP2:
;home_auto.c,49 :: 		getRequest[len] = 0;
	MOVLW       _getRequest+0
	ADDWF       SPI_Ethernet_UserTCP_len_L0+0, 0 
	MOVWF       FSR1 
	MOVLW       hi_addr(_getRequest+0)
	ADDWFC      SPI_Ethernet_UserTCP_len_L0+1, 0 
	MOVWF       FSR1H 
	CLRF        POSTINC1+0 
;home_auto.c,51 :: 		if(memcmp(getRequest, "GET /", 5)) return(0);  // only GET method
	MOVLW       _getRequest+0
	MOVWF       FARG_memcmp_s1+0 
	MOVLW       hi_addr(_getRequest+0)
	MOVWF       FARG_memcmp_s1+1 
	MOVLW       ?lstr1_home_auto+0
	MOVWF       FARG_memcmp_s2+0 
	MOVLW       hi_addr(?lstr1_home_auto+0)
	MOVWF       FARG_memcmp_s2+1 
	MOVLW       5
	MOVWF       FARG_memcmp_n+0 
	MOVLW       0
	MOVWF       FARG_memcmp_n+1 
	CALL        _memcmp+0, 0
	MOVF        R0, 0 
	IORWF       R1, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L_SPI_Ethernet_UserTCP4
	CLRF        R0 
	CLRF        R1 
	GOTO        L_end_SPI_Ethernet_UserTCP
L_SPI_Ethernet_UserTCP4:
;home_auto.c,53 :: 		if(!memcmp(getRequest+11, "ON", 2))        // do we have ON command
	MOVLW       _getRequest+11
	MOVWF       FARG_memcmp_s1+0 
	MOVLW       hi_addr(_getRequest+11)
	MOVWF       FARG_memcmp_s1+1 
	MOVLW       ?lstr2_home_auto+0
	MOVWF       FARG_memcmp_s2+0 
	MOVLW       hi_addr(?lstr2_home_auto+0)
	MOVWF       FARG_memcmp_s2+1 
	MOVLW       2
	MOVWF       FARG_memcmp_n+0 
	MOVLW       0
	MOVWF       FARG_memcmp_n+1 
	CALL        _memcmp+0, 0
	MOVF        R0, 0 
	IORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_SPI_Ethernet_UserTCP5
;home_auto.c,54 :: 		PORTB.F0 = 1;                // set PORTB bit0
	BSF         PORTB+0, 0 
	GOTO        L_SPI_Ethernet_UserTCP6
L_SPI_Ethernet_UserTCP5:
;home_auto.c,56 :: 		if(!memcmp(getRequest+11, "OFF", 3))        // do we have OFF command
	MOVLW       _getRequest+11
	MOVWF       FARG_memcmp_s1+0 
	MOVLW       hi_addr(_getRequest+11)
	MOVWF       FARG_memcmp_s1+1 
	MOVLW       ?lstr3_home_auto+0
	MOVWF       FARG_memcmp_s2+0 
	MOVLW       hi_addr(?lstr3_home_auto+0)
	MOVWF       FARG_memcmp_s2+1 
	MOVLW       3
	MOVWF       FARG_memcmp_n+0 
	MOVLW       0
	MOVWF       FARG_memcmp_n+1 
	CALL        _memcmp+0, 0
	MOVF        R0, 0 
	IORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L_SPI_Ethernet_UserTCP7
;home_auto.c,57 :: 		PORTB.F0 = 0;        // clear PORTB bit0
	BCF         PORTB+0, 0 
L_SPI_Ethernet_UserTCP7:
L_SPI_Ethernet_UserTCP6:
;home_auto.c,59 :: 		if (PORTB.F0)
	BTFSS       PORTB+0, 0 
	GOTO        L_SPI_Ethernet_UserTCP8
;home_auto.c,61 :: 		memcpy(indexPage+340, "#FFFF00", 6);        // highlight (yellow) ON
	MOVLW       _indexPage+340
	MOVWF       FARG_memcpy_d1+0 
	MOVLW       hi_addr(_indexPage+340)
	MOVWF       FARG_memcpy_d1+1 
	MOVLW       ?lstr4_home_auto+0
	MOVWF       FARG_memcpy_s1+0 
	MOVLW       hi_addr(?lstr4_home_auto+0)
	MOVWF       FARG_memcpy_s1+1 
	MOVLW       6
	MOVWF       FARG_memcpy_n+0 
	MOVLW       0
	MOVWF       FARG_memcpy_n+1 
	CALL        _memcpy+0, 0
;home_auto.c,62 :: 		memcpy(indexPage+431, "#4974E2", 6);        // clear OFF
	MOVLW       _indexPage+431
	MOVWF       FARG_memcpy_d1+0 
	MOVLW       hi_addr(_indexPage+431)
	MOVWF       FARG_memcpy_d1+1 
	MOVLW       ?lstr5_home_auto+0
	MOVWF       FARG_memcpy_s1+0 
	MOVLW       hi_addr(?lstr5_home_auto+0)
	MOVWF       FARG_memcpy_s1+1 
	MOVLW       6
	MOVWF       FARG_memcpy_n+0 
	MOVLW       0
	MOVWF       FARG_memcpy_n+1 
	CALL        _memcpy+0, 0
;home_auto.c,63 :: 		}
	GOTO        L_SPI_Ethernet_UserTCP9
L_SPI_Ethernet_UserTCP8:
;home_auto.c,66 :: 		memcpy(indexPage+340, "#4974E2", 6);        // clear ON
	MOVLW       _indexPage+340
	MOVWF       FARG_memcpy_d1+0 
	MOVLW       hi_addr(_indexPage+340)
	MOVWF       FARG_memcpy_d1+1 
	MOVLW       ?lstr6_home_auto+0
	MOVWF       FARG_memcpy_s1+0 
	MOVLW       hi_addr(?lstr6_home_auto+0)
	MOVWF       FARG_memcpy_s1+1 
	MOVLW       6
	MOVWF       FARG_memcpy_n+0 
	MOVLW       0
	MOVWF       FARG_memcpy_n+1 
	CALL        _memcpy+0, 0
;home_auto.c,67 :: 		memcpy(indexPage+431, "#FFFF00", 6);        // highlight (yellow) OFF
	MOVLW       _indexPage+431
	MOVWF       FARG_memcpy_d1+0 
	MOVLW       hi_addr(_indexPage+431)
	MOVWF       FARG_memcpy_d1+1 
	MOVLW       ?lstr7_home_auto+0
	MOVWF       FARG_memcpy_s1+0 
	MOVLW       hi_addr(?lstr7_home_auto+0)
	MOVWF       FARG_memcpy_s1+1 
	MOVLW       6
	MOVWF       FARG_memcpy_n+0 
	MOVLW       0
	MOVWF       FARG_memcpy_n+1 
	CALL        _memcpy+0, 0
;home_auto.c,68 :: 		}
L_SPI_Ethernet_UserTCP9:
;home_auto.c,70 :: 		len =  SPI_Ethernet_putConstString(httpHeader);               // HTTP header
	MOVLW       _httpHeader+0
	MOVWF       FARG_SPI_Ethernet_putConstString_ptr+0 
	MOVLW       hi_addr(_httpHeader+0)
	MOVWF       FARG_SPI_Ethernet_putConstString_ptr+1 
	MOVLW       higher_addr(_httpHeader+0)
	MOVWF       FARG_SPI_Ethernet_putConstString_ptr+2 
	CALL        _SPI_Ethernet_putConstString+0, 0
	MOVF        R0, 0 
	MOVWF       SPI_Ethernet_UserTCP_len_L0+0 
	MOVF        R1, 0 
	MOVWF       SPI_Ethernet_UserTCP_len_L0+1 
;home_auto.c,71 :: 		len += SPI_Ethernet_putConstString(httpMimeTypeHTML);  // with HTML MIME type
	MOVLW       _httpMimeTypeHTML+0
	MOVWF       FARG_SPI_Ethernet_putConstString_ptr+0 
	MOVLW       hi_addr(_httpMimeTypeHTML+0)
	MOVWF       FARG_SPI_Ethernet_putConstString_ptr+1 
	MOVLW       higher_addr(_httpMimeTypeHTML+0)
	MOVWF       FARG_SPI_Ethernet_putConstString_ptr+2 
	CALL        _SPI_Ethernet_putConstString+0, 0
	MOVF        R0, 0 
	ADDWF       SPI_Ethernet_UserTCP_len_L0+0, 1 
	MOVF        R1, 0 
	ADDWFC      SPI_Ethernet_UserTCP_len_L0+1, 1 
;home_auto.c,72 :: 		len += SPI_Ethernet_putString(indexPage);                           // HTML page first part
	MOVLW       _indexPage+0
	MOVWF       FARG_SPI_Ethernet_putString_ptr+0 
	MOVLW       hi_addr(_indexPage+0)
	MOVWF       FARG_SPI_Ethernet_putString_ptr+1 
	CALL        _SPI_Ethernet_putString+0, 0
	MOVF        SPI_Ethernet_UserTCP_len_L0+0, 0 
	ADDWF       R0, 1 
	MOVF        SPI_Ethernet_UserTCP_len_L0+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	MOVWF       SPI_Ethernet_UserTCP_len_L0+0 
	MOVF        R1, 0 
	MOVWF       SPI_Ethernet_UserTCP_len_L0+1 
;home_auto.c,73 :: 		return len; // return to the library with the number of bytes to transmit
;home_auto.c,74 :: 		}
L_end_SPI_Ethernet_UserTCP:
	RETURN      0
; end of _SPI_Ethernet_UserTCP

_SPI_Ethernet_UserUDP:

;home_auto.c,75 :: 		unsigned int  SPI_Ethernet_UserUDP(unsigned char *remoteHost, unsigned int remotePort, unsigned int destPort, unsigned int reqLength, TEthPktFlags *flags)
;home_auto.c,78 :: 		return 0; // back to the library with the length of the UDP reply
	CLRF        R0 
	CLRF        R1 
;home_auto.c,79 :: 		}
L_end_SPI_Ethernet_UserUDP:
	RETURN      0
; end of _SPI_Ethernet_UserUDP

_main:

;home_auto.c,80 :: 		void main()
;home_auto.c,82 :: 		ADCON1 |= 0x0F ;        // no analog inputs
	MOVLW       15
	IORWF       ADCON1+0, 1 
;home_auto.c,83 :: 		CMCON  |= 0x07 ;        // turn off comparators
	MOVLW       7
	IORWF       CMCON+0, 1 
;home_auto.c,85 :: 		PORTB.F0 = 0;
	BCF         PORTB+0, 0 
;home_auto.c,86 :: 		TRISB.F0 = 0;                // set PORTB.B0 as output (rele control pin)
	BCF         TRISB+0, 0 
;home_auto.c,90 :: 		SPI1_Init();
	CALL        _SPI1_Init+0, 0
;home_auto.c,92 :: 		SPI_Ethernet_Init(myMacAddr, myIpAddr, Spi_Ethernet_FULLDUPLEX) ;
	MOVLW       _myMacAddr+0
	MOVWF       FARG_SPI_Ethernet_Init_mac+0 
	MOVLW       hi_addr(_myMacAddr+0)
	MOVWF       FARG_SPI_Ethernet_Init_mac+1 
	MOVLW       _myIpAddr+0
	MOVWF       FARG_SPI_Ethernet_Init_ip+0 
	MOVLW       hi_addr(_myIpAddr+0)
	MOVWF       FARG_SPI_Ethernet_Init_ip+1 
	MOVLW       1
	MOVWF       FARG_SPI_Ethernet_Init_fullDuplex+0 
	CALL        _SPI_Ethernet_Init+0, 0
;home_auto.c,95 :: 		SPI_Ethernet_confNetwork(ipMask, gwIpAddr, dnsIpAddr);
	MOVLW       _ipMask+0
	MOVWF       FARG_SPI_Ethernet_confNetwork_ipMask+0 
	MOVLW       hi_addr(_ipMask+0)
	MOVWF       FARG_SPI_Ethernet_confNetwork_ipMask+1 
	MOVLW       _gwIpAddr+0
	MOVWF       FARG_SPI_Ethernet_confNetwork_gwIpAddr+0 
	MOVLW       hi_addr(_gwIpAddr+0)
	MOVWF       FARG_SPI_Ethernet_confNetwork_gwIpAddr+1 
	MOVLW       _dnsIpAddr+0
	MOVWF       FARG_SPI_Ethernet_confNetwork_dnsIpAddr+0 
	MOVLW       hi_addr(_dnsIpAddr+0)
	MOVWF       FARG_SPI_Ethernet_confNetwork_dnsIpAddr+1 
	CALL        _SPI_Ethernet_confNetwork+0, 0
;home_auto.c,97 :: 		while(1) {                 // do forever
L_main10:
;home_auto.c,98 :: 		SPI_Ethernet_doPacket();           // process incoming Ethernet packets
	CALL        _SPI_Ethernet_doPacket+0, 0
;home_auto.c,99 :: 		}
	GOTO        L_main10
;home_auto.c,100 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
