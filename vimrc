execute pathogen#infect()
syntax enable

let &rtp  = '~/.vim/bundle/vimtex,' . &rtp
let &rtp .= ',~/.vim/bundle/vimtex/after'

let mapleader=" "


let $PATH="/usr/local/bin:".$PATH
let g:ycm_server_python_interpreter='/usr/local/bin/python'


set backspace=indent,eol,start
set autoindent


" Colors {{{
colorscheme ambient
" }}}
" Spaces and tabs {{{
set shiftwidth=4
set softtabstop=4
set expandtab
" }}}
" UI {{{
filetype indent plugin on
set number
set relativenumber
set showcmd
set cursorline
set ruler
set wildmenu
set lazyredraw
set showmatch

" highlight last inserted text
nnoremap gV `[v`]
" }}}
" Search {{{
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>
" }}}
" Folding {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
nnoremap , za
" }}}
" Movement {{{
" move vertically by visual line
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>

" }}}
" CtrlP {{{
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s --nocolor --hidden -g ""'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']

" }}}
" Window navigation {{{
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }}}
" Misc {{{
nnoremap <leader>u :GundoToggle<CR>
" }}}

" Python {{{
autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
autocmd FileType python nnoremap <buffer> <F10> :exec '!python -m unittest' shellescape(@%, 1)<cr>
" }}}

" Mappings {{{
nnoremap <leader>n :NERDTreeToggle<CR>
" }}}

" vim:foldmethod=marker:foldlevel=0
map <C-j> cw<C-r>0<ESC>
