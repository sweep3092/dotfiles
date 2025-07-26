#!/bin/sh

cd ~
ln -s dotfiles/_zshrc ~/.zshrc
ln -s dotfiles/_gitconfig ~/.gitconfig
ln -s dotfiles/_gitignore ~/.gitignore
ln -s dotfiles/_tmux.conf ~/.tmux.conf
ln -s dotfiles/_vimrc ~/.vimrc
mkdir ~/.config
ln -s dotfiles/starship.toml ~/.config/starship.toml

mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

case ${OSTYPE} in
  darwin*)
    xcode-select --install

    sudo softwareupdate --install-rosetta --agree-to-license
    
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    brew bundle --file=~/dotfiles/Brewfile

    chsh -s /usr/local/bin/zsh
    ;;
  linux*)
    alias ls='ls --color'
    ;;
esac

