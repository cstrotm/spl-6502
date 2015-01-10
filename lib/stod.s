;****************************************
;  stod  -  single to double, extends 
;           sign properly
;
stod 
    ldy sp
    dey
    lda stack,y        ;  high part of TOS
    bmi stod_neg        ;  if neg, push 0xFFFF
    lda #0            ;  pos, push 0
    tax
    jmp push
stod_neg 
    lda #$ff        ;  push -1
    tax
    jmp push

