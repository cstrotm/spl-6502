;****************************************
;  minus1  -  ( a -- a-1 )
;
minus1 
    jsr pop        ;  get TOS -> AX
    sec
    sbc #1        ;  low TOS in A - 1
    sta ta        ;  save it
    txa        ;  high TOS in A
    sbc #0        ;  account for borrow
    tax        ;  new TOS high
    lda ta        ;  new TOS low
    jmp push    ;  push answer

