;****************************************
;  fetchindbdec  -  fetch 16-bits at B reg
;                   onto the stack 
;	            and decrement B (B@-)
;
fetchindbdec
    ldy #1
    lda (breg),y    ;  high byte
    tax
    dey
    lda (breg),y    ;  low byte
    ldy breg        ;  test if LSB=0
    bne .1
    dec breg+1	
.1  dec breg
    jmp push    ;  push AX