;****************************************
;  ne  -  ( a b -- a!=b )
;
ne 
    jsr get_ab
    lda ta
    cmp tb
    bne ne_yes
    lda ta+1
    cmp tb+1
    bne ne_yes
    lda #0
    tax
    jmp push
ne_yes 
    lda #1
    ldx #0
    jmp push

