;****************************************
;  fputc  -  ( addr len chan# -- rc )
;
;  Write bytes to an open file.
; 
;
fputc 
	jsr pop     ; get chan	
	asl
	asl
	asl
	asl
	sta ea
	jsr pop     ; get len
	ldy ea
	sta $348,y  ; iolen
	txa
	sta $349,y  ; iolen+1
	jsr pop     ; get addr
	ldy ea
	sta $344,y  ; iobuf
	txa
	sta $345,y  ; iobuf+1
	ldx ea
	lda #11
	sta 342,x   ; iocom
        jsr $E456   ; CIOV
        tya        
        jmp push0a
        
