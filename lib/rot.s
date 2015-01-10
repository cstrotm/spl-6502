;****************************************
;  rot  -  ( a b c -- b c a )
;
rot 
    jsr get_ta    ;  get c
    jsr get_tb    ;  get b
    jsr pop        ;  get a
    sta op1        ;  stash it
    stx op1+1
    lda tb
    ldx tb+1
    jsr push    ;  push b
    lda ta
    ldx ta+1
    jsr push    ;  push c
    lda op1
    ldx op1+1
    jmp push    ;  push a

