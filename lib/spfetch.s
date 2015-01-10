;***********************************
; sp@ ( -- n ) -- fetch stack pointer
; 
spfetch
	lda sp
	jsr push0a
