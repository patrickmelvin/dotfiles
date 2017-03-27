#!/bin/sh

# This script will sets up the dotfiles

ln -nfs ./vim/ ~/.vim
ln -nfs ./vimrc ~/.vimrc
ln -nfs ./bash_profile ~/.bash_profile
ln -nfs ./bash/ ~/.bash
ln -nfs ./gitconfig ~/.gitconfig
ln -nfs ./ackrc ~/.ackrc
