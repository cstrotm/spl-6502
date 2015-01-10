;****************************************
;  strcpy  -  ( src dest -- )
;  copy src to dest
;
strcpy 
    jsr get_ab
    ldy #0
    lda (ta),y
    sta (tb),y
    tay
strcpy_loop 
    lda (ta),y
    sta (tb),y
    dey
    bne strcpy_loop
    rts

