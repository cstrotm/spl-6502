	;; call ( addr -- )
	;; jump to subroutine at addr
call
	jsr pop
	sta call1+1
	stx call1+2
call1
	jsr call2
call2
	rts
	