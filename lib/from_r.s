;**********************************************
;  r>  -  pop the return-stack to data stack
;
from_r 
    pla 
    sta ta
    pla 
    sta tb
    pla
    tax
    pla
    jsr push
    lda tb
    pha
    lda ta
    pha
    rts

