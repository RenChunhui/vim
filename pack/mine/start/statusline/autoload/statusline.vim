let s:modes={
      \ 'n'  			: 'NORMAL',
      \ 'i' 			: 'INSERT',
      \ 'R'  			: 'REPLACE',
      \ 'v'  			: 'VISUAL',
      \ 'V'  			: 'V·LINE',
      \ '\<C-v>' 	: 'V·BLOCK',
      \ 'c'  			: 'COMMAND',
      \ 's'  			: 'SELECT',
      \ 'S'  			: 'S·LINE',
      \ '\<C-s>' 	: 'S·BLOCK',
      \ 't'  			: 'TERMINAL',    
      \}

let s:icons={
    \ 'vim' 				: ['','3C8376'],
    \ 'html' 				: ['','E44D26'],
    \ 'css' 				: ['','ebebeb'],
    \ 'scss' 				: ['','CD6799'],
    \ 'javascript' 	: ['','F5DE19'],
    \ 'typescript' 	: ['','007ACC'],
    \ 'json' 				: ['','F5DE19'],
    \ 'yaml' 				: ['YAML','fbc02d'],
    \ 'markdown' 		: ['','755838'],
    \}

function! statusline#mode() abort
    return toupper(s:modes[mode()])
endfunction

function! statusline#vc() abort
    if exists('g:loaded_fugitive')
        return ' ' . fugitive#head(8)
    else 
        return ''
    endif
endfunction

function! statusline#info() abort

endfunction

function! statusline#type() abort
    if has_key(s:icons, &ft)
        exec "hi User3 guifg=#" . s:icons[&ft][1]
        return s:icons[&ft][0]
    endif

	return &ft
endfunction

function! statusline#encode() abort
    return strlen(&fenc) ? toupper(&fenc) : ''
endfunction