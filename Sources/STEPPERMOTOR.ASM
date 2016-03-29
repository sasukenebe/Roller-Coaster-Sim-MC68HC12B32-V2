     ;SOME COUNTER WILL HAPPEN HERE, THAT WILL BE ADDED TO A POINTER TO TELL YOU WHERE YOU ARE IN YOURE SEQUENCE
     ;I.E. LDAA X,MOTORSEQUENCECOUNT
           ;STAA PORT_P
           
          
          
          
           ;THIS CODE SHOULD ONLY OUTPUT ONE VALUE OF THE SEQUENCE TO STEPPER MOTOR, THEN LEAVE 
           
           
           ;STEPPER MOTOR MOVES BY SENDING CERTAIN SEQUENCE TO THE MOTOR AT PORT_P 
     
      XDEF STEPPERMOTOR
      
      XREF PORT_P
      XREF STEPPER_SEQUENCE
      XREF STEPPERSPEED_COUNTER
      XREF STEPPERSPEED
      XREF DELAY
      XREF STEPPERSEQUENCE_COUNT    ; USED TO RIFLE THROUGH THE SEQUENCE AS AN OFFSET
      XREF PORT_S
      XREF STEPPERMOTOR_DIRECTION
      XREF STEPPERSEQUENCEREVERSE_COUNT
      XREF STEPPER_SEQUENCE_REVERSE
      XREF SWITCHMSBHIGH
   	  XREF SWITCHMSBLOW	
   	  XREF SWITCHESOFF
      XREF STEPPERMOTORFLAG




STEPPERMOTOR:
                            ;JUMPS HERE AFTER STEPPERSPEED_COUNTER  MILLISECONDS
        PSHX
        PSHY
        PSHD
        
        LDAA STEPPERMOTORFLAG
        CMPA #1
        BNE ENDSTEPPERMOTOR
        MOVB #0,STEPPERMOTORFLAG
        
        
        ;STEPPERMOTOR_DIRECTION = 0 REVERSE   1 FORWARD
        
        LDAA STEPPERMOTOR_DIRECTION
        CMPA #0
        BEQ  STEPPERMOTORREVERSE
   
   
   
        
STEPPERMOTORFORWARD:;************************************************************************************
  
        LDX  STEPPERSEQUENCE_COUNT          			 ;UPON ENTER, 
       
        LDAB STEPPER_SEQUENCE,X
        CMPB #$FF
       
        BEQ  AT_TERMINATOR                             ;IF YOURE AT TERMINATOR, RESET STEPPERSEQUENCE_COUNT TO 0

        ;ELSE STORE THE VALUE AND GO TO NEXT ONE, THEN EXIT
       
        STAB PORT_P                                    ;STORE WHATEVER VALUE OF SEQUENCE YOU ARE AT TO MOTOR
        INX
        STX STEPPERSEQUENCE_COUNT
        MOVW STEPPERSPEED,STEPPERSPEED_COUNTER 		;RESET THE TIMER TILL NEXT VALUE IS SENT

		BRA ENDSTEPPERMOTOR



STEPPERMOTORREVERSE:;************************************************************************************



        LDX  STEPPERSEQUENCEREVERSE_COUNT          			 ;UPON ENTER, 
       
        LDAB STEPPER_SEQUENCE_REVERSE,X
        CMPB #$FF
       
        BEQ  AT_TERMINATOR_REVERSE                             ;IF YOURE AT TERMINATOR, RESET STEPPERSEQUENCE_COUNT TO 0

        ;ELSE STORE THE VALUE AND GO TO NEXT ONE, THEN EXIT
       
        STAB PORT_P                                    ;STORE WHATEVER VALUE OF SEQUENCE YOU ARE AT TO MOTOR
        INX
        STX STEPPERSEQUENCEREVERSE_COUNT
        MOVW STEPPERSPEED,STEPPERSPEED_COUNTER 		;RESET THE TIMER TILL NEXT VALUE IS SENT

		
		
		
	 BRA ENDSTEPPERMOTOR
;******************************************************************************************
;8MHZ/(2^N+1) * 2^m






    BRA ENDSTEPPERMOTOR

ENDSTEPPERMOTOR:



      PULD
      PULY
      PULX
      
      RTS
      
      
      
 AT_TERMINATOR:;*************************************************************************************************
              MOVW #0,STEPPERSEQUENCE_COUNT          ;IF AT THE TERMINATOR, SET COUNT TO 0, EXIT THIS JSR
              MOVW STEPPERSPEED,STEPPERSPEED_COUNTER
              
              
              PULD
              PULY
              PULX
              
              RTS
AT_TERMINATOR_REVERSE:
              MOVW #0,STEPPERSEQUENCEREVERSE_COUNT          ;IF AT THE TERMINATOR, SET COUNT TO 0, EXIT THIS JSR
              MOVW STEPPERSPEED,STEPPERSPEED_COUNTER
              
              
              PULD
              PULY
              PULX
              
              RTS
          