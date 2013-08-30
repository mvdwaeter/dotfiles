#!/bin/bash

echo "symlink osx .bash_profile"
[ ! -f ~/.bash_profile ] && ln -s ~/.dotfiles/osx/.bash_profile ~/.bash_profile

echo "symlink .gitconfig"
[ ! -f ~/.gitconfig ] && ln -s ~/.dotfiles/gitconfig.symlink ~/.gitconfig

echo "symlink .gitignore"
[ ! -f ~/.gitignore ] && ln -s ~/.dotfiles/gitignore.symlink ~/.gitignore

echo "symlink Sublime Text User dir"
rm -r ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User
ln -s ~/.dotfiles/osx/Sublime\ Text/ ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User

echo "symlink Sublime Text command line shortcut"
[ ! -f /usr/local/bin/subl ] && ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

echo "setup os x settings"
./osx/.osx
