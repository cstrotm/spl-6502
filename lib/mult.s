;****************************************
;  mult  -  signed multiply
;           ( a b -- a*b )
;
mult 
    jsr get_ab
    lda #0
    sta sign        ;  start positive
    lda ta+1
    bpl mult_next        ;  ta positive
    lda #$ff        ;  make sign negative
    sta sign
    jsr comp_ta        ;  2s complement ta
mult_next 
    lda tb+1
    bpl mult_go
    lda sign
    eor #$ff
    jsr comp_tb        ;  2s complement tb
mult_go 
    jsr umult16
    lda res
    sta ta
    lda res+1
    sta ta+1
    lda sign
    beq mult_end
    jsr comp_ta        ;  2s complement answer
mult_end 
    lda ta
    ldx ta+1
    jmp push

