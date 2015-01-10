;*****************************************
;  neg  -  negate value in ta
;
neg 
    ldy #3
neg_loop 
    lda (ta),y
    eor #$ff
    sta (ta),y
    dey
    bpl neg_loop
    jmp add1

