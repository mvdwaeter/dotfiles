# ~/.profile: executed by the command interpreter for login shells.

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# load dotfiles root .profile
source ~/.dotfiles/common/.profile

# make sure "workon" cmd works
export WORKON_HOME=$HOME/virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# needed to execute nginx command
alias sudo='sudo '

# be able to say sudo nginx -s reload
alias nginx='/usr/sbin/nginx'
