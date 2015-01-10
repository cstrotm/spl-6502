;****************************************
;  deq  -  d0 == d1
;
deq 
    jsr get_ops
    jsr d_eq
    lda res
    ldx #0
    jmp push

