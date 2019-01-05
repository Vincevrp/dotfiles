# Zsh config

# Antigen
source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme robbyrussell

antigen apply

# Source
source $HOME/.shell/vars.sh
source $HOME/.shell/functions.sh
source $HOME/.shell/aliases.sh

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

# Vi-mode prompt
precmd() { RPROMPT="" }
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]% %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

# Settings
setopt autocd
stty -ixon              # Disable XON/XOFF Control
autoload -Uz compinit
