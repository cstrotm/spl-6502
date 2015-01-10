;****************************************
;  umod  unsigned mod
;
umod 
    jsr get_ab
    jsr udiv16    ;  divide
    lda op1        ;  quotient
    ldx op1+1
    jmp push

