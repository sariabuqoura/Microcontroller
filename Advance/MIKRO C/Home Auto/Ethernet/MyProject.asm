
_SPI_Ethernet_UserTCP:

;MyProject.c,32 :: 		unsigned int SPI_Ethernet_UserTCP( char *remoteHost, unsigned int remotePort,unsigned int localPort, unsigned int reqLength)
;MyProject.c,35 :: 		if(localPort != 80)               // I listen only to web request on port 80
	MOVLW       0
	XORWF       FARG_SPI_Ethernet_UserTCP_localPort+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__SPI_Ethernet_UserTCP13
	MOVLW       80
	XORWF       FARG_SPI_Ethernet_UserTCP_localPort+0, 0 
L__SPI_Ethernet_UserTCP13:
	BTFSC       STATUS+0, 2 
	GOTO        L_SPI_Ethernet_UserTCP0
;MyProject.c,36 :: 		return(0);
	CLRF        R0 
	CLRF        R1 
	GOTO        L_end_SPI_Ethernet_UserTCP
L_SPI_Ethernet_UserTCP0:
;MyProject.c,39 :: 		for(len = 0 ; len < 15 ; len++) getRequest[len] = SPI_Ethernet_getByte();
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
;MyProject.c,40 :: 		getRequest[len] = 0;
	MOVLW       _getRequest+0
	ADDWF       SPI_Ethernet_UserTCP_len_L0+0, 0 
	MOVWF       FSR1 
	MOVLW       hi_addr(_getRequest+0)
	ADDWFC      SPI_Ethernet_UserTCP_len_L0+1, 0 
	MOVWF       FSR1H 
	CLRF        POSTINC1+0 
;MyProject.c,42 :: 		if(memcmp(getRequest, "GET /", 5)) return(0); // only GET method
	MOVLW       _getRequest+0
	MOVWF       FARG_memcmp_s1+0 
	MOVLW       hi_addr(_getRequest+0)
	MOVWF       FARG_memcmp_s1+1 
	MOVLW       ?lstr1_MyProject+0
	MOVWF       FARG_memcmp_s2+0 
	MOVLW       hi_addr(?lstr1_MyProject+0)
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
;MyProject.c,44 :: 		if(!memcmp(getRequest+11, "ON", 2)) // do we have ON command
	MOVLW       _getRequest+11
	MOVWF       FARG_memcmp_s1+0 
	MOVLW       hi_addr(_getRequest+11)
	MOVWF       FARG_memcmp_s1+1 
	MOVLW       ?lstr2_MyProject+0
	MOVWF       FARG_memcmp_s2+0 
	MOVLW       hi_addr(?lstr2_MyProject+0)
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
;MyProject.c,45 :: 		PORTB.F0 = 1; // set PORTB bit0
	BSF         PORTB+0, 0 
	GOTO        L_SPI_Ethernet_UserTCP6
L_SPI_Ethernet_UserTCP5:
;MyProject.c,47 :: 		if(!memcmp(getRequest+11, "OFF", 3)) // do we have OFF command
	MOVLW       _getRequest+11
	MOVWF       FARG_memcmp_s1+0 
	MOVLW       hi_addr(_getRequest+11)
	MOVWF       FARG_memcmp_s1+1 
	MOVLW       ?lstr3_MyProject+0
	MOVWF       FARG_memcmp_s2+0 
	MOVLW       hi_addr(?lstr3_MyProject+0)
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
;MyProject.c,48 :: 		PORTB.F0 = 0; // clear PORTB bit0
	BCF         PORTB+0, 0 
L_SPI_Ethernet_UserTCP7:
L_SPI_Ethernet_UserTCP6:
;MyProject.c,50 :: 		if (PORTB.F0)
	BTFSS       PORTB+0, 0 
	GOTO        L_SPI_Ethernet_UserTCP8
;MyProject.c,52 :: 		memcpy(indexPage+340, "#FFFF00", 6); // highlight (yellow) ON
	MOVLW       _indexPage+340
	MOVWF       FARG_memcpy_d1+0 
	MOVLW       hi_addr(_indexPage+340)
	MOVWF       FARG_memcpy_d1+1 
	MOVLW       ?lstr4_MyProject+0
	MOVWF       FARG_memcpy_s1+0 
	MOVLW       hi_addr(?lstr4_MyProject+0)
	MOVWF       FARG_memcpy_s1+1 
	MOVLW       6
	MOVWF       FARG_memcpy_n+0 
	MOVLW       0
	MOVWF       FARG_memcpy_n+1 
	CALL        _memcpy+0, 0
;MyProject.c,53 :: 		memcpy(indexPage+431, "#4974E2", 6); // clear OFF
	MOVLW       _indexPage+431
	MOVWF       FARG_memcpy_d1+0 
	MOVLW       hi_addr(_indexPage+431)
	MOVWF       FARG_memcpy_d1+1 
	MOVLW       ?lstr5_MyProject+0
	MOVWF       FARG_memcpy_s1+0 
	MOVLW       hi_addr(?lstr5_MyProject+0)
	MOVWF       FARG_memcpy_s1+1 
	MOVLW       6
	MOVWF       FARG_memcpy_n+0 
	MOVLW       0
	MOVWF       FARG_memcpy_n+1 
	CALL        _memcpy+0, 0
;MyProject.c,54 :: 		}
	GOTO        L_SPI_Ethernet_UserTCP9
L_SPI_Ethernet_UserTCP8:
;MyProject.c,57 :: 		memcpy(indexPage+340, "#4974E2", 6); // clear ON
	MOVLW       _indexPage+340
	MOVWF       FARG_memcpy_d1+0 
	MOVLW       hi_addr(_indexPage+340)
	MOVWF       FARG_memcpy_d1+1 
	MOVLW       ?lstr6_MyProject+0
	MOVWF       FARG_memcpy_s1+0 
	MOVLW       hi_addr(?lstr6_MyProject+0)
	MOVWF       FARG_memcpy_s1+1 
	MOVLW       6
	MOVWF       FARG_memcpy_n+0 
	MOVLW       0
	MOVWF       FARG_memcpy_n+1 
	CALL        _memcpy+0, 0
;MyProject.c,58 :: 		memcpy(indexPage+431, "#FFFF00", 6); // highlight (yellow) OFF
	MOVLW       _indexPage+431
	MOVWF       FARG_memcpy_d1+0 
	MOVLW       hi_addr(_indexPage+431)
	MOVWF       FARG_memcpy_d1+1 
	MOVLW       ?lstr7_MyProject+0
	MOVWF       FARG_memcpy_s1+0 
	MOVLW       hi_addr(?lstr7_MyProject+0)
	MOVWF       FARG_memcpy_s1+1 
	MOVLW       6
	MOVWF       FARG_memcpy_n+0 
	MOVLW       0
	MOVWF       FARG_memcpy_n+1 
	CALL        _memcpy+0, 0
;MyProject.c,59 :: 		}
L_SPI_Ethernet_UserTCP9:
;MyProject.c,60 :: 		len = SPI_Ethernet_putConstString(httpHeader); // HTTP header
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
;MyProject.c,61 :: 		len += SPI_Ethernet_putConstString(httpMimeTypeHTML); // with HTML MIME type
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
;MyProject.c,62 :: 		len += SPI_Ethernet_putString(indexPage); // HTML page fi rst part
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
;MyProject.c,63 :: 		return len; // return to the library with the number of bytes to transmit
;MyProject.c,64 :: 		}
L_end_SPI_Ethernet_UserTCP:
	RETURN      0
; end of _SPI_Ethernet_UserTCP

_SPI_Ethernet_UserUDP:

;MyProject.c,65 :: 		unsigned int SPI_Ethernet_UserUDP( char *remoteHost, unsigned int remotePort,unsigned int destPort, unsigned int reqLength)
;MyProject.c,67 :: 		return 0; // back to the library with the length of the UDP reply
	CLRF        R0 
	CLRF        R1 
;MyProject.c,68 :: 		}
L_end_SPI_Ethernet_UserUDP:
	RETURN      0
; end of _SPI_Ethernet_UserUDP

_main:

;MyProject.c,69 :: 		void main()
;MyProject.c,71 :: 		ADCON1 |= 0x0F ; // no analog inputs
	MOVLW       15
	IORWF       ADCON1+0, 1 
;MyProject.c,72 :: 		CMCON |= 0x07 ; // turn off comparators
	MOVLW       7
	IORWF       CMCON+0, 1 
;MyProject.c,73 :: 		PORTB.F0 = 0;
	BCF         PORTB+0, 0 
;MyProject.c,74 :: 		TRISB.F0 = 0; // set PORTB.B0 as output (rele control pin)
	BCF         TRISB+0, 0 
;MyProject.c,77 :: 		Spi1_Init();
	CALL        _SPI1_Init+0, 0
;MyProject.c,79 :: 		Spi_Ethernet_Init(myMacAddr,myIpAddr,Spi_Ethernet_FULLDUPLEX);
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
;MyProject.c,82 :: 		SPI_Ethernet_confNetwork(ipMask, gwIpAddr, dnsIpAddr);
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
;MyProject.c,83 :: 		while(1)
L_main10:
;MyProject.c,85 :: 		SPI_Ethernet_doPacket(); // process incoming Ethernet packets
	CALL        _SPI_Ethernet_doPacket+0, 0
;MyProject.c,86 :: 		}
	GOTO        L_main10
;MyProject.c,87 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
