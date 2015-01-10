;****************************************
;  minus2  -  ( a -- a-2 )
;
minus2 
    jsr pop        ;  get TOS -> AX
    sec
    sbc #2        ;  low TOS in A - 2
    sta ta        ;  save it
    txa        ;  high TOS in A
    sbc #0        ;  account for borrow
    tax        ;  new TOS high
    lda ta        ;  new TOS low
    jmp push    ;  push answer

