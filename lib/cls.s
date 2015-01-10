;****************************************
;  cls  -  clear screen and home cursor
;
;  cas, 02-Jan-2010
;
;  Atari 400/800/XL/XE/XEGS specific, modify for other
;  systems.
;
cls 
	lda #$7d	; 125, CLS
	jmp chout

