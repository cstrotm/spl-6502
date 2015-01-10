;****************************************
;  store8  -  Store 8-bit TOS-1 in address
;          at TOS  (C!)
;
store8 
    jsr get_ta    ;  get TOS
    jsr pop        ;  get value
    ldy #0
    sta (ta),y    ;  low byte
    rts

