;****************************************
;  dle  -  d0 <= d1
;
dle 
    jsr get_ops
    jsr d_le
    lda res
    ldx #0
    jmp push

