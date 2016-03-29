                            XDEF WAITFORRELEASE
    XREF DELAY
    XREF PORT_U


WAITFORRELEASE:


			PSHX
			PSHY
			PSHD 
            
            WAIT:    LDAA PORT_U
                ANDA #%00001111  ;set the high nibble of keypad signal being sent to us to 0, 
                                  ;were waiting for port_u low nibble (its output) to be zero = no key being pressed.
                CMPA  #$0F
                bne WAIT
                
                
                JSR      DELAY   ; test, wait, test, wait ,test ,wait    
              
                
               
               
            PULD
            PULY
            PULX
            
            
               
                RTS  
    