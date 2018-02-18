# Shell aliases
alias :q='exit'
alias ls='ls --color=always'
alias la='ls -hail'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias clock='tty-clock -c'

alias gs='git status'
alias ga='git add'
alias gd='git diff'
alias gc=!'git commit'
alias gca='git commit -a'
alias gp='git pull'
alias gP='git push'
