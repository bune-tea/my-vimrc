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
let g:material_theme_style = 'ocian'
colorscheme material
" lightlineの色の設定
let g:lightline = {'colorscheme':'material_vim',}

" タブ関係
" タブを空白に置き換える
set expandtab
" タブ幅をスペース4つに
set tabstop=4
set softtabstop=4
set shiftwidth=4
" インデントの自動挿入
set smartindent
" filetypeごとの設定
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.py setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup ENDendif

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
" タブツリーにアイコンを追加
Jetpack 'ryanoasis/vim-devicons'
" gitを便利に使えるようにするやつ
Jetpack 'tpope/vim-fugitive'
" gitのdiffが行番号の左に見える
Jetpack 'airblade/vim-gitgutter'
" カラースキーム
Jetpack 'kaicataldo/material.vim', { 'branch': 'main' }
" ドキュメントの日本語化
Jetpack 'vim-jp/vimdoc-ja'
" コメントON/OFFを手軽に実行
Jetpack 'tomtom/tcomment_vim'
" 言語パック
Jetpack 'sheerun/vim-polyglot'
call jetpack#end()
