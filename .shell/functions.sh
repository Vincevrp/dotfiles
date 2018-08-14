#!/bin/bash
function up()
{
    AMOUNT=$1
    D=$PWD

    if [[ -z $1 ]]; then
        AMOUNT=1
    fi

    for ((i=1; i <= AMOUNT; i++)); do
        D=$D/..
    done

    cd "$D" || exit
}

