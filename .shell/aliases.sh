# Shell aliases
alias :q='exit'
alias ls='ls --color=always --group-directories-first'
alias la='ls -hal'
alias lai='ls -hail'
alias ip='ip --color'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias r='ranger'
alias clock='tty-clock -c'
alias bc="bc -q"
alias u="up"

alias gs='git status'
alias ga='git add'
alias gd='git difftool'
alias gD='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gC='git checkout'
alias gf='git fetch'
alias gp='git pull'
alias gP='git push'
alias gl='git log'
alias gr='cd $(git rev-parse --show-toplevel)'

alias v='vagrant'
alias vs='vagrant ssh'
alias vS='vagrant status'
alias vu='vagrant up'
alias vp='vagrant provision'
alias vpw='vagrant provision --provision-with'
alias vh='vagrant halt'
alias vr='vagrant reload'
alias vd='vagrant destroy'

alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias dot="dotfiles"
