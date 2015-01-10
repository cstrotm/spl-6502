;****************************************
;  dfetch  -  push 32-bits at TOS address
;             onto the stack (d@)
;
dfetch
    jsr get_ta
    ldy #1
    lda (ta),y    ;  high byte, low part
    tax
    dey
    lda (ta),y    ;  low byte, low part
    jsr push    ;  push AX
    ldy #3        ;  high byte, high part
    lda (ta),y
    tax
    dey
    lda (ta),y
    jmp push    ;  high part

