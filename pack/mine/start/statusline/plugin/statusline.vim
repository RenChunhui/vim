" ============================================================================
" Description: Vim custom statusline
" Author: Chunhui Ren <renchunhui2008@gmail.com>
" Licence: MIT licence
" ============================================================================

let s:disable_statusline =
	\ 'defx\|denite\|vista\|tagbar\|undotree\|diff\|peekaboo\|sidemenu\|which_key'

let s:stl  = "%1*\ %{statusline#mode()}\ %*"
let s:stl .= "  %{statusline#vc()}"
" let s:stl .= "  %{statusline#info()}"

let s:stl .= "%="

let s:stl .= "%3*%{statusline#type()}\ %*"
let s:stl .= " %{statusline#encode()}"

let s:stl_nc  = ""
let s:stl_nc .= "  %{statusline#vc()}"
let s:stl_nc .= "%="
let s:stl_nc .= "%{statusline#type()}"
let s:stl_nc .= "  %{statusline#encode()}"

function! s:active()
	if &filetype ==# 'defx'
		let &l:statusline = 'Defx'
	elseif &filetype !~# s:disable_statusline && ! &previewwindow
		let &l:statusline = s:stl
	endif
endfunction

function! s:inactive()
	if &filetype ==# 'defx'
		let &l:statusline = 'DEFX'
	elseif &filetype !~# s:disable_statusline && ! &previewwindow
		let &l:statusline = s:stl_nc
	endif
endfunction

augroup Statusline
	autocmd!

	" Set active/inactive statusline templates
	autocmd VimEnter,ColorScheme,FileType,WinEnter,BufWinEnter * call s:active()
	autocmd WinLeave * call s:inactive()

	" Redraw on Vim events
	autocmd FileChangedShellPost,BufFilePost,BufNewFile,BufWritePost * redrawstatus

	" Redraw on Plugins custom events
	autocmd User CocStatusChange,CocGitStatusChange redrawstatus
augroup END

augroup StatuslineColor
	au InsertEnter  * hi User1 guifg=#2c323c guibg=#61afef gui=bold
	au InsertLeave  * hi User1 guifg=#2c323c guibg=#98c379 gui=bold
	hi User1 guifg=#2c323c guibg=#98c379 gui=bold
	hi User3 guifg=#1F1F24 guibg=#2c323c
augroup END

" vim: set ts=2 sw=2 tw=80 noet :