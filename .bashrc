# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Promptline import
source ~/.shell_prompt.sh

# Aliases
alias :q='exit'
alias ls='ls --color=always'
alias la='ls -hail'

eval "$(dircolors ~/.dir_colors)"
