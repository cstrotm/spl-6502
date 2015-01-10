	;; **********************************
	;; c-- ( addr -- ) decrement char at
	;; addr by one

deccaddr
	jsr pop
	sta deccaddr1+1
        stx deccaddr1+2
deccaddr1
	dec 0
	rts

