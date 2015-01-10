;****************************************
;  ptrout  -  store character in A
;    in the output buffer.
;
ptrout 
    sty ey        ;  preserve y
    inc outbuf
    ldy outbuf
    sta outbuf,y
    ldy ey
    rts

