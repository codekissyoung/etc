""""""""""""""""""
"                "
" vimrc文档语法  "
"                "
"                "
""""""""""""""""""
" <C-n>             同时按 <Ctrl> 和 n
" g<C-]>            先按g ，然后同时按 <Ctrl> 和 ]
" <C-r>0            同时按 <Ctrl> 和 r ,然后再按0
" <C-w><C-=>        同时按<Ctrl> 和w ，然后再同时按下<Ctrl>和=
" <Esc>             退出键
" <CR>              回车键 也写作 <Enter>
" <Ctrl>            控制键
" <Tab>             制表键
" <Shift>           切换键
" <S-Tab>           同时按 <Shift> 和 <Tab> 键
" <Up>              按上光标键
" <Down>            按下光标键

set nu
set encoding=utf-8
set fdm=marker
set autoindent
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4 "每次shift+<移动4格
set list
set listchars=tab:>-,trail:-,extends:#,nbsp:-
set hlsearch                " 高亮查找项
set incsearch               " 查找跟随
set ignorecase              " 查找时忽略大小写

" 禁用vi兼容模式
set nocompatible
" 激活内置插件
filetype plugin on

" 使用 vimbundle 插件管理器
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/vim-utils/vim-man.git'

call vundle#end()
filetype plugin indent on
" vimbundle 插件管理器配置结束

" 文件树插件绑定快捷键 Ctrl ＋t 开启
map <C-t> :NERDTreeToggle<CR>


