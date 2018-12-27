# Shell variables
export PATH=$PATH:~/.bin:~/.gem/ruby/2.5.0/bin                     # Add ~/.bin to PATH
export EDITOR=/usr/bin/vim
export BROWSER=/usr/bin/firefox
export VIMINIT="source ~/.vim/vimrc"
export ZDOTDIR=$HOME/.shell
export XDG_CONFIG_HOME="$HOME/.config"
export ZSH_CACHE_DIR=$HOME/.shell
export ZSH_COMPDUMP=$ZDOTDIR/.zcompdump
export SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS=0
export KEYTIMEOUT=1
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --no-messages --glob '!{.git,node_modules,.cache,.local,.wine}/*'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export WEECHAT_HOME=$XDG_CONFIG_HOME/weechat
