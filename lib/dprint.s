;****************************************
;  dprint  -  32-bit signed print
;
dprint 
    jsr get_op2
    lda op2+3
    bmi dprint_neg
    jmp dprint_cont
dprint_neg 
    lda #'-
    jsr chout
    lda #op2
    sta ta
    lda #0
    sta ta+1
    jsr neg
dprint_cont 
    jsr btod
    jmp pntres

