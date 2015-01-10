;****************************************
;  dlt  -  d0 < d1
;
dlt 
    jsr get_ops
    jsr d_lt
    lda res
    ldx #0
    jmp push

