" Install plugins
call plug#begin()
" Looks
Plug 'nikitavoloboev/vim-monokai-night' " Theme
Plug 'itchyny/lightline.vim' " Light and configurable statusline/tabline plugin.

" Utility
Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair.
Plug 'tpope/vim-surround' " Quoting/parenthesizing made simple.
Plug 'junegunn/vim-easy-align' " Simple, easy-to-use alignment.
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fzf search. 
Plug 'junegunn/fzf.vim' " Fzf search.

call plug#end()

" Options

set clipboard=unnamed
set updatetime=250 " If this many milliseconds nothing is typed the swap file will be written to disk
set visualbell " Turn off the audio bell (no beeps)
set undolevels=1000
set smartindent " Indentation
set shortmess=Ia " Disable startup message
set ignorecase " Search case insensitive:
set smartcase " .. but not when search pattern contains upper case characters
set nocursorcolumn
set nocursorline
set number
set wrap

set cursorline
set showmatch
set termguicolors " Enable true colors support



" Theme
colorscheme monokai-night
