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

# Keybindings
bindkey -v
bindkey '^ ' autosuggest-accept
bindkey -M 'vicmd' -r ':'
bindkey "^[[P" delete-char

# Vi-mode prompt
precmd() { RPROMPT="" }
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

# FZF
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# Source external files
eval "$(dircolors ~/.shell/.dir_colors)"

# Settings
ENABLE_CORRECTION="true"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=2"

# Default
HISTFILE=$ZDOTDIR/zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
autoload -Uz compinit
