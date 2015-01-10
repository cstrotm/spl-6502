;****************************************
;  fill  -  fill memory with a value
;           ( adr len val -- )
;
fill 
    jsr pop        ;  get val
    sta tmp        ;  save low byte
    jsr get_ab    ;  get ta=adr, tb=len
    clc        ;  tb += ta
    lda tb
    adc ta
    sta tb
    lda tb+1
    adc ta+1
    sta tb+1    ;  ending address
    ldy #0
fill_loop 
    lda tmp        ;  val
    sta (ta),y    ;  to memory
    inc ta
    bne fill_cont1
    inc ta+1
    beq fill_done    ;  overflow
fill_cont1 
    lda ta        ;  ta == tb?
    cmp tb
    beq fill_cont2
    jmp fill_loop
fill_cont2 
    lda ta+1
    cmp tb+1
    beq fill_done
    jmp fill_loop
fill_done 
    rts

