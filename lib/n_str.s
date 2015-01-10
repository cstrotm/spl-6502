;****************************************
;  n_str  -  signed convert to ASCII
;            ( n -- )
;
n_str 
    lda #0
    sta outbuf        ;  output pointer
    jsr get_ta    ;  number
    lda ta+1    ;  check sign
    bpl n_str_1    ;  positive, continue
    lda #'-        ;  output sign
    jsr ptrout
    jsr comp_ta    ;  make positive
n_str_1 
    jmp u_str_1    ;  convert number

