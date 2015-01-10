;****************************************
;  udiv  unsigned division
;
udiv 
    jsr get_ab
    jsr udiv16    ;  divide
    lda ta        ;  quotient
    ldx ta+1
    jmp push

