;****************************************
;  ch  -  set horizontal cursor position
;
;  cas, 02-Jan-2010
;
;  Atari 400/800/XL/XE/XEGS specific, modify for other
;  systems.
;
ch 
    jsr pop        ;  get TOS
    sta $54        ;  store low in CH
    rts

