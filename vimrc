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
   Plug 'easymotion/vim-easymotion'
   " For LSP, using vim-lsp
   Plug 'prabirshrestha/vim-lsp'
   Plug 'prabirshrestha/async.vim'
   Plug 'prabirshrestha/asyncomplete.vim'
   Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

set laststatus=2

color desert " koehlerもおすすめ

" vim-lsp Setup
let g:lsp_diagnostics_enabled = 0
let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('/tmp/vim-lsp.log')
let g:asyncomplete_log_file = expand('/tmp/asyncomplete.log')
let g:lsp_diagnostics_enabled = 1
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_highlights_enabled = 1

" See :help vim-lsp
nnoremap def  :LspDefinition<CR>
nnoremap pdef :LspPeekDefinition<CR>
nnoremap rename :LspRename<CR>
nnoremap refs :LspReferences<CR>
nnoremap dsym :LspDocumentSymbol<CR>
nnoremap wsym :LspWorkspaceSymbol<CR>

" For Ruby LS
" solargraph config command for project setup
" If it is Rails project, see https://github.com/castwide/solargraph/issues/87
" for comfortable coding.
if executable('solargraph')
    " gem install solargraph
    au User lsp_setup call lsp#register_server({
        \ 'name': 'solargraph',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
        \ 'initialization_options': {"diagnostics": "true"},
        \ 'whitelist': ['ruby'],
        \ })
endif
