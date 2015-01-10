;**********************************************
;  r@  -  copy the top of return-stack to data stack
;
r_fetch 
    jsr from_r
    jsr dup
    jsr to_r
    rts

