;****************************************
;  div  -  signed division
;           ( a b -- a/b )
;
div 
    jsr get_ab
    lda #0
    sta sign        ;  start positive
    lda ta+1
    bpl div_next        ;  ta positive
    lda #$ff        ;  make sign negative
    sta sign
    jsr comp_ta        ;  2s complement ta
div_next 
    lda tb+1
    bpl div_go
    lda sign
    eor #$ff
    jsr comp_tb        ;  2s complement tb
div_go 
    jsr udiv16
    lda sign
    beq div_end
    jsr comp_ta        ;  2s complement answer
div_end 
    lda ta
    ldx ta+1
    jmp push

