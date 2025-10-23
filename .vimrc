set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set autoindent
let mapleader = "\<Space>"
set helplang=ja,en

set number
set smartindent
set belloff=all
set cursorline
set showmatch
set laststatus=2
set wildmode=list:longest
nnoremap j gj
nnoremap k gk
syntax enable
colorscheme materialtheme
let g:lightline = {'colorscheme':'wombat',}

set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4
if has("autocmd")
  filetype plugin on
  filetype indent on
  autocmd FileType c setlocal expandtab
  autocmd FileType python setlocal et sts=2 sw=2 ts=2
endif

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

nmap <Esc><Esc> :nohlsearch<CR><Esc>
inoremap jk <Esc>
nnoremap <Leader>t :bo term<CR>
nnoremap <silent> <C-t> :tabnew<cr> 
nnoremap <silent> <C-tab> :tabnext<cr> 
nnoremap <silent> <C-S-tab> :tabprevious<cr> 
nnoremap <Leader>e :NERDTreeToggle<cr>

packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack', {'opt': 1} "bootstrap
Jetpack 'cohama/lexima.vim'
Jetpack 'jacoborus/tender.vim'
Jetpack 'itchyny/lightline.vim'
Jetpack 'flazz/vim-colorschemes'
Jetpack 'preservim/nerdtree'
Jetpack 'tpope/vim-fugitive'
Jetpack 'jdkanani/vim-material-theme'
Jetpack 'vim-jp/vimdoc-ja'
call jetpack#end()
