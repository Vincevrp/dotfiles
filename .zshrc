# Zsh config

ZSH_THEME="robbyrussell"

plugins=(
	git
)


# Aliases
alias :q='exit'
alias ls='ls --color=always'
alias la='ls -hail'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias clock='tty-clock -c'

# Variables
export PATH=$PATH:~/.bin                     # Add ~/bin to PATH
export TERM=xterm
export EDITOR=/usr/bin/vim
export ZSH=/home/vince/.oh-my-zsh
export SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS=0
export KEYTIMEOUT=1

# Source external files
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(dircolors ~/.dir_colors)"

# Settings
ENABLE_CORRECTION="true"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=2"

# Keybindings
bindkey '^ ' autosuggest-accept

# Default
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -e
zstyle :compinstall filename '/home/vince/.zshrc'
autoload -Uz compinit
compinit alias ohmyzsh="mate ~/.oh-my-zsh"
