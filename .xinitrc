#!/bin/sh
xset r rate 350 35

if [ -f ~/.Xresources ]; then
    xrdb -merge "$HOME/.Xresources"
fi

while seq 10; do
    xmodmap "$HOME/.Xmodmap"
    sleep 1
done &

exec i3
