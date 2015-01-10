;****************************************
;  lt  -  signed <
;         ( a b -- a<b, signed )
lt 
    jsr get_ab
    jsr csub    ;  ta -= tb
    lda ta+1    ;  check high byte
    bmi lt_yes
    lda #0
    tax        ;  a >= b, push 0
    jmp push
lt_yes 
    lda #1
    ldx #0
    jmp push    ;  push 1

