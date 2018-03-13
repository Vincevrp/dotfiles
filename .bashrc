# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Disable XON/XOFF Flow control
[[ $- == *i* ]] && stty -ixon

# Aliases
source $HOME/.shell/aliases.sh

# Variables
source $HOME/.shell/vars.sh
export HISTFILE=$HOME/.shell/.bash_history
