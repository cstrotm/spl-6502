;****************************************
;  ugt  -  unsigned >
;          ( a b -- a>b, unsigned )
ugt 
    jsr get_ab
    lda ta+1    ;  compare high bytes
    cmp tb+1
    beq ugt_no
    bcs ugt_1       ;  a > b
ugt_no 
    lda ta
    cmp tb        ;  compare low bytes
    beq ugt_0
    bcs ugt_1
ugt_0 
    lda #0        ;  a <= b
    tax
    jmp push
ugt_1 
    lda #1
    ldx #0
    jmp push

