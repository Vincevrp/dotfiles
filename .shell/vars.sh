# Shell variables

export PATH=$PATH:~/.bin:~/.gem/ruby/2.5.0/bin          # Add ~/.bin to PATH
export EDITOR=/usr/bin/vim
export BROWSER=/usr/bin/firefox
export VIMINIT="source ~/.vim/vimrc"
export XDG_CONFIG_HOME="$HOME/.config"

# Zsh
export ZDOTDIR=$HOME/.shell
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=2"
export ZSH_CACHE_DIR=$HOME/.shell
export ZSH_COMPDUMP=$ZDOTDIR/.zcompdump

export ENABLE_CORRECTION="true"
export HISTFILE=$ZDOTDIR/zsh_history
export HISTSIZE=1000
export SAVEHIST=1000

# FZF
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --no-messages --glob '!{.git,node_modules,.cache,.local,.wine}/*'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Other
export KEYTIMEOUT=1
export SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS=0
export WEECHAT_HOME=$XDG_CONFIG_HOME/weechat
