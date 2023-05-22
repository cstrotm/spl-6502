;****************************************
;  fclose  -  ( chan# -- rc )
;
;  Issue a Atari CIO "close" command.
;  
;
fclose 
	jsr pop      ; get chan
	
	asl
	asl
	asl
	asl
	tax
	lda #12      ; close cmd
	sta $342,x   ; iocom
	jsr $e456    ; ciov
	tya
	jmp push0a
