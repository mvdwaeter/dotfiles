#!/bin/zsh
echo "git clone .oh-my-zsh"
[ ! -d ~/.oh-my-zsh ] &&  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.dotfiles/.oh-my-zsh

echo "set zsh as default shell"
chsh -s /bin/zsh

echo "symlink linux .zshrc"
[ ! -f ~/.profile ] && ln -s ~/.dotfiles/linux/.zshrc ~/.zshrc

echo "symlink .screenrc"
[ ! -f ~/.screenrc ] && ln -s ~/.dotfiles/linux/.screenrc ~/.screenrc

echo "symlink .gitconfig"
[ ! -f ~/.gitconfig ] && ln -s ~/.dotfiles/linux/.gitconfig ~/.gitconfig

echo "symlink .gitignore"
[ ! -f ~/.gitignore ] && ln -s ~/.dotfiles/common/.gitignore ~/.gitignore
