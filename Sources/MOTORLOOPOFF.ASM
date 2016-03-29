                
       ;XDEF motorloopoff
       ;XREF firstrow
       ;XREF VAR_2
       ;XREF port_t
       ;XREF checkvar1
      ; XREF exitRTI
     ;motorloopoff:

       ;               LDAB #%00000000          
      ;                STAB port_t
                      
     ;                 DEC VAR_2
    ;                  JMP exitRTI  
                     
                     
                   