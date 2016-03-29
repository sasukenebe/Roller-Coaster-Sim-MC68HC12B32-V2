		XDEF HEXPAD
		;THIS PROGRAM SWEEPS THROUGH THE ENTIRE HEXPAD ONCE, THEN LEAVES BACK TO MAIN
		;VALUE OF HEXPAD KEY PRESSED IS STORED IN HEXVALUE VARIABLE OF BYTE SIZE
		
		
		
      XREF __SEG_END_SSTACK      ; symbol defined by the linker for the end of the stack
			XREF DELAY
			XREF VAR_1
			XREF VAR_2
			XREF WAITFORRELEASE
			XREF LEFT_SHIFT_STATUS
			XREF PORT_S
			XREF LOOKUP
			XREF TABLE
			XREF PORT_U
			XREF HEXVALUE
			XREF HEXKEYPRESSED
;****************************************************************************************************
HEXPAD:

		PSHX
		PSHY
		PSHD
								   		

;**********************ROW CHECK LOOP*****************************************************************          
firstrow:     LDX #TABLE            ;load rows vector
   
rowloop:      LDAA  0,X           ;send to current row,
              INX             
              CMPA  #$FF
              
              BEQ     LEAVEHEXPAD
                                
              STAA  PORT_U            ;write current row to port_u in order to get a bounceback and check values
                                     
              JMP keypadlookup    ;check row subroutine to read portu current row
                                              
;;;;;;;;                

    
keypadlookup:
                LDY #LOOKUP     ;initialize keypad value list
                LDAB #$00       ;load counter (B) with 0
                
looplookup:                   
                
                LDAA  1,Y+       ;Y is at current value being checked                          
  
                                ;move Y to point to next value
                
                CMPA  #$FF      ;are we at end of list?
                BEQ   rowloop   ;if at end of list, go back to row loop
                INCB
                CMPA  PORT_U    ;compare what keypad sends us to table
                BNE  looplookup  ;if keypad value is different, loop and try next value
                                   
                           
;**************A KEY HAS BEEN PRESSED AND CORRESPONDING VALUE FOUND ON KEYPAD***************************
                DECB    				;B NOW HAS THE VALUE OF THE HEXPAD AS AN INTEGER
                STAB HEXVALUE
 outputLED:                  
                
          

               ;putting a delay here breaks it. why?

                ;JSR     WAITFORRELEASE
                ;MOVB    HEXVALUE,PORT_S        ;store index of current value in
                MOVB #1,HEXKEYPRESSED
                JSR     DELAY        ;musT USE JSR in order to use RTS
                ;JSR WAITFORRELEASE
      	           PULD
            			 PULY
            			 PULX   
             
               			 RTS		;END HEXPAD 
      
      
      
;*********************KEY HAS NOT BEEN PRESSED***********************************************************          
LEAVEHEXPAD:
		   MOVB #0,HEXKEYPRESSED
             PULD
             PULY
             PULX   
             
                RTS		;END HEXPAD  
    