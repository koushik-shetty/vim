set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"pathogen setup
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
set noswapfile
"line number
set nu
set numberwidth=5

"aliases
command NT NERDTreeToggle
command ND NERDTree
set runtimepath^=~/vimfiles/bundle/ctrlp.vim
set runtimepath^=~/vimfiles/bundle/tabname.vim
set dir=%USERPROFILE%\AppData\Local\Temp
colorscheme torte
nmap ¯ :NT<cr>
nmap ® :ND<cr>
set sh=bash
au GUIEnter * simalt ~x
function ToggleFullscreen()
	if &go =~ "m"
		set go-=m
	else
		set go+=m
	endif
	if &go =~ "T"
		set go-=T
	else
		set go+=T
	endif
endfunction
nmap <M-F11> :call ToggleFullscreen()<cr>
