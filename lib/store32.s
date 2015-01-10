;****************************************
;  store32  -  Store 32-bit TOS-1 in address
;           at TOS (d!)
;
store32 
    jsr get_ta    ;  get TOS
    jsr pop        ;  get value, high
    ldy #2
    sta (ta),y    ;  low byte, high part
    iny
    txa
    sta (ta),y    ;  high byte, high part
    jsr pop        ;  get value, low
    ldy #0
    sta (ta),y
    iny
    txa
    sta (ta),y
    rts


