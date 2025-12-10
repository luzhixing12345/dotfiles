" 基础设置
set nocompatible        " 关闭 Vi 兼容模式
set number              " 显示行号
set relativenumber      " 显示相对行号（可选）
set ruler               " 显示光标位置
set cursorline          " 高亮当前行
"
" " 缩进与制表符
set tabstop=4           " Tab 显示为 4 个空格
set shiftwidth=4        " 缩进宽度为 4
set expandtab           " 将 Tab 转换为空格
set smartindent         " 智能缩进
autocmd InsertEnter * set paste
autocmd InsertLeave * set nopaste
"
" " 搜索
set ignorecase          " 搜索忽略大小写
set smartcase           " 如果包含大写，则大小写敏感
set hlsearch            " 高亮搜索结果
set incsearch           " 输入搜索词时就高亮
"
" " 显示与编码
set encoding=utf-8
set fileencodings=utf-8,gbk,ucs-bom,cp936
syntax on               " 启用语法高亮
set background=dark     " 使用 dark 主题（配合终端）
"
" " 文件操作
set autochdir           " 自动切换工作目录
set autoread            " 文件被外部修改时自动加载
"
" " 可视化增强
set showmatch           " 高亮匹配括号
set wrap                " 自动换行
set scrolloff=5         " 上下保留 5 行
"
" " 状态栏
" set laststatus=2        " 总是显示状态栏
"
autocmd FileType * setlocal formatoptions-=cro

" " 键盘映射（可选）
nnoremap <space> :
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>
"
" " 禁止生成备份文件
set nobackup
set nowritebackup
set noswapfile
"

call plug#begin("~/.vim/plugged")
Plug 'tomasiser/vim-code-dark'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
call plug#end()

colorscheme codedark

" 支持鼠标
set mouse=a