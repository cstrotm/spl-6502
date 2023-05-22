;****************************************
;  fopen  -  ( filenm ciocmd chan -- rc )
;
;  Issue a CIO "open" command.
;  ciocmd = 4 = read
;           6 = directory
;           8 = write
;           9 = append
;          12 = update
;

fopen 
	jsr pop      ; get chan	
	asl
	asl
	asl
	asl
	sta ea
	
	jsr pop      ; get CIO cmnd
	ldy ea
	sta $34a,y   ; ioaux1
	txa
	sta $34b,y   ; ioaux2
	jsr pop      ; get filespec
	tay
	iny          ; jump of length byte
	tya
	ldy ea
	sta $344,y   ; iobuff
	txa
	sta $345,y   ; iobuf+1
	ldx ea
	lda #3       ; open command
	sta $342,x   ; iocom
	jsr $e456    ; ciov
	tya
	jmp push0a
	
