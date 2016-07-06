"Pathogen setup
call pathogen#infect()
syntax on
filetype plugin indent on

set clipboard=unnamed
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set tabstop=4 softtabstop=4 shiftwidth=4
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set nowrap
"set noswapfile
"line number
set nu
set numberwidth=5

"aliases
command NT NERDTreeToggle
command ND NERDTree
set runtimepath^=~/vimfiles/bundle/ctrlp.vim
set runtimepath^=~/vimfiles/bundle/tabname.vim
set backupdir=~/vimMeta/backup//
set directory=~/vimMeta/swp//
colorscheme desertEx
nmap ÷ :NT<cr>
nmap <Tab> <C-w><C-w>
nmap <C-Tab> <C-w>w<cr>
"make he backspace wok in insert mode
set backspace=indent,eol,start

"set current directory
nmap <F10> :lcd %:p:h<cr>
set statusline+=%f\%=\%y\ [ln:%l,col:%c,Tot:%L]
set hlsearch
set autoread

"move line up down
nnoremap ≥ :m .+1<cr>
nnoremap ≤ :m .-2<cr>
"clear the selection 
nmap <F9> :noh<cr> 

