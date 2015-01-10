;****************************************
;  getcwd  -  ( addr -- ec 1 | 0 )
;
;  Issue a ProDOS "get_prefix" command.
;  not implemented on Atari
;
getcwd 
	brk		; not implemented