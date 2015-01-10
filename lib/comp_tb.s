;**********************************************
;  comp_tb
;
comp_tb 
    lda tb
    eor #$ff
    sta tb
    lda tb+1
    eor #$ff
    sta tb+1
    clc
    lda tb
    adc #1
    sta tb
    lda tb+1
    adc #0
    sta tb+1
    rts

