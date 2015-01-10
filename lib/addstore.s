;****************************************
;  addstore  -  ( adr b -- )
;               add b to contents of adr
;
addstore
    jsr get_ab    ;  get b a
    ldy #0
    clc
    lda (tb),y    ;  low byte
    adc ta
    sta (tb),y    ;  save it
    iny
    lda (tb),y    ;  high byte
    adc ta+1
    sta (tb),y    ;  store high byte
    rts

