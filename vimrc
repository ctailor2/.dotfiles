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

execute "set colorcolumn=" . join(range(81,335), ',')

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

" ctrl-P file finder
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

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
