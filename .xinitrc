#!/bin/sh
xset r rate 350 35

if [ -f ~/.Xresources ]; then
    xrdb -merge "$HOME/.Xresources"
fi

i=0
while [ "$i" -le 10 ]; do
    xmodmap "$HOME/.Xmodmap"
    i=$(( i + 1)) && sleep 1
done &

exec i3
