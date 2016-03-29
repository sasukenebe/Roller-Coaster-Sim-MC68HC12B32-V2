


        XDEF DECIDE_STATE_CHANGE
        
        
        
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
            XREF IRQTIMER1
            XREF IRQTIMER2
            XREF TIMECHANGEDFLAG
		XREF PLAYASONGFLAG
		XREF SEEPHOTOSFLAG
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
	      		XREF TOTALRIDESPEED
	      		XREF RIDEARRAYINPUT
	      		XREF RIDEARRAYCOUNT
	      		XREF RIDEARRAY
	      		XREF PASSWORD
	      		XREF PASSWORDSTRING
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
	      	  XREF RIDESPEEDFLAG
	      	  XREF DATETIMEFLAG
	      	  XREF SYSPASSFLAG
	      	  XREF CARSETTINGSFLAG
	      	  XREF RIDELAYOUTFLAG
	      	  XREF STARTRIDEFLAG
	      	  XREF STARTRIDETIMER
	      	  XREF CURRENTRIDEPART 
	      	  XREF RIDE_TIME
	      	  XREF IRQ_FLAG
	      	  XREF TENDAYSINPUT
	      	  XREF DAYSINPUT
	      	  XREF TENMONTHSINPUT
	      	  XREF MONTHSINPUT
	      	  
	      	  XREF RIDEINMOTIONFLAG
	      	  XREF PASSWORDLOCKED
	      	  XREF RIDELAYOUTINTROTIMER
	      	  XREF RIDELAYOUTINTROSTRING
	      	  XREF CHANGETIMEFLAG
	      	  XREF CHANGEDATEFLAG
	      	  
	      	  XREF CARSETTINGS1FLAG
	      	  XREF CARSETTINGS2FLAG
	      	  XREF CARSETTINGS3FLAG
	      	  XREF CARSETTINGS4FLAG
	      	  XREF CARSETTINGS5FLAG
	      	  XREF RIDEARRAYCOUNTRIDEINMOTION
		  XREF SEEPHOTO3FLAG
		XREF SEEPHOTO2FLAG
		XREF SEEPHOTO1FLAG
	      	  
	      	  XREF TENHOURSINPUT
	      	  XREF HOURSINPUT
	      	  XREF MINUTESINPUT
	      	  XREF TENSECONDSINPUT
	      	  XREF SECONDSINPUT

	      	  ;****END FLAGS
	      	  
	      	  ;****TIMERS******
	      	  XREF PUSHBUTTONTIMER
	      	  XREF WELCOMETIMER

	      		XREF DC_MOTORCOUNTER
	      	  XREF DC_SPEED
	      	  XREF STRING_COUNTER
	      	  XREF INVALIDCARSELECTIONTIMER
	      	
	      
	 
	      	  ;********STRINGS***************
	      	  XREF LAURA_STRING
	      	  XREF WELCOME_STRING
	      	  XREF CURRENTSTRING
	      	  XREF RYANSTRING
	      	  XREF MAINMENU1STRING
	      	  XREF MAINMENU2STRING
	      	  XREF MAINMENU3STRING
            XREF DISPLAYTIMESTRING
            XREF RIDESPEEDSTRING
            XREF SWITCH7NOTHIGHTIMER
            XREF SWITCH7NOTHIGHFLAG
           
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
	          XREF RTI_CLOCK
	          
	          XREF CHANGETIMECOUNTER
	              XREF ENTERPASSWORDCOUNTER
			    
			    XREF CHANGEPASSWORDCOUNTER
			    
			    XREF TENMINUTESINPUT
			   	XREF TENHOURSINPUTSTRING
	      		XREF HOURSINPUTSTRING
	      		XREF TENMINUTESINPUTSTRING
	      		XREF MINUTESINPUTSTRING
	      		XREF TENSECONDSINPUTSTRING
	      		XREF SECONDSINPUTSTRING
	      		XREF PLAYBRYCETIMER
	      		XREF PLAYGORILLATIMER
	      		XREF PLAYDEPAYSEMENTTIMER
	          
	          
          XREF CURRENTCAR                      
          XREF CARPASSENGERS                   
          XREF CARADULTKIDS                    
          XREF CARSEATSOCCUPIED                
          XREF CARPHOTOOPTIONS  
      	  XREF RIDEENDFLAG
      	  XREF RIDEBEGINFLAG 
      	  XREF CURRENTRIDEPARTTIMER    
      	  XREF RIDEOUTROTIMER   
	       XREF ENDRIDEBECAUSEOFIRQFLAG  
	       XREF CHANGEDATECOUNTER
	       XREF DATECHANGEDFLAG  
	       XREF TOGGLELEDSFLAG 
	       
	       
	       
	       XREF INCREASESPEEDTIMER
            XREF DECREASESPEEDTIMER
            XREF INCREASESPEEDFLAG
            XREF DECREASESPEEDFLAG
	       
	   DECIDE_STATE_CHANGE:
	   
	        PSHX
	        PSHY
	        PSHD
	        
	        LDAA HEXKEYPRESSED
	        CMPA #0
	        
	        
	        
	        
	        BNE MENU_CHECK
	        JMP END_MENU_CHECK
	        
	        
	        
	        ;BEQ END_MENU_CHECK     ;HAD TO REPLACE THIS BECAUSE BEQ COULDNT JUMP FAR ENOUGH
	
	
	
;*********MAIN MENU**********************************************	
	
	        MENU_CHECK:  ;HEX CHECK                         ;HEX ONLY EFFECTS THE MENU, SO CONSIDER THIS HEX CHECK
	        
;MAIN MENU 1 CODE
MAINMENU1:	        
                  LDAA MAINMENUFLAG
                  CMPA #1
                  BNE END_MAINMENU1
        CHECK_1:
          LDAA HEXVALUE
          CMPA #1              ;RIDE SPEED
          
          BNE CHECK_2
          
          
                
                MOVB #1,RIDESPEEDFLAG
                MOVB #0,MAINMENUFLAG
                JMP END_MENU_CHECK
                ;LDX #RIDESPEEDSTRING
                ;STX CURRENTSTRING

        CHECK_2: 
              LDAA HEXVALUE 
              CMPA #2                 ;DATE/TIME
              BNE CHECK_FF           
          
          
                       MOVB #1,DATETIMEFLAG
                       MOVB #0,MAINMENUFLAG
                       JMP END_MENU_CHECK
                    ;LDX #RIDESPEEDSTRING
                    ;STX CURRENTSTRING
              
        CHECK_FF:
              LDAA HEXVALUE
              CMPA #15                ;MENU 2
              BNE END_MAINMENU1

                    MOVB #2,MAINMENUFLAG
                    JMP END_MENU_CHECK
                    ;LDX #MAINMENU2STRING
                    ;STX CURRENTSTRING

        END_MAINMENU1: 
        
       
        
        
 ;MAIN MENU 2 CODE
MAINMENU2:	        
                  LDAA MAINMENUFLAG
                  CMPA #2
                  BNE END_MAINMENU2
        CHECK_1_MM2:
          LDAA HEXVALUE
          CMPA #3              ;SYSTEM PASSWORD SCREEN
          
          BNE CHECK_2_MM2
          
                
                MOVB #1,SYSPASSFLAG
                MOVB #0,MAINMENUFLAG
                JMP END_MENU_CHECK


        CHECK_2_MM2: 
              LDAA HEXVALUE 
              CMPA #4                 ;CAR SETTINGS
              BNE CHECK_FF_MM2           
          
          
                    MOVB #1,CARSETTINGSFLAG
                    MOVB #0,MAINMENUFLAG
                    MOVB #0,HEXVALUE            ;DO THIS SO IT DOESNT SAY "4"ON ENTERING
                    JMP END_MENU_CHECK
              
        CHECK_FF_MM2:
              LDAA HEXVALUE
              CMPA #15                ;MENU 2
              BNE CHECK_AA_MM2

                    MOVB #3,MAINMENUFLAG
                    JMP END_MENU_CHECK
                
                    
                    
                    
         CHECK_AA_MM2:
              LDAA HEXVALUE
              CMPA #10                ;MENU 2
              BNE END_MAINMENU2

                    MOVB #1,MAINMENUFLAG
                    JMP END_MENU_CHECK



        END_MAINMENU2:
        
        
        
   
        
        
 ;MAIN MENU 3 CODE
MAINMENU3:	        
                  LDAA MAINMENUFLAG
                  CMPA #3
                  BNE END_MAINMENU3_JUMP
                  JMP SKIP_END_MAINMENU3_JUMP
END_MAINMENU3_JUMP:
		JMP END_MAINMENU3
SKIP_END_MAINMENU3_JUMP:                  
                  
                  
        CHECK_5_MM3:
          LDAA HEXVALUE
          CMPA #5              ;RIDE LAYOUT
          
          BNE END_CHECK_5_MM3

             MOVB #1,RIDELAYOUTFLAG
             MOVB #0,MAINMENUFLAG
             MOVW #16000,RIDELAYOUTINTROTIMER
             JMP END_MENU_CHECK

            END_CHECK_5_MM3:
            
            
            
        CHECK_6_MM3:
          LDAA HEXVALUE
          CMPA #6              ;START RIDE
          BEQ DOSOMESHITASSHOLE
          JMP END_CHECK_6_MM3
          
DOSOMESHITASSHOLE:


			;MAKE SURE SWITCH 7 IS HIGH
			
			BRCLR PORT_T_VALUE,#%01000000,DONT_START_RIDE_BECAUSE_SWITCH
			JMP SAFETY_BELTS_ARE_GOOD_TO_GO_BRO
			
			
DONT_START_RIDE_BECAUSE_SWITCH:

	MOVW #50000,SWITCH7NOTHIGHTIMER
	JMP END_MENU_CHECK		





SAFETY_BELTS_ARE_GOOD_TO_GO_BRO:


             MOVB #1,STARTRIDEFLAG
             MOVB #0,MAINMENUFLAG
             
             ;MOVB #0,RIDELAYOUTINTROSTRING	;DATE 16-20 _ _ / _ _ 
             
             MOVB #0,RIDELAYOUTINTROTIMER
             MOVB #0,RIDELAYOUTFLAG
             MOVB #0,CARSETTINGSFLAG
             MOVB #0,DATETIMEFLAG
             MOVB #1,RIDEINMOTIONFLAG
             MOVW #65500,STARTRIDETIMER         ;SET INTRO SCREEN TIMER
             MOVB #1,RIDEBEGINFLAG
             MOVB #1,RIDEARRAYCOUNT
             MOVB #0,RIDEARRAYCOUNTRIDEINMOTION
             MOVB #0,CHANGEPASSWORDCOUNTER
             MOVB #1,PASSWORDLOCKED
             MOVB #0,IRQ_FLAG
             MOVW #0,IRQTIMER1
             MOVW #0,IRQTIMER2
             MOVW #65500,CURRENTRIDEPARTTIMER
             MOVB #1,INCREASESPEEDFLAG
             MOVB #0,DECREASESPEEDFLAG
             MOVW #0,STEPPERSPEED
             MOVB #0,DC_SPEED
             MOVB #0,SEEPHOTOSFLAG
             MOVB #0,SEEPHOTO1FLAG
             MOVB #0,SEEPHOTO2FLAG
             MOVB #0,SEEPHOTO3FLAG
             MOVB #0,PLAYASONGFLAG
             
             
             MOVB #0,HEXKEYPRESSED
             MOVB #$30,PASSWORDSTRING
             MOVB #$30,PASSWORDSTRING+1
             MOVB #$30,PASSWORDSTRING+2
             MOVB #$30,PASSWORDSTRING+3
             		
             
             
             
             
             
             
             
             
             
             MOVW RIDE_TIME,CURRENTRIDEPARTTIMER
             JMP END_MENU_CHECK



            END_CHECK_6_MM3: 
            
            
            
                    
         CHECK_AA_MM3:
              LDAA HEXVALUE
              CMPA #10                ;MENU 2
              BNE END_CHECK_AA_MM3

                    MOVB #2,MAINMENUFLAG
                    JMP END_MENU_CHECK
   

	END_CHECK_AA_MM3:



                    
         CHECK_FF_MM3:
              LDAA HEXVALUE
              CMPA #15                ;MENU 2
              BNE END_CHECK_FF_MM3

                    MOVB #4,MAINMENUFLAG
                    
                    JMP END_MENU_CHECK
   

	END_CHECK_FF_MM3:

		


        END_MAINMENU3:



;MAIN MENU 4 (PHOTOS,   PLAY A SONG)


MAINMENU4:

	LDAA MAINMENUFLAG
	CMPA #4
	BNE END_MAINMENU4

        CHECK_AA_MM4:
          LDAA HEXVALUE
          CMPA #10              
          
          BNE END_CHECK_AA_MM4

             
             MOVB #3,MAINMENUFLAG
      
             JMP END_MENU_CHECK

            END_CHECK_AA_MM4:


	        CHECK_7_MM4:
          LDAA HEXVALUE
          CMPA #7              
          
          BNE END_CHECK_7_MM4

             MOVB #0,MAINMENUFLAG
     	     MOVB #1,SEEPHOTOSFLAG
		
             
             JMP END_MENU_CHECK

            END_CHECK_7_MM4:
            

        CHECK_8_MM4:
          LDAA HEXVALUE
          CMPA #8             
          
          BNE END_CHECK_8_MM4

             MOVB #0,MAINMENUFLAG
     	     MOVB #1,PLAYASONGFLAG
		
             
             JMP END_MENU_CHECK

            END_CHECK_8_MM4:
		

END_MAINMENU4:

            
;**********END MAIN MENU                  
	        
	        
	 ;RIDE SPEED
RIDESPEED:	        
                  LDAA RIDESPEEDFLAG
                  CMPA #1
                  BNE END_RIDESPEED
        
        
        CHECK_1_RIDESPEED:
             LDAA HEXVALUE
             CMPA #1
             BNE END_CHECK_1_RIDESPEED
             
             
             MOVB #0,RIDESPEEDFLAG
             MOVB #1,MAINMENUFLAG 
             MOVB #1,TOTALRIDESPEED           ;SET RIDE SPEED
             
             END_CHECK_1_RIDESPEED:
             

        CHECK_2_RIDESPEED:
             LDAA HEXVALUE
             CMPA #2
             BNE END_CHECK_2_RIDESPEED
             
             MOVB #0,RIDESPEEDFLAG
             MOVB #1,MAINMENUFLAG 
             MOVB #2,TOTALRIDESPEED
             
             END_CHECK_2_RIDESPEED:



        CHECK_3_RIDESPEED:
             LDAA HEXVALUE
             CMPA #3
             BNE END_CHECK_3_RIDESPEED
             
             MOVB #0,RIDESPEEDFLAG
             MOVB #1,MAINMENUFLAG 
             MOVB #3,TOTALRIDESPEED
             
             END_CHECK_3_RIDESPEED:
                             


        CHECK_4_RIDESPEED:
             LDAA HEXVALUE
             CMPA #4
             BNE END_CHECK_4_RIDESPEED
             
             MOVB #0,RIDESPEEDFLAG
             MOVB #1,MAINMENUFLAG 
             MOVB #4,TOTALRIDESPEED
             
             END_CHECK_4_RIDESPEED:        
        
                  
        CHECK_AA_RIDESPEED:
          LDAA HEXVALUE
          CMPA #10              ;BACK TO MAIN MENU1
          
          BNE END_RIDESPEED
                                                          ;WHERE SHOULD I GO AFTER
             MOVB #1,MAINMENUFLAG                       ;CHECKING THE RIDE SCREEN??? WHAT ELSE WILL THIS CODE DO BESIDES
             MOVB #0,RIDESPEEDFLAG                         ;SETTING STATE FLAGS BASED ON HEX INPUT??
             JMP END_MENU_CHECK


        END_RIDESPEED:            
                       
	        
	        
	  
	  
	  
	  	 ;DATE TIME**************************************************************************************************************
DATETIME:	        
                  LDAA DATETIMEFLAG
                  CMPA #1
                  BNE END_DATETIME
                  
        CHECK_AA_DATETIME:
          LDAA HEXVALUE
          CMPA #10              ;BACK TO MAIN MENU1
          
          BNE END_CHECK_AA_DATETIME
                                                          ;WHERE SHOULD I GO AFTER
             MOVB #1,MAINMENUFLAG                       ;CHECKING THE RIDE SCREEN??? WHAT ELSE WILL THIS CODE DO BESIDES
             MOVB #0,DATETIMEFLAG                         ;SETTING STATE FLAGS BASED ON HEX INPUT??
             JMP END_MENU_CHECK  
    
          END_CHECK_AA_DATETIME:
          
          



        CHECK_1_DATETIME:
          LDAA HEXVALUE
          CMPA #1              ;TO CHANGE DATE
          
          BNE END_CHECK_1_DATETIME
                                                          ;WHERE SHOULD I GO AFTER
             MOVB #0,MAINMENUFLAG                       ;CHECKING THE RIDE SCREEN??? WHAT ELSE WILL THIS CODE DO BESIDES
             MOVB #0,DATETIMEFLAG
             MOVB #1,CHANGEDATEFLAG 
             MOVB #0,CHANGEDATECOUNTER                        ;SETTING STATE FLAGS BASED ON HEX INPUT??
             JMP END_MENU_CHECK  
    
          END_CHECK_1_DATETIME:
          
          
 
 
         CHECK_2_DATETIME:
          LDAA HEXVALUE
          CMPA #2              ;TO CHANGE TIME
          
          BNE END_CHECK_2_DATETIME
                                                          ;WHERE SHOULD I GO AFTER
             MOVB #0,MAINMENUFLAG                       ;CHECKING THE RIDE SCREEN??? WHAT ELSE WILL THIS CODE DO BESIDES
             MOVB #0,DATETIMEFLAG
             MOVB #1,CHANGETIMEFLAG                         ;SETTING STATE FLAGS BASED ON HEX INPUT??
             JMP END_MENU_CHECK  
    
          END_CHECK_2_DATETIME:        
          
          

        END_DATETIME:       
;END DATE TIME**************************************************************************************************************	        





;CHANGE DATE~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~




CHANGEDATE:	        
                  LDAA CHANGEDATEFLAG
                  CMPA #1
                  BEQ CHECK_AA_CHANGEDATE
                  JMP END_CHANGEDATE
                  
                  
                  
        CHECK_AA_CHANGEDATE:
          LDAA HEXVALUE
          CMPA #10              ;BACK TO MAIN MENU1
          
          BNE END_CHECK_AA_CHANGEDATE
                                                          ;WHERE SHOULD I GO AFTER
             MOVB #1,DATETIMEFLAG                       ;CHECKING THE RIDE SCREEN??? WHAT ELSE WILL THIS CODE DO BESIDES
             MOVB #0,CHANGEDATEFLAG
             MOVB #0,MAINMENUFLAG                         ;SETTING STATE FLAGS BASED ON HEX INPUT??
             MOVB #0,CHANGEDATECOUNTER
            
             JMP END_MENU_CHECK  
    
          END_CHECK_AA_CHANGEDATE:
          
          
          
          LDAA CHANGEDATECOUNTER
          CMPA #0
          BEQ CHANGE_TENMONTHS
          
          LDAA CHANGEDATECOUNTER
          CMPA #1
          BEQ CHANGE_MONTHS
          
          LDAA CHANGEDATECOUNTER
          CMPA #2
          BEQ CHANGE_TENDAYS
          
          LDAA CHANGEDATECOUNTER
          CMPA #3
          BEQ CHANGE_DAYS
          

 
 									;IF WE ARE HERE WE ARE IN CHANGEDATE AND HEXVALUE WAS CHANGED AND WE NEED TO DECIDE WHAT TO DO WITH HEXVALUE
          
CHANGE_TENMONTHS:

		LDAA HEXVALUE
		CMPA #2
		BGE END_CHANGEDATE
		
		MOVB HEXVALUE,TENMONTHSINPUT
		INC CHANGEDATECOUNTER
		
		LDAA TENMONTHSINPUT
		ADDA #$30
		STAA TENMONTHSINPUT
		
	;	MOVB #1,DATECHANGEDFLAG
		
		JMP END_CHANGEDATE


END_CHANGE_TENMONTHS:





CHANGE_MONTHS:


		LDAA HEXVALUE
		CMPA #3
		BGE END_CHANGEDATE
		
		MOVB HEXVALUE,MONTHSINPUT
		INC CHANGEDATECOUNTER
		
     	LDAA MONTHSINPUT
		ADDA #$30
		STAA MONTHSINPUT
		
		;MOVB #1,DATECHANGEDFLAG
		
		
		JMP END_CHANGEDATE


END_CHANGE_MONTHS:




CHANGE_TENDAYS:

		LDAA HEXVALUE
		CMPA #4
		BGE END_CHANGEDATE
		
		MOVB HEXVALUE,TENDAYSINPUT
		INC CHANGEDATECOUNTER
		
		LDAA TENDAYSINPUT
		ADDA #$30
		STAA TENDAYSINPUT
		
	;	MOVB #1,DATECHANGEDFLAG
		
		JMP END_CHANGEDATE


END_CHANGE_TENDAYS:





CHANGE_DAYS:




		LDAA HEXVALUE
		CMPA #4
		BGE END_CHANGEDATE
		
		MOVB HEXVALUE,DAYSINPUT
		MOVB #0,CHANGEDATECOUNTER
		
		LDAA DAYSINPUT
		ADDA #$30
		STAA DAYSINPUT
		
		
		
		;MOVB #1,DATECHANGEDFLAG
		
		
		MOVB #0,CHANGEDATEFLAG
		MOVB #1,DATETIMEFLAG

		JMP END_CHANGE_DAYS
		

END_CHANGE_DAYS:



        END_CHANGEDATE:  



;CHANGE TIME ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


 
 
 

        
        
        
        
        
        
        
        
        
   ;;******************************* COPY AND PASTE ZONE HERE
   


CHANGETIME:	        
                  LDAA CHANGETIMEFLAG
                  CMPA #1
                  BEQ CHECK_AA_CHANGETIME
                  JMP END_CHANGETIME
                  
                  
                  
        CHECK_AA_CHANGETIME:
          LDAA HEXVALUE
          CMPA #10              ;BACK TO MAIN MENU1
          
          BNE END_CHECK_AA_CHANGETIME
                                                          ;WHERE SHOULD I GO AFTER
             MOVB #1,DATETIMEFLAG                       ;CHECKING THE RIDE SCREEN??? WHAT ELSE WILL THIS CODE DO BESIDES
             MOVB #0,CHANGETIMEFLAG
             MOVB #0,MAINMENUFLAG
             MOVB #0,CHANGEDATEFLAG                         ;SETTING STATE FLAGS BASED ON HEX INPUT??
             MOVB #0,CHANGETIMECOUNTER
            
             JMP END_MENU_CHECK  
    
          END_CHECK_AA_CHANGETIME:
          
          
          
          LDAA CHANGETIMECOUNTER
          CMPA #0
          BEQ CHANGE_TENHOURS
          
          
          
          LDAA CHANGETIMECOUNTER
          CMPA #1
          BEQ CHANGE_HOURS
          
          
          
          LDAA CHANGETIMECOUNTER
          CMPA #2
          BNE TIME_COUNTER_IS_NOT_2
		JMP CHANGE_TENMINUTES
          
          
 TIME_COUNTER_IS_NOT_2:         
          LDAA CHANGETIMECOUNTER
          CMPA #3
 		BNE TIME_COUNTER_IS_NOT_3
 		JMP CHANGE_MINUTES
 		
          
   TIME_COUNTER_IS_NOT_3:                 
          LDAA CHANGETIMECOUNTER
          CMPA #4
          BNE TIME_COUNTER_IS_NOT_4
          JMP CHANGE_TENSECONDS
 
          
   TIME_COUNTER_IS_NOT_4:                 
          LDAA CHANGETIMECOUNTER
          CMPA #5
          
          
          JMP CHANGE_SECONDS       
          
		;~~~~~~TEMPLATE FOR BGE END_CHANGETIME
;		BGE END_CHANGE_MINUTES_JUMP
		
;		JMP SKIP_END_CHANGE_MINUTES_JUMP
		
;END_CHANGE_MINUTES_JUMP:
;		JMP END_CHANGE_MINUTES		
		
;SKIP_END_CHANGE_MINUTES_JUMP:		
	;~~~~~~~~~~~~~~END TEMPLATE FOR BGE END_CHANGETIME
          
          
          

          
          JMP END_CHANGETIME     
          
          ;ELSE WE NEED TO RESET THE COUNTER AND LEAVE , BUT LETS NOT DEAL WITH THAT NOW
          







 
 ;TEN HOURS									;IF WE ARE HERE WE ARE IN CHANGEDATE AND HEXVALUE WAS CHANGED AND WE NEED TO DECIDE WHAT TO DO WITH HEXVALUE
          
CHANGE_TENHOURS:

		LDAA HEXVALUE
		CMPA #3
		;~~~~~~TEMPLATE FOR BGE END_CHANGETIME
		BGE END_CHANGETIME_JUMP
		
		JMP SKIP_END_CHANGETIME_JUMP
		
END_CHANGETIME_JUMP:
		JMP END_CHANGETIME		
		
SKIP_END_CHANGETIME_JUMP:		
	;~~~~~~~~~~~~~~END TEMPLATE FOR BGE END_CHANGETIME	
		
		
		MOVB HEXVALUE,TENHOURSINPUT
		INC CHANGETIMECOUNTER
		
		MOVB TENHOURSINPUT,TENHOURSINPUTSTRING
		LDAA TENHOURSINPUTSTRING
		ADDA #$30
		STAA TENHOURSINPUTSTRING
		
	;	MOVB #1,DATECHANGEDFLAG
		
		JMP END_CHANGETIME


END_CHANGE_TENHOURS:




;HOURS
CHANGE_HOURS:


		LDAA HEXVALUE
		CMPA #5
		
		;~~~~~~TEMPLATE FOR BGE END_CHANGETIME
		BGE END_CHANGETIME_JUMP2
		
		JMP SKIP_END_CHANGETIME_JUMP2
		
END_CHANGETIME_JUMP2:
		JMP END_CHANGETIME		
		
SKIP_END_CHANGETIME_JUMP2:		
	;~~~~~~~~~~~~~~END TEMPLATE FOR BGE END_CHANGETIME
		
		MOVB HEXVALUE,HOURSINPUT
		INC CHANGETIMECOUNTER
		
		
		MOVB HOURSINPUT,HOURSINPUTSTRING
     	LDAA HOURSINPUTSTRING	
		ADDA #$30
		STAA HOURSINPUTSTRING
		

		
		
		JMP END_CHANGETIME


END_CHANGE_HOURS:



;TEN MINUTES
CHANGE_TENMINUTES:

		LDAA HEXVALUE
		CMPA #6
		
		
		;~~~~~~TEMPLATE FOR BGE END_CHANGETIME
		BGE END_CHANGETIME_JUMP3
		
		JMP SKIP_END_CHANGETIME_JUMP3
		
END_CHANGETIME_JUMP3:
		JMP END_CHANGETIME		
		
SKIP_END_CHANGETIME_JUMP3:		
	;~~~~~~~~~~~~~~END TEMPLATE FOR BGE END_CHANGETIME
	
	
		
		MOVB HEXVALUE,TENMINUTESINPUT
		INC CHANGETIMECOUNTER
		
		MOVB TENMINUTESINPUT,TENMINUTESINPUTSTRING
		
		LDAA TENMINUTESINPUTSTRING
		ADDA #$30
		STAA TENMINUTESINPUTSTRING
		
	;	MOVB #1,DATECHANGEDFLAG
		
		JMP END_CHANGETIME


END_CHANGE_TENMINUTES:





;MINUTES
CHANGE_MINUTES:

		LDAA HEXVALUE
		CMPA #10
		
		
			;~~~~~~TEMPLATE FOR BGE END_CHANGETIME
		BGE END_CHANGETIME_JUMP4
		
		JMP SKIP_END_CHANGETIME_JUMP4
		
END_CHANGETIME_JUMP4:
		JMP END_CHANGETIME		
		
SKIP_END_CHANGETIME_JUMP4:		
	;~~~~~~~~~~~~~~END TEMPLATE FOR BGE END_CHANGETIME
	
		
		MOVB HEXVALUE,MINUTESINPUT
		INC CHANGETIMECOUNTER
		
		MOVB MINUTESINPUT,MINUTESINPUTSTRING
		LDAA MINUTESINPUTSTRING
		ADDA #$30
		STAA MINUTESINPUTSTRING
		
	;	MOVB #1,DATECHANGEDFLAG
		
		JMP END_CHANGETIME


END_CHANGE_MINUTES:




;TEN SECONDS
CHANGE_TENSECONDS:

		LDAA HEXVALUE
		CMPA #6



			;~~~~~~TEMPLATE FOR BGE END_CHANGETIME
		BGE END_CHANGETIME_JUMP5
		
		JMP SKIP_END_CHANGETIME_JUMP5
		
END_CHANGETIME_JUMP5:
		JMP END_CHANGETIME		
		
SKIP_END_CHANGETIME_JUMP5:		
	;~~~~~~~~~~~~~~END TEMPLATE FOR BGE END_CHANGETIME
		
		MOVB HEXVALUE,TENSECONDSINPUT
		INC CHANGETIMECOUNTER
		
		MOVB TENSECONDSINPUT,TENSECONDSINPUTSTRING
		LDAA TENSECONDSINPUTSTRING
		ADDA #$30	
		STAA TENSECONDSINPUTSTRING
		
	;	MOVB #1,DATECHANGEDFLAG
		
		
		
		
		JMP END_CHANGETIME


END_CHANGE_TENSECONDS:





;SECONDS , IF HERE WE NEED TO FINISH AND GO BACK TO THE INTRO SCREEN
CHANGE_SECONDS:

		LDAA HEXVALUE
		CMPA #10
		BGE END_CHANGETIME
		
		MOVB HEXVALUE,SECONDSINPUT
		
		
		;INC CHANGETIMECOUNTER
		
		MOVB SECONDSINPUT,SECONDSINPUTSTRING
		LDAA SECONDSINPUTSTRING
		ADDA #$30
		STAA SECONDSINPUTSTRING
		
	     MOVB #0,CHANGETIMECOUNTER
	     MOVB #0,CHANGETIMEFLAG
	     MOVB #1,DATETIMEFLAG
	     MOVB #0,MAINMENUFLAG
	     MOVB #1,TIMECHANGEDFLAG

	LDAA #10		;THIS WOULD BE THE NUMBER 10
	LDAB TENHOURSINPUT		;THIS WOULD BE TENHOURS
	MUL
	ADDB HOURSINPUT		;THIS WOULD BE HOURS
	STAB HOURS
	
	LDAA #10		;THIS WOULD BE THE NUMBER 10
	LDAB TENMINUTESINPUT		;THIS WOULD BE TENHOURS
	MUL
	ADDB MINUTESINPUT		;THIS WOULD BE HOURS
	STAB MINUTES
	
	LDAA #10		;THIS WOULD BE THE NUMBER 10
	LDAB TENSECONDSINPUT		;THIS WOULD BE TENHOURS
	MUL
	ADDB SECONDSINPUT		;THIS WOULD BE HOURS
	STAB SECONDS
	

		;MOVB TENHOURSINPUT,TENHOURS
		;MOVB HOURSINPUT,HOURS
		
		;MOVB TENMINUTESINPUT,TENMINUTES
		;MOVB MINUTESINPUT,MINUTES
		
		;MOVB TENSECONDSINPUT,TENSECONDS
		;MOVB SECONDSINPUT,SECONDS
		
		MOVB #1,HOURSCHANGED
		MOVB #1,MINUTESCHANGED
		MOVB #1,SECONDSCHANGED		
			
			
		
		JMP END_CHANGETIME


END_CHANGE_SECONDS:














        END_CHANGETIME:  

   
   ;;******************************END COPY AND PASTE ZONE
   
        
        

        
        
        
        
        
        
        
        
        
        
        
       
        ;END CHANGE TIME
        
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 


	        
	        
	  
	  	 ;SYSTEM PASSWORD 4 DIGITS
SYSPASS:	        
                  LDAA SYSPASSFLAG
                  CMPA #1
                  BNE END_SYSPASS
                  
                  
                  
                  
        CHECK_AA_SYSPASS:
          LDAA HEXVALUE
          CMPA #10              ;BACK TO MAIN MENU2
          
          BNE END_CHECK_AA_SYSPASS
                                                          ;WHERE SHOULD I GO AFTER
             MOVB #2,MAINMENUFLAG                       ;CHECKING THE RIDE SCREEN??? WHAT ELSE WILL THIS CODE DO BESIDES
             MOVB #0,SYSPASSFLAG                         ;SETTING STATE FLAGS BASED ON HEX INPUT??
             MOVB #0,CHANGEPASSWORDCOUNTER
             JMP END_MENU_CHECK
         END_CHECK_AA_SYSPASS:


		 LDAA CHANGEPASSWORDCOUNTER
		 CMPA #0
		 BEQ CHANGEPASSWORD1
		 
		 LDAA CHANGEPASSWORDCOUNTER
		 CMPA #1
		 BEQ CHANGEPASSWORD2
		 
		 LDAA CHANGEPASSWORDCOUNTER
		 CMPA #2
		 BEQ CHANGEPASSWORD3
		 
		 LDAA CHANGEPASSWORDCOUNTER
		 CMPA #3
		 BEQ CHANGEPASSWORD4
		 
		 
		 
CHANGEPASSWORD1:
		MOVB HEXVALUE,PASSWORD
		INC CHANGEPASSWORDCOUNTER
		JMP END_SYSPASS

CHANGEPASSWORD2:
		MOVB HEXVALUE,PASSWORD+1
		INC CHANGEPASSWORDCOUNTER
		JMP END_SYSPASS
CHANGEPASSWORD3:
		MOVB HEXVALUE,PASSWORD+2
		INC CHANGEPASSWORDCOUNTER
		JMP END_SYSPASS
CHANGEPASSWORD4:
		MOVB HEXVALUE,PASSWORD+3
		MOVB #0,CHANGEPASSWORDCOUNTER
		MOVB #0,SYSPASSFLAG
		MOVB #2,MAINMENUFLAG
		MOVB #0,RIDELAYOUTFLAG
		MOVW #0,RIDELAYOUTINTROTIMER
		JMP END_SYSPASS
		 
		 











        END_SYSPASS: 	        
	        
	        


	  
;**********CAR SETTINGS***********************************************************************************************************
CARSETTINGS:	        
                  LDAA CARSETTINGSFLAG
                  CMPA #1
                  BEQ CHECK_AA_CARSETTINGS
                  JMP END_CARSETTINGS
        
        
               
                  
        CHECK_AA_CARSETTINGS:
          LDAA HEXVALUE
          CMPA #10              ;BACK TO MAINMENU 2
          
          BNE END_CHECK_AA_CARSETTINGS
                                                          ;WHERE SHOULD I GO AFTER
             MOVB #2,MAINMENUFLAG                       ;CHECKING THE RIDE SCREEN??? WHAT ELSE WILL THIS CODE DO BESIDES
             MOVB #0,CARSETTINGSFLAG                         ;SETTING STATE FLAGS BASED ON HEX INPUT??
             JMP END_MENU_CHECK

         END_CHECK_AA_CARSETTINGS:
        
        
        
        
        
        
        
                CHECK_EE_CARSETTINGS:
          LDAA HEXVALUE
          CMPA #14              ;BACK TO MAINMENU 2
          
          BNE END_CHECK_EE_CARSETTINGS
                                                          ;CURRENT CAR WILL BE STORED ALREADY BY THE POT, SO GO TO NEXT MENU
                                                             ;
             MOVB #0,CARSETTINGSFLAG 
             MOVB #1,CARSETTINGS1FLAG                        ;
             JMP END_MENU_CHECK

         END_CHECK_EE_CARSETTINGS:
        
        
        
;##############################################REMOVED#################################################        
        JMP DEBUG_ENDINGGGGGGGGGGGGGGGGGGGGGGGG
         CHECK_1_CARSETTINGS:
          LDAA HEXVALUE
          CMPA #1              ;BACK TO MAINMENU 2
          
          BNE END_CHECK_1_CARSETTINGS
                                                          ;WHERE SHOULD I GO AFTER
             MOVB #0,MAINMENUFLAG                       ;CHECKING THE RIDE SCREEN??? WHAT ELSE WILL THIS CODE DO BESIDES
             MOVB #0,CARSETTINGSFLAG
             MOVB #1,CARSETTINGS1FLAG
             MOVB HEXVALUE,CURRENTCAR                         ;SETTING STATE FLAGS BASED ON HEX INPUT??
             JMP END_MENU_CHECK

         END_CHECK_1_CARSETTINGS:
         
         
         
         
          CHECK_2_CARSETTINGS:
          LDAA HEXVALUE
          CMPA #2              ;BACK TO MAINMENU 2
          
          BNE END_CHECK_2_CARSETTINGS
                                                          ;WHERE SHOULD I GO AFTER
             MOVB #0,MAINMENUFLAG                       ;CHECKING THE RIDE SCREEN??? WHAT ELSE WILL THIS CODE DO BESIDES
             MOVB #0,CARSETTINGSFLAG
             MOVB #1,CARSETTINGS1FLAG
             MOVB HEXVALUE,CURRENTCAR                         ;SETTING STATE FLAGS BASED ON HEX INPUT??
             JMP END_MENU_CHECK

         END_CHECK_2_CARSETTINGS:
         
         
         
          CHECK_3_CARSETTINGS:
          LDAA HEXVALUE
          CMPA #3              ;BACK TO MAINMENU 2
          
          BNE END_CHECK_3_CARSETTINGS
                                                          ;WHERE SHOULD I GO AFTER
             MOVB #0,MAINMENUFLAG                       ;CHECKING THE RIDE SCREEN??? WHAT ELSE WILL THIS CODE DO BESIDES
             MOVB #0,CARSETTINGSFLAG
             MOVB #1,CARSETTINGS1FLAG
             MOVB HEXVALUE,CURRENTCAR                         ;SETTING STATE FLAGS BASED ON HEX INPUT??
             JMP END_MENU_CHECK

         END_CHECK_3_CARSETTINGS:
         
         
         
                         
         
            CHECK_4_CARSETTINGS:
          LDAA HEXVALUE
          CMPA #4              ;BACK TO MAINMENU 2
          
          BNE END_CHECK_4_CARSETTINGS
                                                          ;WHERE SHOULD I GO AFTER
             MOVB #0,MAINMENUFLAG                       ;CHECKING THE RIDE SCREEN??? WHAT ELSE WILL THIS CODE DO BESIDES
             MOVB #0,CARSETTINGSFLAG
             MOVB #1,CARSETTINGS1FLAG
             MOVB HEXVALUE,CURRENTCAR                         ;SETTING STATE FLAGS BASED ON HEX INPUT??
             JMP END_MENU_CHECK

         END_CHECK_4_CARSETTINGS:
         
    
    
             CHECK_5_CARSETTINGS:
          LDAA HEXVALUE
          CMPA #5              ;BACK TO MAINMENU 2
          
          BNE END_CHECK_5_CARSETTINGS
                                                          ;WHERE SHOULD I GO AFTER
             MOVB #0,MAINMENUFLAG                       ;CHECKING THE RIDE SCREEN??? WHAT ELSE WILL THIS CODE DO BESIDES
             MOVB #0,CARSETTINGSFLAG
             MOVB #1,CARSETTINGS1FLAG
             MOVB HEXVALUE,CURRENTCAR                         ;SETTING STATE FLAGS BASED ON HEX INPUT??
             JMP END_MENU_CHECK

         END_CHECK_5_CARSETTINGS:
         
         
         
            CHECK_6_CARSETTINGS:
          LDAA HEXVALUE
          CMPA #6              ;BACK TO MAINMENU 2
          
          BNE END_CHECK_6_CARSETTINGS
                                                          ;WHERE SHOULD I GO AFTER
             MOVB #0,MAINMENUFLAG                       ;CHECKING THE RIDE SCREEN??? WHAT ELSE WILL THIS CODE DO BESIDES
             MOVB #0,CARSETTINGSFLAG
             MOVB #1,CARSETTINGS1FLAG
             MOVB HEXVALUE,CURRENTCAR                         ;SETTING STATE FLAGS BASED ON HEX INPUT??
             JMP END_MENU_CHECK

         END_CHECK_6_CARSETTINGS:
    
    
    
    
             CHECK_7_CARSETTINGS:
          LDAA HEXVALUE
          CMPA #7              ;BACK TO MAINMENU 2
          
          BNE END_CHECK_7_CARSETTINGS
                                                          ;WHERE SHOULD I GO AFTER
             MOVB #0,MAINMENUFLAG                       ;CHECKING THE RIDE SCREEN??? WHAT ELSE WILL THIS CODE DO BESIDES
             MOVB #0,CARSETTINGSFLAG
             MOVB #1,CARSETTINGS1FLAG
             MOVB HEXVALUE,CURRENTCAR                         ;SETTING STATE FLAGS BASED ON HEX INPUT??
             JMP END_MENU_CHECK

         END_CHECK_7_CARSETTINGS:
         
         
         
         
         
         
            CHECK_8_CARSETTINGS:
          LDAA HEXVALUE
          CMPA #8              ;BACK TO MAINMENU 2
          
          BNE END_CHECK_8_CARSETTINGS
                                                          ;WHERE SHOULD I GO AFTER
             MOVB #0,MAINMENUFLAG                       ;CHECKING THE RIDE SCREEN??? WHAT ELSE WILL THIS CODE DO BESIDES
             MOVB #0,CARSETTINGSFLAG
             MOVB #1,CARSETTINGS1FLAG
             MOVB HEXVALUE,CURRENTCAR                         ;SETTING STATE FLAGS BASED ON HEX INPUT??
             JMP END_MENU_CHECK

         END_CHECK_8_CARSETTINGS:                            
 
         
         
         
         

DEBUG_ENDINGGGGGGGGGGGGGGGGGGGGGGGG:
;############################################## END REMOVED CODE#################################################         
        
        
        
        
        END_CARSETTINGS:
        
         	        
;****************************************************








;CARSETTINGS 1 **********************************************************************

;CARPASSENGERS                       ; 0 1 OR 2
CARSETTINGS1:

            LDAA CARSETTINGS1FLAG
            CMPA #1
            BEQ CHECK_0_CARSETTINGS1
            JMP END_CARSETTINGS1

            
            
            
   CHECK_0_CARSETTINGS1:
   LDAA HEXVALUE
   CMPA #0
   BNE END_CHECK_0_CARSETTINGS1
   
   MOVB #0,CARSETTINGS1FLAG         ;MOVE FROM CARSETTINGS1 TO CARSETTINGS2
   MOVB #0,MAINMENUFLAG
   MOVB #1,CARSETTINGS2FLAG
   
   ;LOAD 0 INTO CARPASSENGERS+CURRENTCAR
   	     LDD CURRENTCAR         ;PUTS IT INTO A  D = B:A MAYBE?????
	       CLRB
	       TAB
	       CLRA
	       ADDD #CARPASSENGERS                     
	       XGDX  
	       
	       
	       
	       LDAA HEXVALUE
	       STAA 0,X                          ;X NOW HAS ADDRESS TO PUT HEXVALUE IN 
	       
         MOVB #0,CARSETTINGS1FLAG
         MOVB #1,CARSETTINGS2FLAG
         JMP END_MENU_CHECK
   
   
   
   END_CHECK_0_CARSETTINGS1:
   
   
   
    CHECK_1_CARSETTINGS1:
   LDAA HEXVALUE
   CMPA #1
   BNE END_CHECK_1_CARSETTINGS1
   
   MOVB #0,CARSETTINGS1FLAG
   MOVB #0,MAINMENUFLAG
   MOVB #1,CARSETTINGS2FLAG
   
   ;LOAD 1 INTO CARPASSENGERS+CURRENTCAR
   	     LDD CURRENTCAR         ;PUTS IT INTO A  D = B:A MAYBE?????
	       CLRB
	       TAB
	       CLRA
	       ADDD #CARPASSENGERS                     
	       XGDX
	       
	       
	       LDAA HEXVALUE
	       STAA 0,X                            ;X NOW HAS ADDRESS TO PUT HEXVALUE IN 
	       
         MOVB #0,CARSETTINGS1FLAG
         MOVB #1,CARSETTINGS2FLAG
         JMP END_MENU_CHECK
   
   
   
   END_CHECK_1_CARSETTINGS1:
   
   
              


    CHECK_2_CARSETTINGS1:
   LDAA HEXVALUE
   CMPA #2
   BNE END_CHECK_2_CARSETTINGS1
   
   MOVB #0,CARSETTINGS1FLAG
   MOVB #0,MAINMENUFLAG
   MOVB #1,CARSETTINGS2FLAG
   
   ;LOAD 2 INTO CARPASSENGERS+CURRENTCAR
   	     LDD CURRENTCAR         ;PUTS IT INTO A  D = B:A MAYBE?????
	       CLRB
	       TAB
	       CLRA
	       ADDD #CARPASSENGERS                     
	       XGDX                           ;X NOW HAS ADDRESS TO PUT HEXVALUE IN 
	       
	       LDAA HEXVALUE
	       STAA 0,X 
	       
	       
         MOVB #0,CARSETTINGS1FLAG
         MOVB #1,CARSETTINGS2FLAG
         JMP END_MENU_CHECK
   
   
   
   END_CHECK_2_CARSETTINGS1:             

END_CARSETTINGS1:






 ;CARSETTINGS2*********************************************************

;CARADULTKIDS                        ;0 = ADULT    1= KID
 CARSETTINGS2:

            LDAA CARSETTINGS2FLAG
            CMPA #1
            BEQ CHECK_0_CARSETTINGS2
            JMP END_CARSETTINGS2
            
            
            
   CHECK_0_CARSETTINGS2:
   LDAA HEXVALUE
   CMPA #0
   BNE END_CHECK_0_CARSETTINGS2

   
   ;LOAD 0 INTO CARPASSENGERS+CURRENTCAR
   	     LDD CURRENTCAR         ;PUTS IT INTO A  D = B:A MAYBE?????
	       CLRB
	       TAB
	       CLRA
	       ADDD #CARADULTKIDS                     
	       XGDX 
	       
	       LDAA HEXVALUE
	       STAA 0,X                           ;X NOW HAS ADDRESS TO PUT HEXVALUE IN 
	       
         MOVB #0,CARSETTINGS2FLAG
         MOVB #1,CARSETTINGS3FLAG    ; MOVE FROM CARSETTINGS2 TO 3
         JMP END_MENU_CHECK
   
   
   
   END_CHECK_0_CARSETTINGS2:
   
   
   
   
   
    CHECK_1_CARSETTINGS2:
   LDAA HEXVALUE
   CMPA #1
   BNE END_CHECK_1_CARSETTINGS2
   

   
   ;LOAD 1 INTO CARPASSENGERS+CURRENTCAR
   	     LDD CURRENTCAR         ;PUTS IT INTO A  D = B:A MAYBE?????
	       CLRB
	       TAB
	       CLRA
	       ADDD #CARPASSENGERS                     
	       XGDX                           ;X NOW HAS ADDRESS TO PUT HEXVALUE IN 
	       
	       LDAA HEXVALUE
	       STAA 0,X 
	       
         MOVB #0,CARSETTINGS2FLAG
         MOVB #1,CARSETTINGS3FLAG
         JMP END_MENU_CHECK
   
   
   
   END_CHECK_1_CARSETTINGS2:
   
   

END_CARSETTINGS2:






;***CAR SETTINGS 3**************************************************************

;CARSEATSOCCUPIED                    ;0= NONE     1=L   2=R   3= BOTH
CARSETTINGS3:










            LDAA CARSETTINGS3FLAG
            CMPA #1
            BEQ CHECK_0_CARSETTINGS3
            JMP END_CARSETTINGS3
            
            
            
   CHECK_0_CARSETTINGS3:
   LDAA HEXVALUE
   CMPA #0
   BNE END_CHECK_0_CARSETTINGS3

   
   ;LOAD 0 INTO CARPASSENGERS+CURRENTCAR
   	     LDD CURRENTCAR         ;PUTS IT INTO A  D = B:A MAYBE?????
	       CLRB
	       TAB
	       CLRA
	       ADDD #CARSEATSOCCUPIED                     
	       XGDX   
	       
	       
	       
	       LDAA HEXVALUE
	       STAA 0,X                         ;X NOW HAS ADDRESS TO PUT HEXVALUE IN 
	       
         MOVB #0,CARSETTINGS3FLAG
         MOVB #1,CARSETTINGS4FLAG    ; MOVE FROM CARSETTINGS2 TO 3
         JMP END_MENU_CHECK
   
   
   
   END_CHECK_0_CARSETTINGS3:
   
   
   
   
   
    CHECK_1_CARSETTINGS3:
   LDAA HEXVALUE
   CMPA #1
   BNE END_CHECK_1_CARSETTINGS3
   

   
   ;LOAD 1 INTO CARPASSENGERS+CURRENTCAR
   	     LDD CURRENTCAR         ;PUTS IT INTO A  D = B:A MAYBE?????
	       CLRB
	       TAB
	       CLRA
	       ADDD #CARSEATSOCCUPIED                     
	       XGDX 
	       
	       
	       LDAA HEXVALUE
	       STAA 0,X                           ;X NOW HAS ADDRESS TO PUT HEXVALUE IN 
	       
         MOVB #0,CARSETTINGS3FLAG
         MOVB #1,CARSETTINGS4FLAG
         JMP END_MENU_CHECK
   
   
   
   END_CHECK_1_CARSETTINGS3:
   
   




    CHECK_2_CARSETTINGS3:
   LDAA HEXVALUE
   CMPA #2
   BNE END_CHECK_2_CARSETTINGS3
   

   
   
   	     LDD CURRENTCAR         ;PUTS IT INTO A  D = B:A MAYBE?????
	       CLRB
	       TAB
	       CLRA
	       ADDD #CARSEATSOCCUPIED                     
	       XGDX                           ;X NOW HAS ADDRESS TO PUT HEXVALUE IN 
	       
	       
	       LDAA HEXVALUE
	       STAA 0,X 
	       
         MOVB #0,CARSETTINGS3FLAG
         MOVB #1,CARSETTINGS4FLAG
         JMP END_MENU_CHECK
   
   
   
   END_CHECK_2_CARSETTINGS3:
   
   
   
   
   
   
   
       CHECK_3_CARSETTINGS3:
   LDAA HEXVALUE
   CMPA #3
   BNE END_CHECK_3_CARSETTINGS3
   

   

   	     LDD CURRENTCAR         ;PUTS IT INTO A  D = B:A MAYBE?????
	       CLRB
	       TAB
	       CLRA
	       ADDD #CARSEATSOCCUPIED                     
	       XGDX                           ;X NOW HAS ADDRESS TO PUT HEXVALUE IN
	       
	       LDAA HEXVALUE
	       STAA 0,X 
	       
         MOVB #0,CARSETTINGS3FLAG
         MOVB #1,CARSETTINGS4FLAG
         JMP END_MENU_CHECK
   
   
   
   END_CHECK_3_CARSETTINGS3:
















END_CARSETTINGS3:






;CAR SETTINGS 4**********************************************************************



;CARPHOTOOPTIONS                     ;0=NONE  1=LEFT YES 2=RIGHT YES  3=BOTH YES  	        	        
CARSETTINGS4:





            LDAA CARSETTINGS4FLAG
            CMPA #1
            BEQ CHECK_0_CARSETTINGS4
            JMP END_CARSETTINGS4
            
            
            
   CHECK_0_CARSETTINGS4:
   LDAA HEXVALUE
   CMPA #0
   BNE END_CHECK_0_CARSETTINGS4

   
   ;LOAD 0 INTO CARPASSENGERS+CURRENTCAR
   	     LDD CURRENTCAR         ;PUTS IT INTO A  D = B:A MAYBE?????
	       CLRB
	       TAB
	       CLRA
	       ADDD #CARPHOTOOPTIONS                     
	       XGDX   
	       
	       
	       
	       LDAA HEXVALUE
	       STAA 0,X                         ;X NOW HAS ADDRESS TO PUT HEXVALUE IN 
	       
         MOVB #0,CARSETTINGS4FLAG
         MOVB #1,CARSETTINGSFLAG    ; MOVE FROM CARSETTINGS2 TO 3
         JMP END_MENU_CHECK
   
   
   
   END_CHECK_0_CARSETTINGS4:
   
   
   
   
   
   
   
      CHECK_1_CARSETTINGS4:
   LDAA HEXVALUE
   CMPA #1
   BNE END_CHECK_1_CARSETTINGS4

   
   ;LOAD 0 INTO CARPASSENGERS+CURRENTCAR
   	     LDD CURRENTCAR         ;PUTS IT INTO A  D = B:A MAYBE?????
	       CLRB
	       TAB
	       CLRA
	       ADDD #CARPHOTOOPTIONS                     
	       XGDX   
	       
	       
	       
	       LDAA HEXVALUE
	       STAA 0,X                         ;X NOW HAS ADDRESS TO PUT HEXVALUE IN 
	       
         MOVB #0,CARSETTINGS4FLAG
         MOVB #1,CARSETTINGSFLAG    ; MOVE FROM CARSETTINGS2 TO 3
         JMP END_MENU_CHECK
   
   
   
   END_CHECK_1_CARSETTINGS4:






   CHECK_2_CARSETTINGS4:
   LDAA HEXVALUE
   CMPA #2
   BNE END_CHECK_2_CARSETTINGS4

   
   ;LOAD 0 INTO CARPASSENGERS+CURRENTCAR
   	     LDD CURRENTCAR         ;PUTS IT INTO A  D = B:A MAYBE?????
	       CLRB
	       TAB
	       CLRA
	       ADDD #CARPHOTOOPTIONS                     
	       XGDX   
	       
	       
	       
	       LDAA HEXVALUE
	       STAA 0,X                         ;X NOW HAS ADDRESS TO PUT HEXVALUE IN 
	       
         MOVB #0,CARSETTINGS4FLAG
         MOVB #1,CARSETTINGSFLAG    ; MOVE FROM CARSETTINGS2 TO 3
         JMP END_MENU_CHECK
   
   
   
   END_CHECK_2_CARSETTINGS4:








   CHECK_3_CARSETTINGS4:
   LDAA HEXVALUE
   CMPA #3
   BNE END_CHECK_3_CARSETTINGS4

   
   ;LOAD 0 INTO CARPASSENGERS+CURRENTCAR
   	     LDD CURRENTCAR         ;PUTS IT INTO A  D = B:A MAYBE?????
	       CLRB
	       TAB
	       CLRA
	       ADDD #CARPHOTOOPTIONS                     
	       XGDX   
	       
	       
	       
	       LDAA HEXVALUE
	       STAA 0,X                         ;X NOW HAS ADDRESS TO PUT HEXVALUE IN 
	       
         MOVB #0,CARSETTINGS4FLAG
         MOVB #1,CARSETTINGSFLAG    ; MOVE FROM CARSETTINGS2 TO 3
         JMP END_MENU_CHECK
   
   
   
   END_CHECK_3_CARSETTINGS4:






END_CARSETTINGS4:	        
	        

	  	 ;RIDE LAYOUT******************************************************************************
RIDELAYOUT:	                            ;USED TO STORE INTO RIDEARRAY+1 TO 
                  LDAA RIDELAYOUTFLAG               ;RIDEARRAY+6
                                                    ;+7 = STRAIGHT +8 = TERMINATOR
                  CMPA #1
                  
                  BEQ CHECK_AA_RIDELAYOUT
                  JMP END_RIDELAYOUT
                  
                  
                  
                  
                  
                  
                  
                  
        CHECK_AA_RIDELAYOUT:
          LDAA HEXVALUE
          CMPA #10              ;BACK TO MAIN MENU 3
          
          BNE END_CHECK_AA_RIDELAYOUT
                                             
             MOVB #3,MAINMENUFLAG                       
             MOVB #0,RIDELAYOUTFLAG
             MOVB #0,RIDEARRAYCOUNT
                                      
             JMP END_MENU_CHECK
             
             
          END_CHECK_AA_RIDELAYOUT:   
             


CHECK_1_RIDELAYOUT:
          LDAA HEXVALUE
          CMPA #1              
          
          BNE END_CHECK_1_RIDELAYOUT
                                             
                                   
             
             
             
             	      ; PUT CURRENT HEXVALUE INTO RIDEARRAYINPUT + RIDEARRAYCOUNT ADDRESS                               
	                
	                                     
	       LDD RIDEARRAYCOUNT         ;PUTS IT INTO A  D = B:A MAYBE?????
	       CLRB
	       TAB
	       CLRA
	       ADDD #RIDEARRAYINPUT          
	       XGDX                           ;X NOW HAS ADDRESS TO PUT HEXVALUE IN 
	       
	       LDAA 1,X
	       CMPA #$FF
	       BNE LOAD_1_TO_RIDEARRAYINPUT
	       JMP OUTPUT_TO_RIDEARRAY
	       
	       
	       
	       
      LOAD_1_TO_RIDEARRAYINPUT:
	       
	       LDAA HEXVALUE                  ;PUT CURRENT HEX INPUT INTO RIDEARRAYINPUT
	       STAA 0,X
	       
	        
	       
	              INC RIDEARRAYCOUNT 
                JMP END_MENU_CHECK




            END_CHECK_1_RIDELAYOUT:
            
            

CHECK_2_RIDELAYOUT:
          LDAA HEXVALUE
          CMPA #2              
          
          BNE END_CHECK_2_RIDELAYOUT
                                             
                     
                     
                                   
                         	      ; PUT CURRENT HEXVALUE INTO RIDEARRAYINPUT + RIDEARRAYCOUNT ADDRESS                               
	                
	                                     
	       LDD RIDEARRAYCOUNT
	       CLRB
	       TAB
	       CLRA
	       ADDD #RIDEARRAYINPUT          
	       XGDX                           ;X NOW HAS ADDRESS TO PUT HEXVALUE IN 
	       
	       LDAA 1,X
	       CMPA #$FF
	       BNE LOAD_2_TO_RIDEARRAYINPUT
	       JMP OUTPUT_TO_RIDEARRAY

	       
      LOAD_2_TO_RIDEARRAYINPUT:
	       
	       LDAA HEXVALUE                  ;PUT CURRENT HEX INPUT INTO RIDEARRAYINPUT
	       STAA 0,X
	       
	              INC RIDEARRAYCOUNT 
                JMP END_MENU_CHECK






            END_CHECK_2_RIDELAYOUT:              
             
             

CHECK_3_RIDELAYOUT:
          LDAA HEXVALUE
          CMPA #3              
          
          BNE END_CHECK_3_RIDELAYOUT
                                             
                                   
            
            
            
            
                         	      ; PUT CURRENT HEXVALUE INTO RIDEARRAYINPUT + RIDEARRAYCOUNT ADDRESS                               
	                
	                                     
	       LDD RIDEARRAYCOUNT
	       CLRB
	       TAB
	       CLRA
	       ADDD #RIDEARRAYINPUT          
	       XGDX                           ;X NOW HAS ADDRESS TO PUT HEXVALUE IN 
	       
	       
	       LDAA 1,X
	       CMPA #$FF
	       BNE LOAD_3_TO_RIDEARRAYINPUT
	       JMP OUTPUT_TO_RIDEARRAY
	       
	       
      LOAD_3_TO_RIDEARRAYINPUT:	       
	       
	       LDAA HEXVALUE                  ;PUT CURRENT HEX INPUT INTO RIDEARRAYINPUT
	       STAA 0,X
	       
	              INC RIDEARRAYCOUNT 
                JMP END_MENU_CHECK
            
            
       
            
            
            

            END_CHECK_3_RIDELAYOUT: 








CHECK_4_RIDELAYOUT:
          LDAA HEXVALUE
          CMPA #4              
          
          BNE END_CHECK_4_RIDELAYOUT
                                             
                                   



             	      ; PUT CURRENT HEXVALUE INTO RIDEARRAYINPUT + RIDEARRAYCOUNT ADDRESS                               
	                 
	                                     
	       LDD RIDEARRAYCOUNT
	       CLRB
	       TAB
	       CLRA
	       ADDD #RIDEARRAYINPUT          
	       XGDX                           ;X NOW HAS ADDRESS TO PUT HEXVALUE IN 
	       
	       LDAA 1,X
	       CMPA #$FF
	       BNE LOAD_4_TO_RIDEARRAYINPUT
	       JMP OUTPUT_TO_RIDEARRAY
	       
	       
    LOAD_4_TO_RIDEARRAYINPUT:	       
	       
	       
	       LDAA HEXVALUE                  ;PUT CURRENT HEX INPUT INTO RIDEARRAYINPUT
	       STAA 0,X
	       
	              INC RIDEARRAYCOUNT 
                JMP END_MENU_CHECK





            END_CHECK_4_RIDELAYOUT: 







        JMP END_RIDELAYOUT





 OUTPUT_TO_RIDEARRAY:                         ;RIDEARRAY = 5    _   _   _   _   _   _   6   FF
                                                          ;+0  +1  +2   +3  +4  +5  +6  +7  +8
          
                                        ;RIDE ARRAYINPUT=       _   _   _   _   _   _  $FF 
                                                              ;+0   +1  +2  +3  +4  +5  +6
                                                              
         LDAA HEXVALUE                  ;PUT CURRENT HEX INPUT INTO RIDEARRAYINPUT
	       STAA 0,X                                                    
          
          
          LDX #RIDEARRAY+1        ;IF WE ARE HERE, WE HAVE BEEN GIVEN A FULL RIDE LAYOUT, PUT IT INTO RIDEARRAY
          LDY #RIDEARRAYINPUT
          
                            
                  WRITELOOP: LDAA 1,Y+
                             STAA 1,X+
                             

                             LDAA 0,Y
                             CMPA #$FF
                             BNE WRITELOOP
                             
                                           
                             MOVB #0,RIDEARRAYCOUNT
                             MOVB #0,RIDELAYOUTFLAG
                             MOVB #0,RIDEARRAYCOUNT
                             MOVB #1,MAINMENUFLAG  
                             
                             
   END_OUTPUT_TO_RIDEARRAY:





END_RIDELAYOUT: 

	    	  
 ;***********************************END RIDE LAYOUT************************************************************
 





;*******SEE PHOTOS*******************






SEEPHOTOS:	        
                  LDAA SEEPHOTOSFLAG
                  CMPA #1
                  BEQ CHECK_AA_SEEPHOTOS
                  JMP END_SEEPHOTOS
        
        
               
                  
        CHECK_AA_SEEPHOTOS:
          LDAA HEXVALUE
          CMPA #10              ;BACK TO MAINMENU 2
          
          BNE END_CHECK_AA_SEEPHOTOS
                                                          ;WHERE SHOULD I GO AFTER
             MOVB #4,MAINMENUFLAG                       ;CHECKING THE RIDE SCREEN??? WHAT ELSE WILL THIS CODE DO BESIDES
             MOVB #0,SEEPHOTOSFLAG                         ;SETTING STATE FLAGS BASED ON HEX INPUT??
             
             JMP END_MENU_CHECK

         END_CHECK_AA_SEEPHOTOS:
        
        
        
        
        
        
        
                CHECK_1_SEEPHOTOS:
          LDAA HEXVALUE
          CMPA #1              ;SHOW PHOTO1
          
          BNE END_CHECK_1_SEEPHOTOS
                                                          ;CURRENT CAR WILL BE STORED ALREADY BY THE POT, SO GO TO NEXT MENU
                                                             ;
             MOVB #0,SEEPHOTOSFLAG 
             MOVB #1,SEEPHOTO1FLAG                        ;
             JMP END_MENU_CHECK

         END_CHECK_1_SEEPHOTOS:




                CHECK_2_SEEPHOTOS:
          LDAA HEXVALUE
          CMPA #2              ;SHOW PHOTO1
          
          BNE END_CHECK_2_SEEPHOTOS
                                                          ;CURRENT CAR WILL BE STORED ALREADY BY THE POT, SO GO TO NEXT MENU
                                                             ;
             MOVB #0,SEEPHOTOSFLAG 
             MOVB #1,SEEPHOTO2FLAG                        ;
             JMP END_MENU_CHECK

         END_CHECK_2_SEEPHOTOS:






                CHECK_3_SEEPHOTOS:
          LDAA HEXVALUE
          CMPA #3              ;SHOW PHOTO1
          
          BNE END_CHECK_3_SEEPHOTOS
                                                          ;CURRENT CAR WILL BE STORED ALREADY BY THE POT, SO GO TO NEXT MENU
                                                             ;
             MOVB #0,SEEPHOTOSFLAG 
             MOVB #1,SEEPHOTO3FLAG                        ;
             JMP END_MENU_CHECK

         END_CHECK_3_SEEPHOTOS:


END_SEEPHOTOS:


;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		;SEEPHOTO1FLAG
		


SEEPHOTO1:	        
                  LDAA SEEPHOTO1FLAG
                  CMPA #1
                  BEQ CHECK_AA_SEEPHOTO1
                  JMP END_SEEPHOTO1
        
        
               
                  
        CHECK_AA_SEEPHOTO1:
          LDAA HEXVALUE
          CMPA #10              ;BACK TO MAINMENU 2
          
          BNE END_CHECK_AA_SEEPHOTO1
                                                          ;WHERE SHOULD I GO AFTER
             MOVB #0,MAINMENUFLAG                       ;CHECKING THE RIDE SCREEN??? WHAT ELSE WILL THIS CODE DO BESIDES
             MOVB #1,SEEPHOTOSFLAG                         ;SETTING STATE FLAGS BASED ON HEX INPUT??
             
		MOVB #0,SEEPHOTO1FLAG

		JMP END_MENU_CHECK

         END_CHECK_AA_SEEPHOTO1:

END_SEEPHOTO1:



;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        









;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		;SEEPHOTO2FLAG
		


SEEPHOTO2:	        
                  LDAA SEEPHOTO2FLAG
                  CMPA #1
                  BEQ CHECK_AA_SEEPHOTO2
                  JMP END_SEEPHOTO2
        
        
               
                  
        CHECK_AA_SEEPHOTO2:
          LDAA HEXVALUE
          CMPA #10              ;BACK TO MAINMENU 2
          
          BNE END_CHECK_AA_SEEPHOTO2
                                                          ;WHERE SHOULD I GO AFTER
             MOVB #0,MAINMENUFLAG                       ;CHECKING THE RIDE SCREEN??? WHAT ELSE WILL THIS CODE DO BESIDES
             MOVB #1,SEEPHOTOSFLAG                         ;SETTING STATE FLAGS BASED ON HEX INPUT??
             
		MOVB #0,SEEPHOTO2FLAG

		JMP END_MENU_CHECK

         END_CHECK_AA_SEEPHOTO2:

END_SEEPHOTO2:



;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		;SEEPHOTO3FLAG
		


SEEPHOTO3:	        
                  LDAA SEEPHOTO3FLAG
                  CMPA #1
                  BEQ CHECK_AA_SEEPHOTO3
                  JMP END_SEEPHOTO3
        
        
               
                  
        CHECK_AA_SEEPHOTO3:
          LDAA HEXVALUE
          CMPA #10              ;BACK TO MAINMENU 2
          
          BNE END_CHECK_AA_SEEPHOTO3
                                                          ;WHERE SHOULD I GO AFTER
             MOVB #0,MAINMENUFLAG 
             MOVB #0,SEEPHOTO3FLAG                      ;CHECKING THE RIDE SCREEN??? WHAT ELSE WILL THIS CODE DO BESIDES
             MOVB #1,SEEPHOTOSFLAG                         ;SETTING STATE FLAGS BASED ON HEX INPUT??
             
		MOVB #0,SEEPHOTO3FLAG

		JMP END_MENU_CHECK

         END_CHECK_AA_SEEPHOTO3:

END_SEEPHOTO3:



;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		



;END SEE PHOTOS************************



;******PLAY A SONG*********************

PLAYASONG:

		LDAA PLAYASONGFLAG
		CMPA #1
		BNE END_PLAYASONG
		
		
		
		        CHECK_AA_PLAYASONG:
          LDAA HEXVALUE
          CMPA #10              ;BACK TO MAINMENU 2
          
          BNE END_CHECK_AA_PLAYASONG
                                                          ;WHERE SHOULD I GO AFTER
             MOVB #4,MAINMENUFLAG 
             MOVB #0,PLAYASONGFLAG                      ;CHECKING THE RIDE SCREEN??? WHAT ELSE WILL THIS CODE DO BESIDES
                                                    ;SETTING STATE FLAGS BASED ON HEX INPUT??
             
             
	

		JMP END_MENU_CHECK

         END_CHECK_AA_PLAYASONG:
		
		
		
		
		
		
		CHECK_1_PLAYASONG:					;BRYCE
          LDAA HEXVALUE
          CMPA #1           
          BNE END_CHECK_1_PLAYASONG
          
          
          ;PLAY BRYCE SONG,
		MOVW #65000,PLAYBRYCETIMER
		MOVB #0,PLAYASONGFLAG
		MOVB #4,MAINMENUFLAG
		
		JMP END_MENU_CHECK

         END_CHECK_1_PLAYASONG:
         
         
         
         		
		CHECK_2_PLAYASONG:					;BRYCE
          LDAA HEXVALUE
          CMPA #2           
          BNE END_CHECK_2_PLAYASONG
          
          
		MOVW #65000,PLAYDEPAYSEMENTTIMER
		MOVB #0,PLAYASONGFLAG
		MOVB #4,MAINMENUFLAG
		
		JMP END_MENU_CHECK

         END_CHECK_2_PLAYASONG:
		
		
		
		
				
		CHECK_3_PLAYASONG:					;BRYCE
          LDAA HEXVALUE
          CMPA #3           
          BNE END_CHECK_3_PLAYASONG
          
   		MOVW #65000,PLAYGORILLATIMER
		MOVB #0,PLAYASONGFLAG
		MOVB #4,MAINMENUFLAG
		
		
		JMP END_MENU_CHECK

         END_CHECK_3_PLAYASONG:
		




























	
		
END_PLAYASONG:






































;END PLAY A SONG***********************
 
 
 
 
 
 
 
 
 
        END_MENU_CHECK:
 
;********************************END MENU CHECK!!!!!!!!!!!**********************************************************************************






;*****RIDE IN MOTION **************************************************************** 
		
		
		
		LDAA STARTRIDEFLAG
		CMPA #1
		BEQ END_RIDEINMOTION_CHECK_JUMP
		BRA SKIPTHISDOODOOWATER
		
	END_RIDEINMOTION_CHECK_JUMP:
	JMP END_RIDEINMOTION_CHECK	
	
	SKIPTHISDOODOOWATER:
		
CHECKFORPASSWORD_RIDEINMOTION:

		LDAA RIDEINMOTIONFLAG
		CMPA #1
		BEQ CONTINUE_CHECKPASSWORD
		JMP END_CHECKFORPASSWORD_RIDEINMOTION
		
CONTINUE_CHECKPASSWORD:
;		LDAA IRQ_FLAG
;		CMPA #1
;		BEQ CONTINUE_CHECKPASSWORD1
;		JMP END_CHECKFORPASSWORD_IF_IN_IRQ_MODE
		;CONTINUE_CHECKPASSWORD1:
		
		
		
		
		LDAA HEXKEYPRESSED
		CMPA #1
		BEQ CHECK_PASSWORD_RIDEINMOTIONBRO
		JMP END_CHECKFORPASSWORD_RIDEINMOTION



CHECK_PASSWORD_RIDEINMOTIONBRO:
		
		 LDAA CHANGEPASSWORDCOUNTER
		 CMPA #0
		 BEQ CHECKPASSWORD1
		 
		 LDAA CHANGEPASSWORDCOUNTER
		 CMPA #1
		 BEQ CHECKPASSWORD2
		 
		 LDAA CHANGEPASSWORDCOUNTER
		 CMPA #2
		 BEQ CHECKPASSWORD3
		 
		 LDAA CHANGEPASSWORDCOUNTER
		 CMPA #3
		 BEQ CHECKPASSWORD4
		 
		 
		 
CHECKPASSWORD1:

			MOVB HEXVALUE,PASSWORDSTRING
			
			LDAA PASSWORDSTRING
			ADDA #$30
			STAA PASSWORDSTRING
			
				INC CHANGEPASSWORDCOUNTER
				MOVB #0,HEXKEYPRESSED
			JMP END_CHECKFORPASSWORD_RIDEINMOTION



CHECKPASSWORD2:

			MOVB HEXVALUE,PASSWORDSTRING+1
						
			LDAA PASSWORDSTRING+1
			ADDA #$30
			STAA PASSWORDSTRING+1
			
				INC CHANGEPASSWORDCOUNTER
			MOVB #0,HEXKEYPRESSED
			JMP END_CHECKFORPASSWORD_RIDEINMOTION


CHECKPASSWORD3:

			MOVB HEXVALUE,PASSWORDSTRING+2
			
			
			LDAA PASSWORDSTRING+2
			ADDA #$30
			STAA PASSWORDSTRING+2
			
			INC CHANGEPASSWORDCOUNTER
			MOVB #0,HEXKEYPRESSED
			JMP END_CHECKFORPASSWORD_RIDEINMOTION


CHECKPASSWORD4:

		
					MOVB HEXVALUE,PASSWORDSTRING+3
					LDAA PASSWORDSTRING+3
					ADDA #$30
					STAA PASSWORDSTRING+3
		
					MOVB #0,CHANGEPASSWORDCOUNTER
					MOVB #0,HEXKEYPRESSED
					
					;NOW WE COMPARE ALL OF THEM
					
					

		LDAA PASSWORDSTRING
		SUBA #$30
		CMPA PASSWORD
		BNE PASSWORDS_NOT_SAME
		
		LDAA PASSWORDSTRING+1
				SUBA #$30
		CMPA PASSWORD+1
		BNE PASSWORDS_NOT_SAME
		
		LDAA PASSWORDSTRING+2
				SUBA #$30
		CMPA PASSWORD+2
		BNE PASSWORDS_NOT_SAME
		
		LDAA PASSWORDSTRING+3
		SUBA #$30
		CMPA PASSWORD+3
		BNE PASSWORDS_NOT_SAME
		
PASSWORDS_SAME:
			MOVB #0,PASSWORDLOCKED
			MOVB #$30,PASSWORDSTRING
			MOVB #$30,PASSWORDSTRING+1
	       	MOVB #$30,PASSWORDSTRING+2
			MOVB #$30,PASSWORDSTRING+3
			
			;THE PASSWORD WAS ENTERED, THIS MEANS WE WANT TO GO THE MAIN MENU
			MOVB #1,MAINMENUFLAG
			
			




			JMP END_CHECKFORPASSWORD_RIDEINMOTION
PASSWORDS_NOT_SAME:					
			MOVB #0,CHANGEPASSWORDCOUNTER		
			MOVB #$30,PASSWORDSTRING
			MOVB #$30,PASSWORDSTRING+1
	       	MOVB #$30,PASSWORDSTRING+2
			MOVB #$30,PASSWORDSTRING+3
			
					
			JMP END_CHECKFORPASSWORD_RIDEINMOTION






END_CHECKFORPASSWORD_RIDEINMOTION:		

		
		
																	  ;IF WE ARE HERE THE RIDE IS IN MOTION!!!!
RIDEINMOTION_CHECK:
		

        
;IRQ STATE??? (OVERRIDES RIDEINMOTIONSHIT)  

        
 				
        
        LDAA RIDEENDFLAG								;RIDE END FLAG IS SET BY RTI....
        CMPA #1
        BEQ STOP_RIDE
        


BEGIN_IRQ_RIDEINMOTION_CHECK:       
        


			LDAA ENDRIDEBECAUSEOFIRQFLAG						
			CMPA #1
			BEQ GO_TO_END_OF_RIDE


SKIP_IRQ_RIDEINMOTION_CHECK:        
        
        
        
        
        						                         ;IF RIDE END FLAG IS HIGH, SET IT LOW, AND MOVE TO NECESSARY STATE.

        
        
        JMP END_RIDEINMOTION_CHECK	 ; IF YOU GOT HERE, DONT STOP RIDE, SKIP IT
       
       
        
STOP_RIDE:
			MOVB #0,RIDEINMOTIONFLAG					;RIDE IS NOT IN MOTION...
			MOVB #0,RIDEARRAYCOUNTRIDEINMOTION
			MOVB #1,MAINMENUFLAG 
			MOVB #0,RIDEENDFLAG						;END RIDE...SET RIDEOUTRO SCREEN, GO BACK TO MAIN MENU
		     MOVW #45000,RIDEOUTROTIMER
		     MOVB #0,ENDRIDEBECAUSEOFIRQFLAG
		     MOVB #0,TOGGLELEDSFLAG
		     
		     
		     
		     
		     
					       
			   MOVB #0,RIDEINMOTIONFLAG

							    	;END OF THE RIDE, WE WILL ARRIVE HERE FROM THE IRQ, NO OTHER CODE ENCESSARY
			   MOVB #0,STARTRIDEFLAG
			   MOVB #0,IRQ_FLAG
			   MOVB #0,TOGGLELEDSFLAG
			   MOVB #0,PORT_S
			   MOVB #1,MAINMENUFLAG
   
   
   
		     
        		JMP END_RIDEINMOTION_CHECK
        		
        		
GO_TO_END_OF_RIDE: ; (BECAUSE OF IRQ)
				;THIS DOES NOT END THE RIDE

				MOVB #7,RIDEARRAYCOUNTRIDEINMOTION
				MOVB #0,ENDRIDEBECAUSEOFIRQFLAG
				MOVB #0,IRQ_FLAG
				JMP END_RIDEINMOTION_CHECK        		
 
 
                       
        
        
        
        
END_RIDEINMOTION_CHECK:    

		MOVB #0,HEXKEYPRESSED											;THIS COULD CAUSE A LOT OF PROBLEMS    
;**********************END RIDE IN MOTION CHECK






	   
	   
	   END_DECIDE_STATE_CHANGE:
	           PULD
	           PULY
	           PULX
	           
	           RTS
	               