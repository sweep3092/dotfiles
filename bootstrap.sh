#!/bin/sh

cd ~
ln -s dotfiles/_zshrc .zshrc
ln -s dotfiles/_gitconfig .gitconfig
ln -s dotfiles/_gitignore .gitignore
ln -s dotfiles/_tmux.conf .tmux.conf
ln -s dotfiles/_vimrc .vimrc

mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
go get github.com/lestrrat/peco/cmd/peco/
