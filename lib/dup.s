;****************************************
;  dup  -  duplicate the top stack item
;
dup 
    ldy sp        ;  stack pointer
    dey
    ldx stack+$80,y    ;  TOS high -> X
    lda stack,y    ;  TOS low -> A
    jmp push    ;  push again

