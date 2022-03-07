syntax on

set encoding=utf-8
set hidden
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set nu
set smartcase
set noswapfile 
set nobackup
set undodir=~/.vim/undo
set undofile
set incsearch
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plug')
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
"Plug 'ycm-core/YouCompleteMe.git' "YCM Causes problems for me during PlugInstall, use CoC instead
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Run :CocInstall for a language for autocomplete
":CocInstall list -
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'mbbill/undotree'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-airline/vim-airline'
Plug 'wlangstroth/vim-racket'
Plug 'sheerun/vim-polyglot'
Plug 'rust-lang/rust.vim'
Plug 'preservim/tagbar'
Plug 'universal-ctags/ctags'
Plug 'luochen1990/rainbow'
Plug 'vim-syntastic/syntastic'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'tommcdo/vim-lion'
Plug 'Shirk/vim-gas'
Plug 'ntpeters/vim-better-whitespace'
call plug#end()

colorscheme palenight
set background=dark

if executable('rg')
	let g:rg_derive_root=true
endif

let g:retrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winsize=25


let mapleader=" "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
