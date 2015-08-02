;****************************************
;  fetchindainc  -  push 16-bits at A reg
;                   onto the stack
;	            and increment A (A@+)
;
fetchindainc
    ldy #1
    lda (areg),y    ;  high byte
    tax
    dey
    lda (areg),y    ;  low byte
    inc areg
    bne .1
    inc areg+1
.1  jmp push    ;  push AX
	