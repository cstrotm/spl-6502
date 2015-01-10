;****************************************
;  ushiftr  -  ( a n --  a>>n )
;
ushiftr 
    jsr pop        ;  get n
    sta tb        ;  ignore high part
    jsr pop        ;  get a
    sta ta        ;  save it
    stx ta+1
ushiftr_loop 
    lsr ta+1    ;  do one right shift
    ror ta
    dec tb
    bne ushiftr_loop
    lda ta
    ldx ta+1
    jmp push    ;  push answer

