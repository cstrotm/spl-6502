;****************************************
;  fetch  -  push 16-bits at TOS address
;            onto the stack (@)
;
fetch
    jsr get_ta
    ldy #1
    lda (ta),y    ;  high byte
    tax
    dey
    lda (ta),y    ;  low byte
    jmp push    ;  push AX

