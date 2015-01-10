;*****************************************
;  d_ge  op1 >= op2
;
d_ge 
    jsr d_eq
    lda res
    bne d_ge_end
    jsr d_gt
d_ge_end 
    rts

