# Shell variables
export PATH=$PATH:~/.bin                     # Add ~/.bin to PATH
export EDITOR=/usr/bin/vim
export VIMINIT="source ~/.vim/vimrc"
export ZDOTDIR=$HOME/.shell
export ZSH_CACHE_DIR=$HOME/.shell
export ZSH_COMPDUMP=$ZDOTDIR/.zcompdump
export SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS=0
export KEYTIMEOUT=1
export FZF_DEFAULT_COMMAND='find . -printf "%P\\n" 2> /dev/null'
export FZF_ALT_C_COMMAND='find . -type d -printf "%P\\n" 2> /dev/null'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
