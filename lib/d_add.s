;*****************************************
;  d_add  -  op1 + op2 => res
;
d_add 
    clc
    lda op1
    adc op2
    sta res
    lda op1+1
    adc op2+1
    sta res+1
    lda op1+2
    adc op2+2
    sta res+2
    lda op1+3
    adc op2+3
    sta res+3
    rts

