;****************************************
;  normal  -  set normal text
;
;  Apple II specific, modify for other
;  systems.
;
normal 
    jsr $fe84    ;  set normal mode
    rts        ;  jsr so Sim65 works

