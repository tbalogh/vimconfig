execute pathogen#infect()
filetype on
filetype plugin on
syntax on
colorscheme solarized

set number

set lines=35 columns=150
set colorcolumn=90

set history=100
set hidden

" MAP
let mapleader=" "
map 	 <leader>s :source ~/.vimrc<CR>
noremap  <leader>r :CommandTFlush<CR>
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" TABULATION
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" SEARCH
set hlsearch


set showmatch

set wildignore+=*.log,*.sql,*.cache


