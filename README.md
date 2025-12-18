# my-vimrc
自分が普段学校などで使用しているvimの設定ファイルです。

## プラグインについて
このvimrcでは、プラグインマネージャとして、を[tani/vim-jetpack](https://github.com/tani/vim-jetpack)使用しています。インストールしていない方は、先にインストールしておいてください。また、一部のプラグインでnerdfontを使うため、nerdfontではないフォントを使うと、表示が一部変になるため、nerdfontの使用を推奨します。

## 設定ファイルの有効化
この設定ファイルを自身のvimに反映したい場合は、このリポジトリをクローンした後に、クローンしたディレクトリの中で以下のコマンドを実行してください。もともと別の.vimrcを使っていた方はもとの設定を失わないためにバックアップを取ることを推奨します。
```
$ ln -s vimrc ~/.vimrc
```
## プラグインの有効化
プラグインマネージャのインストールと設定ファイルの有効化が完了したら、以下のコマンドでvimを起動してください。vim-jetpackのプラグインのインストールが自動的にされます。
```
$ vim -c "JetpackSync"
```

# 使用しているプラグイン
[tani/vim-jetpack](https://github.com/tani/vim-jetpack)
プラグインを管理してくれる。
[cohama/lexima.vim](https://github.com/cohama/lexima.vim)
(や"を自動で補完する
[itchyny/lightline.vim](https://github.com/itchyny/lightline.vim)
ステータスラインの装飾
[preservim/nerdtree](https://github.com/preservim/nerdtree)
タブツリーの表示
[ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons)
タブツリーにアイコンを追加
[tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
gitを便利に使えるようにするやつ
[airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)
gitのdiffが行番号の左に見える
[kaicataldo/material.vim](https://github.com/kaicataldo/material.vim)
カラースキーム
[vim-jp/vimdoc-ja](https://github.com/vim-jp/vimdoc-ja)
ドキュメントの日本語化
[tomtom/tcomment_vim](https://github.com/tomtom/tcomment_vim)
コメントON/OFFを手軽に実行
[sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot)
言語パック
[Yggdroot/indentLine](https://github.com/Yggdroot/indentLine)
インデントを見やすく
[tpope/vim-surround](https://github.com/tpope/vim-surround)
''とか()を便利にするやつ
