setlocal nonumber

nnoremap <silent><buffer><expr> <Tab> defx#do_action('open_tree','toggle')
nnoremap <silent><buffer><expr> <CR> defx#is_directory() ? defx#do_action('open_tree','toggle') : defx#do_action('multi', ['drop'])

nnoremap <silent><buffer><expr> r defx#do_action('rename')
nnoremap <silent><buffer><expr> c defx#do_action('copy')
nnoremap <silent><buffer><expr> p defx#do_action('paste')
nnoremap <silent><buffer><expr> m defx#do_action('move')
nnoremap <silent><buffer><expr> q defx#do_action('quit')
noremap <silent><buffer><expr> <C-n> defx#do_action('new_file')
nnoremap <silent><buffer><expr> <C-d> defx#do_action('new_directory')