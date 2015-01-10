;****************************************
;  prhex  -  output TOS as a 4 digit hex
;
;

prhex 
    jsr pop
    tay
    txa
    jsr cprhex    ;  high byte
    tya
    jmp cprhex    ;  low byte
    
    
