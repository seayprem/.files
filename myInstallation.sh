#!/bin/sh

# Author : Wanchai Saelim
# Non-Copyright (nc) github.com/seayprem
# For Installation my package

# update package & kernel
sudo apt update
# upgrade install
sudo apt upgrade -y

# generation package
sudo apt install build-essential cmake libssl-dev clang
sudo apt install vim
sudo apt install tmux
sudo apt install zsh
sudo apt install curl
sudo apt install wget
sudo apt install gnome-tweak-tool
sudo apt install powerline fonts-powerline

# for coc.nvim
sudo npm install -g yarn
yarn install
yarn build

# vim plug installation
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# my .files configurations
git clone https://github.com/seayprem/.files
# copy .file to configurations
cp .file/.vimrc ~/.vimrc
cp .file/.tmux.conf ~/.tmux.conf

# Home Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

brew install hello
