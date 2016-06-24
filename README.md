My Dotfiles
========

These are my dotfiles for my bash profile, aliases and vim plugins. If you wish to use this has a starting point, I suggest forking the repo and then amending gitconfig to use your own details.

Usage
========

## Clone into ~/dotfiles/

* `$ cd ~/`
* `$ git clone @github.com:patrickmelvin/dotfiles.git`

## Then add symlinks in your ~/ directory

* `$ cd ~/`
* `$ ln -nfs ~/dotfiles/vim/ .vim`
* `$ ln -nfs ~/dotfiles/vimrc .vimrc`
* `$ ln -nfs ~/dotfiles/bash_profile .bash_profile`
* `$ ln -nfs ~/dotfiles/bash .bash`
* `$ ln -nfs ~/dotfiles/gitconfig .gitconfig`
* `$ ln -nfs ~/dotfiles/ackrc .ackrc`

## Install Plugins

* `$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
* `$ vim ~/dotfiles/vimrc`
* `:source %`
* `:PluginInstall`

Plugins
========

### Aesthetic

* [vim-airline](https://github.com/bling/vim-airline) - lean & mean status/tabline for vim that's light as air.
* [Badwolf](https://github.com/sjl/badwolf) - A Vim colour scheme.
* [Gruvbox](https://github.com/morhetz/gruvbox) - A Vim colour scheme.

### Code Completion

* [auto-pairs](https://github.com/jiangmiao/auto-pairs) - Automatically create brackets and quotes in matching pairs.
* [vim-endwise](https://github.com/tpope/vim-endwise) - Wisely add "end" in ruby, endfunction/endif/more in vim script, etc.
* [vim-snippets](https://github.com/honza/vim-snippets.git) - A repository for snippets of various languages.
* [UltiSnips](https://github.com/SirVer/ultisnips.git) - Syntax completion for vim.

### Compatibility

* [Vitality](https://github.com/sjl/vitality.vim.git) - Makes vim compatible with iTerm 2 and tmux.

### Language-specific

* [vim-coffee-script](https://github.com/kchmck/vim-coffee-script) - CoffeeScript support for vim.
* [vim-markdown](https://github.com/tpope/vim-markdown.git) - Syntax highlighting for Markdown in vim.
* [vim-rails](https://github.com/tpope/vim-rails) - Ruby on Rails power tools.
* [vim-yaml](https://github.com/avakhov/vim-yaml.git) - Automatic indenting for yaml files.

### Misc

* [vim-bundler](https://github.com/tpope/vim-bundler) - Bundler wrapper for vim
* [tcomment_vim](https://github.com/tomtom/tcomment_vim) - An extensible & universal comment vim-plugin that also handles embedded filetypes.
* [vim-fugitive](https://github.com/tpope/vim-fugitive.git) - Vim-accessible git wrapper.
* [vim-i18n](https://github.com/stefanoverna/vim-i18n.git) - Create i18n translations with a function call.
* [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides) - Guideline for levels of indentation
* [vim-rspec](https://github.com/thoughtbot/vim-rspec) - Run Rspec specs from Vim.
* [delimitMate](https://github.com/raimondi/delimitmate.git) - Quoting/parenthesizing plugin.
* [Syntastic](https://github.com/scrooloose/syntastic) - Syntax checking hacks for vim.
* [Syntastic-Coffee](https://github.com/vitaly/vim-syntastic-coffee.git) - Coffeescript support for Syntastic.

### Navigation

* [Ack](https://github.com/mileszs/ack.vim) - Run ack from vim
* [ctrl-p](https://github.com/kien/ctrlp.vim) - Fuzzy file, buffer, mru, tag, etc finder.
* [NerdTREE](https://github.com/scrooloose/nerdtree) - A tree explorer plugin for vim.
