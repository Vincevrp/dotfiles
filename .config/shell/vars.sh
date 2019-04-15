#.Shell variables

export PATH=$PATH:~/.bin:~/.gem/ruby/2.6.0/bin          # Add ~/.bin to PATH
export EDITOR=/usr/bin/vim
export BROWSER=/usr/bin/firefox
export VIMINIT="source ~/.vim/vimrc"
export XDG_CONFIG_HOME="$HOME/.config"
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
export SSH_AUTH_SOCK="/run/user/1000/gnupg/S.gpg-agent.ssh"
export GPG_TTY="${TTY}"

# Other
export KEYTIMEOUT=1
export SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS=0
export WEECHAT_HOME=$XDG_CONFIG_HOME/weechat
