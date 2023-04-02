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

" 自定义括号匹配函数
function! MatchParen()
    let c = col('.') - 1
    if c < 0
        return
    endif
    let line = getline('.')
    let s = line[c]
    if s == '('
        return matchparen#Match_Parentheses('(', ')')
    elseif s == '{'
        return matchparen#Match_Parentheses('{', '}')
    elseif s == '['
        return matchparen#Match_Parentheses('[', ']')
    else
        return
    endif
endfunction

" 映射括号匹配函数到快捷键 %
nnoremap <silent> % :call MatchParen()<CR>

" 括号自动匹配
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

" 自动换行并补全括号
inoremap {<CR> {<CR>}<Esc>O
inoremap " ""<Esc>i
inoremap {<CR> {<CR>}<Esc>O

let loaded_matchparen=1


" ======================
" vim plug
" ======================


if empty(glob("~/.vim/autoload/plug.vim"))
  :exe '!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
              \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  au VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin("~/.vim/plugged")
Plug 'tomasiser/vim-code-dark'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
call plug#end()

colorscheme codedark
