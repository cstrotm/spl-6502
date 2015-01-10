;****************************************
;  yreg  -  store TOS in yreg register
;
yreg 
    jsr pop        ;  get TOS
    sta ey
    rts
