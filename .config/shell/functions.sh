#!/bin/bash
function up() {
    AMOUNT=${1:-1}
    D=$PWD

    for ((i=1; i <= AMOUNT; i++)); do
        D=$D/..
    done

    cd "$D" || exit
}

