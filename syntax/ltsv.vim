let s:cpo_save = &cpo
set cpo&vim

setlocal noexpandtab
syntax region ltsvKey start=+^\t*+ end=+:+
syntax region ltsvKey start=+\t+ end=+:+

syntax region ltsvLineComment start=+//+ end=+$+
syntax region ltsvLineComment start=+#+ end=+$+

highlight def link ltsvKey Label
highlight def link ltsvLineComment Comment

let &cpo = s:cpo_save
unlet s:cpo_save
