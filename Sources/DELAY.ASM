  XDEF DELAY        


DELAY:
	  PSHX
	  PSHY
	  PSHD


		
                   LDY #4000
        DELAYLOOP: DEY
                   BNE DELAYLOOP
                   
                   
                   
                   
                   
       PULD
       PULY
       PULX            
                   
                   RTS