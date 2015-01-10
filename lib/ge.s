;****************************************
;  ge  -  ( a b -- a>=b )
;
ge 
    jsr get_ab
    jsr csub
    lda ta
    bne ge_cont
    lda ta+1
    beq ge_yes
ge_cont 
    bpl ge_yes
    lda #0
    tax
    jmp push        ; not >=
ge_yes 
    lda #1
    ldx #0
    jmp push

