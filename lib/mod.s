;****************************************
;  mod  -  signed mod (sign of quotient)
;           ( a b -- a%b )
;
mod 
    jsr get_ab
    lda #0
    sta sign        ;  start positive
    lda ta+1
    bpl mod_next        ;  ta positive
    lda #$ff        ;  make sign negative
    sta sign
    jsr comp_ta        ;  2s complement ta
mod_next 
    lda tb+1
    bpl mod_go
    lda sign
    eor #$ff
    jsr comp_tb        ;  2s complement tb
mod_go 
    jsr udiv16
    lda op1
    sta ta            ;  move mod to ta
    lda op1+1
    sta ta+1
    lda sign
    beq mod_end
    jsr comp_ta        ;  2s complement answer
mod_end 
    lda ta
    ldx ta+1
    jmp push

