	;; pos - position cursor ( y x -- )
colcrs  =   $55
rowcrs  =   $54
	
pos	jsr pop
	sta colcrs
	stx colcrs+1
	jsr pop
	sta rowcrs
	rts
