;****************************************
;  erase  -  fill memory with 0
;           ( adr len -- )
;
erase 
    jsr get_ab    ;  get ta=adr, tb=len
    clc        ;  tb += ta
    lda tb
    adc ta
    sta tb
    lda tb+1
    adc ta+1
    sta tb+1    ;  ending address
    ldy #0
erase_loop 
    lda #0        ;  val
    sta (ta),y    ;  to memory
    inc ta
    bne erase_cont1
    inc ta+1
    beq erase_done    ;  overflow
erase_cont1 
    lda ta        ;  ta == tb?
    cmp tb
    beq erase_cont2
    jmp erase_loop
erase_cont2 
    lda ta+1
    cmp tb+1
    beq erase_done
    jmp erase_loop
erase_done 
    rts

