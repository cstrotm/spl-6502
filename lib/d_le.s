;*****************************************
;  d_le  op1 <= op2
;
d_le 
    jsr d_eq
    lda res
    bne d_le_end
    jsr d_lt
d_le_end 
    rts

