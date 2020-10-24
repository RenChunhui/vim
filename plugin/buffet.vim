let g:buffet_tab_icon = "﬘"
let g:buffet_new_buffer_name = "☲"
let g:buffet_powerline_separators = 1
let g:buffet_show_index = 1
let g:buffet_use_devicons = 0
let g:buffet_hidden_buffers = ['terminal']

function! g:BuffetSetCustomColors()
    if g:colors_name == 'one'
        if &background == 'dark'
            hi! BuffetCurrentBuffer guibg=#528bff guifg=#2C323C
            hi! BuffetActiveBuffer guibg=#528bff guifg=#2C323C
            hi! BuffetBuffer guifg=#abb2bf guibg=#282c34
            hi! BuffetTab guifg=#2C323C guibg=#C678DD
        else
            hi! BuffetCurrentBuffer guibg=#528bff guifg=#2C323C
            hi! BuffetActiveBuffer guibg=#528bff guifg=#2C323C
            hi! BuffetBuffer guifg=#abb2bf guibg=#282c34
            hi! BuffetTab guifg=#2C323C guibg=#C678DD
        endif
    elseif g:colors_name == 'gruvbox'
        hi! BuffetCurrentBuffer guibg=#5482FF guifg=white
        hi! BuffetActiveBuffer guibg=#1F1F24 guifg=white
        hi! BuffetBuffer guifg=#1F1F24 guibg=white
        hi! BuffetTab guifg=white guibg=#1F1F24
    endif
endfunction
