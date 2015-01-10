;****************************************
;  add  -  ( a b -- a+b )
;
add
    jsr get_tb    ;  get b
    jsr pop        ;  get a -> AX
    clc
    adc tb        ;  add low bytes
    sta ta        ;  stash it
    txa        ;  add high bytes
    adc tb+1
    tax        ;  put high byte in X
    lda ta        ;  get low byte in A
    jmp push    ;  push answer

