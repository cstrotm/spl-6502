;****************************************
;  xreg  -  store TOS in xreg register
;
xreg 
    jsr pop        ;  get TOS
    sta ex
    rts    

