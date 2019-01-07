# Zsh config

# Antigen
source /usr/share/zsh/share/antigen.zsh

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

autoload -Uz compinit

# Settings
setopt autocd
setopt prompt_subst
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

stty -ixon      # Disable XON/XOFF Control

# Source
source $HOME/.shell/vars.sh
source $HOME/.shell/functions.sh
source $HOME/.shell/aliases.sh
source $HOME/.shell/prompt.sh

# FZF
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

eval "$(dircolors ~/.shell/.dir_colors)"

# Keybindings
bindkey -v
bindkey '^ ' autosuggest-accept
bindkey -M 'vicmd' -r ':'
bindkey "^[[P" delete-char
bindkey "^j" down-history
bindkey "^k" up-history
bindkey "^o" vi-cmd-mode
bindkey "^a" vi-beginning-of-line
bindkey "^e" vi-end-of-line
