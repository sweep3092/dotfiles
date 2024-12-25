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
    brew tap homebrew/cask-fonts

    brew install git vim tig zsh ghq peco starship zsh-completions
    brew install --cask orbstack iterm2 vlc zoom visual-studio-code cursor handbrake google-chrome slack figma 1password google-japanese-ime flutter android-studio
    brew install font-hack-nerd-font

    chsh -s /usr/local/bin/zsh
    ;;
  linux*)
    alias ls='ls --color'
    ;;
esac

