execute pathogen#infect()

syntax on
filetype plugin indent on

set number
set background=light

colorscheme nord

set backspace=indent,eol,start

let g:airline#extensions#tabline#enabled = 1

let g:airline_theme='distinguished'

set nocompatible

set mouse=a

set ruler

set hlsearch
set shortmess=atI
set ignorecase
set incsearch


nmap <F7> :tabp <CR>
nmap <F8> :tabn <CR>
