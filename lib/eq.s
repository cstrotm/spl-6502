;****************************************
;  eq  -  ( a b -- a==b )
;
eq 
    jsr get_ab
    lda ta
    cmp tb
    bne eq_no
    lda ta+1
    cmp tb+1
    bne eq_no
    lda #1
    ldx #0
    jmp push
eq_no 
    lda #0
    tax
    jmp push

