nnoremap j gj
nnoremap k gk

function! Code()
    set nowrap
    set textwidth=0
	set nolinebreak
    set number
    set ai
	set statusline=%F\ \ \ \ Lines:\ %L\ \ \ \ Col:\ %c
	mksession! %-settings.vim
endfunction

function! Write()
    startinsert
    set wrap
    set textwidth=80
	set linebreak
    set nonumber
    set noai
	set statusline=%F\ \ \ \ Words:\ %{wordcount().words}\ \ \ \ Col:\ %c
	mksession! %-settings.vim
endfunction

command! Write call Write()
command! Code call Code()
