let g:which_key_use_floating_win = 0

" 符号
let g:which_key_display_names = {
			\ '<CR>': '↵',
			\ '<TAB>': '⇆'
			\ }

let g:mapleader = "\<Space>"
let g:maplocaleader = ','

nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

let g:which_key_map = {}

let g:which_key_map.a = {
            \ 'name':"Applications",
            \}

let g:which_key_map.b = {
			\ 'name': 'Buffers',
			\ 'f' : [':Buffers', 'Find Buffer']
			\ }

let g:which_key_map.f = {
			\ 'name': 'File',
			\ 'f': [':Files','Find File']
			\ }

let g:which_key_map.g = {
			\ 'name': 'Git',
			\ 'f': ['GFiles','Git Files'],
			\ 'c': ['Commits', 'Git Commits']
			\ }

let g:which_key_map.t = {
			\ 'name': 'Toggle',
			\ 'e': [':Defx -columns=indent:icon:icons:filename:type', 'Explorer']
			\ }

let g:which_key_map.w = {
			\ 'name': 'Window'
			\ }

call which_key#register('<Space>', "g:which_key_map")

set timeoutlen=500
