set nocompatible		           " vim, not vi
filetype off			             " filetype detection off
set noswapfile			           " don't create swap files
set ruler			                 " show line and column number of cursor position
set backspace=indent,eol,start " ensure backspace works as expected similar to all other applications

syntax on 					                               " syntax highlighting
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab " a tab is two spaces

filetype plugin indent on	" load file type plugins + indentation

set splitbelow " open horizontal splits below the current panel by default
set splitright " open vertical splits to the right of the current panel by default

" Custom Mappings
" quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

set clipboard+=unnamed " sync the unnamed register with the system clipboard
