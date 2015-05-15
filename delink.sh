#!/bin/sh

# This script delinks the dotfiles from the system

cd ~
rm -rf .vim/
rm -rf .bash/
rm .gitconfig
rm .bash_profile
rm .vimrc
