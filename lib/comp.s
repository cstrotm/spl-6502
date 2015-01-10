;****************************************
;  comp  -  flip the bits of the TOS
;
comp 
    jsr pop        ;  get TOS
    eor #$ff    ;  flip low byte
    sta ta        ;  and stash it
    txa        ;  flip high byte
    eor #$ff
    tax        ;  back to X
    lda ta        ;  get flipped low byte
    jmp push    ;  push on stack

