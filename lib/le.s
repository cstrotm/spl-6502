;****************************************
;  le  -  ( a b -- a<=b )
;
le 
    jsr get_ab
    jsr csub
    lda ta
    bne le_cont
    lda ta+1
    beq le_yes
le_cont 
    bmi le_yes
    lda #0
    tax
    jmp push        ; not <=
le_yes 
    lda #1
    ldx #0
    jmp push

