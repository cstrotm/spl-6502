;****************************************
;  push_op1
;
push_op1 
    lda op1
    ldx op1+1
    jsr push
    lda op1+2
    ldx op1+3
    jmp push

