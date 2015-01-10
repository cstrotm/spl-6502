;****************************************
;  store16  -  Store 16-bit TOS-1 in address
;           at TOS (!)
;
store16 
    jsr get_ta    ;  get TOS
    jsr pop        ;  get value
    ldy #0
    sta (ta),y    ;  low byte
    iny
    txa
    sta (ta),y    ;  high byte
    rts


