set nocompatible
filetype off
syntax on

set number
set relativenumber
vnoremap <C-c> "+y
	map <C-p> "+P

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'vim-syntastic/syntastic'
call plug#end()
filetype plugin indent on    " required

set cursorline

" Nerdtree shortcut
map <C-e> :NERDTreeToggle<CR>

map <F6> :setlocal spell! spelllang=en_au<CR>

" markdown plugin config
let g:vim_markdown_folding_disabled = 1
set t_Co=256   " This is may or may not needed.


" Number of visual spaces per tab and spaces per tab when editing
set tabstop=4  
set softtabstop=4  

" Show last command entered in bottom right of vim
set showcmd

" Highlight current line

"load filetype-specific indent files
filetype indent on

"visual autocomplete for command menu
set wildmenu

" highlight matching brackets
set showmatch

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to start/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

"recompile automatically
	autocmd BufWritePost config.h,config.def.h !sudo make install

