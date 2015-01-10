;****************************************
;  dge  -  d0 >= d1
;
dge 
    jsr get_ops
    jsr d_ge
    lda res
    ldx #0
    jmp push

