set number
set wrap
set ruler
set hlsearch
set autoindent
set smartindent
set expandtab
set textwidth=79
set shiftwidth=4
set softtabstop=4
set tabstop=4
set backspace=indent,eol,start
set fileformat=unix
set encoding=utf-8  
hi CursorLine cterm=None

" --------------------------
map <C-E> :Lexplore<CR>
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_altv=1
let g:netrw_winsize=20

" --------------------------
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?''.l:branchname.'    ':''
endfunction

set laststatus=2
set statusline=
set statusline+=\ 
set statusline+=%{StatuslineGit()}
set statusline+=%f
set statusline+=%=
set statusline+=[%l/%L]
set statusline+=\  
set statusline+=%P
set statusline+=\ 

" --------------------------
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf'
call plug#end()
