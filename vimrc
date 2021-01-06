" Personal neovim configuration
" Maintainer:   Chunhui Ren <renchunhui2008@gmail.com>
" License:      MIT License

set encoding=utf-8              " 编码
set termguicolors               " 启用真彩
set number                      " 行号
set cursorline                  " 突出显示当前行
set mouse=a                     " 启用鼠标
set tabstop=2                   " Tab 长度为2空格
set shiftwidth=2                " 自动缩进长度
set autoindent                  " 继承前一行的缩进方式
set laststatus=2                " 显示状态栏
set showtabline=2               " 显示标签栏
set textwidth=80                " 行宽
set wrap                        " 自动折行

set showmatch                   " 显示括号匹配
set hlsearch                    " 高亮显示匹配结果
set ignorecase                  " 搜索时忽略大小写

set nobackup                    " 不创建备份文件
set nowritebackup
set noswapfile                  " 不创建交换文件
set history=1000                " 记录历史操作
set autoread                    " 启用文件监视
set shortmess=atI               " 不显示首页提示

set hidden
set updatetime=300
set shortmess+=c

set nocompatible

syntax on                       " 语法高亮
filetype plugin indent on       " 打开文件类型检测

if empty(glob('~/.vim/plugged'))
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')

" Intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" File explorer
Plug 'Shougo/defx.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'kristijanhusak/defx-git', {'on': 'Defx'}
Plug 'tpope/vim-fugitive'

Plug 'bagrat/vim-buffet'

Plug 'liuchengxu/vim-which-key'

Plug 'editorconfig/editorconfig-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'Yggdroot/indentLine'

" A calendar application for Vim
Plug 'itchyny/calendar.vim', {'on': 'Calendar'}

" themes
Plug 'morhetz/gruvbox'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'rakr/vim-one'

call plug#end()

silent! colorscheme one
