My Dotfiles
========

These are my dotfiles for my bash profile, aliases and vim plugins. If you wish to use this has a starting point, I suggest forking the repo and then amending gitconfig to use your own details.

Usage
========

## Clone into ~/dotfiles/

* `cd ~/`
* `git clone @github.com:patrickmelvin/dotfiles.git`

## Then add symlinks in your ~/ directory

* `cd ~/`
* `ln -nfs ~/dotfiles/vim/ .vim`
* `ln -nfs ~/dotfiles/vimrc .vimrc`
* `ln -nfs ~/dotfiles/bash_profile .bash_profile`
* `ln -nfs ~/dotfiles/bash .bash`
* `ln -nfs ~/dotfiles/gitconfig .gitconfig`

## Install Plugins

* vim
* :source %
* :PluginInstall
