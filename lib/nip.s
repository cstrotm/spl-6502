;****************************************
;  nip  -  ( a b -- b )
;
nip 
    jsr get_ta
    jsr pop
    lda ta
    ldx ta+1
    jmp push

