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

set nocp                    " 取消与老版本VI的兼容

set nu
set encoding=utf-8
syntax enable
set fdm=marker

" 高亮显示当前行
set cursorline				" 高亮当前行
highlight CursorLine   cterm=NONE ctermbg=white ctermfg=NONE guibg=NONE guifg=NONE

" 高亮显示当前列
set cursorcolumn            " 竖直也高亮
highlight CursorColumn cterm=NONE ctermbg=white ctermfg=NONE guibg=NONE guifg=NONE

set expandtab               " 设置 Tab 展开为空格
set autoindent				" 自动缩进
set smartindent             " 为c语言提供自动缩进
set smarttab
set cin                     " 采用 c 风格缩进
set ts=4                    " 设置 Tab 的宽度
set sw=4                    " 每行的缩进深度 设置跟 Tab 的宽度一样 每次shift+<移动4格
set sm                      " 括号自动匹配

" 禁止在 Makefile 中将 Tab 转换成空格
autocmd FileType make set noexpandtab

set hlsearch                " 高亮查找项
set incsearch               " 查找跟随
set ignorecase              " 查找时忽略大小写
set nocompatible            " 禁用vi兼容模式
filetype plugin on          " 激活内置插件

set listchars=tab:>-,trail:-
" set list

" 使用 vimbundle 插件管理器
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/scrooloose/nerdtree.git'
" Plugin 'https://github.com/vim-utils/vim-man.git'

" Plugin 'godlygeek/tabular'
" Plugin 'plasticboy/vim-markdown'

call vundle#end()

filetype plugin indent on
" vimbundle 插件管理器配置结束
" 文件树插件绑定快捷键 Ctrl ＋t 开启
map <C-t> :NERDTreeToggle<CR>
