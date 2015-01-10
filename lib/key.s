;****************************************
;  key  -  get a key from the keyboard
;
key 
	jsr getkey
	jmp push0a

getkey	lda $E425
	pha
	lda $E424
	pha
	rts


