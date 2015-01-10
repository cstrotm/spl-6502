;****************************************
;  execute  -  call routine via address
;              on top of stack
;
execute 
    jsr pop        ;  get TOS
    sta ta        ;  store in pointers
    stx ta+1
    lda ea        ;  load registers
    ldx ex
    ldy ey
    jmp (ta)    ;  jump, must have RTS

