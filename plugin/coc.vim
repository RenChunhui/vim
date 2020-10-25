let g:coc_snippet_next = '<tab>'

" 使用 <tab> 触发补全
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1] =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
      		\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()

" 使用 <c-space> 强制触发补全
inoremap <silent><expr> <c-space> coc#refresh()

" 使用 <CR> 确认补全
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

" 使用 <CR> 确认补全，并触发 coc.nvim 的 `formatOnType` 功能
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"