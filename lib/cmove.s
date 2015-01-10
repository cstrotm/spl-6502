;****************************************
;  cmove  -  move a range of bytes
;
;  ( a b n -- ) 
;  n bytes from a to b
;
cmove 
    jsr get_ta
    lda ta
    pha
    lda ta+1
    pha
    jsr get_ab
    ldy #0
    pla
    tax
    beq cmove2
cmove1
    lda (ta),y
    sta (tb),y
    iny
    bne cmove1
    inc ta+1
    inc tb+2
    dex
    bne cmove1
cmove2
    pla
    tax
    beq cmove4
cmove3
    lda (ta),y
    sta (tb),y
    iny
    dex
    bne cmove3
cmove4
    rts

