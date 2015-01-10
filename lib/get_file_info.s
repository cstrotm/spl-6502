;****************************************
;  get_file_info  -  ( name -- ec 1 | adr 0 )
;
;  Issue a ProDOS "get_file_info" command.
;  not implemented on Atari
;
get_file_info 
	brk		; not implemented