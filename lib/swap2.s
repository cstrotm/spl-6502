;****************************************
;  swap2  -  (a b c d -- c d a b)
;
swap2 
    jsr get_ta    ;  get d
    jsr get_tb    ;  get c
    jsr pop        ;  get b
    sta op1        ;  stash it
    stx op1+1
    jsr pop        ;  get a
    sta op2        ;  stash it
    stx op2+1
    lda tb        ;  push c
    ldx tb+1
    jsr push
    lda ta        ;  push d
    ldx ta+1
    jsr push
    lda op2        ;  push a
    ldx op2+1
    jsr push
    lda op1        ;  push b
    ldx op1+1
    jmp push

