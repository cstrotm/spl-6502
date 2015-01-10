;*****************************************
;  d_gt  op1 > op2
;
d_gt 
    ldx #0
    jsr d_sub
    lda res+3
    bmi d_gt_no
    lda #res
    sta ta
    lda #0
    sta ta+1
    jsr iszero
    bcs d_gt_no
    inx
d_gt_no 
    jsr zerores
    stx res
    rts

