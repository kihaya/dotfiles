set nocompatible
set notitle
set number "行番号の表示
set smartindent "インデントを有効
set showmatch "対応するカッコの表示
set nobackup "バックアップをつくらない
set noswapfile "swpファイルをつくらない
set autoread "編集ファイル自動読み込み
syntax on "コードハイライトを有効

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
   Plug 'itchyny/lightline.vim'
   Plug 'airblade/vim-gitgutter'
   Plug 'tpope/vim-fugitive'
   Plug 'thinca/vim-quickrun'
   Plug 'sheerun/vim-polyglot'
   Plug 'tpope/vim-rails'
   Plug 'tpope/vim-fireplace'
   Plug 'slim-template/vim-slim'
   Plug 'mattn/sonictemplate-vim'
   Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
   Plug 'junegunn/fzf.vim'
call plug#end()

set laststatus=2

color desert " koehlerもおすすめ
