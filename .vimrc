set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Plugin 'VundleVim/Vundle.Vim'
Bundle 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-fugitive'
Plugin 'ervandew/supertab'
Plugin 'wincent/terminus'
Plugin 'mxw/vim-jsx'
Plugin 'jiangmiao/auto-pairs'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'jceb/vim-orgmode'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
filetype plugin indent on
set wildmenu
set visualbell
set number relativenumber
let g:netrw_liststyle = 3
let g:netrw_banner = 0
set mouse=n
syntax enable
set background=light
colorscheme desert
set path=.,/usr/include,,**
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set expandtab " convert tabs to spaces
set tabstop=2 "Indent using x spaces
set shiftwidth=2 " x spaces when shifting
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd TextChanged,TextChangedI <buffer> silent write
set ruler
highlight MatchParen gui=bold guibg=NONE guifg=lightblue cterm=bold ctermbg=NONE
let mapleader = ","
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
set omnifunc=syntaxcomplete#Complete

