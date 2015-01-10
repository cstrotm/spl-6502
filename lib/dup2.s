;****************************************
;  dup2  -  duplicate the top two stack
;           items (2dup)
;
;  ( a b -- a b a b )
;
dup2 
    ldy sp        ;  stack pointer
    dey
    lda stack+$80,y    ;  b high
    sta ta
    lda stack,y    ;  b low
    sta ta+1
    dey
    ldx stack+$80,y    ;  a high
    lda stack,y    ;  a low
    jsr push    ;  push a again
    ldx ta        ;  get b
    lda ta+1
    jmp push    ;  push b again

