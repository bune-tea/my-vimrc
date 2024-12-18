" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" リーダーキーを\<Space>に設定
let mapleader = "\<Space>"

" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" インデントはスマートインデント
set smartindent
" ビープ音を消す
set belloff=all
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" シンタックスハイライトの有効化
syntax enable
" 括弧を自動的に補完する
inoremap <silent> ( ()<Left>
inoremap <silent> () ()
inoremap <silent> (<Enter> (<CR>)<ESC><S-o>
inoremap <silent> { {}<Left>
inoremap <silent> {} {}
inoremap <silent> {<Enter> {<CR>}<ESC><S-o>
inoremap <silent> " ""<Left>
inoremap <silent> "" ""
inoremap <silent> "<Enter> "<CR>"<ESC><S-o>
inoremap <silent> ' ''<Left>
inoremap <silent> '' ''
inoremap <silent> '<Enter> '<CR>'<ESC><S-o>


" タブをブラウザ風のキーバインドに割り当てる
nnoremap <silent> <C-t> :tabnew<cr> "C-t で新しいタブ
nnoremap <silent> <C-tab> :tabnext<cr> "C-tab で次のタブ
nnoremap <silent> <C-S-tab> :tabprevious<cr> "C-S-tab で後ろのタブ

" Tab系
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 行頭でのTab文字の表示幅
set shiftwidth=4

" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" insertモード時にjkでノーマルモードに移行
inoremap jk <Esc>
" <S-t>でターミナルが起動するようにする
nnoremap <Leader>t :bo term<CR>
