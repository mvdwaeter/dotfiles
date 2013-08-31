#!/bin/bash
echo "git clone .oh-my-zsh"
[ ! -f ~/.oh-my-zsh ] &&  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.dotfiles/.oh-my-zsh

echo "set zsh as default shell"
chsh -s /bin/zsh

echo "symlink .zshrc"
[ ! -f ~/.zshrc ] && ln -s ~/.dotfiles/common/.zshrc ~/.zshrc

echo "symlink linux .bash_profile"
[ ! -f ~/.bash_profile ] && ln -s ~/.dotfiles/linux/.bash_profile ~/.bash_profile

echo "symlink .screenrc"
[ ! -f ~/.screenrc ] && ln -s ~/.dotfiles/linux/.screenrc ~/.screenrc

echo "symlink .gitconfig"
[ ! -f ~/.gitconfig ] && ln -s ~/.dotfiles/linux/.gitconfig ~/.gitconfig

echo "symlink .gitignore"
[ ! -f ~/.gitignore ] && ln -s ~/.dotfiles/common/.gitignore ~/.gitignore
