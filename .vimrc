" ======================
" 一些基础配置和按键映射
" ======================

set number " 设置行号
set relativenumber " 设置相对行号
set expandtab " 将制表符转换为空格
set smartindent " 智能缩进
set autoindent " 自动缩进
set tabstop=4 " 制表符宽度为4个空格
set shiftwidth=4 " 每次缩进的宽度为4个空格
set hlsearch " 高亮搜索结果
syntax on " 开启语法高亮


let mapleader = ";" " 定义快捷键前缀为";"
nnoremap <Leader>q :wq<CR> " 在normal模式下，按下";q"可以保存并退出vim

" 在光标移动时高亮匹配的括号
set showmatch

:inoremap ( ()<Esc>i
:inoremap [ []<Esc>i
":inoremap < <><Esc>i
:inoremap { {}<Esc>i
:inoremap ' ''<Esc>i
:inoremap " ""<Esc>i
:inoremap { {<CR>}<Esc>O
:inoremap " ""<Esc>i
:inoremap { {<CR>}<Esc>O
nnoremap <C-h> gg=G

let loaded_matchparen=1

" 按住 Ctrl 键进行单词移动
inoremap <C-Right> <Esc>wi
inoremap <C-Left> <Esc>bi

nnoremap <C-v> v



" ======================
" vim plug
" ======================

call plug#begin("~/.vim/plugged")
Plug 'tomasiser/vim-code-dark'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
call plug#end()

colorscheme codedark
