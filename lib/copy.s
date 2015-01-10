;*****************************************
;  copy  -  copy value in ta to tb
;
copy 
    ldy #3
copy_loop 
    lda (ta),y
    sta (tb),y
    dey
    bpl copy_loop
    rts

