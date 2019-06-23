#!/bin/sh
keybase decrypt -i ~/.config/vdirsyncer/.passwd 2> /dev/null | awk "/$1/ "' {print $NF}'
