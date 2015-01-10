;*****************************************
;  d_sub  -  op1 - op2 => res
;
d_sub 
    sec
    lda op1
    sbc op2
    sta res
    lda op1+1
    sbc op2+1
    sta res+1
    lda op1+2
    sbc op2+2
    sta res+2
    lda op1+3
    sbc op2+3
    sta res+3
    rts

