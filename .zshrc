# Zsh config

# Antigen
source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme robbyrussell

antigen apply

# Disable XON/XOFF Control
stty -ixon

# Aliases
source $HOME/.shell/aliases.sh

# Variables
source $HOME/.shell/vars.sh

# Source external files
eval "$(dircolors ~/.dir_colors)"

# Settings
ENABLE_CORRECTION="true"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=2"

# Keybindings
bindkey '^ ' autosuggest-accept

# Default
HISTFILE=$ZDOTDIR/zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -e
autoload -Uz compinit
