call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'flazz/vim-colorschemes'
Plug 'rakr/vim-one'
Plug 'chemzqm/vim-jsx-improve'
Plug 'cloudhead/neovim-fuzzy'
Plug 'mileszs/ack.vim'
Plug 'fatih/vim-go'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
call plug#end()

let g:airline_theme='one'
let g:airline#extensions#ale#enabled = 1

let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set hlsearch
set ruler
set number
set wildmenu
set showmatch
set undofile

colorscheme one
set background=dark

let mapleader = ","

nnoremap <C-p> :FuzzyOpen<CR>
nnoremap <leader><space> :noh<cr> "clears search results
nnoremap <leader>a :Ack

au FocusLost * :wa
