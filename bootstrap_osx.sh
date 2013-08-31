#!/bin/zsh
echo "git clone .oh-my-zsh"
[ ! -d ~/.oh-my-zsh ] &&  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.dotfiles/.oh-my-zsh

echo "set zsh as default shell"
chsh -s /bin/zsh

echo "symlink .zshrc"
[ ! -f ~/.zshrc ] && ln -s ~/.dotfiles/common/.zshrc ~/.zshrc

echo "symlink osx .profile"
[ ! -f ~/.profile ] && ln -s ~/.dotfiles/osx/.profile ~/.profile

echo "symlink .gitconfig"
[ ! -f ~/.gitconfig ] && ln -s ~/.dotfiles/osx/.gitconfig ~/.gitconfig

echo "symlink .gitignore"
[ ! -f ~/.gitignore ] && ln -s ~/.dotfiles/common/.gitignore ~/.gitignore

echo "symlink Sublime Text User dir"
rm -r ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User
ln -s ~/.dotfiles/osx/Sublime\ Text/ ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User

echo "symlink Sublime Text command line shortcut"
[ ! -f /usr/local/bin/subl ] && ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

echo "setup os x settings"
./osx/.osx
