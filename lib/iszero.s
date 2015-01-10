;****************************************
;  iszero  - set carry if value in ta
;            is zero
;
iszero 
    ldy #3
iszero_loop 
    lda (ta),y
    bne iszero_no
    dey
    bpl iszero_loop
    sec
    rts
iszero_no 
    clc
    rts

