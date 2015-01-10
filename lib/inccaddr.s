	;; **********************************
	;; c++ ( addr -- ) increment char at
	;; addr by one

inccaddr
	jsr pop
	sta inccaddr1+1
	stx inccaddr1+2
inccaddr1
	inc 0
	rts
	
