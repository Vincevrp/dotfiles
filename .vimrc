" Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'

" Markdown plugins
Plugin 'shime/vim-livedown'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" CSS3 and SASS Syntax support
Plugin 'hail2u/vim-css3-syntax'
Plugin 'gcorne/vim-sass-lint'
Plugin 'cakebaker/scss-syntax.vim'

" All plugins must be added before the following line
call vundle#end()
filetype plugin indent on
syntax on                           " Enable syntax highlighting

" Vim behaviour
set tabstop=4                       " Number of spaces a tab counts for
set softtabstop=4                   " Set columns to 0 for tabs
set expandtab                       " Use tab character instead of spaces
set shiftwidth=4                    " Make indent correspond to single tab
set smarttab                        " Enable smarttab
set number relativenumber           " Enable relative line numbers
set ignorecase                      " Ignore case when searching
set smartcase                       " Ignore case if search is all lowercase, case-sensitive otherwise
set hlsearch                        " Highlight search terms
set incsearch                       " Show search matches as you type
set showmatch                       " Show matching parenthesis
set mouse=a                         " Enable mouse input
set timeoutlen=1001                 " Set mapping delay (Escape delay fix)
set ttimeoutlen=0                   " Set key code delay (Escape delay fix)
set encoding=utf-8                  " Enable UTF-8
set t_Co=256                        " Enable 256 color support
set showcmd                         " Show command while typing
set conceallevel=2                  " Enable concealing

" Custom keybindings
nnoremap <silent> <F1> :NERDTreeToggle<CR>
nnoremap <silent> <A-e> :SyntasticCheck<CR>
nnoremap <silent> <M-r> :SyntasticReset<CR>
nnoremap <silent> <C-l> :noh<CR>
nnoremap <silent> <A-p> :LivedownToggle<CR>

" Easymotion bindings
let g:EasyMotion_do_mapping = 0
nnoremap <silent> <Space> <Plug>(easymotion-prefix)
map <Space>f <Plug>(easymotion-bd-w)

" Fix for Alt-keybindings
let c='a'
while c <= 'z'
    exec "set <A-".c.">=\e".c
    exec "imap \e".c." <A-".c.">"
    let c = nr2char(1+char2nr(c))
endw

" Set color scheme to Nord
colorscheme nord

" Let vim-airline use powerline fonts
let g:airline_powerline_fonts=1
set guifont=Hack-regular

" NERDTree settings
let NERDTreeShowHidden=1 " Use Shift + i to toggle

" CtrlP settings
let g:ctrlp_show_hidden=1

" Markdown settings
let g:vim_markdown_folding_style_pythonic=1
let g:vim_markdown_frontmatter = 1

" Livedown settings
let g:livedown_autorun=0
let g:livedown_open=1
let g:livedown_port=4444
let g:livedown_browser="chromium"

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_sass_checkers=["sasslint"]
let g:syntastic_scss_checkers=["sasslint"]
