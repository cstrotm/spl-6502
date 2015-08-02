;****************************************
;  fetchindbinc  -  push 16-bits at B reg
;                   onto the stack 
;	            and increment B (B@+)
;
fetchindbinc
    ldy #1
    lda (breg),y    ;  high byte
    tax
    dey
    lda (breg),y    ;  low byte
    inc breg
    bne .1
    inc breg+1
.1  jmp push    ;  push AX