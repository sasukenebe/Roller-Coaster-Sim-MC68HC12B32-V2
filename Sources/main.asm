


;****************************NOTES*****************************************************************************
;

;To use SendsChr.c:



;Place jumper 6 on the lower two pins, it is located next to the potentiometer for the amplifier.



   ;~~~~~~~~~~~~~~~~~~~~~~~~
; ANDA    DOES A*M==>A  
      ;A: 1000 0000
      ;M: 1000 0000
   
 ;RESULT: 1000 0000



 ;~~~~~~~~~~~~~~~~~~~~~~~~~~~
 
 
 
 
 
 ;MUL ---->   A*B --> D
 
 
 
    ;~~~~~~~~~~~~~~~~~~~~~~~~
;IDIV ------    D / X    STORE IN X   REMAINDER IN D


 ;~~~~~~~~~~~~~~~~~~~~~~~~~~~
 
 
 
 ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 ;COMA STORE COMPLIMENT OF A IN A
 ;COM 
 ;~~~~~~~~~~~~~~~~~~~~~~~~





  ;~~~~~~~~~~~~~~~~~~~~~~~~
 ;HOW TO LOAD A STRING FOR DISPLAY (HAPPENS AT MAIN)
       ;LDX #RYANSTRING
       ;STX CURRENTSTRING
   ;~~~~~~~~~~~~~~~~~~~~~~~~
   
   
   
   
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 ;EVERY X RTIS, DO STEPPER JSR ; X = STEPPERSPEED

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~   
   
   
   
   
  ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  ;DO NOT DO LCD IN RTI, WILL CAUSE LATENCY ISSUES

;READ INPUTS IN MAIN, THEN WHEN JUMPS TO RTI, WE SIMPLY DECIDE WHAT TO DO WITHOUR INFORMATION, FLAGS ARE SET IN EACH INDIVIDUAL 
    ;INPUT READING ROUTINE
    ;SWITCH 4 (BIT 3) OF PORT_T NEEDS TO BE SET HIGH IN ORDER FOR DC MOTOR TO WORK, THUS CANT BE USED AS INPUT
    
    ; DC MOTOR SPEED IS EFFECTED BY DUTY CYCLE, ESSENTIALLY PULSE WIDTH MODULATION
    ;STEPPER MOTOR SPEED IS EFFECTED BY A COUNTER IN RTI, THAT SAYS, AFTER SO MANY RTIS OF 1 MS, SEND A PULSE TO THE STEPPER MOTOR, 
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;BLT BGT, signed
;LDAA #5
;CMPA 10                                A-10
;BLT WILL BRANCH IT 10 IS LESS THAN 5 
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~




 
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
;TEMPLATE FOR WRITING TO AN ARRAY BASED ON A CURRENT SELECTION (COUNT VARIABLE OR CURRENTCAR FOR EXAMPLE)

; ;PUT CURRENT HEXVALUE INTO RIDEARRAYINPUT + RIDEARRAYCOUNT ADDRESS                               
	                
	                                     
	       ;LDD RIDEARRAYCOUNT         ;PUTS IT INTO A  D = B:A MAYBE?????
	       ;CLRB
	       ;TAB
	       ;CLRA
	       ;ADDD #RIDEARRAYINPUT          
	       ;XGDX                           ;X NOW HAS ADDRESS TO PUT HEXVALUE IN 
	       
	       	       
	       ;LDAA HEXVALUE                  
	       ;STAA 0,X
	       
	       
	       ;LDAA 1,X
	       ;CMPA #$FF
	       ;BNE LOAD_1_TO_RIDEARRAYINPUT
	       ;JMP OUTPUT_TO_RIDEARRAY
	       
	       

	       

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



 ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
 ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  
   
;****************************************************************************************************************




; Include derivative-specific definitions
            INCLUDE 'derivative.inc'



;XDEFS******************************************************************************************************
            XDEF Entry, _Startup
            XDEF DISP
            XDEF SECOND
            XDEF COUNT
            XDEF TENS
            XDEF ONES
            XDEF PORT_S
            XDEF PORT_S_DDR
            XDEF RTIENABLEPORT
            XDEF RTIENABLE
            XDEF RTICTL
            XDEF SIRENSONG
		XDEF PLAYASONGFLAG
		XDEF SEEPHOTOSFLAG
		      	XDEF PORT_U
		      	XDEF PORT_U_DDR
		      	XDEF PORT_U_PSR
		      	XDEF PORT_U_CR
		      	XDEF LOOKUP
		      	XDEF TABLE
		      	XDEF PORT_T
		      	XDEF PORT_T_DDR
		      	XDEF RTIFLAG
		      	XDEF hundredsDigit
	      		XDEF tensDigit
	      		XDEF onesDigit
	      		XDEF stringpointer
	      		XDEF HEXVALUE
	      		XDEF PORT_P
	      		XDEF PORT_P_DDR
	      		XDEF SWITCHVALUE
	      		XDEF STEPPERSPEED_COUNTER
	      		XDEF STEPPER_SEQUENCE
	      		XDEF STEPPERSEQUENCE_COUNT
	      		XDEF STEPPERSPEED
	      		XDEF HEXKEYPRESSED
	      		XDEF STEPPERMOTOR_DIRECTION	 	;0 = REVERSE 1 = FORWARD
	      		XDEF STEPPERSEQUENCEREVERSE_COUNT
	      		XDEF STEPPER_SEQUENCE_REVERSE
	      		XDEF ONTIME
	      		XDEF OFFTIME
	      		XDEF TOTALRIDESPEED
	      		XDEF RIDEARRAYINPUT
	      		XDEF RIDEARRAYCOUNT
	      		XDEF CURRENTCAR
	      		XDEF CARPASSENGERS
	      		XDEF CARADULTKIDS
	      		XDEF CARSEATSOCCUPIED
	      		XDEF CARPHOTOOPTIONS
	      		XDEF POTINTERVAL
	      		XDEF RIDEINMOTIONSTRING
	      		XDEF STARTRIDETIMER
	      		XDEF SONGCOUNT
	      		XDEF SONGTIMER 
	      		XDEF RIDEENDFLAG
	      		XDEF RIDEBEGINFLAG          ;USED TO SET OFF CHAIN OF EVENTS OF THE RIDE
	      		XDEF RIDE_TIME
	      		XDEF PLAYGORILLASONGFLAG
	      		XDEF INTCR
	      		XDEF TIMECHANGEDFLAG
	      		
	      		
	      		
	      		
	      		XDEF TENHOURSINPUTSTRING
	      		XDEF HOURSINPUTSTRING
	      		XDEF TENMINUTESINPUTSTRING
	      		XDEF MINUTESINPUTSTRING
	      		XDEF TENSECONDSINPUTSTRING
	      		XDEF SECONDSINPUTSTRING
	      		
	      		
	      		XDEF PASSWORD
	      		
	      		
	      		XDEF SWITCH7NOTHIGHSTRING
	      		XDEF RIDEOUTROSTRING
	      		XDEF RIDEARRAYCOUNTRIDEINMOTION
	      		XDEF CHANGETENHOURSFLAG
	      		XDEF CHANGEHOURSFLAG
	      		XDEF CHANGETENMINUTESFLAG
	      		XDEF CHANGEMINUTESFLAG
	      		XDEF CHANGETENSECONDSFLAG
	      		XDEF CHANGESECONDSFLAG
	      		XDEF STORETIMEFLAG
	      		
	      		XDEF TENHOURSINPUT
	      		XDEF HOURSINPUT
	      		XDEF TENMINUTESINPUT
	      		XDEF MINUTESINPUT
	      		XDEF TENSECONDSINPUT
	      		XDEF SECONDSINPUT
	      		XDEF SWITCH7NOTHIGHFLAG
	      		XDEF SWITCH7NOTHIGHTIMER
	      		
	      		XDEF CHANGETENMONTHSFLAG
	      		XDEF CHANGEMONTHSFLAG
	      		XDEF CHANGETENDAYSFLAG
	      		XDEF CHANGEDAYSFLAG
	      		
	      		XDEF TENMONTHSINPUT
	      		XDEF MONTHSINPUT
	      		XDEF TENDAYSINPUT
	      		XDEF DAYSINPUT 
	      		
	      		XDEF PREVIOUSPOTVALUE
	      		
	          XDEF TIMERSPEED
	      		
	      		XDEF RIDEPART1
	      		XDEF RIDEPART2
	      		XDEF RIDEPART3
	      		XDEF RIDEPART4
	      		XDEF RIDEPART5
	      		XDEF RIDEPART6
	      		XDEF SECRETPASSWORDTIMER
	      		
	      		XDEF CURRENTRIDEPART
	      		
	      		XDEF RIDEARRAY    ;1-LEFT TURN 2-RIGHT TURN 3-HILL  4-STRAIGHT AWAY 
	      		
	      		;***FLAGS******
	      		XDEF DC_FLAG
	      	  XDEF PUSHBUTTONFLAG
	      	  XDEF SECONDSCHANGED
	      	  XDEF MINUTESCHANGED
	      	  XDEF HOURSCHANGED
	      	  XDEF STEPPERMOTORFLAG
	      	  XDEF BOTHSWITCHESHIGH
	      	  XDEF BOTHSWITCHESLOW
	      	  XDEF WELCOMEFLAG
	      	  XDEF MAINMENUFLAG
	      	  XDEF MAINMENU1FLAG
	      	  XDEF MAINMENU2FLAG
	      	  XDEF MAINMENU3FLAG
	      	  XDEF RIDESPEEDFLAG
	      	  XDEF DATETIMEFLAG
	      	  XDEF SYSPASSFLAG
	      	  XDEF RIDEOUTROTIMER
	      	  XDEF IRQ_STRING
	      	  XDEF RTI_FLAG
	      	  XDEF STOPSTARTSTEPPERCOUNTER
	          XDEF MAINMENU4STRING
	          XDEF SECRETPASSWORDFLAG
	      	  
	      	  XDEF CARSETTINGSFLAG
	      	  XDEF CARSETTINGS1FLAG
	      	  XDEF CARSETTINGS2FLAG
	      	  XDEF CARSETTINGS3FLAG
	      	  XDEF CARSETTINGS4FLAG
	      	  XDEF CARSETTINGS5FLAG

			XDEF SEEPHOTO1FLAG
			XDEF SEEPHOTO2FLAG
			XDEF SEEPHOTO3FLAG

	      	  
	      	  XDEF RIDELAYOUTFLAG
	      	  XDEF STARTRIDEFLAG
	      	  XDEF RIDEINMOTIONFLAG
	      	  XDEF TOGGLELEDSFLAG
	      	  
	      	  XDEF INVALIDCARSELECTIONFLAG
	      	  XDEF FLASHLEDFLAG
	      	  XDEF IRQ_FLAG
	      	  XDEF IRQTIMER1
	      	  XDEF IRQTIMER2
	      	  
	      	  XDEF RIDEINMOTIONFLAG
	      	  XDEF PASSWORDLOCKED
	      	  XDEF PUSHBUTTONTOGGLE
            XDEF CHANGETIMEFLAG
            XDEF CHANGEDATEFLAG
            XDEF PLAY_DEPAYSEMENT_FLAG
            XDEF LEDTOGGLEVARIABLE
            XDEF TOTALRIDESPEED_CHANGEDFLAG
            XDEF SECRETPASSWORDSTRING
            
	      	  ;****END FLAGS
	      	  
	      	  ;****TIMERS******
	      	  XDEF PUSHBUTTONTIMER
	      	  XDEF WELCOMETIMER

	      		XDEF DC_MOTORCOUNTER
	      	  XDEF DC_SPEED
	      	  XDEF STRING_COUNTER
	      	  XDEF INVALIDCARSELECTIONTIMER
	      	  XDEF STARTRIDETIMER
	      	  XDEF POTVALUECHANGEDTIMER
	 
	      	  ;********STRINGS***************
	      	  XDEF LAURA_STRING
	      	  XDEF WELCOME_STRING
	      	  XDEF CURRENTSTRING
	      	  XDEF RYANSTRING
	      	  XDEF MAINMENU1STRING
	      	  XDEF MAINMENU2STRING
	      	  XDEF MAINMENU3STRING
	      	  XDEF CHANGETIMECOUNTER
		XDEF SEEPHOTO1STRING
		XDEF SEEPHOTO2STRING
		XDEF SEEPHOTO3STRING
		XDEF PLAYBRYCETIMER
		XDEF PLAYDEPAYSEMENTTIMER
		XDEF PLAYGORILLATIMER

	      	 
            XDEF DISPLAYTIMESTRING
            XDEF RIDESPEEDSTRING                        
            XDEF DATETIMESTRING                            
            XDEF SYSPASSSTRING               
            XDEF CARSETTINGSSTRING
            XDEF RIDELAYOUTSTRING
            XDEF RIDELAYOUTSTRINGC
            XDEF CHANGEDATESTRING
            XDEF CHANGETIMESTRING
            XDEF RIDELAYOUTINTROSTRING
            XDEF RIDELAYOUTINTROTIMER
            XDEF INVALIDCARSELECTIONSTRING
            XDEF CARSETTINGS1STRING
            XDEF CARSETTINGS2STRING
            XDEF CARSETTINGS3STRING
            XDEF CARSETTINGS4STRING
            XDEF RIDEINTROSTRING
            XDEF POTVALUECHANGEDFLAG
            XDEF POTVALUERIDEINMOTIONSTRING
            XDEF DEPAYSEMENT
            XDEF RIDEINMOTIONSWITCH2FLIPPEDSTRING
            XDEF MAINMENUDISPLAYTIMESTRING
            XDEF INCREASESPEEDTIMER
            XDEF DECREASESPEEDTIMER
            XDEF INCREASESPEEDFLAG
            XDEF DECREASESPEEDFLAG
            XDEF DESIREDDCSPEED
            XDEF DESIREDSTEPPERSPEED
	    XDEF PLAYASONGSTRING
            XDEF SEEPHOTOSSTRING
            XDEF VAR1
            XDEF FLASHLEDSTIMER
			
            
                 
           
	      	  ;******END STRINGS*************
	      	  
	      	  ;******SWITCHES*****
	      	  XDEF SWITCH_MSBHIGH
	      	  XDEF SWITCH_LSBHIGH
	      	  XDEF SWITCHESOFF
	      	  XDEF BOTHSWITCHSAME
          	XDEF SWITCHFLIPPED
          	XDEF PORT_T_VALUE
          	XDEF SWITCH_MSBHIGH
          	XDEF SWITCH_LSBHIGH
			      ;******END SWITCHES
			      
			      ;*****CLOCK
			      XDEF CLOCKCOUNT
			      XDEF SECONDS
			      XDEF MINUTES
			      XDEF HOURS
			      XDEF TENSECONDS
			      
            XDEF ONESECONDS
            XDEF TENMINUTES
            XDEF ONEMINUTES
            XDEF TENHOURS
            XDEF ONEHOURS
            XDEF DISPLAY_TIME_BOTTOM_RIGHT_FLAG
            XDEF STEPPERMOTORFLAG
            
            
            XDEF DATECHANGEDFLAG
            
            ;***OTHER ASM ROUTINES ETC
            XREF STEPPERMOTOR
            XREF DECIDE_SCREEN
            XREF DECIDE_STATE_CHANGE
            
            XDEF DISPLAYPOTVALUESFLAG
            XDEF POTMAX
            XDEF CAR1POTVALUE
            XDEF CAR2POTVALUE
            XDEF CAR3POTVALUE
            XDEF CAR4POTVALUE
            XDEF CAR5POTVALUE
            XDEF CAR6POTVALUE
            XDEF CAR7POTVALUE
            XDEF CAR8POTVALUE
            XDEF PLAYGORILLAFLAG
            XDEF FLASHONLEDS
            XDEF FLASHOFFLEDS
            
            XDEF VARIABLE_1
            XDEF SONGFLAG
            XDEF CURRENTSONGPART
            XDEF NOWMIGHTBETHETIME
            XDEF RIDETIMER
            XREF UPDATE_RIDE_SPEED
            XDEF CURRENTRIDEPARTTIMER
            XDEF GORILLA
            XDEF ENDRIDEBECAUSEOFIRQFLAG
            XDEF CHANGEDATECOUNTER
            XDEF CHANGEPASSWORDCOUNTER
            XDEF ENTERPASSWORDCOUNTER
            XDEF PASSWORDSTRING
            XREF GETCARLOCATION_LED


;XREFS******************************************************************************************************
            XREF __SEG_END_SSTACK      ; symbol defined by the linker for the end of the stack
            XREF INIT_LCD
            XREF display_string
            XREF read_pot
            XREF pot_value
   	      	XREF INITIALIZATIONS
	    	    XREF DELAY
 	          XREF HEXPAD
		        XREF GET_POT_VALUES
            XREF SWITCHES
            XREF PUSHBUTTON
            XREF WRITESTRING
            XREF SendsChr
            XREF PlayTone
            XREF GET_CLOCK_VALUES
            XREF FUCKING_IRQ
            
            
;*****************************************BEGIN_VARIABLES**************************************************************************
VARIABLES: SECTION	 	


DISP:			    	            DS.B      33          ;THIS IS AN ARRAY, THAT WE WILL WRITE STRINGS TO,


SECOND:    				          DS.B      1
TENS       			          	DS.B      1
ONES       			          	DS.B      1
HEXVALUE              	 		DS.B      1
SWITCHVALUE            	 		DS.B      1


SECONDS                     DS.B      1
MINUTES                     DS.B      1
HOURS                       DS.B      1




ONTIME                       DS.B    1
OFFTIME                      DS.B    1
POTINTERVAL                  DS.B    1
VARIABLE_1                   DS.B    1
RIDETIMER                    DS.B    1
PLAYGORILLASONGFLAG          DS.B    1

CHANGEDATECOUNTER			DS.B   1


DESIREDSTEPPERSPEED		     DS.B   1
DESIREDDCSPEED				DS.B	  1
PLAYGORILLAFLAG			DS.B   1
FLASHONLEDS				DS.B  1
FLASHOFFLEDS				DS.B   1
SWITCH7NOTHIGHFLAG			DS.B   1
SWITCH7NOTHIGHTIMER			DS.W   1
                                        
  

;*****************FLAGS***********************************




HEXKEYPRESSED				    	  DS.B		1
STEPPERMOTOR_DIRECTION			DS.B		1   			; 0 REVERSE  1 FORWARD
SWITCHFLIPPED               DS.B    1
DC_FLAG                     DS.B    1           ; 0 = NEED TO DO MOTOR MATH TO FIND HOW MANY ON/OFF CYCLES, BEGINNING OF NEW CYCLE 
                                                ; 1 = MOTOR HAS ON POWER TO PULSE
                                                ; 2 = MOTOR IS DONE WITH ON POWER, HAS OFF CYCLES TO DO
PUSHBUTTONFLAG              DS.B    1
SWITCH_MSBHIGH               DS.B    1
SWITCH_LSBHIGH                DS.B    1
SWITCHESOFF                 DS.B    1
BOTHSWITCHSAME                DS.B    1
PORT_T_VALUE                 DS.B     1
DISPLAY_TIME_BOTTOM_RIGHT_FLAG: DS.B  1
SECONDSCHANGED                  DS.B  1
MINUTESCHANGED                  DS.B  1
HOURSCHANGED                    DS.B  1 
STEPPERMOTORFLAG                DS.B  1       
BOTHSWITCHESHIGH                DS.B  1
BOTHSWITCHESLOW                 DS.B  1 
WELCOMEFLAG                     DS.B  1
MAINMENUFLAG                    DS.B  1
MAINMENU1FLAG                    DS.B  1
MAINMENU2FLAG                    DS.B  1
MAINMENU3FLAG                    DS.B  1
MAINMENU4FLAG                    DS.B  1

DATECHANGEDFLAG				DS.B  1

RIDEINMOTIONFLAG                DS.B  1
PASSWORDLOCKED                  DS.B  1
RIDESPEEDFLAG                   DS.B  1
TOGGLELEDSFLAG					DS.B  1
INCREASESPEEDTIMER			DS.W  1
DECREASESPEEDTIMER			DS.W  1
INCREASESPEEDFLAG				DS.B  1
DECREASESPEEDFLAG	      	  	DS.B  1

;FLAG                   DS.B  1
DATETIMEFLAG                    DS.B  1
SYSPASSFLAG                     DS.B  1
CARSETTINGSFLAG                 DS.B  1
RIDELAYOUTFLAG                  DS.B  1
RTI_FLAG                        DS.B   1        ;1=motor turn 2=motor no turn 3= do motor math for how many on off cycles 
STARTRIDEFLAG                   DS.B   1

RIDEPART1                       DS.B   1
RIDEPART2                       DS.B   1
RIDEPART3                       DS.B   1
RIDEPART4                       DS.B   1
RIDEPART5                       DS.B   1
RIDEPART6                       DS.B   1
TIMECHANGEDFLAG			  DS.B   1

CURRENTRIDEPART                 DS.B   1  ;1 TO 6. USED AS A COUNTER
PASSWORDSTRING			       DS.B   5

RIDEARRAY                       DS.B   9
PUSHBUTTONTOGGLE                DS.B   1
RIDEARRAYINPUT                  DS.B   7
RIDEARRAYCOUNT                  DS.B   1
RIDEARRAYCOUNTRIDEINMOTION      DS.B   1
CHANGEDATEFLAG                  DS.B   1
CHANGETIMEFLAG                  DS.B   1

TOTALRIDESPEED_CHANGEDFLAG      DS.B   1


CURRENTCAR                      DS.B   1
CARPASSENGERS                   DS.B   10      ; 0 1 OR 2
CARADULTKIDS                    DS.B   10       ;0 = ADULT    1= KID
CARSEATSOCCUPIED                DS.B   10       ;0= NONE     1=L   2=R   3= BOTH
CARPHOTOOPTIONS                 DS.B   10       ;0=NONE  1=LEFT YES 2=RIGHT YES  3=BOTH YES  

INVALIDCARSELECTIONFLAG         DS.B   1
CARSETTINGS1FLAG                DS.B   1
CARSETTINGS2FLAG                DS.B   1
CARSETTINGS3FLAG                DS.B   1
CARSETTINGS4FLAG                DS.B   1
CARSETTINGS5FLAG                DS.B   1
PLAY_DEPAYSEMENT_FLAG           DS.B   1
STOPSTARTSTEPPERCOUNTER	       DS.W   1



SEEPHOTO1FLAG 			DS.B   1
SEEPHOTO2FLAG 			DS.B   1
SEEPHOTO3FLAG 			DS.B   1

CHANGETENHOURSFLAG              DS.B   1
CHANGEHOURSFLAG                 DS.B   1
CHANGETENMINUTESFLAG            DS.B   1
CHANGEMINUTESFLAG               DS.B   1
CHANGETENSECONDSFLAG            DS.B   1
CHANGESECONDSFLAG               DS.B   1
STORETIMEFLAG                   DS.B   1
                                
TENHOURSINPUT                   DS.B   1
HOURSINPUT                      DS.B   1
TENMINUTESINPUT                 DS.B   1
MINUTESINPUT                    DS.B   1
TENSECONDSINPUT                 DS.B   1
SECONDSINPUT                    DS.B   1

CHANGETENMONTHSFLAG             DS.B   1
CHANGEMONTHSFLAG                DS.B   1
CHANGETENDAYSFLAG               DS.B   1
CHANGEDAYSFLAG                  DS.B   1
CHANGETIMECOUNTER			  DS.B   1
SEEPHOTOSFLAG			DS.B   1
PLAYASONGFLAG			DS.B   1

CHANGEPASSWORDCOUNTER		DS.B   1

ENTERPASSWORDCOUNTER		DS.B   1	


TENMONTHSINPUT                  DS.B   1
MONTHSINPUT                     DS.B   1
TENDAYSINPUT                    DS.B   1
DAYSINPUT                       DS.B   1

POTVALUECHANGEDFLAG             DS.B   1
PREVIOUSPOTVALUE                DS.W   1

DISPLAYPOTVALUESFLAG            DS.B   1
POTMAX                          DS.B   1
CAR1POTVALUE                    DS.B   1
CAR2POTVALUE                    DS.B   1
CAR3POTVALUE                    DS.B   1
CAR4POTVALUE                    DS.B   1
CAR5POTVALUE                    DS.B   1
CAR6POTVALUE                    DS.B   1
CAR7POTVALUE                    DS.B   1
CAR8POTVALUE                    DS.B   1
SONGCOUNT                       DS.B   1

SONGTIMER                       DS.W   1
RIDEENDFLAG                     DS.B   1
RIDEBEGINFLAG                   DS.B   1
FLASHLEDFLAG                    DS.B   1
IRQ_FLAG				       DS.B   1
ENDRIDEBECAUSEOFIRQFLAG	       DS.B   1
LEDTOGGLEVARIABLE		       DS.B   1





TENHOURSINPUTSTRING			DS.B 1
HOURSINPUTSTRING			DS.B 1	
TENMINUTESINPUTSTRING        DS.B 1
MINUTESINPUTSTRING            DS.B 1
TENSECONDSINPUTSTRING		DS.B 1
SECONDSINPUTSTRING			DS.B 1







PASSWORD 					DS.B	    5
;*************TIMERS*************************************
PUSHBUTTONTIMER             DS.W     1
WELCOMETIMER                DS.W     1
RIDELAYOUTINTROTIMER        DS.W     1
INVALIDCARSELECTIONTIMER    DS.W     1
STARTRIDETIMER              DS.W     1
POTVALUECHANGEDTIMER        DS.W     1
CURRENTRIDEPARTTIMER        DS.W     1 
RIDEOUTROTIMER              DS.W     1
IRQTIMER1				   DS.W     1
IRQTIMER2			        DS.W	  1
TIMERSPEED			   DS.W     1
PLAYDEPAYSEMENTTIMER		DS.W   1
PLAYBRYCETIMER				DS.W   1
PLAYGORILLATIMER			DS.W	  1
SECRETPASSWORDTIMER			DS.W   1
FLASHLEDSTIMER				DS.W	  1
;***********************************************************
STRING_COUNTER              DS.B      1
DC_SPEED                    DS.B      1
DC_MOTORCOUNTER             DS.B      1
STEPPERSEQUENCE_COUNT    		DS.W      1

STEPPERSEQUENCEREVERSE_COUNT  DS.W  1

stringpointer          	 		DS.W      1
COUNT      			    		    DS.W      1 
hundredsDigit 			        DS.W      1            ;;these need to be words otherwise they overwrite eachother!!!
tensDigit     			     	  DS.W      1   
onesDigit    		      	  	DS.W      1
STEPPERSPEED_COUNTER   			DS.W      1            ;USE AS A COUNTER, THAT WILL
STEPPERSPEED             		DS.W      1

CLOCKCOUNT                  DS.W      1
TENSECONDS                  DS.B      1
ONESECONDS                  DS.B      1
TENMINUTES                  DS.B      1
ONEMINUTES                  DS.B      1
TENHOURS                    DS.B      1
ONEHOURS                    DS.B      1
VAR1					   DS.B      1


SECRETPASSWORDFLAG			DS.B    1

TOTALRIDESPEED              DS.B      1         ;1-SLOW 2-MED 3-FAST 4-SUICIDE 


STRING_STORAGE              DS.B    1
CURRENTSTRING               DS.W    1                   ;HOLDS AN ADDRESS


RIDELAYOUTSTRING            DS.B      1    ;+22 IS WHERE YOU SHOULD PUT CURRENT RIDE PART
SONGFLAG                    DS.B      1
CURRENTSONGPART             DS.B      1
RIDE_TIME                   DS.W      1


;*************************END_VARIABLES**************************************************************************************************


;*************************BEGIN_CONSTANTS******************************************************************************************
CONSTANTS: SECTION 

RTIENABLEPORT           EQU     $0038     ;THIS NEEDS TO BE SET FOR INTERUPTS TO WORK, ALONG WITH THE CLI COMMAND BEING USED 
RTIENABLE               EQU     $0080     
RTIFLAG                 EQU     $0037     

PORT_S:                 EQU     $248      ;LED
PORT_S_DDR:             EQU     $24A      ;DDR of LEDs 

PORT_T                    EQU     $240      ;SWITCHES
PORT_T_DDR              	EQU	    $242      ;SWITCH DATA DIRECTION REGISTER 

PORT_U                   EQU     $268
PORT_U_DDR               EQU     $26A
PORT_U_PSR                EQU     $26D      ;polarity select register?
PORT_U_CR                 EQU     $26C    ;port u control register? send $0F

PORT_P                    EQU     $258      ;STEPPER MOTOR
PORT_P_DDR                EQU     $25A      ;STEPPER MOTOR DDR
STEPPER_SEQUENCE          DC.B    $0A,$12,$14,$0C,$FF
STEPPER_SEQUENCE_REVERSE  DC.B  $0C,$14,$12,$0A,$FF



 


TABLE                   dc.b    $70,  $B0,   $D0,   $E0,  $FF
                               ;0111, 1011  ,1101   1110
                               ;row1  row2    row3  row4
                               
LOOKUP                  dc.b   $eb,$77,$7b,$7d,$b7,$bb,$bd,$d7,$db,$dd,$e7,$ed,$7e,$be,$de,$ee,$FF

;DEPAYSEMENT             DC.B   24,24,16,19,21,21,21,24,24,16,16,19,21,19,21,$FF

DEPAYSEMENT             DC.B   24,249,16,19,21,21,249,24,249,16,16,19,21,19,21,249,$FF


NOWMIGHTBETHETIME       DC.B   24,24,24,24,24,24,249,249,21,21,18,18,21,21,24,24,24,24,24,24,24,24,249,249,21,21,18,21,21,21,24,24,27,27,27,27,27,27,249,249,21,21,18,18,21,21,24,24,27,27,27,27,27,27,249,249,21,18,18,21,21,21,24,24,$FF


GORILLA             DC.B   27,27,254,27,24,21,21,21,21,254,21,21,24,24,36,36,$FF
SIRENSONG           DC.B   12,18,12,13,12,18,12,13,12,18,12,13,12,18,12,13,12,18,12,13,12,18,12,13,$FF                                                                                                                           ;ENDLINE1
;~~~~~~~~~~~~~~~~~~~~~~~~~~STRINGS~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
WELCOME_STRING:     DC.B      "WELCOME TO GARY-LAND.LETS RIDE! "
     
POT_VALUE_STRING    DC.B      "THE VALUE OF THE POT IS         "
LAURA_STRING        DC.B      "GARY KOERS LOVES LAURA TYREE    "
DISPLAYTIMESTRING   DC.B      "THE TIME IS                     " 


MAINMENU1STRING     DC.B      "1-RIDE SPEED 2-DATE/TIME FF-NEXT"

RIDESPEEDSTRING     DC.B      "1-SLOW 2-MEDIUM 3-FAST 4-SUICIDE"
DATETIMESTRING      DC.B      "1-DATE 2-TIME                   "

CHANGEDATESTRING    DC.B      "ENTER DATE ^_^                  "





CHANGETIMESTRING    DC.B      "00:00:00                        "



MAINMENU2STRING     DC.B      "3-SYS.PASS.4-CAR SETTING FF-NEXT" 

SYSPASSSTRING       DC.B      "SYSTEM PASS                     "


CARSETTINGSSTRING   DC.B      "ENTER CAR NUMBER:        AA-BACK"
CARSETTINGS1STRING  DC.B      "ENTER NUMBER OF PASSENGERS:     "
CARSETTINGS2STRING  DC.B      "0-ADULT CAR   1-CHILD CAR       "
CARSETTINGS3STRING  DC.B      "OCCUPIED: 0=N 1=L 2=R 3=BOTH    "
CARSETTINGS4STRING  DC.B      "PHOTO: 0=N 1=L 2=R 3=BOTH       "

PLAYASONGSTRING     DC.B      "1-BRYCE 2-DEPAYSEMENT 3-GORILLA "
SEEPHOTOSSTRING     DC.B      "1-PHOTO1 2-PHOTO2 3-PHOTO3      "                              
                         

INVALIDCARSELECTIONSTRING     DC.B "INVALID CAR SELECTION BUDDY"




MAINMENU3STRING     DC.B      "5-RIDELAYOUT 6-STARTRIDE AA-BACK"

RIDEINTROSTRING     DC.B      "LETS RIDE BUDDIES!!             " 
RIDEOUTROSTRING     DC.B      "THE RIDE IS OVER BUDDIES!!      "  



SEEPHOTO1STRING	    DC.B      "PH1-                                "  
SEEPHOTO2STRING	    DC.B      "PH2-                                " 
SEEPHOTO3STRING	    DC.B  "PH3-                                " 
SECRETPASSWORDSTRING    DC.B  "BRO, YOU FOUND THE SECRET BRO   "                          





MAINMENU4STRING     DC.B      "7-SEEPHOTOS 8-PLAYASONG         "




RIDEINMOTIONSTRING  DC.B      "RIDE IN MOTION -                "
RIDELAYOUTSTRINGC   DC.B      "ENTER RIDE COMPONENT:           "  ;+22 IS WHERE YOU SHOULD PUT CURRENT RIDE PART
RIDELAYOUTINTROSTRING DC.B    "1-LEFT 2-RIGHT 3-HILL 4- STR8   "
POTVALUERIDEINMOTIONSTRING    DC.B    "#PASS= A/C= LRB= PHOTO=         "   ;6=#PASS 11=A/C 16=OCCUP 23=PHOTO


IRQ_STRING            DC.B    "ERROR!! PASSWORD:               "
RIDEINMOTIONSWITCH2FLIPPEDSTRING      DC.B     "RIDE_PART:              " 
MAINMENUDISPLAYTIMESTRING		   DC.B     "                                "                                        

SWITCH7NOTHIGHSTRING      		   DC.B     "PLZ FASTEN SAFETY HARNESSES(SW7)"                                        
  
  
;**********************END_CONSTANTS****************************************************************************************










;*********************************BEGIN********************************************************************************
;**********************************MAIN*************************************************************************************

;DO NOT DO LCD IN RTI, WILL CAUSE LATENCY ISSUES

;READ INPUTS IN MAIN, THEN WHEN JUMPS TO RTI, WE SIMPLY DECIDE WHAT TO DO WITHOUR INFORMATION, FLAGS ARE SET IN EACH INDIVIDUAL 
    ;INPUT READING ROUTINE
    ;SWITCH 4 (BIT 3) OF PORT_T NEEDS TO BE SET HIGH IN ORDER FOR DC MOTOR TO WORK, THUS CANT BE USED AS INPUT
    
    ; DC MOTOR SPEED IS EFFECTED BY DUTY CYCLE, ESSENTIALLY PULSE WIDTH MODULATION
    ;STEPPER MOTOR SPEED IS EFFECTED BY A COUNTER IN RTI, THAT SAYS, AFTER SO MANY RTIS OF 1 MS, SEND A PULSE TO THE STEPPER MOTOR, 

MyCode:     SECTION 	
Entry:
_Startup:                     


		LDS #__SEG_END_SSTACK
		
		
		JSR INITIALIZATIONS 
		
		
		
	JMP SKIP_DEBUG	
	
	LDAA #10		;THIS WOULD BE THE NUMBER 10
	LDAB #2		;THIS WOULD BE TENHOURS
	MUL
	ADDB #3		;THIS WOULD BE HOURS
	STAB HOURS
	
	
	
	
	
	

		
		
SKIP_DEBUG:		
		
		
		
		
		
		
	        CLI 				;ENABLE MASKABLE INTERRUPTS
	  
	    LDAA #DEPAYSEMENT
      PSHA
      JSR SendsChr
      PULA
      JSR PlayTone

 


                              
 MAIN_LOOP:


;***************GET INPUTS/INFORMATION********************************************
	    
	    
	    
	     JSR GET_POT_VALUES  ;WRITE POT VALUE TO VARIABLE 
	     JSR HEXPAD		       ;WRITE HEX KEY PRESSED TO HEXVALUE
	                         ;HOLDING THIS DOWN WILL HOLD UP THE ENTIRE MAIN 
	     
	     JSR SWITCHES         ; THIS JUST SETS FLAG, PORT_S IS SENT IN RTI_SER                    
	     
	     
                      	     ;FLAGS SET: SWITCH_MSBHIGH     SWITCH_LSBHIGH     ????SWITCHESOFF      BOTHSWITCHSAME      SWITCHFLIPPED
                      	     ;FLAGS SHOULD ONLY BE UPDATED UPON A SWITCH FLIP, OTHERWISE STAY THE SAME
  	     
  	   JSR PUSHBUTTON
	    
	    
	     JSR GET_CLOCK_VALUES
	     
	      JSR UPDATE_RIDE_SPEED
	      
	      
	     
;****************END GET INPUTS***************************************








;***************DO OUTPUTS********************************************
         
         
         
          ;JSR STEPPERMOTOR                                           ;IF FLAG IS HIGH, DO ONE CYCLE THROUGH
          
          
          
          
;***************END DO OUTPUTS***************************************

   
   
   
   
             
          ;WE DECIDE WHAT STRING TO PREPARE FOR THE LCD IN THE RTI, AND STORE IT IN A VARIABLE CALLED CURRENTSTRING
          ;IN THE MAIN WE  JUMP TO A JSR THAT WRITES THIS STRING TO DISP:
           
                    ;WE NOW PASS DISP TO C AND SHIT
;*******DISPLAY LCD**************************************************************
          
          
  
          JSR DECIDE_SCREEN
          
          
          JSR WRITESTRING   ;LOAD APPROPRIATE STRING INTO DISP STRING   
                            ;DYNAMIC INFORMATION IS PUSHED TO LCD IN THIS, WHY IS THIS NOT DONE IN DECIDE SCREEN???
          
          
          
          LDD #DISP
    	  	STD stringpointer                    ;load starting address of string into D 
    	  	JSR display_string                   ;DISPLAY STRING
    	  	
;*******END DISPLAY LCD***********************************************************      


               
               
               
               
               
               
               
               
               
               
               
               
               
               
               
               
               
               
               
     ;THIS USED TO BE IN RTI....
 ;***************************RIDE IN MOTION*****************************************************************************************
 ;************************************************************************************************************************************
 
 ;RIDE BEGIN?
 
                  LDAA RIDEINMOTIONFLAG
                  CMPA #0
                  
                  BEQ END_RIDE_IN_MOTION_RTI_JUMP
                  
                  JMP SKIPTHISSHITMOTHERFUCKER
                  
 END_RIDE_IN_MOTION_RTI_JUMP:
 JMP END_RIDE_IN_MOTION_RTI
       
       SKIPTHISSHITMOTHERFUCKER:           
                  
 
 ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            
  RIDE_BEGIN_CHECK:                             ;THIS FLAG WILL LOCK UP THE BEGINNING OF RIDE
            
            LDAA RIDEBEGINFLAG
            CMPA #1
            BNE END_RIDE_BEGIN_CHECK				;IF RIDE BEGIN IS NOT HIGH, GO TO NORMAL RIDE CODE
            
            MOVW #65500,CURRENTRIDEPARTTIMER		  ;IF IN RIDE BEGIN MODE, KEEP GOING THROUGH RIDE PART TIMER,
            
            
            
            MOVB #1,INCREASESPEEDFLAG            
            MOVB #0,DECREASESPEEDFLAG
            
            ; INCREASESPEEDTIMER
            ; DECREASESPEEDTIMER
            ; INCREASESPEEDFLAG
            ; DECREASESPEEDFLAG
            
            
            
            JMP END_RIDE_IN_MOTION_RTI
             
             
 
 
 
 
 
 
 END_RIDE_BEGIN_CHECK:           
 ;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 ; AFTER THE RIDE BEGIN LOCKOUT, WE TRULY BEGIN WITH PART 1..... THE FIRST CURRENTRIDEPART???? IS LOADED FROM THE MAINMENU
 
 
 
 
 
 
 ;LOAD CURRENT PART MAKE SURE YOURE NOT AT END
 
        
        
         LDD RIDEARRAYCOUNTRIDEINMOTION         ;PUTS IT INTO A  D = B:A MAYBE?????
	       CLRB
	       TAB
	       CLRA
	       ADDD #RIDEARRAY          
	       XGDX                           ;X NOW HAS ADDRESS TO PUT HEXVALUE IN 
	       
	       	       
	                          
	       LDAA 0,X
	       STAA CURRENTRIDEPART
	       JSR GETCARLOCATION_LED
	       
	       LDAA CURRENTRIDEPART
	       CMPA #$FF
	       BEQ END_OF_RIDE
	       
	       
	       
	       LDX CURRENTRIDEPARTTIMER
	       CPX #0
	       BNE DONT_GO_TO_NEXT_PART_OF_RIDE
	       
	       
GO_NEXT_PART_RIDE:	 

      
	       INC RIDEARRAYCOUNTRIDEINMOTION              ;JUST INCREMENT THIS COUNTER AND LEAVE, THE PART WILL BE UPDATED NEXT TIME YOU ENTER RTI 
	                                                  ;ALSO NOW YOU SHOULD RESET A NEW CURRENTRIDEPARTTIMER
	       
	       MOVW #65500,CURRENTRIDEPARTTIMER 
	       MOVW TIMERSPEED,INCREASESPEEDTIMER
		  ;PUTTING

      DONT_GO_TO_NEXT_PART_OF_RIDE:



       JMP END_END_OF_RIDE 
       
       
       
       
  END_OF_RIDE:
  
  			;THIS WAS ALL ADDED SO MIGHT FUCK SHIT UP
  			MOVB #0,RIDEINMOTIONFLAG					;RIDE IS NOT IN MOTION...
			MOVB #0,RIDEARRAYCOUNTRIDEINMOTION

		     MOVW #45000,RIDEOUTROTIMER
		     MOVB #0,ENDRIDEBECAUSEOFIRQFLAG
		     MOVB #0,TOGGLELEDSFLAG
  
  
  
  
  
  
  
   MOVB #0,RIDEINMOTIONFLAG
   MOVW #0,CURRENTRIDEPARTTIMER
   MOVB #1,RIDEENDFLAG								;END OF THE RIDE, WE WILL ARRIVE HERE FROM THE IRQ, NO OTHER CODE ENCESSARY
   MOVB #0,STARTRIDEFLAG
   MOVB #0,IRQ_FLAG
   MOVB #0,TOGGLELEDSFLAG
   MOVB #0,PORT_S
   MOVB #1,MAINMENUFLAG
   MOVB #0,CHANGEPASSWORDCOUNTER
  
  END_END_OF_RIDE:
  
  
  
 END_RIDE_IN_MOTION_RTI: 
 
 
 
 
 ;************************************************END RIDE IN MOTION RTI****************************************************************
 ;**************************************************************************************************************************************
 
 ;ALL ABOVE USED TO BE IN RTI
 



























                  
                  
                  JMP MAIN_LOOP
    
;

