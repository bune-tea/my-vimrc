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
" Jetpackのbootstrap
Jetpack 'tani/vim-jetpack', {'opt': 1}
" (や"を自動で補完する
Jetpack 'cohama/lexima.vim'
" ステータスラインの装飾
Jetpack 'itchyny/lightline.vim'
" タブツリーの表示
Jetpack 'preservim/nerdtree'
" gitを便利に使えるようにするやつ
Jetpack 'tpope/vim-fugitive'
" カラースキーム
Jetpack 'jdkanani/vim-material-theme'
" ドキュメントの日本語化
Jetpack 'vim-jp/vimdoc-ja'
" コメントON/OFFを手軽に実行
Jetpack 'tomtom/tcomment_vim'
call jetpack#end()
