#.Shell variables

# PATH
export PATH=$PATH:~/.bin                    # Add ~/.bin to PATH
export PATH=$PATH:~/.gem/ruby/2.6.0/bin     # Add ruby gems to PATH
export PATH=$PATH:~/.npm/node_modules/bin   # Add node_modules to PATH
export PATH=$PATH:~/.local/bin              # Add python bins to PATH

# General
export EDITOR=/usr/bin/vim
export BROWSER=/usr/bin/firefox
export VIMINIT="source ~/.vim/vimrc"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DESKTOP_DIR="$HOME"
export BW_SESSION_FILE="/tmp/.bw_session"

# Zsh
export ZDOTDIR=$SHELL_DIR
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=2"
export ZSH_CACHE_DIR=$SHELL_DIR/.cache
export ZSH_COMPDUMP=$ZDOTDIR/.zcompdump

export ENABLE_CORRECTION="true"
export HISTFILE=$ZDOTDIR/zsh_history
export HISTSIZE=1000
export SAVEHIST=1000

# FZF
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --no-messages --glob '!{.git,node_modules,.cache,.local,.wine}/*'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Libvirt
export LIBVIRT_DEFAULT_URI="qemu:///system"

# GPG-agent
unset SSH_AGENT_PID
export GPG_TTY="${TTY}"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

# NPM
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc

# Ruby
export BUNDLE_USER_HOME=$HOME/.config/bundle
export BUNDLE_USER_CACHE=$HOME/.cache/bundle
export BUNDLE_USER_CONFIG=$BUNDLE_USER_HOME/config
export BUNDLE_USER_PLUGIN=$BUNDLE_USER_HOME/plugin

# Less colors
export LESS_TERMCAP_mb=$'\e[1;34m'
export LESS_TERMCAP_md=$'\e[1;34m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;31m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;37m'

# Other
export KEYTIMEOUT=1
export SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS=0
export WEECHAT_HOME=$XDG_CONFIG_HOME/weechat
