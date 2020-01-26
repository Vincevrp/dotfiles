# Zsh config
SHELL_DIR=$HOME/.config/shell

# Settings
setopt autocd                   # Auto cd when executing directory
setopt prompt_subst             # Required for prompt
setopt auto_pushd               # Automatically use pushd
setopt pushd_ignore_dups        # Pushd will ignore duplicates
setopt pushdminus               # Allow numbers
setopt hist_expire_dups_first   # Delete duplicates when HISTFILE is full
setopt hist_ignore_dups         # Ignore duplicates
setopt histignorespace          # Don't write to history when prepended by space
setopt hist_verify              # Show with history expansion before executing
setopt inc_append_history       # Add in order of execution
setopt auto_menu                # Show completion menu on tab
setopt complete_in_word         # Completion from both ends
setopt always_to_end            # Move cursor to end on completion

stty -ixon                      # Disable XON/XOFF Control
unsetopt flowcontrol            # Disable flowcontrol
unsetopt menu_complete          # Don't autoselect first entry

# Source
source $SHELL_DIR/vars.sh
source $SHELL_DIR/functions.sh
source $SHELL_DIR/aliases.sh
source $SHELL_DIR/prompt.sh

# FZF
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

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

# Completion
zmodload -i zsh/complist
WORDCHARS=''
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion::complete:*' cache-path $ZSH_CACHE_DIR
zstyle ':completion::complete:*' use-cache 1

# zinit
source $SHELL_DIR/.zinit/mod-bin/zinit.zsh

zinit ice wait"0" atload"_zsh_autosuggest_start" lucid
zinit light zsh-users/zsh-autosuggestions

zinit ice wait"0" atinit"zpcompinit; zpcdreplay" lucid
zinit light zdharma/fast-syntax-highlighting

zinit ice atclone"dircolors -b src/dir_colors > clrs.zsh" \
    atpull'%atclone' pick"clrs.zsh" nocompile'!' \
    atload'zstyle ":completion:*" list-colors “${(s.:.)LS_COLORS}”'
zinit light arcticicestudio/nord-dircolors
