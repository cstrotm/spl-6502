;*****************************************
;  add1  -  add 1 to value in ta
;
add1
    clc
    ldy #0
    lda (ta),y
    adc #1
    sta (ta),y
    iny
    lda (ta),y
    adc #0
    sta (ta),y
    iny
    lda (ta),y
    adc #0
    sta (ta),y
    iny
    lda (ta),y
    adc #0
    sta (ta),y
    rts

