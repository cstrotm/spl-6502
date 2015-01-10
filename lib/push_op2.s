;****************************************
;  push_op2
;
push_op2 
    lda op2
    ldx op2+1
    jsr push
    lda op2+2
    ldx op2+3
    jmp push

