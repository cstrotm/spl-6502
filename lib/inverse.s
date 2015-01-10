;****************************************
;  inverse  -  set inverse text
;
;  Apple II specific, modify for other
;  systems.
;
inverse 
    jsr $fe80    ;  set inverse mode
    rts        ;  jsr so Sim65 works

