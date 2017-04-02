execute pathogen#infect()
filetype plugin indent on
filetype on
syntax on

set number

let mapleader=" "
map <leader>s :source ~/.vimrc<CR>

set hidden
set history=100

filetype indent on
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" set hlsearch
" nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
" nmap <RIGHT> l
" nmap <LEFT> h
" nmap <DOWN> j
" nmap <UP> k

mapclear

nnoremap <F3> :ls<CR>
map <leader>s :source ~/.vimrc<CR>
nnoremap <Leader><Leader> :e#<CR>

set showmatch
