;****************************************
;  gt  -  signed >
;         ( a b -- a>b, signed )
gt 
    jsr get_ab
    jsr csub    ;  ta -= tb
    lda ta+1    ;  check high byte
    bpl gt_yes    ;  a >= b
gt_no 
    lda #0
    tax
    jmp push    ;  a <= b
gt_yes 
    ora ta        ;  answer = 0?
    beq gt_no    ;  yes, return 0
    lda #1
    ldx #0
    jmp push    ;  no, return 1

