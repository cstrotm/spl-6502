;****************************************
;  negate  -  change the sign of TOS
;
negate 
    jsr get_ta
    jsr comp_ta
    lda ta
    ldx ta+1
    jmp push

