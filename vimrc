set nocompatible		" vim, not vi
filetype off			" filetype detection off
set noswapfile			" don't create swap files
set ruler			" show line and column number of cursor position
set backspace=indent,eol,start	" ensure backspace works as expected similar to all other applications

" pathogen setup
execute pathogen#infect()

syntax on 					" syntax highlighting
set relativenumber 				" relative line numbers by default
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab      		" a tab is two spaces

" bslash-L to toggle absolute line numbers
nnoremap <Bslash>L :set number<CR>	
" bslash-l to toggle relative line numbers
nnoremap <Bslash>l :set relativenumber<CR>	

filetype plugin indent on	" load file type plugins + indentation

" vundle setup
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Bundle
Bundle 'gmarik/vundle'

" vim tmux nav
Bundle 'christoomey/vim-tmux-navigator'

" vim lisp/scheme indentation
autocmd filetype lisp,scheme,art setlocal equalprg=scmindent.rkt

" ctrl-P file finder
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_files = 0
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 1

" splits
set splitbelow
set splitright

" Custom Mappings
" quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" quicker tab movement
" alt-j
nnoremap ∆ gT
" alt-k
nnoremap ˚ gt

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" ctags
set tags=.git/tags

" sync the unnamed register with the system clipboard
set clipboard+=unnamed
