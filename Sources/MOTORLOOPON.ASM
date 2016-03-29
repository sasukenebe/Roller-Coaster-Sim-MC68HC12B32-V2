    ;XDEF motorloopon
    ;XREF port_t
    ;XREF VAR_1
    ;XREF firstrow
    ;XREF endofrti
    ;XREF checkvar2
    
    
     ;motorloopon: 
     
      ;          LDAA #%00001000          
        ;        STAA port_t
       ;         DEC VAR_1
         ;       JMP checkvar2 
                
     