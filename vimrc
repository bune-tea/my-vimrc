" コーディングをutf8に
set fenc=utf-8
" ファイルのバックアップを取らない
set nobackup
" vimの外でファイルの中身が変更された際に自動で読み直す
set autoread
" バッファを隠す
set hidden
" コマンドを画面の最下部に表示する
set showcmd
" リーダーキーをスペースに設定
let mapleader = "\<Space>"
" ヘルプを日本語で表示
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
" 行を折り返して移動する
nnoremap j gj
nnoremap k gk
" シンタックスハイライトを有効に
syntax enable
" カラースキームをマテリアルテーマに
set termguicolors
colorscheme material
let g:material_theme_style = 'ocian'
" lightlineの色の設定
let g:lightline = {'colorscheme':'material_vim',}

" タブ関係
" タブを空白に置き換える
set expandtab
" タブ幅をスペース4つに
set tabstop=4
set softtabstop=4
set shiftwidth=4
" タブ幅を一括で変更するコマンドを作成
command CT2 set ts=2 sts=2 sw=2
command CT4 set ts=4 sts=4 sw=4
" 行を挿入したときに今の行とインデントを揃える
set autoindent
" インデントの自動挿入
set smartindent
" インデントの見た目変更
let g:indentLine_char = '|'
" filetypeごとの設定
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.py setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup ENDendif

" 検索系
" 小文字だけで検索したときに大文字小文字を区別しない
set smartcase
" 検索コマンドを打ち込んでいる間もパターンを強調する
set incsearch
" ファイル検索が末尾まで行ったら先頭から再び検索する
set wrapscan
" :nohlsearchをするまで強調する
set hlsearch

" マッピング系
" <Esc><Esc>でハイライトをリセット
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" jkでノーマルモードに入る
inoremap jk <Esc>
" <Leader>tでターミナルを開く
nnoremap <Leader>t :bo term<CR>
" Ctrl-Tでタブを開く
nnoremap <silent> <C-t> :tabnew<CR> 
" <Leader>tでNERDTreeを起動
nnoremap <Leader>e :NERDTreeToggle<CR>
" Uでredo
nnoremap U <c-r>
" <したときに前回のvisual選択を保持
xnoremap < <gv
" >したときに前回のvisual選択を保持
xnoremap > >gv
" 英字キーボードように<Leader>;でコマンドラインモードに移行
nnoremap <Leader>; :
" ターミナルモード時にEscでノーマルモードに移行
tnoremap <Esc> <C-w>N
" <Leader>+hjklで画面移動
nnoremap <Leader>h <c-w>h
nnoremap <Leader>j <c-w>j
nnoremap <Leader>k <c-w>k
nnoremap <Leader>l <c-w>l

" その他
" ターミナルモード移行時に自動的にノーマルモードにする
autocmd WinEnter * if &buftype ==# 'terminal' | normal i

" vim-jetpackでプラグインを管理
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
" インデントを見やすく
Jetpack 'Yggdroot/indentLine'
" ''とか()を便利にするやつ
Jetpack 'tpope/vim-surround'
call jetpack#end()
