;****************************************
;  dgt  -  d0 > d1
;
dgt 
    jsr get_ops
    jsr d_gt
    lda res
    ldx #0
    jmp push

