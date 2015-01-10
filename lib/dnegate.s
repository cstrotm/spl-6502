;****************************************
; dnegate  -  negate a 32-bit value
;
dnegate 
    jsr get_op1
    lda #op1
    sta ta
    lda #0
    sta ta+1
    jsr neg
    jsr op1res
    jmp push_res

