 Vim settings instead of Vi
set nocompatible

" indent width
set shiftwidth=4

" tab stops
set tabstop=4

" Use the mouse to select
set selectmode=mouse

" no backup files
set nobackup
set nowritebackup

" show cursor position
set ruler

" Switch syntax highling on, when the terminal has colors
" Also, switch on highlighting the last used search pattern
if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif