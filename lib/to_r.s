;**********************************************
;  >r  -  pop the stack to return stack
;
to_r 
    pla 
    sta ta
    pla 
    sta tb
    jsr pop
    pha
    txa
    pha
    lda tb
    pha
    lda ta
    pha
    rts

