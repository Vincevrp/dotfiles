# Dotfiles

[![GitHub release](https://img.shields.io/github/release/vincevrp/dotfiles.svg)](https://github.com/Vincevrp/dotfiles/releases)
[![GitHub license](https://img.shields.io/github/license/Vincevrp/dotfiles.svg)](https://github.com/Vincevrp/dotfiles)

Dotfiles for my desktop workstation, based on Antergos Linux.

![Clean screenshot](https://raw.githubusercontent.com/Vincevrp/dotfiles/master/SCREENSHOT.png)
![Dirty screenshot](https://raw.githubusercontent.com/Vincevrp/dotfiles/master/SCREENSHOT2.png)

## Contents

### Bash

Used as a backup shell, I mainly use [zsh](#zsh).

### Color scheme

All colors are based on [Nord](https://github.com/arcticicestudio/nord).

[//]: # (Inline HTML to center the image)

<div align="center">
    <img src="https://github.com/arcticicestudio/nord/blob/develop/assets/nord-overview.svg">
</div>
<br>

Some files come from the official repository, which may or may not be modified:
- `.Xresources`
- `.dir_colors`

I may have referenced the same colors in other configuration files that are not officially supported by Nord.

### Fonts

The following fonts are used throughout this config:

- [Font Awesome](https://github.com/FortAwesome/Font-Awesome)
- [San Francisco](https://github.com/supermarin/YosemiteSanFranciscoFont)
- [Powerline Fonts](https://github.com/powerline/fonts)


### i3wm

I use [i3wm](https://github.com/i3/i3) as my window manager. It's a highly customizable tiling WM, refer to `.config/i3/config` for my usage and keybindings. Requires [i3gaps](https://github.com/Airblader/i3).

#### Compton

[Compton](https://github.com/chjj/compton) is used for display compositing.

#### Polybar

[Polybar](https://github.com/jaagr/polybar) is the statusbar that I use for i3. Configuration files and scripts are stored in `.config/polybar`.

##### openvpn

The openvpn script I use for polybar is a modified version of the script provided in the [i3blocks-contrib repository](https://github.com/vivien/i3blocks-contrib/tree/master/openvpn).

#### Rofi

[Rofi](https://github.com/DaveDavenport/rofi) is used as a dmenu replacement.

#### Rxvt-unicode

[urxvt](https://wiki.archlinux.org/index.php/Rxvt-unicode) is set as the default terminal for i3. It uses `.Xresources` for its configuration.

### Ranger

Run `ranger --copy-config=all` before copying `rc.conf` to get the required default configuration.

### Tmux

Requires [tpm](https://github.com/tmux-plugins/tpm) to be installed. Refer to the repository for usage and installation instructions.

### Vim

Requires [Vundle](https://github.com/VundleVim/Vundle.vim) to be installed. Refer to the repository for usage and installation instructions.

#### YouCompleteMe

This plugin must be compiled by running `~/.vim/bundle/YouCompleteMe/install.py`. Refer to the [repository](https://github.com/Valloric/YouCompleteMe) for the correct parameters.

Syntax checkers:

- [JSHint](https://github.com/jshint/jshint/): Install by running `sudo npm install -g jshint`.
- [Sass-lint](https://github.com/sasstools/sass-lint): Install by running `sudo npm install -g sass-lint`.

### X.org

[X.org](https://www.x.org/) requires different files:

- `.Xdefaults`
  - Originates from `xrdb -merge`.
- `.Xinitrc`
  - Makes sure that i3 starts when the Xserver starts.
- `.Xmodmap`
  - I rebind caps lock to the meta key for [i3](#i3wm).
- `.Xresources`
  - [Nord](#color-scheme) color scheme.
  - [Rofi](#rofi) theme using the colors from Nord.
  - [Rxvt-unicode](#rxvt-unicode) settings.

### Zsh

I use zsh as my main shell. Everything in `~/.bin/` is available in `$PATH`. Requires [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh).

#### Zsh-autosuggestions

[Zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) is required for control+space autocompletion. I install this from the [AUR](https://wiki.archlinux.org/index.php/Arch_User_Repository) instead of the oh-my-zsh method for convenience.

## Other (optional)

### htop

[htop](https://github.com/hishamhm/htop) is my terminal process-manager.

### imwheel

I use [imwheel](https://aur.archlinux.org/packages/imwheel/) to increase the scroll speed of my mouse.

### VSCode

My VSCode settings are available in `.config/Code/User/settings.json`. However, this does not include the plugins that I use:

- [jshint](https://github.com/Microsoft/vscode-jshint)
- [Nord](https://github.com/arcticicestudio/nord-visual-studio-code)
- [npm](https://github.com/Microsoft/vscode-npm-scripts)
- [Vim](https://github.com/VSCodeVim/Vim)
