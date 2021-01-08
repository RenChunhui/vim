" Personal neovim configuration
" Maintainer:   Chunhui Ren <renchunhui2008@gmail.com>
" License:      MIT License

"----------------------------------------------------------------------
" 基础设置
"----------------------------------------------------------------------

" 禁用 vi 兼容模式
set nocompatible

" 编码
set encoding=utf-8              

" 自动缩进
set autoindent

" 自动折行
set wrap                        

" 延迟绘制（提升性能）
set lazyredraw

" 启用鼠标
set mouse=a                     

" 行宽
set textwidth=80 

" 显示括号匹配
set showmatch  

" 记录历史操作
set history=1000 

" 启用文件监视
set autoread                    

set hidden

set updatetime=300

set shortmess+=c
" 语法高亮
syntax on

" 打开文件类型检测                    
filetype plugin indent on       



"----------------------------------------------------------------------
" 显示设置
"----------------------------------------------------------------------

" 启用真彩
set termguicolors               

" 显示状态栏
set laststatus=2

" 显示标签栏
set showtabline=2               

" 显示侧边栏（用于显示 mark/gitdiff/诊断信息）
set signcolumn=yes

" 显示行号
set number

" 右下角显示命令
set showcmd

" 水平切割窗口时，默认在右边显示新窗口
set splitright

" 突出显示当前行
set cursorline

" 不显示首页提示
set shortmess=atI               



"----------------------------------------------------------------------
" 缩进模式
"----------------------------------------------------------------------

" Tab 长度为2空格
set tabstop=2   

" 自动缩进长度
set shiftwidth=2  



"----------------------------------------------------------------------
" 搜索设置
"----------------------------------------------------------------------

" 搜索时忽略大小写
set ignorecase

" 智能搜索大小写判断，默认忽略大小写，除非搜索内容包含大写字母
set smartcase

" 高亮显示匹配结果
set hlsearch

" 查找输入时动态增量显示查找结果
set incsearch



"----------------------------------------------------------------------
" 备份设置
"----------------------------------------------------------------------

" 不创建备份文件
set nobackup

" 保存时不备份
set nowritebackup

" 不创建交换文件
set noswapfile                  



"----------------------------------------------------------------------
" 文件搜索和补全时忽略下面扩展名
"----------------------------------------------------------------------

set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc,.pyo,.egg-info,.class

set wildignore+=*DS_Store*,*.ipch
set wildignore+=*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso
set wildignore+=*/.nx/**,*.app,*.git,.git



"----------------------------------------------------------------------
" 自动安装插件 
"----------------------------------------------------------------------

if empty(glob('~/.vim/plugged'))
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')

" 智能补全引擎
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" 代码片段
Plug 'SirVer/ultisnips'

" 文件树
Plug 'Shougo/defx.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'kristijanhusak/defx-git', {'on': 'Defx'}

" Git 支持
Plug 'tpope/vim-fugitive'

" 标签栏
Plug 'bagrat/vim-buffet'

" 快捷键
Plug 'liuchengxu/vim-which-key'

Plug 'editorconfig/editorconfig-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'Yggdroot/indentLine'

" Org Mode
Plug 'jceb/vim-orgmode'

" 日历
Plug 'itchyny/calendar.vim', {'on': 'Calendar'}

" 主题
Plug 'morhetz/gruvbox'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'rakr/vim-one'

call plug#end()


silent! colorscheme one
