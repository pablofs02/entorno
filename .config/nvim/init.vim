" Básica
set showmatch
set showcmd
set encoding=utf-8
set fileencoding=utf-8
set number
set mouse=a
set tabstop=4
set shiftwidth=4
set smartindent
set nohlsearch
set incsearch
set ignorecase
set smartcase
set clipboard=unnamedplus

" Tema
colorscheme gruvbox-material
highlight Normal ctermbg=none
highlight EndOfBuffer ctermbg=none

" Extensiones
call plug#begin('~/.config/nvim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mhinz/vim-signify'
Plug 'sainnhe/gruvbox-material'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
call plug#end()

" Barra de estado
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }
let g:lightline.colorscheme = 'gruvbox'
