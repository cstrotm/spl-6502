;**********************************************
;  comp_ta
;
comp_ta 
    lda ta
    eor #$ff
    sta ta
    lda ta+1
    eor #$ff
    sta ta+1
    clc
    lda ta
    adc #1
    sta ta
    lda ta+1
    adc #0
    sta ta+1
    rts

