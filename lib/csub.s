;****************************************
;  csub  -  ta - tb -> ta
;
csub 
    sec
    lda ta
    sbc tb        ;  low bytes
    sta ta        ;  save it
    lda ta+1    ;  high bytes
    sbc tb+1
    sta ta+1    ;  put in X
    rts

