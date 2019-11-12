" show line number
set number
" after pressing enter, identation of next line will keep consistent with previous line
set autoindent
" set how many characters will be displayed in one line
set textwidth=79
" number of space that will display when Tab key is pressed
set tabstop=4
" indicates the number of characters in each level
set shiftwidth=4
" turns Tab into a space automatically
set expandtab
" indicates how many spaces Tab will be converted into
set softtabstop=4
" wrap lines automatically
set wrap
" diplays row and which column in status bar
set ruler
" highlight searched word
set hlsearch
" removes cursorline (underline) where cursor is
hi CursorLine cterm=None
" allow backspace to work
set backspace=indent,eol,start
" store file in unix format
set fileformat=unix
" UTF-8 support
set encoding=utf-8

" youcompleteme selection
let g:ycm_key_list_stop_completion=['<Enter>']

" netrw tree view
let g:netrw_liststyle=3
" remove banner in tree view
let g:netrw_banner = 0

" ---------- Plugins ----------
" Plugins will be downlaoded udner the specified directory
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'valloric/youcompleteme'
Plug 'airblade/vim-gitgutter'

" List ends here. Plugins become visible to Vim after this call
call plug#end()
