execute pathogen#infect()
filetype plugin indent on
filetype on
syntax on

set number
set hidden
set backspace=indent,eol,start
set encoding=utf-8
set foldmethod=indent
set foldlevel=99
set showmatch
set history=100

let g:ycm_autoclose_preview_window_after_completion=1
let mapleader=" "
map <leader>s :source ~/.vimrc<CR>
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" INDENTATION
filetype indent on
set nowrap
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" SEARCH
set hlsearch
set smartcase
set ignorecase
" HLSEARCH (currently not working)
" set hlsearch
" nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
" mapclear

nnoremap <F3> :ls<CR>
nnoremap <Leader><Leader> :e#<CR>
map <leader>s :source ~/.vimrc<CR>

"PYTHON

" Virtual env support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" Indentation
highlight BadWhitespace ctermbg=red guibg=darkred
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ match BadWhitespace /\s\+$/

let python_highlight_all=1

" NERDTREE
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>
