set nocompatible
set notitle
set number "行番号の表示
set smartindent "インデントを有効
set showmatch "対応するカッコの表示
set nobackup "バックアップをつくらない
set noswapfile "swpファイルをつくらない
set autoread "編集ファイル自動読み込み
syntax on "コードハイライトを有効

" Neobundleの設定
" curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
" . install.sh
filetype plugin indent off
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle'))
endif

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'tpope/vim-rails'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'mattn/sonictemplate-vim'

call neobundle#end()
set laststatus=2

color desert " koehlerもおすすめ

"j連打でエスケープモード
inoremap jj <Esc>

"軍曹モード 矢印キーでの操作を強制的に無効にする
"========================
map <UP> <ESC>
map! <UP> <ESC>
map <DOWN> <ESC>
map! <DOWN> <ESC>
map <LEFT> <ESC>
map! <LEFT> <ESC>
map <RIGHT> <ESC>
map! <RIGHT> <ESC>
"========================
