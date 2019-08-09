# Dotfiles


[![GitHub release](https://img.shields.io/github/release/vincevrp/dotfiles.svg?style=flat-square)](https://github.com/Vincevrp/dotfiles/releases)
[![GitHub commits (since latest release)](https://img.shields.io/github/commits-since/Vincevrp/dotfiles/latest.svg?style=flat-square)](https://github.com/Vincevrp/dotfiles)
![GitHub last commit](https://img.shields.io/github/last-commit/Vincevrp/dotfiles.svg?style=flat-square)
[![GitHub license](https://img.shields.io/github/license/Vincevrp/dotfiles.svg?style=flat-square)](https://github.com/Vincevrp/dotfiles/blob/master/LICENSE)

This repository contains the configuration files (dotfiles) for my desktop workstation, based on Arch Linux. Other branches are used for my other devices. My system installation is documented [here](https://github.com/Vincevrp/cheat-sheets/blob/gh-pages/arch-install.pdf).

![Screenshot](SCREENSHOT.png)

## Initialize

I use a bare git repository to manage my dotfiles. To initialize use the following commands:

```bash
git clone --bare git@github.com:Vincevrp/dotfiles.git $HOME/.dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

If you receive an error message about untracked working tree files; run the following command:

```bash
mkdir -p dot-backup && \
dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .dot-backup/{}
```

The idea behind the method described here is based on [this](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/) article.


## Contents

Listed below are the main components of my setup. This does not include everything, only the main configuration that is necessary for the core looks and functionality.

#### Window manager and terminal

* [i3-gaps](https://www.archlinux.org/packages/community/x86_64/i3-gaps/) - *window manager*
* [compton](https://github.com/chjj/compton) - *compositing*
* [polybar](https://github.com/jaagr/polybar) - *statusbar*
* [rofi](https://github.com/DaveDavenport/rofi) - *application launcher*
* [st (suckless terminal)](https://github.com/Vincevrp/st) - *custom terminal emulator*
* [tmux](https://github.com/tmux/tmux) - *terminal multiplexer*

#### Colors and fonts

* [Nord colorscheme](https://github.com/arcticicestudio/nord) - *colors may be referenced outside of officially supported applications*
* [Hack](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack) - *terminal font*
* [Arimo](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Arimo) - *statusbar font*
* [Nimbus Sans](https://github.com/ArtifexSoftware/urw-base35-fonts) - *GUI font*

#### Tools

* [fzf](https://github.com/junegunn/fzf) - *fuzzy finder used by both zsh and vim*
* [lf](https://github.com/gokcehan/lf) - *terminal file browser.*
* [mpd](https://github.com/MusicPlayerDaemon/MPD) - *music player daemon*
* [ncmpcpp](https://github.com/arybczak/ncmpcpp) - *music player for MPD*
* [vim](https://github.com/vim/vim) - *no explanation required*

#### Mail

* [neomutt](https://github.com/neomutt/neomutt) - *e-mail client*
* [isync](http://isync.sourceforge.net/) - *IMAP sync*
* [vdirsyncer](https://github.com/pimutils/vdirsyncer) - *calendar and contacts sync*

#### Shell

* [zsh](https://wiki.archlinux.org/index.php/Zsh) - *main shell, `~/.bin/` is available in `$PATH`*
* [zplugin](https://github.com/zdharma/zplugin) - *zsh plugin manager*

## License

See [LICENSE](../LICENSE)
