;; fetch end of program to stack
;; end@ ( -- addr )
fetchend
	lda #<_end
	ldx #>_end
	jmp push