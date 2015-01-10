;****************************************
;  cv  -  set vertical cursor position
;
;  cas, 02-Jan-2010
;
;  Atari 400/800/XL/XE/XEGS specific, modify for other
;  systems.
;
cv 
    jsr pop        ;  get TOS
    sta $56        ;  store low in COLCRS+1
    stx $55        ;  store high in COLCRS
    rts

