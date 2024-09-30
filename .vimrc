startinsert
set wrap
set textwidth=80
set linebreak
set statusline=%F\ \ \ \ Words:\ %{wordcount().words}\ \ \ \ Col:\ %c
set spell
nnoremap j gj
nnoremap k gk

"function! Write()
"    startinsert
"    set wrap
"    set textwidth=80
"	set linebreak
"    set nonumber
"    set noai
"	set statusline=%F\ \ \ \ Words:\ %{wordcount().words}\ \ \ \ Col:\ %c
"	set spell
"	mksession! %-settings.vim
"endfunction

" function! Code()
"     set nowrap
"     set textwidth=0
" 	set nolinebreak
"     set number
"     set ai
" 	mksession! %-settings.vim
" endfunction

""map above functions to commands
"command! Write call Write()
"command! Code call Code()
