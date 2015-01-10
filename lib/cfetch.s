;****************************************
;  cfetch  -  push 8-bits at TOS address
;             onto the stack (C@)
;
cfetch
    jsr get_ta
    ldy #0
    lda (ta),y    ;  get byte
    ldx #0        ;  clear high byte
    jmp push    ;  push AX

