;****************************************
;  fetchindb  -  push 16-bits at B reg
;                onto the stack (B@)
;
fetchindb
    ldy #1
    lda (breg),y    ;  high byte
    tax
    dey
    lda (breg),y    ;  low byte
    jmp push    ;  push AX