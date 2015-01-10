;****************************************
;  ult  -  unsigned <
;          ( a b -- a<b, unsigned )
ult 
    jsr get_ab
    lda ta+1    ;  compare high bytes
    cmp tb+1
    bcc ult_1       ;  a < b
    lda ta
    cmp tb        ;  compare low bytes
    bcc ult_1
    lda #0        ;  a >= b
    tax
    jmp push
ult_1 
    lda #1
    ldx #0
    jmp push

