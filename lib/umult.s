;****************************************
;  umult  -  unsigned multiply
;            ( a b -- a*b )
;
umult 
    jsr get_ab
    jsr umult16
    lda res
    ldx res+1    ;  keep lower 16-bits
    jmp push

