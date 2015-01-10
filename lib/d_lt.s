;*****************************************
;  d_lt  op1 < op2
;
d_lt 
    ldx #0
    jsr d_sub
    lda res+3
    bpl d_lt_no
    inx
d_lt_no 
    jsr zerores
    stx res
    rts

