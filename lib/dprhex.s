;****************************************
;  dprhex  -  print TOS double as hex
;
; 

dprhex 
    jsr get_op1
    lda op1+3
    jsr cprhex
    lda op1+2
    jsr cprhex
    lda op1+1
    jsr cprhex
    lda op1
    jmp cprhex
