xset r rate 350 35
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec i3
