" My gVim settings, see also .vimrc
"
"set columns=200
"set lines=90

" user have to specofy colorscheme in gvimrc
color koehler


" Setting for mac
if has('mac')
   set guifont=Menlo:h15
   set transparency=0
endif

" Setting for Windows
if has('win32')
   set guifont=MS_Gothic:h15
   set guifontwide=MS_Gothic:h15
   set transparency=230
endif
" Setting for linux
if has('linux')
   set guifont=Monospace:h15
endif

set number
