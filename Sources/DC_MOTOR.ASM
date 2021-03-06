      
      
     

        XDEF DC_MOTOR
        
            XREF DISP
            XREF SECOND
            XREF COUNT
            XREF TENS
            XREF ONES
            XREF PORT_S
            XREF PORT_S_DDR
            XREF RTIENABLEPORT
            XREF RTIENABLE
            XREF RTICTL
		      	XREF PORT_U
		      	XREF PORT_U_DDR
		      	XREF PORT_U_PSR
		      	XREF PORT_U_CR
		      	XREF LOOKUP
		      	XREF TABLE
		      	XREF PORT_T
		      	XREF PORT_T_DDR
		      	XREF RTIFLAG
		      	XREF hundredsDigit
	      		XREF tensDigit
	      		XREF onesDigit
	      		XREF stringpointer
	      		XREF HEXVALUE
	      		XREF PORT_P
	      		XREF PORT_P_DDR
	      		XREF SWITCHVALUE
	      		XREF STEPPERSPEED_COUNTER
	      		XREF STEPPER_SEQUENCE
	      		XREF STEPPERSEQUENCE_COUNT
	      		XREF STEPPERSPEED
	      		XREF HEXKEYPRESSED
	      		XREF STEPPERMOTOR_DIRECTION	 	;0 = REVERSE 1 = FORWARD
	      		XREF STEPPERSEQUENCEREVERSE_COUNT
	      		XREF STEPPER_SEQUENCE_REVERSE
	      		XREF SWITCHFLIPPED
	      		XREF ONTIME
	      		XREF OFFTIME
	      		XREF DC_FLAG
	      		XREF DC_MOTORCOUNTER
	      	  XREF DC_SPEED
	      	  XREF RIDEINMOTIONFLAG
			
        
 DC_MOTOR:;**************************************************************************************************************
        PSHX
        PSHY
        PSHD
        
    
           ;ONE CYLCE IS 520.8333 RTIS
    
    LDAA RIDEINMOTIONFLAG
    CMPA #0
    BEQ END_DCMOTOR
    
        
    LDAA    DC_FLAG
		CMPA    #$01
		BEQ	MOTOR_ON_ROUTINE            ;DC_FLAG=1 MOTOR ON
		CMPA	#$02
		BEQ	MOTOR_OFF_ROUTINE           ;RTI_FLAG=2 MOTOR OFF


MOTOR_MATH:		
      LDAB	DC_SPEED          ;RTI_FLAG=0   ;WERE DONE WITH OUR CYCLE, START A NEW ONE WITH MOTOR MATH
			LDAA	#15     ;15 HEX???
			SBA	                            ;A-B -->A
      STAA  OFFTIME
			STAB	ONTIME                          

MOTOR_ON_ROUTINE:	
      
      MOVB	#$01,DC_FLAG              ;COME TO MOTOR ON, IF WE HAVE NO POWER TO SEND, WE WILL JUMP TO MOTOR OFF
		  LDAA	ONTIME
			CMPA	#$00
			BEQ	MOTOR_OFF_ROUTINE
			BSET	PORT_T, #%00001000
			DECA                      ;DECREMENT ONTIME
			STAA	ONTIME
			
			
			JMP	END_DCMOTOR                 ;YOU HAVE DECREMENTED THE ONTIME AND TOLD MOTOR TO SPIN, RESET THE COUNTER AND LEAVE



MOTOR_OFF_ROUTINE:      MOVB	#$02,DC_FLAG
			LDAA	OFFTIME
			CMPA	#$00
			BEQ	RESET_DC      ;IF HERE, WE USED OUR LAST MOTOR OFF, SO WE NEED TO SET THE FLAG TO 0 TO DO MOTOR MATH
			
			BCLR	PORT_T, #%00001000
			DECA                      ;DECREMENT OFFTIME
			STAA	OFFTIME
			
			JMP END_DCMOTOR
			
			
			
			
			RESET_DC:
			      
			      MOVB	#$00, DC_FLAG 
		      	MOVB #12,DC_MOTORCOUNTER                      ;RESET THE DC_MOTORCOUNTER, WAIT 4 MORE ISRS TO REDO IT 
			
			END_DCMOTOR:
        	MOVB #12,DC_MOTORCOUNTER                      ;RESET THE DC_MOTORCOUNTER, WAIT 4 MORE ISRS TO REDO IT 
        PULD
        PULY
        PULX
        
        RTS