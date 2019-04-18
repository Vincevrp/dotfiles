#!/usr/bin/zsh

# Prompt is based on Robby Russell

RET_STAT="%(?:%B%F{green}➜ :%B%F{red}➜ )"
DIR="%F{cyan}%c"

function git_branch() {
    STATUS=$(git symbolic-ref HEAD 2> /dev/null | cut -d '/' -f3)
    if [[ ! -z $STATUS ]]; then
        echo "%F{blue}(%F{red}$STATUS%F{blue}) "
    fi
}

function git_dirty() {
    STATUS=$(git status --porcelain --ignore-submodules=dirty 2> /dev/null)
    if [[ ! -z $STATUS ]]; then
        echo "%F{yellow}✗ "
    fi
}

PROMPT='$RET_STAT $DIR $(git_branch)$(git_dirty)%b%f'

# Vi-mode prompt
precmd() { RPROMPT="" }
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%B%F{yellow}[NORMAL]%b%f"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/main}"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
