xset r rate 350 35

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

for i in $(seq 10); do
    xmodmap $HOME/.Xmodmap
    sleep 1
done &

exec i3
