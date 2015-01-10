;****************************************
;  not  -  logical not of TOS
;
not 
    jsr get_ta    ;  get TOS
    lda ta        ;  is low 0?
    bne not_zero    ;  no
    lda ta+1    ;  is high 0?
    bne not_zero    ;  no
    lda #1        ;  yes, push 1
    ldx #0
    jmp push
not_zero 
    lda #0        ;  push 0
    tax
    jmp push

