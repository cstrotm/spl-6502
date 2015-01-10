;****************************************
;  dne  -  d0 != d1
;
dne 
    jsr get_ops
    jsr d_ne
    lda res
    ldx #0
    jmp push

