set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set autoindent
let mapleader = "\<Space>"
set helplang=ja,en

" 見た目の設定
" 行番号の表示
set number
" インデントの自動挿入
set smartindent
" ベルを鳴らさない
set belloff=all
" 行を強調する
set cursorline
" 閉じかっこを強調
set showmatch
" 常に下にステータス行を表示
set laststatus=2
" 補完機能の設定
set wildmode=list:longest
nnoremap j gj
nnoremap k gk
" シンタックスハイライトを有効に
syntax enable
" カラースキームをマテリアルテーマに
set termguicolors
colorscheme material-theme
" lightlineの色の設定
let g:lightline = {'colorscheme':'wombat',}

" タブ関係
" タブを空白に置き換える
set expandtab
" タブ幅をスペース4つに
set softtabstop=4
set tabstop=4
set shiftwidth=4
" filetypeごとの設定
if has("autocmd")
  filetype plugin on
  filetype indent on
  autocmd FileType c setlocal et
  autocmd FileType python setlocal et sts=2 sw=2 ts=2
endif

" 検索系
set smartcase
set incsearch
set wrapscan
set hlsearch

" マッピング系
nmap <Esc><Esc> :nohlsearch<CR><Esc>
inoremap jk <Esc>
nnoremap <Leader>t :bo term<CR>
nnoremap <silent> <C-t> :tabnew<CR> 
nnoremap <silent> <C-tab> :tabnext<CR> 
nnoremap <silent> <C-S-tab> :tabprevious<CR> 
nnoremap <Leader>e :NERDTreeToggle<CR>

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
