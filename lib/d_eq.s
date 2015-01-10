;****************************************
;  d_eq  op1 == op2
;
d_eq 
    jsr zerores
    ldy #3
d_eq_loop 
    lda op1,y
    cmp op2,y
    bne d_eq_no
    dey
    bpl d_eq_loop
    inc res
d_eq_no 
    rts

