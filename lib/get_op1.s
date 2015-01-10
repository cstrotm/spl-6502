;****************************************
;  get_op1
;
get_op1 
    jsr pop            ;  op1 high
    sta op1+2
    stx op1+3
    jsr pop            ;  op1 low
    sta op1
    stx op1+1
    rts

