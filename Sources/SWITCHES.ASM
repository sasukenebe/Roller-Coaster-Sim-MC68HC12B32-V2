        
        ;SWITCH 4 (BIT 3) OF PORT_T NEEDS TO BE SET HIGH IN ORDER FOR DC MOTOR TO WORK, THUS CANT BE USED AS INPUT
        
        
        ;SWITCHES ARE ACTIVE LOW!!!
        
        XDEF SWITCHES
        
        
        
        XREF PORT_T
        XREF SWITCHVALUE
        XREF PORT_S
        XREF HEXKEYPRESSED
        ;****SWITCHES
        XREF SWITCHFLIPPED
        XREF SWITCH_MSBHIGH
	      XREF SWITCH_LSBHIGH
	      XREF SWITCHESOFF
	      XREF BOTHSWITCHSAME
	      XREF BOTHSWITCHESLOW
	      XREF BOTHSWITCHESHIGH
        ;****END SWITCHES
        XREF RIDEMENUSTRING       
        XREF RIDEMENUSTRING2      
        XREF RIDEMENUSTRING3
        
        XREF PORT_T_VALUE 

SWITCHES:

        PSHX
        PSHY
        PSHD
        
        LDAA PORT_T
        STAA PORT_T_VALUE


;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;MASK AND INVERT SWITCHVALUE VARIABLE

 
        LDAA SWITCHVALUE
        ANDA #%11010111  ;MASK BIT 4 (OUTPUT) OF SWITCH VALUE
        STAA SWITCHVALUE
;~~~~~~~~~~~~~~~~~~~~~~~~~~
;MASK AND INVERT PORT_T INPUT (MAKE ACTIVE HIGH)
        COM PORT_T_VALUE
        LDAB PORT_T_VALUE     
        ANDB #%11010111     ;MASK BIT3/SW4 OF PORT_T
        STAB PORT_T_VALUE       
;~~~~~~~~~~~~~~~~~~~~~~~~~
;
;        
        LDAA SWITCHVALUE
        CMPA PORT_T_VALUE        ;(SEE IF A SWITCH WAS FLIPPED)
        BNE SWITCH_FLIPPED                        
        BRA NOSWITCH_FLIPPED



SWITCH_FLIPPED:

        ;**STORE NEW SWITCH VALUE IN VARIABLE
        LDAA  PORT_T_VALUE
        STAA  SWITCHVALUE
        ;****************
        

        MOVB #1,SWITCHFLIPPED     ;FLAG SWITCH FLIPPED 
          
;CHECK MSB                          
        LDAA SWITCHVALUE               
        ANDA #%10000000            ;RETURNS 0 = HIGH BIT IS OFF 
                                   ;RETURNS 1 = HIGH BIT IS ON                            
        BEQ SKIPMSBSET             
        MOVB #1,SWITCH_MSBHIGH
        
       BRA SKIPMSB
        
        SKIPMSBSET:
        MOVB #0,SWITCH_MSBHIGH
        
        SKIPMSB:
        
;CHECK LSB        
        LDAA SWITCHVALUE               ;CHECK IF LSB FLIPPED
        ANDA #%00000001
                                       ;RETURNS 0 = LSB IS OFF
        BEQ SKIPLSBSET                 ;RETURNS 1 = LSB IS ON
        
        MOVB #1,SWITCH_LSBHIGH
        
        BRA SKIPLSB
        
        SKIPLSBSET:                          ;LSB IS SET, FLIP FLAG
        MOVB #0,SWITCH_LSBHIGH
       
        SKIPLSB:
        
        
;CHECK BOTH SWITCHES SAME / HIGH/ LOW
CHECK_BOTH_SWITCHES_SAME:
        LDAA SWITCH_MSBHIGH
        CMPA SWITCH_LSBHIGH
                              ;RETURNS 0 = SWITCHES ARE SAME
                              ;RETURNS ELSE = SWITCHES ARE NOT SAME
        BNE SWITCHES_NOT_SAME
        ;ELSE
BOTH_SWITCHES_SAME:
        MOVB #1,BOTHSWITCHSAME
        BRA SKIP_SWITCHES_NOT_SAME
        
        SWITCHES_NOT_SAME:
        
        MOVB #0,BOTHSWITCHSAME
        MOVB #0,BOTHSWITCHESHIGH
        MOVB #0,BOTHSWITCHESLOW
        BRA ENDSWITCHES
        SKIP_SWITCHES_NOT_SAME:
    ;NOW WE KNOW IF THEYRE THE SAME, NOW LETS FIND 
    ;IF THEYRE BOTH HIGH OR BOTH LOW    
        
        LDAA SWITCH_MSBHIGH
        CMPA #1
        BEQ BOTHSWITCHES_HIGH
 
        ;ELSE
BOTHSWITCHES_LOW:
                 MOVB #1,BOTHSWITCHSAME
                 MOVB #1,BOTHSWITCHESLOW
                 MOVB #0,BOTHSWITCHESHIGH
                 
                 BRA ENDSWITCHES
        
BOTHSWITCHES_HIGH:

               MOVB #1,BOTHSWITCHSAME
               MOVB #1,BOTHSWITCHESHIGH
               MOVB #0,BOTHSWITCHESLOW
               
               BRA ENDSWITCHES         
                                         


NOSWITCH_FLIPPED:        
        MOVB #0,SWITCHFLIPPED
        

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


ENDSWITCHES:

        PULD
        PULY
        PULX

        RTS