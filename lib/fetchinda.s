;****************************************
;  fetchinda  -  push 16-bits at A reg
;                onto the stack (A@)
;
fetchinda
    ldy #1
    lda (areg),y    ;  high byte
    tax
    dey
    lda (areg),y    ;  low byte
    jmp push    ;  push AX
	