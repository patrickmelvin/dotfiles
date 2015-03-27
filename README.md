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

* `$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
* `$ vim ~/dotfiles/vimrc`
* `:source %`
* `:PluginInstall`

Plugins
========

### Navigation

* [NerdTREE](https://github.com/scrooloose/nerdtree) - A tree explorer plugin for vim.
* [ctrl-p](https://github.com/kien/ctrlp.vim) - Fuzzy file, buffer, mru, tag, etc finder.

### Asthetic

* [Badwolf](https://github.com/sjl/badwolf) - A Vim color scheme.
* [vim-Airline](https://github.com/bling/vim-airline) - lean & mean status/tabline for vim that's light as air.

### Code Completion

* [UltiSnips](https://github.com/SirVer/ultisnips.git) - Syntax completion for vim.
* [Vim-Snippets](https://github.com/honza/vim-snippets.git) - A repository for snippets of various languages.

## Compatibility

* [Vitality](https://github.com/sjl/vitality.vim.git) - Makes vim compatible with iTerm 2 and tmux.

### Language-specific

* [vim-coffee-script](https://github.com/kchmck/vim-coffee-script) - CoffeeScript support for vim.
* [vim-rails](https://github.com/tpope/vim-rails) - Ruby on Rails power tools.

### Misc

* [Syntastic](https://github.com/scrooloose/syntastic) - Syntax checking hacks for vim.
* [tcomment_vim](https://github.com/tomtom/tcomment_vim) - An extensible & universal comment vim-plugin that also handles embedded filetypes.
* [vim-rspec](https://github.com/thoughtbot/vim-rspec) - Run Rspec specs from Vim.
