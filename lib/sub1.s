;*****************************************
;  sub1  -  subtract 1 from value in ta
;
sub1 
    sec
    ldy #0
    lda (ta),y
    sbc #1
    sta (ta),y
    iny
    lda (ta),y
    sbc #0
    sta (ta),y
    iny
    lda (ta),y
    sbc #0
    sta (ta),y
    iny
    lda (ta),y
    sbc #0
    sta (ta),y
    rts

