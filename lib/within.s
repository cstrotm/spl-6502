;**********************************************
;  within ( u ul uh - f )  -  
;  true if ul <= u <= uh
;
within 
        jsr over
        jsr sub
        jsr to_r
        jsr sub
        jsr from_r
        jsr ult
        rts

