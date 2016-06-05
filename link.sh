#!/bin/sh

ln -sf ~/.dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/.dotfiles/.bashrc       ~/.bashrc
ln -sf ~/.dotfiles/.nanorc       ~/.nanorc
ln -sf ~/.dotfiles/.gitconfig    ~/.gitconfig
ln -sf ~/.dotfiles/.gitignore    ~/.gitignore
ln -sf ~/.dotfiles/config.fish   ~/.config/fish/config.fish
ln -sf ~/.dotfiles/functions/*   ~/.config/fish/functions/
ln -sf ~/.dotfiles/.tmux.conf    ~/.tmux.conf
ln -sf ~/.dotfiles/.vimrc        ~/.vimrc
ln -sf ~/.dotfiles/styles.less   ~/.atom/styles.less

source ~/.bash_profile
source ~/.bashrc

echo link!
