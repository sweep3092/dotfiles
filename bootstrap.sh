#!/bin/sh

cd ~
ln -s dotfiles/_zshrc .zshrc
ln -s dotfiles/_gitconfig .gitconfig
ln -s dotfiles/_gitignore .gitignore
ln -s dotfiles/_tmux.conf .tmux.conf
ln -s dotfiles/_vimrc .vimrc

mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

case ${OSTYPE} in
    darwin*)
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        brew install git vim tig zsh ruby rbenv ruby-build tmux ghq peco postgresql redis go awscli zsh-completions
        ;;
    linux*)
        alias ls='ls --color'
        ;;
esac
