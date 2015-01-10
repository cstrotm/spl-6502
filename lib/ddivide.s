;****************************************
;  ddivide  -  32-bit signed division
;
ddivide 
    jsr ddiv        ;  divide
    lda res
    ldx res+1
    jsr push        ;  push quotient
    lda res+2
    ldx res+3
    jmp push

