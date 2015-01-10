;****************************************
;  areg  -  store TOS in areg register
;
areg
    jsr pop        ;  get TOS
    sta ea
    rts    

