;****************************************
;  fetchindadec  -  fetch 16-bits at A reg
;                   onto the stack 
;	            and decrement A (A@-)
;
fetchindadec
    ldy #1
    lda (areg),y    ;  high byte
    tax
    dey
    lda (areg),y    ;  low byte
    ldy areg        ;  test if LSB=0
    bne .1
    dec areg+1	
.1  dec areg
    jmp push    ;  push AX