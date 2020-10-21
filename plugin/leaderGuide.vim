let g:lmap =  {}

let g:lmap.a = {
  \'name' : 'Application'
  \}

let g:lmap.b = {
  \'name' : 'Buffer',
  \'f' : ['LeaderfBuffer', 'Find Buffer'],
  \}

let g:lmap.f = {
	\ 'name' : 'File',
	\ 'f' : ['LeaderfFile', 'Find File'],
	\}

let g:lmap.t = { 
    \ 'name': 'Toggle',
    \ 'e' : ['Defx -columns=indent:icon:icons:filename:type', 'Explorer'],
    \ }

let g:lmap.w = {
      \ 'name' : 'Window'
      \ }

call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>