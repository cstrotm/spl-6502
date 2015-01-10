;****************************************
;  sub  -  ( a b -- a-b )
;
sub 
    jsr get_ab    ;  get ops
    jsr csub    ;  ta-tb -> ta
    lda ta
    ldx ta+1
    jmp push    ;  push answer

