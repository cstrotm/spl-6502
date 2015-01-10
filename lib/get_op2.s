;****************************************
;  get_op2
;
get_op2 
    jsr pop            ;  op2 high
    sta op2+2
    stx op2+3
    jsr pop            ;  op2 low
    sta op2
    stx op2+1
    rts

