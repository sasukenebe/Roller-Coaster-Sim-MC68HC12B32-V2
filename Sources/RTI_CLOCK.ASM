

         XDEF RTI_CLOCK
         XREF Entry, _Startup
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
	      		XREF ONTIME
	      		XREF OFFTIME
	      		;**FLAGS******
	      		XREF DC_FLAG
	      	  XREF PUSHBUTTONFLAG
	      	  XREF SECONDSCHANGED
	      	  XREF MINUTESCHANGED
	      	  XREF HOURSCHANGED
	      	  XREF STEPPERMOTORFLAG
	      	  XREF BOTHSWITCHESHIGH
	      	  XREF BOTHSWITCHESLOW
	      	  XREF WELCOMEFLAG
	      	  XREF MAINMENUFLAG
	      	  XREF MAINMENU1FLAG
	      	  XREF MAINMENU2FLAG
	      	  XREF MAINMENU3FLAG
	      	  XREF MAINMENU4FLAG
	      	  XREF SONGFLAG
	      	  XREF CURRENTSONGPART
	      	  
	      	  XREF RIDEINMOTIONFLAG
	      	  XREF PASSWORDLOCKED
	      	  XREF PASSWORDUNLOCKED
	      	  ;****END FLAGS
	      	  
	      	  ;****TIMERS******
	      	  XREF PUSHBUTTONTIMER
	      	  XREF WELCOMETIMER

	      		XREF DC_MOTORCOUNTER
	      	  XREF DC_SPEED
	      	  XREF STRING_COUNTER
	 
	      	  ;********STRINGS***************
	      	  XREF LAURA_STRING
	      	  XREF WELCOME_STRING
	      	  XREF CURRENTSTRING
	      	  XREF RYANSTRING
	      	  XREF MAINMENU1STRING
	      	  XREF MAINMENU2STRING
	      	  XREF MAINMENU3STRING
	      	  XREF MAINMENU4STRING
            XREF DISPLAYTIMESTRING
           
	      	  ;******END STRINGS*************
	      	  
	      	  ;******SWITCHES*****
	      	  XREF SWITCH_MSBHIGH
	      	  XREF SWITCH_LSBHIGH
	      	  XREF SWITCHESOFF
	      	  XREF BOTHSWITCHSAME
          	XREF SWITCHFLIPPED
          	XREF PORT_T_VALUE

			      ;******END SWITCHES
			      
			      ;*****CLOCK
			      XREF CLOCKCOUNT
			      XREF SECONDS
			      XREF MINUTES
			      XREF HOURS
			      XREF TENSECONDS
			      
            XREF ONESECONDS
            XREF TENMINUTES
            XREF ONEMINUTES
            XREF TENHOURS
            XREF ONEHOURS
            XREF DISPLAY_TIME_BOTTOM_RIGHT_FLAG




                            ;8000/8MHZ = .001 , SO 8000 = 2^13 = 0100,0000
                            ;$17 = 1.024 ms = 976.56
                            ;$30 = .512  ms = 1953.125 
                            ;$10 = .128  ms = 7812.5
                              



RTI_CLOCK:

        PSHX
        PSHY
        PSHD




        LDX CLOCKCOUNT
        INX
        STX CLOCKCOUNT
        ;CPX #10
       ; BNE SKIPSONGINCREMENT
        
;SONGINCREMENT:
     ;   MOVB #1,SONGFLAG     
;SKIPSONGINCREMENT:                
        CPX #7813
        BNE END_RTI_CLOCK

;1 SECONDS HAS PASSED......

            MOVW #0,CLOCKCOUNT      ;RESET COUNTER


RTI_SECONDS:

        LDAA SECONDS
        CMPA #59
        BNE INCREMENT_SECONDS
        BRA RTI_MINUTES

INCREMENT_SECONDS:
        
        INC SECONDS
        MOVB #1,SECONDSCHANGED
        BRA END_RTI_CLOCK

END_INCREMENT_SECONDS:

        
RTI_MINUTES:
          MOVB #0,SECONDS
          MOVB #1,SECONDSCHANGED
          LDAA MINUTES
          CMPA #59
          BNE INCREMENT_MINUTES
          BRA RTI_HOURS
INCREMENT_MINUTES: 
          INC MINUTES
          MOVB #1,MINUTESCHANGED
          BRA END_RTI_CLOCK
          

END_INCREMENT_MINUTES:



RTI_HOURS:
        MOVB #0,MINUTES
        MOVB #1,MINUTESCHANGED
        LDAA HOURS
        CMPA #23
        BNE INCREMENT_HOURS
        MOVB #0,HOURS
        MOVB #1,HOURSCHANGED
        BRA END_RTI_CLOCK

INCREMENT_HOURS:
          INC HOURS
          MOVB #1,HOURSCHANGED
          BRA END_RTI_CLOCK


END_INCREMENT_HOURS:


END_RTI_CLOCK:




            PULD
            PULY
            PULX
            
            RTS