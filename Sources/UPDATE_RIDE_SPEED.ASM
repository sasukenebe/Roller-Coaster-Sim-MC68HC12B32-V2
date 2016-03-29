      XDEF UPDATE_RIDE_SPEED
      XREF TOTALRIDESPEED
      XREF TOTALRIDESPEED_CHANGEDFLAG
      XREF DC_SPEED
      XREF STEPPERSPEED
      XREF CURRENTRIDEPART
      XREF CURRENTRIDEPARTTIMER
      XREF BOTHSWITCHSAME
      XREF SWITCH_LSBHIGH
      XREF SWITCH_MSBHIGH
      XREF STARTRIDEFLAG
      XREF PORT_T
      XREF RIDEINMOTIONFLAG
      
      
      
      
      
      UPDATE_RIDE_SPEED:
      
      PSHX
      PSHY
      PSHD
      
      
      
      
      LDAA STARTRIDEFLAG
      CMPA #1
      BEQ GO_VERY_END_JMP
      JMP DONT_GO_VERY_END
      
      
      LDAA RIDEINMOTIONFLAG
      CMPA #0
      BEQ MAKESUREMOTORSAREOFF
      
      JMP DONT_GO_VERY_END
      
      MAKESUREMOTORSAREOFF:
      
      BCLR PORT_T, #%00001000
      MOVB #0,DC_SPEED
      MOVW #0,STEPPERSPEED
 GO_VERY_END_JMP:
 	JMP GO_VERY_END     
    	
    	
    	
    	DONT_GO_VERY_END:
    	
    	
      
      LDAA TOTALRIDESPEED
      CMPA #1
      BEQ SLOW
      
      LDAA TOTALRIDESPEED
      CMPA #2
      BEQ MEDIUM
      
      LDAA TOTALRIDESPEED
      CMPA #3
      BEQ FAST
      
      LDAA TOTALRIDESPEED
      CMPA #4
      BEQ SUICIDE
      
      JMP END_UPDATE_RIDE_SPEED
   
   


    





      
 SLOW:
      
      
      MOVB #10,DC_SPEED
      MOVW #20,STEPPERSPEED
      
      
      JMP END_UPDATE_RIDE_SPEED
      
      
  END_SLOW:
      
      
      
      
      
 MEDIUM:
 
      
      MOVB #11,DC_SPEED
      MOVW #21,STEPPERSPEED
      
      
      JMP END_UPDATE_RIDE_SPEED
      
      
  END_MEDIUM:
     
     
     
     
       
  FAST:
  
       
       MOVB #12,DC_SPEED
       MOVW #22,STEPPERSPEED
       
       
       JMP END_UPDATE_RIDE_SPEED
       
       
       
  END_FAST:
       
     
     
     
     
     
  SUICIDE:
  
       
       MOVB #13,DC_SPEED
       MOVW #23,STEPPERSPEED
       
       JMP END_UPDATE_RIDE_SPEED
  
  
  END_SUICIDE:


      END_UPDATE_RIDE_SPEED:
      
      
      
      
      
      
      ;NOW WE CHECK WHAT RIDE PART WE HAVE....... AND MODIFY THE STANDARD SPEED BASED ON THIS.....
      
      ;******************************************************************************************
   
      
      
      
      
      
      
      LDAA CURRENTRIDEPART
      CMPA #1
      BEQ LEFT
      
      
      LDAA CURRENTRIDEPART
      CMPA #2
      BEQ RIGHT
      
      
      LDAA CURRENTRIDEPART
      CMPA #3
      BEQ HILL
      
      
      LDAA CURRENTRIDEPART
      CMPA #4
      BEQ STR8
      
      
      LDAA CURRENTRIDEPART
      CMPA #5
      BEQ BEGIN
      
      LDAA CURRENTRIDEPART
      CMPA #6
      BEQ END
      
    
    
    
    
    
    
		    
		    LEFT:
		    
		    
		    
		    
		    
		    
		    
		    JMP END_CURRENTRIDEPART_CHECK
		    RIGHT:
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		     JMP END_CURRENTRIDEPART_CHECK
		    HILL:
		    
		    
		    
		    
		    
		    
		     JMP END_CURRENTRIDEPART_CHECK
		    STR8:
		    
		    
		    
		    
		    
		    
		    
		    
		     JMP END_CURRENTRIDEPART_CHECK
		    BEGIN:
		    
		    
		    
		    
		    
		    
		    
		     JMP END_CURRENTRIDEPART_CHECK
		    END:  







 		JMP END_CURRENTRIDEPART_CHECK
 
    END_CURRENTRIDEPART_CHECK:
    
    
    
    
    
    
    ; ;**********************************************************
    				;SWITCHES???
    				
    				
    				
    				LDAA BOTHSWITCHSAME
    				CMPA #1
    				BEQ GO_VERY_END
    				
    				LDAA SWITCH_LSBHIGH
    				CMPA #1
    				BEQ LOWER_SPEED_CAUSE_SWITCH
    				
    				LDAA SWITCH_MSBHIGH
    				CMPA #1
    				BEQ RAISE_SPEED_CAUSE_SWITCH
    				
    				
    				
    				
    				
    				;IF WE ARE HERE NO SWITCH BULLSHIT OCCURED
    				
    				
    				JMP GO_VERY_END
    
    
    
   LOWER_SPEED_CAUSE_SWITCH:
   		
   		DEC DC_SPEED
   		DEC DC_SPEED
   		
   		
   		   		
   		DEC DC_SPEED
   		DEC DC_SPEED
   		
   		
   		
   		
   			LDX STEPPERSPEED
   			DEX
   			STX STEPPERSPEED
   		
   			LDX STEPPERSPEED
   			DEX
   			STX STEPPERSPEED
   			
   			
   			
   			
   			
   			   			LDX STEPPERSPEED
   			DEX
   			STX STEPPERSPEED
   		
   			LDX STEPPERSPEED
   			DEX
   			STX STEPPERSPEED
   		
   
   
   
   
   
   
   			JMP GO_VERY_END
   RAISE_SPEED_CAUSE_SWITCH:
   
   			LDX STEPPERSPEED
   			INX
   			STX STEPPERSPEED
   		   	
   		   	LDX STEPPERSPEED
   			INX
   			STX STEPPERSPEED
   			
   			
   			
   			
   			
   			LDX STEPPERSPEED
   			INX
   			STX STEPPERSPEED
   		   	
   		   	LDX STEPPERSPEED
   			INX
   			STX STEPPERSPEED
   			
   			
   			
   			
   			
   			
   			
   			INC DC_SPEED
   			INC DC_SPEED
     
      		INC DC_SPEED
   			INC DC_SPEED
    
    
    
    
    
    
    			JMP GO_VERY_END
    
    
    
    
    
    
    
    ;SWITCHES
    
        ;BOTHSWITCHSAME
        ;BOTHSWITCHESHIGH
        ;BOTHSWITCHESLOW 
             
      
      
      
      
      MOVB #0,TOTALRIDESPEED_CHANGEDFLAG
      
  GO_VERY_END:    
      PULD
      PULY
      PULX
      
      RTS