              XDEF GET_CLOCK_VALUES


              XREF SECONDS
              XREF HOURS
              XREF MINUTES
              XREF TENMINUTES
              XREF ONEMINUTES
              XREF TENSECONDS
              XREF ONESECONDS
              XREF TENHOURS
              XREF ONEHOURS
              
              XREF SECONDSCHANGED
              XREF HOURSCHANGED
              XREF MINUTESCHANGED
              
              XREF TENMONTHSINPUT
              XREF TENDAYSINPUT
              XREF MONTHSINPUT
              XREF DAYSINPUT
              XREF DATECHANGEDFLAG
			XREF TIMECHANGEDFLAG
			
			
			XREF TENHOURSINPUT
			XREF HOURSINPUT
			XREF TENMINUTESINPUT
			XREF MINUTESINPUT
			
			XREF TENSECONDSINPUT
			XREF SECONDSINPUT
			
			
              
              
              
              
             
GET_CLOCK_VALUES:






          
        PSHX
        PSHY
        PSHD
        
        
        ;LDAA DATECHANGEDFLAG				;IF DATE WAS CHANGED, UPDATE VALUES AND LOWER FLAG
        ;CMPA #1	
        ;BEQ UPDATE_DATE_VALUES
        
        ;JMP END_UPDATE_DATE_VALUES
        
        
        ;UPDATE_DATE_VALUES:
        					;TURN
        ;LDAA TENMONTHSINPUT
        ;ADDA #$30
        ;STAA TENMONTHSINPUT
        
        ;LDAA MONTHSINPUT
        ;ADDA #$30
        ;STAA TENMONTHSINPUT
        
        
        ;LDAA TENDAYSINPUT
        ;ADDA #$30
        ;STAA TENMONTHSINPUT
        
        
        ;LDAA DAYSINPUT
        ;ADDA #$30
        ;STAA TENMONTHSINPUT
        
        
        
        ;MOVB #0,DATECHANGEDFLAG
        
        ;END_UPDATE_DATE_VALUES:
        
        
        
CHECK_TIME_CHANGED_BY_MAIN_MENU      

;THIS WILL BE DONE IN THE CHANGE SECONDS SECTION OF CHANGE TIME IN DECIDE STATE
 
 
END_CHECK_TIME_CHANGED_BY_MAIN_MENU:













       
          LDAA SECONDSCHANGED
          CMPA #1
          BEQ CHANGE_SECONDS            ;IF SECONDSCHANGED, GO TO SECONDSCHANGE
          BRA END_CHANGE_SECONDS

      	 
CHANGE_SECONDS:

            MOVB #0,SECONDSCHANGED        ;RESET FLAG 
                   
           	LDX #10
           	CLRA						          
            LDAB   SECONDS
                                             ;GET RID OF HIGH BYTE, SECONDS IS ONLY 1 BYTE
            IDIV      
            
            
            STAB		 ONESECONDS
            XGDX                       ;SWAP D AND X, OTHERWISE X STORES ON HIGH BIT OR SOME FUCKING LAME ASS STUPID SHIT, I.E. 5 WASTED HOURS
            STAB      TENSECONDS              
                                    ;(d/x) answer in x remainder in D
           
                
                LDAB TENSECONDS
                ADDB #$30
                STAB TENSECONDS
                
                LDAB ONESECONDS
                ADDB #$30
                STAB ONESECONDS

END_CHANGE_SECONDS:
            
            
            LDAA MINUTESCHANGED
            CMPA #1
            BEQ CHANGE_MINUTES
            BRA END_CHANGE_MINUTES          
            
            
            ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            
           
 CHANGE_MINUTES: 
 
            MOVB #0,MINUTESCHANGED        ;RESET FLAG 
                     
           	LDX #10
           	CLRA						          
            LDAB    MINUTES
                                    ;GET RID OF HIGH BYTE, SECONDS IS ONLY 1 BYTE
            IDIV      
                                    ;(D/X)   store answer in X remainder in D 
                          
            STAB	 ONEMINUTES
            XGDX
            STAB     TENMINUTES
                            
                LDAB TENMINUTES
                ADDB #$30
                STAB TENMINUTES
                
                LDAB ONEMINUTES
                ADDB #$30
                STAB ONEMINUTES
                
            
 END_CHANGE_MINUTES:
 
 
                  LDAA HOURSCHANGED
                  CMPA #1
                  BEQ CHANGE_HOURS
                  BRA END_CHANGE_HOURS          
                  
            
            ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            
CHANGE_HOURS:  

            MOVB #0,HOURSCHANGED        ;RESET FLAG 
                     
            LDX #10	
            CLRA					          
            LDAB    HOURS
                             ;GET RID OF HIGH BYTE, SECONDS IS ONLY 1 BYTE
            IDIV      
                                    ;(D/X)   store answer in X remainder in D 
                          
                                    ;(d/x) answer in x remainder in D
            STAB		ONEHOURS
            XGDX
            STAB         TENHOURS
                    
                      LDAB TENHOURS
                      ADDB #$30
                      STAB TENHOURS
                      
                      LDAB ONEHOURS
                      ADDB #$30
                      STAB ONEHOURS

            
            
            
 END_CHANGE_HOURS:
            
            

;YOU HAVE TO ADD 30 TO TURN THEM ALL TO ASCII




END_GET_CLOCK_VALUES:


      PULD
      PULY
      PULX
      
      RTS



