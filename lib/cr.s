;****************************************
;  cr  -  move to the next text line
;
;  cas, 02-Jan-2010
;
;  Atari 400/800/XL/XE/XEGS specific, modify for other
;  systems.
;
cr 
    lda #$9B    ; ATASCII EOL
    jmp chout

