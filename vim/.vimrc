set nocompatible              " be iMproved, required
filetype off                  " required

filetype plugin indent on    " required

call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'flazz/vim-colorschemes'
Plug 'rakr/vim-one'
Plug 'chemzqm/vim-jsx-improve'
Plug 'fatih/vim-go'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
call plug#end()

let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_fixers = { 'javascript': ['prettier'] }
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'

let g:lightline = { 'colorscheme': 'one' }

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
set clipboard=unnamed
set backspace=indent,eol,start

" Lightline
set laststatus=2
set noshowmode

colorscheme one
set background=dark

let mapleader = ","

nnoremap <leader><space> :noh<cr>
nnoremap <leader>a :Ag 
nmap ; :Buffers<CR>
nmap <leader>t :GFiles<CR>
nmap <leader>r :Tags<CR>
nnoremap Q <Nop>
noremap <leader>s :update<CR>

au FocusLost * :wa

autocmd vimenter * NERDTree
autocmd vimEnter * wincmd p
 
nmap <leader><tab> <plug>(fzf-complete-file-ag)

