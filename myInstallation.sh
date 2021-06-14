#!/bin/sh

# Author : Wanchai Saelim
# Non-Copyright (nc) github.com/seayprem
# For Installation my package

# update package & kernel
sudo apt update
# upgrade install
sudo apt upgrade -y

# generation package
sudo apt install build-essential
sudo apt install vim
sudo apt install tmux
sudo apt install zsh
sudo apt install curl
sudo apt install wget
sudo apt install gnome-tweak-tool
sudo apt install powerline fonts-powerline

# vim plug installation
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# my .files configurations
git clone https://github.com/seayprem/.files
# copy .file to configurations
cp .file/.vimrc ~/.vimrc
cp .file/.tmux.conf ~/.tmux.conf


