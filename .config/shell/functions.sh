#!/bin/bash
function up() {
    AMOUNT=${1:-1}
    D=$PWD

    for ((i=1; i <= AMOUNT; i++)); do
        D=$D/..
    done

    cd "$D" || exit
}


lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir" || exit 1
            fi
        fi
    fi
}
