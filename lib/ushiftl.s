;****************************************
;  ushiftl  -  ( a n --  a<<n )
;
ushiftl 
    jsr pop        ;  get n
    sta tb        ;  ignore high part
    jsr pop        ;  get a
    sta ta        ;  save it
    stx ta+1
ushiftl_loop 
    asl ta        ;  do one left shift
    rol ta+1
    dec tb
    bne ushiftl_loop
    lda ta
    ldx ta+1
    jmp push    ;  push answer

