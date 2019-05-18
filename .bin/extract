#!/bin/sh

if [ "$#" -le 0 ]; then
    echo "Please specify one file"
    exit 1
fi

if [ -f "$1" ] ; then
    case "$1" in
        *.tar.bz2)   tar xvjf "$1"                    ;;
        *.tar.gz)    tar xvzf "$1"                    ;;
        *.bz2)       bunzip2 "$1"                     ;;
        *.rar)       unrar x "$1"                     ;;
        *.gz)        gunzip "$1"                      ;;
        *.tar)       tar xvf "$1"                     ;;
        *.tbz2)      tar xvjf "$1"                    ;;
        *.tgz)       tar xvzf "$1"                    ;;
        *.zip)       unzip "$1"                       ;;
        *.ZIP)       unzip "$1"                       ;;
        *.pax)       cat "$1" | pax -r                ;;
        *.pax.Z)     uncompress "$1" —stdout | pax -r ;;
        *.Z)         uncompress "$1"                  ;;
        *.7z)        7z x "$1"                        ;;
        *)           echo "Can't extract '$1'. Unknown type" && exit 1 ;;
    esac
else
    echo "Invalid file: $1"
    exit 1
fi
