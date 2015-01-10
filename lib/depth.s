;****************************************
;  depth  -  push stack pointer on stack
;
depth 
    lda sp        ;  get stack pointer
    lsr A        ;  divide by 2
    ldx #0
    jmp push    ;  push on stack

