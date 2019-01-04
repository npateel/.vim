" BASIC SETUP:
" Enter the current millenia
set nocompatible

execute pathogen#infect()

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin indent on
" =====================================================

" SET COLORSTYLE:

" Sets light solarized
set background=light
colorscheme solarized
" =====================================================
" FINDING FILES:
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu
" =====================================================
" TAG JUMPING:
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack
" =====================================================
set expandtab
set shiftwidth=4
set softtabstop=4

" add line numbers and set numberwidth to 4
" =====================================================
set number
set nowrap
set showmatch

if v:version > 800
    set colorcolumn=80
endif    

" =====================================================
let mapleader=" "
map <leader>s :source ~/.vimrc<CR>
