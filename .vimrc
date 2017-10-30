" Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'edkolev/promptline.vim'
Plugin 'arcticicestudio/nord-vim'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" Indent fix
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

" Escape delay fix
set timeoutlen=1001 ttimeoutlen=0

" Let vim-airline use powerline fonts
let g:airline_powerline_fonts = 1

" Set color scheme to Nord
colorscheme nord
