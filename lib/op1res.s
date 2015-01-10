;*****************************************
;  op1res  -  copy op1 to res
;
op1res 
    ldy #3
op1res_loop 
    lda op1,y
    sta res,y
    dey
    bpl op1res_loop
    rts

