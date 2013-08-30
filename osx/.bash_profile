# load dotfiles root .bash_profile
source ~/.dotfiles/.bash_profile_base

# load osx .aliases
source ~/.dotfiles/osx/.aliases_osx

# brew bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# add /usr/local/bin to PATH to be able to execute sublime e.g from command
export PATH=/usr/local/bin:$PATH
