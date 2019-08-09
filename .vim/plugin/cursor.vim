" Change cursor depending on mode

if exists('$TMUX')
    let &t_SI = "\ePtmux;\e\e[5 q\e\\"
    let &t_EI = "\ePtmux;\e\e[2 q\e\\"
    let &t_SR = "\ePtmux;\e\e[4 q\e\\"
else
    let &t_SI = "\e[5 q"
    let &t_EI = "\e[2 q"
    let &t_SR = "\e[4 q"
endif
