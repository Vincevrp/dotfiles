# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Aliases
alias :q='exit'
alias ls='ls --color=always'
alias la='ls -hail'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

eval "$(dircolors ~/.dir_colors)"

# Add ~/.bin to PATH
export PATH=$PATH:~/.bin

# Change default editor to vim
export EDITOR=/usr/bin/vim

# Fix for games minimizing when losing focus
export SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS=0
