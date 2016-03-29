					XDEF RTI_SER

					XREF RTIFLAG
					XREF STEPPERMOTOR
					XREF STEPPERSPEED_COUNTER
					XREF STEPPERSPEED
					XREF HEXVALUE
					XREF STEPPERMOTOR_DIRECTION
					XREF SWITCHFLIPPED
					XREF SWITCHVALUE
					XREF PORT_T
					XREF PORT_S
					XREF DC_FLAG
					XREF ONTIME
					XREF OFFTIME
					XREF VAR_1
					XREF VAR_2
					XREF DC_MOTORCOUNTER
					XREF DC_SPEED
					XREF DC_MOTOR
					XREF SONGCOUNT
					XREF UPDATE_RIDE_SPEED
					XREF MAINMENUFLAG
					XREF IRQ_FLAG
					XREF SIRENSONG
					XREF PASSWORDLOCKED
					XREF SECRETPASSWORDFLAG
					XREF PORT_T_VALUE
					XREF SWITCH7NOTHIGHTIMER
			
					
					
					XREF SendsChr
          XREF PlayTone
          
          XREF RIDE_TIME
          
					;******FLAGS
					XREF PUSHBUTTONFLAG
					XREF DISPLAY_TIME_BOTTOM_RIGHT_FLAG
					XREF SECONDSCHANGED
					XREF MINUTESCHANGED
					XREF HOURSCHANGED
					XREF STEPPERMOTORFLAG
					XREF BOTHSWITCHESHIGH
					XREF BOTHSWITCHESLOW
						XREF WELCOMEFLAG
						XREF HEXKEYPRESSED
						XREF PUSHBUTTONTOGGLE
						XREF RIDELAYOUTFLAG
						XREF INVALIDCARSELECTIONFLAG
						XREF DISPLAYPOTVALUESFLAG
					;***STRINGS******
					XREF LAURA_STRING
					XREF CURRENTSTRING
					XREF RYANSTRING
					XREF DISPLAYTIMESTRING
					XREF RIDELAYOUTSTRING
					XREF RIDELAYOUTINTROSTRING
					XREF CURRENTSONGPART
					XREF RIDEARRAYINPUT
					XREF RIDEARRAY
					XREF CURRENTRIDEPARTTIMER
					XREF ENDRIDEBECAUSEOFIRQFLAG
					XREF PUSHBUTTONTIMER
					XREF PLAYGORILLAFLAG
					
					XREF DEPAYSEMENT
					XREF PASSWORD
					XREF FLASHLEDSTIMER
					;*****END STRINGS****
					
					;******SWITCHES****
					XREF BOTHSWITCHSAME
					;******END SWITCHES**
					
					;*****CLOCK
					XREF CLOCKCOUNT
					XREF SECONDS
					XREF MINUTES
					XREF SECRETPASSWORDTIMER
			    XREF HOURS
					;*****END CLOCK
					
					;TIMERS
					XREF WELCOMETIMER
					XREF RIDELAYOUTINTROTIMER
					XREF INVALIDCARSELECTIONTIMER
					
					;***OTHER ASM FILES
					XREF GET_CLOCK_VALUES
					XREF CHANGE_HOURS
					XREF CHANGE_MINUTES
					XREF CHANGE_SECONDS
					XREF RTI_CLOCK
					XREF DECIDE_STATE_CHANGE
					
					XREF POTVALUECHANGEDFLAG
					XREF RIDEINMOTIONFLAG
					XREF STARTRIDETIMER
					XREF STARTRIDEFLAG
					XREF POTVALUECHANGEDTIMER
					XREF PLAY_DEPAYSEMENT_FLAG
					XREF SONGFLAG
					XREF SONGTIMER
					XREF NOWMIGHTBETHETIME
					XREF RIDETIMER
					XREF CURRENTRIDEPART
					XREF RIDEARRAYCOUNTRIDEINMOTION
					XREF TOTALRIDESPEED_CHANGEDFLAG
					XREF RIDEBEGINFLAG
					XREF RIDEENDFLAG
					XREF RIDEOUTROTIMER
					XREF GETCARLOCATION_LED
					XREF FLASHLEDFLAG
					XREF PLAYGORILLASONGFLAG
					XREF GORILLA
					XREF IRQTIMER1
					XREF IRQTIMER2
					XREF LEDTOGGLEVARIABLE
					XREF TOGGLELEDSFLAG
					XREF CHANGEPASSWORDCOUNTER
					XREF RTI_FLAG
					XREF TIMERSPEED
					XREF FLASHONLEDS
					
					
					
					  XREF INCREASESPEEDTIMER
			            XREF DECREASESPEEDTIMER
			            XREF INCREASESPEEDFLAG
			            XREF DECREASESPEEDFLAG
			            XREF PLAYGORILLATIMER
			            XREF PLAYDEPAYSEMENTTIMER
			            XREF PLAYBRYCETIMER
			            
			            XREF SWITCH_LSBHIGH
			            XREF SWITCH_MSBHIGH
					
;************************END XDEF XREF******************************************************					
				
			
			
					
					
; THE RTI WILL PRIMARILY DO A CLOCK. AND SET FLAGS, THEN THE MAIN WILL DECIDE WHAT TO DO WITH THE FLAGS
					

			RTI_SER:
	
	
	
	
	
	
	
;************************SET FLAGS / TIMERS***********************************************************************************************
;********************************************************************************************************************************







;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		LDAA PASSWORDLOCKED
		CMPA #1
		BEQ PASSWORD_IS_LOCKED_SO_LEAVE
		
		
		
		
PASSWORD_UNLOCKEDCODE:							;SET FLAGS REQUIRED OF BEING PASSWORD UNLOCKED, BUT DONT DO ANY STATE STUFF
	
			MOVB #0,IRQ_FLAG
			MOVB #0,TOGGLELEDSFLAG
			MOVW #0,IRQTIMER1
			MOVW #0,IRQTIMER2		





PASSWORD_IS_LOCKED_SO_LEAVE:


;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


          ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          ;WELCOME SCREEN
          
           LDX WELCOMETIMER
           CPX #0
           BEQ LOWER_WELCOMEFLAG    ;IF WELCOME TIMER IS UP, LOWER FLAG AND EXIT
           DEX
           STX WELCOMETIMER         ;ELSE DECREMENT COUNTER AND EXIT, WITHOUT TOUCHING FLAG
           BRA END_WELCOMEFLAG
           
           
           
           LOWER_WELCOMEFLAG:
           MOVB #0,WELCOMEFLAG
           END_WELCOMEFLAG:

          ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		
		
		;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		LDX SWITCH7NOTHIGHTIMER
		CPX #0
		BNE DECREMENT_SWITCH7TIMER
		
		JMP DONT_DECREMENT_SWITCH7TIMER
		
	DECREMENT_SWITCH7TIMER:
		LDX SWITCH7NOTHIGHTIMER
		DEX
		STX SWITCH7NOTHIGHTIMER
	
	
	
	JMP END_SWITCH7TIMER
	DONT_DECREMENT_SWITCH7TIMER:
		
		END_SWITCH7TIMER:
		;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


		
		
		
		
		;RIDE IN MOTION AND PUSHBUTTON PRESSED, NEED TO TAKE A PICTURE, FLASH LEDS, AND PLAY A SONG (DONE AT SPEAKER)



			
		
;~~~~~~~PUSH BUTTON~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      ;LDAA PUSHBUTTONTOGGLE
      ;CMPA #1
      ;BNE DONTDISPLAYTIME

		LDAA RIDEINMOTIONFLAG
		CMPA #1
		BNE ENDPUSHBUTTON				;????

			LDAA PUSHBUTTONFLAG
			CMPA #1
			BNE CHECK_PUSHBUTTON_TIMER
			
			;ELSE SET PUSHBUTTONTIMER
			
			MOVW #45000,PUSHBUTTONTIMER
			MOVB #0,PUSHBUTTONFLAG
			JMP ENDPUSHBUTTON
			
			CHECK_PUSHBUTTON_TIMER:
			
			
			LDX PUSHBUTTONTIMER
			CPX #0 
			BEQ ENDPUSHBUTTON
		
			LDX PUSHBUTTONTIMER
			DEX
			STX PUSHBUTTONTIMER
			
			;DECREMENT COUNTER
			;FLASH LIGHTS, TAKE A SCREEN SHOT , STORE TIME DATE, PLAY A SONG


 ENDPUSHBUTTON:
 
;~~~~~~~~~~~~~~~~~END PUSH BUTTON~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 




;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

		LDX FLASHLEDSTIMER
		CPX #0
		BNE DECREMENT_FLASHLEDSTIMER
		
		LDAA FLASHONLEDS
		COMA
		ANDA #%00000001
		STAA FLASHONLEDS
		
		
		
		JMP END_FLASH_LEDS_TIMER
DECREMENT_FLASHLEDSTIMER:

		LDX FLASHLEDSTIMER
		DEX
		STX FLASHLEDSTIMER
		
		
				


END_FLASH_LEDS_TIMER:
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
CHECKSTARTRIDE_BECAUSEOFSWITCH:

		;START RIDE BECAUSE OF SWITCH 7???????
		
		
		
		
		LDAA RIDEINMOTIONFLAG
		CMPA #1
		BEQ END_CHECKSTARTRIDE_BECAUSEOFSWITCH


		BRSET PORT_T_VALUE,#%01000000,STARTRIDEBECAUSEOFSWITCH

			JMP END_CHECKSTARTRIDE_BECAUSEOFSWITCH
			
			
STARTRIDEBECAUSEOFSWITCH:









END_CHECKSTARTRIDE_BECAUSEOFSWITCH:

		;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~










;*******************SONG TIMERS


				LDX PLAYBRYCETIMER
				CPX #0
				BEQ DONE_PLAYBRYCETIMER
				
				LDX PLAYBRYCETIMER
				DEX
				STX PLAYBRYCETIMER
				
				DONE_PLAYBRYCETIMER:
				


		LDX PLAYGORILLATIMER
				CPX #0
				BEQ DONE_PLAYGORILLATIMER
				
				LDX PLAYGORILLATIMER
				DEX
				STX PLAYGORILLATIMER
				
				DONE_PLAYGORILLATIMER:
				
				
						LDX PLAYDEPAYSEMENTTIMER
				CPX #0
				BEQ DONE_PLAYDEPAYSEMENTTIMER
				
				LDX PLAYDEPAYSEMENTTIMER
				DEX
				STX PLAYDEPAYSEMENTTIMER
				
				DONE_PLAYDEPAYSEMENTTIMER:



		;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          
          ;IRQ_RIDESTOP_TIMER					;IRQ TIMER 1 = 2	 MAKES IT SO IT ONLY INCREMENTS IRQ TIMER 2 EVERY 2 RTI (16 SEC TOTAL RUN)	
          

 BEGIN_BOTH_IRQ_TIMER:         								;IRQ TIMER 2 = 65000 (8 SEC)
 
 		
 		LDAA IRQ_FLAG
 		CMPA #1
 		BNE END_BOTH_IRQ_TIMER
          	
           
 			LDAA PASSWORDLOCKED
 			CMPA #0
 			BEQ END_BOTH_IRQ_TIMER

          		
          LDX IRQTIMER1
          CPX #0
          BEQ DECREMENT_IRQ_TIMER2
          DEX
          STX IRQTIMER1
          JMP END_BOTH_IRQ_TIMER
   
   
          
 DECREMENT_IRQ_TIMER2:
 			MOVW #1,IRQTIMER1						;DONT FORGET TO RESET THE FIRST IRQ TIMER ONCE HERE DING DONG!
 			LDX IRQTIMER2
 			CPX #0
 			BEQ END_RIDE_BECAUSE_IRQ_TIMER
 			LDX IRQTIMER2
 			DEX 
 			STX IRQTIMER2
 			JMP END_BOTH_IRQ_TIMER
 			
 			
 END_RIDE_BECAUSE_IRQ_TIMER:
 

 	MOVB #1,ENDRIDEBECAUSEOFIRQFLAG
 
          
 DONT_INCREMENT_IRQ_TIMER2:
 
 
          

END_BOTH_IRQ_TIMER:
          ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





   ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
          ;RIDE INTRO SCREEN
         
         
         
         
         
         
          LDX STARTRIDETIMER
          CPX #0
          BEQ LOWER_STARTRIDESCREEN
          
          DEX 
          STX STARTRIDETIMER
          JMP END_RIDEINTRO_CHECK
          
          LOWER_STARTRIDESCREEN:         
          MOVB #0,STARTRIDEFLAG
          MOVB #0,RIDEBEGINFLAG
          
         
         
          
          
          END_RIDEINTRO_CHECK:
          
          
          
          
          
         
   ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
   SECRET_PASSWORD:
   			LDAA SECRETPASSWORDFLAG
   			CMPA #0  				;1 = ITS LOCKED
   			BNE CHECK_SECRETPASSWORD 		;IF ITS 1, 
   			
   			
   			JMP CHECK_SECRETPASSWORD_TIMER
   			
   			
   			CHECK_SECRETPASSWORD:
   
   			LDAA PASSWORD
   			CMPA #7
   			BNE END_SECRETPASSWORD
   			LDAA PASSWORD+1
   		     CMPA #7
   			BNE END_SECRETPASSWORD
   			
   			LDAA PASSWORD+2
   			CMPA #7
   			BNE END_SECRETPASSWORD
   			
   			LDAA PASSWORD+3
   		     CMPA #7
   			BNE END_SECRETPASSWORD

   			 MOVB #0,SECRETPASSWORDFLAG
   			 MOVW #55000,SECRETPASSWORDTIMER
   			 JMP END_SECRETPASSWORD
   			 
   			 CHECK_SECRETPASSWORD_TIMER:
   			 
   			 LDX SECRETPASSWORDTIMER
   			 CPX #0
   			 BEQ END_SECRETPASSWORD
   			 DEX
   			 STX SECRETPASSWORDTIMER
   			
   	
   			
   				
   END_SECRETPASSWORD:
   ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
          ;RIDE OUTRO SCREEN
          
          LDAA RIDEENDFLAG
          CMPA #1
          BNE END_RIDEOUTRO_CHECK
         
          LDX RIDEOUTROTIMER
          CPX #0
          BEQ LOWER_RIDE_OUTRO_SCREEN
          
          
          DEX 
          STX RIDEOUTROTIMER
          
          JMP END_RIDEOUTRO_CHECK
          
          LOWER_RIDE_OUTRO_SCREEN:
                   

          MOVB #0,RIDEENDFLAG

          END_RIDEOUTRO_CHECK:
   ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~      
               
          
          
          
          
          
          
          
          
  
 ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
 ;IF RIDE IN MOTION, AND POT WAS PRESSED, = DISPLAY TEMPORARY SCREEN TO SHOW CAR INFORMATION           
          LDAA RIDEINMOTIONFLAG
          CMPA #1
          BNE END_CHECK_POT_VALUE_CHANGED   ;IF IN MOTION...
          
          LDAA POTVALUECHANGEDFLAG
          CMPA #1                                      ;AND POT WAS PRESSED.....
          BNE CHECK_POT_VALUE_CHANGED_TIMER
          
          MOVW #30000,POTVALUECHANGEDTIMER
          JMP END_CHECK_POT_VALUE_CHANGED               ;SET POTVALUECHANGEDTIMER, WHICH SPITS DYNAMIC CAR INFO, AND STATIC SCREEN TO BOARD
          
          
         CHECK_POT_VALUE_CHANGED_TIMER:                 ;RIDE IN MOTION, POT NOT PRESSED.....CHECK TIMER, IF 0 LEAVE, IF NOT DEC, LEAVE
               LDX POTVALUECHANGEDTIMER
               CPX #0
               BEQ END_CHECK_POT_VALUE_CHANGED
               DEX
               STX POTVALUECHANGEDTIMER
 
          
          END_CHECK_POT_VALUE_CHANGED:
          
  
         END_CHECK_RIDE_IN_MOTION_TIMERS: 
          
   ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~       
          
          








 ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          ;RIDE LAYOUT SCREEN -->  1-LEFT 2-RIGHT 3-HILL 4- STR8   
            RIDELAYOUT_TIMERS:                    ;TEMPORARY SCREENS DO NOT HAVE FLAGS, ONLY TIMERS THAT ARE CHECKED IN DECIDE SCREEN TO MASK CURRENT 
                  LDAA RIDELAYOUTFLAG                                                                                          ;STATE SCREEN
                  CMPA #0 
                                                  ;EXCEPTION : STARTRIDEFLAG, STARTRIDETIMER
                  BEQ END_RIDELAYOUT_TIMERS
                                                   ;TIMERS ARE STARTED IN DECIDE STATE
                  
                  LDX RIDELAYOUTINTROTIMER
                  CPX #0
                  BEQ END_RIDELAYOUT_TIMERS
                  DEX
                  STX RIDELAYOUTINTROTIMER
                  
            END_RIDELAYOUT_TIMERS:
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~






 ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          ;RIDE BEGIN LOCKOUT  
           
  RIDEBEGIN_SCREEN:               ; 
                  
                  LDD STARTRIDETIMER                                                                                          
                  CPD #0 
                                                  ;EXCEPTION : STARTRIDEFLAG, STARTRIDETIMER
                  BEQ LOWER_RIDEBEGIN_FLAG
                                                   ;TIMERS ARE STARTED IN DECIDE STATE                 
                  LDX STARTRIDETIMER
                  DEX
                  STX STARTRIDETIMER
                  JMP END_RIDEBEGIN_SCREEN

    
                  
                  LOWER_RIDEBEGIN_FLAG:
                  MOVB #0,STARTRIDEFLAG
                  
            END_RIDEBEGIN_SCREEN:
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~








 ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          ;CURRENTRIDEPARTCOUNTER    ;THIS IS SENT TO US FROM THE STATE SCREEN 
           
  CURRENTRIDEPART_COUNTER:               ; 
                  
					LDX CURRENTRIDEPARTTIMER
					CPX #0
					BNE DECREMENT_CURRENTRIDEPARTCOUNTER
					JMP DONT_DECREMENT_CURRENTRIDEPARTCOUNTER
DECREMENT_CURRENTRIDEPARTCOUNTER:
		LDX CURRENTRIDEPARTTIMER
		DEX
		STX CURRENTRIDEPARTTIMER
		
DONT_DECREMENT_CURRENTRIDEPARTCOUNTER:
					
                  
                     ;FLAGS?
                     
               
            END_CURRENTRIDEPART_COUNTER:
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~










;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; INCREASE SPEED TIMER
		LDAA INCREASESPEEDFLAG
		CMPA #1
		BNE END_INCREASE_SPEED_TIMER
		
		
		
		LDX INCREASESPEEDTIMER
		CPX #0
		BEQ END_INCREASE_SPEED_TIMER
									;DONT RESET THE TIMER, WE DO THAT ELSEWHERE
		LDX INCREASESPEEDTIMER
		DEX
		STX INCREASESPEEDTIMER

		



END_INCREASE_SPEED_TIMER:
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;DECREASE SPEED TIMER

		LDAA DECREASESPEEDFLAG
		CMPA #1
		BNE END_DECREASE_SPEED_TIMER
		
		
		
		LDX DECREASESPEEDTIMER
		CPX #0
		BEQ END_DECREASE_SPEED_TIMER
		
		LDX DECREASESPEEDTIMER
		DEX
		STX DECREASESPEEDTIMER

	
	
	
	
END_DECREASE_SPEED_TIMER:
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


;*******************************************************************************************************************
;*******************************END SET FLAGS**************************************************************************************        





                            ;8000/8MHZ = .001 , SO 8000 = 2^13 = 0100,0000
                            ;$17 = 1.024 ms = 976.56
                            ;$30 = .512  ms = 1953.125 
                            ;$10 = .128  ms = 7812.5



;****************************CLOCK************************************************
 
          JSR RTI_CLOCK
          
         

;******************************END CLOCK****************************************************





        JSR DECIDE_STATE_CHANGE















   




;******SPEAKER**************************************************************************

 
 

 
                                              ;SHOULD I RESET THE SONG, COUNT, FLAG, IF HERE INCASE IT GOT CUT OFF??????
           
      LDAA WELCOMEFLAG
      CMPA #1
      BEQ PLAY_BRYCE_JUMP1
      JMP SKIP_BRYCEHEREBRO
      
      
      PLAY_BRYCE_JUMP1:
      JMP PLAY_BRYCE
      SKIP_BRYCEHEREBRO:
      
      
      ;~~~~~~~~~~~~~~~~~~~~~~
      LDAA STARTRIDEFLAG
      CMPA #1
      BEQ PLAY_DEPAYSEMENT
      ;~~~~~~~~~~~~~~~~~~~~~~~~
      
      LDX PLAYGORILLATIMER
      CPX #0
      BEQ SKIPGORILLAHERE
      
      JMP PLAY_GORILLA
      
      SKIPGORILLAHERE:
      LDX PLAYDEPAYSEMENTTIMER
      CPX #0
      BEQ SKIPDEPAYSEMENTHERE
      
      JMP PLAY_DEPAYSEMENT
      
      SKIPDEPAYSEMENTHERE:
      LDX PLAYBRYCETIMER
      CPX #0
      BEQ SKIPPLAYBRYCEHERE
      JMP PLAY_BRYCE
      
      SKIPPLAYBRYCEHERE:
      
      
      ;~~~~~~~~~~~~~~~
      LDX SECRETPASSWORDTIMER
      CPX #0
      BNE PLAY_DEPAYSEMENT_FOR_SECRETPASSWORD
  	JMP DONT_PLAY_DEPAYSEMEMENTFORSECRETPASSWORD    
  PLAY_DEPAYSEMENT_FOR_SECRETPASSWORD:
  JMP PLAY_DEPAYSEMENT
      
    DONT_PLAY_DEPAYSEMEMENTFORSECRETPASSWORD:  
      ;~~~~~~~~~~~~~~~~~
      
      
      
      ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      LDX PUSHBUTTONTIMER
      CPX #0
      BNE PLAY_GORILLA_JUMP
      
      JMP SKIPTHISSHITBROBROBRO
      
      PLAY_GORILLA_JUMP:
      JMP PLAY_GORILLA
      
      	SKIPTHISSHITBROBROBRO:
      ;~~~~~~
      
      
      ;~~~~~~~~~~~~~~
      LDAA IRQ_FLAG
      CMPA #1      
      BEQ PLAYSIRENSONG_JUMP
      JMP SKIP_PLAYSIRENSONG_JUMP
      
      
      
		PLAYSIRENSONG_JUMP:
		JMP PLAYSIRENSONG
		SKIP_PLAYSIRENSONG_JUMP:  
	;~~~~~~~	
		
		LDAA PLAYGORILLAFLAG
		CMPA #1
		BEQ PLAY_GORILLA_JUMP2
		
		JMP SKIPTHISSHITBROBRO
		
		PLAY_GORILLA_JUMP2:
		JMP PLAY_GORILLA
		
		SKIPTHISSHITBROBRO:
		
		JMP PLAY_NO_SONG   
      
      
      
      
      
  
;***************************************************************************************        
PLAY_DEPAYSEMENT:      
                 ;WERE AT TERMINATOR, SET SONG FLAG LOW,COUNTER BACK TO 0
      
      
      	  LDD SONGCOUNT         ;PUTS IT INTO A  D = B:A MAYBE?????
	       CLRB
	       TAB
	       CLRA
	       ADDD #DEPAYSEMENT          
	       XGDX                           ;X NOW HAS ADDRESS OF THE SONG PART WE WANT TO SEND TO SENDCHR 
	       
	       	       
	       LDAA 0,X
	       STAA CURRENTSONGPART
	       
	       
	       
	       
	       
	       LDAA CURRENTSONGPART
         CMPA #$FF
         BEQ END_OF_DEPAYSEMENT_SONG
         
	       
	                       

                LDAA CURRENTSONGPART
                PSHA
                JSR SendsChr
                PULA
                JSR PlayTone


          LDX SONGTIMER
          CPX #0       
          BNE SKIP_INCREMENT_SONGCOUNT
          INC SONGCOUNT
          MOVW #1450,SONGTIMER
          
          JMP END_SPEAKER    
          
    SKIP_INCREMENT_SONGCOUNT:
    
          DEX 
          STX SONGTIMER
      


      
      JMP END_SPEAKER
     
     END_OF_DEPAYSEMENT_SONG:
        MOVB #0,SONGCOUNT
        MOVB #0,CURRENTSONGPART
        JMP END_SPEAKER 
      

              
  END_PLAY_DEPAYSEMENT_CHECK:
  
       
  
  
  
  
  
  
  
 ;***************************************************************************************   
PLAY_BRYCE:

      	  LDD SONGCOUNT         ;PUTS IT INTO A  D = B:A MAYBE?????
	       CLRB
	       TAB
	       CLRA
	       ADDD #NOWMIGHTBETHETIME          
	       XGDX                           ;X NOW HAS ADDRESS OF THE SONG PART WE WANT TO SEND TO SENDCHR 
	       
	       	       
	       LDAA 0,X
	       STAA CURRENTSONGPART
	       
	       
	       
	       
	       
	    LDAA CURRENTSONGPART
         CMPA #$FF
         BEQ END_OF_BRYCE_SONG
         
	       
	                       

                LDAA CURRENTSONGPART
                PSHA
                JSR SendsChr
                PULA
                JSR PlayTone


          LDX SONGTIMER
          CPX #0       
          BNE SKIP_INCREMENT_SONGCOUNT_BRYCE
          INC SONGCOUNT
          MOVW #1450,SONGTIMER
          
          JMP END_SPEAKER ;USED TO BE END PLAY BRYCE, BUT YOU WILL NEVER PLAY TWO SONGS  
          
    SKIP_INCREMENT_SONGCOUNT_BRYCE:
    
          DEX 
          STX SONGTIMER
      


      
      JMP END_SPEAKER
     
     END_OF_BRYCE_SONG:
        MOVB #0,SONGCOUNT
        MOVB #0,CURRENTSONGPART
        JMP END_SPEAKER							;JMP END_PLAY_DEPAYSEMENT_CHECK 

END_PLAY_BRYCE:  
  
  
  
  
  
  
  
  
  
;*************************************************** 
PLAY_GORILLA:

      	  LDD SONGCOUNT         ;PUTS IT INTO A  D = B:A MAYBE?????
	       CLRB
	       TAB
	       CLRA
	       ADDD #GORILLA          
	       XGDX                           ;X NOW HAS ADDRESS OF THE SONG PART WE WANT TO SEND TO SENDCHR 
	       
	       	       
	       LDAA 0,X
	       STAA CURRENTSONGPART
	       
	       
	       
	       
	       
	    LDAA CURRENTSONGPART
         CMPA #$FF
         BEQ END_OF_GORILLA
         
	       
	                       

                LDAA CURRENTSONGPART
                PSHA
                JSR SendsChr
                PULA
                JSR PlayTone


          LDX SONGTIMER
          CPX #0       
          BNE SKIP_INCREMENT_SONGCOUNT_GORILLA
          INC SONGCOUNT
          MOVW #1450,SONGTIMER
          
          JMP END_SPEAKER ;USED TO BE END PLAY BRYCE, BUT YOU WILL NEVER PLAY TWO SONGS  
          
    SKIP_INCREMENT_SONGCOUNT_GORILLA:
    
          DEX 
          STX SONGTIMER
      


      
      JMP END_SPEAKER
     
     END_OF_GORILLA:
        MOVB #0,SONGCOUNT
        MOVB #0,CURRENTSONGPART
        JMP END_SPEAKER							;JMP END_PLAY_DEPAYSEMENT_CHECK 

END_PLAY_GORILLA:  
  
  
  




;*******************************************
 PLAYSIRENSONG:
 
 
 
 
      	 LDD SONGCOUNT         ;PUTS IT INTO A  D = B:A MAYBE?????
	       CLRB
	       TAB
	       CLRA
	       ADDD #SIRENSONG         
	       XGDX                           ;X NOW HAS ADDRESS OF THE SONG PART WE WANT TO SEND TO SENDCHR 
	       
	       	       
	       LDAA 0,X
	       STAA CURRENTSONGPART
	       

	       
	       LDAA CURRENTSONGPART
         CMPA #$FF
         BEQ END_OF_SIRENSONG
         

                LDAA CURRENTSONGPART
                PSHA
                JSR SendsChr
                PULA
                JSR PlayTone


          LDX SONGTIMER
          CPX #0       
          BNE SKIP_INCREMENT_SONGCOUNT_SIRENSONG
          INC SONGCOUNT
          MOVW #1450,SONGTIMER
          
          JMP END_SPEAKER  
          
    SKIP_INCREMENT_SONGCOUNT_SIRENSONG:
    
          DEX 
          STX SONGTIMER

      JMP END_SPEAKER
     
     END_OF_SIRENSONG:
        MOVB #0,SONGCOUNT
        MOVB #0,CURRENTSONGPART
        JMP END_SPEAKER							;JMP END_PLAY_DEPAYSEMENT_CHECK 

 
 END_PLAY_SIRENSONG:
 
 
 
 
 
 
 
 
 PLAY_NO_SONG:
 
 	MOVB #0,SONGCOUNT
 	MOVB #0,CURRENTSONGPART
 	MOVW #1450,SONGTIMER
 END_SPEAKER:
    
                        









;**********DC MOTOR CODE********************************************************
      ;DC_SPEED =
      
      
      LDAA RIDEINMOTIONFLAG
			CMPA #1
			BNE LEAVE_DCMOTOR
      
      

			LDAA DC_MOTORCOUNTER
			DECA
			STAA DC_MOTORCOUNTER 
      CMPA #0
      BNE LEAVE_DCMOTOR        	;DONT GO TO STEPPER MOTOR IF COUNTER IS DECREMENTED TO 0
      JSR DC_MOTOR




LEAVE_DCMOTOR:

 ;*******END DC MOTOR*************************************************************





;*****************STEPPER MOTOR**************************************************************	                  
;1-LEFT 2-RIGHT 3-HILL 4- STR8
   
   
                       ;clockwise for left
                                              ;turns, counterclockwise for right turns.
          ;~~~~~~~~~~~~~~~~~~~~~~STEPPER MOTOR DIRECTION~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
              
              LDAA CURRENTRIDEPART     
              CMPA #1                       ;CLOCKWISE (RIGHTSPIN) FOR LEFT TURNS (1)
              BEQ STEPPERSPINRIGHT 
              
              
              LDAA CURRENTRIDEPART            ;COUNTERCLOCKWISE (LEFTSPIN) FOR RIGHT TURNS
              CMPA #2
              BEQ STEPPERSPINLEFT
              
              LDAA CURRENTRIDEPART     
              CMPA #3                               ;NORMAL SPIN RIGHT FOR HILL       (3)
              BEQ STEPPERSPINRIGHT
              
              
              LDAA CURRENTRIDEPART     
              CMPA #4                               ;NORMAL SPIN RIGHT FOR STRAIGHT (4)
              BEQ STEPPERSPINRIGHT
              
              
              
              
              
              
              ;COUNTERCLOCKWISE = 0
              
              
              
          STEPPERSPINLEFT: 
          
          
          
          
          		;SWITCHES TRUMP ALL ELSE SO CHECK THEM LAST
          		
          		
          		LDAA BOTHSWITCHSAME  		;BOTH SWITCHES SAME = DO NOTHING
          		CMPA #1
          		BEQ DONT_DO_THIS_GARY
          		
          		LDAA SWITCH_MSBHIGH			;MSB HIGH = TRUMP ALL ELSE, GO CLOCKWISE =1
          		CMPA #1
          		BEQ STEPPERSPINRIGHT
          		DONT_DO_THIS_GARY:
          
          
          
          
          
                          MOVB #0,STEPPERMOTOR_DIRECTION  
                          BRA SKIP
          STEPPERSPINRIGHT:
          
          
          
          
          			
                   	LDAA BOTHSWITCHSAME  		;BOTH SWITCHES SAME = DO NOTHING
          		CMPA #1
          		BEQ DONT_DO_THIS_GARY2
          		
          		LDAA SWITCH_LSBHIGH			;MSB HIGH = TRUMP ALL ELSE, GO CLOCKWISE =1
          		CMPA #1
          		BEQ STEPPERSPINLEFT
          		DONT_DO_THIS_GARY2:
          
          
          
          
          
                          MOVB #1,STEPPERMOTOR_DIRECTION		
                             SKIP:  
          ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
          
          
			LDAA RIDEINMOTIONFLAG
			CMPA #1
			BNE SKIP_STEPPERMOTOR

			
			LDX STEPPERSPEED_COUNTER          ;HOW MANY RTI INTERVALS SHOULD IT WAIT TO GO THROUGH ONE
			                                  ;ITERATION OF STEPPER CODE,
			DEX 
			STX STEPPERSPEED_COUNTER
      CPX #0
      BNE SKIP_STEPPERMOTOR        	;DONT GO TO STEPPER MOTOR IF COUNTER IS DECREMENTED TO 0

      MOVB #1,STEPPERMOTORFLAG      ;PASS STEPPERMOTORFLAG TO MAIN, STEPPER JSR WILL EXECUTE ONE CYCLE THEN SET
                                    ;THE FLAG LOW AGAIN
      
      
      
      
      
      
      
      JSR STEPPERMOTOR





      
      SKIP_STEPPERMOTOR:
;******************END STEPPER MOTOR****************************************************


  
  MOVB #0,POTVALUECHANGEDFLAG
  
  


;	LDAA RIDEINMOTIONFLAG
	CMPA #1
;	BEQ DONT_LOWER_HEXKEYPRESSEDFLAG_WHENRIDEISINMOTION     ;HEXKEYPRESSED MUST BE LOWERED BY FUNCTIONS, IF RIDEINMOTION IS DEALING WITH IT
	MOVB #0,HEXKEYPRESSED	
 ;    DONT_LOWER_HEXKEYPRESSEDFLAG_WHENRIDEISINMOTION:






	ENDMYISR:      		BSET	RTIFLAG, $80
	RTI

	;RTIFLG: need to reset at every interrupt
	;RTIENA: to enable RTI
	;RTICTL: to set interval time we want to set to $60
			
				
					
					
					
					