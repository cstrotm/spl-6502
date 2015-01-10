;*****************************************
;  d_ne  op1 != op2
;
d_ne 
    jsr d_eq
    lda res
    eor #1
    sta res
    rts

