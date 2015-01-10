;****************************************
;  dabs  -  32-bit absolute value
;
dabs 
    jsr get_op1
    lda op1+3        ;  if positive, done
    bpl dabs_done
    lda #op1        ;  make positive
    sta ta
    lda #0
    sta ta+1
    jsr neg
dabs_done 
    jmp push_op1

