set number
set autoindent
set textwidth=79
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set wrap
set ruler
set hlsearch
hi CursorLine cterm=None
set backspace=indent,eol,start
set fileformat=unix
set encoding=utf-8
  
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_winsize=30
augroup ProjectDrawer
    autocmd!
    autocmd VimEnter * :Vexplore
augroup END

call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf'
call plug#end()
