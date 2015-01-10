;*****************************************
; exit ( -- )
; compiles an RTS (return from subroutine)
; leaves the current function
exit
	pla
	pla 	; fetch return address from this function
	rts	; return from parent function

