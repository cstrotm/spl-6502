;*****************************************
;  d_sqrt   sqrt(op1) => res
;
d_sqrt 
    ldy #0
    sty rem+3        ;  rem holds root
    sty rem+2
    sty rem+1
    sty rem

    sty op2+3        ;  op2 holds odd number
    sty op2+2
    sty op2+1
    iny
    sty op2

d_sqrt_loop 
    jsr d_sub            ; op1 - op2 => res
    lda res+3
    bmi d_sqrt_done            ; res negative?

    inc rem                ; no, bump root
    bne d_sqrt_nxtodd
    inc rem+1
    bne d_sqrt_nxtodd
    inc rem+2
    bne d_sqrt_nxtodd
    inc rem+3

d_sqrt_nxtodd 
    ldy #2                ;  go to next odd
d_sqrt_again 
    inc op2
    bne d_sqrt_next
    inc op2+1
    bne d_sqrt_next
    inc op2+2
    bne d_sqrt_next
    inc op2+3
d_sqrt_next 
    dey
    bne d_sqrt_again

    ldy #4
    ldx #0
d_sqrt_l2 
    lda res,x
    sta op1,x
    inx
    dey
    bne d_sqrt_l2
    clc
    bcc d_sqrt_loop

d_sqrt_done 
    ldy #4
    ldx #0
d_sqrt_nxt 
    lda rem,x
    sta res,x
    inx
    dey
    bne d_sqrt_nxt
    rts

